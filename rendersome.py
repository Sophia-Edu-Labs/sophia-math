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
    filenames_to_render = ["Calc_practice_Ana_TUB.py"]
    found_scene_modules = [m for m in found_scene_modules if any(filename in m.name for filename in filenames_to_render)]
    # found_scene_modules = [m for m in found_scene_modules if not any(filename in m.name for filename in filenames_no_render)]
    print (f"-------- [ found the following  (n={len(found_scene_modules)}) modules ] --------")
    


    

    for m in found_scene_modules:

        print(f"  {m}")
        clsses = get_module_manim_sophiascene_classes(m, add_parent_folder_to_sys_path=True, result_sorted=True)
        STRICT_SCENE_FILTER = [
        "Calc_practice_derivatives_4_q", "Calc_practice_derivatives_4_a", "Calc_practice_derivatives_4_b",
        "Calc_practice_derivatives_5_q", "Calc_practice_derivatives_5_a", "Calc_practice_derivatives_5_b",
        "Calc_practice_derivatives_6_q", "Calc_practice_derivatives_6_a", "Calc_practice_derivatives_6_b",
        "Calc_practice_mvt_1_q", "Calc_practice_mvt_1_a", "Calc_practice_mvt_1_b", "Calc_practice_mvt_1_c", "Calc_practice_mvt_1_d",
        "Calc_practice_mvt_2_q", "Calc_practice_mvt_2_a", "Calc_practice_mvt_2_b", "Calc_practice_mvt_2_c", "Calc_practice_mvt_2_d",
        "Calc_practice_mvt_3_q", "Calc_practice_mvt_3_a", "Calc_practice_mvt_3_b", "Calc_practice_mvt_3_c", "Calc_practice_mvt_3_d",
        ]
        clsses = [c for c in clsses if c.__name__ in STRICT_SCENE_FILTER]
        print(clsses)
        render_scenes(clsses, output_dir=RENDER_RESULTS_FOLDER, media_parent_folder=RENDER_RESULTS_MEDIA_FOLDER)