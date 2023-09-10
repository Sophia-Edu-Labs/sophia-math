from pathlib import Path
from sophialib.styles.sophiascene import aspect_ratio
from sophialib.video_editing.crop import crop_video_to_aspect_ratio


def crop_video_file(f: Path):
    """Crops a video file at the given path to the aspect ratio of the SophiaScene. Replaces the original file"""
    
    crop_video_to_aspect_ratio(f, aspect_ratio)