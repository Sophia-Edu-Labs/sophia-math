# Import necessary libraries and modules
from abc import ABCMeta, abstractmethod
from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
from sophialib.styles.sophiascene import (CursorMoveToCurved, CursorPositionTracker,
                                          CursorPositionTracking,
                                          CursorResizeDefault, SophiaScene,
                                          assets_folder, AltCursor,
                                          SophiaCursorScene, CursorMoveTo,
                                          CursorMoveResize, Notepad, CursorMarkAxis, Bubble)
from sophialib.styles.styleconstants import *
from sophialib.styles.sophiaobjects import *
from manim import *
from PIL import Image
import numpy as np
from pathlib import Path
from sophialib.tasks.sophiataskdefinition import SophiaFreeTextTaskDetail, SophiaLLMQuestionCheckDetail, SophiaTaskDefinition
import ast 



class Func_6_1_I_1_q_magda(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$2$","$3$", "$4$", "$8$"],
            correctAnswerIndex = 2,
            questionText = self.translate("Func_6_1.1I1q.question.how-do-you-pay-the-artist"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$\key{a}$",
                answerOptionsTypes={
                    "a": "number"
                }
            )
        )


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_1.title_1"))


        cursor = AltCursor(stroke_width=0.0, idle=True)

        self.add(cursor)

        ew = ImageMobject(assets_folder / "img" / "exponential_woman.png")
        ew = ew.scale(0.35/ew.get_width())
        cad = ImageMobject(assets_folder / "img" / "dancing_cat_and_dog.png")
        cad = cad.scale(3/cad.get_width()).shift(5*LEFT)

        cords = self.add_cords([0, 3, 1], [0, 8, 2], x_ticks = [0,1,2,3], y_ticks=[4,8,12,16]).shift(DOWN*0.6)
        plane=cords[0]


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_1.1I1q.main.voiceover")
        ) as tracker:

            self.wait_until_bookmark("vid_in")
            self.add_shift_sound(0.5)
            self.play(cad.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("person")
            self.add_shift_sound(0.5)
            self.play(cad.animate.shift(5*RIGHT), run_time=0.5)
            p1a = ew.copy().move_to(plane.c2p(0,1))
            self.play(FadeIn(p1a), run_time=0.5)

            self.wait_until_bookmark("share")
            p2a, p2b = ew.copy().move_to(plane.c2p(1,1)), ew.copy().move_to(plane.c2p(1,2))
            a1, a2 = Arrow(plane.c2p(0,1), plane.c2p(1,1), color=c1t, stroke_width=3), Arrow(plane.c2p(0,1), plane.c2p(1,2), color=c1t, stroke_width=3)
            self.play(FadeIn(p2a), FadeIn(p2b), Create(a1), Create(a2), run_time=0.5)

            self.wait_until_bookmark("qmark")
            cursor.idle=False
            self.draw_qmark(cursor, 2*DOWN, run_time=4)


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


PROTOTYPES=[
########################################################### STUFF for Prototypes
    PagePrototypeVideo.from_scene(Func_6_1_I_1_q_magda),
]


