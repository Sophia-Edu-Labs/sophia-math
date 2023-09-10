from pathlib import Path

WORKSPACE_FOLDER = Path(__file__).parent.parent.parent.parent.resolve() # resolve only workspace folder

RENDER_RESULTS_FOLDER = WORKSPACE_FOLDER / "renderresults"

SCENES_FOLDER = WORKSPACE_FOLDER / "scenes"

# The folder where the assets for scenes are stored
SCENES_ASSETS_FOLDER = SCENES_FOLDER / "assets"