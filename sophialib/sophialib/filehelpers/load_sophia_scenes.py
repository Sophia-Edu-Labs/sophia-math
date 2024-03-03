from abc import ABC
import importlib.util
import inspect
from pathlib import Path
import sys

from sophialib.styles.sophiascene import SophiaScene

def get_module_manim_sophiascene_classes(file_path: Path, add_parent_folder_to_sys_path: bool = False, result_sorted: bool = False):
    """Takes the file at the given path and returns all classes in the file that are subclasses of SophiaScene. If add_parent_folder_to_sys_path is True, the parent folder of the file will be added to sys.path, which allows realtive imports in that folder."""

    if add_parent_folder_to_sys_path:
        sys.path.append(str(file_path.parent))

    module_name = file_path.stem
    spec = importlib.util.spec_from_file_location(module_name, file_path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)

    results = [obj for name, obj in inspect.getmembers(module) if inspect.isclass(obj) and obj.__module__ == module_name and issubclass(obj, SophiaScene) and not inspect.isabstract(obj)]

    if result_sorted:
        results = sorted(results, key=lambda sc: sc.__name__)

    return results




def get_dynamic_typst_scene(file_path: Path, ):
    return f"""
from sophialib.morphing.sophiamorphscene import AutoSlideScene
from pathlib import Path

class AI_{file_path.stem}(AutoSlideScene):
    def construct(self):
        # parse the corresponding typst

        self.parse_corresponding_typst_scene(
            Path("{str(file_path)}")
        )
        

        # Adding initial components to the scene
        super().construct()

        self.auto_slide_with_voiceover()
"""

    

def get_module_typst_scene(file_path: Path ):
    """Takes the file at the given path and returns an on-the-fly generated scene based on the given typst file. Only returns a single scene!"""

    module_name = file_path.stem


    spec = importlib.util.spec_from_loader(module_name, loader=None)
    temp_module = importlib.util.module_from_spec(spec)
    exec(get_dynamic_typst_scene(file_path), temp_module.__dict__)

    results = [obj for name, obj in inspect.getmembers(temp_module) if inspect.isclass(obj) and obj.__module__ == module_name and issubclass(obj, SophiaScene) and not inspect.isabstract(obj)]

    return results[0]