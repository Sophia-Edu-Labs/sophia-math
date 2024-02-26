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



class Func_6_1_I_1_magda_q(SophiaCursorScene):

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


class Func_6_1_I_1_magda_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_1.title_1"))


        cursor = AltCursor(stroke_width=0.0, idle=True)


        ew = ImageMobject(assets_folder / "img" / "exponential_woman.png")
        ew = ew.scale(0.35/ew.get_width())
        cad = ImageMobject(assets_folder / "img" / "dancing_cat_and_dog.png")
        cad = cad.scale(3/cad.get_width()).shift(5*LEFT)

        cords = self.add_cords([0, 3, 1], [0, 8, 2], x_ticks = [0,1,2,3], y_ticks=[4,8,12,16]).shift(DOWN*0.6)
        plane=cords[0]

        a1, a2 = Arrow(plane.c2p(0,1), plane.c2p(1,1), color=c1t, stroke_width=3), Arrow(plane.c2p(0,1), plane.c2p(1,2), color=c1t, stroke_width=3)
        p1a = ew.copy().move_to(plane.c2p(0,1))
        p2a, p2b = ew.copy().move_to(plane.c2p(1,1)), ew.copy().move_to(plane.c2p(1,2))

        self.add(a1, a2, p1a, p2a, p2b)

        a3, a4, a5, a6 = Arrow(plane.c2p(1,1), plane.c2p(2,1), color=c1t, stroke_width=3), Arrow(plane.c2p(1,1), plane.c2p(2,2), color=c1t, stroke_width=3), Arrow(plane.c2p(1,2), plane.c2p(2,3), color=c1t, stroke_width=3), Arrow(plane.c2p(1,2), plane.c2p(2,4), color=c1t, stroke_width=3)
        p3a, p3b, p3c, p3d = ew.copy().move_to(plane.c2p(2,1)), ew.copy().move_to(plane.c2p(2,2)), ew.copy().move_to(plane.c2p(2,3)), ew.copy().move_to(plane.c2p(2,4))

        a7, a8, a9, a10, a11, a12, a13, a14 = Arrow(plane.c2p(2,1), plane.c2p(3,1), color=c1t, stroke_width=3), Arrow(plane.c2p(2,1), plane.c2p(3,2), color=c1t, stroke_width=3), Arrow(plane.c2p(2,2), plane.c2p(3,3), color=c1t, stroke_width=3), Arrow(plane.c2p(2,2), plane.c2p(3,4), color=c1t, stroke_width=3), Arrow(plane.c2p(2,3), plane.c2p(3,5), color=c1t, stroke_width=3), Arrow(plane.c2p(2,3), plane.c2p(3,6), color=c1t, stroke_width=3), Arrow(plane.c2p(2,4), plane.c2p(3,7), color=c1t, stroke_width=3), Arrow(plane.c2p(2,4), plane.c2p(3,8), color=c1t, stroke_width=3)
        p4a, p4b, p4c, p4d, p4e, p4f, p4g, p4h = ew.copy().move_to(plane.c2p(3,1)), ew.copy().move_to(plane.c2p(3,2)), ew.copy().move_to(plane.c2p(3,3)), ew.copy().move_to(plane.c2p(3,4)), ew.copy().move_to(plane.c2p(3,5)), ew.copy().move_to(plane.c2p(3,6)), ew.copy().move_to(plane.c2p(3,7)), ew.copy().move_to(plane.c2p(3,8))

        # Action Sequence
        with self.voiceover(
                text="No, that's not right.\n"+self.translate("Func_6_1.1I1q.answer.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("first_person")
            self.play(FadeIn(a3), FadeIn(a4), FadeIn(p3a), FadeIn(p3b), run_time=0.5)

            self.wait_until_bookmark("second_person")
            self.play(FadeIn(a5), FadeIn(a6), FadeIn(p3c), FadeIn(p3d), run_time=0.5)

            self.wait_until_bookmark("p1")
            self.play(FadeIn(a7), FadeIn(a8), FadeIn(p4a), FadeIn(p4b), run_time=0.5)

            self.wait_until_bookmark("p2")
            self.play(FadeIn(a9), FadeIn(a10), FadeIn(p4c), FadeIn(p4d), run_time=0.5)

            self.wait_until_bookmark("p3")
            self.play(FadeIn(a11), FadeIn(a12), FadeIn(p4e), FadeIn(p4f), run_time=0.5)

            self.wait_until_bookmark("p4")
            self.play(FadeIn(a13), FadeIn(a14), FadeIn(p4g), FadeIn(p4h), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_6_1_I_1_magda_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_1.title_1"))


        cursor = AltCursor(stroke_width=0.0, idle=True)


        ew = ImageMobject(assets_folder / "img" / "exponential_woman.png")
        ew = ew.scale(0.35/ew.get_width())
        cad = ImageMobject(assets_folder / "img" / "dancing_cat_and_dog.png")
        cad = cad.scale(3/cad.get_width()).shift(5*LEFT)

        cords = self.add_cords([0, 3, 1], [0, 8, 2], x_ticks = [0,1,2,3], y_ticks=[4,8,12,16]).shift(DOWN*0.6)
        plane=cords[0]

        a1, a2 = Arrow(plane.c2p(0,1), plane.c2p(1,1), color=c1t, stroke_width=3), Arrow(plane.c2p(0,1), plane.c2p(1,2), color=c1t, stroke_width=3)
        p1a = ew.copy().move_to(plane.c2p(0,1))
        p2a, p2b = ew.copy().move_to(plane.c2p(1,1)), ew.copy().move_to(plane.c2p(1,2))

        self.add(a1, a2, p1a, p2a, p2b)

        a3, a4, a5, a6 = Arrow(plane.c2p(1,1), plane.c2p(2,1), color=c1t, stroke_width=3), Arrow(plane.c2p(1,1), plane.c2p(2,2), color=c1t, stroke_width=3), Arrow(plane.c2p(1,2), plane.c2p(2,3), color=c1t, stroke_width=3), Arrow(plane.c2p(1,2), plane.c2p(2,4), color=c1t, stroke_width=3)
        p3a, p3b, p3c, p3d = ew.copy().move_to(plane.c2p(2,1)), ew.copy().move_to(plane.c2p(2,2)), ew.copy().move_to(plane.c2p(2,3)), ew.copy().move_to(plane.c2p(2,4))

        a7, a8, a9, a10, a11, a12, a13, a14 = Arrow(plane.c2p(2,1), plane.c2p(3,1), color=c1t, stroke_width=3), Arrow(plane.c2p(2,1), plane.c2p(3,2), color=c1t, stroke_width=3), Arrow(plane.c2p(2,2), plane.c2p(3,3), color=c1t, stroke_width=3), Arrow(plane.c2p(2,2), plane.c2p(3,4), color=c1t, stroke_width=3), Arrow(plane.c2p(2,3), plane.c2p(3,5), color=c1t, stroke_width=3), Arrow(plane.c2p(2,3), plane.c2p(3,6), color=c1t, stroke_width=3), Arrow(plane.c2p(2,4), plane.c2p(3,7), color=c1t, stroke_width=3), Arrow(plane.c2p(2,4), plane.c2p(3,8), color=c1t, stroke_width=3)
        p4a, p4b, p4c, p4d, p4e, p4f, p4g, p4h = ew.copy().move_to(plane.c2p(3,1)), ew.copy().move_to(plane.c2p(3,2)), ew.copy().move_to(plane.c2p(3,3)), ew.copy().move_to(plane.c2p(3,4)), ew.copy().move_to(plane.c2p(3,5)), ew.copy().move_to(plane.c2p(3,6)), ew.copy().move_to(plane.c2p(3,7)), ew.copy().move_to(plane.c2p(3,8))

        # Action Sequence
        with self.voiceover(
                text="No, that's not right.\n"+self.translate("Func_6_1.1I1q.answer.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("first_person")
            self.play(FadeIn(a3), FadeIn(a4), FadeIn(p3a), FadeIn(p3b), run_time=0.5)

            self.wait_until_bookmark("second_person")
            self.play(FadeIn(a5), FadeIn(a6), FadeIn(p3c), FadeIn(p3d), run_time=0.5)

            self.wait_until_bookmark("p1")
            self.play(FadeIn(a7), FadeIn(a8), FadeIn(p4a), FadeIn(p4b), run_time=0.5)

            self.wait_until_bookmark("p2")
            self.play(FadeIn(a9), FadeIn(a10), FadeIn(p4c), FadeIn(p4d), run_time=0.5)

            self.wait_until_bookmark("p3")
            self.play(FadeIn(a11), FadeIn(a12), FadeIn(p4e), FadeIn(p4f), run_time=0.5)

            self.wait_until_bookmark("p4")
            self.play(FadeIn(a13), FadeIn(a14), FadeIn(p4g), FadeIn(p4h), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_6_1_I_1_magda_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_1.title_1"))


        cursor = AltCursor(stroke_width=0.0, idle=True)


        ew = ImageMobject(assets_folder / "img" / "exponential_woman.png")
        ew = ew.scale(0.35/ew.get_width())
        cad = ImageMobject(assets_folder / "img" / "dancing_cat_and_dog.png")
        cad = cad.scale(3/cad.get_width()).shift(5*LEFT)

        cords = self.add_cords([0, 3, 1], [0, 8, 2], x_ticks = [0,1,2,3], y_ticks=[4,8,12,16]).shift(DOWN*0.6)
        plane=cords[0]

        a1, a2 = Arrow(plane.c2p(0,1), plane.c2p(1,1), color=c1t, stroke_width=3), Arrow(plane.c2p(0,1), plane.c2p(1,2), color=c1t, stroke_width=3)
        p1a = ew.copy().move_to(plane.c2p(0,1))
        p2a, p2b = ew.copy().move_to(plane.c2p(1,1)), ew.copy().move_to(plane.c2p(1,2))

        self.add(a1, a2, p1a, p2a, p2b)

        a3, a4, a5, a6 = Arrow(plane.c2p(1,1), plane.c2p(2,1), color=c1t, stroke_width=3), Arrow(plane.c2p(1,1), plane.c2p(2,2), color=c1t, stroke_width=3), Arrow(plane.c2p(1,2), plane.c2p(2,3), color=c1t, stroke_width=3), Arrow(plane.c2p(1,2), plane.c2p(2,4), color=c1t, stroke_width=3)
        p3a, p3b, p3c, p3d = ew.copy().move_to(plane.c2p(2,1)), ew.copy().move_to(plane.c2p(2,2)), ew.copy().move_to(plane.c2p(2,3)), ew.copy().move_to(plane.c2p(2,4))

        a7, a8, a9, a10, a11, a12, a13, a14 = Arrow(plane.c2p(2,1), plane.c2p(3,1), color=c1t, stroke_width=3), Arrow(plane.c2p(2,1), plane.c2p(3,2), color=c1t, stroke_width=3), Arrow(plane.c2p(2,2), plane.c2p(3,3), color=c1t, stroke_width=3), Arrow(plane.c2p(2,2), plane.c2p(3,4), color=c1t, stroke_width=3), Arrow(plane.c2p(2,3), plane.c2p(3,5), color=c1t, stroke_width=3), Arrow(plane.c2p(2,3), plane.c2p(3,6), color=c1t, stroke_width=3), Arrow(plane.c2p(2,4), plane.c2p(3,7), color=c1t, stroke_width=3), Arrow(plane.c2p(2,4), plane.c2p(3,8), color=c1t, stroke_width=3)
        p4a, p4b, p4c, p4d, p4e, p4f, p4g, p4h = ew.copy().move_to(plane.c2p(3,1)), ew.copy().move_to(plane.c2p(3,2)), ew.copy().move_to(plane.c2p(3,3)), ew.copy().move_to(plane.c2p(3,4)), ew.copy().move_to(plane.c2p(3,5)), ew.copy().move_to(plane.c2p(3,6)), ew.copy().move_to(plane.c2p(3,7)), ew.copy().move_to(plane.c2p(3,8))

        # Action Sequence
        with self.voiceover(
                text="That's right, great job.\n"+self.translate("Func_6_1.1I1q.answer.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("first_person")
            self.play(FadeIn(a3), FadeIn(a4), FadeIn(p3a), FadeIn(p3b), run_time=0.5)

            self.wait_until_bookmark("second_person")
            self.play(FadeIn(a5), FadeIn(a6), FadeIn(p3c), FadeIn(p3d), run_time=0.5)

            self.wait_until_bookmark("p1")
            self.play(FadeIn(a7), FadeIn(a8), FadeIn(p4a), FadeIn(p4b), run_time=0.5)

            self.wait_until_bookmark("p2")
            self.play(FadeIn(a9), FadeIn(a10), FadeIn(p4c), FadeIn(p4d), run_time=0.5)

            self.wait_until_bookmark("p3")
            self.play(FadeIn(a11), FadeIn(a12), FadeIn(p4e), FadeIn(p4f), run_time=0.5)

            self.wait_until_bookmark("p4")
            self.play(FadeIn(a13), FadeIn(a14), FadeIn(p4g), FadeIn(p4h), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_6_1_I_1_magda_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_1.title_1"))


        cursor = AltCursor(stroke_width=0.0, idle=True)


        ew = ImageMobject(assets_folder / "img" / "exponential_woman.png")
        ew = ew.scale(0.35/ew.get_width())
   
        cords = self.add_cords([0, 3, 1], [0, 8, 2], x_ticks = [0,1,2,3], y_ticks=[4,8,12,16]).shift(DOWN*0.6)
        plane=cords[0]

        a1, a2 = Arrow(plane.c2p(0,1), plane.c2p(1,1), color=c1t, stroke_width=3), Arrow(plane.c2p(0,1), plane.c2p(1,2), color=c1t, stroke_width=3)
        p1a = ew.copy().move_to(plane.c2p(0,1))
        p2a, p2b = ew.copy().move_to(plane.c2p(1,1)), ew.copy().move_to(plane.c2p(1,2))

        self.add(a1, a2, p1a, p2a, p2b)

        a3, a4, a5, a6 = Arrow(plane.c2p(1,1), plane.c2p(2,1), color=c1t, stroke_width=3), Arrow(plane.c2p(1,1), plane.c2p(2,2), color=c1t, stroke_width=3), Arrow(plane.c2p(1,2), plane.c2p(2,3), color=c1t, stroke_width=3), Arrow(plane.c2p(1,2), plane.c2p(2,4), color=c1t, stroke_width=3)
        p3a, p3b, p3c, p3d = ew.copy().move_to(plane.c2p(2,1)), ew.copy().move_to(plane.c2p(2,2)), ew.copy().move_to(plane.c2p(2,3)), ew.copy().move_to(plane.c2p(2,4))

        a7, a8, a9, a10, a11, a12, a13, a14 = Arrow(plane.c2p(2,1), plane.c2p(3,1), color=c1t, stroke_width=3), Arrow(plane.c2p(2,1), plane.c2p(3,2), color=c1t, stroke_width=3), Arrow(plane.c2p(2,2), plane.c2p(3,3), color=c1t, stroke_width=3), Arrow(plane.c2p(2,2), plane.c2p(3,4), color=c1t, stroke_width=3), Arrow(plane.c2p(2,3), plane.c2p(3,5), color=c1t, stroke_width=3), Arrow(plane.c2p(2,3), plane.c2p(3,6), color=c1t, stroke_width=3), Arrow(plane.c2p(2,4), plane.c2p(3,7), color=c1t, stroke_width=3), Arrow(plane.c2p(2,4), plane.c2p(3,8), color=c1t, stroke_width=3)
        p4a, p4b, p4c, p4d, p4e, p4f, p4g, p4h = ew.copy().move_to(plane.c2p(3,1)), ew.copy().move_to(plane.c2p(3,2)), ew.copy().move_to(plane.c2p(3,3)), ew.copy().move_to(plane.c2p(3,4)), ew.copy().move_to(plane.c2p(3,5)), ew.copy().move_to(plane.c2p(3,6)), ew.copy().move_to(plane.c2p(3,7)), ew.copy().move_to(plane.c2p(3,8))

        # Action Sequence
        with self.voiceover(
                text="No, that's not right.\n"+self.translate("Func_6_1.1I1q.answer.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("first_person")
            self.play(FadeIn(a3), FadeIn(a4), FadeIn(p3a), FadeIn(p3b), run_time=0.5)

            self.wait_until_bookmark("second_person")
            self.play(FadeIn(a5), FadeIn(a6), FadeIn(p3c), FadeIn(p3d), run_time=0.5)

            self.wait_until_bookmark("p1")
            self.play(FadeIn(a7), FadeIn(a8), FadeIn(p4a), FadeIn(p4b), run_time=0.5)

            self.wait_until_bookmark("p2")
            self.play(FadeIn(a9), FadeIn(a10), FadeIn(p4c), FadeIn(p4d), run_time=0.5)

            self.wait_until_bookmark("p3")
            self.play(FadeIn(a11), FadeIn(a12), FadeIn(p4e), FadeIn(p4f), run_time=0.5)

            self.wait_until_bookmark("p4")
            self.play(FadeIn(a13), FadeIn(a14), FadeIn(p4g), FadeIn(p4h), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
PROTOTYPES=[
########################################################### STUFF for Prototypes
    PagePrototypeVideo.from_scene(Func_6_1_I_1_magda_q),
    PagePrototypeQuestion.from_scene(Func_6_1_I_1_magda_q),
    PagePrototypeVideo.from_scene(Func_6_1_I_1_magda_a),
    PagePrototypeVideo.from_scene(Func_6_1_I_1_magda_b),
    PagePrototypeVideo.from_scene(Func_6_1_I_1_magda_c),
    PagePrototypeVideo.from_scene(Func_6_1_I_1_magda_d),
]


