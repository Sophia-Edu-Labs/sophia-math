from sophialib.constants.directories import RENDER_RESULTS_FOLDER
from sophiarenderlib.render.filehelpers import RENDER_RESULTS_MEDIA_FOLDER, find_repository_scene_module_paths
from sophiarenderlib.render.scenes import render_scene_modules


if __name__ == "__main__":
    found_scene_modules = find_repository_scene_module_paths()
    
    
    ########################################################
    ######################## DEBUG #########################
    ###### Use this to only render particular scenes #######
    ########################################################
    #print(found_scene_modules)
    #print("--------")
    filenames_to_render = ["Calc_integral_01_q.typ", "Calc_integral_01_a.typ", "Calc_integral_01_b.typ",
    ]
    found_scene_modules = [m for m in found_scene_modules if any(filename in m.name for filename in filenames_to_render)]
    # found_scene_modules = [m for m in found_scene_modules if not any(filename in m.name for filename in filenames_no_render)]
    print (f"-------- [ found the following  (n={len(found_scene_modules)}) modules ] --------")
    for m in found_scene_modules:
        print(f"  {m}")
    ########################################################

    # render
    # if test_run_with_last_frame is True, then it will only render the last frame of each scene, and will not render the full scene (that makes it faster, even though still quite slow for a lot of scenes, to get an idea whether the scenes are working or not)
    render_scene_modules(found_scene_modules, output_dir=RENDER_RESULTS_FOLDER, media_parent_folder=RENDER_RESULTS_MEDIA_FOLDER, parallelize=False, test_run_with_last_frame=False)
    
    
                

