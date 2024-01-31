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
from sophialib.tasks.sophiataskdefinition import SophiaFreeTextTaskDetail, SophiaTaskDefinition
import ast 

class Calc_1_Limit_1_q(SophiaCursorScene):
    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions=ast.literal_eval(self.translate("Calc_1_Derivative_1_q.answer-options")),
    #         correctAnswerIndex=1,
    #         questionText = self.translate("Calc_1.Derivative.1q.question-text")
    #     )

    def construct(self):
        super().construct()
        self.add_mathgrid()


        title = self.add_title(self.translate("Calc_1.Limit.1q.title"))
        
        qmark = ImageMobject(assets_folder / "img" / "qmark.png").shift(LEFT*5).scale(.8)
        eq = MathTex(r'\lim_{t\to 1}\frac{5t^4 - 4t^2 - 1}{4 - t - 3t^2}', color=c1t, font_size=fs2)
        # Action Sequence
        with self.voiceover(
                text=self.translate("Calc_1.Limit.1q.voiceover")
        ) as tracker:
            self.add_shift_sound(1)
            self.play(Write(title), qmark.animate.shift(RIGHT*5))
            self.wait_until_bookmark("qend")
            self.add_shift_sound(1)
            self.play(qmark.animate.shift(RIGHT*5), run_time=.5)
            self.wait_until_bookmark("lim")
            self.play(Write(eq[0][:6]), run_time=2)
            self.wait_until_bookmark("eq")
            self.play(Write(eq[0][6:]), run_time=2)
        self.wait(4)


class Calc_1_Limit_1_a(SophiaCursorScene):
    def construct(self):
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Calc_1.Limit.1q.title"))
        
        eq = MathTex(r'\lim_{t\to 1}\frac{5t^4 - 4t^2 - 1}{4 - t - 3t^2}', color=c3, font_size=fs2)
        eq_cp = eq.copy()
        eq2 = MathTex(r'\lim_{t\to 1}\frac{5(1)^4 - 4(1)^2 - 1}{4 - 1 - 3(1)^2}', color=c3, font_size=fs2)
        zoz = MathTex(r'\lim_{t\to 1}\frac{0}{0}', color=c3, font_size=fs2)
        num_den = MathTex(r"\overset{\text{L'h}}{=}\lim_{t\to 1}\frac{20t^3 - 8t}{-1-9t^2}", color=c3, font_size=fs2).next_to(eq_cp, DOWN, aligned_edge=LEFT, buff=1)
        last = MathTex(r'= -\frac{6}{5}', color=c3, font_size=fs2).next_to(num_den, DOWN, aligned_edge=LEFT, buff=1)
        VGroup(eq, eq_cp, eq2, zoz, num_den, last).shift(UP)

        with self.voiceover(
                text=self.translate("Calc_1.Limit.1a.voiceover")
        ) as tracker:
            self.add(title, eq)
            self.wait_until_bookmark("plug")
            self.play(ReplacementTransform(eq[0][:6], eq2[0][:6]))
            self.play(ReplacementTransform(eq[0][6:], eq2[0][6:]))
            self.play(AnimationGroup(ReplacementTransform(eq2[0][6:], zoz[0][6:]), ReplacementTransform(eq2[0][:6], zoz[0][:6])))
            self.wait_until_bookmark("def")
            self.play(AnimationGroup(ReplacementTransform(zoz[0][6:], eq_cp[0][6:]), ReplacementTransform(zoz[0][:6], eq_cp[0][:6])))
            self.play(Write(num_den[0][:10]))
            self.wait_until_bookmark("num")
            self.play(ReplacementTransform(eq_cp[0][6:15].copy(), num_den[0][10:17]))
            self.play(ReplacementTransform(eq_cp[0][15:].copy(), num_den[0][17:24]))
            self.wait_until_bookmark("final")
            self.play(Write(last))
        self.wait(4)

class Calc_1_Limit_2_q(SophiaCursorScene):
    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions=ast.literal_eval(self.translate("Calc_1_Derivative_1_q.answer-options")),
    #         correctAnswerIndex=1,
    #         questionText = self.translate("Calc_1.Derivative.1q.question-text")
    #     )

    def construct(self):
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Calc_1.Limit.2q.title"))
        
        qmark = ImageMobject(assets_folder / "img" / "qmark.png").shift(LEFT*5).scale(.8)
        eq = MathTex(r'(a_n)_{n \in \mathbb{N}} = a_1, a_2, a_3, \ldots', color=c1t, font_size=fs2)
        eq2 = MathTex(r'(b_n)_{n \in \mathbb{N}}', color=c1t, font_size=fs2).next_to(eq[0][9], RIGHT)
        bn = MathTex(r'b_n \neq 0', color=c1t, font_size=fs2).next_to(eq2, DOWN, aligned_edge=LEFT)
        final = MathTex(r'\left(\frac{a_n}{b_n}\right)_{n \in \mathbb{N}}', color=c1t, font_size=fs2).shift(DOWN*2)
        VGroup(eq, eq2, bn, final).shift(UP)

        with self.voiceover(
                text=self.translate("Calc_1.Limit.2q.voiceover")
        ) as tracker:
            self.add_shift_sound(1)
            self.play(Write(title), qmark.animate.shift(RIGHT*5))
            self.wait_until_bookmark("qend")
            self.add_shift_sound(1) 
            self.play(qmark.animate.shift(RIGHT*5), run_time=.5)
            self.play(Write(eq))
            self.wait_until_bookmark("ngrow")
            self.play(Indicate(eq[0][2], scale_factor=1.2, color=c4))
            self.wait_until_bookmark("conv")
            self.play(FadeOut(eq[0][7:]))
            self.play(Write(eq2))
            self.wait_until_bookmark("neqz")
            self.play(Write(bn))
            self.wait_until_bookmark("fin")
            self.play(Write(final))
            
        self.wait(4)