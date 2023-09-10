import subprocess

def extract_audio_to_path(rendered_video_path: str, output_path: str):
    command = f"ffmpeg -hide_banner -loglevel error -i {rendered_video_path} -i {rendered_video_path} -q:a 0 -filter_complex '[1:a]apad' -shortest -map 0:v -map 1:a {output_path}"
    process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    output, error = process.communicate()

    if process.returncode == 0:
        ffmpeg_output = output.decode("utf-8").strip()
        print(f"ffmpeg returned with output: {ffmpeg_output}")
        print(f"Completed audio extraction to {output_path}.")
    else:
        print(f"Error: {error.decode('utf-8').strip()}")