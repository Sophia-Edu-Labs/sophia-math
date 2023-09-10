from pathlib import Path
import subprocess
import tempfile
from time import sleep
from typing import Callable, List, Optional
import soundfile as sf
import pyrubberband as pyrb

def time_stretch_audio(input_file: Path, output_file: Path, target_duration: Optional[float], destination_volume: float = 1.0, timemap_function: Optional[Callable[[float],float]] = None):
    # Load the audio file
    audio, sample_rate = sf.read(str(input_file))
    
    # Calculate the current duration
    current_duration = len(audio) / sample_rate

    if target_duration is None:
        target_duration = current_duration
    
    # Calculate the time stretch ratio
    time_stretch_ratio = 1/(target_duration / current_duration)
    
    # Time-stretch the audio
    if timemap_function is not None:
        source_sample_count = len(audio)
        target_sample_count = round(target_duration * sample_rate)
        scale_factor = target_sample_count / source_sample_count
        # a timemap maps indices in the source audio sample array to indices in the target audio sample array (while rubberband will determine the exact sample values in the target array, we only need to give it the indices)
        # linear_time_map_stretched = [((i+1), (i*scale_factor +1)) for i, sample in enumerate(audio)]
        time_map_stretched_from_function = [(i+1, round(timemap_function((i+1)/len(audio))*len(audio))*scale_factor) for i, sample in enumerate(audio)]
        time_stretched_audio = pyrb.timemap_stretch(audio, sample_rate, time_map_stretched_from_function)
    else:
        time_stretched_audio = pyrb.time_stretch(audio, sample_rate, time_stretch_ratio)
    
    # Write the time-stretched audio to the output file
    sf.write(str(output_file), time_stretched_audio, sample_rate)
    print(f"Time-stretched {input_file} from {current_duration} to {target_duration} seconds and saved to {output_file}.")

    # if destination volume is not 1.0, adjust the volume
    if destination_volume != 1.0:
        adusted_volume_audio_path = adjust_volume(output_file, destination_volume)

        # move the adjusted volume audio file to the output file
        adusted_volume_audio_path.rename(output_file)



# Method to create a temporary file from the given input sound file, stretched to the given target duration
def create_temporary_stretched_audio_file(input_file: Path, target_duration: float, destination_volume: float = 1.0, reverse: bool = False, rate_function: Optional[Callable[[float],float]] = None, repeat_count: Optional[int] = 0):
    # Create a temporary file
    temp_file = tempfile.NamedTemporaryFile(suffix=".wav", delete=False)
    temp_file_path = Path(temp_file.name)

    # if reverse is True, reverse the audio file
    if reverse:
        input_file = reverse_audio(input_file, temp_file_path)

    # Stretch the audio file to the target duration and save it to the temporary file
    time_stretch_audio(input_file, temp_file_path, target_duration, destination_volume, rate_function)
    print(f"Created temporary file {temp_file_path}.", flush=True)

    # if repeat_count is greater than 0, repeat the audio file
    if repeat_count > 0:
        temp_file_path = repeat_audio(temp_file_path, repeat_count)

    # convert the temporary file to mp3
    temp_file_path = convert_to_mp3(temp_file_path)

    return temp_file_path

class StretchedAudioFileConfig: 
    def __init__(self, input_file: Path, target_duration: float, destination_volume: float = 1.0, reverse: bool = False, rate_function: Optional[Callable[[float],float]] = None, repeat_count: Optional[int] = 0):
        self.input_file = input_file
        self.target_duration = target_duration
        self.destination_volume = destination_volume
        self.reverse = reverse
        self.rate_function = rate_function
        self.repeat_count = repeat_count

def create_temporary_stretched_audio_file_from_config(config: StretchedAudioFileConfig):
    return create_temporary_stretched_audio_file(config.input_file, config.target_duration, config.destination_volume, config.reverse, config.rate_function, config.repeat_count)

def create_combined_temporary_stretched_audio_file_from_configs(configs: List[StretchedAudioFileConfig]):
    # Create a list of temporary files
    temp_files = []
    for config in configs:
        temp_files.append(create_temporary_stretched_audio_file_from_config(config))

    # Combine the temporary files
    return combine_mp3_files(temp_files)

# Method to repeat the given audio file
def repeat_audio(input_file: Path, repeat_count: int):
    # Throw an error if repeat count is less than 1
    if repeat_count < 1:
        raise Exception(f"Repeat count must be greater than 1. Given repeat count: {repeat_count}")
    
    # Create a temporary file
    temp_file = tempfile.NamedTemporaryFile(suffix=".wav", delete=False)
    temp_file_path = Path(temp_file.name)

    # Repeat the audio file and save it to the temporary file
    command = f"ffmpeg -y -hide_banner -loglevel error -stream_loop {repeat_count} -i {input_file} -c copy {temp_file_path}"
    print(f"Running command: {command}", flush=True)
    process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    output, error = process.communicate()

    if process.returncode == 0:
        ffmpeg_output = output.decode("utf-8").strip()
        print(f"ffmpeg returned with output: {ffmpeg_output}")
        print(f"Repeated {input_file} {repeat_count} times and saved to {temp_file_path}.")
    else:
        raise Exception(f"Error: {error.decode('utf-8').strip()}")

    return temp_file_path


# Method to combine multiple input mp3 files to a single output mp3 file (at a temporary path)
def combine_mp3_files(input_files: List[Path]):
    # Create a temporary file
    temp_file = tempfile.NamedTemporaryFile(suffix=".mp3", delete=False)
    temp_file_path = Path(temp_file.name)

    # Combine the mp3 files and save it to the temporary file
    command = f"ffmpeg -y -hide_banner -loglevel error -i \"concat:{'|'.join([str(input_file) for input_file in input_files])}\" -acodec copy {temp_file_path}"
    print(f"Running command: {command}", flush=True)
    process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    output, error = process.communicate()

    if process.returncode == 0:
        ffmpeg_output = output.decode("utf-8").strip()
        print(f"ffmpeg returned with output: {ffmpeg_output}")
        print(f"Combined {len(input_files)} mp3 files and saved to {temp_file_path}.")
    else:
        raise Exception(f"Error: {error.decode('utf-8').strip()}")

    return temp_file_path

# Method to convert the given audio file to mp3
def convert_to_mp3(input_file: Path):
    # Create a temporary file
    temp_file = tempfile.NamedTemporaryFile(suffix=".mp3", delete=False)
    temp_file_path = Path(temp_file.name)

    # Convert the audio file to mp3 by using ffmpeg and subprocess
    command = f"ffmpeg -y -hide_banner -loglevel error -i {input_file} -vn -ar 44100 -ac 2 -b:a 192k {str(temp_file_path)}"
    print(f"Running command: {command}", flush=True)
    process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    output, error = process.communicate()

    if process.returncode == 0:
        ffmpeg_output = output.decode("utf-8").strip()
        print(f"ffmpeg returned with output: {ffmpeg_output}")
        print(f"Converted {input_file} to {temp_file_path}.")
        return temp_file_path
    else:
        raise Exception(f"Error: {error.decode('utf-8').strip()}")
    

# Method to adjust the volume of the given audio file
def adjust_volume(input_file: Path, destination_volume: float):
    # Create a temporary file
    temp_file = tempfile.NamedTemporaryFile(suffix=".wav", delete=False)
    temp_file_path = Path(temp_file.name)

    # Adjust the volume of the audio file and save it to the temporary file
    command = f"ffmpeg -y -hide_banner -loglevel error -i {input_file} -filter:a 'volume={destination_volume}' {temp_file_path}"
    print(f"Running command: {command}", flush=True)
    process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    output, error = process.communicate()

    if process.returncode == 0:
        ffmpeg_output = output.decode("utf-8").strip()
        print(f"ffmpeg returned with output: {ffmpeg_output}")
        print(f"Adjusted volume of {input_file} to {destination_volume} and saved to {temp_file_path}.")
    else:
        raise Exception(f"Error: {error.decode('utf-8').strip()}")

    return temp_file_path


# Method to reverse the given audio file
def reverse_audio(input_file: Path, output_file: Path):
    # Reverse the audio file and save it to the output file
    command = f"ffmpeg -y -hide_banner -loglevel error -i {input_file} -filter_complex 'areverse' {output_file}"
    print(f"Running command: {command}", flush=True)
    process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    output, error = process.communicate()

    if process.returncode == 0:
        ffmpeg_output = output.decode("utf-8").strip()
        print(f"ffmpeg returned with output: {ffmpeg_output}")
        print(f"Reversed {input_file} and saved to {output_file}.")
    else:
        raise Exception(f"Error: {error.decode('utf-8').strip()}")

    return output_file