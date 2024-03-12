from pathlib import Path
from typing import List

from sophialib.constants.directories import SCENES_FOLDER, WORKSPACE_FOLDER


def find_repository_scene_module_paths(result_sorted: bool = False) -> List[Path]:
    paths = []

    SCENE_BASEFOLDER = SCENES_FOLDER / "AIGen" / "scenes_generated"

    for pf in Path(SCENE_BASEFOLDER).glob("**/*.py"):
        paths.append(pf)
    
    for pf in Path(SCENE_BASEFOLDER).glob("**/*.typ"):
        paths.append(pf)

    # remove the path to a file with "render_sideview.py" (because that is just indended to be used for development)
    paths = [p for p in paths if p.name != "render_sideview.py"]
    
    # exclude the legacy SCENES_FOLDER/scenes/sophiascene.py file
    paths = [p for p in paths if not (p.name == "sophiascene.py" and p.parent.name == "styles")]

    if result_sorted: # so we get more consistent results, if required.
        paths.sort()

    return paths



RENDER_RESULTS_MEDIA_FOLDER = WORKSPACE_FOLDER / "renderresults_media"
