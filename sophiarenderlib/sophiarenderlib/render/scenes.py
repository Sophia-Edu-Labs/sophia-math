from pathlib import Path
import tempfile
from typing import List, Type
from manim import tempconfig
from sophialib.filehelpers.extract import extract_audio_to_path
from sophialib.filehelpers.hashing import hash_audio_at_path
from sophialib.filehelpers.load_sophia_scenes import get_module_manim_sophiascene_classes
import multiprocessing as mp 


# afterwards import sophiascene, to only import it once (and dynamic import stuff below won't import it again as a different object)
from sophialib.styles.sophiascene import SophiaScene
from sophialib.videopostprocessing.crop import crop_video_file



def render_scene(sc: Type[SophiaScene], output_dir: Path, scene_media_folder: Path, test_run_with_last_frame: bool = False, disable_progressbar: bool = False, quality: str = "production_quality"):
    if test_run_with_last_frame:
        output_path = (output_dir/sc.__module__/f"{sc.__name__}_lastframe.png").resolve()
    else: 
        output_path = (output_dir/sc.__module__/f"{sc.__name__}.mp4").resolve()
    output_path.parent.mkdir(parents=True, exist_ok=True) #make sure always exist
    config = {"quality": quality, "preview": False, "output_file": str(output_path), "disable_caching": True, "media_dir": scene_media_folder} # disable caching is important for manim-voiceover (due to a bug in manim)
    if test_run_with_last_frame:
        config["quality"] = "low_quality"
        config["save_last_frame"] = True
        config["write_to_movie"] = False

    if disable_progressbar:
        config["progress_bar"] = "none"
    
    with tempconfig(config):
        # instantiate sc 
        scene = sc()

        # render scene
        scene.should_add_dev_rects = False # do not render dev-rects
        scene.render()

        if test_run_with_last_frame:
            # no more to do here in that case :)
            return

        # crop output file
        crop_video_file(output_path)


def render_scenes(scenes: List[Type[SophiaScene]], output_dir: Path, media_parent_folder: Path, test_run_with_last_frame: bool = False, disable_progressbar: bool = False, rethrow_exceptions: bool = False, quality: str = "production_quality"):
    """Renders all scenes in a list of scenes. Returns a list of scenes for which rendering failed, if rethrow_exceptions is False, otherwise it will rethrow the exceptions."""
    failed_rendered_scenes = []

    # render all scenes in module
    for sc in scenes:
        # create a new media folder for each scene
        scene_media_folder = media_parent_folder / f"{sc.__module__}_{sc.__name__}_media"
        scene_media_folder.mkdir(parents=True, exist_ok=True)

        try: 
            render_scene(sc, output_dir, scene_media_folder, test_run_with_last_frame, disable_progressbar, quality)
        except Exception as e:
            print(f"Error while rendering scene {sc.__name__}: {e}")
            if rethrow_exceptions:
                raise e
            else:
                failed_rendered_scenes.append(sc)
    
    return failed_rendered_scenes




def render_all_scenes_in_module(module_path: Path, output_dir: Path, media_parent_folder: Path, test_run_with_last_frame: bool = False, disable_progressbar: bool = False):
    """Renders all scenes in a module. Returns True if successful, False otherwise."""
    try:
        # get all scene classes in module
        scene_classes = get_module_manim_sophiascene_classes(module_path, add_parent_folder_to_sys_path=True) # add parent folder to sys path, to allow relative imports


        # render all scenes
        render_scenes(scene_classes, output_dir, media_parent_folder, test_run_with_last_frame, disable_progressbar, rethrow_exceptions=True)
        
        return True
    except Exception as e:
        print(f"Error while rendering module {module_path}: {e}")
        return e

def render_scene_modules(scene_module_paths: List[Path], output_dir: Path, media_parent_folder: Path, parallelize: bool = True, test_run_with_last_frame: bool = False, disable_progressbar: bool = False, rethrow_exceptions: bool = False):
    """Renders all scenes in a list of scene modules. To the given output folder by using the given media folder. If parallelize is true, it will try to render multiple scenes in parallel. If test_run_with_last_frame is true, it will only render the last frame of each scene, which makes rendering much faster but can nevertheless show errors in the rendering process (like type errors), so it is like a test/dry-run."""
    # separate media folder seems necessary for parallelization, so that there will be no interference between the different processes when they try to access "their" media folder
    # make sure a separate media folder parent for the renderall script exists
    media_parent_folder.mkdir(parents=True, exist_ok=True)

    # also make sure output folder always exists
    Path.mkdir(output_dir, parents=True, exist_ok=True) 

    # start rendering now
    print("-------- [ will start rendering now ] --------")

    results = []

    render_func = render_all_scenes_in_module
    parameters = [[sc_mod_path, output_dir, media_parent_folder, test_run_with_last_frame, disable_progressbar] for sc_mod_path in scene_module_paths]
    if parallelize:
        # create a pool of processes
        pool_count = mp.cpu_count() -1 # leave one core for other stuff
        pool_count = 3 # DEBUG: only use 3 cores
        print(f"Using {pool_count} cores for rendering.")
        pool = mp.Pool(pool_count, maxtasksperchild=1)

        # map the list of modules with scenes to the pool of processes
        results = pool.starmap(render_func, parameters, chunksize=1)

        # close the pool and wait for the work to finish
        pool.close()
        pool.join()
    else:
        results = [render_func(*p) for p in parameters]

    # check results and print out a list of failed modules
    failed_modules = [(module_path, result) for module_path, result in zip(scene_module_paths, results) if result is not True]

    if len(failed_modules) > 0:
        print("-------- [ errors occurred ] --------")
        print(f"Failed to render the following modules: ")
        for module_path, e in failed_modules:
            print(f"  {module_path}: {e}")

        if rethrow_exceptions:
            raise Exception(f"Failed to render the following modules: {failed_modules}")

    print("-------- [ finished rendering ] --------")
