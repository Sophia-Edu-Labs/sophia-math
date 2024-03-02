from pathlib import Path
from sophialib.morphing.sophiamorphscene import AutoSlideScene


class ExampleScene(AutoSlideScene):
    def construct(self):
        # parse the corresponding typst

        filename = "1_integral_02.py"
        self.parse_corresponding_typst_scene(
            Path(__file__).parent / filename
        )
        

        # Adding initial components to the scene
        super().construct()
        
        # start auto slide show
        # self.auto_slide()

        self.auto_slide_with_voiceover()


    