from pathlib import Path
from sophialib.morphing.sophiamorphscene import AutoSlideScene


class ExampleScene(AutoSlideScene):
    def construct(self):
        filename = "aaa_test.typ"
        print(Path(__file__).parent / filename)
        self.parse_corresponding_typst_scene(Path(__file__).parent / filename)
        super().construct()
        self.auto_slide_with_voiceover()
