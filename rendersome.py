from sophialib.constants.directories import RENDER_RESULTS_FOLDER
from sophiarenderlib.render.filehelpers import RENDER_RESULTS_MEDIA_FOLDER, find_repository_scene_module_paths
from sophialib.filehelpers.load_sophia_scenes import get_module_manim_sophiascene_classes
from sophiarenderlib.render.scenes import render_scenes


if __name__ == "__main__":
    found_scene_modules = find_repository_scene_module_paths()
    
    
    ########################################################
    ######################## DEBUG #########################
    ###### Use this to only render particular scenes #######
    ########################################################
    #print(found_scene_modules)
    #print("--------")
    filenames_to_render = ["people_scenes.py"]
    found_scene_modules = [m for m in found_scene_modules if any(filename in m.name for filename in filenames_to_render)]
    # found_scene_modules = [m for m in found_scene_modules if not any(filename in m.name for filename in filenames_no_render)]
    print (f"-------- [ found the following  (n={len(found_scene_modules)}) modules ] --------")
    


    

    for m in found_scene_modules:

        print(f"  {m}")
        clsses = get_module_manim_sophiascene_classes(m, add_parent_folder_to_sys_path=True, result_sorted=True)
        STRICT_SCENE_FILTER = [
            "Func_6_1_I_1_magda_q", "Func_6_1_I_1_magda_a", "Func_6_1_I_1_magda_b", "Func_6_1_I_1_magda_c", "Func_6_1_I_1_magda_d",
        ]
        clsses = [c for c in clsses if c.__name__ in STRICT_SCENE_FILTER]
        print(clsses)
        render_scenes(clsses, output_dir=RENDER_RESULTS_FOLDER, media_parent_folder=RENDER_RESULTS_MEDIA_FOLDER)