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
    filenames_to_render = ["sets_intro_01.typ", "sets_intro_01_q.typ", "sets_intro_01_a.typ", "sets_intro_01_b.typ", "sets_intro_01_c.typ", "sets_intro_01_d.typ", 
                            "sets_intro_02.typ", "sets_intro_02_q.typ", "sets_intro_02_a.typ", "sets_intro_02_b.typ", "sets_intro_02_c.typ", "sets_intro_02_d.typ",
                            "sets_intro_03.typ", "sets_intro_03_q.typ", "sets_intro_03_a.typ", "sets_intro_03_b.typ", "sets_intro_03_c.typ", "sets_intro_03_d.typ",
                            "sets_intro_04.typ", "sets_intro_04_q.typ", "sets_intro_04_a.typ", "sets_intro_04_b.typ", "sets_intro_04_c.typ", "sets_intro_04_d.typ",
                            "sets_intro_05.typ", "sets_intro_05_q.typ", "sets_intro_05_a.typ", "sets_intro_05_b.typ", "sets_intro_05_c.typ", "sets_intro_05_d.typ",
                            "sets_intro_06.typ", "sets_intro_06_q.typ", "sets_intro_06_a.typ", "sets_intro_06_b.typ", "sets_intro_06_c.typ", "sets_intro_06_d.typ",
                            "sets_intro_07.typ", "sets_intro_07_q.typ", "sets_intro_07_a.typ", "sets_intro_07_b.typ", "sets_intro_07_c.typ", "sets_intro_07_d.typ",
                            "sets_intro_08.typ", "sets_intro_08_q.typ", "sets_intro_08_a.typ", "sets_intro_08_b.typ", "sets_intro_08_c.typ", "sets_intro_08_d.typ",
                            "sets_intro_09.typ", "sets_intro_09_q.typ", "sets_intro_09_a.typ", "sets_intro_09_b.typ", "sets_intro_09_c.typ", "sets_intro_09_d.typ",
                            "sets_intro_10.typ", "sets_intro_10_q.typ", "sets_intro_10_a.typ", "sets_intro_10_b.typ", "sets_intro_10_c.typ", "sets_intro_10_d.typ",
                            "sets_intro_11.typ", "sets_intro_11_q.typ", "sets_intro_11_a.typ", "sets_intro_11_b.typ", "sets_intro_11_c.typ", "sets_intro_11_d.typ",
                            "sets_intro_12.typ", "sets_intro_12_q.typ", "sets_intro_12_a.typ", "sets_intro_12_b.typ", "sets_intro_12_c.typ", "sets_intro_12_d.typ",
                            "sets_intro_13.typ", "sets_intro_13_q.typ", "sets_intro_13_a.typ", "sets_intro_13_b.typ", "sets_intro_13_c.typ", "sets_intro_13_d.typ",
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
    
    
                

