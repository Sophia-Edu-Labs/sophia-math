
import json
import os
from pathlib import Path
from sophialib.constants.directories import SCENES_FOLDER
from sophialib.filehelpers.load_sophia_scenes import get_module_manim_sophiascene_classes
from sophialib.page_prototypes.prototype import PagePrototype, PagePrototypeQuestion, PagePrototypeVideo, get_page_prototype_variables
from sophialib.styles.sophiascene import SophiaScene
from typing import Type, Tuple

SCENES_FOLDER_TO_USE = SCENES_FOLDER / "AIGen" / "scenes"

def find_manim_scenes_in_directory():
    classes:list[Tuple[Path,Type[SophiaScene]]] = []

    for pf in Path(SCENES_FOLDER_TO_USE).glob("**/*.py"):
        scene_classes = get_module_manim_sophiascene_classes(pf, add_parent_folder_to_sys_path=True) # we need relative like imports from the same folder
        for scene_class in scene_classes:
            classes.append((pf, scene_class))

    return classes

def find_page_prototypes_in_directory():
    all_prototypes: list[Tuple[Path, Type[PagePrototype]]] = []

    for pf in Path(SCENES_FOLDER_TO_USE).glob("**/*.py"):
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
        
############### Typst based prototypes ################
# for every typst file in the corresponding folder, check if the metadata defined some question definitions (and always add them to the prototypes)
for typst_file in Path(SCENES_FOLDER_TO_USE).glob("**/*.typ"):
    # for every typst file, create a prototype for the video
    potential_prototype_video = PagePrototypeVideo.from_typst_file_path(typst_file)
    prototypes_per_dir.append((typst_file, potential_prototype_video))

    # if we can query metadata from the document, also create the corresponding question prototype based on that
    if typst_file.stem.endswith("_q"):
        potential_prototype_question_2 = PagePrototypeQuestion.from_typst_file_path(typst_file)
        prototypes_per_dir.append((typst_file, potential_prototype_question_2))
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

# a helper function, which strips everything before and including the first underscore
def strip_prefix(text):
    return text[text.find("_")+1:]

# sort the prototypes_per_dir by their prototypeID
prototypes_per_dir.sort(key=lambda x: strip_prefix(x[1].prototypeID))

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
