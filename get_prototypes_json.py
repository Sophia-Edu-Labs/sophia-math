
import json
import os
from pathlib import Path
from sophialib.constants.directories import SCENES_FOLDER
from sophialib.filehelpers.load_sophia_scenes import get_module_manim_sophiascene_classes
from sophialib.page_prototypes.prototype import PagePrototype, PagePrototypeQuestion, PagePrototypeVideo, parse_prototypes_for_file
from sophialib.styles.sophiascene import SophiaScene
from typing import List, Type, Tuple
from sophiarenderlib.render.filehelpers import find_repository_scene_module_paths

# File-Names and Scene-Names to exclude from prototype generation
to_exclude = ["test", "ExampleScene", "render"]

# find the paths of all scenes, .typ and .py scenes
scene_paths = find_repository_scene_module_paths(scene_basefolders_to_use=[SCENES_FOLDER], stems_to_exclude=to_exclude)

#for all the paths of the scenes, parse the prototypes
prototypes: List[PagePrototype] = []
for scene_path in scene_paths:
    prototypes_for_scene_path = parse_prototypes_for_file(scene_path, add_parent_folder_to_sys_path=True)

    # filter out the prototypes that should be excluded
    prototypes_for_scene_path = [pt for pt in prototypes_for_scene_path if pt.base_prototypeID not in to_exclude]
    prototypes.extend(prototypes_for_scene_path)

# grooup the prototypes by their upper-case locale in a dict
prototypes_by_locale = {}
for pt in prototypes:
    locale = pt.lang_code.upper()
    if locale not in prototypes_by_locale:
        prototypes_by_locale[locale] = []
    prototypes_by_locale[locale].append(pt)

# ensure that every prototype ID is unique, per locale
for l, pts in prototypes_by_locale.items():
    all_prototype_ids = [pt.prototypeID for pt in pts]
    if len(all_prototype_ids) != len(set(all_prototype_ids)):
        # find all duplicate prototype ids
        duplicate_prototype_ids = set([x for x in all_prototype_ids if all_prototype_ids.count(x) > 1])

        # for each duplicate prototype id, print them out
        for duplicate_prototype_id in duplicate_prototype_ids:
            print(f"Found duplicate prototype id {duplicate_prototype_id}")

        # raise an error that indicates the paths to the conflicting prototypes
        raise Exception(f"Found duplicate prototype ids: {duplicate_prototype_ids}")

# determine the locale for which we want to generate the exported prototypes json file
locale = os.environ.get("LOCALE", "en") # (we take it from the env)

# filter all prototypes by the locale
prototypes_to_export = prototypes_by_locale.get(locale.upper(), [])

# sort the prototypes_to_export by their base prototypeID
prototypes_to_export.sort(key=lambda x: x.base_prototypeID)

# now create the json file that we wanna export
json_to_export = []

# go through all scenes and add an entry to the export json
for pt in prototypes_to_export:
    jsondict = pt.to_json()
    # remove the lang_code object, as we have this information already as part of the filename
    del jsondict["lang_code"]

    json_to_export.append({
        **jsondict
    })

# create the output file name, based on the locale
output_file_name = f"prototypes_{locale}.json"

# write the overview json to the file
with open(output_file_name, "w") as f:
    f.write(json.dumps(json_to_export, indent=4))
