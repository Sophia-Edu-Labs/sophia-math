# 6_1: Exponential Functions: Intro

# Import necessary libraries and modules
from abc import ABCMeta, abstractmethod
from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
from sophialib.styles.sophiascene import *
from sophialib.styles.styleconstants import *
from sophialib.styles.sophiaobjects import *
from manim import *
from PIL import Image
import numpy as np
from pathlib import Path
from sophialib.tasks.sophiataskdefinition import SophiaTaskDefinition
import ast


#####################################
#####################################
class Func_6_1_I_1_q(SophiaCursorScene, SophiaQuestionInfo):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["2","3", "4", "8"],
            correctAnswerIndex = 2,
            questionText = self.translate("Func_6_1.1I1q.question.how-do-you-pay-the-artist") 
        )


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_1.1I1q.main.exponential-functions"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
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


class Func_6_1_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_1.1I1q.main.exponential-functions"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
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


class Func_6_1_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_1.1I1q.main.exponential-functions"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
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


class Func_6_1_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_1.1I1q.main.exponential-functions"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
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


class Func_6_1_I_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_1.1I1q.main.exponential-functions"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
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
#####################################
class Func_6_1_I_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["f(x)=2\cdot x", "g(x)=x^2", "h(x)=2^x"],
            correctAnswerIndex = 2,
            questionText = self.translate("Func_6_1.1I2q.question.how-do-you-pay-the-artist") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_1.1I1q.main.exponential-functions"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)


        ew = ImageMobject(assets_folder / "img" / "exponential_woman.png")
        ew = ew.scale(0.35/ew.get_width())

        cords = self.add_cords([0, 3, 1], [0, 8, 2], x_ticks = [0,1,2,3], y_ticks=[4,8,12,16]).shift(DOWN*0.6)
        plane=cords[0]

        a1, a2 = Arrow(plane.c2p(0,1), plane.c2p(1,1), color=c1t, stroke_width=3), Arrow(plane.c2p(0,1), plane.c2p(1,2), color=c1t, stroke_width=3)
        p1a = ew.copy().move_to(plane.c2p(0,1))
        p2a, p2b = ew.copy().move_to(plane.c2p(1,1)), ew.copy().move_to(plane.c2p(1,2))
        a3, a4, a5, a6 = Arrow(plane.c2p(1,1), plane.c2p(2,1), color=c1t, stroke_width=3), Arrow(plane.c2p(1,1), plane.c2p(2,2), color=c1t, stroke_width=3), Arrow(plane.c2p(1,2), plane.c2p(2,3), color=c1t, stroke_width=3), Arrow(plane.c2p(1,2), plane.c2p(2,4), color=c1t, stroke_width=3)
        p3a, p3b, p3c, p3d = ew.copy().move_to(plane.c2p(2,1)), ew.copy().move_to(plane.c2p(2,2)), ew.copy().move_to(plane.c2p(2,3)), ew.copy().move_to(plane.c2p(2,4))
        a7, a8, a9, a10, a11, a12, a13, a14 = Arrow(plane.c2p(2,1), plane.c2p(3,1), color=c1t, stroke_width=3), Arrow(plane.c2p(2,1), plane.c2p(3,2), color=c1t, stroke_width=3), Arrow(plane.c2p(2,2), plane.c2p(3,3), color=c1t, stroke_width=3), Arrow(plane.c2p(2,2), plane.c2p(3,4), color=c1t, stroke_width=3), Arrow(plane.c2p(2,3), plane.c2p(3,5), color=c1t, stroke_width=3), Arrow(plane.c2p(2,3), plane.c2p(3,6), color=c1t, stroke_width=3), Arrow(plane.c2p(2,4), plane.c2p(3,7), color=c1t, stroke_width=3), Arrow(plane.c2p(2,4), plane.c2p(3,8), color=c1t, stroke_width=3)
        p4a, p4b, p4c, p4d, p4e, p4f, p4g, p4h = ew.copy().move_to(plane.c2p(3,1)), ew.copy().move_to(plane.c2p(3,2)), ew.copy().move_to(plane.c2p(3,3)), ew.copy().move_to(plane.c2p(3,4)), ew.copy().move_to(plane.c2p(3,5)), ew.copy().move_to(plane.c2p(3,6)), ew.copy().move_to(plane.c2p(3,7)), ew.copy().move_to(plane.c2p(3,8))
        self.add(a1, a2, p1a, p2a, p2b, a3, a4, a5, a6, p3a, p3b, p3c, p3d, a7, a8, a9, a10, a11, a12, a13, a14, p4a, p4b, p4c, p4d, p4e, p4f, p4g, p4h)

        one, two, four, eight = MathTex("1", color=c1t, font_size=fs2).next_to(plane.c2p(0,1), DOWN, buff=.3), MathTex("2", color=c1t, font_size=fs2).next_to(plane.c2p(1,1), DOWN, buff=.3), MathTex("4", color=c1t, font_size=fs2).next_to(plane.c2p(2,1), DOWN, buff=.3), MathTex("8", color=c1t, font_size=fs2).next_to(plane.c2p(3,1), DOWN, buff=.3)
        funcs = VGroup(MathTex("f(x)=2\cdot x", color=c1t, font_size=fs2), MathTex("g(x)=x^2", color=c1t, font_size=fs2), MathTex("h(x)=2^x", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(cords, DOWN, buff=0.6)

        # Action Sequence
        with self.voiceover(
            text = self.translate("Func_6_1.1I2q.voiceover")
        ) as tracker:

            self.wait_until_bookmark("one_in")
            self.play(Write(one), run_time=0.5)

            self.wait_until_bookmark("two_in")
            self.play(Write(two), run_time=0.5)

            self.wait_until_bookmark("four_in")
            self.play(Write(four), run_time=0.5)

            self.wait_until_bookmark("eight_in")
            self.play(Write(eight), run_time=0.5)

            self.wait_until_bookmark("f_in")
            self.play(Write(funcs[0]), run_time=0.5)

            self.wait_until_bookmark("g_in")
            self.play(Write(funcs[1]), run_time=0.5)

            self.wait_until_bookmark("h_in")
            self.play(Write(funcs[2]), run_time=0.5)

        self.wait(4)


class Func_6_1_I_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_1.1I1q.main.exponential-functions"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)


        ew = ImageMobject(assets_folder / "img" / "exponential_woman.png")
        ew = ew.scale(0.35/ew.get_width())

        cords = self.add_cords([0, 3, 1], [0, 8, 1], x_ticks = [0,1,2,3], y_ticks=[2,4,6,8]).shift(DOWN*0.6)
        plane=cords[0]

        plot = plane.plot(lambda x: 2**x, color=BLUE)

        a1, a2 = Arrow(plane.c2p(0,1), plane.c2p(1,1), color=c1t, stroke_width=3), Arrow(plane.c2p(0,1), plane.c2p(1,2), color=c1t, stroke_width=3)
        p1a = ew.copy().move_to(plane.c2p(0,1))
        p2a, p2b = ew.copy().move_to(plane.c2p(1,1)), ew.copy().move_to(plane.c2p(1,2))
        a3, a4, a5, a6 = Arrow(plane.c2p(1,1), plane.c2p(2,1), color=c1t, stroke_width=3), Arrow(plane.c2p(1,1), plane.c2p(2,2), color=c1t, stroke_width=3), Arrow(plane.c2p(1,2), plane.c2p(2,3), color=c1t, stroke_width=3), Arrow(plane.c2p(1,2), plane.c2p(2,4), color=c1t, stroke_width=3)
        p3a, p3b, p3c, p3d = ew.copy().move_to(plane.c2p(2,1)), ew.copy().move_to(plane.c2p(2,2)), ew.copy().move_to(plane.c2p(2,3)), ew.copy().move_to(plane.c2p(2,4))
        a7, a8, a9, a10, a11, a12, a13, a14 = Arrow(plane.c2p(2,1), plane.c2p(3,1), color=c1t, stroke_width=3), Arrow(plane.c2p(2,1), plane.c2p(3,2), color=c1t, stroke_width=3), Arrow(plane.c2p(2,2), plane.c2p(3,3), color=c1t, stroke_width=3), Arrow(plane.c2p(2,2), plane.c2p(3,4), color=c1t, stroke_width=3), Arrow(plane.c2p(2,3), plane.c2p(3,5), color=c1t, stroke_width=3), Arrow(plane.c2p(2,3), plane.c2p(3,6), color=c1t, stroke_width=3), Arrow(plane.c2p(2,4), plane.c2p(3,7), color=c1t, stroke_width=3), Arrow(plane.c2p(2,4), plane.c2p(3,8), color=c1t, stroke_width=3)
        p4a, p4b, p4c, p4d, p4e, p4f, p4g, p4h = ew.copy().move_to(plane.c2p(3,1)), ew.copy().move_to(plane.c2p(3,2)), ew.copy().move_to(plane.c2p(3,3)), ew.copy().move_to(plane.c2p(3,4)), ew.copy().move_to(plane.c2p(3,5)), ew.copy().move_to(plane.c2p(3,6)), ew.copy().move_to(plane.c2p(3,7)), ew.copy().move_to(plane.c2p(3,8))
        self.add(a1, a2, p1a, p2a, p2b, a3, a4, a5, a6, p3a, p3b, p3c, p3d, a7, a8, a9, a10, a11, a12, a13, a14, p4a, p4b, p4c, p4d, p4e, p4f, p4g, p4h)

        one, two, four, eight = MathTex("1", color=c1t, font_size=fs2).next_to(plane.c2p(0,1), DOWN, buff=.3), MathTex("2", color=c1t, font_size=fs2).next_to(plane.c2p(1,1), DOWN, buff=.3), MathTex("4", color=c1t, font_size=fs2).next_to(plane.c2p(2,1), DOWN, buff=.3), MathTex("8", color=c1t, font_size=fs2).next_to(plane.c2p(3,1), DOWN, buff=.3)
        h = MathTex("h(x)=2^x", color=GREEN, font_size=fs2).next_to(cords, DOWN, buff=0.2)
        h_vals = VGroup(MathTex("h(0)=2^0=1", color=c1t, font_size=fs3), MathTex("h(1)=2^1=2", color=c1t, font_size=fs3), MathTex("h(2)=2^2=4", color=c1t, font_size=fs3), MathTex("h(3)=2^3=8", color=c1t, font_size=fs3)).arrange(DOWN, buff=.1, aligned_edge=LEFT).next_to(h, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
            text = self.translate("Func_6_1.1I2q.answer.incorrect")+"<bookmark mark=\"h\"/>\n"+self.translate("Func_6_1.1I2q.answer.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("h")
            self.play(Write(h), run_time=0.5)

            self.wait_until_bookmark("h_0")
            self.play(Write(h_vals[0]), run_time=0.5)

            self.wait_until_bookmark("h_1")
            self.play(Write(h_vals[1]), run_time=0.5)

            self.wait_until_bookmark("h_2")
            self.play(Write(h_vals[2]), run_time=0.5)

            self.wait_until_bookmark("h_3")
            self.play(Write(h_vals[3]), run_time=0.5)

            self.wait_until_bookmark("cords_in")
            self.play(Write(cords), run_time=0.5)

            self.wait_until_bookmark("plot_in")
            self.add_pencil_sound(1)
            self.play(Write(plot), run_time=1)
            self.play(FadeOut(a1), FadeOut(a2), FadeOut(a3), FadeOut(a4), FadeOut(a5), FadeOut(a6), FadeOut(a7), FadeOut(a8), FadeOut(a9), FadeOut(a10), FadeOut(a11), FadeOut(a12), FadeOut(a13), FadeOut(a14), FadeOut(p1a), FadeOut(p2a), FadeOut(p2b), FadeOut(p3a), FadeOut(p3b), FadeOut(p3c), FadeOut(p3d), FadeOut(p4a), FadeOut(p4b), FadeOut(p4c), FadeOut(p4d), FadeOut(p4e), FadeOut(p4f), FadeOut(p4g), FadeOut(p4h), run_time=0.5)

        self.wait(4)


class Func_6_1_I_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_1.1I1q.main.exponential-functions"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)


        ew = ImageMobject(assets_folder / "img" / "exponential_woman.png")
        ew = ew.scale(0.35/ew.get_width())

        cords = self.add_cords([0, 3, 1], [0, 8, 1], x_ticks = [0,1,2,3], y_ticks=[2,4,6,8]).shift(DOWN*0.6)
        plane=cords[0]

        plot = plane.plot(lambda x: 2**x, color=BLUE)

        a1, a2 = Arrow(plane.c2p(0,1), plane.c2p(1,1), color=c1t, stroke_width=3), Arrow(plane.c2p(0,1), plane.c2p(1,2), color=c1t, stroke_width=3)
        p1a = ew.copy().move_to(plane.c2p(0,1))
        p2a, p2b = ew.copy().move_to(plane.c2p(1,1)), ew.copy().move_to(plane.c2p(1,2))
        a3, a4, a5, a6 = Arrow(plane.c2p(1,1), plane.c2p(2,1), color=c1t, stroke_width=3), Arrow(plane.c2p(1,1), plane.c2p(2,2), color=c1t, stroke_width=3), Arrow(plane.c2p(1,2), plane.c2p(2,3), color=c1t, stroke_width=3), Arrow(plane.c2p(1,2), plane.c2p(2,4), color=c1t, stroke_width=3)
        p3a, p3b, p3c, p3d = ew.copy().move_to(plane.c2p(2,1)), ew.copy().move_to(plane.c2p(2,2)), ew.copy().move_to(plane.c2p(2,3)), ew.copy().move_to(plane.c2p(2,4))
        a7, a8, a9, a10, a11, a12, a13, a14 = Arrow(plane.c2p(2,1), plane.c2p(3,1), color=c1t, stroke_width=3), Arrow(plane.c2p(2,1), plane.c2p(3,2), color=c1t, stroke_width=3), Arrow(plane.c2p(2,2), plane.c2p(3,3), color=c1t, stroke_width=3), Arrow(plane.c2p(2,2), plane.c2p(3,4), color=c1t, stroke_width=3), Arrow(plane.c2p(2,3), plane.c2p(3,5), color=c1t, stroke_width=3), Arrow(plane.c2p(2,3), plane.c2p(3,6), color=c1t, stroke_width=3), Arrow(plane.c2p(2,4), plane.c2p(3,7), color=c1t, stroke_width=3), Arrow(plane.c2p(2,4), plane.c2p(3,8), color=c1t, stroke_width=3)
        p4a, p4b, p4c, p4d, p4e, p4f, p4g, p4h = ew.copy().move_to(plane.c2p(3,1)), ew.copy().move_to(plane.c2p(3,2)), ew.copy().move_to(plane.c2p(3,3)), ew.copy().move_to(plane.c2p(3,4)), ew.copy().move_to(plane.c2p(3,5)), ew.copy().move_to(plane.c2p(3,6)), ew.copy().move_to(plane.c2p(3,7)), ew.copy().move_to(plane.c2p(3,8))
        self.add(a1, a2, p1a, p2a, p2b, a3, a4, a5, a6, p3a, p3b, p3c, p3d, a7, a8, a9, a10, a11, a12, a13, a14, p4a, p4b, p4c, p4d, p4e, p4f, p4g, p4h)

        one, two, four, eight = MathTex("1", color=c1t, font_size=fs2).next_to(plane.c2p(0,1), DOWN, buff=.3), MathTex("2", color=c1t, font_size=fs2).next_to(plane.c2p(1,1), DOWN, buff=.3), MathTex("4", color=c1t, font_size=fs2).next_to(plane.c2p(2,1), DOWN, buff=.3), MathTex("8", color=c1t, font_size=fs2).next_to(plane.c2p(3,1), DOWN, buff=.3)
        h = MathTex("h(x)=2^x", color=GREEN, font_size=fs2).next_to(cords, DOWN, buff=0.2)
        h_vals = VGroup(MathTex("h(0)=2^0=1", color=c1t, font_size=fs3), MathTex("h(1)=2^1=2", color=c1t, font_size=fs3), MathTex("h(2)=2^2=4", color=c1t, font_size=fs3), MathTex("h(3)=2^3=8", color=c1t, font_size=fs3)).arrange(DOWN, buff=.1, aligned_edge=LEFT).next_to(h, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
            text = self.translate("Func_6_1.1I2q.answer.incorrect")+"<bookmark mark=\"h\"/>\n"+self.translate("Func_6_1.1I2q.answer.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("h")
            self.play(Write(h), run_time=0.5)

            self.wait_until_bookmark("h_0")
            self.play(Write(h_vals[0]), run_time=0.5)

            self.wait_until_bookmark("h_1")
            self.play(Write(h_vals[1]), run_time=0.5)

            self.wait_until_bookmark("h_2")
            self.play(Write(h_vals[2]), run_time=0.5)

            self.wait_until_bookmark("h_3")
            self.play(Write(h_vals[3]), run_time=0.5)

            self.wait_until_bookmark("cords_in")
            self.play(Write(cords), run_time=0.5)

            self.wait_until_bookmark("plot_in")
            self.add_pencil_sound(1)
            self.play(Write(plot), run_time=1)
            self.play(FadeOut(a1), FadeOut(a2), FadeOut(a3), FadeOut(a4), FadeOut(a5), FadeOut(a6), FadeOut(a7), FadeOut(a8), FadeOut(a9), FadeOut(a10), FadeOut(a11), FadeOut(a12), FadeOut(a13), FadeOut(a14), FadeOut(p1a), FadeOut(p2a), FadeOut(p2b), FadeOut(p3a), FadeOut(p3b), FadeOut(p3c), FadeOut(p3d), FadeOut(p4a), FadeOut(p4b), FadeOut(p4c), FadeOut(p4d), FadeOut(p4e), FadeOut(p4f), FadeOut(p4g), FadeOut(p4h), run_time=0.5)

        self.wait(4)


class Func_6_1_I_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_1.1I1q.main.exponential-functions"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)


        ew = ImageMobject(assets_folder / "img" / "exponential_woman.png")
        ew = ew.scale(0.35/ew.get_width())

        cords = self.add_cords([0, 3, 1], [0, 8, 1], x_ticks = [0,1,2,3], y_ticks=[2,4,6,8]).shift(DOWN*0.6)
        plane=cords[0]

        plot = plane.plot(lambda x: 2**x, color=BLUE)

        a1, a2 = Arrow(plane.c2p(0,1), plane.c2p(1,1), color=c1t, stroke_width=3), Arrow(plane.c2p(0,1), plane.c2p(1,2), color=c1t, stroke_width=3)
        p1a = ew.copy().move_to(plane.c2p(0,1))
        p2a, p2b = ew.copy().move_to(plane.c2p(1,1)), ew.copy().move_to(plane.c2p(1,2))
        a3, a4, a5, a6 = Arrow(plane.c2p(1,1), plane.c2p(2,1), color=c1t, stroke_width=3), Arrow(plane.c2p(1,1), plane.c2p(2,2), color=c1t, stroke_width=3), Arrow(plane.c2p(1,2), plane.c2p(2,3), color=c1t, stroke_width=3), Arrow(plane.c2p(1,2), plane.c2p(2,4), color=c1t, stroke_width=3)
        p3a, p3b, p3c, p3d = ew.copy().move_to(plane.c2p(2,1)), ew.copy().move_to(plane.c2p(2,2)), ew.copy().move_to(plane.c2p(2,3)), ew.copy().move_to(plane.c2p(2,4))
        a7, a8, a9, a10, a11, a12, a13, a14 = Arrow(plane.c2p(2,1), plane.c2p(3,1), color=c1t, stroke_width=3), Arrow(plane.c2p(2,1), plane.c2p(3,2), color=c1t, stroke_width=3), Arrow(plane.c2p(2,2), plane.c2p(3,3), color=c1t, stroke_width=3), Arrow(plane.c2p(2,2), plane.c2p(3,4), color=c1t, stroke_width=3), Arrow(plane.c2p(2,3), plane.c2p(3,5), color=c1t, stroke_width=3), Arrow(plane.c2p(2,3), plane.c2p(3,6), color=c1t, stroke_width=3), Arrow(plane.c2p(2,4), plane.c2p(3,7), color=c1t, stroke_width=3), Arrow(plane.c2p(2,4), plane.c2p(3,8), color=c1t, stroke_width=3)
        p4a, p4b, p4c, p4d, p4e, p4f, p4g, p4h = ew.copy().move_to(plane.c2p(3,1)), ew.copy().move_to(plane.c2p(3,2)), ew.copy().move_to(plane.c2p(3,3)), ew.copy().move_to(plane.c2p(3,4)), ew.copy().move_to(plane.c2p(3,5)), ew.copy().move_to(plane.c2p(3,6)), ew.copy().move_to(plane.c2p(3,7)), ew.copy().move_to(plane.c2p(3,8))
        self.add(a1, a2, p1a, p2a, p2b, a3, a4, a5, a6, p3a, p3b, p3c, p3d, a7, a8, a9, a10, a11, a12, a13, a14, p4a, p4b, p4c, p4d, p4e, p4f, p4g, p4h)

        one, two, four, eight = MathTex("1", color=c1t, font_size=fs2).next_to(plane.c2p(0,1), DOWN, buff=.3), MathTex("2", color=c1t, font_size=fs2).next_to(plane.c2p(1,1), DOWN, buff=.3), MathTex("4", color=c1t, font_size=fs2).next_to(plane.c2p(2,1), DOWN, buff=.3), MathTex("8", color=c1t, font_size=fs2).next_to(plane.c2p(3,1), DOWN, buff=.3)
        h = MathTex("h(x)=2^x", color=GREEN, font_size=fs2).next_to(cords, DOWN, buff=0.2)
        h_vals = VGroup(MathTex("h(0)=2^0=1", color=c1t, font_size=fs3), MathTex("h(1)=2^1=2", color=c1t, font_size=fs3), MathTex("h(2)=2^2=4", color=c1t, font_size=fs3), MathTex("h(3)=2^3=8", color=c1t, font_size=fs3)).arrange(DOWN, buff=.1, aligned_edge=LEFT).next_to(h, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
            text = self.translate("Func_6_1.1I2q.answer.correct")+"<bookmark mark=\"h\"/>\n"+self.translate("Func_6_1.1I2q.answer.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("h")
            self.play(Write(h), run_time=0.5)

            self.wait_until_bookmark("h_0")
            self.play(Write(h_vals[0]), run_time=0.5)

            self.wait_until_bookmark("h_1")
            self.play(Write(h_vals[1]), run_time=0.5)

            self.wait_until_bookmark("h_2")
            self.play(Write(h_vals[2]), run_time=0.5)

            self.wait_until_bookmark("h_3")
            self.play(Write(h_vals[3]), run_time=0.5)

            self.wait_until_bookmark("cords_in")
            self.play(Write(cords), run_time=0.5)

            self.wait_until_bookmark("plot_in")
            self.add_pencil_sound(1)
            self.play(Write(plot), run_time=1)
            self.play(FadeOut(a1), FadeOut(a2), FadeOut(a3), FadeOut(a4), FadeOut(a5), FadeOut(a6), FadeOut(a7), FadeOut(a8), FadeOut(a9), FadeOut(a10), FadeOut(a11), FadeOut(a12), FadeOut(a13), FadeOut(a14), FadeOut(p1a), FadeOut(p2a), FadeOut(p2b), FadeOut(p3a), FadeOut(p3b), FadeOut(p3c), FadeOut(p3d), FadeOut(p4a), FadeOut(p4b), FadeOut(p4c), FadeOut(p4d), FadeOut(p4e), FadeOut(p4f), FadeOut(p4g), FadeOut(p4h), run_time=0.5)

        self.wait(4)

#####################################
#####################################
class Func_6_1_I_2_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_1.1I1q.main.exponential-functions"))

        cords = self.add_cords([-3, 3, 1], [-8, 8, 2], x_ticks = [-3,-2,-1,1,2,3], y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
        plane=cords[0]
        self.add(cords)

        xo,yo,_ = plane.c2p(0,0)
        cursor = AltCursor(idle=True, x=xo, y=yo)
        self.add(cursor)

        plot_1 = plane.plot(lambda x: 2**x, color=BLUE)
        plot_2 = plane.plot(lambda x: 2*x, color=GREEN)
        plot_3 = plane.plot(lambda x: 0.5**x, color=PURPLE)
        
        e_1, e_2, e_3 = self.translate("Func_6_1.1I21.e1"), self.translate("Func_6_1.1I21.e2"), self.translate("Func_6_1.1I21.e3")
        explainers = VGroup(Tex(e_1, color=BLUE, font_size=fs4), Tex(e_2, color=GREEN, font_size=fs4), Tex(e_3, color=PURPLE, font_size=fs4)).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(cords, DOWN, buff=0.6)

        # Action Sequence
        with self.voiceover(
            text = self.translate("Func_6_1.1I21.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("plot_1")
            self.add_pencil_sound(1)
            self.play(Write(plot_1), run_time=1)
            cursor.idle=False
            x,y,_ = explainers[0].get_center()+0.4*DOWN
            self.play(Write(explainers[0]), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plot_2")
            self.add_pencil_sound(1)
            self.play(Write(plot_2), run_time=1)
            x,y,_ = explainers[1].get_center()+0.4*DOWN
            self.play(Write(explainers[1]), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plot_3")
            self.add_pencil_sound(1)
            self.play(Write(plot_3), run_time=1)
            x,y,_ = explainers[2].get_center()+0.4*DOWN
            self.play(Write(explainers[2]), CursorMoveTo(cursor,x,y), run_time=0.5)
            cursor.idle=True

        self.wait(4)


#####################################
#####################################
class Func_6_1_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_1.1I3.main.title"))

        chicken = ImageMobject(assets_folder / "img" / "chicken.png")
        chicken = chicken.scale(1.5/chicken.get_width()).move_to([-4, -1, 0])
        two_chickens = MathTex("2\\times", color=c1t).next_to(chicken, LEFT, buff=0.4).shift(RIGHT*5)

        day = self.translate("Func_6_1.1I3.main.day")
        egg = ImageMobject(assets_folder / "img" / "egg.png")
        egg = egg.scale(1.5/egg.get_width()).next_to(chicken, DOWN, buff=0.6).shift(0.2*LEFT)
        one_egg = Tex("$1/$"+day, color=c1t).next_to(egg, LEFT, buff=0.6).scale(0.8)
        one_egg.shift((two_chickens.get_left()-one_egg.get_left())*np.array([1,0,0]))

        farmer_male = ImageMobject(assets_folder / "img" / "farmer_male.png")
        farmer_male = farmer_male.scale(2/farmer_male.get_width()).move_to([-5.6, 1, 0])
        tom = Tex("Tom", color=c1t).next_to(farmer_male, RIGHT, buff=0.2)

        calendar = ImageMobject(assets_folder / "img" / "calendar.png")
        calendar = calendar.scale(2.5/calendar.get_width()).move_to([-5, 1, 0])


        cords = self.add_cords([0,8,1], [0,20,4], x_ticks=[1,2,3,4,5,6,7], y_ticks=[4,8,12,16,20])
        plane = cords[0]
        
        f_eggs = lambda x: 2*x
        f_tex_eggs = MathTex("f","(x)", "=", "2","x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        lin_growth = VGroup(MathTex("\Downarrow", color=c1t, font_size=fs2), Tex(self.translate("Func_6_1.1I3.main.title"), color=c1t, font_size=fs2)).arrange(DOWN, buff=.2).next_to(f_tex_eggs, DOWN, buff=0.4)
        g_eggs = plane.plot(f_eggs, color=BLUE)


        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_1.1I3.main.voiceover")
    ) as tracker:
            
            self.wait_until_bookmark("tom_in_1")
            self.add_shift_sound(0.5)
            self.play(farmer_male.animate.shift(5*RIGHT), tom.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("chicken_in_1")
            self.add_shift_sound(0.5)
            self.play(chicken.animate.shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("two_chickens")
            self.play(Write(two_chickens))

            self.wait_until_bookmark("one_egg_per_day")
            self.add_shift_sound(0.5)
            self.play(egg.animate.shift(RIGHT*5), run_time=0.5)
            self.play(Write(one_egg), run_time=0.5)

            self.wait_until_bookmark("calendar")
            self.add_shift_sound(0.5)
            self.play(calendar.animate.shift(RIGHT*5), farmer_male.animate.shift(5*RIGHT), tom.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("cords")
            self.add_shift_sound(0.5)
            self.play(calendar.animate.shift(RIGHT*5), run_time=0.5)
            self.play(Write(cords))

            self.wait_until_bookmark("one_day")
            cursor.idle=False
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("two_eggs")
            x,y,_ = plane.c2p(1,2)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cc_two_eggs = cursor.copy().clear_updaters()
            self.add(cc_two_eggs)

            self.wait_until_bookmark("two_days")
            x,y,_ = plane.c2p(2,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("four_eggs")
            x,y,_ = plane.c2p(2,4)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cc_four_eggs = cursor.copy().clear_updaters()
            self.add(cc_four_eggs)

            self.wait_until_bookmark("three_days")
            x,y,_ = plane.c2p(3,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("six_eggs")
            x,y,_ = plane.c2p(3,6)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cc_six_eggs = cursor.copy().clear_updaters()
            self.add(cc_six_eggs)

            self.wait_until_bookmark("plot")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(7).add_updater(lambda m, dt: m.move_to(g_eggs.get_end())))
            cc_two_eggs._start_fading(2)
            cc_four_eggs._start_fading(2)
            cc_six_eggs._start_fading(2)
            cursor.idle=True
            self.add_pencil_sound(5.5)
            self.play(Create(g_eggs), run_time=5)

            self.wait_until_bookmark("func")
            cursor.idle=False
            x,y,_ = f_tex_eggs[0].get_center()+0.4*DOWN
            self.add_shift_sound(0.5)
            self.play(egg.animate.shift(5*RIGHT), one_egg.animate.shift(5*RIGHT), chicken.animate.shift(5*RIGHT), two_chickens.animate.shift(5*RIGHT), CursorMoveTo(cursor,x,y), Write(f_tex_eggs), run_time=0.5)

            self.wait_until_bookmark("fx")
            x,y,_ = f_tex_eggs[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("two_times")
            x,y,_ = f_tex_eggs[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f_tex_eggs[4].get_center()+0.4*DOWN 
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("linear")
            cursor.idle=False
            x,y,_ = lin_growth[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(lin_growth), run_time=0.5)
            cursor.idle=True


        self.wait(4)


#####################################
#####################################
class Func_6_1_I_4(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_1.1I4.main.title"))

        chicken = ImageMobject(assets_folder / "img" / "chicken.png")
        chicken = chicken.scale(1.5/chicken.get_width()).move_to([-4, -1, 0])
        two_chickens = MathTex(self.translate("Func_6_1.1I4.main.two_chickens"), color=c1t).next_to(chicken, LEFT, buff=1).shift(RIGHT*5)

        egg = ImageMobject(assets_folder / "img" / "egg.png")
        egg = egg.scale(1.5/egg.get_width()).next_to(chicken, DOWN, buff=0.6).shift(0.2*LEFT)
        one_egg = Tex(self.translate("Func_6_1.1I4.main.one_egg"), color=c1t).next_to(egg, LEFT, buff=0.2).scale(0.8)
        one_egg.shift((two_chickens.get_left()-one_egg.get_left())*np.array([1,0,0]))

        farmer_female = ImageMobject(assets_folder / "img" / "farmer_female.png")
        farmer_female = farmer_female.scale(2/farmer_female.get_width()).move_to([-5.6, 1, 0])
        Sophie = Tex("Sophie", color=c1t).next_to(farmer_female, RIGHT, buff=0.2)

        cords = self.add_cords([1,6,1], [0,64,8], x_ticks=[1,2,3,4,5], y_ticks=[16,32, 48])
        plane = cords[0]
        x,y,_ = plane.c2p(0,0)
        
        f_eggs = lambda x: 2**x
        f_tex_eggs = MathTex("f","(x)", "=", "2","^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        exp_growth = Tex(self.translate("Func_6_1.1I4.main.title"), color=c1t, font_size=fs2).next_to(f_tex_eggs, DOWN, buff=0.8)
        g_eggs = plane.plot(f_eggs, color=BLUE)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)

        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_1.1I4.main.voiceover")
        , subcaption='NOT AVAILABLE DUE TO BUG') as tracker:
            
            self.wait_until_bookmark("Sophie_in_1")
            self.add_shift_sound(0.5)
            self.play(farmer_female.animate.shift(5*RIGHT), Sophie.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("chicken_in_1")
            self.add_shift_sound(0.5)
            self.play(chicken.animate.shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("two_chickens_1")
            self.play(Write(two_chickens))

            self.wait_until_bookmark("one_egg_per_week")
            self.add_shift_sound(0.5)
            self.play(egg.animate.shift(RIGHT*5), run_time=0.5)
            self.play(Write(one_egg), run_time=0.5)

            self.wait_until_bookmark("graph")
            self.add_shift_sound(0.5)
            self.play(farmer_female.animate.shift(5*RIGHT), Sophie.animate.shift(5*RIGHT), run_time=0.5)
            self.play(Write(cords))

            self.wait_until_bookmark("one_week")
            cursor.idle=False
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("two_chickens")
            x,y,_ = plane.c2p(1,2)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cc_two_chickens = cursor.copy().clear_updaters()
            self.add(cc_two_chickens)

            self.wait_until_bookmark("two_weeks")
            x,y,_ = plane.c2p(2,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("four_chickens")
            x,y,_ = plane.c2p(2,4)
            four_chickens = MathTex("4\\times", color=c1t).next_to(chicken, LEFT, buff=0.6)
            self.play(TransformMatchingTex(two_chickens, four_chickens), CursorMoveTo(cursor,x,y), run_time=0.3)
            cc_four_chickens = cursor.copy().clear_updaters()
            self.add(cc_four_chickens)

            self.wait_until_bookmark("three_weeks")
            x,y,_ = plane.c2p(3,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("eight_chickens")
            x,y,_ = plane.c2p(3,8)
            eight_chickens = MathTex("8\\times", color=c1t).next_to(chicken, LEFT, buff=0.6)
            self.play(TransformMatchingTex(four_chickens, eight_chickens), CursorMoveTo(cursor,x,y), run_time=0.3)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cc_eight_chickens = cursor.copy().clear_updaters()
            self.add(cc_eight_chickens)

            self.wait_until_bookmark("four_weeks")
            x,y,_ = plane.c2p(4,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sixteen_chickens")
            x,y,_ = plane.c2p(4,16)
            sixteen_chickens = MathTex("16\\times", color=c1t).next_to(chicken, LEFT, buff=0.6)
            self.play(TransformMatchingTex(eight_chickens, sixteen_chickens), CursorMoveTo(cursor,x,y), run_time=0.3)
            cc_sixteen_chickens = cursor.copy().clear_updaters()
            self.add(cc_sixteen_chickens)

            self.wait_until_bookmark("plot")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cc_func = cursor.copy()._start_fading(7).add_updater(lambda m, dt: m.move_to(g_eggs.get_end()))
            chicken_counter = DecimalNumber(16, color=c1t, num_decimal_places=0).add_updater(lambda m: m.set_value(max(16,plane.p2c(g_eggs.get_end())[1])))
            self.remove(sixteen_chickens)
            sixteen_chickens = VGroup(chicken_counter, MathTex("\\times", color=c1t)).arrange(RIGHT, buff=0.2).next_to(chicken, LEFT, buff=0.6)
            self.add(cc_func, sixteen_chickens, chicken_counter)
            cc_two_chickens._start_fading(1)
            cc_four_chickens._start_fading(2)
            cc_eight_chickens._start_fading(3.5)
            cc_sixteen_chickens._start_fading(5)
            self.add_pencil_sound(10, volume=0.25)
            self.play(Create(g_eggs), run_time=10)
            cursor.idle=True

            self.wait_until_bookmark("f")
            cursor.idle=False
            x,y,_ = f_tex_eggs[0].get_center()+0.4*DOWN
            self.play(egg.animate.shift(5*RIGHT), one_egg.animate.shift(5*RIGHT), chicken.animate.shift(5*RIGHT), sixteen_chickens.animate.shift(5*RIGHT), CursorMoveTo(cursor,x,y), Write(f_tex_eggs), run_time=0.5)

            self.wait_until_bookmark("fx")
            x,y,_ = f_tex_eggs[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("two")
            x,y,_ = f_tex_eggs[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("power")
            x,y,_ = f_tex_eggs[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("exponential")
            cursor.idle=False
            x,y,_ = exp_growth.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(exp_growth), run_time=0.3)
            cursor.idle=True


        self.wait(4)

#####################################
#####################################
class Func_6_1_I_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_6_1.I5.q.answer-options")),
            correctAnswerIndex=0,
            questionText=self.translate("Func_6_1.I5.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_6_1.I5.main.title"))

        sarah = ImageMobject(assets_folder / "img" / "biologist.png")
        sarah = sarah.scale(2.5/sarah.get_width()).move_to([-5, 1.4, 0])

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -1, 0])
        bacteria_double = VGroup(Tex(self.translate("Func_6_1.I5.main.bacteria_double1"), color=c1t, font_size=fs2), Tex(self.translate("Func_6_1.I5.main.bacteria_double2"), color=c1t, font_size=fs2)).arrange(DOWN, buff=0.).next_to(bacteria, DOWN, buff=0.2).shift(RIGHT*5.8)
        
        clock = ImageMobject(assets_folder / "img" / "clock.png")
        clock = clock.scale(1.5/clock.get_width()).move_to([-5, -1, 0])



        cords = self.add_cords([1,6,1], [0,64,8], x_ticks=[1,2,3,4,5], y_ticks=[16,32, 48])
        plane = cords[0]
        

        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)

        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_1.I5.main.voiceover")
         ) as tracker:
            
            self.wait_until_bookmark("sarah")
            self.play(sarah.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("bacteria")
            self.play(bacteria.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("bacteria_double")
            self.play(Write(bacteria_double))

            self.wait_until_bookmark("show_double")
            bacteria_double = bacteria.copy()
            self.play(bacteria_double.animate.shift(1.2*bacteria.get_width()*RIGHT), run_time=0.5)

            self.wait_until_bookmark("linear")
            cursor.idle=False
            x,y,_ = title.get_right()+0.4*DOWN+0.5*LEFT
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("exponential")
            cursor.idle=False
            x,y,_ = title.get_left()+0.4*DOWN+0.5*RIGHT
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
            cursor.idle=True

        self.wait(4)

class Func_6_1_I_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_1.I5.main.title"))

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -1, 0])

        
        exponential_growth1 = Tex(self.translate("Func_6_1.I5.main.eg1"), color=c1t, font_size=fs3)
        exponential_growth2 = Tex(self.translate("Func_6_1.I5.main.eg2"), color=c1t, font_size=fs3)
        exponential_growth = VGroup(exponential_growth1, exponential_growth2).arrange(DOWN, buff=0.2).next_to(bacteria, DOWN, buff=0.8).shift(5.6*RIGHT)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_1.I5.a.voiceover")
         ) as tracker:
            
            self.wait_until_bookmark("one")
            self.play(bacteria.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("two")
            bacteria_2 = bacteria.copy()
            self.play(bacteria_2.animate.shift(1.2*bacteria.get_width()*RIGHT), run_time=0.5)

            self.wait_until_bookmark("four")
            bacteria_3 = bacteria.copy()
            bacteria_4 = bacteria_2.copy()
            self.play(bacteria_3.animate.shift(1.2*bacteria.get_height()*UP), bacteria_4.animate.shift(1.2*bacteria.get_height()*UP), run_time=0.5)

            self.wait_until_bookmark("eight")
            bacteria_5 = bacteria.copy()
            bacteria_6 = bacteria_2.copy()
            bacteria_7 = bacteria_3.copy()
            bacteria_8 = bacteria_4.copy()
            self.play(bacteria_5.animate.shift(0.6*bacteria.get_height()*UP), bacteria_6.animate.shift(0.6*bacteria.get_height()*UP), bacteria_7.animate.shift(0.6*bacteria.get_height()*UP), bacteria_8.animate.shift(0.6*bacteria.get_height()*UP), run_time=0.5)

            self.wait_until_bookmark("step0")
            self.play(bacteria_2.animate.shift(5*RIGHT), bacteria_3.animate.shift(5*RIGHT), bacteria_4.animate.shift(5*RIGHT), bacteria_5.animate.shift(5*RIGHT), bacteria_6.animate.shift(5*RIGHT), bacteria_7.animate.shift(5*RIGHT), bacteria_8.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("step1")
            self.play(bacteria_2.animate.shift(5*LEFT), run_time=0.5)

            self.wait_until_bookmark("step2")
            self.play(bacteria_3.animate.shift(5*LEFT), bacteria_4.animate.shift(5*LEFT), run_time=0.5)

            self.wait_until_bookmark("step3")
            self.play(bacteria_5.animate.shift(5*LEFT), bacteria_6.animate.shift(5*LEFT), bacteria_7.animate.shift(5*LEFT), bacteria_8.animate.shift(5*LEFT), run_time=0.5)
        
            self.wait_until_bookmark("exponential")
            self.play(Write(exponential_growth))
        
        self.wait(4)



class Func_6_1_I_5_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_1.I5.main.title"))

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -1, 0])

        exponential_growth1 = Tex(self.translate("Func_6_1.I5.main.eg1"), color=c1t, font_size=fs3)
        exponential_growth2 = Tex(self.translate("Func_6_1.I5.main.eg2"), color=c1t, font_size=fs3)
        exponential_growth = VGroup(exponential_growth1, exponential_growth2).arrange(DOWN, buff=0.2).next_to(bacteria, DOWN, buff=0.8).shift(5.6*RIGHT)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_1.I5.b.voiceover")
         ) as tracker:
            
            self.wait_until_bookmark("one")
            self.play(bacteria.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("two")
            bacteria_2 = bacteria.copy()
            self.play(bacteria_2.animate.shift(1.2*bacteria.get_width()*RIGHT), run_time=0.5)

            self.wait_until_bookmark("four")
            bacteria_3 = bacteria.copy()
            bacteria_4 = bacteria_2.copy()
            self.play(bacteria_3.animate.shift(1.2*bacteria.get_height()*UP), bacteria_4.animate.shift(1.2*bacteria.get_height()*UP), run_time=0.5)

            self.wait_until_bookmark("eight")
            bacteria_5 = bacteria.copy()
            bacteria_6 = bacteria_2.copy()
            bacteria_7 = bacteria_3.copy()
            bacteria_8 = bacteria_4.copy()
            self.play(bacteria_5.animate.shift(0.6*bacteria.get_height()*UP), bacteria_6.animate.shift(0.6*bacteria.get_height()*UP), bacteria_7.animate.shift(0.6*bacteria.get_height()*UP), bacteria_8.animate.shift(0.6*bacteria.get_height()*UP), run_time=0.5)

            self.wait_until_bookmark("step0")
            self.play(bacteria_2.animate.shift(5*RIGHT), bacteria_3.animate.shift(5*RIGHT), bacteria_4.animate.shift(5*RIGHT), bacteria_5.animate.shift(5*RIGHT), bacteria_6.animate.shift(5*RIGHT), bacteria_7.animate.shift(5*RIGHT), bacteria_8.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("step1")
            self.play(bacteria_2.animate.shift(5*LEFT), run_time=0.5)

            self.wait_until_bookmark("step2")
            self.play(bacteria_3.animate.shift(5*LEFT), bacteria_4.animate.shift(5*LEFT), run_time=0.5)

            self.wait_until_bookmark("step3")
            self.play(bacteria_5.animate.shift(5*LEFT), bacteria_6.animate.shift(5*LEFT), bacteria_7.animate.shift(5*LEFT), bacteria_8.animate.shift(5*LEFT), run_time=0.5)
        
            self.wait_until_bookmark("exponential")
            self.play(Write(exponential_growth))
        
        self.wait(4)


#####################################
#####################################
class Func_6_1_I_6_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$f(x)=2\\cdot x$", "$g(x)=2^x$", "$h(x)=x^2$"],
            correctAnswerIndex = 1,
            questionText=self.translate("Func_6_1.I6.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_1.I5.main.title"))

        sarah = ImageMobject(assets_folder / "img" / "biologist.png")
        sarah = sarah.scale(2.5/sarah.get_width()).move_to([-5, 1.4, 0])

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -1, 0])
        bacteria_double = VGroup(Tex(self.translate("Func_6_1.I6.q.bacteria_double_a"), color=c1t, font_size=fs2), Tex(self.translate("Func_6_1.I6.q.bacteria_double_b"), color=c1t, font_size=fs2)).arrange(DOWN, buff=0.).next_to(bacteria, DOWN, buff=0.2).shift(RIGHT*5.8)
        
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)

        self.add(cursor)

        f_tex = MathTex("f","(x)", "=", "2", "\\cdot", "x", color=c1t, font_size=fs2)
        g_tex = MathTex("g","(x)", "=", "2", "^x", color=c1t, font_size=fs2)
        h_tex = MathTex("h","(x)", "=", "x^2", color=c1t, font_size=fs2)
        funcs = VGroup(f_tex, g_tex, h_tex).arrange(DOWN, buff=0.4, aligned_edge=LEFT).shift(DOWN)

        t = Table(
            [["x", self.translate("Func_6_1.I6.q.bacteria_time")],
            ["1", f"20 {self.translate('Func_6_1.I6.q.bacteria_minutes')}"],
            ["2", f"40 {self.translate('Func_6_1.I6.q.bacteria_minutes')}"],
            ["...", "..."]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(bacteria, RIGHT, buff=0.2).shift(RIGHT*5)
        rows = t.get_rows()
        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines())


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_1.I6.q.voiceover")
         ) as tracker:
            
            self.wait_until_bookmark("sarah")
            self.play(sarah.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("bacteria")
            self.play(bacteria.animate.shift(5*RIGHT), run_time=0.5)
            self.play(Write(bacteria_double))

            self.wait_until_bookmark("table")
            self.play(Write(t_structure), Write(rows[0]), run_time=0.5)

            self.wait_until_bookmark("row_1")
            self.play(Write(rows[1]), run_time=0.5)

            self.wait_until_bookmark("row_2")
            self.play(Write(rows[2]), run_time=0.5)

            self.wait_until_bookmark("rowsss")
            self.play(Write(rows[3]), run_time=0.5)

            self.wait_until_bookmark("clean")
            self.play(sarah.animate.shift(5*RIGHT), bacteria_double.animate.shift(5*RIGHT), bacteria.animate.shift(2.5*UP), t.animate.shift(2.5*UP), run_time=0.5)

            self.wait_until_bookmark("f")
            cursor.idle=False
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            self.play(Write(f_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx")
            x,y,_ = f_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("ftwo")
            x,y,_ = f_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fxx")
            x,y,_ = f_tex[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("g")
            cursor.idle=False
            x,y,_ = g_tex[0].get_center()+0.4*DOWN
            self.play(Write(g_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gx")
            x,y,_ = g_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gtwo")
            x,y,_ = g_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gxx")
            x,y,_ = g_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("h")
            cursor.idle=False
            x,y,_ = h_tex[0].get_center()+0.4*DOWN
            self.play(Write(h_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("hx")
            x,y,_ = h_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("hxx")
            x,y,_ = h_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

        self.wait(4)

class Func_6_1_I_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_1.I6.a.title"))

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -0.4, 0])
    
        bacteria_translated = self.translate("Func_6_1.I6.b.bacteria")

        t = MathTable(
            [["x", "0", "1", "2", "3", "..."],
            [f"\\text{{{bacteria_translated}}}", "1", "2", "2\\cdot 2", "2\\cdot2\\cdot2", "..." ]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(bacteria, DOWN, buff=0.4).shift(6*RIGHT)

        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines())
        cols = t.get_columns()

        g_tex = MathTex("g","(x)", "=", "2", "^x", color=c1t, font_size=fs2).next_to(t, DOWN, buff=0.2)

        cursor = AltCursor(idle=False)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_1.I6.a.voiceover")
         ) as tracker:
            
            self.wait_until_bookmark("one")
            self.play(bacteria.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("two")
            bacteria_2 = bacteria.copy()
            self.play(bacteria_2.animate.shift(1.2*bacteria.get_width()*RIGHT), run_time=0.5)

            self.wait_until_bookmark("four")
            bacteria_3 = bacteria.copy()
            bacteria_4 = bacteria_2.copy()
            self.play(bacteria_3.animate.shift(1.2*bacteria.get_height()*UP), bacteria_4.animate.shift(1.2*bacteria.get_height()*UP),
                      run_time=0.5)

            self.wait_until_bookmark("eight")
            bacteria_5 = bacteria.copy()
            bacteria_6 = bacteria_2.copy()
            bacteria_7 = bacteria_3.copy()
            bacteria_8 = bacteria_4.copy()
            self.play(bacteria_5.animate.shift(0.6*bacteria.get_height()*UP), bacteria_6.animate.shift(0.6*bacteria.get_height()*UP),
                      bacteria_7.animate.shift(0.6*bacteria.get_height()*UP), bacteria_8.animate.shift(0.6*bacteria.get_height()*UP),
                      run_time=0.5)

            self.wait_until_bookmark("step0")
            self.play(bacteria_2.animate.shift(5*RIGHT), bacteria_3.animate.shift(5*RIGHT), bacteria_4.animate.shift(5*RIGHT),
                      bacteria_5.animate.shift(5*RIGHT), bacteria_6.animate.shift(5*RIGHT), bacteria_7.animate.shift(5*RIGHT),
                      bacteria_8.animate.shift(5*RIGHT), Write(t_structure), Write(cols[0]), Write(cols[1]), run_time=0.5)

            self.wait_until_bookmark("step1")
            self.play(bacteria_2.animate.shift(5*LEFT), Write(cols[2]), run_time=0.5)

            self.wait_until_bookmark("step2")
            self.play(bacteria_3.animate.shift(5*LEFT), Write(cols[3]), bacteria_4.animate.shift(5*LEFT), run_time=0.5)

            self.wait_until_bookmark("step3")
            self.play(bacteria_5.animate.shift(5*LEFT), Write(cols[4]), bacteria_6.animate.shift(5*LEFT), bacteria_7.animate.shift(5*LEFT),
                      bacteria_8.animate.shift(5*LEFT), run_time=0.5)
            
            self.wait_until_bookmark("exponential")
            self.add(cursor)
            x,y,_ = g_tex[0].get_center()+0.4*DOWN
            self.play(Write(g_tex), CursorMoveTo(cursor,x,y), run_time=0.3)
        
            self.wait_until_bookmark("gx")
            cursor.idle=False
            x,y,_ = g_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("gtwo")
            x,y,_ = g_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("gxx")
            x,y,_ = g_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            cursor.idle=True

        self.wait(4)

class Func_6_1_I_6_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_1.I6.a.title"))

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -0.4, 0])

        bacteria_translated = self.translate("Func_6_1.I6.b.bacteria")

        t = MathTable(
            [["x", "0", "1", "2", "3", "..."],
            [f"\\text{{{bacteria_translated}}}", "1", "2", "2\\cdot 2", "2\\cdot2\\cdot2", "..." ]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(bacteria, DOWN, buff=0.4).shift(6*RIGHT)

        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines())
        cols = t.get_columns()

        g_tex = MathTex("g","(x)", "=", "2", "^x", color=c1t, font_size=fs2).next_to(t, DOWN, buff=0.2)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=False)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_1.I6.b.voiceover")
         ) as tracker:
            
            self.wait_until_bookmark("one")
            self.play(bacteria.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("two")
            bacteria_2 = bacteria.copy()
            self.play(bacteria_2.animate.shift(1.2*bacteria.get_width()*RIGHT), run_time=0.5)

            self.wait_until_bookmark("four")
            bacteria_3 = bacteria.copy()
            bacteria_4 = bacteria_2.copy()
            self.play(bacteria_3.animate.shift(1.2*bacteria.get_height()*UP), bacteria_4.animate.shift(1.2*bacteria.get_height()*UP),
                      run_time=0.5)

            self.wait_until_bookmark("eight")
            bacteria_5 = bacteria.copy()
            bacteria_6 = bacteria_2.copy()
            bacteria_7 = bacteria_3.copy()
            bacteria_8 = bacteria_4.copy()
            self.play(bacteria_5.animate.shift(0.6*bacteria.get_height()*UP), bacteria_6.animate.shift(0.6*bacteria.get_height()*UP),
                      bacteria_7.animate.shift(0.6*bacteria.get_height()*UP), bacteria_8.animate.shift(0.6*bacteria.get_height()*UP),
                      run_time=0.5)

            self.wait_until_bookmark("step0")
            self.play(bacteria_2.animate.shift(5*RIGHT), bacteria_3.animate.shift(5*RIGHT), bacteria_4.animate.shift(5*RIGHT),
                      bacteria_5.animate.shift(5*RIGHT), bacteria_6.animate.shift(5*RIGHT), bacteria_7.animate.shift(5*RIGHT),
                      bacteria_8.animate.shift(5*RIGHT), Write(t_structure), Write(cols[0]), Write(cols[1]), run_time=0.5)

            self.wait_until_bookmark("step1")
            self.play(bacteria_2.animate.shift(5*LEFT), Write(cols[2]), run_time=0.5)

            self.wait_until_bookmark("step2")
            self.play(bacteria_3.animate.shift(5*LEFT), Write(cols[3]), bacteria_4.animate.shift(5*LEFT), run_time=0.5)

            self.wait_until_bookmark("step3")
            self.play(bacteria_5.animate.shift(5*LEFT), Write(cols[4]), bacteria_6.animate.shift(5*LEFT), bacteria_7.animate.shift(5*LEFT),
                      bacteria_8.animate.shift(5*LEFT), run_time=0.5)
            
            self.wait_until_bookmark("exponential")
            self.add(cursor)
            x,y,_ = g_tex[0].get_center()+0.4*DOWN
            self.play(Write(g_tex), CursorMoveTo(cursor,x,y), run_time=0.3)
        
            self.wait_until_bookmark("gx")
            cursor.idle=False
            x,y,_ = g_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("gtwo")
            x,y,_ = g_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("gxx")
            x,y,_ = g_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            cursor.idle=True

        self.wait(4)

class Func_6_1_I_6_c(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_1.I6.a.title"))

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -0.4, 0])
    
        bacteria_translated = self.translate("Func_6_1.I6.b.bacteria")

        t = MathTable(
            [["x", "0", "1", "2", "3", "..."],
            [f"\\text{{{bacteria_translated}}}", "1", "2", "2\\cdot 2", "2\\cdot2\\cdot2", "..." ]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(bacteria, DOWN, buff=0.4).shift(6*RIGHT)

        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines())
        cols = t.get_columns()

        g_tex = MathTex("g","(x)", "=", "2", "^x", color=c1t, font_size=fs2).next_to(t, DOWN, buff=0.2)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=False)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_1.I6.a.voiceover")
         ) as tracker:
            
            self.wait_until_bookmark("one")
            self.play(bacteria.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("two")
            bacteria_2 = bacteria.copy()
            self.play(bacteria_2.animate.shift(1.2*bacteria.get_width()*RIGHT), run_time=0.5)

            self.wait_until_bookmark("four")
            bacteria_3 = bacteria.copy()
            bacteria_4 = bacteria_2.copy()
            self.play(bacteria_3.animate.shift(1.2*bacteria.get_height()*UP), bacteria_4.animate.shift(1.2*bacteria.get_height()*UP),
                      run_time=0.5)

            self.wait_until_bookmark("eight")
            bacteria_5 = bacteria.copy()
            bacteria_6 = bacteria_2.copy()
            bacteria_7 = bacteria_3.copy()
            bacteria_8 = bacteria_4.copy()
            self.play(bacteria_5.animate.shift(0.6*bacteria.get_height()*UP), bacteria_6.animate.shift(0.6*bacteria.get_height()*UP),
                      bacteria_7.animate.shift(0.6*bacteria.get_height()*UP), bacteria_8.animate.shift(0.6*bacteria.get_height()*UP),
                      run_time=0.5)

            self.wait_until_bookmark("step0")
            self.play(bacteria_2.animate.shift(5*RIGHT), bacteria_3.animate.shift(5*RIGHT), bacteria_4.animate.shift(5*RIGHT),
                      bacteria_5.animate.shift(5*RIGHT), bacteria_6.animate.shift(5*RIGHT), bacteria_7.animate.shift(5*RIGHT),
                      bacteria_8.animate.shift(5*RIGHT), Write(t_structure), Write(cols[0]), Write(cols[1]), run_time=0.5)

            self.wait_until_bookmark("step1")
            self.play(bacteria_2.animate.shift(5*LEFT), Write(cols[2]), run_time=0.5)

            self.wait_until_bookmark("step2")
            self.play(bacteria_3.animate.shift(5*LEFT), Write(cols[3]), bacteria_4.animate.shift(5*LEFT), run_time=0.5)

            self.wait_until_bookmark("step3")
            self.play(bacteria_5.animate.shift(5*LEFT), Write(cols[4]), bacteria_6.animate.shift(5*LEFT), bacteria_7.animate.shift(5*LEFT),
                      bacteria_8.animate.shift(5*LEFT), run_time=0.5)
            
            self.wait_until_bookmark("exponential")
            self.add(cursor)
            x,y,_ = g_tex[0].get_center()+0.4*DOWN
            self.play(Write(g_tex), CursorMoveTo(cursor,x,y), run_time=0.3)
        
            self.wait_until_bookmark("gx")
            cursor.idle=False
            x,y,_ = g_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("gtwo")
            x,y,_ = g_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("gxx")
            x,y,_ = g_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            cursor.idle=True

        self.wait(4)


#####################################
#####################################
class Func_6_1_I_7_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_6_1.I7.q.answer-options")),
            correctAnswerIndex=1,
            questionText=self.translate("Func_6_1.I7.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_1.I5.main.title"))

        sarah = ImageMobject(assets_folder / "img" / "biologist.png")
        sarah = sarah.scale(2.5/sarah.get_width()).move_to([-5, 1.4, 0])

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -1, 0])
        double_t1, double_t2 = self.translate("Func_6_1.I7.a.double-t1"), self.translate("Func_6_1.I7.a.double-t2")
        bacteria_double = VGroup(Tex(double_t1, color=c1t, font_size=fs2), Tex(double_t2, color=c1t, font_size=fs2)).arrange(DOWN, buff=0.).next_to(bacteria, DOWN, buff=0.2).shift(RIGHT*5.8)
        
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)

        self.add(cursor)

        cords = self.add_cords([0, 6, 1], [0, 64, 8], x_ticks=[2,4,6], y_ticks=[16,32,48,64])
        plane = cords[0]
        lin_growth = Tex(self.translate("Func_6_1.I7.q.lin-growth"), color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        g_tex = MathTex("g","(x)", "=", "2", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        
        f = lambda x:3*x
        g = lambda x:2**x
        h = lambda x:10*x**0.5

        f_plot = plane.plot(f, color=BLUE)
        g_plot = plane.plot(g, color=GREEN)
        h_plot = plane.plot(h, color=PURPLE)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_1.I7.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("g")
            x,y,_ = g_tex[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(g_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gx")
            x,y,_ = g_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gtwo")
            x,y,_ = g_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gxx")
            x,y,_ = g_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), run_time=0.3)


            self.wait_until_bookmark("blue")
            x,y,_ = f_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(1).add_updater(lambda m: m.move_to(f_plot.get_end())))
            self.add_pencil_sound(.5)
            self.play(Create(f_plot), run_time=0.5)

            self.wait_until_bookmark("green")
            x,y,_ = g_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(1).add_updater(lambda m: m.move_to(g_plot.get_end())))
            self.add_pencil_sound(.5)
            self.play(Create(g_plot), run_time=0.5)

            self.wait_until_bookmark("purple")
            x,y,_ = h_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(1).add_updater(lambda m: m.move_to(h_plot.get_end())))
            self.add_pencil_sound(.5)
            self.play(Create(h_plot), run_time=0.5)

        self.wait(4)


class Func_6_1_I_7_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_1.I5.main.title"))

        sarah = ImageMobject(assets_folder / "img" / "biologist.png")
        sarah = sarah.scale(2.5/sarah.get_width()).move_to([-5, 1.4, 0])

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -1, 0])
        double_t1, double_t2 = self.translate("Func_6_1.I7.a.double-t1"), self.translate("Func_6_1.I7.a.double-t2")
        bacteria_double = VGroup(Tex(double_t1, color=c1t, font_size=fs2), Tex(double_t2, color=c1t, font_size=fs2)).arrange(DOWN, buff=0.).next_to(bacteria, DOWN, buff=0.2).shift(RIGHT*5.8)
        
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)

        self.add(cursor)

        cords = self.add_cords([0, 6, 1], [0, 64, 8], x_ticks=[2,4,6], y_ticks=[16,32,48,64])
        plane = cords[0]
        lin_growth = Tex(self.translate("Func_6_1.I7.q.lin-growth"), color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        g_tex = MathTex("g","(x)", "=", "2", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        
        f = lambda x:3*x
        g = lambda x:2**x
        h = lambda x:10*x**0.5

        f_plot = plane.plot(f, color=BLUE)
        g_plot = plane.plot(g, color=GREEN)
        h_plot = plane.plot(h, color=PURPLE)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_1.I7.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("g")
            x,y,_ = g_tex[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(g_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gx")
            x,y,_ = g_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gtwo")
            x,y,_ = g_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gxx")
            x,y,_ = g_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), run_time=0.3)


            self.wait_until_bookmark("blue")
            x,y,_ = f_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(f_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(f_plot))

            self.wait_until_bookmark("purple")
            x,y,_ = h_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(h_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(h_plot))

            self.wait_until_bookmark("clear_cords")
            self.play(FadeOut(h_plot), FadeOut(f_plot), run_time=0.3)

            self.wait_until_bookmark("green")
            x,y,_ = g_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g_plot))

        self.wait(4)

class Func_6_1_I_7_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_1.I5.main.title"))

        sarah = ImageMobject(assets_folder / "img" / "biologist.png")
        sarah = sarah.scale(2.5/sarah.get_width()).move_to([-5, 1.4, 0])

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -1, 0])
        double_t1, double_t2 = self.translate("Func_6_1.I7.a.double-t1"), self.translate("Func_6_1.I7.a.double-t2")
        bacteria_double = VGroup(Tex(double_t1, color=c1t, font_size=fs2), Tex(double_t2, color=c1t, font_size=fs2)).arrange(DOWN, buff=0.).next_to(bacteria, DOWN, buff=0.2).shift(RIGHT*5.8)
        
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)

        self.add(cursor)

        cords = self.add_cords([0, 6, 1], [0, 64, 8], x_ticks=[2,4,6], y_ticks=[16,32,48,64])
        plane = cords[0]
        lin_growth = Tex(self.translate("Func_6_1.I7.q.lin-growth"), color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        g_tex = MathTex("g","(x)", "=", "2", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        
        f = lambda x:3*x
        g = lambda x:2**x
        h = lambda x:10*x**0.5

        f_plot = plane.plot(f, color=BLUE)
        g_plot = plane.plot(g, color=GREEN)
        h_plot = plane.plot(h, color=PURPLE)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_1.I7.b.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("g")
            x,y,_ = g_tex[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(g_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gx")
            x,y,_ = g_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gtwo")
            x,y,_ = g_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gxx")
            x,y,_ = g_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), run_time=0.3)


            self.wait_until_bookmark("blue")
            x,y,_ = f_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(f_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(f_plot))

            self.wait_until_bookmark("purple")
            x,y,_ = h_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(h_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(h_plot))

            self.wait_until_bookmark("clear_cords")
            self.play(FadeOut(h_plot), FadeOut(f_plot), run_time=0.3)

            self.wait_until_bookmark("green")
            x,y,_ = g_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g_plot))

        self.wait(4)

class Func_6_1_I_7_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_1.I5.main.title"))

        sarah = ImageMobject(assets_folder / "img" / "biologist.png")
        sarah = sarah.scale(2.5/sarah.get_width()).move_to([-5, 1.4, 0])

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -1, 0])
        double_t1, double_t2 = self.translate("Func_6_1.I7.a.double-t1"), self.translate("Func_6_1.I7.a.double-t2")
        bacteria_double = VGroup(Tex(double_t1, color=c1t, font_size=fs2), Tex(double_t2, color=c1t, font_size=fs2)).arrange(DOWN, buff=0.).next_to(bacteria, DOWN, buff=0.2).shift(RIGHT*5.8)
        
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)

        self.add(cursor)

        cords = self.add_cords([0, 6, 1], [0, 64, 8], x_ticks=[2,4,6], y_ticks=[16,32,48,64])
        plane = cords[0]
        lin_growth = Tex(self.translate("Func_6_1.I7.q.lin-growth"), color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        g_tex = MathTex("g","(x)", "=", "2", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        
        f = lambda x:3*x
        g = lambda x:2**x
        h = lambda x:10*x**0.5

        f_plot = plane.plot(f, color=BLUE)
        g_plot = plane.plot(g, color=GREEN)
        h_plot = plane.plot(h, color=PURPLE)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_1.I7.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("g")
            x,y,_ = g_tex[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(g_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gx")
            x,y,_ = g_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gtwo")
            x,y,_ = g_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gxx")
            x,y,_ = g_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), run_time=0.3)


            self.wait_until_bookmark("blue")
            x,y,_ = f_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(f_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(f_plot))

            self.wait_until_bookmark("purple")
            x,y,_ = h_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(h_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(h_plot))

            self.wait_until_bookmark("clear_cords")
            self.play(FadeOut(h_plot), FadeOut(f_plot), run_time=0.3)

            self.wait_until_bookmark("green")
            x,y,_ = g_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g_plot))

        self.wait(4)

PROTOTYPES=[
    PagePrototypeVideo.from_scene(Func_6_1_I_1_q),
    PagePrototypeQuestion.from_scene(Func_6_1_I_1_q),
    PagePrototypeVideo.from_scene(Func_6_1_I_1_a),
    PagePrototypeVideo.from_scene(Func_6_1_I_1_b),
    PagePrototypeVideo.from_scene(Func_6_1_I_2_q),
    PagePrototypeQuestion.from_scene(Func_6_1_I_2_q),
    PagePrototypeVideo.from_scene(Func_6_1_I_2_a),
    PagePrototypeVideo.from_scene(Func_6_1_I_2_b),
    PagePrototypeVideo.from_scene(Func_6_1_I_2_c),
    PagePrototypeVideo.from_scene(Func_6_1_I_2_1),
    PagePrototypeVideo.from_scene(Func_6_1_I_3),
    PagePrototypeVideo.from_scene(Func_6_1_I_4),
    PagePrototypeVideo.from_scene(Func_6_1_I_5_q),
    PagePrototypeQuestion.from_scene(Func_6_1_I_5_q),
    PagePrototypeVideo.from_scene(Func_6_1_I_5_a),
    PagePrototypeVideo.from_scene(Func_6_1_I_5_b),
    PagePrototypeVideo.from_scene(Func_6_1_I_6_q),
    PagePrototypeQuestion.from_scene(Func_6_1_I_6_q),
    PagePrototypeVideo.from_scene(Func_6_1_I_6_a),
    PagePrototypeVideo.from_scene(Func_6_1_I_6_b),
    PagePrototypeVideo.from_scene(Func_6_1_I_6_c),
    PagePrototypeVideo.from_scene(Func_6_1_I_7_q),
    PagePrototypeQuestion.from_scene(Func_6_1_I_7_q),
    PagePrototypeVideo.from_scene(Func_6_1_I_7_a),
    PagePrototypeVideo.from_scene(Func_6_1_I_7_b),
    PagePrototypeVideo.from_scene(Func_6_1_I_7_c)
]