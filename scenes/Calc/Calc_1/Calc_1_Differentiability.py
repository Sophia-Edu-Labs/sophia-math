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

class Calc_1_Derivative_1_q(SophiaCursorScene):
    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions=ast.literal_eval(self.translate("Calc_1_Derivative_1_q.answer-options")),
    #         correctAnswerIndex=1,
    #         questionText = self.translate("Calc_1.Derivative.1q.question-text")
    #     )

    def construct(self):
        super().construct()
        self.add_mathgrid()


        title = self.add_title(self.translate("Calc_1.Derivative.1q.title"))
        
        qmark = ImageMobject(assets_folder / "img" / "qmark.png").shift(LEFT*5).scale(.8)
        eq = MathTex(r'f(x) = |x|sin(x)', color=c1t, font_size=fs2)
        maps = MathTex(r'f: \mathbb{R} \rightarrow \mathbb{R}', color=c1t, font_size=fs2).next_to(eq, DOWN*1.3, aligned_edge=LEFT)
        diff = Tex(self.translate("Calc_1.Derivative.1q.question"), color=c1t, font_size=fs3).next_to(eq, UP*1.3, aligned_edge=LEFT)
        derivative = MathTex(r"f'(x)?", color=c1t, font_size=fs2).next_to(maps, DOWN*1.3, aligned_edge=LEFT)
        # Action Sequence
        with self.voiceover(
                text=self.translate("Calc_1.Derivative.1q.voiceover")
        ) as tracker:
            self.add_shift_sound(1)
            self.play(Write(title), qmark.animate.shift(RIGHT*5))
            self.wait_until_bookmark("qend")
            self.add_shift_sound(1)
            self.play(qmark.animate.shift(RIGHT*5), run_time=.5)
            self.wait_until_bookmark("function")
            self.play(Write(eq))
            self.wait_until_bookmark("real")
            self.play(Write(maps), run_time=1.5)
            self.wait_until_bookmark("diff")
            self.play(Write(diff))
            self.wait_until_bookmark("der")
            self.play(Write(derivative))

        self.wait(4)


class Calc_1_Derivative_1_a(SophiaCursorScene):
    def construct(self):
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Calc_1.Derivative.1q.title"))
        
        eq = MathTex(r'f(x) = |x|sin(x)', color=c1t, font_size=fs2)
        maps = MathTex(r'f: \mathbb{R} \rightarrow \mathbb{R}', color=c1t, font_size=fs2).next_to(eq, DOWN*1.3, aligned_edge=LEFT)
        diff = Tex(self.translate("Calc_1.Derivative.1q.question"), color=c1t, font_size=fs3).next_to(eq, UP*1.3, aligned_edge=LEFT)
        derivative = MathTex(r"f'(x)?", color=c1t, font_size=fs2).next_to(maps, DOWN*1.3, aligned_edge=LEFT)

        limit_rule = MathTex(r'\lim_{h \nearrow  0} \frac{x_0+h - f(x_0)}{h}', color=c3, font_size=fs3).shift(UP*1.5).align_to(title, LEFT)
        eq1 = MathTex(r'=\lim_{h \nearrow  0} \frac{|h|sin(h) - |0|sin(0)}{h}', color=c3, font_size=fs3).next_to(limit_rule, DOWN, buff=0.1, aligned_edge=LEFT)
        eq2 = MathTex(r'=\lim_{h \nearrow  0} sin(h) = 0', color=c3, font_size=fs3).next_to(eq1, DOWN, buff=0.1, aligned_edge=LEFT)
        
        limit_rule2 = MathTex(r'\lim_{h \searrow  0} \frac{x_0+h - f(x_0)}{h}', color=c3, font_size=fs3).next_to(eq2, DOWN*2, aligned_edge=LEFT)
        eq3 = MathTex(r'=\lim_{h \searrow  0} \frac{|h|sin(h) - |0|sin(0)}{h}', color=c3, font_size=fs3).next_to(limit_rule2, DOWN, buff=0.1, aligned_edge=LEFT)
        eq4 = MathTex(r'=\lim_{h \searrow  0} (-sin(h)) = 0', color=c3, font_size=fs3).next_to(eq3, DOWN, buff=0.1, aligned_edge=LEFT)

        with self.voiceover(
                text=self.translate("Calc_1.Derivative.1a.voiceover")
        ) as tracker:
            self.add(title, eq, maps, diff, derivative)
            self.play(FadeOut(eq, maps, diff, derivative))
            self.wait_until_bookmark("rhs")
            self.play(Write(limit_rule), run_time=0.7)
            self.play(Write(eq1), run_time=0.7)
            self.wait_until_bookmark("rhs_last")
            self.play(Write(eq2), run_time=0.7)

            self.wait_until_bookmark("lhs")
            self.play(Write(limit_rule2), run_time=0.7)
            self.play(Write(eq3), run_time=0.7)
            self.wait_until_bookmark("lhs_last")
            self.play(Write(eq4), run_time=0.7)

            self.wait_until_bookmark("match")
            self.play(Indicate(eq2, scale_factor=1.2, color=c1t), Indicate(eq4, scale_factor=1.2, color=c1t), run_time=2)
        self.wait(4)