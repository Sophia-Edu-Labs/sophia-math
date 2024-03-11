from pathlib import Path
from sophialib.morphing.sophiamorphscene import AutoSlideScene


# Use this scene, to render a typst scene with the sideview extension. This scene is excluded from the default renderall script
class Holland_Calc_integral_07_q(AutoSlideScene):
    def construct(self):
        ########################
        ########################
        ###### HERE, define the scene that should be rendered
        filename = "Calc_integral_07_q"
        ########################
        ########################



        # parse the corresponding typst
        self.parse_corresponding_typst_scene(
            Path(__file__).parent / filename
        )
        
        self.elevenlabsvoiceoverride = "holland"

        # Adding initial components to the scene
        super().construct()
        
        # start auto slide show
        # self.auto_slide()

        self.auto_slide_with_voiceover()


    