import subprocess

# Hashes the audio of a given media file at the given path (should work for audio and video files)
def hash_audio_at_path(audio_path: str):
    command = f"ffmpeg -hide_banner -loglevel error -i {audio_path} -map 0:a -f md5 - | cut -d'=' -f2"
    process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    output, error = process.communicate()

    if process.returncode == 0:
        audio_hash = output.decode("utf-8").strip()
        print(f"Audio hash: {audio_hash}")

        return audio_hash
    else:
        print(f"Error: {error.decode('utf-8').strip()}")

def hash_video_and_audio_at_path(video_path: str):
    command = f"ffmpeg -hide_banner -loglevel error -i {video_path} -f hash - | cut -d'=' -f2"
    process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    output, error = process.communicate()

    if process.returncode == 0:
        video_audio_hash = output.decode("utf-8").strip()
        print(f"Video+Audio hash: {video_audio_hash}")

        return video_audio_hash
    else:
        print(f"Error: {error.decode('utf-8').strip()}")