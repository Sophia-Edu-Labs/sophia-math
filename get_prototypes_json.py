
import json
import os
from pathlib import Path
from sophialib.constants.directories import SCENES_FOLDER
from sophialib.filehelpers.load_sophia_scenes import get_module_manim_sophiascene_classes
from sophialib.page_prototypes.prototype import PagePrototype, PagePrototypeVideo, get_page_prototype_variables
from sophialib.styles.sophiascene import SophiaScene
from typing import Type, Tuple

def find_manim_scenes_in_directory():
    classes:list[Tuple[Path,Type[SophiaScene]]] = []

    for pf in Path(SCENES_FOLDER).glob("**/*.py"):
        scene_classes = get_module_manim_sophiascene_classes(pf, add_parent_folder_to_sys_path=True) # we need relative like imports from the same folder
        for scene_class in scene_classes:
            classes.append((pf, scene_class))

    return classes

def find_page_prototypes_in_directory():
    all_prototypes: list[Tuple[Path, Type[PagePrototype]]] = []

    for pf in Path(SCENES_FOLDER).glob("**/*.py"):
        prototypes = get_page_prototype_variables(pf, add_parent_folder_to_sys_path=True) # we need relative like imports from the same folder
        for pt in prototypes:
            all_prototypes.append((pf, pt))

    return all_prototypes

prototypes_per_dir = find_page_prototypes_in_directory()

############### TEMPORARY ################
# for every scene, check if it has a corresponding prototype, otherwise add one
scenes_per_dir = find_manim_scenes_in_directory()

for path, scene_class in scenes_per_dir:
    potential_prototype = PagePrototypeVideo.from_scene(scene_class)

    if not any(pt.prototypeID == potential_prototype.prototypeID for _, pt in prototypes_per_dir):
        prototypes_per_dir.append((path, potential_prototype))

##########################################

# ensure that every prototype ID is unique, otherwise raise an error that indicates the paths to the conflicting prototypes
all_prototype_ids = [pt.prototypeID for _, pt in prototypes_per_dir]
if len(all_prototype_ids) != len(set(all_prototype_ids)):
    # find all duplicate prototype ids
    duplicate_prototype_ids = set([x for x in all_prototype_ids if all_prototype_ids.count(x) > 1])

    # for each duplicate prototype id, print out ALL path where it was found
    for duplicate_prototype_id in duplicate_prototype_ids:
        duplicate_prototype_paths = [path for path, pt in prototypes_per_dir if pt.prototypeID == duplicate_prototype_id]
        print(f"Found duplicate prototype id {duplicate_prototype_id} in: ")
        for path in duplicate_prototype_paths:
            print(f"    {path}")

    # raise an error that indicates the paths to the conflicting prototypes
    raise Exception(f"Found duplicate prototype ids: {duplicate_prototype_ids} in {duplicate_prototype_paths}")

overview_json = []

# go through all scenes and add an entry to the overview json
for path, pt in prototypes_per_dir:
    overview_json.append({
        "folder": path.parent.name,
        **pt.to_json()
    })

# create the output file name, based on whether a locale is set in environment or not (if not set, choose the default one, i.e. "en")
locale = os.environ.get("LOCALE", "en")
output_file_name = f"prototypes_{locale}.json"

# write the overview json to the file
with open(output_file_name, "w") as f:
    f.write(json.dumps(overview_json, indent=4))
