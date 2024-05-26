from pathlib import Path
from typing import List

from sophialib.constants.directories import SCENES_FOLDER, WORKSPACE_FOLDER

SCENE_BASEFOLDERS = [ 
                    SCENES_FOLDER / "AIGen" / "scenes", 
                    SCENES_FOLDER / "AIGen" / "scenes_examples", 
                    SCENES_FOLDER / "AIGen" / "scenes_generated", 
                    SCENES_FOLDER / "AIGen" / "scenes_calc",
                    SCENES_FOLDER / "AIGen" / "scenes_AnaLina",
                    SCENES_FOLDER / "AIGen" / "scenes_mathbuch",
                    SCENES_FOLDER / "AIGen" / "scenes_school",
                    SCENES_FOLDER / "AIGen" / "scenes_stockmath",
                    SCENES_FOLDER / "AIGen" / "scenes_tiktok",
                    ]

def find_repository_scene_module_paths(result_sorted: bool = False, scene_basefolders_to_use: List[Path] = SCENE_BASEFOLDERS, stems_to_exclude: List[str] = []) -> List[Path]:
    """Can exclude some files by their stem, such that test and example scenes are not included in the list of paths, beside the default ones that are already excluded."""
    paths = []

    for SCENE_BASEFOLDER in scene_basefolders_to_use:
        for pf in Path(SCENE_BASEFOLDER).glob("**/*.py"):
            paths.append(pf)
        
        for pf in Path(SCENE_BASEFOLDER).glob("**/*.typ"):
            paths.append(pf)

    # remove the path to a file with "render_sideview.py" (because that is just indended to be used for development)
    paths = [p for p in paths if p.name != "render_sideview.py"]
    
    # remove the path to a file with "render.py" (because that is mainly used for development, in practice)
    paths = [p for p in paths if p.name != "render.py"]
    
    # exclude the legacy SCENES_FOLDER/scenes/sophiascene.py file
    paths = [p for p in paths if not (p.name == "sophiascene.py" and p.parent.name == "styles")]

    # exclude the files with the given stems
    paths = [p for p in paths if p.stem not in stems_to_exclude]

    if result_sorted: # so we get more consistent results, if required.
        paths.sort()

    return paths



RENDER_RESULTS_MEDIA_FOLDER = WORKSPACE_FOLDER / "renderresults_media"
