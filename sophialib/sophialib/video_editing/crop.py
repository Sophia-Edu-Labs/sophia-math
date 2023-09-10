from pathlib import Path
import tempfile

import subprocess

def get_video_resolution(f: Path):
    command = [
        'ffprobe',
        '-v', 'error',
        '-select_streams', 'v:0',
        '-show_entries', 'stream=width,height',
        '-of', 'csv=s=x:p=0',
        str(f)
    ]

    try:
        output = subprocess.check_output(command).decode('utf-8').strip()
        width, height = output.split('x')
        return (int(width), int(height))
    except subprocess.CalledProcessError as e:
        print(f'ffprobe command resulted in error: {e.output.decode("utf-8")}')
        return None


def crop_video_to_aspect_ratio(f: Path, aspect_ratio: float = 9/16):
    width, height = get_video_resolution(str(f))

    # temp file for output
    fd, tempname = tempfile.mkstemp(dir=f.parent, suffix=".mp4")

    # write cropped clip
    new_height = height
    new_width = int(new_height * aspect_ratio)
    
    # Form the command
    command = [
        'ffmpeg',
        '-y', # overwrite output file if it exists
        '-hide_banner', 
        '-loglevel', 'error',
        '-i', str(f),
        '-filter:v', f'crop={new_width}:{new_height}',
        tempname
    ]

    # Execute the command
    subprocess.run(command, check=True)

    # replace original file
    Path(tempname).replace(f)