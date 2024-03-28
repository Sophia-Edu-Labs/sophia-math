from pathlib import Path
from sophialib.morphing.sophiamorphscene import AutoSlideScene


class ExampleScene(AutoSlideScene):
    def construct(self):
        filename = "extrema_01.typ"
        self.parse_corresponding_typst_scene(Path(__file__).parent / filename)
        super().construct()
        self.auto_slide_with_voiceover()