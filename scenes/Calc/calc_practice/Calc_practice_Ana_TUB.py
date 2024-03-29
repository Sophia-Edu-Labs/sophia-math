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


##################################### INITIAL MC Part 
#####################################

##################################### 
#####################################

# Ana Ing TUB 2019/4

# MC, Injective, Inverse
class Calc_practice_MC_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Calc_1.Practice_MC.1q.answer-options")),
            correctAnswerIndex=0,
            questionText = self.translate("Calc_1.Practice_MC.1q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        f_1 = MathTex("f:[1,\\infty)\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_2 = MathTex("f(x)=x^2-1", color=c1t, font_size=fs2)
        f = VGroup(f_1, f_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT)
        g_1 = MathTex("g:[0,\\infty)\\rightarrow\\mathbb{R}, ", color=c1t, font_size=fs2)
        g_2 = MathTex("g(x)=e^x", color=c1t, font_size=fs2)
        g = VGroup(g_1, g_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT)
        g_circ_f = MathTex("g\\circ f:[1,\\infty)\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_g_fg = VGroup(f, g, g_circ_f).arrange(DOWN, buff=0.4, aligned_edge=LEFT).set_y(1.4)

        answer_a = Tex(self.translate("Calc_1.Practice_MC.1q.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.1q.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.1q.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.1q.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(g_circ_f, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Calc_1.Practice_MC.1q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f_in_1")
            self.play(Write(f[0]))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f[1]))

            self.wait_until_bookmark("g_in_1")
            self.play(Write(g[0]))

            self.wait_until_bookmark("g_in_2")
            self.play(Write(g[1]))

            self.wait_until_bookmark("g_circ_f_in")
            self.play(Write(g_circ_f))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#

class Calc_practice_MC_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        f_1 = MathTex("f:", "[1,\\infty)", "\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_2 = MathTex("f(x)=", "x^2-1", color=c1t, font_size=fs2)
        f = VGroup(f_1, f_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT)
        g_1 = MathTex("g:", "[0,\\infty)", "\\rightarrow\\mathbb{R}, ", color=c1t, font_size=fs2)
        g_2 = MathTex("g(x)=", "e", "^x", color=c1t, font_size=fs2)
        g = VGroup(g_1, g_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT)
        g_circ_f = MathTex("g\\circ f", ":[1,\\infty)\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        g_circ_f_plugged_in = MathTex("(g\\circ f)(x)", "=e", "^{x^2-1}", color=c1t, font_size=fs2)
        f_g_fg = VGroup(f, g, g_circ_f).arrange(DOWN, buff=0.4, aligned_edge=LEFT).set_y(1.4)

        is_injective = Tex(self.translate("Calc_1.Practice_MC.1q.is_injective"), color=BLUE, font_size=fs3)
        not_surjective = Tex(self.translate("Calc_1.Practice_MC.1q.not_surjective"), color=BLUE, font_size=fs3)
        not_equal = Tex("$\\bullet$  $f(2)=e^3\\neq 1$", color=BLUE, font_size=fs3)
        observations = VGroup(is_injective, not_surjective, not_equal).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(g_circ_f_plugged_in, DOWN, buff=0.6).shift(UP*2)
        

        answer_a = Tex(self.translate("Calc_1.Practice_MC.1q.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.1q.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.1q.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.1q.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(g_circ_f, DOWN, buff=0.5)

        self.add(f_g_fg, answers)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Calc_1.Practice_MC.1a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f_stays")
            self.add_shift_sound(0.5)
            self.play(VGroup(g, g_circ_f, answers).animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("highlight_interval")
            self.play(Indicate(f_1[1], color=RED, scale_factor=1.4))

            self.wait_until_bookmark("interval_f_range")
            self.add_shift_sound(0.5)
            self.play(g_1[1].animate.shift(5*LEFT), run_time=.5)

            self.wait_until_bookmark("g_in")
            self.add_shift_sound(0.5)
            self.play(g_1[0].animate.shift(5*LEFT), g_1[2].animate.shift(5*LEFT), g_2.animate.shift(5*LEFT), run_time=.5)

            self.wait_until_bookmark("highlight_def_g")
            self.play(Indicate(g_1[1], color=RED, scale_factor=1.4))

            self.wait_until_bookmark("g_f_in")
            g_circ_f.set_color(GREEN)
            self.add_shift_sound(0.5)
            self.play(g_circ_f[0].animate.shift(5*LEFT), run_time=.5)

            self.wait_until_bookmark("g_circ_f")
            self.play(ReplacementTransform(g_circ_f[0], g_circ_f_plugged_in[0]), run_time=.5)
            self.wait(.5)
            self.play(ReplacementTransform(g_circ_f[1].copy(), g_circ_f_plugged_in[1]), run_time=.5)
            self.play(ReplacementTransform(f_2[1].copy(), g_circ_f_plugged_in[2]), run_time=.5)

            self.wait_until_bookmark("clean_up")
            self.add_shift_sound(0.5)
            self.play(Unwrite(f), Unwrite(g), g_circ_f_plugged_in.animate.shift(2*UP), run_time=.5)

            self.wait_until_bookmark("injective")
            self.play(Write(is_injective))

            self.wait_until_bookmark("surjective")
            self.play(Write(not_surjective))

            self.wait_until_bookmark("gfx_neq_x")
            self.play(Write(not_equal))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
class Calc_practice_MC_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        f_1 = MathTex("f:", "[1,\\infty)", "\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_2 = MathTex("f(x)=", "x^2-1", color=c1t, font_size=fs2)
        f = VGroup(f_1, f_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT)
        g_1 = MathTex("g:", "[0,\\infty)", "\\rightarrow\\mathbb{R}, ", color=c1t, font_size=fs2)
        g_2 = MathTex("g(x)=", "e", "^x", color=c1t, font_size=fs2)
        g = VGroup(g_1, g_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT)
        g_circ_f = MathTex("g\\circ f", ":[1,\\infty)\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        g_circ_f_plugged_in = MathTex("(g\\circ f)(x)", "=e", "^{x^2-1}", color=c1t, font_size=fs2)
        f_g_fg = VGroup(f, g, g_circ_f).arrange(DOWN, buff=0.4, aligned_edge=LEFT).set_y(1.4)

        is_injective = Tex(self.translate("Calc_1.Practice_MC.1q.is_injective"), color=BLUE, font_size=fs3)
        not_surjective = Tex(self.translate("Calc_1.Practice_MC.1q.not_surjective"), color=BLUE, font_size=fs3)
        not_equal = Tex("$\\bullet$  $f(2)=e^3\\neq 1$", color=BLUE, font_size=fs3)
        observations = VGroup(is_injective, not_surjective, not_equal).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(g_circ_f_plugged_in, DOWN, buff=0.6).shift(UP*2)
        

        answer_a = Tex(self.translate("Calc_1.Practice_MC.1q.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.1q.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.1q.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.1q.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(g_circ_f, DOWN, buff=0.5)

        self.add(f_g_fg, answers)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.1a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f_stays")
            self.add_shift_sound(0.5)
            self.play(VGroup(g, g_circ_f, answers).animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("highlight_interval")
            self.play(Indicate(f_1[1], color=RED, scale_factor=1.4))

            self.wait_until_bookmark("interval_f_range")
            self.add_shift_sound(0.5)
            self.play(g_1[1].animate.shift(5*LEFT), run_time=.5)

            self.wait_until_bookmark("g_in")
            self.add_shift_sound(0.5)
            self.play(g_1[0].animate.shift(5*LEFT), g_1[2].animate.shift(5*LEFT), g_2.animate.shift(5*LEFT), run_time=.5)

            self.wait_until_bookmark("highlight_def_g")
            self.play(Indicate(g_1[1], color=RED, scale_factor=1.4))

            self.wait_until_bookmark("g_f_in")
            g_circ_f.set_color(GREEN)
            self.add_shift_sound(0.5)
            self.play(g_circ_f[0].animate.shift(5*LEFT), run_time=.5)

            self.wait_until_bookmark("g_circ_f")
            self.play(ReplacementTransform(g_circ_f[0], g_circ_f_plugged_in[0]), run_time=.5)
            self.wait(.5)
            self.play(ReplacementTransform(g_circ_f[1].copy(), g_circ_f_plugged_in[1]), run_time=.5)
            self.play(ReplacementTransform(f_2[1].copy(), g_circ_f_plugged_in[2]), run_time=.5)

            self.wait_until_bookmark("clean_up")
            self.add_shift_sound(0.5)
            self.play(Unwrite(f), Unwrite(g), g_circ_f_plugged_in.animate.shift(2*UP), run_time=.5)

            self.wait_until_bookmark("injective")
            self.play(Write(is_injective))

            self.wait_until_bookmark("surjective")
            self.play(Write(not_surjective))

            self.wait_until_bookmark("gfx_neq_x")
            self.play(Write(not_equal))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
class Calc_practice_MC_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        f_1 = MathTex("f:", "[1,\\infty)", "\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_2 = MathTex("f(x)=", "x^2-1", color=c1t, font_size=fs2)
        f = VGroup(f_1, f_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT)
        g_1 = MathTex("g:", "[0,\\infty)", "\\rightarrow\\mathbb{R}, ", color=c1t, font_size=fs2)
        g_2 = MathTex("g(x)=", "e", "^x", color=c1t, font_size=fs2)
        g = VGroup(g_1, g_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT)
        g_circ_f = MathTex("g\\circ f", ":[1,\\infty)\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        g_circ_f_plugged_in = MathTex("(g\\circ f)(x)", "=e", "^{x^2-1}", color=c1t, font_size=fs2)
        f_g_fg = VGroup(f, g, g_circ_f).arrange(DOWN, buff=0.4, aligned_edge=LEFT).set_y(1.4)

        is_injective = Tex(self.translate("Calc_1.Practice_MC.1q.is_injective"), color=BLUE, font_size=fs3)
        not_surjective = Tex(self.translate("Calc_1.Practice_MC.1q.not_surjective"), color=BLUE, font_size=fs3)
        not_equal = Tex("$\\bullet$  $f(2)=e^3\\neq 1$", color=BLUE, font_size=fs3)
        observations = VGroup(is_injective, not_surjective, not_equal).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(g_circ_f_plugged_in, DOWN, buff=0.6).shift(UP*2)
        

        answer_a = Tex(self.translate("Calc_1.Practice_MC.1q.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.1q.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.1q.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.1q.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(g_circ_f, DOWN, buff=0.5)

        self.add(f_g_fg, answers)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.1a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f_stays")
            self.add_shift_sound(0.5)
            self.play(VGroup(g, g_circ_f, answers).animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("highlight_interval")
            self.play(Indicate(f_1[1], color=RED, scale_factor=1.4))

            self.wait_until_bookmark("interval_f_range")
            self.add_shift_sound(0.5)
            self.play(g_1[1].animate.shift(5*LEFT), run_time=.5)

            self.wait_until_bookmark("g_in")
            self.add_shift_sound(0.5)
            self.play(g_1[0].animate.shift(5*LEFT), g_1[2].animate.shift(5*LEFT), g_2.animate.shift(5*LEFT), run_time=.5)

            self.wait_until_bookmark("highlight_def_g")
            self.play(Indicate(g_1[1], color=RED, scale_factor=1.4))

            self.wait_until_bookmark("g_f_in")
            g_circ_f.set_color(GREEN)
            self.add_shift_sound(0.5)
            self.play(g_circ_f[0].animate.shift(5*LEFT), run_time=.5)

            self.wait_until_bookmark("g_circ_f")
            self.play(ReplacementTransform(g_circ_f[0], g_circ_f_plugged_in[0]), run_time=.5)
            self.wait(.5)
            self.play(ReplacementTransform(g_circ_f[1].copy(), g_circ_f_plugged_in[1]), run_time=.5)
            self.play(ReplacementTransform(f_2[1].copy(), g_circ_f_plugged_in[2]), run_time=.5)

            self.wait_until_bookmark("clean_up")
            self.add_shift_sound(0.5)
            self.play(Unwrite(f), Unwrite(g), g_circ_f_plugged_in.animate.shift(2*UP), run_time=.5)

            self.wait_until_bookmark("injective")
            self.play(Write(is_injective))

            self.wait_until_bookmark("surjective")
            self.play(Write(not_surjective))

            self.wait_until_bookmark("gfx_neq_x")
            self.play(Write(not_equal))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
class Calc_practice_MC_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        f_1 = MathTex("f:", "[1,\\infty)", "\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_2 = MathTex("f(x)=", "x^2-1", color=c1t, font_size=fs2)
        f = VGroup(f_1, f_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT)
        g_1 = MathTex("g:", "[0,\\infty)", "\\rightarrow\\mathbb{R}, ", color=c1t, font_size=fs2)
        g_2 = MathTex("g(x)=", "e", "^x", color=c1t, font_size=fs2)
        g = VGroup(g_1, g_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT)
        g_circ_f = MathTex("g\\circ f", ":[1,\\infty)\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        g_circ_f_plugged_in = MathTex("(g\\circ f)(x)", "=e", "^{x^2-1}", color=c1t, font_size=fs2)
        f_g_fg = VGroup(f, g, g_circ_f).arrange(DOWN, buff=0.4, aligned_edge=LEFT).set_y(1.4)

        is_injective = Tex(self.translate("Calc_1.Practice_MC.1q.is_injective"), color=BLUE, font_size=fs3)
        not_surjective = Tex(self.translate("Calc_1.Practice_MC.1q.not_surjective"), color=BLUE, font_size=fs3)
        not_equal = Tex("$\\bullet$  $f(2)=e^3\\neq 1$", color=BLUE, font_size=fs3)
        observations = VGroup(is_injective, not_surjective, not_equal).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(g_circ_f_plugged_in, DOWN, buff=0.6).shift(UP*2)
        

        answer_a = Tex(self.translate("Calc_1.Practice_MC.1q.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.1q.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.1q.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.1q.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(g_circ_f, DOWN, buff=0.5)

        self.add(f_g_fg, answers)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.1a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f_stays")
            self.add_shift_sound(0.5)
            self.play(VGroup(g, g_circ_f, answers).animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("highlight_interval")
            self.play(Indicate(f_1[1], color=RED, scale_factor=1.4))

            self.wait_until_bookmark("interval_f_range")
            self.add_shift_sound(0.5)
            self.play(g_1[1].animate.shift(5*LEFT), run_time=.5)

            self.wait_until_bookmark("g_in")
            self.add_shift_sound(0.5)
            self.play(g_1[0].animate.shift(5*LEFT), g_1[2].animate.shift(5*LEFT), g_2.animate.shift(5*LEFT), run_time=.5)

            self.wait_until_bookmark("highlight_def_g")
            self.play(Indicate(g_1[1], color=RED, scale_factor=1.4))

            self.wait_until_bookmark("g_f_in")
            g_circ_f.set_color(GREEN)
            self.add_shift_sound(0.5)
            self.play(g_circ_f[0].animate.shift(5*LEFT), run_time=.5)

            self.wait_until_bookmark("g_circ_f")
            self.play(ReplacementTransform(g_circ_f[0], g_circ_f_plugged_in[0]), run_time=.5)
            self.wait(.5)
            self.play(ReplacementTransform(g_circ_f[1].copy(), g_circ_f_plugged_in[1]), run_time=.5)
            self.play(ReplacementTransform(f_2[1].copy(), g_circ_f_plugged_in[2]), run_time=.5)

            self.wait_until_bookmark("clean_up")
            self.add_shift_sound(0.5)
            self.play(Unwrite(f), Unwrite(g), g_circ_f_plugged_in.animate.shift(2*UP), run_time=.5)

            self.wait_until_bookmark("injective")
            self.play(Write(is_injective))

            self.wait_until_bookmark("surjective")
            self.play(Write(not_surjective))

            self.wait_until_bookmark("gfx_neq_x")
            self.play(Write(not_equal))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
        

##################################### 
#####################################
# MC, Mean Value Theorem, Differentiable
class Calc_practice_MC_2_q(SophiaCursorScene):


    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Calc_1.Practice_MC.2q.answer-options")),
            correctAnswerIndex=0,
            questionText = self.translate("Calc_1.Practice_MC.2q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        f_1 = MathTex("f:[0,1]\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_2 = MathTex("f(0)=0, \\, f(1)=0", color=c1t, font_size=fs2)
        f = VGroup(f_1, f_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        down_q = MathTex("\\Downarrow \\, ?", color=BLUE, font_size=fs2).next_to(f, DOWN, buff=0.4)
        exists_z = MathTex("\\exists z\\in[0,1]: f'(z)=0", color=c1t, font_size=fs2).next_to(down_q, DOWN, buff=0.4)


        answer_a = Tex(self.translate("Calc_1.Practice_MC.2q.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.2q.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.2q.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.2q.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(exists_z, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Calc_1.Practice_MC.2q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f_in_1")
            self.play(Write(f[0]))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f[1]))
            
            self.wait_until_bookmark("down_q_in")
            self.play(Write(down_q))

            self.wait_until_bookmark("exists_z_in")
            self.play(Write(exists_z))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#

class Calc_practice_MC_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        f_1 = MathTex("f:[0,1]\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_2 = MathTex("f(0)=0, \\, f(1)=0", color=c1t, font_size=fs2)
        f = VGroup(f_1, f_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        down_q = MathTex("\\Downarrow \\, ?", color=BLUE, font_size=fs2).next_to(f, DOWN, buff=0.4)
        exists_z = MathTex("\\exists z\\in[0,1]: f'(z)=0", color=c1t, font_size=fs2).next_to(down_q, DOWN, buff=0.4)

        answer_a = Tex(self.translate("Calc_1.Practice_MC.2q.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.2q.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.2q.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.2q.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(exists_z, DOWN, buff=0.5)

        f_graph_left = lambda x: x #if x<.5 else -x + 1
        f_graph_right = lambda x: -x + 1
        cords = self.add_cords([0,1,1], [0,1.2,1], x_ticks=[0,1], y_ticks=[0,1], width=2, height=2).shift(UP*.6)
        graph = VGroup(cords[0].plot(f_graph_left, color=RED, x_range=[0,0.5,1000]), cords[0].plot(f_graph_right, color=RED, x_range=[0.5,1,1000]))
        
        self.add(f, down_q, exists_z, answers)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Calc_1.Practice_MC.2a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN))

            self.wait_until_bookmark("b_red")
            self.play(answer_b.animate.set_color(RED))

            self.wait_until_bookmark("graph_in")
            self.play(Write(cords), Unwrite(f), Unwrite(down_q), exists_z.animate.scale(.85), run_time=1)
            self.play(Write(graph), run_time=1)

            self.wait_until_bookmark("c_d_red")
            self.play(answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
class Calc_practice_MC_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        f_1 = MathTex("f:[0,1]\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_2 = MathTex("f(0)=0, \\, f(1)=0", color=c1t, font_size=fs2)
        f = VGroup(f_1, f_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        down_q = MathTex("\\Downarrow \\, ?", color=BLUE, font_size=fs2).next_to(f, DOWN, buff=0.4)
        exists_z = MathTex("\\exists z\\in[0,1]: f'(z)=0", color=c1t, font_size=fs2).next_to(down_q, DOWN, buff=0.4)

        answer_a = Tex(self.translate("Calc_1.Practice_MC.2q.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.2q.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.2q.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.2q.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(exists_z, DOWN, buff=0.5)

        f_graph_left = lambda x: x #if x<.5 else -x + 1
        f_graph_right = lambda x: -x + 1
        cords = self.add_cords([0,1,1], [0,1.2,1], x_ticks=[0,1], y_ticks=[0,1], width=2, height=2).shift(UP*.6)
        graph = VGroup(cords[0].plot(f_graph_left, color=RED, x_range=[0,0.5,1000]), cords[0].plot(f_graph_right, color=RED, x_range=[0.5,1,1000]))
        
        self.add(f, down_q, exists_z, answers)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.2a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN))

            self.wait_until_bookmark("b_red")
            self.play(answer_b.animate.set_color(RED))

            self.wait_until_bookmark("graph_in")
            self.play(Write(cords), Unwrite(f), Unwrite(down_q), exists_z.animate.scale(.85), run_time=1)
            self.play(Write(graph), run_time=1)

            self.wait_until_bookmark("c_d_red")
            self.play(answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
class Calc_practice_MC_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        f_1 = MathTex("f:[0,1]\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_2 = MathTex("f(0)=0, \\, f(1)=0", color=c1t, font_size=fs2)
        f = VGroup(f_1, f_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        down_q = MathTex("\\Downarrow \\, ?", color=BLUE, font_size=fs2).next_to(f, DOWN, buff=0.4)
        exists_z = MathTex("\\exists z\\in[0,1]: f'(z)=0", color=c1t, font_size=fs2).next_to(down_q, DOWN, buff=0.4)

        answer_a = Tex(self.translate("Calc_1.Practice_MC.2q.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.2q.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.2q.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.2q.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(exists_z, DOWN, buff=0.5)

        f_graph_left = lambda x: x #if x<.5 else -x + 1
        f_graph_right = lambda x: -x + 1
        cords = self.add_cords([0,1,1], [0,1.2,1], x_ticks=[0,1], y_ticks=[0,1], width=2, height=2).shift(UP*.6)
        graph = VGroup(cords[0].plot(f_graph_left, color=RED, x_range=[0,0.5,1000]), cords[0].plot(f_graph_right, color=RED, x_range=[0.5,1,1000]))
        
        self.add(f, down_q, exists_z, answers)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.2a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN))

            self.wait_until_bookmark("b_red")
            self.play(answer_b.animate.set_color(RED))

            self.wait_until_bookmark("graph_in")
            self.play(Write(cords), Unwrite(f), Unwrite(down_q), exists_z.animate.scale(.85), run_time=1)
            self.play(Write(graph), run_time=1)

            self.wait_until_bookmark("c_d_red")
            self.play(answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
class Calc_practice_MC_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        f_1 = MathTex("f:[0,1]\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_2 = MathTex("f(0)=0, \\, f(1)=0", color=c1t, font_size=fs2)
        f = VGroup(f_1, f_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        down_q = MathTex("\\Downarrow \\, ?", color=BLUE, font_size=fs2).next_to(f, DOWN, buff=0.4)
        exists_z = MathTex("\\exists z\\in[0,1]: f'(z)=0", color=c1t, font_size=fs2).next_to(down_q, DOWN, buff=0.4)

        answer_a = Tex(self.translate("Calc_1.Practice_MC.2q.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.2q.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.2q.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.2q.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(exists_z, DOWN, buff=0.5)

        f_graph_left = lambda x: x #if x<.5 else -x + 1
        f_graph_right = lambda x: -x + 1
        cords = self.add_cords([0,1,1], [0,1.2,1], x_ticks=[0,1], y_ticks=[0,1], width=2, height=2).shift(UP*.6)
        graph = VGroup(cords[0].plot(f_graph_left, color=RED, x_range=[0,0.5,1000]), cords[0].plot(f_graph_right, color=RED, x_range=[0.5,1,1000]))
        
        self.add(f, down_q, exists_z, answers)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.2a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN))

            self.wait_until_bookmark("b_red")
            self.play(answer_b.animate.set_color(RED))

            self.wait_until_bookmark("graph_in")
            self.play(Write(cords), Unwrite(f), Unwrite(down_q), exists_z.animate.scale(.85), run_time=1)
            self.play(Write(graph), run_time=1)

            self.wait_until_bookmark("c_d_red")
            self.play(answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#

##################################### 
#####################################
# MC, Complex Numbers
class Calc_practice_MC_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Calc_1.Practice_MC.3q.answer-options")),
            correctAnswerIndex=1,
            questionText = self.translate("Calc_1.Practice_MC.3q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-2,2,1], [-2,2,1], x_ticks=[0,1], y_ticks=[0,1], y_labels=["0","i"])
        plane = cords[0]
        plot_1 = plane.plot(lambda x: x, color=GREEN)
        plot_2 = plane.plot(lambda x: -x, color=BLUE)
        unit_length = plane.c2p(1,0)[0] - plane.c2p(0,0)[0]
        circ_1 = Circle(radius=unit_length, color=RED).move_to(plane.c2p(1,-1))
        circ_2 = Circle(radius=unit_length, color=PINK).move_to(plane.c2p(-1,1))
        set = MathTex("{z \\in \\mathbb C : |z - 1| = |z+i|}", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.8)
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Calc_1.Practice_MC.3q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("set_in")
            self.play(Write(set))

            self.wait_until_bookmark("cords_in")
            self.play(Write(cords))

            self.wait_until_bookmark("green_in")
            self.add_pencil_sound(.8)
            self.play(Write(plot_1), run_time=.8)

            self.wait_until_bookmark("blue_in")
            self.add_pencil_sound(.8)
            self.play(Write(plot_2), run_time=.8)

            self.wait_until_bookmark("red_in")
            self.add_pencil_sound(.8)
            self.play(Write(circ_1), run_time=.8)

            self.wait_until_bookmark("pink_in")
            self.add_pencil_sound(.8)
            self.play(Write(circ_2), run_time=.8)
#

class Calc_practice_MC_3_a(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-2,2,1], [-2,2,1], x_ticks=[0,1], y_ticks=[0,1], y_labels=["0","i"])
        plane = cords[0]
        plot_1 = plane.plot(lambda x: x, color=GREEN)
        plot_2 = plane.plot(lambda x: -x, color=BLUE)
        unit_length = plane.c2p(1,0)[0] - plane.c2p(0,0)[0]
        circ_1 = Circle(radius=unit_length, color=RED).move_to(plane.c2p(1,-1))
        circ_2 = Circle(radius=unit_length, color=PINK).move_to(plane.c2p(-1,1))
        set = MathTex("{z \\in \\mathbb C : ", "|z - 1|", " = ", "|z+i|", "}", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.8)

        mark_origin = Cross(scale_factor=.1, color=RED, stroke_width=5).move_to(plane.c2p(0,0))
        p_1, p_2 = plane.c2p(1,0), plane.c2p(0,-1)
        mark_1 = Cross(scale_factor=.1, color=RED, stroke_width=5).move_to(p_1)
        mark_i = Cross(scale_factor=.1, color=RED, stroke_width=5).move_to(p_2)

        self.add(set, cords, plot_1, plot_2, circ_1, circ_2)

        x,y,_ = plot_2.get_start()
        cursor = AltCursor(idle=False, x=x, y=y)
        line_1 = Line(start=plane.c2p(0,0), end=plane.c2p(1,0), color=GREY_C, stroke_width = 2).add_updater(lambda l: l.put_start_and_end_on(p_1, cursor.get_center()))
        line_2 = Line(start=plane.c2p(0,0), end=plane.c2p(0,-1), color=GREY_C, stroke_width = 2).add_updater(lambda l: l.put_start_and_end_on(p_2, cursor.get_center()))
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.3a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("highlight_origin")
            self.add_pencil_sound(.5)
            self.play(Create(mark_origin), run_time=.5)

            self.wait_until_bookmark("higlight_abs_1")
            self.play(Indicate(set[1], color=RED), run_time=3)

            self.wait_until_bookmark("move_z_1")
            self.play(ReplacementTransform(mark_origin, mark_1), run_time=.5)

            self.wait_until_bookmark("higlight_abs_2")
            self.play(Indicate(set[3], color=RED), run_time=3)

            self.wait_until_bookmark("write_z_i")
            self.add_pencil_sound(.5)
            self.play(Create(mark_i), run_time=.5)

            self.wait_until_bookmark("higlight_blue")
            self.play(Unwrite(plot_1), Unwrite(circ_1), Unwrite(circ_2), run_time=.5)
            self.wait(1)
            self.play(Write(cursor), Write(line_1), Write(line_2), run_time=.5)
            self.play(MoveAlongPath(cursor, plot_2, rate_func=linear), run_time=3)
            self.wait(.5)
            self.play(Unwrite(cursor), Unwrite(line_1), Unwrite(line_2), run_time=.5)

        self.wait(4)
#
class Calc_practice_MC_3_b(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-2,2,1], [-2,2,1], x_ticks=[0,1], y_ticks=[0,1], y_labels=["0","i"])
        plane = cords[0]
        plot_1 = plane.plot(lambda x: x, color=GREEN)
        plot_2 = plane.plot(lambda x: -x, color=BLUE)
        unit_length = plane.c2p(1,0)[0] - plane.c2p(0,0)[0]
        circ_1 = Circle(radius=unit_length, color=RED).move_to(plane.c2p(1,-1))
        circ_2 = Circle(radius=unit_length, color=PINK).move_to(plane.c2p(-1,1))
        set = MathTex("{z \\in \\mathbb C : ", "|z - 1|", " = ", "|z+i|", "}", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.8)

        mark_origin = Cross(scale_factor=.1, color=RED, stroke_width=5).move_to(plane.c2p(0,0))
        p_1, p_2 = plane.c2p(1,0), plane.c2p(0,-1)
        mark_1 = Cross(scale_factor=.1, color=RED, stroke_width=5).move_to(p_1)
        mark_i = Cross(scale_factor=.1, color=RED, stroke_width=5).move_to(p_2)

        self.add(set, cords, plot_1, plot_2, circ_1, circ_2)

        x,y,_ = plot_2.get_start()
        cursor = AltCursor(idle=False, x=x, y=y)
        line_1 = Line(start=plane.c2p(0,0), end=plane.c2p(1,0), color=GREY_C, stroke_width = 2).add_updater(lambda l: l.put_start_and_end_on(p_1, cursor.get_center()))
        line_2 = Line(start=plane.c2p(0,0), end=plane.c2p(0,-1), color=GREY_C, stroke_width = 2).add_updater(lambda l: l.put_start_and_end_on(p_2, cursor.get_center()))
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Calc_1.Practice_MC.3a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("highlight_origin")
            self.add_pencil_sound(.5)
            self.play(Create(mark_origin), run_time=.5)

            self.wait_until_bookmark("higlight_abs_1")
            self.play(Indicate(set[1], color=RED), run_time=3)

            self.wait_until_bookmark("move_z_1")
            self.play(ReplacementTransform(mark_origin, mark_1), run_time=.5)

            self.wait_until_bookmark("higlight_abs_2")
            self.play(Indicate(set[3], color=RED), run_time=3)

            self.wait_until_bookmark("write_z_i")
            self.add_pencil_sound(.5)
            self.play(Create(mark_i), run_time=.5)

            self.wait_until_bookmark("higlight_blue")
            self.play(Unwrite(plot_1), Unwrite(circ_1), Unwrite(circ_2), run_time=.5)
            self.wait(1)
            self.play(Write(cursor), Write(line_1), Write(line_2), run_time=.5)
            self.play(MoveAlongPath(cursor, plot_2, rate_func=linear), run_time=3)
            self.wait(.5)
            self.play(Unwrite(cursor), Unwrite(line_1), Unwrite(line_2), run_time=.5)

        self.wait(4)
#
class Calc_practice_MC_3_c(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-2,2,1], [-2,2,1], x_ticks=[0,1], y_ticks=[0,1], y_labels=["0","i"])
        plane = cords[0]
        plot_1 = plane.plot(lambda x: x, color=GREEN)
        plot_2 = plane.plot(lambda x: -x, color=BLUE)
        unit_length = plane.c2p(1,0)[0] - plane.c2p(0,0)[0]
        circ_1 = Circle(radius=unit_length, color=RED).move_to(plane.c2p(1,-1))
        circ_2 = Circle(radius=unit_length, color=PINK).move_to(plane.c2p(-1,1))
        set = MathTex("{z \\in \\mathbb C : ", "|z - 1|", " = ", "|z+i|", "}", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.8)

        mark_origin = Cross(scale_factor=.1, color=RED, stroke_width=5).move_to(plane.c2p(0,0))
        p_1, p_2 = plane.c2p(1,0), plane.c2p(0,-1)
        mark_1 = Cross(scale_factor=.1, color=RED, stroke_width=5).move_to(p_1)
        mark_i = Cross(scale_factor=.1, color=RED, stroke_width=5).move_to(p_2)

        self.add(set, cords, plot_1, plot_2, circ_1, circ_2)

        x,y,_ = plot_2.get_start()
        cursor = AltCursor(idle=False, x=x, y=y)
        line_1 = Line(start=plane.c2p(0,0), end=plane.c2p(1,0), color=GREY_C, stroke_width = 2).add_updater(lambda l: l.put_start_and_end_on(p_1, cursor.get_center()))
        line_2 = Line(start=plane.c2p(0,0), end=plane.c2p(0,-1), color=GREY_C, stroke_width = 2).add_updater(lambda l: l.put_start_and_end_on(p_2, cursor.get_center()))
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.3a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("highlight_origin")
            self.add_pencil_sound(.5)
            self.play(Create(mark_origin), run_time=.5)

            self.wait_until_bookmark("higlight_abs_1")
            self.play(Indicate(set[1], color=RED), run_time=3)

            self.wait_until_bookmark("move_z_1")
            self.play(ReplacementTransform(mark_origin, mark_1), run_time=.5)

            self.wait_until_bookmark("higlight_abs_2")
            self.play(Indicate(set[3], color=RED), run_time=3)

            self.wait_until_bookmark("write_z_i")
            self.add_pencil_sound(.5)
            self.play(Create(mark_i), run_time=.5)

            self.wait_until_bookmark("higlight_blue")
            self.play(Unwrite(plot_1), Unwrite(circ_1), Unwrite(circ_2), run_time=.5)
            self.wait(1)
            self.play(Write(cursor), Write(line_1), Write(line_2), run_time=.5)
            self.play(MoveAlongPath(cursor, plot_2, rate_func=linear), run_time=3)
            self.wait(.5)
            self.play(Unwrite(cursor), Unwrite(line_1), Unwrite(line_2), run_time=.5)

        self.wait(4)
#
class Calc_practice_MC_3_d(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-2,2,1], [-2,2,1], x_ticks=[0,1], y_ticks=[0,1], y_labels=["0","i"])
        plane = cords[0]
        plot_1 = plane.plot(lambda x: x, color=GREEN)
        plot_2 = plane.plot(lambda x: -x, color=BLUE)
        unit_length = plane.c2p(1,0)[0] - plane.c2p(0,0)[0]
        circ_1 = Circle(radius=unit_length, color=RED).move_to(plane.c2p(1,-1))
        circ_2 = Circle(radius=unit_length, color=PINK).move_to(plane.c2p(-1,1))
        set = MathTex("{z \\in \\mathbb C : ", "|z - 1|", " = ", "|z+i|", "}", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.8)

        mark_origin = Cross(scale_factor=.1, color=RED, stroke_width=5).move_to(plane.c2p(0,0))
        p_1, p_2 = plane.c2p(1,0), plane.c2p(0,-1)
        mark_1 = Cross(scale_factor=.1, color=RED, stroke_width=5).move_to(p_1)
        mark_i = Cross(scale_factor=.1, color=RED, stroke_width=5).move_to(p_2)

        self.add(set, cords, plot_1, plot_2, circ_1, circ_2)

        x,y,_ = plot_2.get_start()
        cursor = AltCursor(idle=False, x=x, y=y)
        line_1 = Line(start=plane.c2p(0,0), end=plane.c2p(1,0), color=GREY_C, stroke_width = 2).add_updater(lambda l: l.put_start_and_end_on(p_1, cursor.get_center()))
        line_2 = Line(start=plane.c2p(0,0), end=plane.c2p(0,-1), color=GREY_C, stroke_width = 2).add_updater(lambda l: l.put_start_and_end_on(p_2, cursor.get_center()))
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.3a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("highlight_origin")
            self.add_pencil_sound(.5)
            self.play(Create(mark_origin), run_time=.5)

            self.wait_until_bookmark("higlight_abs_1")
            self.play(Indicate(set[1], color=RED), run_time=3)

            self.wait_until_bookmark("move_z_1")
            self.play(ReplacementTransform(mark_origin, mark_1), run_time=.5)

            self.wait_until_bookmark("higlight_abs_2")
            self.play(Indicate(set[3], color=RED), run_time=3)

            self.wait_until_bookmark("write_z_i")
            self.add_pencil_sound(.5)
            self.play(Create(mark_i), run_time=.5)

            self.wait_until_bookmark("higlight_blue")
            self.play(Unwrite(plot_1), Unwrite(circ_1), Unwrite(circ_2), run_time=.5)
            self.wait(1)
            self.play(Write(cursor), Write(line_1), Write(line_2), run_time=.5)
            self.play(MoveAlongPath(cursor, plot_2, rate_func=linear), run_time=3)
            self.wait(.5)
            self.play(Unwrite(cursor), Unwrite(line_1), Unwrite(line_2), run_time=.5)

        self.wait(4)
#

##################################### 
#####################################
# MC: Limits
class Calc_practice_MC_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=["$\\lim_{n\\to\\infty}a_{n}=2a$", "$\\lim_{n\\to\\infty}a_{n}=a$", "$\\lim_{n\\to\\infty}a_{n}=2a+1$", "$\\lim_{n\\to\\infty}a_{n}$ "+self.translate("General.does-not-exist")],
            correctAnswerIndex=1,
            questionText = self.translate("Calc_1.Practice_MC.4q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        a_n_1 = MathTex("\\left(a_n\\right)_{n\\in\\mathbb N}", color=c1t, font_size=fs2)
        a_n_2 = MathTex("\\lim_{n\\to\\infty}a_{2n}=a", color=c1t, font_size=fs2)
        a_n_3 = MathTex("\\lim_{n\\to\\infty}a_{2n+1}=a", color=c1t, font_size=fs2)
        a_n = VGroup(a_n_1, a_n_2, a_n_3).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        answer_a = Tex("a) $\\lim_{n\\to\\infty}a_{n}=2a$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\lim_{n\\to\\infty}a_{n}=a$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\lim_{n\\to\\infty}a_{n}=2a+1$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $\\lim_{n\\to\\infty}a_{n}$ existiert nicht", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(a_n, DOWN, buff=0.8)
        # Action Sequence
        with self.voiceover(
                text=self.translate("Calc_1.Practice_MC.4q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("a_n_in_1")
            self.play(Write(a_n[0]))

            self.wait_until_bookmark("a_n_in_2")
            self.play(Write(a_n[1]))

            self.wait_until_bookmark("a_n_in_3")
            self.play(Write(a_n[2]))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        self.wait(4)
#

class Calc_practice_MC_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        a_n_1 = MathTex("\\left(a_n\\right)_{n\\in\\mathbb N}", color=c1t, font_size=fs2)
        a_n_2 = MathTex("\\lim_{n\\to\\infty}a_{2n}=a", color=c1t, font_size=fs2)
        a_n_3 = MathTex("\\lim_{n\\to\\infty}a_{2n+1}=a", color=c1t, font_size=fs2)
        a_n = VGroup(a_n_1, a_n_2, a_n_3).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        answer_a = Tex("a) $\\lim_{n\\to\\infty}a_{n}=2a$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\lim_{n\\to\\infty}a_{n}=a$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\lim_{n\\to\\infty}a_{n}=2a+1$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $\\lim_{n\\to\\infty}a_{n}$ existiert nicht", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(a_n, DOWN, buff=0.8)

        self.add(a_n, answers)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.4a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("highlight_evens")
            self.play(Indicate(a_n[1], color=RED), run_time=3)

            self.wait_until_bookmark("highlight_odds")
            self.play(Indicate(a_n[2], color=RED), run_time=3)

            self.wait_until_bookmark("show_solution")
            self.play(answer_b.animate.set_color(GREEN), VGroup(answer_a, answer_c, answer_d).animate.set_color(RED))

        self.wait(4)

class Calc_practice_MC_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        a_n_1 = MathTex("\\left(a_n\\right)_{n\\in\\mathbb N}", color=c1t, font_size=fs2)
        a_n_2 = MathTex("\\lim_{n\\to\\infty}a_{2n}=a", color=c1t, font_size=fs2)
        a_n_3 = MathTex("\\lim_{n\\to\\infty}a_{2n+1}=a", color=c1t, font_size=fs2)
        a_n = VGroup(a_n_1, a_n_2, a_n_3).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        answer_a = Tex("a) $\\lim_{n\\to\\infty}a_{n}=2a$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\lim_{n\\to\\infty}a_{n}=a$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\lim_{n\\to\\infty}a_{n}=2a+1$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $\\lim_{n\\to\\infty}a_{n}$ existiert nicht", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(a_n, DOWN, buff=0.8)

        self.add(a_n, answers)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Calc_1.Practice_MC.4a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("highlight_evens")
            self.play(Indicate(a_n[1], color=RED), run_time=3)

            self.wait_until_bookmark("highlight_odds")
            self.play(Indicate(a_n[2], color=RED), run_time=3)

            self.wait_until_bookmark("show_solution")
            self.play(answer_b.animate.set_color(GREEN), VGroup(answer_a, answer_c, answer_d).animate.set_color(RED))

        self.wait(4)

class Calc_practice_MC_4_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        a_n_1 = MathTex("\\left(a_n\\right)_{n\\in\\mathbb N}", color=c1t, font_size=fs2)
        a_n_2 = MathTex("\\lim_{n\\to\\infty}a_{2n}=a", color=c1t, font_size=fs2)
        a_n_3 = MathTex("\\lim_{n\\to\\infty}a_{2n+1}=a", color=c1t, font_size=fs2)
        a_n = VGroup(a_n_1, a_n_2, a_n_3).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        answer_a = Tex("a) $\\lim_{n\\to\\infty}a_{n}=2a$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\lim_{n\\to\\infty}a_{n}=a$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\lim_{n\\to\\infty}a_{n}=2a+1$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $\\lim_{n\\to\\infty}a_{n}$ existiert nicht", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(a_n, DOWN, buff=0.8)

        self.add(a_n, answers)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.4a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("highlight_evens")
            self.play(Indicate(a_n[1], color=RED), run_time=3)

            self.wait_until_bookmark("highlight_odds")
            self.play(Indicate(a_n[2], color=RED), run_time=3)

            self.wait_until_bookmark("show_solution")
            self.play(answer_b.animate.set_color(GREEN), VGroup(answer_a, answer_c, answer_d).animate.set_color(RED))

        self.wait(4)

class Calc_practice_MC_4_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        a_n_1 = MathTex("\\left(a_n\\right)_{n\\in\\mathbb N}", color=c1t, font_size=fs2)
        a_n_2 = MathTex("\\lim_{n\\to\\infty}a_{2n}=a", color=c1t, font_size=fs2)
        a_n_3 = MathTex("\\lim_{n\\to\\infty}a_{2n+1}=a", color=c1t, font_size=fs2)
        a_n = VGroup(a_n_1, a_n_2, a_n_3).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        answer_a = Tex("a) $\\lim_{n\\to\\infty}a_{n}=2a$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\lim_{n\\to\\infty}a_{n}=a$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\lim_{n\\to\\infty}a_{n}=2a+1$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $\\lim_{n\\to\\infty}a_{n}$ existiert nicht", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(a_n, DOWN, buff=0.8)

        self.add(a_n, answers)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.4a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("highlight_evens")
            self.play(Indicate(a_n[1], color=RED), run_time=3)

            self.wait_until_bookmark("highlight_odds")
            self.play(Indicate(a_n[2], color=RED), run_time=3)

            self.wait_until_bookmark("show_solution")
            self.play(answer_b.animate.set_color(GREEN), VGroup(answer_a, answer_c, answer_d).animate.set_color(RED))

        self.wait(4)



##################################### 
#####################################
# MC, Extremum
class Calc_practice_MC_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Calc_1.Practice_MC.5q.answer-options")),
            correctAnswerIndex=1,
            questionText = self.translate("Calc_1.Practice_MC.5q.question-text")
        )

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function and the answer options
        f_definition = MathTex("f:\\left[-\\pi,\\pi\\right]\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_formula = MathTex("f(x)=2|x|+4", color=c1t, font_size=fs2)
        f_group = VGroup(f_definition, f_formula).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2)

        answers = [
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-a"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-b"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-c"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-d"), color=BLUE, font_size=fs3)
        ]

        answer_group = VGroup(*answers).arrange(DOWN, buff=0.3, aligned_edge=LEFT).next_to(f_group, DOWN, buff=1)

        # Voiceover text
        voiceover_text = self.translate("Calc_1.Practice_MC.5q.voiceover")

        # Main animation sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_definition")
            self.play(Write(f_definition))

            self.wait_until_bookmark("f_formula")
            self.play(Write(f_formula))

            self.wait_until_bookmark("question")
            for answer in answers:
                self.play(Write(answer))
                self.wait_until_bookmark(f"answer_{answers.index(answer) + 1}")

        # Wait at the end of the animation
        self.wait(4)

class Calc_practice_MC_5_a(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function and the answer options
        f_definition = MathTex("f:\\left[-\\pi,\\pi\\right]\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_formula = MathTex("f(x)=2|x|+4", color=c1t, font_size=fs2)
        f_group = VGroup(f_definition, f_formula).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2)

        cords = self.add_cords([-4,4,1], [0,12,1], x_ticks=[-4,-2,2,4], y_ticks=[4,8, 12])
        plane = cords[0]
        plot_left  = plane.plot(lambda x: -2*x + 4, color=RED, x_range=[-4,0,1000])
        plot_right = plane.plot(lambda x: 2*x + 4, color=RED, x_range=[0,4,1000])

        answers = [
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-a"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-b"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-c"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-d"), color=BLUE, font_size=fs3)
        ]

        answer_group = VGroup(*answers).arrange(DOWN, buff=0.3, aligned_edge=LEFT).next_to(f_group, DOWN, buff=1)

        # Voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.5a.voiceover")

        # Main animation sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("plot_in")
            self.play(f_group.animate.shift(DOWN*3), Unwrite(answer_group), Write(cords), run_time=.8)
            self.play(Write(plot_left), Write(plot_right), run_time=.8)

        # Wait at the end of the animation
        self.wait(4)
#
class Calc_practice_MC_5_b(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function and the answer options
        f_definition = MathTex("f:\\left[-\\pi,\\pi\\right]\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_formula = MathTex("f(x)=2|x|+4", color=c1t, font_size=fs2)
        f_group = VGroup(f_definition, f_formula).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2)

        cords = self.add_cords([-4,4,1], [0,12,1], x_ticks=[-4,-2,2,4], y_ticks=[4,8, 12])
        plane = cords[0]
        plot_left  = plane.plot(lambda x: -2*x + 4, color=RED, x_range=[-4,0,1000])
        plot_right = plane.plot(lambda x: 2*x + 4, color=RED, x_range=[0,4,1000])

        answers = [
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-a"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-b"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-c"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-d"), color=BLUE, font_size=fs3)
        ]

        answer_group = VGroup(*answers).arrange(DOWN, buff=0.3, aligned_edge=LEFT).next_to(f_group, DOWN, buff=1)

        # Voiceover text
        voiceover_text = self.translate("General.correct_3")+self.translate("Calc_1.Practice_MC.5a.voiceover")

        # Main animation sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("plot_in")
            self.play(f_group.animate.shift(DOWN*3), Unwrite(answer_group), Write(cords), run_time=.8)
            self.play(Write(plot_left), Write(plot_right), run_time=.8)

        # Wait at the end of the animation
        self.wait(4)
#
class Calc_practice_MC_5_c(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function and the answer options
        f_definition = MathTex("f:\\left[-\\pi,\\pi\\right]\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_formula = MathTex("f(x)=2|x|+4", color=c1t, font_size=fs2)
        f_group = VGroup(f_definition, f_formula).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2)

        cords = self.add_cords([-4,4,1], [0,12,1], x_ticks=[-4,-2,2,4], y_ticks=[4,8, 12])
        plane = cords[0]
        plot_left  = plane.plot(lambda x: -2*x + 4, color=RED, x_range=[-4,0,1000])
        plot_right = plane.plot(lambda x: 2*x + 4, color=RED, x_range=[0,4,1000])

        answers = [
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-a"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-b"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-c"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-d"), color=BLUE, font_size=fs3)
        ]

        answer_group = VGroup(*answers).arrange(DOWN, buff=0.3, aligned_edge=LEFT).next_to(f_group, DOWN, buff=1)

        # Voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.5a.voiceover")

        # Main animation sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("plot_in")
            self.play(f_group.animate.shift(DOWN*3), Unwrite(answer_group), Write(cords), run_time=.8)
            self.play(Write(plot_left), Write(plot_right), run_time=.8)

        # Wait at the end of the animation
        self.wait(4)
#
class Calc_practice_MC_5_d(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function and the answer options
        f_definition = MathTex("f:\\left[-\\pi,\\pi\\right]\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_formula = MathTex("f(x)=2|x|+4", color=c1t, font_size=fs2)
        f_group = VGroup(f_definition, f_formula).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2)

        cords = self.add_cords([-4,4,1], [0,12,1], x_ticks=[-4,-2,2,4], y_ticks=[4,8, 12])
        plane = cords[0]
        plot_left  = plane.plot(lambda x: -2*x + 4, color=RED, x_range=[-4,0,1000])
        plot_right = plane.plot(lambda x: 2*x + 4, color=RED, x_range=[0,4,1000])

        answers = [
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-a"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-b"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-c"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.5a.answer-d"), color=BLUE, font_size=fs3)
        ]

        answer_group = VGroup(*answers).arrange(DOWN, buff=0.3, aligned_edge=LEFT).next_to(f_group, DOWN, buff=1)

        # Voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.5a.voiceover")

        # Main animation sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("plot_in")
            self.play(f_group.animate.shift(DOWN*3), Unwrite(answer_group), Write(cords), run_time=.8)
            self.play(Write(plot_left), Write(plot_right), run_time=.8)

        # Wait at the end of the animation
        self.wait(4)
#

##################################### 
#####################################
#MC, Mittelwertsatz Integral
class Calc_practice_MC_6_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Calc_1.Practice_MC.6q.answer-options")),
            correctAnswerIndex=1,
            questionText=self.translate("Calc_1.Practice_MC.6q.question-text")
        )

    def construct(self):
        super().construct()
        self.add_mathgrid()

        # Define the formulas
        continuous = self.translate("words.continuous")
        domain = MathTex("a, b \\in \\mathbb{R}", ",", "a < b", font_size=fs2, color=c1t)
        function_f = MathTex("f : [a, b] \\rightarrow \\mathbb{R}", f"\\text{{ {continuous}}}", font_size=fs2, color=c1t)
        domain_and_f = VGroup(domain, function_f).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2.4)

        # Define the answer options
        answer_a = Tex(self.translate("Calc_1.Practice_MC.6a.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.6a.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.6a.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.6a.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.3, aligned_edge=LEFT).next_to(domain_and_f, DOWN, buff=0.5)

        # The voiceover and animation sequence
        voiceover_text = self.translate("Calc_1.Practice_MC.6q.voiceover")
        with self.voiceover(text=voiceover_text) as tracker:
            self.wait_until_bookmark("domain_in")
            self.play(Write(domain_and_f[0]))

            self.wait_until_bookmark("question_in")
            self.play(Write(domain_and_f[1]))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        self.wait(4)


class Calc_practice_MC_6_a(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        # Define the formulas
        continuous = self.translate("words.continuous")
        domain = MathTex("a, b \\in \\mathbb{R}", ",", "a < b", font_size=fs2, color=c1t)
        function_f = MathTex("f : [a, b] \\rightarrow \\mathbb{R}", f"\\text{{ {continuous}}}", font_size=fs2, color=c1t)
        domain_and_f = VGroup(domain, function_f).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2.4)
        downarrow_1 = MathTex("\\Downarrow", font_size=fs2, color=c1t).next_to(domain_and_f, DOWN, buff=.2)
        mvt = VGroup(MathTex("\\exists \\xi \\in [a,b] :", font_size=fs3, color=c1t), MathTex("f(\\xi) = \\frac{1}{b-a} \\int_{a}^{b} f(x) \\, dx", font_size=fs3, color=c1t)).arrange(DOWN, buff=.1).next_to(downarrow_1, DOWN, buff=.2)
        downarrow_2 = MathTex("\\Downarrow", "\\int_{a}^{b} f(x) \\, dx=0", font_size=fs3, color=c1t).next_to(mvt, DOWN, buff=.2)
        exists_xi = MathTex("\\exists \\xi \\in [a,b] : f(\\xi) = 0", font_size=fs3, color=c1t).next_to(downarrow_2, DOWN, buff=.2)


        # Define the answer options
        answer_a = Tex(self.translate("Calc_1.Practice_MC.6a.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.6a.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.6a.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.6a.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.3, aligned_edge=LEFT).next_to(domain_and_f, DOWN, buff=0.5)
        self.add(domain_and_f, answers)

        # The voiceover and animation sequence
        voiceover_text = self.translate("General.incorrect_6")+self.translate("Calc_1.Practice_MC.6a.voiceover")
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("look_at_b")
            self.add_shift_sound(.5)
            self.play(Unwrite(answer_a), Unwrite(answer_c), Unwrite(answer_d), answer_b.animate.shift(DOWN*2.4), run_time=.5)

            self.wait_until_bookmark("mvt")
            self.play(Write(downarrow_1), Write(mvt))

            self.wait_until_bookmark("look_at_c")
            self.play(Write(downarrow_2), Write(exists_xi))

            self.wait_until_bookmark("turn_b_green")
            self.play(answer_b.animate.set_color(GREEN))

        self.wait(4)

class Calc_practice_MC_6_b(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        # Define the formulas
        continuous = self.translate("words.continuous")
        domain = MathTex("a, b \\in \\mathbb{R}", ",", "a < b", font_size=fs2, color=c1t)
        function_f = MathTex("f : [a, b] \\rightarrow \\mathbb{R}", f"\\text{{ {continuous}}}", font_size=fs2, color=c1t)
        domain_and_f = VGroup(domain, function_f).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2.4)
        downarrow_1 = MathTex("\\Downarrow", font_size=fs2, color=c1t).next_to(domain_and_f, DOWN, buff=.2)
        mvt = VGroup(MathTex("\\exists \\xi \\in [a,b] :", font_size=fs3, color=c1t), MathTex("f(\\xi) = \\frac{1}{b-a} \\int_{a}^{b} f(x) \\, dx", font_size=fs3, color=c1t)).arrange(DOWN, buff=.1).next_to(downarrow_1, DOWN, buff=.2)
        downarrow_2 = MathTex("\\Downarrow", "\\int_{a}^{b} f(x) \\, dx=0", font_size=fs3, color=c1t).next_to(mvt, DOWN, buff=.2)
        exists_xi = MathTex("\\exists \\xi \\in [a,b] : f(\\xi) = 0", font_size=fs3, color=c1t).next_to(downarrow_2, DOWN, buff=.2)


        # Define the answer options
        answer_a = Tex(self.translate("Calc_1.Practice_MC.6a.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.6a.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.6a.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.6a.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.3, aligned_edge=LEFT).next_to(domain_and_f, DOWN, buff=0.5)
        self.add(domain_and_f, answers)

        # The voiceover and animation sequence
        voiceover_text = self.translate("General.correct_6")+self.translate("Calc_1.Practice_MC.6a.voiceover")
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("look_at_b")
            self.add_shift_sound(.5)
            self.play(Unwrite(answer_a), Unwrite(answer_c), Unwrite(answer_d), answer_b.animate.shift(DOWN*2.4), run_time=.5)

            self.wait_until_bookmark("mvt")
            self.play(Write(downarrow_1), Write(mvt))

            self.wait_until_bookmark("look_at_c")
            self.play(Write(downarrow_2), Write(exists_xi))

            self.wait_until_bookmark("turn_b_green")
            self.play(answer_b.animate.set_color(GREEN))

        self.wait(4)

class Calc_practice_MC_6_c(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        # Define the formulas
        continuous = self.translate("words.continuous")
        domain = MathTex("a, b \\in \\mathbb{R}", ",", "a < b", font_size=fs2, color=c1t)
        function_f = MathTex("f : [a, b] \\rightarrow \\mathbb{R}", f"\\text{{ {continuous}}}", font_size=fs2, color=c1t)
        domain_and_f = VGroup(domain, function_f).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2.4)
        downarrow_1 = MathTex("\\Downarrow", font_size=fs2, color=c1t).next_to(domain_and_f, DOWN, buff=.2)
        mvt = VGroup(MathTex("\\exists \\xi \\in [a,b] :", font_size=fs3, color=c1t), MathTex("f(\\xi) = \\frac{1}{b-a} \\int_{a}^{b} f(x) \\, dx", font_size=fs3, color=c1t)).arrange(DOWN, buff=.1).next_to(downarrow_1, DOWN, buff=.2)
        downarrow_2 = MathTex("\\Downarrow", "\\int_{a}^{b} f(x) \\, dx=0", font_size=fs3, color=c1t).next_to(mvt, DOWN, buff=.2)
        exists_xi = MathTex("\\exists \\xi \\in [a,b] : f(\\xi) = 0", font_size=fs3, color=c1t).next_to(downarrow_2, DOWN, buff=.2)


        # Define the answer options
        answer_a = Tex(self.translate("Calc_1.Practice_MC.6a.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.6a.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.6a.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.6a.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.3, aligned_edge=LEFT).next_to(domain_and_f, DOWN, buff=0.5)
        self.add(domain_and_f, answers)

        # The voiceover and animation sequence
        voiceover_text = self.translate("General.incorrect_6")+self.translate("Calc_1.Practice_MC.6a.voiceover")
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("look_at_b")
            self.add_shift_sound(.5)
            self.play(Unwrite(answer_a), Unwrite(answer_c), Unwrite(answer_d), answer_b.animate.shift(DOWN*2.4), run_time=.5)

            self.wait_until_bookmark("mvt")
            self.play(Write(downarrow_1), Write(mvt))

            self.wait_until_bookmark("look_at_c")
            self.play(Write(downarrow_2), Write(exists_xi))

            self.wait_until_bookmark("turn_b_green")
            self.play(answer_b.animate.set_color(GREEN))

        self.wait(4)

class Calc_practice_MC_6_d(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        # Define the formulas
        continuous = self.translate("words.continuous")
        domain = MathTex("a, b \\in \\mathbb{R}", ",", "a < b", font_size=fs2, color=c1t)
        function_f = MathTex("f : [a, b] \\rightarrow \\mathbb{R}", f"\\text{{ {continuous}}}", font_size=fs2, color=c1t)
        domain_and_f = VGroup(domain, function_f).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2.4)
        downarrow_1 = MathTex("\\Downarrow", font_size=fs2, color=c1t).next_to(domain_and_f, DOWN, buff=.2)
        mvt = VGroup(MathTex("\\exists \\xi \\in [a,b] :", font_size=fs3, color=c1t), MathTex("f(\\xi) = \\frac{1}{b-a} \\int_{a}^{b} f(x) \\, dx", font_size=fs3, color=c1t)).arrange(DOWN, buff=.1).next_to(downarrow_1, DOWN, buff=.2)
        downarrow_2 = MathTex("\\Downarrow", "\\int_{a}^{b} f(x) \\, dx=0", font_size=fs3, color=c1t).next_to(mvt, DOWN, buff=.2)
        exists_xi = MathTex("\\exists \\xi \\in [a,b] : f(\\xi) = 0", font_size=fs3, color=c1t).next_to(downarrow_2, DOWN, buff=.2)


        # Define the answer options
        answer_a = Tex(self.translate("Calc_1.Practice_MC.6a.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.6a.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.6a.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.6a.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.3, aligned_edge=LEFT).next_to(domain_and_f, DOWN, buff=0.5)
        self.add(domain_and_f, answers)

        # The voiceover and animation sequence
        voiceover_text = self.translate("General.incorrect_6")+self.translate("Calc_1.Practice_MC.6a.voiceover")
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("look_at_b")
            self.add_shift_sound(.5)
            self.play(Unwrite(answer_a), Unwrite(answer_c), Unwrite(answer_d), answer_b.animate.shift(DOWN*2.4), run_time=.5)

            self.wait_until_bookmark("mvt")
            self.play(Write(downarrow_1), Write(mvt))

            self.wait_until_bookmark("look_at_c")
            self.play(Write(downarrow_2), Write(exists_xi))

            self.wait_until_bookmark("turn_b_green")
            self.play(answer_b.animate.set_color(GREEN))

        self.wait(4)

##################################### 
#####################################
# MC, Complex Numbers
class Calc_practice_MC_7_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Calc_1.Practice_MC.7q.answer-options")),
            correctAnswerIndex=0,
            questionText = self.translate("Calc_1.Practice_MC.7q.question-text")
        )

    def construct(self):
        super().construct()
        self.add_mathgrid()

        # Defining the equation and answer options
        equation = MathTex("z^6 = (1 + i)^4", color=c1t, font_size=fs2).set_y(2)
        answers = VGroup(
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-a"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-b"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-c"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-d"), color=BLUE, font_size=fs3)
        ).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(equation, DOWN, buff=0.8)

        # Voiceover text
        voiceover_text = self.translate("Calc_1.Practice_MC.7q.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("eq_in")
            self.play(Write(equation))

            self.wait_until_bookmark("ans_a_in")
            self.play(Write(answers[0]))

            self.wait_until_bookmark("ans_b_in")
            self.play(Write(answers[1]))

            self.wait_until_bookmark("ans_c_in")
            self.play(Write(answers[2]))

            self.wait_until_bookmark("ans_d_in")
            self.play(Write(answers[3]))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#

class Calc_practice_MC_7_a(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        # Defining the equation and answer options
        equation_1 = MathTex("z^6 =", "(1 + i)^4", color=c1t, font_size=fs2).set_y(2)
        equation_2 = MathTex("z^6 =", " (1 + i)^4", "=-4", color=c1t, font_size=fs2).move_to(equation_1)
        step_1 = MathTex(r"\Downarrow", r"\sqrt[6]{\Box}", color=c1t, font_size=fs2).next_to(equation_2, DOWN, buff=0.2)
        equation_3 = MathTex("z =", r" \sqrt[6]{-4}", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=0.2)
        answers = VGroup(
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-a"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-b"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-c"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-d"), color=BLUE, font_size=fs3)
        ).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(equation_1, DOWN, buff=0.8)

        self.add(answers, equation_1)

        # Voiceover text
        voiceover_text = self.translate("General.correct_3")+self.translate("Calc_1.Practice_MC.7a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("multiply")
            self.play(TransformMatchingTex(equation_1, equation_2), run_time=.5)

            self.wait_until_bookmark("step_1")
            self.add_shift_sound(.5)
            self.play(Write(step_1), answers.animate.shift(DOWN), run_time=.5)
            
            self.wait_until_bookmark("equation_3")
            self.play(Write(equation_3), run_time=.5)

            self.wait_until_bookmark("solution")
            self.play(answers[0].animate.set_color(GREEN), answers[1].animate.set_color(RED), answers[2].animate.set_color(RED), answers[3].animate.set_color(RED), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
class Calc_practice_MC_7_b(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        # Defining the equation and answer options
        equation_1 = MathTex("z^6 =", "(1 + i)^4", color=c1t, font_size=fs2).set_y(2)
        equation_2 = MathTex("z^6 =", " (1 + i)^4", "=-4", color=c1t, font_size=fs2).move_to(equation_1)
        step_1 = MathTex(r"\Downarrow", r"\sqrt[6]{\Box}", color=c1t, font_size=fs2).next_to(equation_2, DOWN, buff=0.2)
        equation_3 = MathTex("z =", r" \sqrt[6]{-4}", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=0.2)
        answers = VGroup(
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-a"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-b"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-c"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-d"), color=BLUE, font_size=fs3)
        ).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(equation_1, DOWN, buff=0.8)

        self.add(answers, equation_1)

        # Voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.7a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("multiply")
            self.play(TransformMatchingTex(equation_1, equation_2), run_time=.5)

            self.wait_until_bookmark("step_1")
            self.add_shift_sound(.5)
            self.play(Write(step_1), answers.animate.shift(DOWN), run_time=.5)
            
            self.wait_until_bookmark("equation_3")
            self.play(Write(equation_3), run_time=.5)

            self.wait_until_bookmark("solution")
            self.play(answers[0].animate.set_color(GREEN), answers[1].animate.set_color(RED), answers[2].animate.set_color(RED), answers[3].animate.set_color(RED), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
class Calc_practice_MC_7_c(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        # Defining the equation and answer options
        equation_1 = MathTex("z^6 =", "(1 + i)^4", color=c1t, font_size=fs2).set_y(2)
        equation_2 = MathTex("z^6 =", " (1 + i)^4", "=-4", color=c1t, font_size=fs2).move_to(equation_1)
        step_1 = MathTex(r"\Downarrow", r"\sqrt[6]{\Box}", color=c1t, font_size=fs2).next_to(equation_2, DOWN, buff=0.2)
        equation_3 = MathTex("z =", r" \sqrt[6]{-4}", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=0.2)
        answers = VGroup(
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-a"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-b"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-c"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-d"), color=BLUE, font_size=fs3)
        ).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(equation_1, DOWN, buff=0.8)

        self.add(answers, equation_1)

        # Voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.7a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("multiply")
            self.play(TransformMatchingTex(equation_1, equation_2), run_time=.5)

            self.wait_until_bookmark("step_1")
            self.add_shift_sound(.5)
            self.play(Write(step_1), answers.animate.shift(DOWN), run_time=.5)
            
            self.wait_until_bookmark("equation_3")
            self.play(Write(equation_3), run_time=.5)

            self.wait_until_bookmark("solution")
            self.play(answers[0].animate.set_color(GREEN), answers[1].animate.set_color(RED), answers[2].animate.set_color(RED), answers[3].animate.set_color(RED), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
class Calc_practice_MC_7_d(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        # Defining the equation and answer options
        equation_1 = MathTex("z^6 =", "(1 + i)^4", color=c1t, font_size=fs2).set_y(2)
        equation_2 = MathTex("z^6 =", " (1 + i)^4", "=-4", color=c1t, font_size=fs2).move_to(equation_1)
        step_1 = MathTex(r"\Downarrow", r"\sqrt[6]{\Box}", color=c1t, font_size=fs2).next_to(equation_2, DOWN, buff=0.2)
        equation_3 = MathTex("z =", r" \sqrt[6]{-4}", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=0.2)
        answers = VGroup(
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-a"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-b"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-c"), color=BLUE, font_size=fs3),
            Tex(self.translate("Calc_1.Practice_MC.7a.answer-d"), color=BLUE, font_size=fs3)
        ).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(equation_1, DOWN, buff=0.8)

        self.add(answers, equation_1)

        # Voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.7a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("multiply")
            self.play(TransformMatchingTex(equation_1, equation_2), run_time=.5)

            self.wait_until_bookmark("step_1")
            self.add_shift_sound(.5)
            self.play(Write(step_1), answers.animate.shift(DOWN), run_time=.5)
            
            self.wait_until_bookmark("equation_3")
            self.play(Write(equation_3), run_time=.5)

            self.wait_until_bookmark("solution")
            self.play(answers[0].animate.set_color(GREEN), answers[1].animate.set_color(RED), answers[2].animate.set_color(RED), answers[3].animate.set_color(RED), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#     

##################################### 
#####################################
# MC, Continuity
class Calc_practice_MC_8_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions= ast.literal_eval(self.translate("Calc_1.Practice_MC.8q.answerOptions")),
            correctAnswerIndex=1,
            questionText = self.translate("Calc_1.Practice_MC.8q.question")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        continuos = self.translate("words.continuous")
        f_edges = MathTex("a,b \\in \\mathbb R, \\, a < b", color=c1t, font_size=fs2)
        f_interval = Tex("$f:[a,b]\\rightarrow\\mathbb{R}$ "+continuos, color=c1t, font_size=fs2)
        f_definition = VGroup(f_edges, f_interval).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.8a.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.8a.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.8a.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.8a.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_definition, DOWN, buff=0.5)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.Practice_MC.8q.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_in_1")
            self.play(Write(f_edges))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f_interval))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
class Calc_practice_MC_8_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        continuos = self.translate("words.continuous")
        f_edges = MathTex(r"a,b \in \mathbb R, \, a < b", color=c1t, font_size=fs2)
        f_interval = Tex(r"$f:[a,b]\rightarrow\mathbb{R}$ "+continuos, color=c1t, font_size=fs2)
        f_definition = VGroup(f_edges, f_interval).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        ivt = self.translate("words.ivt")
        downarrow_ivt = Tex(r"$\Downarrow$", " "+ivt, font_size=fs2, color=c1t).next_to(f_definition, DOWN, buff=.4)
        downarrow_ivt[1].scale(.8)
        solution = Tex(r"$f([a,b]) = [c,d]$", font_size=fs2, color=c1t).next_to(downarrow_ivt, DOWN, buff=.4)


        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.8a.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.8a.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.8a.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.8a.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_definition, DOWN, buff=0.5)

        self.add(f_definition, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.8a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("ivt")
            self.add_shift_sound(0.5)
            self.play(Write(downarrow_ivt), Unwrite(answer_a), Unwrite(answer_c), Unwrite(answer_d), answer_b.animate.shift(DOWN*1.4), run_time=.5)

            self.wait_until_bookmark("solution")
            self.play(Write(solution))

            self.wait_until_bookmark("turn_b_green")
            self.play(answer_b.animate.set_color(GREEN))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_8_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        continuos = self.translate("words.continuous")
        f_edges = MathTex("a,b \\in \\mathbb R, \\, a < b", color=c1t, font_size=fs2)
        f_interval = Tex("$f:[a,b]\\rightarrow\\mathbb{R}$ "+continuos, color=c1t, font_size=fs2)
        f_definition = VGroup(f_edges, f_interval).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        ivt = self.translate("words.ivt")
        downarrow_ivt = Tex("$\\Downarrow$", " "+ivt, font_size=fs2, color=c1t).next_to(f_definition, DOWN, buff=.4)
        downarrow_ivt[1].scale(.8)
        solution = Tex("$f([a,b]) = [c,d]$", font_size=fs2, color=c1t).next_to(downarrow_ivt, DOWN, buff=.4)


        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.8a.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.8a.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.8a.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.8a.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_definition, DOWN, buff=0.5)

        self.add(f_definition, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_4")+self.translate("Calc_1.Practice_MC.8a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("ivt")
            self.add_shift_sound(0.5)
            self.play(Write(downarrow_ivt), Unwrite(answer_a), Unwrite(answer_c), Unwrite(answer_d), answer_b.animate.shift(DOWN*1.4), run_time=.5)

            self.wait_until_bookmark("solution")
            self.play(Write(solution))

            self.wait_until_bookmark("turn_b_green")
            self.play(answer_b.animate.set_color(GREEN))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_8_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        continuos = self.translate("words.continuous")
        f_edges = MathTex("a,b \\in \\mathbb R, \\, a < b", color=c1t, font_size=fs2)
        f_interval = Tex("$f:[a,b]\\rightarrow\\mathbb{R}$ "+continuos, color=c1t, font_size=fs2)
        f_definition = VGroup(f_edges, f_interval).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        ivt = self.translate("words.ivt")
        downarrow_ivt = Tex("$\\Downarrow$", " "+ivt, font_size=fs2, color=c1t).next_to(f_definition, DOWN, buff=.4)
        downarrow_ivt[1].scale(.8)
        solution = Tex("$f([a,b]) = [c,d]$", font_size=fs2, color=c1t).next_to(downarrow_ivt, DOWN, buff=.4)


        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.8a.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.8a.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.8a.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.8a.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_definition, DOWN, buff=0.5)

        self.add(f_definition, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.8a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("ivt")
            self.add_shift_sound(0.5)
            self.play(Write(downarrow_ivt), Unwrite(answer_a), Unwrite(answer_c), Unwrite(answer_d), answer_b.animate.shift(DOWN*1.4), run_time=.5)

            self.wait_until_bookmark("solution")
            self.play(Write(solution))

            self.wait_until_bookmark("turn_b_green")
            self.play(answer_b.animate.set_color(GREEN))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_8_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        continuos = self.translate("words.continuous")
        f_edges = MathTex("a,b \\in \\mathbb R, \\, a < b", color=c1t, font_size=fs2)
        f_interval = Tex("$f:[a,b]\\rightarrow\\mathbb{R}$ "+continuos, color=c1t, font_size=fs2)
        f_definition = VGroup(f_edges, f_interval).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        ivt = self.translate("words.ivt")
        downarrow_ivt = Tex("$\\Downarrow$", " "+ivt, font_size=fs2, color=c1t).next_to(f_definition, DOWN, buff=.4)
        downarrow_ivt[1].scale(.8)
        solution = Tex("$f([a,b]) = [c,d]$", font_size=fs2, color=c1t).next_to(downarrow_ivt, DOWN, buff=.4)


        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.8a.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.8a.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.8a.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.8a.answer-d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_definition, DOWN, buff=0.5)

        self.add(f_definition, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.8a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("ivt")
            self.add_shift_sound(0.5)
            self.play(Write(downarrow_ivt), Unwrite(answer_a), Unwrite(answer_c), Unwrite(answer_d), answer_b.animate.shift(DOWN*1.4), run_time=.5)

            self.wait_until_bookmark("solution")
            self.play(Write(solution))

            self.wait_until_bookmark("turn_b_green")
            self.play(answer_b.animate.set_color(GREEN))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### 
##################################### 
# MC, even/odd
class Calc_practice_MC_9_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions= ast.literal_eval(self.translate("Calc_1.Practice_MC.9q.answerOptions")),
            correctAnswerIndex=3,
            questionText = self.translate("Calc_1.Practice_MC.9q.question")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\mathbb{R} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = Tex(self.translate("Calc_1.Practice_MC.9q.f_property"), color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.9q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.9q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.9q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.9q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.Practice_MC.9q.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_in_1")
            self.play(Write(f_definition))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f_property))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
        
class Calc_practice_MC_9_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\mathbb{R} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = Tex(self.translate("Calc_1.Practice_MC.9q.f_property"), color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        f_1 = MathTex("f(x) = 1", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.4)
        f_2 = MathTex("f(x) = x", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.4)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.9q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.9q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.9q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.9q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        self.add(f_info, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.9a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_1_in")
            self.add_shift_sound(.5)
            self.play(Write(f_1), answers.animate.shift(DOWN), run_time=.5)

            self.wait_until_bookmark("a_c_red")
            self.play(answer_a.animate.set_color(RED), answer_c.animate.set_color(RED))

            self.wait_until_bookmark("f_2_in")
            self.play(ReplacementTransform(f_1, f_2))

            self.wait_until_bookmark("b_red")
            self.play(answer_b.animate.set_color(RED))

            self.wait_until_bookmark("d_green")
            self.play(answer_d.animate.set_color(GREEN))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_9_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\mathbb{R} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = Tex(self.translate("Calc_1.Practice_MC.9q.f_property"), color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        f_1 = MathTex("f(x) = 1", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.4)
        f_2 = MathTex("f(x) = x", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.4)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.9q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.9q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.9q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.9q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        self.add(f_info, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.9a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_1_in")
            self.add_shift_sound(.5)
            self.play(Write(f_1), answers.animate.shift(DOWN), run_time=.5)

            self.wait_until_bookmark("a_c_red")
            self.play(answer_a.animate.set_color(RED), answer_c.animate.set_color(RED))

            self.wait_until_bookmark("f_2_in")
            self.play(ReplacementTransform(f_1, f_2))

            self.wait_until_bookmark("b_red")
            self.play(answer_b.animate.set_color(RED))

            self.wait_until_bookmark("d_green")
            self.play(answer_d.animate.set_color(GREEN))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_9_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\mathbb{R} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = Tex(self.translate("Calc_1.Practice_MC.9q.f_property"), color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        f_1 = MathTex("f(x) = 1", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.4)
        f_2 = MathTex("f(x) = x", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.4)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.9q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.9q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.9q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.9q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        self.add(f_info, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.9a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_1_in")
            self.add_shift_sound(.5)
            self.play(Write(f_1), answers.animate.shift(DOWN), run_time=.5)

            self.wait_until_bookmark("a_c_red")
            self.play(answer_a.animate.set_color(RED), answer_c.animate.set_color(RED))

            self.wait_until_bookmark("f_2_in")
            self.play(ReplacementTransform(f_1, f_2))

            self.wait_until_bookmark("b_red")
            self.play(answer_b.animate.set_color(RED))

            self.wait_until_bookmark("d_green")
            self.play(answer_d.animate.set_color(GREEN))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_9_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\mathbb{R} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = Tex(self.translate("Calc_1.Practice_MC.9q.f_property"), color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        f_1 = MathTex("f(x) = 1", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.4)
        f_2 = MathTex("f(x) = x", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.4)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.9q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.9q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.9q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.9q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        self.add(f_info, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_4")+self.translate("Calc_1.Practice_MC.9a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_1_in")
            self.add_shift_sound(.5)
            self.play(Write(f_1), answers.animate.shift(DOWN), run_time=.5)

            self.wait_until_bookmark("a_c_red")
            self.play(answer_a.animate.set_color(RED), answer_c.animate.set_color(RED))

            self.wait_until_bookmark("f_2_in")
            self.play(ReplacementTransform(f_1, f_2))

            self.wait_until_bookmark("b_red")
            self.play(answer_b.animate.set_color(RED))

            self.wait_until_bookmark("d_green")
            self.play(answer_d.animate.set_color(GREEN))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

##################################### 
##################################### 
# MC, integrals
class Calc_practice_MC_10_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions= ast.literal_eval(self.translate("Calc_1.Practice_MC.10q.answerOptions")),
            correctAnswerIndex=1,
            questionText = self.translate("Calc_1.Practice_MC.10q.question")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\mathbb{R} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = Tex(self.translate("Calc_1.Practice_MC.10q.f_property"), color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.10q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.10q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.10q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.10q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.Practice_MC.10q.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_in_1")
            self.play(Write(f_definition))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f_property))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Calc_practice_MC_10_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\mathbb{R} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = Tex(self.translate("Calc_1.Practice_MC.10q.f_property"), color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        self.add(f_info)

        cords = self.add_cords([-2,2,1], [0,4,1], x_ticks=[-2,2], y_ticks=[1,2,3], x_labels = ["-a", "a"]).shift(.4*UP)
        plane = cords[0]
        graph = plane.plot(lambda x: x**2, color=RED)
        graph_left = plane.plot(lambda x: x**2, color=RED, x_range=[-2,0,1000])
        graph_right = plane.plot(lambda x: x**2, color=RED, x_range=[0,2,1000])
        auc_left = plane.get_area(graph, x_range=(-2,0))
        auc_left_2 = plane.get_area(graph, x_range=(-2,0))
        auc_right = plane.get_area(graph, x_range=(0,2))
        


        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.10q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.10q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.10q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.10q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)
        self.add(answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.10a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("plot_in")
            self.add_shift_sound(.5)
            self.play(Write(cords), f_info.animate.shift(2.4*DOWN), answer_b.animate.shift(1.6*DOWN), Unwrite(answer_a), Unwrite(answer_c), Unwrite(answer_d), run_time=.5)
            self.add_pencil_sound(1)
            self.play(Create(graph), run_time=1)

            self.wait_until_bookmark("auc_left_in")
            self.play(Create(auc_left))

            self.wait_until_bookmark("auc_switch")
            self.play(ReplacementTransform(auc_left, auc_right))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN))

            self.wait_until_bookmark("auc_left_back_in")
            self.play(Create(auc_left_2))

            self.wait_until_bookmark("auc_final_switch")
            self.play(ReplacementTransform(auc_left_2, auc_right.copy()))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_10_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\mathbb{R} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = Tex(self.translate("Calc_1.Practice_MC.10q.f_property"), color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        self.add(f_info)

        cords = self.add_cords([-2,2,1], [0,4,1], x_ticks=[-2,2], y_ticks=[1,2,3], x_labels = ["-a", "a"]).shift(.4*UP)
        plane = cords[0]
        graph = plane.plot(lambda x: x**2, color=RED)
        graph_left = plane.plot(lambda x: x**2, color=RED, x_range=[-2,0,1000])
        graph_right = plane.plot(lambda x: x**2, color=RED, x_range=[0,2,1000])
        auc_left = plane.get_area(graph, x_range=(-2,0))
        auc_left_2 = plane.get_area(graph, x_range=(-2,0))
        auc_right = plane.get_area(graph, x_range=(0,2))
        


        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.10q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.10q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.10q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.10q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)
        self.add(answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_4")+self.translate("Calc_1.Practice_MC.10a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("plot_in")
            self.add_shift_sound(.5)
            self.play(Write(cords), f_info.animate.shift(2.4*DOWN), answer_b.animate.shift(1.6*DOWN), Unwrite(answer_a), Unwrite(answer_c), Unwrite(answer_d), run_time=.5)
            self.add_pencil_sound(1)
            self.play(Create(graph), run_time=1)

            self.wait_until_bookmark("auc_left_in")
            self.play(Create(auc_left))

            self.wait_until_bookmark("auc_switch")
            self.play(ReplacementTransform(auc_left, auc_right))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN))

            self.wait_until_bookmark("auc_left_back_in")
            self.play(Create(auc_left_2))

            self.wait_until_bookmark("auc_final_switch")
            self.play(ReplacementTransform(auc_left_2, auc_right.copy()))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_10_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\mathbb{R} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = Tex(self.translate("Calc_1.Practice_MC.10q.f_property"), color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        self.add(f_info)

        cords = self.add_cords([-2,2,1], [0,4,1], x_ticks=[-2,2], y_ticks=[1,2,3], x_labels = ["-a", "a"]).shift(.4*UP)
        plane = cords[0]
        graph = plane.plot(lambda x: x**2, color=RED)
        graph_left = plane.plot(lambda x: x**2, color=RED, x_range=[-2,0,1000])
        graph_right = plane.plot(lambda x: x**2, color=RED, x_range=[0,2,1000])
        auc_left = plane.get_area(graph, x_range=(-2,0))
        auc_left_2 = plane.get_area(graph, x_range=(-2,0))
        auc_right = plane.get_area(graph, x_range=(0,2))
        


        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.10q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.10q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.10q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.10q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)
        self.add(answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.10a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("plot_in")
            self.add_shift_sound(.5)
            self.play(Write(cords), f_info.animate.shift(2.4*DOWN), answer_b.animate.shift(1.6*DOWN), Unwrite(answer_a), Unwrite(answer_c), Unwrite(answer_d), run_time=.5)
            self.add_pencil_sound(1)
            self.play(Create(graph), run_time=1)

            self.wait_until_bookmark("auc_left_in")
            self.play(Create(auc_left))

            self.wait_until_bookmark("auc_switch")
            self.play(ReplacementTransform(auc_left, auc_right))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN))

            self.wait_until_bookmark("auc_left_back_in")
            self.play(Create(auc_left_2))

            self.wait_until_bookmark("auc_final_switch")
            self.play(ReplacementTransform(auc_left_2, auc_right.copy()))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_10_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\mathbb{R} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = Tex(self.translate("Calc_1.Practice_MC.10q.f_property"), color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        self.add(f_info)

        cords = self.add_cords([-2,2,1], [0,4,1], x_ticks=[-2,2], y_ticks=[1,2,3], x_labels = ["-a", "a"]).shift(.4*UP)
        plane = cords[0]
        graph = plane.plot(lambda x: x**2, color=RED)
        graph_left = plane.plot(lambda x: x**2, color=RED, x_range=[-2,0,1000])
        graph_right = plane.plot(lambda x: x**2, color=RED, x_range=[0,2,1000])
        auc_left = plane.get_area(graph, x_range=(-2,0))
        auc_left_2 = plane.get_area(graph, x_range=(-2,0))
        auc_right = plane.get_area(graph, x_range=(0,2))
        


        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.10q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.10q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.10q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.10q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)
        self.add(answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.10a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("plot_in")
            self.add_shift_sound(.5)
            self.play(Write(cords), f_info.animate.shift(2.4*DOWN), answer_b.animate.shift(1.6*DOWN), Unwrite(answer_a), Unwrite(answer_c), Unwrite(answer_d), run_time=.5)
            self.add_pencil_sound(1)
            self.play(Create(graph), run_time=1)

            self.wait_until_bookmark("auc_left_in")
            self.play(Create(auc_left))

            self.wait_until_bookmark("auc_switch")
            self.play(ReplacementTransform(auc_left, auc_right))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN))

            self.wait_until_bookmark("auc_left_back_in")
            self.play(Create(auc_left_2))

            self.wait_until_bookmark("auc_final_switch")
            self.play(ReplacementTransform(auc_left_2, auc_right.copy()))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


# Ana Ing TUB 2019/2

##################################### 
##################################### 
# MC, injective
class Calc_practice_MC_11_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions= ast.literal_eval(self.translate("Calc_1.Practice_MC.11q.answerOptions")),
            correctAnswerIndex=1,
            questionText = self.translate("Calc_1.Practice_MC.11q.question")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex(r"f: \{1,2,3\} \rightarrow \mathbb{R}", color=c1t, font_size=fs2)
        f_property = MathTex(r"f(x)=(x-1)^2", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.11q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.11q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.11q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.11q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.Practice_MC.11q.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_in_1")
            self.play(Write(f_definition))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f_property))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Calc_practice_MC_11_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\{1,2,3\\} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=(x-1)^2", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        f_1 = MathTex("f(1) = (1-1)^2=0", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.2).shift(UP)
        f_2 = MathTex("f(2) = (2-1)^2=1", color=ORANGE, font_size=fs2).next_to(f_1, DOWN, buff=.2)
        f_3 = MathTex("f(3) = (3-1)^2=4", color=ORANGE, font_size=fs2).next_to(f_2, DOWN, buff=.2)
        self.add(f_info)


        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.11q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.11q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.11q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.11q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)
        self.add(answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.11a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("reorganize")
            self.add_shift_sound(.5)
            self.play(answers.animate.shift(DOWN), f_info.animate.shift(UP), run_time=.5)

            self.wait_until_bookmark("f_1")
            self.play(Write(f_1))

            self.wait_until_bookmark("f_2")
            self.play(Write(f_2))

            self.wait_until_bookmark("f_3")
            self.play(Write(f_3))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_11_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\{1,2,3\\} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=(x-1)^2", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        f_1 = MathTex("f(1) = (1-1)^2=0", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.2).shift(UP)
        f_2 = MathTex("f(2) = (2-1)^2=1", color=ORANGE, font_size=fs2).next_to(f_1, DOWN, buff=.2)
        f_3 = MathTex("f(3) = (3-1)^2=4", color=ORANGE, font_size=fs2).next_to(f_2, DOWN, buff=.2)
        self.add(f_info)


        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.11q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.11q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.11q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.11q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)
        self.add(answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_4")+self.translate("Calc_1.Practice_MC.11a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("reorganize")
            self.add_shift_sound(.5)
            self.play(answers.animate.shift(DOWN), f_info.animate.shift(UP), run_time=.5)

            self.wait_until_bookmark("f_1")
            self.play(Write(f_1))

            self.wait_until_bookmark("f_2")
            self.play(Write(f_2))

            self.wait_until_bookmark("f_3")
            self.play(Write(f_3))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_11_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\{1,2,3\\} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=(x-1)^2", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        f_1 = MathTex("f(1) = (1-1)^2=0", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.2).shift(UP)
        f_2 = MathTex("f(2) = (2-1)^2=1", color=ORANGE, font_size=fs2).next_to(f_1, DOWN, buff=.2)
        f_3 = MathTex("f(3) = (3-1)^2=4", color=ORANGE, font_size=fs2).next_to(f_2, DOWN, buff=.2)
        self.add(f_info)


        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.11q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.11q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.11q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.11q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)
        self.add(answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.11a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("reorganize")
            self.add_shift_sound(.5)
            self.play(answers.animate.shift(DOWN), f_info.animate.shift(UP), run_time=.5)

            self.wait_until_bookmark("f_1")
            self.play(Write(f_1))

            self.wait_until_bookmark("f_2")
            self.play(Write(f_2))

            self.wait_until_bookmark("f_3")
            self.play(Write(f_3))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_11_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\{1,2,3\\} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=(x-1)^2", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        f_1 = MathTex("f(1) = (1-1)^2=0", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.2).shift(UP)
        f_2 = MathTex("f(2) = (2-1)^2=1", color=ORANGE, font_size=fs2).next_to(f_1, DOWN, buff=.2)
        f_3 = MathTex("f(3) = (3-1)^2=4", color=ORANGE, font_size=fs2).next_to(f_2, DOWN, buff=.2)
        self.add(f_info)


        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.11q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.11q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.11q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.11q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)
        self.add(answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.11a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("reorganize")
            self.add_shift_sound(.5)
            self.play(answers.animate.shift(DOWN), f_info.animate.shift(UP), run_time=.5)

            self.wait_until_bookmark("f_1")
            self.play(Write(f_1))

            self.wait_until_bookmark("f_2")
            self.play(Write(f_2))

            self.wait_until_bookmark("f_3")
            self.play(Write(f_3))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### 
##################################### 
# MC, limits
class Calc_practice_MC_12_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions= ast.literal_eval(self.translate("Calc_1.Practice_MC.12q.answerOptions")),
            correctAnswerIndex=3,
            questionText = self.translate("Calc_1.Practice_MC.12q.question")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        sequences = self.translate("Calc_1.Practice_MC.12q.sequences")
        a_b = Tex("$\\left(a_n\\right)_{n\\in\\mathbb N}, \\left(b_n\\right)_{n\\in\\mathbb N}$ "+ sequences, color=c1t, font_size=fs2)
        a = MathTex("\\lim_{n\\to\\infty}a_n=\\infty", color=c1t, font_size=fs2)
        b = MathTex("\\lim_{n\\to\\infty}b_n=0", color=c1t, font_size=fs2)
        a_n = VGroup(a_b, a, b).arrange(DOWN, buff=0.1, aligned_edge=LEFT).scale(.95).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) $\\lim_{n\\to\\infty}a_n\\cdot b_n=0$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\lim_{n\\to\\infty}a_n\\cdot b_n=\\infty$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\lim_{n\\to\\infty}a_n\\cdot b_n=1$", color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.12q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(a_n, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.Practice_MC.12q.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("a_b_in")
            self.play(Write(a_b))

            self.wait_until_bookmark("a_in")
            self.play(Write(a))

            self.wait_until_bookmark("b_in")
            self.play(Write(b))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Calc_practice_MC_12_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        sequences = self.translate("Calc_1.Practice_MC.12q.sequences")
        a_b = Tex("$\\left(a_n\\right)_{n\\in\\mathbb N}, \\left(b_n\\right)_{n\\in\\mathbb N}$ "+ sequences, color=c1t, font_size=fs2)
        a = MathTex("\\lim_{n\\to\\infty}a_n=\\infty", color=c1t, font_size=fs2)
        b = MathTex("\\lim_{n\\to\\infty}a_n=0", color=c1t, font_size=fs2)
        a_n = VGroup(a_b, a, b).arrange(DOWN, buff=0.1, aligned_edge=LEFT).scale(.95).set_y(2)
        example_1 = VGroup(MathTex("a_n = n, b_n = \\frac{1}{n^2}", color=ORANGE, font_size=fs3), MathTex("\\Downarrow", color=ORANGE, font_size=fs3), MathTex("\\lim_{n\\to\\infty} a_n\\cdot b_n =\\lim_{n\\to\\infty}\\tfrac1n=0", color=ORANGE, font_size=fs3)).arrange(DOWN, buff=0.1).next_to(a_n, DOWN, buff=0.2).shift(UP*.4)
        example_2 = VGroup(MathTex("a_n = n, b_n = \\frac{1}{n}", color=ORANGE, font_size=fs3), MathTex("\\Downarrow", color=ORANGE, font_size=fs3), MathTex("\\lim_{n\\to\\infty} a_n\\cdot b_n =\\lim_{n\\to\\infty}1=1", color=ORANGE, font_size=fs3)).arrange(DOWN, buff=0.1).next_to(a_n, DOWN, buff=0.2).shift(UP*.4)
        example_3 = VGroup(MathTex("a_n = n^2, b_n = \\frac{1}{n}", color=ORANGE, font_size=fs3), MathTex("\\Downarrow", color=ORANGE, font_size=fs3), MathTex("\\lim_{n\\to\\infty} a_n\\cdot b_n =\\lim_{n\\to\\infty}n=\\infty", color=ORANGE, font_size=fs3)).arrange(DOWN, buff=0.1).next_to(a_n, DOWN, buff=0.2).shift(UP*.4)

        # Define the answer options using Tex
        answer_a = Tex("a) $\\lim_{n\\to\\infty}a_n\\cdot b_n=0$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\lim_{n\\to\\infty}a_n\\cdot b_n=\\infty$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\lim_{n\\to\\infty}a_n\\cdot b_n=1$", color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.12q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(a_n, DOWN, buff=0.8)

        self.add(a_n, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.12a.voiceover")
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("example_1_in")
            self.add_shift_sound(.5)
            self.play(Write(example_1), answers.animate.shift(DOWN), a_n.animate.shift(UP*.4))

            self.wait_until_bookmark("example_2_in")
            self.play(ReplacementTransform(example_1, example_2))

            self.wait_until_bookmark("example_3_in")
            self.play(ReplacementTransform(example_2, example_3))

            self.wait_until_bookmark("d_green")
            self.play(answer_d.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_12_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        sequences = self.translate("Calc_1.Practice_MC.12q.sequences")
        a_b = Tex("$\\left(a_n\\right)_{n\\in\\mathbb N}, \\left(b_n\\right)_{n\\in\\mathbb N}$ "+ sequences, color=c1t, font_size=fs2)
        a = MathTex("\\lim_{n\\to\\infty}a_n=\\infty", color=c1t, font_size=fs2)
        b = MathTex("\\lim_{n\\to\\infty}a_n=0", color=c1t, font_size=fs2)
        a_n = VGroup(a_b, a, b).arrange(DOWN, buff=0.1, aligned_edge=LEFT).scale(.95).set_y(2)
        example_1 = VGroup(MathTex("a_n = n, b_n = \\frac{1}{n^2}", color=ORANGE, font_size=fs3), MathTex("\\Downarrow", color=ORANGE, font_size=fs3), MathTex("\\lim_{n\\to\\infty} a_n\\cdot b_n =\\lim_{n\\to\\infty}\\tfrac1n=0", color=ORANGE, font_size=fs3)).arrange(DOWN, buff=0.1).next_to(a_n, DOWN, buff=0.2).shift(UP*.4)
        example_2 = VGroup(MathTex("a_n = n, b_n = \\frac{1}{n}", color=ORANGE, font_size=fs3), MathTex("\\Downarrow", color=ORANGE, font_size=fs3), MathTex("\\lim_{n\\to\\infty} a_n\\cdot b_n =\\lim_{n\\to\\infty}1=1", color=ORANGE, font_size=fs3)).arrange(DOWN, buff=0.1).next_to(a_n, DOWN, buff=0.2).shift(UP*.4)
        example_3 = VGroup(MathTex("a_n = n^2, b_n = \\frac{1}{n}", color=ORANGE, font_size=fs3), MathTex("\\Downarrow", color=ORANGE, font_size=fs3), MathTex("\\lim_{n\\to\\infty} a_n\\cdot b_n =\\lim_{n\\to\\infty}n=\\infty", color=ORANGE, font_size=fs3)).arrange(DOWN, buff=0.1).next_to(a_n, DOWN, buff=0.2).shift(UP*.4)

        # Define the answer options using Tex
        answer_a = Tex("a) $\\lim_{n\\to\\infty}a_n\\cdot b_n=0$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\lim_{n\\to\\infty}a_n\\cdot b_n=\\infty$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\lim_{n\\to\\infty}a_n\\cdot b_n=1$", color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.12q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(a_n, DOWN, buff=0.8)

        self.add(a_n, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.12a.voiceover")
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("example_1_in")
            self.add_shift_sound(.5)
            self.play(Write(example_1), answers.animate.shift(DOWN), a_n.animate.shift(UP*.4))

            self.wait_until_bookmark("example_2_in")
            self.play(ReplacementTransform(example_1, example_2))

            self.wait_until_bookmark("example_3_in")
            self.play(ReplacementTransform(example_2, example_3))

            self.wait_until_bookmark("d_green")
            self.play(answer_d.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_12_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        sequences = self.translate("Calc_1.Practice_MC.12q.sequences")
        a_b = Tex("$\\left(a_n\\right)_{n\\in\\mathbb N}, \\left(b_n\\right)_{n\\in\\mathbb N}$ "+ sequences, color=c1t, font_size=fs2)
        a = MathTex("\\lim_{n\\to\\infty}a_n=\\infty", color=c1t, font_size=fs2)
        b = MathTex("\\lim_{n\\to\\infty}a_n=0", color=c1t, font_size=fs2)
        a_n = VGroup(a_b, a, b).arrange(DOWN, buff=0.1, aligned_edge=LEFT).scale(.95).set_y(2)
        example_1 = VGroup(MathTex("a_n = n, b_n = \\frac{1}{n^2}", color=ORANGE, font_size=fs3), MathTex("\\Downarrow", color=ORANGE, font_size=fs3), MathTex("\\lim_{n\\to\\infty} a_n\\cdot b_n =\\lim_{n\\to\\infty}\\tfrac1n=0", color=ORANGE, font_size=fs3)).arrange(DOWN, buff=0.1).next_to(a_n, DOWN, buff=0.2).shift(UP*.4)
        example_2 = VGroup(MathTex("a_n = n, b_n = \\frac{1}{n}", color=ORANGE, font_size=fs3), MathTex("\\Downarrow", color=ORANGE, font_size=fs3), MathTex("\\lim_{n\\to\\infty} a_n\\cdot b_n =\\lim_{n\\to\\infty}1=1", color=ORANGE, font_size=fs3)).arrange(DOWN, buff=0.1).next_to(a_n, DOWN, buff=0.2).shift(UP*.4)
        example_3 = VGroup(MathTex("a_n = n^2, b_n = \\frac{1}{n}", color=ORANGE, font_size=fs3), MathTex("\\Downarrow", color=ORANGE, font_size=fs3), MathTex("\\lim_{n\\to\\infty} a_n\\cdot b_n =\\lim_{n\\to\\infty}n=\\infty", color=ORANGE, font_size=fs3)).arrange(DOWN, buff=0.1).next_to(a_n, DOWN, buff=0.2).shift(UP*.4)

        # Define the answer options using Tex
        answer_a = Tex("a) $\\lim_{n\\to\\infty}a_n\\cdot b_n=0$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\lim_{n\\to\\infty}a_n\\cdot b_n=\\infty$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\lim_{n\\to\\infty}a_n\\cdot b_n=1$", color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.12q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(a_n, DOWN, buff=0.8)

        self.add(a_n, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.12a.voiceover")
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("example_1_in")
            self.add_shift_sound(.5)
            self.play(Write(example_1), answers.animate.shift(DOWN), a_n.animate.shift(UP*.4))

            self.wait_until_bookmark("example_2_in")
            self.play(ReplacementTransform(example_1, example_2))

            self.wait_until_bookmark("example_3_in")
            self.play(ReplacementTransform(example_2, example_3))

            self.wait_until_bookmark("d_green")
            self.play(answer_d.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_12_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        sequences = self.translate("Calc_1.Practice_MC.12q.sequences")
        a_b = Tex("$\\left(a_n\\right)_{n\\in\\mathbb N}, \\left(b_n\\right)_{n\\in\\mathbb N}$ "+ sequences, color=c1t, font_size=fs2)
        a = MathTex("\\lim_{n\\to\\infty}a_n=\\infty", color=c1t, font_size=fs2)
        b = MathTex("\\lim_{n\\to\\infty}a_n=0", color=c1t, font_size=fs2)
        a_n = VGroup(a_b, a, b).arrange(DOWN, buff=0.1, aligned_edge=LEFT).scale(.95).set_y(2)
        example_1 = VGroup(MathTex("a_n = n, b_n = \\frac{1}{n^2}", color=ORANGE, font_size=fs3), MathTex("\\Downarrow", color=ORANGE, font_size=fs3), MathTex("\\lim_{n\\to\\infty} a_n\\cdot b_n =\\lim_{n\\to\\infty}\\tfrac1n=0", color=ORANGE, font_size=fs3)).arrange(DOWN, buff=0.1).next_to(a_n, DOWN, buff=0.2).shift(UP*.4)
        example_2 = VGroup(MathTex("a_n = n, b_n = \\frac{1}{n}", color=ORANGE, font_size=fs3), MathTex("\\Downarrow", color=ORANGE, font_size=fs3), MathTex("\\lim_{n\\to\\infty} a_n\\cdot b_n =\\lim_{n\\to\\infty}1=1", color=ORANGE, font_size=fs3)).arrange(DOWN, buff=0.1).next_to(a_n, DOWN, buff=0.2).shift(UP*.4)
        example_3 = VGroup(MathTex("a_n = n^2, b_n = \\frac{1}{n}", color=ORANGE, font_size=fs3), MathTex("\\Downarrow", color=ORANGE, font_size=fs3), MathTex("\\lim_{n\\to\\infty} a_n\\cdot b_n =\\lim_{n\\to\\infty}n=\\infty", color=ORANGE, font_size=fs3)).arrange(DOWN, buff=0.1).next_to(a_n, DOWN, buff=0.2).shift(UP*.4)

        # Define the answer options using Tex
        answer_a = Tex("a) $\\lim_{n\\to\\infty}a_n\\cdot b_n=0$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\lim_{n\\to\\infty}a_n\\cdot b_n=\\infty$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\lim_{n\\to\\infty}a_n\\cdot b_n=1$", color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.12q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(a_n, DOWN, buff=0.8)

        self.add(a_n, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_4")+self.translate("Calc_1.Practice_MC.12a.voiceover")
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("example_1_in")
            self.add_shift_sound(.5)
            self.play(Write(example_1), answers.animate.shift(DOWN), a_n.animate.shift(UP*.4))

            self.wait_until_bookmark("example_2_in")
            self.play(ReplacementTransform(example_1, example_2))

            self.wait_until_bookmark("example_3_in")
            self.play(ReplacementTransform(example_2, example_3))

            self.wait_until_bookmark("d_green")
            self.play(answer_d.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### 
##################################### 
# MC, partial fraction decomposition
class Calc_practice_MC_14_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions= ast.literal_eval(self.translate("Calc_1.Practice_MC.14q.answerOptions")),
            correctAnswerIndex=1,
            questionText = self.translate("Calc_1.Practice_MC.14q.question")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        let_p = self.translate("Calc_1.Practice_MC.14q.let_p")
        f_definition = Tex(let_p, color=c1t, font_size=fs2)
        f_property = MathTex("p(z)=z^3-22z^2+7z-1", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.14q.answer_a"), color=c1t, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.14q.answer_b"), color=c1t, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.14q.answer_c"), color=c1t, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.14q.answer_d"), color=c1t, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.Practice_MC.14q.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_in_1")
            self.play(Write(f_definition))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f_property))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_14_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        let_p = self.translate("Calc_1.Practice_MC.14q.let_p")
        f_definition = Tex(let_p, color=c1t, font_size=fs2)
        f_property = MathTex("p(z)=z^3-22z^2+7z-1", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).scale(.9).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.14q.answer_a"), color=c1t, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.14q.answer_b"), color=c1t, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.14q.answer_c"), color=c1t, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.14q.answer_d"), color=c1t, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)
        self.add(f_info, answers)
        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.14a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("highlight_sol")
            self.play(answers[1].animate.set_color(GREEN), answers[0].animate.set_color(RED), answers[2].animate.set_color(RED), answers[3].animate.set_color(RED), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_14_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        let_p = self.translate("Calc_1.Practice_MC.14q.let_p")
        f_definition = Tex(let_p, color=c1t, font_size=fs2)
        f_property = MathTex("p(z)=z^3-22z^2+7z-1", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).scale(.9).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.14q.answer_a"), color=c1t, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.14q.answer_b"), color=c1t, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.14q.answer_c"), color=c1t, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.14q.answer_d"), color=c1t, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)
        self.add(f_info, answers)
        # Define the voiceover text
        voiceover_text = self.translate("General.correct_4")+self.translate("Calc_1.Practice_MC.14a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("highlight_sol")
            self.play(answers[1].animate.set_color(GREEN), answers[0].animate.set_color(RED), answers[2].animate.set_color(RED), answers[3].animate.set_color(RED), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_14_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        let_p = self.translate("Calc_1.Practice_MC.14q.let_p")
        f_definition = Tex(let_p, color=c1t, font_size=fs2)
        f_property = MathTex("p(z)=z^3-22z^2+7z-1", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).scale(.9).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.14q.answer_a"), color=c1t, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.14q.answer_b"), color=c1t, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.14q.answer_c"), color=c1t, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.14q.answer_d"), color=c1t, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)
        self.add(f_info, answers)
        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.14a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("highlight_sol")
            self.play(answers[1].animate.set_color(GREEN), answers[0].animate.set_color(RED), answers[2].animate.set_color(RED), answers[3].animate.set_color(RED), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_14_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        let_p = self.translate("Calc_1.Practice_MC.14q.let_p")
        f_definition = Tex(let_p, color=c1t, font_size=fs2)
        f_property = MathTex("p(z)=z^3-22z^2+7z-1", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).scale(.9).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.14q.answer_a"), color=c1t, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.14q.answer_b"), color=c1t, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.14q.answer_c"), color=c1t, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.14q.answer_d"), color=c1t, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)
        self.add(f_info, answers)
        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.14a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("highlight_sol")
            self.play(answers[1].animate.set_color(GREEN), answers[0].animate.set_color(RED), answers[2].animate.set_color(RED), answers[3].animate.set_color(RED), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

##################################### 
##################################### 
# MC, Extreme value theorem
class Calc_practice_MC_15_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions= ast.literal_eval(self.translate("Calc_1.Practice_MC.15q.answerOptions")),
            correctAnswerIndex=1,
            questionText = self.translate("Calc_1.Practice_MC.15q.question")
        )
    
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f:[-\\pi,\\pi]\\rightarrow \\mathbb R", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=e^{-\\sqrt{x^2+1}+1}", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.15q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.15q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.15q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.15q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.Practice_MC.15q.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_in_1")
            self.play(Write(f_definition))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f_property))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_15_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f:[-\\pi,\\pi]\\rightarrow \\mathbb R", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=e^{-\\sqrt{x^2+1}+1}", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        implication = MathTex("\\Downarrow", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.2).shift(UP*.4)
        sol = Tex(self.translate("Calc_1.Practice_MC.15q.sol"), color=ORANGE, font_size=fs3).next_to(implication, DOWN, buff=.2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.15q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.15q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.15q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.15q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        self.add(f_info, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_1")+self.translate("Calc_1.Practice_MC.15a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("implication_in")
            self.play(Write(implication), answers.animate.shift(DOWN), f_info.animate.shift(UP*.4))
            
            self.wait_until_bookmark("sol_in")
            self.play(Write(sol))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_15_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f:[-\\pi,\\pi]\\rightarrow \\mathbb R", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=e^{-\\sqrt{x^2+1}+1}", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        implication = MathTex("\\Downarrow", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.2).shift(UP*.4)
        sol = Tex(self.translate("Calc_1.Practice_MC.15q.sol"), color=ORANGE, font_size=fs3).next_to(implication, DOWN, buff=.2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.15q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.15q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.15q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.15q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        self.add(f_info, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_1")+self.translate("Calc_1.Practice_MC.15a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("implication_in")
            self.play(Write(implication), answers.animate.shift(DOWN), f_info.animate.shift(UP*.4))
            
            self.wait_until_bookmark("sol_in")
            self.play(Write(sol))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_15_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f:[-\\pi,\\pi]\\rightarrow \\mathbb R", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=e^{-\\sqrt{x^2+1}+1}", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        implication = MathTex("\\Downarrow", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.2).shift(UP*.4)
        sol = Tex(self.translate("Calc_1.Practice_MC.15q.sol"), color=ORANGE, font_size=fs3).next_to(implication, DOWN, buff=.2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.15q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.15q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.15q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.15q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        self.add(f_info, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_1")+self.translate("Calc_1.Practice_MC.15a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("implication_in")
            self.play(Write(implication), answers.animate.shift(DOWN), f_info.animate.shift(UP*.4))
            
            self.wait_until_bookmark("sol_in")
            self.play(Write(sol))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_15_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f:[-\\pi,\\pi]\\rightarrow \\mathbb R", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=e^{-\\sqrt{x^2+1}+1}", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        implication = MathTex("\\Downarrow", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.2).shift(UP*.4)
        sol = Tex(self.translate("Calc_1.Practice_MC.15q.sol"), color=ORANGE, font_size=fs3).next_to(implication, DOWN, buff=.2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.15q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.15q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.15q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.15q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        self.add(f_info, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_1")+self.translate("Calc_1.Practice_MC.15a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("implication_in")
            self.play(Write(implication), answers.animate.shift(DOWN), f_info.animate.shift(UP*.4))
            
            self.wait_until_bookmark("sol_in")
            self.play(Write(sol))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

##################################### 
##################################### 
# MC, Even/odd functions
class Calc_practice_MC_16_q(SophiaCursorScene):
    

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions= ast.literal_eval(self.translate("Calc_1.Practice_MC.16q.answerOptions")),
            correctAnswerIndex=0,
            questionText = self.translate("Calc_1.Practice_MC.16q.question")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f:\\mathbb R\\rightarrow \\mathbb R", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=13x^3-3x", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.16q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.16q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.16q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.16q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.Practice_MC.16q.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_in_1")
            self.play(Write(f_definition))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f_property))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_16_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f:\\mathbb R\\rightarrow \\mathbb R", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=", "13x^3", "-3x", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.16q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.16q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.16q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.16q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        self.add(f_info, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_1")+self.translate("Calc_1.Practice_MC.16a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("deg_three")
            self.play(Indicate(f_property[1], color=RED))

            self.wait_until_bookmark("odd")
            self.play(Indicate(f_property[2], color=RED))

            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_16_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f:\\mathbb R\\rightarrow \\mathbb R", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=", "13x^3", "-3x", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.16q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.16q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.16q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.16q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        self.add(f_info, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_1")+self.translate("Calc_1.Practice_MC.16a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("deg_three")
            self.play(Indicate(f_property[1], color=RED))

            self.wait_until_bookmark("odd")
            self.play(Indicate(f_property[2], color=RED))

            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_16_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f:\\mathbb R\\rightarrow \\mathbb R", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=", "13x^3", "-3x", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.16q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.16q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.16q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.16q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        self.add(f_info, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_1")+self.translate("Calc_1.Practice_MC.16a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("deg_three")
            self.play(Indicate(f_property[1], color=RED))

            self.wait_until_bookmark("odd")
            self.play(Indicate(f_property[2], color=RED))

            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_16_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f:\\mathbb R\\rightarrow \\mathbb R", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=", "13x^3", "-3x", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.16q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.16q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.16q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.16q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        self.add(f_info, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_1")+self.translate("Calc_1.Practice_MC.16a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("deg_three")
            self.play(Indicate(f_property[1], color=RED))

            self.wait_until_bookmark("odd")
            self.play(Indicate(f_property[2], color=RED))

            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

##################################### 
##################################### 
# MC, Complex Numbers
class Calc_practice_MC_17_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions= ast.literal_eval(self.translate("Calc_1.Practice_MC.17q.answerOptions")),
            correctAnswerIndex=0,
            questionText = self.translate("Calc_1.Practice_MC.17q.question")
        )
    
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        equation = MathTex(r"z^4=-1+i", color=c1t, font_size=fs2)
        z_in_c = MathTex(r"z\in\mathbb C", color=c1t, font_size=fs2)
        complex_equation = VGroup(equation, z_in_c).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.17q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.17q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.17q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.17q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(complex_equation, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.Practice_MC.17q.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("eq_in")
            self.play(Write(equation))

            self.wait_until_bookmark("z_in")
            self.play(Write(z_in_c))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_17_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        equation_1 = MathTex(r"z^4=-1+i", color=c1t, font_size=fs2)
        z_in_c = MathTex(r"z\in\mathbb C", color=c1t, font_size=fs2)
        complex_equation = VGroup(equation_1, z_in_c).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        step_1 = MathTex(r"\Downarrow", r"\sqrt[4]{\Box}", color=BLUE, font_size=fs2).next_to(complex_equation, DOWN, buff=.2)
        equation_2 = MathTex(r"z=\sqrt[4]{-1+i}", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.2)
        
        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.17q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.17q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.17q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.17q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(complex_equation, DOWN, buff=0.8)

        self.add(answers, complex_equation)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_3")+self.translate("Calc_1.Practice_MC.17a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("step_1")
            self.add_shift_sound(.5)
            self.play(Write(step_1), answers.animate.shift(DOWN), run_time=.5)

            self.wait_until_bookmark("equation_2")
            self.play(Write(equation_2), run_time=.5)

            self.wait_until_bookmark("highlight_sol")
            self.play(answer_a.animate.set_color(GREEN), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_17_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        equation_1 = MathTex(r"z^4=-1+i", color=c1t, font_size=fs2)
        z_in_c = MathTex(r"z\in\mathbb C", color=c1t, font_size=fs2)
        complex_equation = VGroup(equation_1, z_in_c).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        step_1 = MathTex(r"\Downarrow", r"\sqrt[4]{\Box}", color=BLUE, font_size=fs2).next_to(complex_equation, DOWN, buff=.2)
        equation_2 = MathTex(r"z=\sqrt[4]{-1+i}", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.2)
        
        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.17q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.17q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.17q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.17q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(complex_equation, DOWN, buff=0.8)

        self.add(answers, complex_equation)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.17a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("step_1")
            self.add_shift_sound(.5)
            self.play(Write(step_1), answers.animate.shift(DOWN), run_time=.5)

            self.wait_until_bookmark("equation_2")
            self.play(Write(equation_2), run_time=.5)

            self.wait_until_bookmark("highlight_sol")
            self.play(answer_a.animate.set_color(GREEN), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_17_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        equation_1 = MathTex(r"z^4=-1+i", color=c1t, font_size=fs2)
        z_in_c = MathTex(r"z\in\mathbb C", color=c1t, font_size=fs2)
        complex_equation = VGroup(equation_1, z_in_c).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        step_1 = MathTex(r"\Downarrow", r"\sqrt[4]{\Box}", color=BLUE, font_size=fs2).next_to(complex_equation, DOWN, buff=.2)
        equation_2 = MathTex(r"z=\sqrt[4]{-1+i}", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.2)
        
        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.17q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.17q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.17q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.17q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(complex_equation, DOWN, buff=0.8)

        self.add(answers, complex_equation)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.17a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("step_1")
            self.add_shift_sound(.5)
            self.play(Write(step_1), answers.animate.shift(DOWN), run_time=.5)

            self.wait_until_bookmark("equation_2")
            self.play(Write(equation_2), run_time=.5)

            self.wait_until_bookmark("highlight_sol")
            self.play(answer_a.animate.set_color(GREEN), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_17_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        equation_1 = MathTex(r"z^4=-1+i", color=c1t, font_size=fs2)
        z_in_c = MathTex(r"z\in\mathbb C", color=c1t, font_size=fs2)
        complex_equation = VGroup(equation_1, z_in_c).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        step_1 = MathTex(r"\Downarrow", r"\sqrt[4]{\Box}", color=BLUE, font_size=fs2).next_to(complex_equation, DOWN, buff=.2)
        equation_2 = MathTex(r"z=\sqrt[4]{-1+i}", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.2)
        
        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.17q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.17q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.17q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.17q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(complex_equation, DOWN, buff=0.8)

        self.add(answers, complex_equation)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.Practice_MC.17a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("step_1")
            self.add_shift_sound(.5)
            self.play(Write(step_1), answers.animate.shift(DOWN), run_time=.5)

            self.wait_until_bookmark("equation_2")
            self.play(Write(equation_2), run_time=.5)

            self.wait_until_bookmark("highlight_sol")
            self.play(answer_a.animate.set_color(GREEN), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### 
##################################### 
# MC, Mean value theorem for integrals
class Calc_practice_MC_18_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions= ast.literal_eval(self.translate("Calc_1.Practice_MC.18q.answerOptions")),
            correctAnswerIndex=0,
            questionText = self.translate("Calc_1.Practice_MC.18q.question")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_term = Tex("$f:\\mathbb R \\rightarrow \\mathbb R$ stetig", color=c1t, font_size=fs2)
        f_greater_0 = MathTex("f(x)>0\\,\\forall x\\in[0,1]", color=c1t, font_size=fs2)
        f = VGroup(f_term, f_greater_0).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.18q.answer_a"), color=BLUE, font_size=fs3, tex_environment="flushright")
        answer_b = Tex(self.translate("Calc_1.Practice_MC.18q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.18q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.18q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.Practice_MC.18q.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("f_in_1")
            self.play(Write(f_term))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f_greater_0))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_18_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_term = Tex("$f:\\mathbb R \\rightarrow \\mathbb R$ stetig", color=c1t, font_size=fs2)
        f_greater_0 = MathTex("f(x)>0\\,\\forall x\\in[0,1]", color=c1t, font_size=fs2)
        f = VGroup(f_term, f_greater_0).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        mvt = self.translate("words.mvt")
        implication_mvt = Tex("$\\Downarrow$ ", mvt, color=ORANGE, font_size=fs3).next_to(f, DOWN, buff=.2).shift(UP*.4)
        solution = Tex(self.translate("Calc_1.Practice_MC.18q.solution"), color=ORANGE, font_size=fs3).next_to(implication_mvt, DOWN, buff=.2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.18q.answer_a"), color=BLUE, font_size=fs3, tex_environment="flushright")
        answer_b = Tex(self.translate("Calc_1.Practice_MC.18q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.18q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.18q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.4)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_1")+self.translate("Calc_1.Practice_MC.18a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("implication_in")
            self.play(Write(implication_mvt), answers.animate.shift(DOWN), f.animate.shift(UP*.4))

            self.wait_until_bookmark("solution")
            self.play(Write(solution))

            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_18_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_term = Tex("$f:\\mathbb R \\rightarrow \\mathbb R$ stetig", color=c1t, font_size=fs2)
        f_greater_0 = MathTex("f(x)>0\\,\\forall x\\in[0,1]", color=c1t, font_size=fs2)
        f = VGroup(f_term, f_greater_0).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        mvt = self.translate("words.mvt")
        implication_mvt = Tex("$\\Downarrow$ ", mvt, color=ORANGE, font_size=fs3).next_to(f, DOWN, buff=.2).shift(UP*.4)
        solution = Tex(self.translate("Calc_1.Practice_MC.18q.solution"), color=ORANGE, font_size=fs3).next_to(implication_mvt, DOWN, buff=.2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.18q.answer_a"), color=BLUE, font_size=fs3, tex_environment="flushright")
        answer_b = Tex(self.translate("Calc_1.Practice_MC.18q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.18q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.18q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.4)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_1")+self.translate("Calc_1.Practice_MC.18a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("implication_in")
            self.play(Write(implication_mvt), answers.animate.shift(DOWN), f.animate.shift(UP*.4))

            self.wait_until_bookmark("solution")
            self.play(Write(solution))

            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_18_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_term = Tex("$f:\\mathbb R \\rightarrow \\mathbb R$ stetig", color=c1t, font_size=fs2)
        f_greater_0 = MathTex("f(x)>0\\,\\forall x\\in[0,1]", color=c1t, font_size=fs2)
        f = VGroup(f_term, f_greater_0).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        mvt = self.translate("words.mvt")
        implication_mvt = Tex("$\\Downarrow$ ", mvt, color=ORANGE, font_size=fs3).next_to(f, DOWN, buff=.2).shift(UP*.4)
        solution = Tex(self.translate("Calc_1.Practice_MC.18q.solution"), color=ORANGE, font_size=fs3).next_to(implication_mvt, DOWN, buff=.2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.18q.answer_a"), color=BLUE, font_size=fs3, tex_environment="flushright")
        answer_b = Tex(self.translate("Calc_1.Practice_MC.18q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.18q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.18q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.4)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_1")+self.translate("Calc_1.Practice_MC.18a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("implication_in")
            self.play(Write(implication_mvt), answers.animate.shift(DOWN), f.animate.shift(UP*.4))

            self.wait_until_bookmark("solution")
            self.play(Write(solution))

            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_18_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_term = Tex("$f:\\mathbb R \\rightarrow \\mathbb R$ stetig", color=c1t, font_size=fs2)
        f_greater_0 = MathTex("f(x)>0\\,\\forall x\\in[0,1]", color=c1t, font_size=fs2)
        f = VGroup(f_term, f_greater_0).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        mvt = self.translate("words.mvt")
        implication_mvt = Tex("$\\Downarrow$ ", mvt, color=ORANGE, font_size=fs3).next_to(f, DOWN, buff=.2).shift(UP*.4)
        solution = Tex(self.translate("Calc_1.Practice_MC.18q.solution"), color=ORANGE, font_size=fs3).next_to(implication_mvt, DOWN, buff=.2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.18q.answer_a"), color=BLUE, font_size=fs3, tex_environment="flushright")
        answer_b = Tex(self.translate("Calc_1.Practice_MC.18q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.18q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.18q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.4)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_1")+self.translate("Calc_1.Practice_MC.18a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("implication_in")
            self.play(Write(implication_mvt), answers.animate.shift(DOWN), f.animate.shift(UP*.4))

            self.wait_until_bookmark("solution")
            self.play(Write(solution))

            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### 
##################################### 
# MC, Even/odd functions
class Calc_practice_MC_19_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions= ast.literal_eval(self.translate("Calc_1.Practice_MC.19q.answerOptions")),
            correctAnswerIndex=1,
            questionText = self.translate("Calc_1.Practice_MC.19q.question")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # # Define the function text using MathTex
        # f = Tex(self.translate("Calc_1.Practice_MC.19q.f"), color=c1t, font_size=fs2).set_y(2)
        f = VGroup(Tex(r"$f:\mathbb R\rightarrow\mathbb R$", color=c1t, font_size=fs2), Tex(self.translate("Calc_1.Practice_MC.19q.f"), color=c1t, font_size=fs2)).arrange(DOWN, buff=.1, aligned_edge=LEFT).set_y(1.8)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.19q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.19q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.19q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f(x)=x^3$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.Practice_MC.19q.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(f), run_time=1)

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#

class Calc_practice_MC_19_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        # Define the function text using MathTex
        f = VGroup(Tex(r"$f:\mathbb R\rightarrow\mathbb R$", color=c1t, font_size=fs2), Tex(self.translate("Calc_1.Practice_MC.19q.f"), color=c1t, font_size=fs2)).arrange(DOWN, buff=.1, aligned_edge=LEFT).set_y(1.8)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.19q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.19q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.19q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f(x)=x^3$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

        cords = self.add_cords([-2,2,1], [0,4,1], x_ticks=[-2,2], y_ticks=[2,4], width=2, height=2)
        plane = cords[0]
        graph = plane.plot(lambda x: x**2, color=RED)

        self.add(f, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.19a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("plot_in")
            self.play(Write(plane), f.animate.shift(UP*1.4), answers.animate.shift(DOWN))
            self.add_pencil_sound(1)
            self.play(Create(graph), run_time=1)

            self.wait_until_bookmark("highlight_x_0")
            self.play(Indicate(plane.y_axis, color=RED, scale_factor=1.5))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_19_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f = Tex(self.translate("Calc_1.Practice_MC.19q.f"), color=c1t, font_size=fs2).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.19q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.19q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.19q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f(x)=x^3$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

        cords = self.add_cords([-2,2,1], [0,4,1], x_ticks=[-2,2], y_ticks=[2,4], width=2, height=2)
        plane = cords[0]
        graph = plane.plot(lambda x: x**2, color=RED)

        self.add(f, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_4")+self.translate("Calc_1.Practice_MC.19a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("plot_in")
            self.play(Write(plane), f.animate.shift(UP*1.4), answers.animate.shift(DOWN))
            self.add_pencil_sound(1)
            self.play(Create(graph), run_time=1)

            self.wait_until_bookmark("highlight_x_0")
            self.play(Indicate(plane.y_axis, color=RED, scale_factor=1.5))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_19_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f = Tex(self.translate("Calc_1.Practice_MC.19q.f"), color=c1t, font_size=fs2).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.19q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.19q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.19q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f(x)=x^3$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

        cords = self.add_cords([-2,2,1], [0,4,1], x_ticks=[-2,2], y_ticks=[2,4], width=2, height=2)
        plane = cords[0]
        graph = plane.plot(lambda x: x**2, color=RED)

        self.add(f, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.19a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("plot_in")
            self.play(Write(plane), f.animate.shift(UP*1.4), answers.animate.shift(DOWN))
            self.add_pencil_sound(1)
            self.play(Create(graph), run_time=1)

            self.wait_until_bookmark("highlight_x_0")
            self.play(Indicate(plane.y_axis, color=RED, scale_factor=1.5))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_19_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f = Tex(self.translate("Calc_1.Practice_MC.19q.f"), color=c1t, font_size=fs2).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.19q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.19q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.19q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f(x)=x^3$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

        cords = self.add_cords([-2,2,1], [0,4,1], x_ticks=[-2,2], y_ticks=[2,4], width=2, height=2)
        plane = cords[0]
        graph = plane.plot(lambda x: x**2, color=RED)

        self.add(f, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.19a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("plot_in")
            self.play(Write(plane), f.animate.shift(UP*1.4), answers.animate.shift(DOWN))
            self.add_pencil_sound(1)
            self.play(Create(graph), run_time=1)

            self.wait_until_bookmark("highlight_x_0")
            self.play(Indicate(plane.y_axis, color=RED, scale_factor=1.5))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### 
##################################### 
# class Calc_practice_MC_20_q(SophiaCursorScene):

#     def task_definition(self) -> SophiaTaskDefinition:
#         return SophiaTaskDefinition(
#             answerOptions= ast.literal_eval(self.translate("Calc_1.Practice_MC.20q.answerOptions")),
#             correctAnswerIndex=1,
#             questionText = self.translate("Calc_1.Practice_MC.20q.question")
#         )

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         # Define the function text using MathTex
#         f_1 = Tex("$f:\\mathbb R\\rightarrow\\mathbb R$", color=c1t, font_size=fs2)
#         f_2 = Tex("$f(x)=\\cos(x)+2\\cos(2x)$", color=c1t, font_size=fs2)
#         f = VGroup(f_1,f_2).arrange(DOWN, buff=.2).set_y(2)

#         # Define the answer options using Tex
#         answer_a = Tex(self.translate("Calc_1.Practice_MC.20q.answer_a"), color=BLUE, font_size=fs3)
#         answer_b = Tex(self.translate("Calc_1.Practice_MC.20q.answer_b"), color=BLUE, font_size=fs3)
#         answer_c = Tex(self.translate("Calc_1.Practice_MC.20q.answer_c"), color=BLUE, font_size=fs3)
#         answer_d = Tex(self.translate("Calc_1.Practice_MC.20q.answer_d"), color=BLUE, font_size=fs3)
#         answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

#         # Define the voiceover text
#         voiceover_text = self.translate("Calc_1.Practice_MC.20q.voiceover")

#         # Action Sequence
#         with self.voiceover(text=voiceover_text) as tracker:
            
#             self.wait_until_bookmark("func_in")
#             self.play(Write(f))

#             self.wait_until_bookmark("answer_a_in")
#             self.play(Write(answer_a))

#             self.wait_until_bookmark("answer_b_in")
#             self.play(Write(answer_b))

#             self.wait_until_bookmark("answer_c_in")
#             self.play(Write(answer_c))

#             self.wait_until_bookmark("answer_d_in")
#             self.play(Write(answer_d))

#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)
# #

##################################### 
##################################### 
class Calc_practice_MC_21_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions= ast.literal_eval(self.translate("Calc_1.Practice_MC.21q.answerOptions")),
            correctAnswerIndex=2,
            questionText = self.translate("Calc_1.Practice_MC.21q.question")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        seq = VGroup(MathTex(r"\left(a_n\right)_{n\in\mathbb N}", color=c1t, font_size=fs3), MathTex(r"a_n=\left(-1\right)^n\cdot\tfrac{3n^2+1}{2n-n^2+1}", color=c1t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.21q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.21q.answer_b"),  color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.21q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.21q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(seq, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.Practice_MC.21q.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("sequence_in_1")
            self.play(Write(seq[0]), run_time=.5)

            self.wait_until_bookmark("sequence_in_2")
            self.play(Write(seq[1]), run_time=.5)

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a), run_time=.5)

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b), run_time=.5)

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c), run_time=.5)

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Calc_practice_MC_21_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        seq = VGroup(MathTex(r"\left(a_n\right)_{n\in\mathbb N}", color=c1t, font_size=fs3), MathTex(r"a_n=", r"\left(-1\right)^n", r"\cdot", r"\tfrac{3n^2+1}{2n-n^2+1}", color=c1t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(2)

        seq_2 = MathTex(r"\tfrac{3n^2+1}{2n-n^2+1}", r"\underset{n\to\infty}{\rightarrow}", r"3", color=c1t, font_size=fs2).next_to(seq[0], DOWN, buff=.2).set_x(0)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.21q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.21q.answer_b"),  color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.21q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.21q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(seq, DOWN, buff=0.8)

        self.add(seq, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.21a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            seq[1].generate_target().move_to(seq[0]).set_x(0).shift(.4*UP)
            self.play(MoveToTarget(seq[1]), Unwrite(seq[0]), run_time=.5)
            
            self.wait_until_bookmark("highlight_second_part")
            self.play(seq[1][-1].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("transform_second_part")
            self.play(ReplacementTransform(seq[1][-1].copy(), seq_2[0]), seq[1][-1].animate.set_color(c1t), run_time=.5)

            self.wait_until_bookmark("limit_in")
            self.play(Write(seq_2[1]), run_time=.5)

            self.wait_until_bookmark("three_in")
            self.play(Write(seq_2[2]), run_time=.5)

            self.wait_until_bookmark("highlight_neg_one")
            self.play(seq[1][1].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("highlight_solution")
            self.play(answer_c.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_b.animate.set_color(RED), answer_d.animate.set_color(RED))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_21_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        seq = VGroup(MathTex(r"\left(a_n\right)_{n\in\mathbb N}", color=c1t, font_size=fs3), MathTex(r"a_n=", r"\left(-1\right)^n", r"\cdot", r"\tfrac{3n^2+1}{2n-n^2+1}", color=c1t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(2)

        seq_2 = MathTex(r"\tfrac{3n^2+1}{2n-n^2+1}", r"\underset{n\to\infty}{\rightarrow}", r"3", color=c1t, font_size=fs2).next_to(seq[0], DOWN, buff=.2).set_x(0)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.21q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.21q.answer_b"),  color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.21q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.21q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(seq, DOWN, buff=0.8)

        self.add(seq, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.21a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            seq[1].generate_target().move_to(seq[0]).set_x(0).shift(.4*UP)
            self.play(MoveToTarget(seq[1]), Unwrite(seq[0]), run_time=.5)
            
            self.wait_until_bookmark("highlight_second_part")
            self.play(seq[1][-1].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("transform_second_part")
            self.play(ReplacementTransform(seq[1][-1].copy(), seq_2[0]), seq[1][-1].animate.set_color(c1t), run_time=.5)

            self.wait_until_bookmark("limit_in")
            self.play(Write(seq_2[1]), run_time=.5)

            self.wait_until_bookmark("three_in")
            self.play(Write(seq_2[2]), run_time=.5)

            self.wait_until_bookmark("highlight_neg_one")
            self.play(seq[1][1].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("highlight_solution")
            self.play(answer_c.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_b.animate.set_color(RED), answer_d.animate.set_color(RED))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_21_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        seq = VGroup(MathTex(r"\left(a_n\right)_{n\in\mathbb N}", color=c1t, font_size=fs3), MathTex(r"a_n=", r"\left(-1\right)^n", r"\cdot", r"\tfrac{3n^2+1}{2n-n^2+1}", color=c1t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(2)

        seq_2 = MathTex(r"\tfrac{3n^2+1}{2n-n^2+1}", r"\underset{n\to\infty}{\rightarrow}", r"3", color=c1t, font_size=fs2).next_to(seq[0], DOWN, buff=.2).set_x(0)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.21q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.21q.answer_b"),  color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.21q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.21q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(seq, DOWN, buff=0.8)

        self.add(seq, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_4")+self.translate("Calc_1.Practice_MC.21a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            seq[1].generate_target().move_to(seq[0]).set_x(0).shift(.4*UP)
            self.play(MoveToTarget(seq[1]), Unwrite(seq[0]), run_time=.5)
            
            self.wait_until_bookmark("highlight_second_part")
            self.play(seq[1][-1].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("transform_second_part")
            self.play(ReplacementTransform(seq[1][-1].copy(), seq_2[0]), seq[1][-1].animate.set_color(c1t), run_time=.5)

            self.wait_until_bookmark("limit_in")
            self.play(Write(seq_2[1]), run_time=.5)

            self.wait_until_bookmark("three_in")
            self.play(Write(seq_2[2]), run_time=.5)

            self.wait_until_bookmark("highlight_neg_one")
            self.play(seq[1][1].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("highlight_solution")
            self.play(answer_c.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_b.animate.set_color(RED), answer_d.animate.set_color(RED))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_21_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        seq = VGroup(MathTex(r"\left(a_n\right)_{n\in\mathbb N}", color=c1t, font_size=fs3), MathTex(r"a_n=", r"\left(-1\right)^n", r"\cdot", r"\tfrac{3n^2+1}{2n-n^2+1}", color=c1t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(2)

        seq_2 = MathTex(r"\tfrac{3n^2+1}{2n-n^2+1}", r"\underset{n\to\infty}{\rightarrow}", r"3", color=c1t, font_size=fs2).next_to(seq[0], DOWN, buff=.2).set_x(0)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.21q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.21q.answer_b"),  color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.21q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.21q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(seq, DOWN, buff=0.8)

        self.add(seq, answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.21a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            seq[1].generate_target().move_to(seq[0]).set_x(0).shift(.4*UP)
            self.play(MoveToTarget(seq[1]), Unwrite(seq[0]), run_time=.5)
            
            self.wait_until_bookmark("highlight_second_part")
            self.play(seq[1][-1].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("transform_second_part")
            self.play(ReplacementTransform(seq[1][-1].copy(), seq_2[0]), seq[1][-1].animate.set_color(c1t), run_time=.5)

            self.wait_until_bookmark("limit_in")
            self.play(Write(seq_2[1]), run_time=.5)

            self.wait_until_bookmark("three_in")
            self.play(Write(seq_2[2]), run_time=.5)

            self.wait_until_bookmark("highlight_neg_one")
            self.play(seq[1][1].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("highlight_solution")
            self.play(answer_c.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_b.animate.set_color(RED), answer_d.animate.set_color(RED))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### 
##################################### 
class Calc_practice_MC_23_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions= ast.literal_eval(self.translate("Calc_1.Practice_MC.23q.answerOptions")),
            correctAnswerIndex=3,
            questionText = self.translate("Calc_1.Practice_MC.23q.question")
        )
    
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        zero = self.translate("words.Zero")
        polynomial = MathTex(r"p(z)=z^5-i\cdot z^2-2i", color=c1t, font_size=fs2)
        zero_tex = Tex(zero, r": $z=i$", color=c1t, font_size=fs2)
        polynomial_with_zero = VGroup(polynomial, zero_tex).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2.4)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.23q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.23q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.23q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.23q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(polynomial_with_zero, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.Practice_MC.23q.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("polynomial_in")
            self.play(Write(polynomial), run_time=1)

            self.wait_until_bookmark("zero_in")
            self.play(Write(zero_tex), run_time=1)

            self.wait_until_bookmark("statement_a")
            self.play(Write(answer_a), run_time=.5)

            self.wait_until_bookmark("statement_b")
            self.play(Write(answer_b), run_time=.5)

            self.wait_until_bookmark("statement_c")
            self.play(Write(answer_c), run_time=.5)

            self.wait_until_bookmark("statement_d")
            self.play(Write(answer_d), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#

class Calc_practice_MC_23_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        zero = self.translate("words.Zero")
        polynomial = MathTex(r"p(z)=z^5-i\cdot z^2-2i", color=c1t, font_size=fs2)
        zero_tex = Tex(zero, r": $z=i$", color=c1t, font_size=fs2)
        polynomial_with_zero = VGroup(polynomial, zero_tex).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2.4)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.23q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.23q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.23q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.23q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(polynomial_with_zero, DOWN, buff=0.8)

        self.add(answers, polynomial_with_zero)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.23a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("highlight_d")
            self.play(answer_d.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
class Calc_practice_MC_23_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        zero = self.translate("words.Zero")
        polynomial = MathTex(r"p(z)=z^5-i\cdot z^2-2i", color=c1t, font_size=fs2)
        zero_tex = Tex(zero, r": $z=i$", color=c1t, font_size=fs2)
        polynomial_with_zero = VGroup(polynomial, zero_tex).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2.4)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.23q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.23q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.23q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.23q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(polynomial_with_zero, DOWN, buff=0.8)

        self.add(answers, polynomial_with_zero)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.23a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("highlight_d")
            self.play(answer_d.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
class Calc_practice_MC_23_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        zero = self.translate("words.Zero")
        polynomial = MathTex(r"p(z)=z^5-i\cdot z^2-2i", color=c1t, font_size=fs2)
        zero_tex = Tex(zero, r": $z=i$", color=c1t, font_size=fs2)
        polynomial_with_zero = VGroup(polynomial, zero_tex).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2.4)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.23q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.23q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.23q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.23q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(polynomial_with_zero, DOWN, buff=0.8)

        self.add(answers, polynomial_with_zero)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.Practice_MC.23a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("highlight_d")
            self.play(answer_d.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
class Calc_practice_MC_23_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        zero = self.translate("words.Zero")
        polynomial = MathTex(r"p(z)=z^5-i\cdot z^2-2i", color=c1t, font_size=fs2)
        zero_tex = Tex(zero, r": $z=i$", color=c1t, font_size=fs2)
        polynomial_with_zero = VGroup(polynomial, zero_tex).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2.4)

        # Define the answer options using Tex
        answer_a = Tex(self.translate("Calc_1.Practice_MC.23q.answer_a"), color=BLUE, font_size=fs3)
        answer_b = Tex(self.translate("Calc_1.Practice_MC.23q.answer_b"), color=BLUE, font_size=fs3)
        answer_c = Tex(self.translate("Calc_1.Practice_MC.23q.answer_c"), color=BLUE, font_size=fs3)
        answer_d = Tex(self.translate("Calc_1.Practice_MC.23q.answer_d"), color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(polynomial_with_zero, DOWN, buff=0.8)

        self.add(answers, polynomial_with_zero)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_4")+self.translate("Calc_1.Practice_MC.23a.voiceover")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("highlight_d")
            self.play(answer_d.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#

##################################### Limits
#####################################
        
# Ana Ing TUB 2019/4

##################################### 
##################################### 
class Calc_practice_limits_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$0$", "$1$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_limits.1q.question-text"),
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

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{2n^3+4n}{3n^3\sqrt{n}+4n^2}", color=c1t, font_size=fs2).set_y(2)

        baboon = ImageMobject(assets_folder / "img" / "baboon_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_limits.1q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(func[1]))

            self.wait_until_bookmark("limit_in")
            self.play(Write(func[0]))
            self.add_shift_sound(0.5)
            self.play(baboon.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_limits_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{2n^3+4n}{3n^3\sqrt{n}+4n^2}", color=c1t, font_size=fs2).set_y(2.2)
        implication_1 = Tex(r"$\Downarrow$", " $=$", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.2)
        func_2_a = MathTex(r"\underset{n\to\infty}{\lim}", r"{{n^3\sqrt n", r"(\tfrac{2}{\sqrt n}+\tfrac{4}{n^2\sqrt n})}", r"\over{n^3\sqrt{n}", r"(3+\tfrac4{n\sqrt n})}}", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)
        func_2_b = MathTex(r"\underset{n\to\infty}{\lim}", r"{{", r"\tfrac{2}{\sqrt n}+\tfrac{4}{n^2\sqrt n}}", r"\over{", r"3+\tfrac4{n\sqrt n})}}", color=c1t, font_size=fs2).move_to(func_2_a)
        implication_2 = Tex(r"$\Downarrow$", r"$\underset{n\to\infty}{\lim}$", color=BLUE, font_size=fs2).next_to(func_2_b, DOWN, buff=.2)
        func_3 = MathTex(r"\frac{0+0}{3+0}", r"=0", color=c1t, font_size=fs2).next_to(implication_2, DOWN, buff=.2)
        crosses = VGroup(Cross(func_2_a[1]), Cross(func_2_a[1].copy().shift(0.2*RIGHT).set_y(func_2_a[3].get_y()))).set_color(RED)

        baboon = ImageMobject(assets_folder / "img" / "baboon_thinking.png").set_y(-.6).scale(.5)
        self.add(baboon, func)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_5")+self.translate("Calc_1.practice_limits.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("implication_1")
            self.add_shift_sound(0.5)
            self.play(baboon.animate.shift(5*RIGHT), Write(implication_1), Write(func_2_a), run_time=.5)

            self.wait_until_bookmark("s_out_1")
            self.play(Write(crosses), run_time=.5)

            self.wait_until_bookmark("func_2_b")
            self.play(TransformMatchingTex(func_2_a, func_2_b), Unwrite(crosses))

            self.wait_until_bookmark("implication_2")
            self.play(Write(implication_2), Write(func_3))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_limits_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{2n^3+4n}{3n^3\sqrt{n}+4n^2}", color=c1t, font_size=fs2).set_y(2.2)
        implication_1 = Tex(r"$\Downarrow$", " $=$", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.2)
        func_2_a = MathTex(r"\underset{n\to\infty}{\lim}", r"{{n^3\sqrt n", r"(\tfrac{2}{\sqrt n}+\tfrac{4}{n^2\sqrt n})}", r"\over{n^3\sqrt{n}", r"(3+\tfrac4{n\sqrt n})}}", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)
        func_2_b = MathTex(r"\underset{n\to\infty}{\lim}", r"{{", r"\tfrac{2}{\sqrt n}+\tfrac{4}{n^2\sqrt n}}", r"\over{", r"3+\tfrac4{n\sqrt n})}}", color=c1t, font_size=fs2).move_to(func_2_a)
        implication_2 = Tex(r"$\Downarrow$", r"$\underset{n\to\infty}{\lim}$", color=BLUE, font_size=fs2).next_to(func_2_b, DOWN, buff=.2)
        func_3 = MathTex(r"\frac{0+0}{3+0}", r"=0", color=c1t, font_size=fs2).next_to(implication_2, DOWN, buff=.2)
        crosses = VGroup(Cross(func_2_a[1]), Cross(func_2_a[1].copy().shift(0.2*RIGHT).set_y(func_2_a[3].get_y()))).set_color(RED)

        baboon = ImageMobject(assets_folder / "img" / "baboon_thinking.png").set_y(-.6).scale(.5)
        self.add(baboon, func)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_5")+self.translate("Calc_1.practice_limits.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("implication_1")
            self.add_shift_sound(0.5)
            self.play(baboon.animate.shift(5*RIGHT), Write(implication_1), Write(func_2_a), run_time=.5)

            self.wait_until_bookmark("s_out_1")
            self.play(Write(crosses), run_time=.5)

            self.wait_until_bookmark("func_2_b")
            self.play(TransformMatchingTex(func_2_a, func_2_b), Unwrite(crosses))

            self.wait_until_bookmark("implication_2")
            self.play(Write(implication_2), Write(func_3))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)

##################################### 
##################################### 
class Calc_practice_limits_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$0$", "$1$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_limits.2q.question-text"),
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

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{n\sin(n)+\sin(n)}{(n+1)^2}", color=c1t, font_size=fs2).set_y(2)

        giraffe = ImageMobject(assets_folder / "img" / "giraffe_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_limits.2q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("giraffe_in")
            self.add_shift_sound(0.5)
            self.play(giraffe.animate.shift(5*RIGHT), run_time=.5)
            
            self.wait_until_bookmark("limit_in")
            self.play(Write(func[0]))

            self.wait_until_bookmark("term_in")
            self.play(Write(func[1]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_limits_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{n\sin(n)+\sin(n)}{(n+1)^2}", color=c1t, font_size=fs2).set_y(2.2)
        step_1 = MathTex(r"\left|\frac{n\sin(n)+\sin(n)}{(n+1)^2}\right|", r"\leq", r"\frac{1}{n+1}", r"\underset{n\to\infty}{\rightarrow}0", color=c3t, font_size=fs3).next_to(func, DOWN, buff=.4)
        implication_1 = Tex(r"$\Downarrow$", "  Sandwich-Theorem", color=BLUE, font_size=fs2).next_to(step_1, DOWN, buff=.2)
        step_2 = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{n\sin(n)+\sin(n)}{(n+1)^2}", r"=0", color=c3t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)
        
        giraffe = ImageMobject(assets_folder / "img" / "giraffe_thinking.png").set_y(-.6).scale(.5)

        self.add(giraffe, func)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_1")+self.translate("Calc_1.practice_limits.2a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("step_1_a")
            self.add_shift_sound(.5)
            self.play(giraffe.animate.shift(5*RIGHT), Write(step_1[0]), Write(step_1[1]), Write(step_1[2]), run_time=.5)

            self.wait_until_bookmark("step_1_b")
            self.play(Write(step_1[3]))

            self.wait_until_bookmark("implication_1")
            self.play(Write(implication_1))

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2))


        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_limits_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{n\sin(n)+\sin(n)}{(n+1)^2}", color=c1t, font_size=fs2).set_y(2.2)
        step_1 = MathTex(r"\left|\frac{n\sin(n)+\sin(n)}{(n+1)^2}\right|", r"\leq", r"\frac{1}{n+1}", r"\underset{n\to\infty}{\rightarrow}0", color=c3t, font_size=fs3).next_to(func, DOWN, buff=.4)
        implication_1 = Tex(r"$\Downarrow$", "  Sandwich-Theorem", color=BLUE, font_size=fs2).next_to(step_1, DOWN, buff=.2)
        step_2 = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{n\sin(n)+\sin(n)}{(n+1)^2}", r"=0", color=c3t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)
        
        giraffe = ImageMobject(assets_folder / "img" / "giraffe_thinking.png").set_y(-.6).scale(.5)

        self.add(giraffe, func)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_1")+self.translate("Calc_1.practice_limits.2a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("step_1_a")
            self.add_shift_sound(.5)
            self.play(giraffe.animate.shift(5*RIGHT), Write(step_1[0]), Write(step_1[1]), Write(step_1[2]), run_time=.5)

            self.wait_until_bookmark("step_1_b")
            self.play(Write(step_1[3]))

            self.wait_until_bookmark("implication_1")
            self.play(Write(implication_1))

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2))


        # Wait for 4 seconds at the end of the animation
        self.wait(6)

##################################### 
##################################### 
class Calc_practice_limits_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["${\pi}^{2}$", "$1$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_limits.3q.question-text"),
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

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\tfrac\pi4}{\lim}", r"\frac{16x^2}{\tan(x)}", color=c1t, font_size=fs2).set_y(2)

        sloth = ImageMobject(assets_folder / "img" / "sloth_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_limits.3q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("term_in")
            self.play(Write(func[1]))

            self.wait_until_bookmark("limit_in")
            self.play(Write(func[0]))
            self.add_shift_sound(0.5)
            self.play(sloth.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)


class Calc_practice_limits_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\tfrac\pi4}{\lim}", r"\frac{16x^2}{\tan(x)}", color=c1t, font_size=fs2).set_y(2)
        implication_1 = Tex(r"$\Downarrow$  $=$", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.2)
        func_2 = MathTex(r"\frac{16\tfrac{\pi^2}{4^2}}{\tan(\tfrac\pi 4)}", r"=\pi^2", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)

        sloth = ImageMobject(assets_folder / "img" / "sloth_thinking.png").set_y(-.6).scale(.5)
        self.add(sloth, func)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_2")+self.translate("Calc_1.practice_limits.3a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("step_1_a")
            self.add_shift_sound(0.5)
            self.play(sloth.animate.shift(5*RIGHT), Write(implication_1), Write(func_2[0]), run_time=.5)

            self.wait_until_bookmark("step_1_b")
            self.play(Write(func_2[1]),  run_time=.5)


        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_limits_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\tfrac\pi4}{\lim}", r"\frac{16x^2}{\tan(x)}", color=c1t, font_size=fs2).set_y(2)
        implication_1 = Tex(r"$\Downarrow$  $=$", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.2)
        func_2 = MathTex(r"\frac{16\tfrac{\pi^2}{4^2}}{\tan(\tfrac\pi 4)}", r"=\pi^2", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)

        sloth = ImageMobject(assets_folder / "img" / "sloth_thinking.png").set_y(-.6).scale(.5)
        self.add(sloth, func)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_2")+self.translate("Calc_1.practice_limits.3a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("step_1_a")
            self.add_shift_sound(0.5)
            self.play(sloth.animate.shift(5*RIGHT), Write(implication_1), Write(func_2[0]), run_time=.5)

            self.wait_until_bookmark("step_1_b")
            self.play(Write(func_2[1]),  run_time=.5)


        # Wait for 4 seconds at the end of the animation
        self.wait(6)

##################################### 
##################################### 
class Calc_practice_limits_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$2$", "$1$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_limits.4q.question-text"),
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

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{x\to\tfrac\pi2}{\lim}", r"\frac{\sin(2x)}{\cos(x)}", color=c1t, font_size=fs2).set_y(2)

        lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_limits.4q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("lion_in")
            self.add_shift_sound(0.5)
            self.play(lion.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("limit_in")
            self.play(Write(func[0]))

            self.wait_until_bookmark("term_in")
            self.play(Write(func[1]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_limits_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{x\to\tfrac\pi2}{\lim}", r"\frac{\sin(2x)}{\cos(x)}", color=c1t, font_size=fs2).set_y(2)
        implication_1 = Tex("L'Hospital ", r"$\Downarrow$  $\left(\frac00\right)$", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.2)
        func_2 = MathTex(r"\underset{x\to\tfrac\pi2}{\lim} \frac{2\cos(2x)}{-\sin(x)}", "=2", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)

        lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").set_y(-.6).scale(.5)
        self.add(lion, func)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_5")+self.translate("Calc_1.practice_limits.4a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("implication_1")
            self.add_shift_sound(0.5)
            self.play(lion.animate.shift(5*RIGHT), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("func_2_a")
            self.play(Write(func_2[0]), run_time=.5)

            self.wait_until_bookmark("func_2_b")
            self.play(Write(func_2[1]), run_time=.5)


        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_limits_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{x\to\tfrac\pi2}{\lim}", r"\frac{\sin(2x)}{\cos(x)}", color=c1t, font_size=fs2).set_y(2)
        implication_1 = Tex("L'Hospital ", r"$\Downarrow$  $\left(\frac00\right)$", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.2)
        func_2 = MathTex(r"\underset{x\to\tfrac\pi2}{\lim} \frac{2\cos(2x)}{-\sin(x)}", "=2", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)

        lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").set_y(-.6).scale(.5)
        self.add(lion, func)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_5")+self.translate("Calc_1.practice_limits.4a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("implication_1")
            self.add_shift_sound(0.5)
            self.play(lion.animate.shift(5*RIGHT), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("func_2_a")
            self.play(Write(func_2[0]), run_time=.5)

            self.wait_until_bookmark("func_2_b")
            self.play(Write(func_2[1]), run_time=.5)


        # Wait for 4 seconds at the end of the animation
        self.wait(6)

##################################### 
##################################### 
class Calc_practice_limits_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$0$", "$1$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_limits.5q.question-text"),
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

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        convergent_sequence = self.translate("Calc_1.practice_limits.5q.convergent-sequence")
        series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ "+convergent_sequence, color=c1t, font_size=fs3)
        series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=1$, ", r"$a_n>0$ $\forall$ $n\in\mathbb N$.", color=c1t, font_size=fs3)
        series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        series_3 = Tex("", r"$b_n=$", "", r"$\ln(a_n)$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
        series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$\ln(a_n)$", color=BLUE, font_size=fs2).move_to(series_3)

        # lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_limits.5q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("a_1_in")
            self.play(Write(series_1), run_time=.5)

            self.wait_until_bookmark("a_2_in")
            self.play(Write(series_2[0]), run_time=.5)

            self.wait_until_bookmark("a_3_in")
            self.play(Write(series_2[1]), run_time=.5)

            self.wait_until_bookmark("b_n_in_1")
            self.play(Write(series_3), run_time=.5)

            self.wait_until_bookmark("b_n_in_2")
            self.play(TransformMatchingTex(series_3, series_4))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_limits_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        convergent_sequence = self.translate("Calc_1.practice_limits.5q.convergent-sequence")
        series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ "+convergent_sequence, color=c1t, font_size=fs3)
        series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=1$, ", r"$a_n>0$ $\forall$ $n\in\mathbb N$.", color=c1t, font_size=fs3)
        series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        series_3 = Tex("", r"$b_n=$", "", r"$\ln(a_n)$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
        series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$\ln$", r"$(a_n)$", color=BLUE, font_size=fs2).move_to(series_3)
        implication_1 = Tex(r"$\Downarrow$  $=$", color=BLUE, font_size=fs2).next_to(series_4, DOWN, buff=.2)
        series_5_a = Tex(r"$\underset{n\to\infty}{\lim}$", r"$\ln$", r"$(a_n)$", r"$=\ln(1)=0$", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)
        series_5_b = MathTex(r"\ln\left(", r"\underset{n\to\infty}{\lim}", r"(a_n)\right)", r"=\ln(1)=0", color=c1t, font_size=fs2).scale(0.95).next_to(implication_1, DOWN, buff=.2)

        self.add(series_1, series_2, series_4)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_3")+self.translate("Calc_1.practice_limits.5a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("implication_1")
            self.play(Write(implication_1), *[ReplacementTransform(series_4[i+2].copy(), series_5_a[i]) for i in range(3)])

            self.wait_until_bookmark("series_5_b")
            self.play(*[ReplacementTransform(series_5_a[i], series_5_b[i]) for i in range(3)])

            self.wait_until_bookmark("solution")
            self.play(Write(series_5_b[3]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_limits_5_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        convergent_sequence = self.translate("Calc_1.practice_limits.5q.convergent-sequence")
        series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ "+convergent_sequence, color=c1t, font_size=fs3)
        series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=1$, ", r"$a_n>0$ $\forall$ $n\in\mathbb N$.", color=c1t, font_size=fs3)
        series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        series_3 = Tex("", r"$b_n=$", "", r"$\ln(a_n)$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
        series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$\ln$", r"$(a_n)$", color=BLUE, font_size=fs2).move_to(series_3)
        implication_1 = Tex(r"$\Downarrow$  $=$", color=BLUE, font_size=fs2).next_to(series_4, DOWN, buff=.2)
        series_5_a = Tex(r"$\underset{n\to\infty}{\lim}$", r"$\ln$", r"$(a_n)$", r"$=\ln(1)=0$", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)
        series_5_b = MathTex(r"\ln\left(", r"\underset{n\to\infty}{\lim}", r"(a_n)\right)", r"=\ln(1)=0", color=c1t, font_size=fs2).scale(0.95).next_to(implication_1, DOWN, buff=.2)

        self.add(series_1, series_2, series_4)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.practice_limits.5a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("implication_1")
            self.play(Write(implication_1), *[ReplacementTransform(series_4[i+2].copy(), series_5_a[i]) for i in range(3)])

            self.wait_until_bookmark("series_5_b")
            self.play(*[ReplacementTransform(series_5_a[i], series_5_b[i]) for i in range(3)])

            self.wait_until_bookmark("solution")
            self.play(Write(series_5_b[3]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

# Ana Ing TUB 2019/2

##################################### 
##################################### 
class Calc_practice_limits_6_q(SophiaCursorScene):
    
    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$2$", "$1$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_limits.6q.question-text"),
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

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{4n^4-12n^2+3n^3}{n^3(2n+1)}", color=c1t, font_size=fs2).scale(.95).set_y(2)

        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_limits.6q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(func[1]))

            self.wait_until_bookmark("limit_in")
            self.add_shift_sound(0.5)
            self.play(dog.animate.shift(5*RIGHT), run_time=.5)
            self.play(Write(func[0]))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_limits_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{4n^4-12n^2+3n^3}{n^3(2n+1)}", color=c1t, font_size=fs2).scale(.95).set_y(2)
        implication_1 = Tex(r"$\Downarrow$  $=$", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.2)
        func_2 = MathTex(r"\underset{n\to\infty}{\lim}\frac{n^4(4-\tfrac{12}{n^2}+\tfrac3n)}{n^4(2+\tfrac1{n^4})}\\", r"=\frac{4-0+0}{2+0}=2", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)

        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([0,-.6,0]).scale(.5)

        self.add(dog, func)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_2") + self.translate("Calc_1.practice_limits.6a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("step_in_1")
            self.add_shift_sound(0.5)
            self.play(dog.animate.shift(5*RIGHT), Write(implication_1), Write(func_2[0]), run_time=.5)

            self.wait_until_bookmark("step_in_2")
            self.play(Write(func_2[1]), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_limits_6_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{4n^4-12n^2+3n^3}{n^3(2n+1)}", color=c1t, font_size=fs2).scale(.95).set_y(2)
        implication_1 = Tex(r"$\Downarrow$  $=$", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.2)
        func_2 = MathTex(r"\underset{n\to\infty}{\lim}\frac{n^4(4-\tfrac{12}{n^2}+\tfrac3n)}{n^4(2+\tfrac1{n^4})}\\", r"=\frac{4-0+0}{2+0}=2", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)

        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([0,-.6,0]).scale(.5)

        self.add(dog, func)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_2") + self.translate("Calc_1.practice_limits.6a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("step_in_1")
            self.add_shift_sound(0.5)
            self.play(dog.animate.shift(5*RIGHT), Write(implication_1), Write(func_2[0]), run_time=.5)

            self.wait_until_bookmark("step_in_2")
            self.play(Write(func_2[1]), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

##################################### 
##################################### 
class Calc_practice_limits_7_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$0$", "$1$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_limits.7q.question-text"),
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

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{cos(n)}{n^2+1}", color=c1t, font_size=fs2).set_y(2)

        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_limits.7q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("dog_in")
            self.add_shift_sound(0.5)
            self.play(dog.animate.shift(5*RIGHT), run_time=.5)
            
            self.wait_until_bookmark("limit_in")
            self.play(Write(func[0]))

            self.wait_until_bookmark("term_in")
            self.play(Write(func[1]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)


class Calc_practice_limits_7_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{cos(n)}{n^2+1}", color=c1t, font_size=fs2).set_y(2)
        step_1 = MathTex(r"\left|\frac{\cos(n)}{n^2+1}\right|", r"\leq", r"\frac{1}{n^2+1}", r"\underset{n\to\infty}{\rightarrow}0", color=c3t, font_size=fs3).next_to(func, DOWN, buff=.4)
        implication_1 = Tex(r"$\Downarrow$", "  Sandwich-Theorem", color=BLUE, font_size=fs2).next_to(step_1, DOWN, buff=.2)
        step_2 = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{cos(n)}{n^2+1}", r"=0", color=c3t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)

        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([0,-.6,0]).scale(.5)
        self.add(func, dog)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_4")+self.translate("Calc_1.practice_limits.7a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("step_1_a")
            self.add_shift_sound(.5)
            self.play(dog.animate.shift(5*RIGHT), Write(step_1[0]), Write(step_1[1]), Write(step_1[2]), run_time=.5)

            self.wait_until_bookmark("step_1_b")
            self.play(Write(step_1[3]))

            self.wait_until_bookmark("implication_1")
            self.play(Write(implication_1))

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_limits_7_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{cos(n)}{n^2+1}", color=c1t, font_size=fs2).set_y(2)
        step_1 = MathTex(r"\left|\frac{\cos(n)}{n^2+1}\right|", r"\leq", r"\frac{1}{n^2+1}", r"\underset{n\to\infty}{\rightarrow}0", color=c3t, font_size=fs3).next_to(func, DOWN, buff=.4)
        implication_1 = Tex(r"$\Downarrow$", "  Sandwich-Theorem", color=BLUE, font_size=fs2).next_to(step_1, DOWN, buff=.2)
        step_2 = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{cos(n)}{n^2+1}", r"=0", color=c3t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)

        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([0,-.6,0]).scale(.5)
        self.add(func, dog)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.practice_limits.7a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("step_1_a")
            self.add_shift_sound(.5)
            self.play(dog.animate.shift(5*RIGHT), Write(step_1[0]), Write(step_1[1]), Write(step_1[2]), run_time=.5)

            self.wait_until_bookmark("step_1_b")
            self.play(Write(step_1[3]))

            self.wait_until_bookmark("implication_1")
            self.play(Write(implication_1))

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

#####################################
##################################### 
class Calc_practice_limits_8_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$-2$", "$1$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_limits.8q.question-text"),
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

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{x\to0}{\lim}", r"\frac{x^2-2}{\cos(x)}", color=c1t, font_size=fs2).scale(.95).set_y(2)

        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_limits.8q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("limit_in")
            self.add_shift_sound(0.5)
            self.play(dog.animate.shift(5*RIGHT), run_time=.5)
            self.play(Write(func[0]))

            self.wait_until_bookmark("func_in")
            self.play(Write(func[1]))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Calc_practice_limits_8_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{x\to0}{\lim}", r"\frac{x^2-2}{\cos(x)}", color=c1t, font_size=fs2).scale(.95).set_y(2)
        implication_1 = Tex(r"$=$", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.2)
        func_2 = MathTex(r"=\frac{0^2-2}{\cos(0)}=-2", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)


        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([0,-.6,0]).scale(.5)
        self.add(func, dog)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_6")+self.translate("Calc_1.practice_limits.8a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("implication_1")
            self.add_shift_sound(.5)
            self.play(dog.animate.shift(5*RIGHT), Write(implication_1), Write(func_2), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_limits_8_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{x\to0}{\lim}", r"\frac{x^2-2}{\cos(x)}", color=c1t, font_size=fs2).scale(.95).set_y(2)
        implication_1 = Tex(r"$=$", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.2)
        func_2 = MathTex(r"=\frac{0^2-2}{\cos(0)}=-2", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)


        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([0,-.6,0]).scale(.5)
        self.add(func, dog)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_6")+self.translate("Calc_1.practice_limits.8a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("implication_1")
            self.add_shift_sound(.5)
            self.play(dog.animate.shift(5*RIGHT), Write(implication_1), Write(func_2), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
##################################### 
class Calc_practice_limits_9_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$1$", "$2$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_limits.9q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$\key{a}$",
                answerOptionsTypes={
                    "a": "number"
                }
            )
        )
        
    def construct(self):
        
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{x\to0}{\lim}", r"\frac{e^x-1}{\sin(x)}", color=c1t, font_size=fs2).set_y(2)


        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_limits.9q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("func_in")
            self.play(Write(func[1]))

            self.wait_until_bookmark("dog_in")
            self.add_shift_sound(0.5)
            self.play(dog.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("limit_in")
            self.play(Write(func[0]))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Calc_practice_limits_9_a(SophiaCursorScene):
        
    def construct(self):
        
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{x\to0}{\lim}", r"\frac{e^x-1}{\sin(x)}", color=c1t, font_size=fs2).set_y(2)
        implication_1 = Tex("L'Hospital ", r"$\Downarrow$  $\left(\frac00\right)$", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.2)
        func_2 = MathTex(r"\underset{x\to0}{\lim} \frac{e^x}{\cos(x)}", "=1", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)


        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([0,-.6,0]).scale(.5)
        self.add(func, dog)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_5")+self.translate("Calc_1.practice_limits.9a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("implication_1")
            self.add_shift_sound(.5)
            self.play(dog.animate.shift(5*RIGHT), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("func_2_a")
            self.play(Write(func_2[0]), run_time=.5)

            self.wait_until_bookmark("func_2_b")
            self.play(Write(func_2[1]), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_limits_9_b(SophiaCursorScene):
        
    def construct(self):
        
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{x\to0}{\lim}", r"\frac{e^x-1}{\sin(x)}", color=c1t, font_size=fs2).set_y(2)
        implication_1 = Tex("L'Hospital ", r"$\Downarrow$  $\left(\frac00\right)$", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.2)
        func_2 = MathTex(r"\underset{x\to0}{\lim} \frac{e^x}{\cos(x)}", "=1", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)


        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([0,-.6,0]).scale(.5)
        self.add(func, dog)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_5")+self.translate("Calc_1.practice_limits.9a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("implication_1")
            self.add_shift_sound(.5)
            self.play(dog.animate.shift(5*RIGHT), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("func_2_a")
            self.play(Write(func_2[0]), run_time=.5)

            self.wait_until_bookmark("func_2_b")
            self.play(Write(func_2[1]), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

##################################### 
##################################### 
class Calc_practice_limits_10_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$0$", "$2$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_limits.10q.question-text"),
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

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        convergent_sequence = self.translate("Calc_1.practice_limits.10a.convergent-sequence")
        series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ "+convergent_sequence, color=c1t, font_size=fs3)
        series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=0$", color=c1t, font_size=fs3)
        series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        series_3 = Tex("", r"$b_n=$", "", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
        series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).move_to(series_3)

        # lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_limits.10q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("a_1_in")
            self.play(Write(series_1), run_time=.5)

            self.wait_until_bookmark("a_2_in")
            self.play(Write(series_2[0]), run_time=.5)

            self.wait_until_bookmark("b_n_in_1")
            self.play(Write(series_3), run_time=.5)

            self.wait_until_bookmark("b_n_in_2")
            self.play(TransformMatchingTex(series_3, series_4))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)        


class Calc_practice_limits_10_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        convergent_sequence = self.translate("Calc_1.practice_limits.10a.convergent-sequence")
        series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ "+convergent_sequence, color=c1t, font_size=fs3)
        series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=0$", color=c1t, font_size=fs3)
        series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        series_3 = Tex("", r"$b_n=$", "", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
        series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).move_to(series_3)
        upper_limit = MathTex(r"\left|(-1)^n\frac {a_n}2\right|\leq a_n", r"\underset{n\to\infty}{\rightarrow}0", color=c1t, font_size=fs2).scale(0.95).next_to(series_4, DOWN, buff=.2)
        implication_1 = Tex(r"$\Downarrow$", "  Sandwich-Theorem", color=BLUE, font_size=fs2).next_to(upper_limit, DOWN, buff=.2)
        solution = MathTex(r"\underset{n\to\infty}{\lim}", r"b_n=0", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)


        self.add(series_1, series_2, series_4)
        # lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_3")+self.translate("Calc_1.practice_limits.10a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("upper_limit_a")
            self.play(Write(upper_limit[0]),  run_time=.5)

            self.wait_until_bookmark("upper_limit_b")
            self.play(Write(upper_limit[1]),  run_time=.5)

            self.wait_until_bookmark("implication_1")
            self.play(Write(implication_1), run_time=.5)

            self.wait_until_bookmark("solution")
            self.play(Write(solution), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)


class Calc_practice_limits_10_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        convergent_sequence = self.translate("Calc_1.practice_limits.10a.convergent-sequence")
        series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ "+convergent_sequence, color=c1t, font_size=fs3)
        series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=0$", color=c1t, font_size=fs3)
        series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        series_3 = Tex("", r"$b_n=$", "", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
        series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).move_to(series_3)
        upper_limit = MathTex(r"\left|(-1)^n\frac {a_n}2\right|\leq a_n", r"\underset{n\to\infty}{\rightarrow}0", color=c1t, font_size=fs2).scale(0.95).next_to(series_4, DOWN, buff=.2)
        implication_1 = Tex(r"$\Downarrow$", "  Sandwich-Theorem", color=BLUE, font_size=fs2).next_to(upper_limit, DOWN, buff=.2)
        solution = MathTex(r"\underset{n\to\infty}{\lim}", r"b_n=0", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)


        self.add(series_1, series_2, series_4)
        # lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.practice_limits.10a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("upper_limit_a")
            self.play(Write(upper_limit[0]),  run_time=.5)

            self.wait_until_bookmark("upper_limit_b")
            self.play(Write(upper_limit[1]),  run_time=.5)

            self.wait_until_bookmark("implication_1")
            self.play(Write(implication_1), run_time=.5)

            self.wait_until_bookmark("solution")
            self.play(Write(solution), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)


##################################### Derivatives
#####################################
class Calc_practice_derivatives_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
            """
            -\frac{1}{x} or: -x^{-1} or an equivalent statement
            """,
            """
            The answer is incorrect.
            """
            ],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_derivatives.1q.question-text"),
            llmCheckDetails=SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex=1,
                specialInputSnippets = ["[ ]", "f"],
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        function = MathTex(r"f(x)=", r"\ln\left(-\frac{1}{x}\right)", r"\,", color=c1t, font_size=fs2).set_y(2)
        derivative = MathTex(r"\frac{d}{dx}", r"\ln\left(-\frac{1}{x}\right)", r"=\,\,?", color=c1t, font_size=fs2).set_y(2)

        # lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_derivatives.1q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("f_in")
            self.play(Write(function))

            self.wait_until_bookmark("derivative_transform")
            self.play(ReplacementTransform(function[0], derivative[0]), ReplacementTransform(function[1], derivative[1]), ReplacementTransform(function[2], derivative[2]), )

        # Wait for 4 seconds at the end of the animation
        self.wait(6)        
#

class Calc_practice_derivatives_1_a(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        chain_rule = self.translate("General.chain_rule")
        # Define the function text using MathTex
        derivative_1 = MathTex(r"\frac{d}{dx}", r"\ln\left(", r"-\frac{1}{x}", r"\right)", r"=\,\,?", color=c1t, font_size=fs2).set_y(2)
        outer_func, inner_func = VGroup(derivative_1[1], derivative_1[3]), derivative_1[2]
        step_1 = Tex(r"$\Downarrow$ ", chain_rule, color=BLUE, font_size=fs2).next_to(derivative_1, DOWN, buff=.4)
        derivative_2 = MathTex(r"\frac{1}{\tfrac{-1}{x}}", r"\cdot", r"\left(\frac{1}{x^2}\right)", r"=-\frac{1}{x}", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.4)

        self.add(derivative_1)
        
        # Define the voiceover text
        voiceover_text = self.translate("General.correct_2")+self.translate("Calc_1.practice_derivatives.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("outer_func")
            self.play(outer_func.animate.set_color(RED), run_time=1)

            self.wait_until_bookmark("inner_func")
            self.play(outer_func.animate.set_color(c1t), inner_func.animate.set_color(RED), run_time=1)

            self.wait_until_bookmark("chain_rule")
            self.play(inner_func.animate.set_color(c1t), Write(step_1), run_time=1)

            self.wait_until_bookmark("add_outer_func")
            of_copy = VGroup(outer_func, inner_func).copy().set_color(RED)
            self.play(FadeIn(of_copy), run_time=.5)

            self.wait_until_bookmark("transform_outer_func")
            self.play(ReplacementTransform(of_copy, derivative_2[0]), run_time=.5)

            self.wait_until_bookmark("add_inner_func")
            if_copy = inner_func.copy().set_color(RED)
            self.play(FadeIn(if_copy), run_time=.5)

            self.wait_until_bookmark("transform_inner_func")
            self.play(ReplacementTransform(if_copy, derivative_2[2]), Write(derivative_2[1]), run_time=.5)

            self.wait_until_bookmark("solution")
            self.play(Write(derivative_2[-1]), run_time=.5)


        # Wait for 4 seconds at the end of the animation
        self.wait(6)        

class Calc_practice_derivatives_1_b(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        chain_rule = self.translate("General.chain_rule")
        # Define the function text using MathTex
        derivative_1 = MathTex(r"\frac{d}{dx}", r"\ln\left(", r"-\frac{1}{x}", r"\right)", r"=\,\,?", color=c1t, font_size=fs2).set_y(2)
        outer_func, inner_func = VGroup(derivative_1[1], derivative_1[3]), derivative_1[2]
        step_1 = Tex(r"$\Downarrow$ ", chain_rule, color=BLUE, font_size=fs2).next_to(derivative_1, DOWN, buff=.4)
        derivative_2 = MathTex(r"\frac{1}{\tfrac{-1}{x}}", r"\cdot", r"\left(\frac{1}{x^2}\right)", r"=-\frac{1}{x}", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.4)

        self.add(derivative_1)
        
        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_2")+self.translate("Calc_1.practice_derivatives.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("outer_func")
            self.play(outer_func.animate.set_color(RED), run_time=1)

            self.wait_until_bookmark("inner_func")
            self.play(outer_func.animate.set_color(c1t), inner_func.animate.set_color(RED), run_time=1)

            self.wait_until_bookmark("chain_rule")
            self.play(inner_func.animate.set_color(c1t), Write(step_1), run_time=1)

            self.wait_until_bookmark("add_outer_func")
            of_copy = VGroup(outer_func, inner_func).copy().set_color(RED)
            self.play(FadeIn(of_copy), run_time=.5)

            self.wait_until_bookmark("transform_outer_func")
            self.play(ReplacementTransform(of_copy, derivative_2[0]), run_time=.5)

            self.wait_until_bookmark("add_inner_func")
            if_copy = inner_func.copy().set_color(RED)
            self.play(FadeIn(if_copy), run_time=.5)

            self.wait_until_bookmark("transform_inner_func")
            self.play(ReplacementTransform(if_copy, derivative_2[2]), Write(derivative_2[1]), run_time=.5)

            self.wait_until_bookmark("solution")
            self.play(Write(derivative_2[-1]), run_time=.5)


        # Wait for 4 seconds at the end of the animation
        self.wait(6)        
#
#####################################
#####################################
class Calc_practice_derivatives_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
            """
            \frac{-\sin(x)(x^2-4)-\cos(x)(2x)}{(x^2-4)^2} or an equivalent statement
            """,
            """
            The answer is incorrect.
            """
            ],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_derivatives.2q.question-text"),
            llmCheckDetails=SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex=1,
                specialInputSnippets = ["[ ]", "f"],
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        function = MathTex(r"f(x)=", r"\left(", r"{{\cos(x)}", r"\over", r"{x^2-4}}", r"\right)", r"\,", color=c1t, font_size=fs2).set_y(2)
        derivative = MathTex(r"\frac{d}{dx}", r"\left(", r"{{\cos(x)}", r"\over", r"{x^2-4}}", r"\right)", r"\,\,=?", color=c1t, font_size=fs2).set_y(2)
        
        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_derivatives.2q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("f_in")
            self.play(Write(function))

            self.wait_until_bookmark("derivative_transform")
            self.play(*[ReplacementTransform(function[idx], derivative[idx])for idx in range(6)], Write(derivative[-1]))

        

        # Wait for 4 seconds at the end of the animation
        self.wait(6)        

        
class Calc_practice_derivatives_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        quotient_rule = self.translate("General.quotient_rule")

        # Define the function text using MathTex
        derivative_1 = MathTex(r"\frac{d}{dx}", r"\left(", r"{{\cos(x)}", r"\over", r"{x^2-4}}", r"\right)", r"\,\,=?", color=c1t, font_size=fs2).set_y(2)
        step_1 = Tex(r"$\Downarrow$ ", quotient_rule, color=BLUE, font_size=fs2).next_to(derivative_1, DOWN, buff=.4)
        derivative_2 = MathTex(r"{{-\sin(x)", r"(x^2-4)", r"-", r"\cos(x)", r"(2x)}", r"\over", r"{(x^2-4)^2}}", color=c1t, font_size=fs2).scale(.8).next_to(step_1, DOWN, buff=.4)

        step_1[1].scale(.8)
        self.add(derivative_1)
        

        
        # Define the voiceover text
        voiceover_text = self.translate("General.correct_1")+self.translate("Calc_1.practice_derivatives.2a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("quotient_rule")
            self.play(Write(step_1))

            self.wait_until_bookmark("frac_in")
            self.play(Write(derivative_2[5]))

            self.wait_until_bookmark("el_1")
            self.play(ReplacementTransform(derivative_1[2].copy(), derivative_2[0]))

            self.wait_until_bookmark("el_2")
            self.play(ReplacementTransform(derivative_1[4].copy(), derivative_2[1]))

            self.wait_until_bookmark("el_3")
            self.play(ReplacementTransform(derivative_1[2].copy(), derivative_2[3]), Write(derivative_2[2]))

            self.wait_until_bookmark("el_4")
            self.play(ReplacementTransform(derivative_1[4].copy(), derivative_2[4]))

            self.wait_until_bookmark("el_5")
            self.play(ReplacementTransform(derivative_1[4].copy(), derivative_2[6]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
        
class Calc_practice_derivatives_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        quotient_rule = self.translate("General.quotient_rule")

        # Define the function text using MathTex
        derivative_1 = MathTex(r"\frac{d}{dx}", r"\left(", r"{{\cos(x)}", r"\over", r"{x^2-4}}", r"\right)", r"\,\,=?", color=c1t, font_size=fs2).set_y(2)
        step_1 = Tex(r"$\Downarrow$ ", quotient_rule, color=BLUE, font_size=fs2).next_to(derivative_1, DOWN, buff=.4)
        derivative_2 = MathTex(r"{{-\sin(x)", r"(x^2-4)", r"-", r"\cos(x)", r"(2x)}", r"\over", r"{(x^2-4)^2}}", color=c1t, font_size=fs2).scale(.8).next_to(step_1, DOWN, buff=.4)

        step_1[1].scale(.8)
        self.add(derivative_1)
        

        
        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_1")+self.translate("Calc_1.practice_derivatives.2a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("quotient_rule")
            self.play(Write(step_1))

            self.wait_until_bookmark("frac_in")
            self.play(Write(derivative_2[5]))

            self.wait_until_bookmark("el_1")
            self.play(ReplacementTransform(derivative_1[2].copy(), derivative_2[0]))

            self.wait_until_bookmark("el_2")
            self.play(ReplacementTransform(derivative_1[4].copy(), derivative_2[1]))

            self.wait_until_bookmark("el_3")
            self.play(ReplacementTransform(derivative_1[2].copy(), derivative_2[3]), Write(derivative_2[2]))

            self.wait_until_bookmark("el_4")
            self.play(ReplacementTransform(derivative_1[4].copy(), derivative_2[4]))

            self.wait_until_bookmark("el_5")
            self.play(ReplacementTransform(derivative_1[4].copy(), derivative_2[6]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)        

#####################################
#####################################
class Calc_practice_derivatives_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
            """
            e^x(x^2+2x) or e^x(2x+x^2) or e^x*2x+e^x*x^2 or an equivalent statement
            """,
            """
            The answer is incorrect.
            """
            ],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_derivatives.3q.question-text"),
            llmCheckDetails=SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex=1,
                specialInputSnippets = ["[ ]", "f"],
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        function = MathTex(r"f(x)=", r"x^2\cdot e^x", r"\,", color=c1t, font_size=fs2).set_y(2)
        derivative = MathTex(r"\frac{d}{dx}\left(", r"x^2\cdot e^x", r"\right)\,\,=?", color=c1t, font_size=fs2).set_y(2)
        
        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_derivatives.3q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("f_in")
            self.play(Write(function))

            self.wait_until_bookmark("derivative_transform")
            self.play(*[ReplacementTransform(function[idx], derivative[idx])for idx in range(2)], Write(derivative[-1]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)


class Calc_practice_derivatives_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        product_rule = self.translate("General.product_rule")
        derivative_1 = MathTex(r"\frac{d}{dx}\left(", r"x^2", r"\cdot", r"e^x", r"\right)\,\,=?", color=c1t, font_size=fs2).set_y(2)
        derivative_2 = MathTex(r"\frac{d}{dx}\left(", r"x^2", r"\cdot", r"e^x", r"\right)", color=c1t, font_size=fs2).set_y(2)
        step_1 = Tex(r"$\Downarrow$ ", product_rule, color=BLUE, font_size=fs2).next_to(derivative_1, DOWN, buff=.4)
        derivative_3 = MathTex(r"x^2", r"\cdot", r"\frac{d}{dx}", r"e^x", r"+", r"e^x", r"\cdot", r"\frac{d}{dx}", r"x^2", color=c1t, font_size=fs2)
        derivative_4 = MathTex(r"x^2", r"\cdot", r"e^x", r"+", r"e^x", r"\cdot", r"\frac{d}{dx}", r"x^2", color=c1t, font_size=fs2)
        derivative_5 = MathTex(r"x^2", r"\cdot", r"e^x", r"+", r"e^x", r"\cdot", r"2x", color=c1t, font_size=fs2)
        derivative_6 = MathTex(r"e^x", r"\cdot", r"\left(", r"x^2", r"+", r"2x", r"\right)",color=c1t, font_size=fs2)
        derivative_3_to_6 =VGroup(derivative_3, derivative_4, derivative_5, derivative_6).next_to(step_1, DOWN, buff=.4)
        
        self.add(derivative_1)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_4")+self.translate("Calc_1.practice_derivatives.3a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("product_rule_in")
            self.play(Write(step_1), TransformMatchingTex(derivative_1, derivative_2))

            self.wait_until_bookmark("f_x_squared")
            self.play(derivative_2[1].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("g_e_x")
            self.play(derivative_2[1].animate.set_color(c1t), derivative_2[3].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("f")
            self.play(ReplacementTransform(derivative_2[1].copy(), derivative_3[0]), derivative_2[3].animate.set_color(c1t), run_time=1)

            self.wait_until_bookmark("g_prime")
            self.play(ReplacementTransform(derivative_2[3].copy(), VGroup(derivative_3[2], derivative_3[3])), Write(derivative_3[1]), run_time=1)

            self.wait_until_bookmark("g")
            self.play(ReplacementTransform(derivative_2[3].copy(), derivative_3[5]), Write(derivative_3[4]), run_time=1)

            self.wait_until_bookmark("f_prime")
            self.play(ReplacementTransform(derivative_2[1].copy(), VGroup(derivative_3[7], derivative_3[8])), Write(derivative_3[6]), run_time=1)

            self.wait_until_bookmark("solve_g_prime")
            self.play(TransformMatchingTex(derivative_3, derivative_4), run_time=1)

            self.wait_until_bookmark("solve_f_prime")
            self.play(TransformMatchingTex(derivative_4, derivative_5), run_time=1)

            self.wait_until_bookmark("factor_out")
            self.play(TransformMatchingTex(derivative_5, derivative_6), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_derivatives_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        product_rule = self.translate("General.product_rule")
        derivative_1 = MathTex(r"\frac{d}{dx}\left(", r"x^2", r"\cdot", r"e^x", r"\right)\,\,=?", color=c1t, font_size=fs2).set_y(2)
        derivative_2 = MathTex(r"\frac{d}{dx}\left(", r"x^2", r"\cdot", r"e^x", r"\right)", color=c1t, font_size=fs2).set_y(2)
        step_1 = Tex(r"$\Downarrow$ ", product_rule, color=BLUE, font_size=fs2).next_to(derivative_1, DOWN, buff=.4)
        derivative_3 = MathTex(r"x^2", r"\cdot", r"\frac{d}{dx}", r"e^x", r"+", r"e^x", r"\cdot", r"\frac{d}{dx}", r"x^2", color=c1t, font_size=fs2)
        derivative_4 = MathTex(r"x^2", r"\cdot", r"e^x", r"+", r"e^x", r"\cdot", r"\frac{d}{dx}", r"x^2", color=c1t, font_size=fs2)
        derivative_5 = MathTex(r"x^2", r"\cdot", r"e^x", r"+", r"e^x", r"\cdot", r"2x", color=c1t, font_size=fs2)
        derivative_6 = MathTex(r"e^x", r"\cdot", r"\left(", r"x^2", r"+", r"2x", r"\right)",color=c1t, font_size=fs2)
        derivative_3_to_6 =VGroup(derivative_3, derivative_4, derivative_5, derivative_6).next_to(step_1, DOWN, buff=.4)
        
        self.add(derivative_1)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.practice_derivatives.3a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("product_rule_in")
            self.play(Write(step_1), TransformMatchingTex(derivative_1, derivative_2))

            self.wait_until_bookmark("f_x_squared")
            self.play(derivative_2[1].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("g_e_x")
            self.play(derivative_2[1].animate.set_color(c1t), derivative_2[3].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("f")
            self.play(ReplacementTransform(derivative_2[1].copy(), derivative_3[0]), derivative_2[3].animate.set_color(c1t), run_time=1)

            self.wait_until_bookmark("g_prime")
            self.play(ReplacementTransform(derivative_2[3].copy(), VGroup(derivative_3[2], derivative_3[3])), Write(derivative_3[1]), run_time=1)

            self.wait_until_bookmark("g")
            self.play(ReplacementTransform(derivative_2[3].copy(), derivative_3[5]), Write(derivative_3[4]), run_time=1)

            self.wait_until_bookmark("f_prime")
            self.play(ReplacementTransform(derivative_2[1].copy(), VGroup(derivative_3[7], derivative_3[8])), Write(derivative_3[6]), run_time=1)

            self.wait_until_bookmark("solve_g_prime")
            self.play(TransformMatchingTex(derivative_3, derivative_4), run_time=1)

            self.wait_until_bookmark("solve_f_prime")
            self.play(TransformMatchingTex(derivative_4, derivative_5), run_time=1)

            self.wait_until_bookmark("factor_out")
            self.play(TransformMatchingTex(derivative_5, derivative_6), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)   

#####################################
#####################################
class Calc_practice_derivatives_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
            """
            cos(x)+2/x or an equivalent statement
            """,
            """
            The answer is incorrect.
            """
            ],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_derivatives.4q.question-text"),
            llmCheckDetails=SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex=1,
                specialInputSnippets = ["[ ]", "f"],
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        derivative = MathTex(r"\frac{d}{dx}\left(", r"\sin(x)+\ln\left(x^2\right)", r"\right)=?", color=c1t, font_size=fs2).scale(.95).set_y(2)
        
        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_derivatives.4q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("f_in")
            self.play(Write(derivative))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#

class Calc_practice_derivatives_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        
        # Define the function text using MathTex
        scale_factor = .85
        derivative_1 = MathTex(r"\frac{d}{dx}\left(", r"\sin(x)", r"+", r"\ln\left(x^2\right)", r"\right)=?", color=c1t, font_size=fs2).scale(scale_factor).set_y(2)
        derivative_2 = MathTex(r"\frac{d}{dx}\left(", r"\sin(x)", r"+", r"\ln\left(x^2\right)", r"\right)", color=c1t, font_size=fs2).scale(scale_factor).set_y(2)
        step_1 = Tex(r"$\Downarrow$ ", self.translate("General.sum_rule"), color=BLUE, font_size=fs2).scale(scale_factor).next_to(derivative_1, DOWN, buff=.4)
        derivative_3 = MathTex(r"\frac{d}{dx}\left(", r"\sin(x)", r"\right)", r"+", r"\frac{d}{dx}\left(", r"\ln\left(", r"x^2", r"\right)", r"\right)", color=c1t, font_size=fs2).scale(scale_factor).next_to(step_1, DOWN, buff=.4)
        step_2 = Tex(r"$\Downarrow$ ", self.translate("General.chain_rule"), color=BLUE, font_size=fs2).scale(scale_factor).next_to(derivative_3, DOWN, buff=.4)
        derivative_4 = MathTex(r"\cos(x)", r"+", r"\tfrac{1}{x^2}", r"\cdot", r"2x", color=c1t, font_size=fs2).scale(scale_factor).next_to(step_2, DOWN, buff=.4)
        derivative_5 = MathTex(r"\cos(x)", r"+", r"\tfrac{2}{x}", color=c1t, font_size=fs2).scale(scale_factor).next_to(step_2, DOWN, buff=.4)
        self.add(derivative_1)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_3")+self.translate("Calc_1.practice_derivatives.4a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("step_1")
            self.play(Write(step_1), TransformMatchingTex(derivative_1, derivative_2), run_time=1)

            self.wait_until_bookmark("derivative_3")
            self.play(Write(derivative_3), run_time=1)

            self.wait_until_bookmark("step_2_a")
            self.play(Write(step_2[0]), run_time=1)

            self.wait_until_bookmark("sine_prime")
            self.play(ReplacementTransform(VGroup(derivative_3[0], derivative_3[1], derivative_3[2]).copy(), derivative_4[0]), run_time=1)

            self.wait_until_bookmark("step_2_b")
            self.play(Write(step_2[1]), run_time=1)

            self.wait_until_bookmark("highlight_outer")
            outer = VGroup(derivative_3[5], derivative_3[6], derivative_3[7]).copy()
            self.play(outer.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("outer_derivative")
            self.play(ReplacementTransform(outer, derivative_4[2]), Write(derivative_4[1]), run_time=1)

            self.wait_until_bookmark("highlight_inner")
            inner = derivative_3[6].copy()
            self.play(inner.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("inner_derivative")
            self.play(ReplacementTransform(inner, derivative_4[4]), Write(derivative_4[3]), run_time=1)

            self.wait_until_bookmark("highlight_rewrite")
            rewrite = VGroup(derivative_4[2], derivative_4[3], derivative_4[4])
            self.play(rewrite.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("solution")
            self.play(ReplacementTransform(derivative_4[0], derivative_5[0]), ReplacementTransform(derivative_4[1], derivative_5[1]), ReplacementTransform(rewrite, derivative_5[2]), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#

class Calc_practice_derivatives_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        
        # Define the function text using MathTex
        scale_factor = .85
        derivative_1 = MathTex(r"\frac{d}{dx}\left(", r"\sin(x)", r"+", r"\ln\left(x^2\right)", r"\right)=?", color=c1t, font_size=fs2).scale(scale_factor).set_y(2)
        derivative_2 = MathTex(r"\frac{d}{dx}\left(", r"\sin(x)", r"+", r"\ln\left(x^2\right)", r"\right)", color=c1t, font_size=fs2).scale(scale_factor).set_y(2)
        step_1 = Tex(r"$\Downarrow$ ", self.translate("General.sum_rule"), color=BLUE, font_size=fs2).scale(scale_factor).next_to(derivative_1, DOWN, buff=.4)
        derivative_3 = MathTex(r"\frac{d}{dx}\left(", r"\sin(x)", r"\right)", r"+", r"\frac{d}{dx}\left(", r"\ln\left(", r"x^2", r"\right)", r"\right)", color=c1t, font_size=fs2).scale(scale_factor).next_to(step_1, DOWN, buff=.4)
        step_2 = Tex(r"$\Downarrow$ ", self.translate("General.chain_rule"), color=BLUE, font_size=fs2).scale(scale_factor).next_to(derivative_3, DOWN, buff=.4)
        derivative_4 = MathTex(r"\cos(x)", r"+", r"\tfrac{1}{x^2}", r"\cdot", r"2x", color=c1t, font_size=fs2).scale(scale_factor).next_to(step_2, DOWN, buff=.4)
        derivative_5 = MathTex(r"\cos(x)", r"+", r"\tfrac{2}{x}", color=c1t, font_size=fs2).scale(scale_factor).next_to(step_2, DOWN, buff=.4)
        self.add(derivative_1)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.practice_derivatives.4a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("step_1")
            self.play(Write(step_1), TransformMatchingTex(derivative_1, derivative_2), run_time=1)

            self.wait_until_bookmark("derivative_3")
            self.play(Write(derivative_3), run_time=1)

            self.wait_until_bookmark("step_2_a")
            self.play(Write(step_2[0]), run_time=1)

            self.wait_until_bookmark("sine_prime")
            self.play(ReplacementTransform(VGroup(derivative_3[0], derivative_3[1], derivative_3[2]).copy(), derivative_4[0]), run_time=1)

            self.wait_until_bookmark("step_2_b")
            self.play(Write(step_2[1]), run_time=1)

            self.wait_until_bookmark("highlight_outer")
            outer = VGroup(derivative_3[5], derivative_3[6], derivative_3[7]).copy()
            self.play(outer.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("outer_derivative")
            self.play(ReplacementTransform(outer, derivative_4[2]), Write(derivative_4[1]), run_time=1)

            self.wait_until_bookmark("highlight_inner")
            inner = derivative_3[6].copy()
            self.play(inner.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("inner_derivative")
            self.play(ReplacementTransform(inner, derivative_4[4]), Write(derivative_4[3]), run_time=1)

            self.wait_until_bookmark("highlight_rewrite")
            rewrite = VGroup(derivative_4[2], derivative_4[3], derivative_4[4])
            self.play(rewrite.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("solution")
            self.play(ReplacementTransform(derivative_4[0], derivative_5[0]), ReplacementTransform(derivative_4[1], derivative_5[1]), ReplacementTransform(rewrite, derivative_5[2]), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#

#####################################
#####################################
class Calc_practice_derivatives_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
            """
            1/x+e^x*cos(e^x) or an equivalent statement
            """,
            """
            The answer is incorrect.
            """
            ],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_derivatives.5q.question-text"),
            llmCheckDetails=SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex=1,
                specialInputSnippets = ["[ ]", "f"],
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        derivative = MathTex(r"\frac{d}{dx}\left(", r"\ln(x)+", r"\sin\left(e^x\right)", r"\right)=?", color=c1t, font_size=fs2).scale(.95).set_y(2)
        
        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_derivatives.5q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("f_in")
            self.play(Write(derivative))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_derivatives_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        
        # Define the function text using MathTex
        scale_factor = .85
        derivative_1 = MathTex(r"\frac{d}{dx}\left(", r"\ln(x)+", r"\sin\left(e^x\right)", r"\right)=?", color=c1t, font_size=fs2).scale(scale_factor).set_y(2)
        derivative_2 = MathTex(r"\frac{d}{dx}\left(", r"\ln(x)", r"+", r"\sin\left(e^x\right)", r"\right)", color=c1t, font_size=fs2).scale(scale_factor).set_y(2)
        step_1 = Tex(r"$\Downarrow$ ", self.translate("General.sum_rule"), color=BLUE, font_size=fs2).scale(scale_factor).next_to(derivative_1, DOWN, buff=.4)
        derivative_3 = MathTex(r"\frac{d}{dx}\left(", r"\ln(x)", r"\right)", r"+", r"\frac{d}{dx}\left(", r"\sin\left(", r"e^x", r"\right)", r"\right)", color=c1t, font_size=fs2).scale(scale_factor).next_to(step_1, DOWN, buff=.4)
        step_2 = Tex(r"$\Downarrow$ ", self.translate("General.chain_rule"), color=BLUE, font_size=fs2).scale(scale_factor).next_to(derivative_3, DOWN, buff=.4)
        derivative_4 = MathTex(r"\frac1x", r"+", r"\cos(e^x)", r"\cdot", r"e^x", color=c1t, font_size=fs2).scale(scale_factor).next_to(step_2, DOWN, buff=.4)
        self.add(derivative_1)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_3")+self.translate("Calc_1.practice_derivatives.5a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("step_1")
            self.play(Write(step_1), TransformMatchingTex(derivative_1, derivative_2), run_time=1)

            self.wait_until_bookmark("derivative_3")
            self.play(Write(derivative_3), run_time=1)

            self.wait_until_bookmark("step_2_a")
            self.play(Write(step_2[0]), run_time=1)

            self.wait_until_bookmark("sine_prime")
            self.play(ReplacementTransform(VGroup(derivative_3[0], derivative_3[1], derivative_3[2]).copy(), derivative_4[0]), run_time=1)

            self.wait_until_bookmark("step_2_b")
            self.play(Write(step_2[1]), run_time=1)

            self.wait_until_bookmark("highlight_outer")
            outer = VGroup(derivative_3[5], derivative_3[6], derivative_3[7]).copy()
            self.play(outer.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("outer_derivative")
            self.play(ReplacementTransform(outer, derivative_4[2]), Write(derivative_4[1]), run_time=1)

            self.wait_until_bookmark("highlight_inner")
            inner = derivative_3[6].copy()
            self.play(inner.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("inner_derivative")
            self.play(ReplacementTransform(inner, derivative_4[4]), Write(derivative_4[3]), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_derivatives_5_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        
        # Define the function text using MathTex
        scale_factor = .85
        derivative_1 = MathTex(r"\frac{d}{dx}\left(", r"\ln(x)+", r"\sin\left(e^x\right)", r"\right)=?", color=c1t, font_size=fs2).scale(scale_factor).set_y(2)
        derivative_2 = MathTex(r"\frac{d}{dx}\left(", r"\ln(x)", r"+", r"\sin\left(e^x\right)", r"\right)", color=c1t, font_size=fs2).scale(scale_factor).set_y(2)
        step_1 = Tex(r"$\Downarrow$ ", self.translate("General.sum_rule"), color=BLUE, font_size=fs2).scale(scale_factor).next_to(derivative_1, DOWN, buff=.4)
        derivative_3 = MathTex(r"\frac{d}{dx}\left(", r"\ln(x)", r"\right)", r"+", r"\frac{d}{dx}\left(", r"\sin\left(", r"e^x", r"\right)", r"\right)", color=c1t, font_size=fs2).scale(scale_factor).next_to(step_1, DOWN, buff=.4)
        step_2 = Tex(r"$\Downarrow$ ", self.translate("General.chain_rule"), color=BLUE, font_size=fs2).scale(scale_factor).next_to(derivative_3, DOWN, buff=.4)
        derivative_4 = MathTex(r"\frac1x", r"+", r"\cos(e^x)", r"\cdot", r"e^x", color=c1t, font_size=fs2).scale(scale_factor).next_to(step_2, DOWN, buff=.4)
        self.add(derivative_1)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.practice_derivatives.5a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("step_1")
            self.play(Write(step_1), TransformMatchingTex(derivative_1, derivative_2), run_time=1)

            self.wait_until_bookmark("derivative_3")
            self.play(Write(derivative_3), run_time=1)

            self.wait_until_bookmark("step_2_a")
            self.play(Write(step_2[0]), run_time=1)

            self.wait_until_bookmark("sine_prime")
            self.play(ReplacementTransform(VGroup(derivative_3[0], derivative_3[1], derivative_3[2]).copy(), derivative_4[0]), run_time=1)

            self.wait_until_bookmark("step_2_b")
            self.play(Write(step_2[1]), run_time=1)

            self.wait_until_bookmark("highlight_outer")
            outer = VGroup(derivative_3[5], derivative_3[6], derivative_3[7]).copy()
            self.play(outer.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("outer_derivative")
            self.play(ReplacementTransform(outer, derivative_4[2]), Write(derivative_4[1]), run_time=1)

            self.wait_until_bookmark("highlight_inner")
            inner = derivative_3[6].copy()
            self.play(inner.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("inner_derivative")
            self.play(ReplacementTransform(inner, derivative_4[4]), Write(derivative_4[3]), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
#####################################
#####################################
class Calc_practice_derivatives_6_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
            """
            \frac{\frac{1}{x}(x^3-z)-ln(x)(x^3-z)}{(x^3-z)^2} or an equivalent statement
            """,
            """
            The answer is incorrect.
            """
            ],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_derivatives.6q.question-text"),
            llmCheckDetails=SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex=1,
                specialInputSnippets = ["[ ]", "f"],
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        function = MathTex(r"f(x)=", r"\left(", r"{{\ln(x)}", r"\over", r"{x^3-z}}", r"\right)", r"\,", color=c1t, font_size=fs2).set_y(2)
        derivative = MathTex(r"\frac{d}{dx}", r"\left(",  r"{{\ln(x)}", r"\over", r"{x^3-z}}", r"\right)", r"=?", color=c1t, font_size=fs2).set_y(2)
        
        # Define the voiceover tex
        voiceover_text = self.translate("Calc_1.practice_derivatives.6q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("f_in")
            self.play(Write(function))

            self.wait_until_bookmark("derivative_transform")
            self.play(*[ReplacementTransform(function[idx], derivative[idx])for idx in range(6)], Write(derivative[-1]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)        

        
class Calc_practice_derivatives_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        quotient_rule = self.translate("General.quotient_rule")

        # Define the function text using MathTex
        derivative_1 = MathTex(r"\frac{d}{dx}",  r"\left(" r"{{\ln(x)}", r"\over", r"{x^3-z}}", r"\right)", r"=?", color=c1t, font_size=fs2).set_y(2)
        step_1 = Tex(r"$\Downarrow$ ", quotient_rule, color=BLUE, font_size=fs2).next_to(derivative_1, DOWN, buff=.4)
        derivative_2 = MathTex(r"{{\frac1x", r"(x^3-z)", r"-", r"\ln(x)", r"(3x^2)}", r"\over", r"{(x^3-z)^2}}", color=c1t, font_size=fs2).scale(.8).next_to(step_1, DOWN, buff=.4)

        step_1[1].scale(.8)
        self.add(derivative_1)
        

        
        # Define the voiceover text
        voiceover_text = self.translate("General.correct_1")+self.translate("Calc_1.practice_derivatives.6a.voiceover-text")


        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("quotient_rule")
            self.play(Write(step_1))

            self.wait_until_bookmark("frac_in")
            self.play(Write(derivative_2[5]))

            self.wait_until_bookmark("el_1")
            self.play(ReplacementTransform(derivative_1[2].copy(), derivative_2[0]))

            self.wait_until_bookmark("el_2")
            self.play(ReplacementTransform(derivative_1[4].copy(), derivative_2[1]))

            self.wait_until_bookmark("el_3")
            self.play(ReplacementTransform(derivative_1[2].copy(), derivative_2[3]), Write(derivative_2[2]))

            self.wait_until_bookmark("el_4")
            self.play(ReplacementTransform(derivative_1[4].copy(), derivative_2[4]))

            self.wait_until_bookmark("el_5")
            self.play(ReplacementTransform(derivative_1[4].copy(), derivative_2[6]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
        
class Calc_practice_derivatives_6_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.derivatives")
        title = self.add_title(limits)
        self.add(title)

        quotient_rule = self.translate("General.quotient_rule")

        # Define the function text using MathTex
        derivative_1 = MathTex(r"\frac{d}{dx}",  r"\left(" r"{{\ln(x)}", r"\over", r"{x^3-z}}", r"\right)", r"=?", color=c1t, font_size=fs2).set_y(2)
        step_1 = Tex(r"$\Downarrow$ ", quotient_rule, color=BLUE, font_size=fs2).next_to(derivative_1, DOWN, buff=.4)
        derivative_2 = MathTex(r"{{\frac1x", r"(x^3-z)", r"-", r"\ln(x)", r"(3x^2)}", r"\over", r"{(x^3-z)^2}}", color=c1t, font_size=fs2).scale(.8).next_to(step_1, DOWN, buff=.4)

        step_1[1].scale(.8)
        self.add(derivative_1)
        

        
        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_1")+self.translate("Calc_1.practice_derivatives.6a.voiceover-text")


        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("quotient_rule")
            self.play(Write(step_1))

            self.wait_until_bookmark("frac_in")
            self.play(Write(derivative_2[5]))

            self.wait_until_bookmark("el_1")
            self.play(ReplacementTransform(derivative_1[2].copy(), derivative_2[0]))

            self.wait_until_bookmark("el_2")
            self.play(ReplacementTransform(derivative_1[4].copy(), derivative_2[1]))

            self.wait_until_bookmark("el_3")
            self.play(ReplacementTransform(derivative_1[2].copy(), derivative_2[3]), Write(derivative_2[2]))

            self.wait_until_bookmark("el_4")
            self.play(ReplacementTransform(derivative_1[4].copy(), derivative_2[4]))

            self.wait_until_bookmark("el_5")
            self.play(ReplacementTransform(derivative_1[4].copy(), derivative_2[6]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

##################################### Mean value theorem
#####################################
class Calc_practice_mvt_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
                """
                    The correct answer:
                    Steps:
                    - Continuity: \(f(x)\) is a polynomial / composition of continuous functions,, hence continuous on \([0, 3]\).
                    - differentiability: \(f(x)\) is also differentiable on \((0, 3)\).

                    Mean Value Theorem (MVT) application:
                    - f(0) = 2
                    - f(3) = 2
                    - MVT Conclusion: Since f(0) = f(3), there exists at least one point c in ((0, 3) where f'(c) = (2-2)/(3-0)=0.
                                    """,
                    """
                    The student found an answer, but computed the derivative, which was explicitly forbidden.
                    """,
                    """
                    Almost right, the student mentioned the mean value theorem, but forgot to test for differentiability
                    """,
                    """
                    The answer is incorrect.
                    """
                ],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_mvt.1q.question-text"),
            llmCheckDetails=SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex=1,
                specialInputSnippets = ["[ ]", "f"],
            )
        )
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        func = MathTex(r"f(x)=x^3-3x^2+2", color=c1t, font_size=fs2)
        interval = MathTex(r"[0,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2).set_y(1.8)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_mvt.1q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("f_in")
            self.play(Write(func), run_time=.5)

            self.wait_until_bookmark("interval_in")
            self.play(Write(interval), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_mvt_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        differentiable = self.translate("words.differentiable")
        mvt = self.translate("General.mvt")
        zero = self.translate("words.Zero")
        # Define the function text using MathTex
        func = MathTex(r"f(x)=x^3-3x^2+2", color=c1t, font_size=fs2)
        interval = MathTex(r"[0,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        differentiable = Tex(r"$f$ "+differentiable, color=BLUE, font_size=fs2)
        arrow_1 = Tex(r"$\Downarrow$ ", mvt, color=BLUE, font_size=fs2)
        exists_c = Tex(r"$\exists c\in(0,3):$", color=c1t, font_size=fs2)
        f_prime_1 = MathTex(r"f'(c)=", r"\frac{f(b)-f(a)}{b-a}", color=c1t, font_size=fs2)
        f_prime_2 = MathTex(r"f'(c)=", r"\frac{2-2}{3-0}", color=c1t, font_size=fs2)
        f_prime_3 = MathTex(r"f'(c)=", r"0", color=c1t, font_size=fs2)
        f_prime = VGroup(f_prime_1, f_prime_2, f_prime_3).arrange(ORIGIN, aligned_edge=LEFT)
        sol = VGroup(exists_c, f_prime).arrange(DOWN, buff=.2, aligned_edge=LEFT)
        steps = VGroup(differentiable, arrow_1, sol).arrange(DOWN, buff=.4, aligned_edge=LEFT).scale(.9).next_to(func_and_interval, DOWN, buff=.4)
        self.add(func_and_interval)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_4")+self.translate("Calc_1.practice_mvt.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("differentiable")
            self.play(Write(differentiable), run_time=.5)

            self.wait_until_bookmark("mvt_in")
            self.play(Write(arrow_1), run_time=1)

            self.wait_until_bookmark("exists_c")
            self.play(Write(exists_c), run_time=1)

            self.wait_until_bookmark("f_prime_1")
            self.play(Write(f_prime_1), run_time=1)

            self.wait_until_bookmark("f_prime_2")
            self.play(TransformMatchingTex(f_prime_1, f_prime_2), run_time=1)

            self.wait_until_bookmark("f_prime_3")
            self.play(TransformMatchingTex(f_prime_2, f_prime_3), run_time=1)

            self.wait_until_bookmark("all_green")
            self.play(VGroup(differentiable, arrow_1, exists_c, f_prime_3, func_and_interval).animate.set_color(GREEN_D), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_mvt_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        differentiable = self.translate("words.differentiable")
        mvt = self.translate("General.mvt")
        zero = self.translate("words.Zero")
        # Define the function text using MathTex
        func = MathTex(r"f(x)=x^3-3x^2+2", color=c1t, font_size=fs2)
        interval = MathTex(r"[0,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        differentiable = Tex(r"$f$ "+differentiable, color=BLUE, font_size=fs2)
        arrow_1 = Tex(r"$\Downarrow$ ", mvt, color=BLUE, font_size=fs2)
        exists_c = Tex(r"$\exists c\in(0,3):$", color=c1t, font_size=fs2)
        f_prime_1 = MathTex(r"f'(c)=", r"\frac{f(b)-f(a)}{b-a}", color=c1t, font_size=fs2)
        f_prime_2 = MathTex(r"f'(c)=", r"\frac{2-2}{3-0}", color=c1t, font_size=fs2)
        f_prime_3 = MathTex(r"f'(c)=", r"0", color=c1t, font_size=fs2)
        f_prime = VGroup(f_prime_1, f_prime_2, f_prime_3).arrange(ORIGIN, aligned_edge=LEFT)
        sol = VGroup(exists_c, f_prime).arrange(DOWN, buff=.2, aligned_edge=LEFT)
        steps = VGroup(differentiable, arrow_1, sol).arrange(DOWN, buff=.4, aligned_edge=LEFT).scale(.9).next_to(func_and_interval, DOWN, buff=.4)
        self.add(func_and_interval)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_mvt.1a.derivative")+self.translate("Calc_1.practice_mvt.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("differentiable")
            self.play(Write(differentiable), run_time=.5)

            self.wait_until_bookmark("mvt_in")
            self.play(Write(arrow_1), run_time=1)

            self.wait_until_bookmark("exists_c")
            self.play(Write(exists_c), run_time=1)

            self.wait_until_bookmark("f_prime_1")
            self.play(Write(f_prime_1), run_time=1)

            self.wait_until_bookmark("f_prime_2")
            self.play(TransformMatchingTex(f_prime_1, f_prime_2), run_time=1)

            self.wait_until_bookmark("f_prime_3")
            self.play(TransformMatchingTex(f_prime_2, f_prime_3), run_time=1)

            self.wait_until_bookmark("all_green")
            self.play(VGroup(differentiable, arrow_1, exists_c, f_prime_3, func_and_interval).animate.set_color(GREEN_D), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_mvt_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        differentiable = self.translate("words.differentiable")
        mvt = self.translate("General.mvt")
        zero = self.translate("words.Zero")
        # Define the function text using MathTex
        func = MathTex(r"f(x)=x^3-3x^2+2", color=c1t, font_size=fs2)
        interval = MathTex(r"[0,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        differentiable = Tex(r"$f$ "+differentiable, color=BLUE, font_size=fs2)
        arrow_1 = Tex(r"$\Downarrow$ ", mvt, color=BLUE, font_size=fs2)
        exists_c = Tex(r"$\exists c\in(0,3):$", color=c1t, font_size=fs2)
        f_prime_1 = MathTex(r"f'(c)=", r"\frac{f(b)-f(a)}{b-a}", color=c1t, font_size=fs2)
        f_prime_2 = MathTex(r"f'(c)=", r"\frac{2-2}{3-0}", color=c1t, font_size=fs2)
        f_prime_3 = MathTex(r"f'(c)=", r"0", color=c1t, font_size=fs2)
        f_prime = VGroup(f_prime_1, f_prime_2, f_prime_3).arrange(ORIGIN, aligned_edge=LEFT)
        sol = VGroup(exists_c, f_prime).arrange(DOWN, buff=.2, aligned_edge=LEFT)
        steps = VGroup(differentiable, arrow_1, sol).arrange(DOWN, buff=.4, aligned_edge=LEFT).scale(.9).next_to(func_and_interval, DOWN, buff=.4)
        self.add(func_and_interval)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_mvt.1a.forgot_differentiability")+self.translate("Calc_1.practice_mvt.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("differentiable")
            self.play(Write(differentiable), run_time=.5)

            self.wait_until_bookmark("mvt_in")
            self.play(Write(arrow_1), run_time=1)

            self.wait_until_bookmark("exists_c")
            self.play(Write(exists_c), run_time=1)

            self.wait_until_bookmark("f_prime_1")
            self.play(Write(f_prime_1), run_time=1)

            self.wait_until_bookmark("f_prime_2")
            self.play(TransformMatchingTex(f_prime_1, f_prime_2), run_time=1)

            self.wait_until_bookmark("f_prime_3")
            self.play(TransformMatchingTex(f_prime_2, f_prime_3), run_time=1)

            self.wait_until_bookmark("all_green")
            self.play(VGroup(differentiable, arrow_1, exists_c, f_prime_3, func_and_interval).animate.set_color(GREEN_D), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_mvt_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        differentiable = self.translate("words.differentiable")
        mvt = self.translate("General.mvt")
        zero = self.translate("words.Zero")
        # Define the function text using MathTex
        func = MathTex(r"f(x)=x^3-3x^2+2", color=c1t, font_size=fs2)
        interval = MathTex(r"[0,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        differentiable = Tex(r"$f$ "+differentiable, color=BLUE, font_size=fs2)
        arrow_1 = Tex(r"$\Downarrow$ ", mvt, color=BLUE, font_size=fs2)
        exists_c = Tex(r"$\exists c\in(0,3):$", color=c1t, font_size=fs2)
        f_prime_1 = MathTex(r"f'(c)=", r"\frac{f(b)-f(a)}{b-a}", color=c1t, font_size=fs2)
        f_prime_2 = MathTex(r"f'(c)=", r"\frac{2-2}{3-0}", color=c1t, font_size=fs2)
        f_prime_3 = MathTex(r"f'(c)=", r"0", color=c1t, font_size=fs2)
        f_prime = VGroup(f_prime_1, f_prime_2, f_prime_3).arrange(ORIGIN, aligned_edge=LEFT)
        sol = VGroup(exists_c, f_prime).arrange(DOWN, buff=.2, aligned_edge=LEFT)
        steps = VGroup(differentiable, arrow_1, sol).arrange(DOWN, buff=.4, aligned_edge=LEFT).scale(.9).next_to(func_and_interval, DOWN, buff=.4)
        self.add(func_and_interval)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.practice_mvt.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("differentiable")
            self.play(Write(differentiable), run_time=.5)

            self.wait_until_bookmark("mvt_in")
            self.play(Write(arrow_1), run_time=1)

            self.wait_until_bookmark("exists_c")
            self.play(Write(exists_c), run_time=1)

            self.wait_until_bookmark("f_prime_1")
            self.play(Write(f_prime_1), run_time=1)

            self.wait_until_bookmark("f_prime_2")
            self.play(TransformMatchingTex(f_prime_1, f_prime_2), run_time=1)

            self.wait_until_bookmark("f_prime_3")
            self.play(TransformMatchingTex(f_prime_2, f_prime_3), run_time=1)

            self.wait_until_bookmark("all_green")
            self.play(VGroup(differentiable, arrow_1, exists_c, f_prime_3, func_and_interval).animate.set_color(GREEN_D), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
#####################################
#####################################
class Calc_practice_mvt_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=[r"$f(x)=x^3$", r"$g(x)=\frac1x$", r"$h(x)=|x|$", r"$i(x)=\sin(x)$"],
            correctAnswerIndex=2,
            questionText = self.translate("Calc_1.Practice_mvt.2q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        mvt = self.translate("General.mvt")
        title = self.add_title(mvt)
        interval = MathTex(r"[-1,1]", font_size=fs2, color=c1t).next_to(title, DOWN, buff=.4)
        self.add(title)

        answer_a = MathTex(r"a)\,f(x)=x^3", color=BLUE, font_size=fs2)
        answer_b = MathTex(r"b)\,g(x)=\frac{1}{x}", color=BLUE, font_size=fs2)
        answer_c = MathTex(r"c)\,h(x)=|x|", color=BLUE, font_size=fs2)
        answer_d = MathTex(r"d)\,i(x)=\sin(x)", color=BLUE, font_size=fs2)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(interval, DOWN, buff=1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Calc_1.practice_mvt.2q.voiceover-text")
        ) as tracker:

            self.wait_until_bookmark("interval_in")
            self.play(Write(interval), run_time=1)

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a), run_time=1)

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b), run_time=1)

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c), run_time=1)

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d), run_time=1)


        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#

class Calc_practice_mvt_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        mvt = self.translate("General.mvt")
        title = self.add_title(mvt)
        interval = MathTex(r"[-1,1]", font_size=fs2, color=c1t).next_to(title, DOWN, buff=.4)
        self.add(title, interval)

        answer_a = MathTex(r"a)\,f(x)=x^3", color=BLUE, font_size=fs2)
        answer_b = MathTex(r"b)\,g(x)=\frac{1}{x}", color=BLUE, font_size=fs2)
        answer_c = MathTex(r"c)\,h(x)=|x|", color=BLUE, font_size=fs2)
        answer_d = MathTex(r"d)\,i(x)=\sin(x)", color=BLUE, font_size=fs2)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(interval, DOWN, buff=1)

        self.add(answers)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Calc_1.practice_mvt.2a.voiceover-text")
        ) as tracker:
            
            self.wait_until_bookmark("a_b_grey")
            self.play(VGroup(answer_a, answer_b).animate.set_color(GREY), run_time=.5)

            self.wait_until_bookmark("c_red")
            self.play(answer_c.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("d_grey")
            self.play(answer_d.animate.set_color(GREY), run_time=.5)
#
class Calc_practice_mvt_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        mvt = self.translate("General.mvt")
        title = self.add_title(mvt)
        interval = MathTex(r"[-1,1]", font_size=fs2, color=c1t).next_to(title, DOWN, buff=.4)
        self.add(title, interval)

        answer_a = MathTex(r"a)\,f(x)=x^3", color=BLUE, font_size=fs2)
        answer_b = MathTex(r"b)\,g(x)=\frac{1}{x}", color=BLUE, font_size=fs2)
        answer_c = MathTex(r"c)\,h(x)=|x|", color=BLUE, font_size=fs2)
        answer_d = MathTex(r"d)\,i(x)=\sin(x)", color=BLUE, font_size=fs2)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(interval, DOWN, buff=1)

        self.add(answers)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Calc_1.practice_mvt.2a.voiceover-text")
        ) as tracker:
            
            self.wait_until_bookmark("a_b_grey")
            self.play(VGroup(answer_a, answer_b).animate.set_color(GREY), run_time=.5)

            self.wait_until_bookmark("c_red")
            self.play(answer_c.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("d_grey")
            self.play(answer_d.animate.set_color(GREY), run_time=.5)
#
class Calc_practice_mvt_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        mvt = self.translate("General.mvt")
        title = self.add_title(mvt)
        interval = MathTex(r"[-1,1]", font_size=fs2, color=c1t).next_to(title, DOWN, buff=.4)
        self.add(title, interval)

        answer_a = MathTex(r"a)\,f(x)=x^3", color=BLUE, font_size=fs2)
        answer_b = MathTex(r"b)\,g(x)=\frac{1}{x}", color=BLUE, font_size=fs2)
        answer_c = MathTex(r"c)\,h(x)=|x|", color=BLUE, font_size=fs2)
        answer_d = MathTex(r"d)\,i(x)=\sin(x)", color=BLUE, font_size=fs2)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(interval, DOWN, buff=1)

        self.add(answers)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_1")+self.translate("Calc_1.practice_mvt.2a.voiceover-text")
        ) as tracker:
            
            self.wait_until_bookmark("a_b_grey")
            self.play(VGroup(answer_a, answer_b).animate.set_color(GREY), run_time=.5)

            self.wait_until_bookmark("c_red")
            self.play(answer_c.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("d_grey")
            self.play(answer_d.animate.set_color(GREY), run_time=.5)
#
class Calc_practice_mvt_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        mvt = self.translate("General.mvt")
        title = self.add_title(mvt)
        interval = MathTex(r"[-1,1]", font_size=fs2, color=c1t).next_to(title, DOWN, buff=.4)
        self.add(title, interval)

        answer_a = MathTex(r"a)\,f(x)=x^3", color=BLUE, font_size=fs2)
        answer_b = MathTex(r"b)\,g(x)=\frac{1}{x}", color=BLUE, font_size=fs2)
        answer_c = MathTex(r"c)\,h(x)=|x|", color=BLUE, font_size=fs2)
        answer_d = MathTex(r"d)\,i(x)=\sin(x)", color=BLUE, font_size=fs2)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(interval, DOWN, buff=1)

        self.add(answers)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Calc_1.practice_mvt.2a.voiceover-text")
        ) as tracker:
            
            self.wait_until_bookmark("a_b_grey")
            self.play(VGroup(answer_a, answer_b).animate.set_color(GREY), run_time=.5)

            self.wait_until_bookmark("c_red")
            self.play(answer_c.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("d_grey")
            self.play(answer_d.animate.set_color(GREY), run_time=.5)
#


#####################################
#####################################
class Calc_practice_mvt_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$2$", "$0$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_mvt.3q.question-text"),
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

        # Define the function text using MathTex
        func = MathTex(r"f(x)=x^2-2x+3", color=c1t, font_size=fs2)
        interval = MathTex(r"[1,3]", color=c1t, font_size=fs2) 
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2).set_y(1.8)

        exists_c = Tex(r"$\exists c\in(1,3):$", color=BLUE, font_size=fs2)
        f_prime_1 = MathTex(r"f'(c)=", r"?", color=BLUE, font_size=fs2)
        c = VGroup(exists_c, f_prime_1).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(func_and_interval, DOWN, buff=.4)


        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_mvt.3q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(func), run_time=1)

            self.wait_until_bookmark("interval_in")
            self.play(Write(interval), run_time=1)

            self.wait_until_bookmark("exists_in")
            self.play(Write(c[0]), run_time=1)

            self.wait_until_bookmark("f_prime_in")
            self.play(Write(c[1]), run_time=1)


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Calc_practice_mvt_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        func = MathTex(r"f(x)=x^2-2x+3", color=c1t, font_size=fs2)
        interval = MathTex(r"[1,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2).set_y(1.8)
        self.add(func_and_interval)

        exists_c = Tex(r"$\exists c\in(1,3):$", color=BLUE, font_size=fs2)
        f_prime_1 = MathTex(r"f'(c)=", r"?", color=BLUE, font_size=fs2)
        f_prime_2 = MathTex(r"f'(c)=", r"\frac{f(b)-f(a)}{b-a}", color=c1t, font_size=fs2)
        f_prime_3 = MathTex(r"f'(c)=", r"\frac{f(3)-f(1)}{3-1}", color=c1t, font_size=fs2)
        f_prime_4 = MathTex(r"f'(c)=", r"\frac{6-2}{3-1}", color=c1t, font_size=fs2)
        f_prime_5 = MathTex(r"f'(c)=", r"\frac{4}{2}=2", color=c1t, font_size=fs2)
        f_prime = VGroup(f_prime_1, f_prime_2, f_prime_3, f_prime_4, f_prime_5).arrange(ORIGIN, aligned_edge=LEFT)
        c = VGroup(exists_c, f_prime).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(func_and_interval, DOWN, buff=.4)
        self.add(exists_c, f_prime_1)


        # Define the voiceover text
        voiceover_text = self.translate("General.correct_1")+self.translate("Calc_1.practice_mvt.3a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("f_prime_2")
            self.play(TransformMatchingTex(f_prime_1, f_prime_2), run_time=1)
            
            self.wait_until_bookmark("f_prime_3")
            self.play(TransformMatchingTex(f_prime_2, f_prime_3), run_time=1)
            
            self.wait_until_bookmark("f_prime_4")
            self.play(TransformMatchingTex(f_prime_3, f_prime_4), run_time=1)
            
            self.wait_until_bookmark("f_prime_5")
            self.play(TransformMatchingTex(f_prime_4, f_prime_5), run_time=1)


        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_mvt_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        func = MathTex(r"f(x)=x^2-2x+3", color=c1t, font_size=fs2)
        interval = MathTex(r"[1,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2).set_y(1.8)
        self.add(func_and_interval)

        exists_c = Tex(r"$\exists c\in(1,3):$", color=BLUE, font_size=fs2)
        f_prime_1 = MathTex(r"f'(c)=", r"?", color=BLUE, font_size=fs2)
        f_prime_2 = MathTex(r"f'(c)=", r"\frac{f(b)-f(a)}{b-a}", color=c1t, font_size=fs2)
        f_prime_3 = MathTex(r"f'(c)=", r"\frac{f(3)-f(1)}{3-1}", color=c1t, font_size=fs2)
        f_prime_4 = MathTex(r"f'(c)=", r"\frac{6-2}{3-1}", color=c1t, font_size=fs2)
        f_prime_5 = MathTex(r"f'(c)=", r"\frac{4}{2}=2", color=c1t, font_size=fs2)
        f_prime = VGroup(f_prime_1, f_prime_2, f_prime_3, f_prime_4, f_prime_5).arrange(ORIGIN, aligned_edge=LEFT)
        c = VGroup(exists_c, f_prime).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(func_and_interval, DOWN, buff=.4)
        self.add(exists_c, f_prime_1)


        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_1")+self.translate("Calc_1.practice_mvt.3a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("f_prime_2")
            self.play(TransformMatchingTex(f_prime_1, f_prime_2), run_time=1)
            
            self.wait_until_bookmark("f_prime_3")
            self.play(TransformMatchingTex(f_prime_2, f_prime_3), run_time=1)
            
            self.wait_until_bookmark("f_prime_4")
            self.play(TransformMatchingTex(f_prime_3, f_prime_4), run_time=1)
            
            self.wait_until_bookmark("f_prime_5")
            self.play(TransformMatchingTex(f_prime_4, f_prime_5), run_time=1)


        # Wait for 4 seconds at the end of the animation
        self.wait(4)

##################################### Integrals
#####################################
class Calc_practice_integrals_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
            """
            "2\sqrt x+\ln(|1+x|)" or an equivalent statement
            """,
            """
            The answer is incorrect.
            """
            ],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_integrals.1q.question-text"),
            llmCheckDetails=SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex=1,
                specialInputSnippets = ["[ ]", "f"],
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        integrals = self.translate("words.integrals")
        title = self.add_title(integrals)
        self.add(title)

        # Define the function text using MathTex
        function = MathTex(r"f(x)=", r"{{1}", r"\over", r"{\sqrt x}}", r"+", r"{{1}", r"\over", r"{1+x}}", r"\,", color=c1t, font_size=fs2).set_y(2)
        integral = MathTex(r"\int\left(", r"{{1}", r"\over", r"{\sqrt x}}", r"+", r"{{1}", r"\over", r"{1+x}}", r"\right)dx", color=c1t, font_size=fs2).set_y(2)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_integrals.1q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(function), run_time=1)

            self.wait_until_bookmark("int_transform")
            self.play(TransformMatchingTex(function, integral))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)        


class Calc_practice_integrals_1_a(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        integrals = self.translate("words.integrals")
        title = self.add_title(integrals)
        self.add(title)


        linearity = self.translate("General.linearity")
        # Define the function text using MathTex
        integral_1 = MathTex(r"\int\left(", r"{{1}", r"\over", r"{\sqrt x}}", r"+", r"{{1}", r"\over", r"{1+x}}", r"\right)dx", color=c1t, font_size=fs2).set_y(2)
        int_1_a, int_1_plus, int_1_b = VGroup(integral_1[0], integral_1[1], integral_1[2], integral_1[3], integral_1[8]), integral_1[4], VGroup(integral_1[0], integral_1[5], integral_1[6], integral_1[7], integral_1[8])
        self.add(integral_1)
        step_1 = Tex(r"$\Downarrow$ ", linearity, color=BLUE, font_size=fs2).next_to(integral_1, DOWN, buff=.2)
        integral_2 = MathTex(r"\int", r"{{1}", r"\over", r"{\sqrt x}}", r"dx", r"+", r"\int", r"{{1}", r"\over", r"{1+x}}", r"dx", color=c1t, font_size=fs2).set_y(2).next_to(step_1, DOWN, buff=.4)
        part_1, part_2, integral_l, integral_plus, integral_r = VGroup(integral_2[1], integral_2[2], integral_2[3]), VGroup(integral_2[7], integral_2[8], integral_2[9]), VGroup(integral_2[0], integral_2[1], integral_2[2], integral_2[3], integral_2[4]), integral_2[5], VGroup(integral_2[6], integral_2[7], integral_2[8], integral_2[9], integral_2[10])
        step_2 = Tex(r"$\Downarrow$", color=BLUE, font_size=fs2).next_to(integral_2, DOWN, buff=.2)
        integral_3 = MathTex(r"2\sqrt x", r"+", r"\ln(|1+x|)", color=c1t, font_size=fs2).set_y(2).next_to(step_2, DOWN, buff=.2)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_5")+self.translate("Calc_1.practice_integrals.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("linearity")
            self.play(Write(step_1), run_time=1)

            self.wait_until_bookmark("integral_2")
            self.play(ReplacementTransform(int_1_a.copy(), integral_l), ReplacementTransform(int_1_plus.copy(), integral_plus), ReplacementTransform(int_1_b.copy(), integral_r))

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2), run_time=1)

            self.wait_until_bookmark("part_1")
            self.play(ReplacementTransform(part_1.copy(), integral_3[0]))

            self.wait_until_bookmark("part_2")
            self.play(ReplacementTransform(part_2.copy(), integral_3[2]), Write(integral_3[1]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)        
#
class Calc_practice_integrals_1_b(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        integrals = self.translate("words.integrals")
        title = self.add_title(integrals)
        self.add(title)


        linearity = self.translate("General.linearity")
        # Define the function text using MathTex
        integral_1 = MathTex(r"\int\left(", r"{{1}", r"\over", r"{\sqrt x}}", r"+", r"{{1}", r"\over", r"{1+x}}", r"\right)dx", color=c1t, font_size=fs2).set_y(2)
        int_1_a, int_1_plus, int_1_b = VGroup(integral_1[0], integral_1[1], integral_1[2], integral_1[3], integral_1[8]), integral_1[4], VGroup(integral_1[0], integral_1[5], integral_1[6], integral_1[7], integral_1[8])
        self.add(integral_1)
        step_1 = Tex(r"$\Downarrow$ ", linearity, color=BLUE, font_size=fs2).next_to(integral_1, DOWN, buff=.2)
        integral_2 = MathTex(r"\int", r"{{1}", r"\over", r"{\sqrt x}}", r"dx", r"+", r"\int", r"{{1}", r"\over", r"{1+x}}", r"dx", color=c1t, font_size=fs2).set_y(2).next_to(step_1, DOWN, buff=.4)
        part_1, part_2, integral_l, integral_plus, integral_r = VGroup(integral_2[1], integral_2[2], integral_2[3]), VGroup(integral_2[7], integral_2[8], integral_2[9]), VGroup(integral_2[0], integral_2[1], integral_2[2], integral_2[3], integral_2[4]), integral_2[5], VGroup(integral_2[6], integral_2[7], integral_2[8], integral_2[9], integral_2[10])
        step_2 = Tex(r"$\Downarrow$", color=BLUE, font_size=fs2).next_to(integral_2, DOWN, buff=.2)
        integral_3 = MathTex(r"2\sqrt x", r"+", r"\ln(|1+x|)", color=c1t, font_size=fs2).set_y(2).next_to(step_2, DOWN, buff=.2)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_5")+self.translate("Calc_1.practice_integrals.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("linearity")
            self.play(Write(step_1), run_time=1)

            self.wait_until_bookmark("integral_2")
            self.play(ReplacementTransform(int_1_a.copy(), integral_l), ReplacementTransform(int_1_plus.copy(), integral_plus), ReplacementTransform(int_1_b.copy(), integral_r))

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2), run_time=1)

            self.wait_until_bookmark("part_1")
            self.play(ReplacementTransform(part_1.copy(), integral_3[0]))

            self.wait_until_bookmark("part_2")
            self.play(ReplacementTransform(part_2.copy(), integral_3[2]), Write(integral_3[1]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)        
#
##################################### 
#####################################
class Calc_practice_integrals_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
                """
                \frac{x^2}{2} \ln\left(\frac{x}{2}\right) - \frac{x^2}{4}, or \frac{x^2}{2} (\ln\left(\frac{x}{2}\right) - \frac{1}{2}) + C or an equivalent statement. It is also fine, if the student forgets the +c
                """,
                """
                The answer is incorrect.
                """
                ],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_integrals.2q.question-text"),
            llmCheckDetails=SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex=1,
                specialInputSnippets = ["[ ]", "f"],
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        integrals = self.translate("words.integrals")
        title = self.add_title(integrals)
        self.add(title)

        # Define the function text using MathTex
        function = MathTex(r"f(x)=", r"x\ln\left(\frac x2\right)", r"\,", color=c1t, font_size=fs2).set_y(2)
        integral = MathTex(r"\int ", r"x\ln\left(\frac x2\right)", r"dx", color=c1t, font_size=fs2).set_y(2)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_integrals.2q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(function), run_time=1)

            self.wait_until_bookmark("int_transform")
            self.play(TransformMatchingTex(function, integral))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)        


class Calc_practice_integrals_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        integrals = self.translate("words.integrals")
        title = self.add_title(integrals)
        self.add(title)

        # Define the function text using MathTex
        partial_integration = self.translate("General.partial_integration")
        integral_1 = MathTex(r"\int ", r"x", r"\ln\left(\frac x2\right)", r"dx", color=c1t, font_size=fs2).set_y(2)
        step_1 = Tex(r"$\Downarrow$ ", partial_integration, color=BLUE, font_size=fs3).next_to(integral_1, DOWN, buff=.2)
        integral_2_a =  MathTex(r"\ln\left(\frac x2\right)", r"\cdot \frac12x^2", r"-", r"\int ", r"\frac12x^2", r"\cdot", r"\frac1x", r"dx", color=c1t, font_size=fs3)
        integral_2_b =  MathTex(r"\ln\left(\frac x2\right)", r"\cdot \frac12x^2", r"-", r"\int ", r"\frac12x", r"dx", color=c1t, font_size=fs3)
        integral_2 = VGroup(integral_2_a, integral_2_b).arrange(ORIGIN, aligned_edge=LEFT).next_to(step_1, DOWN, buff=.2)
        step_2 = Tex(r"$\Downarrow$", color=BLUE, font_size=fs3).next_to(integral_2, DOWN, buff=.2)
        integral_3 =  MathTex(r"\ln\left(\frac x2\right)", r"\cdot\frac12x^2", r"-", r"\frac14x^2", color=c1t, font_size=fs3).next_to(step_2, DOWN, buff=.2)
        integration_by_parts = MathTex(r"\int ", r"u", r" \, dv", r" = ", r"u", r"v - \int ", r"v", r" \, du", color=c1t, font_size=fs2).move_to(integral_3)

        self.add(integral_1)
        # Define the voiceover text
        voiceover_text = self.translate("General.correct_3")+self.translate("Calc_1.practice_integrals.2a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("step_1_in")
            self.play(Write(step_1), run_time=1)

            self.wait_until_bookmark("highlight_func")
            self.play(Indicate(VGroup(integral_1[1], integral_1[2]), color=RED, scale_factor=1), run_time=2)

            self.wait_until_bookmark("integration_by_parts_in")
            self.play(Write(integration_by_parts), run_time=1)

            self.wait_until_bookmark("highlight_x_dv")
            self.play(Indicate(VGroup(integral_1[1], integration_by_parts[2]), color=RED, scale_factor=1), run_time=3)

            self.wait_until_bookmark("highlight_ln_u")
            self.play(Indicate(VGroup(integral_1[2], integration_by_parts[1]), color=RED, scale_factor=1), run_time=3)

            self.wait_until_bookmark("u_transform")
            self.play(ReplacementTransform(integral_1[2].copy(), integral_2_a[0]), run_time=1)

            self.wait_until_bookmark("dv_transform")
            self.play(ReplacementTransform(integral_1[1].copy(), integral_2_a[1]), run_time=1)

            self.wait_until_bookmark("vdu_int")
            self.play(Write(integral_2_a[2]), Write(integral_2_a[3]), run_time=1)

            self.wait_until_bookmark("v_transform")
            self.play(ReplacementTransform(integral_1[1].copy(), integral_2_a[4]), run_time=1)

            self.wait_until_bookmark("du_transform")
            self.play(ReplacementTransform(integral_1[2].copy(), integral_2_a[6]), Write(integral_2_a[5]), run_time=1)

            self.wait_until_bookmark("simplify")
            self.play(TransformMatchingTex(integral_2_a, integral_2_b), Unwrite(integration_by_parts))

            self.wait_until_bookmark("step_2_in")
            self.play(Write(step_2))

            self.wait_until_bookmark("solution_in")
            self.play(Write(integral_3))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_integrals_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        integrals = self.translate("words.integrals")
        title = self.add_title(integrals)
        self.add(title)

        # Define the function text using MathTex
        partial_integration = self.translate("General.partial_integration")
        integral_1 = MathTex(r"\int ", r"x", r"\ln\left(\frac x2\right)", r"dx", color=c1t, font_size=fs2).set_y(2)
        step_1 = Tex(r"$\Downarrow$ ", partial_integration, color=BLUE, font_size=fs3).next_to(integral_1, DOWN, buff=.2)
        integral_2_a =  MathTex(r"\ln\left(\frac x2\right)", r"\cdot \frac12x^2", r"-", r"\int ", r"\frac12x^2", r"\cdot", r"\frac1x", r"dx", color=c1t, font_size=fs3)
        integral_2_b =  MathTex(r"\ln\left(\frac x2\right)", r"\cdot \frac12x^2", r"-", r"\int ", r"\frac12x", r"dx", color=c1t, font_size=fs3)
        integral_2 = VGroup(integral_2_a, integral_2_b).arrange(ORIGIN, aligned_edge=LEFT).next_to(step_1, DOWN, buff=.2)
        step_2 = Tex(r"$\Downarrow$", color=BLUE, font_size=fs3).next_to(integral_2, DOWN, buff=.2)
        integral_3 =  MathTex(r"\ln\left(\frac x2\right)", r"\cdot\frac12x^2", r"-", r"\frac14x^2", color=c1t, font_size=fs3).next_to(step_2, DOWN, buff=.2)
        integration_by_parts = MathTex(r"\int ", r"u", r" \, dv", r" = ", r"u", r"v - \int ", r"v", r" \, du", color=c1t, font_size=fs2).move_to(integral_3)

        self.add(integral_1)
        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.practice_integrals.2a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("step_1_in")
            self.play(Write(step_1), run_time=1)

            self.wait_until_bookmark("highlight_func")
            self.play(Indicate(VGroup(integral_1[1], integral_1[2]), color=RED, scale_factor=1), run_time=2)

            self.wait_until_bookmark("integration_by_parts_in")
            self.play(Write(integration_by_parts), run_time=1)

            self.wait_until_bookmark("highlight_x_dv")
            self.play(Indicate(VGroup(integral_1[1], integration_by_parts[2]), color=RED, scale_factor=1), run_time=3)

            self.wait_until_bookmark("highlight_ln_u")
            self.play(Indicate(VGroup(integral_1[2], integration_by_parts[1]), color=RED, scale_factor=1), run_time=3)

            self.wait_until_bookmark("u_transform")
            self.play(ReplacementTransform(integral_1[2].copy(), integral_2_a[0]), run_time=1)

            self.wait_until_bookmark("dv_transform")
            self.play(ReplacementTransform(integral_1[1].copy(), integral_2_a[1]), run_time=1)

            self.wait_until_bookmark("vdu_int")
            self.play(Write(integral_2_a[2]), Write(integral_2_a[3]), run_time=1)

            self.wait_until_bookmark("v_transform")
            self.play(ReplacementTransform(integral_1[1].copy(), integral_2_a[4]), run_time=1)

            self.wait_until_bookmark("du_transform")
            self.play(ReplacementTransform(integral_1[2].copy(), integral_2_a[6]), Write(integral_2_a[5]), run_time=1)

            self.wait_until_bookmark("simplify")
            self.play(TransformMatchingTex(integral_2_a, integral_2_b), Unwrite(integration_by_parts))

            self.wait_until_bookmark("step_2_in")
            self.play(Write(step_2))

            self.wait_until_bookmark("solution_in")
            self.play(Write(integral_3))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)


##################################### 
#####################################
class Calc_practice_integrals_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
                """
                "e^x\cdot x-e^x + C or an equivalent statement. It is also fine, if the student forgets the +c
                """,
                """
                The answer is incorrect.
                """
                ],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_integrals.3q.question-text"),
            llmCheckDetails=SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex=1,
                specialInputSnippets = ["[ ]", "f"],
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        integrals = self.translate("words.integrals")
        title = self.add_title(integrals)
        self.add(title)

        # Define the function text using MathTex
        function = MathTex(r"f(x)=", r"x\cdot e^x", r"\,", color=c1t, font_size=fs2).set_y(2)
        integral = MathTex(r"\int ", r"x\cdot e^x", r"dx", color=c1t, font_size=fs2).set_y(2)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_integrals.3q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(function), run_time=1)

            self.wait_until_bookmark("int_transform")
            self.play(TransformMatchingTex(function, integral))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)   

class Calc_practice_integrals_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        integrals = self.translate("words.integrals")
        title = self.add_title(integrals)
        self.add(title)

        # Define the function text using MathTex
        partial_integration = self.translate("General.partial_integration")
        #    integral_1 = MathTex(r"\int ", r"x", r"\ln\left(\frac x2\right)", r"dx", color=c1t, font_size=fs2).set_y(2)
        integral_1 = MathTex(r"\int ", r"x", r"\cdot e^x", r"dx", color=c1t, font_size=fs2).set_y(2)
        step_1 = Tex(r"$\Downarrow$ ", partial_integration, color=BLUE, font_size=fs3).next_to(integral_1, DOWN, buff=.2)
        integral_2_a =  MathTex(r"e^x", r"\cdot x", r"-", r"\int ", r"e^x", r"\cdot", r"1", r"dx", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.2)
        sol =  MathTex(r"e^x", r"\cdot x", r"-", r"e^x", color=GREEN, font_size=fs2).next_to(step_1, DOWN, buff=.3)
        # step_2 = Tex(r"$\Downarrow$", color=BLUE, font_size=fs3).next_to(integral_2, DOWN, buff=.2)
        # integral_3 =  MathTex(r"\ln\left(\frac x2\right)", r"\cdot\frac12x^2", r"-", r"\frac14x^2", color=c1t, font_size=fs3).next_to(step_2, DOWN, buff=.2)
        integration_by_parts = MathTex(r"\int ", r"u", r" \, dv", r" = ", r"u", r"v - \int ", r"v", r" \, du", color=c1t, font_size=fs2).next_to(integral_2_a, DOWN, buff=.6)#.move_to(integral_3)

        self.add(integral_1)
        # Define the voiceover text
        voiceover_text = self.translate("General.correct_3")+self.translate("Calc_1.practice_integrals.3a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("step_1_in")
            self.play(Write(step_1), run_time=1)

            self.wait_until_bookmark("integration_by_parts_in")
            self.play(Write(integration_by_parts), run_time=1)

            self.wait_until_bookmark("highlight_x_dv")
            self.play(Indicate(VGroup(integral_1[2], integration_by_parts[2]), color=RED, scale_factor=1), run_time=2)

            self.wait_until_bookmark("highlight_ln_u")
            self.play(Indicate(VGroup(integral_1[1], integration_by_parts[1]), color=RED, scale_factor=1), run_time=2)

            self.wait_until_bookmark("u_transform")
            self.play(ReplacementTransform(integral_1[2].copy(), integral_2_a[0]), run_time=1)

            self.wait_until_bookmark("dv_transform")
            self.play(ReplacementTransform(integral_1[1].copy(), integral_2_a[1]), run_time=1)

            self.wait_until_bookmark("vdu_int")
            self.play(Write(integral_2_a[2]), Write(integral_2_a[3]), run_time=1)

            self.wait_until_bookmark("v_transform")
            self.play(ReplacementTransform(integral_1[1].copy(), integral_2_a[4]), run_time=1)

            self.wait_until_bookmark("du_transform")
            self.play(ReplacementTransform(integral_1[2].copy(), integral_2_a[6]), Write(integral_2_a[5]), run_time=1)

            self.wait_until_bookmark("sol")
            self.play(TransformMatchingTex(integral_2_a, sol), run_time=1)

            # self.wait_until_bookmark("step_2_in")
            # self.play(Write(step_2))

            # self.wait_until_bookmark("solution_in")
            # self.play(Write(integral_3))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_integrals_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        integrals = self.translate("words.integrals")
        title = self.add_title(integrals)
        self.add(title)

        # Define the function text using MathTex
        partial_integration = self.translate("General.partial_integration")
        #    integral_1 = MathTex(r"\int ", r"x", r"\ln\left(\frac x2\right)", r"dx", color=c1t, font_size=fs2).set_y(2)
        integral_1 = MathTex(r"\int ", r"x", r"\cdot e^x", r"dx", color=c1t, font_size=fs2).set_y(2)
        step_1 = Tex(r"$\Downarrow$ ", partial_integration, color=BLUE, font_size=fs3).next_to(integral_1, DOWN, buff=.2)
        integral_2_a =  MathTex(r"e^x", r"\cdot x", r"-", r"\int ", r"e^x", r"\cdot", r"1", r"dx", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.2)
        sol =  MathTex(r"e^x", r"\cdot x", r"-", r"e^x", color=GREEN, font_size=fs2).next_to(step_1, DOWN, buff=.3)
        # step_2 = Tex(r"$\Downarrow$", color=BLUE, font_size=fs3).next_to(integral_2, DOWN, buff=.2)
        # integral_3 =  MathTex(r"\ln\left(\frac x2\right)", r"\cdot\frac12x^2", r"-", r"\frac14x^2", color=c1t, font_size=fs3).next_to(step_2, DOWN, buff=.2)
        integration_by_parts = MathTex(r"\int ", r"u", r" \, dv", r" = ", r"u", r"v - \int ", r"v", r" \, du", color=c1t, font_size=fs2).next_to(integral_2_a, DOWN, buff=.6)#.move_to(integral_3)

        self.add(integral_1)
        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.practice_integrals.3a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("step_1_in")
            self.play(Write(step_1), run_time=1)

            self.wait_until_bookmark("integration_by_parts_in")
            self.play(Write(integration_by_parts), run_time=1)

            self.wait_until_bookmark("highlight_x_dv")
            self.play(Indicate(VGroup(integral_1[2], integration_by_parts[2]), color=RED, scale_factor=1), run_time=2)

            self.wait_until_bookmark("highlight_ln_u")
            self.play(Indicate(VGroup(integral_1[1], integration_by_parts[1]), color=RED, scale_factor=1), run_time=2)

            self.wait_until_bookmark("u_transform")
            self.play(ReplacementTransform(integral_1[2].copy(), integral_2_a[0]), run_time=1)

            self.wait_until_bookmark("dv_transform")
            self.play(ReplacementTransform(integral_1[1].copy(), integral_2_a[1]), run_time=1)

            self.wait_until_bookmark("vdu_int")
            self.play(Write(integral_2_a[2]), Write(integral_2_a[3]), run_time=1)

            self.wait_until_bookmark("v_transform")
            self.play(ReplacementTransform(integral_1[1].copy(), integral_2_a[4]), run_time=1)

            self.wait_until_bookmark("du_transform")
            self.play(ReplacementTransform(integral_1[2].copy(), integral_2_a[6]), Write(integral_2_a[5]), run_time=1)

            self.wait_until_bookmark("sol")
            self.play(TransformMatchingTex(integral_2_a, sol), run_time=1)

            # self.wait_until_bookmark("step_2_in")
            # self.play(Write(step_2))

            # self.wait_until_bookmark("solution_in")
            # self.play(Write(integral_3))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#

##################################### 
#####################################
class Calc_practice_integrals_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$0$", "$1$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_integrals.4q.question-text"),
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

        integrals = self.translate("words.integrals")
        title = self.add_title(integrals)
        self.add(title)

        # Define the function text using MathTex
        function = MathTex(r"f(x)=", r"\cos(x^2) + e^{-x^2} + x^4 \cos(\pi x)", r"\,", color=c1t, font_size=fs3).set_y(2)
        integral = MathTex(r"\int\limits_{-10}^{10} ", r"\cos(x^2) + e^{-x^2} + x^4 \cos(\pi x)", r"dx", color=c1t, font_size=fs3).set_y(2)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_integrals.4q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(function), run_time=1)

            self.wait_until_bookmark("int_transform")
            self.play(TransformMatchingTex(function, integral))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)  

class Calc_practice_integrals_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        integrals = self.translate("words.integrals")
        title = self.add_title(integrals)
        self.add(title)

        # Define the function text using MathTex
        integral = MathTex(r"\int\limits", r"_{-10}^{10} ", r"\cos(x^2)", r" +", r" e^{-x^2}", r" +", r" x^4 \cos(\pi x)", r"dx", color=c1t, font_size=fs3).set_y(2)
        self.add(integral)
        zero = MathTex(r"\Rightarrow =0", color=GREEN, font_size=fs2).next_to(integral, DOWN, buff=.2)
        el_1, el_2, el_3 = integral[2], integral[4], integral[6]
        limits = integral[1]

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_1")+self.translate("Calc_1.practice_integrals.4a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("el_1")
            self.play(Indicate(el_1, color=RED, scale_factor=1), run_time=2)

            self.wait_until_bookmark("el_2")
            self.play(Indicate(el_2, color=RED, scale_factor=1), run_time=2)

            self.wait_until_bookmark("el_3")
            self.play(Indicate(el_3, color=RED, scale_factor=1), run_time=2)

            self.wait_until_bookmark("limits")
            self.play(Indicate(limits, color=RED, scale_factor=1), run_time=3)

            self.wait_until_bookmark("sol")
            self.play(Write(zero), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)  

class Calc_practice_integrals_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        integrals = self.translate("words.integrals")
        title = self.add_title(integrals)
        self.add(title)

        # Define the function text using MathTex
        integral = MathTex(r"\int\limits", r"_{-10}^{10} ", r"\cos(x^2)", r" +", r" e^{-x^2}", r" +", r" x^4 \cos(\pi x)", r"dx", color=c1t, font_size=fs3).set_y(2)
        self.add(integral)
        zero = MathTex(r"\Rightarrow =0", color=GREEN, font_size=fs2).next_to(integral, DOWN, buff=.2)
        el_1, el_2, el_3 = integral[2], integral[4], integral[6]
        limits = integral[1]

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_1")+self.translate("Calc_1.practice_integrals.4a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("el_1")
            self.play(Indicate(el_1, color=RED, scale_factor=1), run_time=2)

            self.wait_until_bookmark("el_2")
            self.play(Indicate(el_2, color=RED, scale_factor=1), run_time=2)

            self.wait_until_bookmark("el_3")
            self.play(Indicate(el_3, color=RED, scale_factor=1), run_time=2)

            self.wait_until_bookmark("limits")
            self.play(Indicate(limits, color=RED, scale_factor=1), run_time=3)

            self.wait_until_bookmark("sol")
            self.play(Write(zero), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)  

##################################### 
#####################################
class Calc_practice_integrals_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
                """
                "-\cos(x)-\frac{1}{x} + C or an equivalent statement. It is also fine, if the student forgets the +c
                """,
                """
                The answer is incorrect.
                """
                ],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_integrals.5q.question-text"),
            llmCheckDetails=SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex=1,
                specialInputSnippets = ["[ ]", "f"],
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        integrals = self.translate("words.integrals")
        title = self.add_title(integrals)
        self.add(title)

        # Define the function text using MathTex
        function = MathTex(r"f(x)=", r"\sin(x)", r"+", r"{{1}", r"\over", r"{x^2}}", r"\,", color=c1t, font_size=fs2).set_y(2)
        integral = MathTex(r"\int\left(" , r"\sin(x)", r"+", r"{{1}", r"\over", r"{x^2}}", r"\right)dx", color=c1t, font_size=fs2).set_y(2)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_integrals.5q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(function), run_time=1)

            self.wait_until_bookmark("int_transform")
            self.play(TransformMatchingTex(function, integral))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)        

class Calc_practice_integrals_5_a(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        integrals = self.translate("words.integrals")
        title = self.add_title(integrals)
        self.add(title)


        linearity = self.translate("General.linearity")
        # Define the function text using MathTex
        integral_1 = MathTex(r"\int\left(" , r"\sin(x)", r"+", r"{{1}", r"\over", r"{x^2}}", r"\right)dx", color=c1t, font_size=fs2).set_y(2)
        int_1_a, int_1_plus, int_1_b = VGroup(integral_1[0], integral_1[1]), integral_1[2], VGroup(integral_1[0], integral_1[3], integral_1[4], integral_1[5], integral_1[-1])
        self.add(integral_1)
        step_1 = Tex(r"$\Downarrow$ ", linearity, color=BLUE, font_size=fs2).next_to(integral_1, DOWN, buff=.2)
        integral_2 = MathTex(r"\int", r"\sin(x)", r"dx", r"+", r"\int", r"{{1}", r"\over", r"{x^2}}", r"dx", color=c1t, font_size=fs2).set_y(2).next_to(step_1, DOWN, buff=.4)
        part_1, part_2, integral_l, integral_plus, integral_r = VGroup(integral_2[1]), VGroup(integral_2[5], integral_2[6], integral_2[7]), VGroup(integral_2[0], integral_2[1], integral_2[2]), integral_2[3], VGroup(integral_2[4], integral_2[5], integral_2[6], integral_2[7], integral_2[8])
        step_2 = Tex(r"$\Downarrow$", color=BLUE, font_size=fs2).next_to(integral_2, DOWN, buff=.2)
        integral_3 = MathTex(r"-\cos(x)", r"-", r"\frac{1}{x}", color=c1t, font_size=fs2).set_y(2).next_to(step_2, DOWN, buff=.2)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_5")+self.translate("Calc_1.practice_integrals.5a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("linearity")
            self.play(Write(step_1), run_time=1)

            self.wait_until_bookmark("integral_2")
            self.play(ReplacementTransform(int_1_a.copy(), integral_l), ReplacementTransform(int_1_plus.copy(), integral_plus), ReplacementTransform(int_1_b.copy(), integral_r))

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2), run_time=1)

            self.wait_until_bookmark("part_1")
            self.play(ReplacementTransform(part_1.copy(), integral_3[0]))

            self.wait_until_bookmark("part_2")
            self.play(ReplacementTransform(part_2.copy(), integral_3[2]), Write(integral_3[1]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)        
#
class Calc_practice_integrals_5_b(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        integrals = self.translate("words.integrals")
        title = self.add_title(integrals)
        self.add(title)


        linearity = self.translate("General.linearity")
        # Define the function text using MathTex
        integral_1 = MathTex(r"\int\left(" , r"\sin(x)", r"+", r"{{1}", r"\over", r"{x^2}}", r"\right)dx", color=c1t, font_size=fs2).set_y(2)
        int_1_a, int_1_plus, int_1_b = VGroup(integral_1[0], integral_1[1]), integral_1[2], VGroup(integral_1[0], integral_1[3], integral_1[4], integral_1[5], integral_1[-1])
        self.add(integral_1)
        step_1 = Tex(r"$\Downarrow$ ", linearity, color=BLUE, font_size=fs2).next_to(integral_1, DOWN, buff=.2)
        integral_2 = MathTex(r"\int", r"\sin(x)", r"dx", r"+", r"\int", r"{{1}", r"\over", r"{x^2}}", r"dx", color=c1t, font_size=fs2).set_y(2).next_to(step_1, DOWN, buff=.4)
        part_1, part_2, integral_l, integral_plus, integral_r = VGroup(integral_2[1]), VGroup(integral_2[5], integral_2[6], integral_2[7]), VGroup(integral_2[0], integral_2[1], integral_2[2]), integral_2[3], VGroup(integral_2[4], integral_2[5], integral_2[6], integral_2[7], integral_2[8])
        step_2 = Tex(r"$\Downarrow$", color=BLUE, font_size=fs2).next_to(integral_2, DOWN, buff=.2)
        integral_3 = MathTex(r"-\cos(x)", r"-", r"\frac{1}{x}", color=c1t, font_size=fs2).set_y(2).next_to(step_2, DOWN, buff=.2)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_5")+self.translate("Calc_1.practice_integrals.5a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("linearity")
            self.play(Write(step_1), run_time=1)

            self.wait_until_bookmark("integral_2")
            self.play(ReplacementTransform(int_1_a.copy(), integral_l), ReplacementTransform(int_1_plus.copy(), integral_plus), ReplacementTransform(int_1_b.copy(), integral_r))

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2), run_time=1)

            self.wait_until_bookmark("part_1")
            self.play(ReplacementTransform(part_1.copy(), integral_3[0]))

            self.wait_until_bookmark("part_2")
            self.play(ReplacementTransform(part_2.copy(), integral_3[2]), Write(integral_3[1]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)        
#

##################################### Partial fraction decomposition
#####################################
class Calc_practice_pfd_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$A=1$, $B=2$, $C=3$", "$A=0$, $B=0$, $C=0$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_pfd.10q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$A=\key{A}$, $B=\key{B}$, $C=\key{C}$",
                answerOptionsTypes={
                    "A": "number",
                    "B": "number",
                    "C": "number",
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        pfd = self.translate("General.pfd")
        title = self.add_title(pfd)
        self.add(title)

        # Define the function text using MathTex
        pfd = MathTex(r"\frac{4x^2+2x+3}{x^3+x}", r"=\frac{Ax+B}{x^2+1}+\frac{C}{x}", color=c1t, font_size=fs3).set_y(2)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,0,0]).scale(.45)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_pfd.01q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("pfd_in")
            self.play(Write(pfd[0]))

            self.wait_until_bookmark("ansatz_in")
            self.play(Write(pfd[1]))

            self.wait_until_bookmark("qmark_in")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)


class Calc_practice_pfd_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        pfd = self.translate("General.pfd")
        title = self.add_title(pfd)
        self.add(title)

        # Define the function text using MathTex
        pfd = MathTex(r"{{4x^2+2x+3}", r"\over", r"{x^3+x}}", r"=", r"{{Ax+B}", r"\over", r"{x^2+1}}", r"+", r"{{C}", r"\over", r"{x}}", color=c1t, font_size=fs3).set_y(2)
        en_0, en_1, en_2, den_0, den_1, den_2 = pfd[0], pfd[4], pfd[8], pfd[2], pfd[6], pfd[10]
        eq_1_a = MathTex(r"4x^2 = Ax^2+Cx^2", color=c1t, font_size=fs2)
        eq_1_b = MathTex(r"4x^2 = Ax^2+3x^2", color=c1t, font_size=fs2)
        eq_1_c = MathTex(r"1 = A", color=c1t, font_size=fs2)
        eq_1 = VGroup(eq_1_a, eq_1_b, eq_1_c).arrange(ORIGIN, aligned_edge=LEFT)
        eq_2_a = MathTex(r"2x = Bx", color=c1t, font_size=fs2)
        eq_2_b = MathTex(r"2 = B", color=c1t, font_size=fs2)
        eq_2 = VGroup(eq_2_a, eq_2_b).arrange(ORIGIN, aligned_edge=LEFT)
        eq_3 = MathTex(r"3 = C", color=c1t, font_size=fs2)
        eqs = VGroup(eq_3, eq_2, eq_1).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(.9).next_to(pfd, DOWN, buff=.6)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").scale(.45)
        
        self.add(qmark, pfd)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_6")+self.translate("Calc_1.practice_pfd.01a.voiceover-text")
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("qmark_out")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("highlight_denoms")
            self.play(Indicate(den_1, color=RED, scale_factor=1.4), Indicate(den_2, color=RED, scale_factor=1.4), run_time=2)

            self.wait_until_bookmark("left_enum")
            self.play(en_1.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("right_denom")
            self.play(den_2.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("right_enum")
            self.play(en_2.animate.set_color(RED), den_2.animate.set_color(c1t), en_1.animate.set_color(c1t), run_time=.5)

            self.wait_until_bookmark("left_denom")
            self.play(den_1.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("higlight_original_enum")
            self.play(en_0.animate.set_color(RED), den_1.animate.set_color(c1t), en_2.animate.set_color(c1t), run_time=.5)
            self.wait(1)
            self.play(en_0.animate.set_color(c1t))

            self.wait_until_bookmark("eq_3")
            self.play(Write(eq_3), run_time=.5)

            self.wait_until_bookmark("higlight_left_denom_2")
            self.play(Indicate(den_1, color=RED, scale_factor=1.4), run_time=2)

            self.wait_until_bookmark("eq_2")
            self.play(Write(eq_2_a), run_time=.5)

            self.wait_until_bookmark("right_denom_2")
            self.play(Indicate(den_2, color=RED, scale_factor=1.4), run_time=2)

            self.wait_until_bookmark("eq_1")
            self.play(Write(eq_1_a), run_time=.5)

            self.wait_until_bookmark("highlight_left_denom_3")
            self.play(Indicate(den_1, color=RED, scale_factor=1.4), run_time=2)

            self.wait_until_bookmark("right_denom_3")
            self.play(Indicate(den_2, color=RED, scale_factor=1.4), run_time=2)

            self.wait_until_bookmark("transform_eq_2")
            self.play(TransformMatchingTex(eq_2_a, eq_2_b), run_time=.5)

            self.wait_until_bookmark("highlight_eq_3")
            self.play(Indicate(eq_3, color=RED, scale_factor=1.4), run_time=1)

            self.wait_until_bookmark("transform_eq_1_a")
            self.play(TransformMatchingTex(eq_1_a, eq_1_b))

            self.wait_until_bookmark("transform_eq_1_b")
            self.play(TransformMatchingTex(eq_1_b, eq_1_c))

            self.wait_until_bookmark("turn_green")
            self.play(eq_1_c.animate.set_color(GREEN), eq_2_b.animate.set_color(GREEN), eq_3.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_pfd_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        pfd = self.translate("General.pfd")
        title = self.add_title(pfd)
        self.add(title)

        # Define the function text using MathTex
        pfd = MathTex(r"{{4x^2+2x+3}", r"\over", r"{x^3+x}}", r"=", r"{{Ax+B}", r"\over", r"{x^2+1}}", r"+", r"{{C}", r"\over", r"{x}}", color=c1t, font_size=fs3).set_y(2)
        en_0, en_1, en_2, den_0, den_1, den_2 = pfd[0], pfd[4], pfd[8], pfd[2], pfd[6], pfd[10]
        eq_1_a = MathTex(r"4x^2 = Ax^2+Cx^2", color=c1t, font_size=fs2)
        eq_1_b = MathTex(r"4x^2 = Ax^2+3x^2", color=c1t, font_size=fs2)
        eq_1_c = MathTex(r"1 = A", color=c1t, font_size=fs2)
        eq_1 = VGroup(eq_1_a, eq_1_b, eq_1_c).arrange(ORIGIN, aligned_edge=LEFT)
        eq_2_a = MathTex(r"2x = Bx", color=c1t, font_size=fs2)
        eq_2_b = MathTex(r"2 = B", color=c1t, font_size=fs2)
        eq_2 = VGroup(eq_2_a, eq_2_b).arrange(ORIGIN, aligned_edge=LEFT)
        eq_3 = MathTex(r"3 = C", color=c1t, font_size=fs2)
        eqs = VGroup(eq_3, eq_2, eq_1).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(.9).next_to(pfd, DOWN, buff=.6)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").scale(.45)
        
        self.add(qmark, pfd)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_6")+self.translate("Calc_1.practice_pfd.01a.voiceover-text")
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("qmark_out")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("highlight_denoms")
            self.play(Indicate(den_1, color=RED, scale_factor=1.4), Indicate(den_2, color=RED, scale_factor=1.4), run_time=2)

            self.wait_until_bookmark("left_enum")
            self.play(en_1.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("right_denom")
            self.play(den_2.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("right_enum")
            self.play(en_2.animate.set_color(RED), den_2.animate.set_color(c1t), en_1.animate.set_color(c1t), run_time=.5)

            self.wait_until_bookmark("left_denom")
            self.play(den_1.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("higlight_original_enum")
            self.play(en_0.animate.set_color(RED), den_1.animate.set_color(c1t), en_2.animate.set_color(c1t), run_time=.5)
            self.wait(1)
            self.play(en_0.animate.set_color(c1t))

            self.wait_until_bookmark("eq_3")
            self.play(Write(eq_3), run_time=.5)

            self.wait_until_bookmark("higlight_left_denom_2")
            self.play(Indicate(den_1, color=RED, scale_factor=1.4), run_time=2)

            self.wait_until_bookmark("eq_2")
            self.play(Write(eq_2_a), run_time=.5)

            self.wait_until_bookmark("right_denom_2")
            self.play(Indicate(den_2, color=RED, scale_factor=1.4), run_time=2)

            self.wait_until_bookmark("eq_1")
            self.play(Write(eq_1_a), run_time=.5)

            self.wait_until_bookmark("highlight_left_denom_3")
            self.play(Indicate(den_1, color=RED, scale_factor=1.4), run_time=2)

            self.wait_until_bookmark("right_denom_3")
            self.play(Indicate(den_2, color=RED, scale_factor=1.4), run_time=2)

            self.wait_until_bookmark("transform_eq_2")
            self.play(TransformMatchingTex(eq_2_a, eq_2_b), run_time=.5)

            self.wait_until_bookmark("highlight_eq_3")
            self.play(Indicate(eq_3, color=RED, scale_factor=1.4), run_time=1)

            self.wait_until_bookmark("transform_eq_1_a")
            self.play(TransformMatchingTex(eq_1_a, eq_1_b))

            self.wait_until_bookmark("transform_eq_1_b")
            self.play(TransformMatchingTex(eq_1_b, eq_1_c))

            self.wait_until_bookmark("turn_green")
            self.play(eq_1_c.animate.set_color(GREEN), eq_2_b.animate.set_color(GREEN), eq_3.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#


##################################### Minimum and Maximum #TODO
#####################################
class Calc_practice_minmax_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$3$", "$0$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_minmax.1q.question-text"),
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

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        beam = ImageMobject(assets_folder / "img" / "aluminum_beam.png").move_to([-5,-1,0]).scale(.45)
        func = MathTex(r"s(x)=-2x^2+12x+20", color=c1t, font_size=fs2).scale(.95).set_y(2)
        

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_minmax.01q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("beam_in")
            self.add_shift_sound(.5)
            self.play(beam.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("func_in")
            self.play(Write(func))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_minmax_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        critical_point_at = self.translate("General.critical_point_at")
        global_maximum_at = self.translate("General.global_maximum_at")
        beam = ImageMobject(assets_folder / "img" / "aluminum_beam.png").set_y(-1).scale(.45)
        func = MathTex(r"s(x)=-2x^2+12x+20", color=c1t, font_size=fs2).scale(.95).set_y(2)
        derivative = MathTex(r"s'(x)=-4x+12", r"\overset!=0", color=c1t, font_size=fs2).scale(.95).next_to(func, DOWN, buff=.4)
        implication_1 = MathTex(r"\Downarrow", color=BLUE, font_size=fs2).next_to(derivative, DOWN, buff=.4)
        zero_1_a = Tex("", r"$x=3$", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.4)
        zero_1_b = Tex(critical_point_at, r"$x=3$", color=c1t, font_size=fs2).move_to(zero_1_a)
        global_max = Tex(global_maximum_at, r"$x=3$", color=c1t, font_size=fs2).scale(.95).move_to(zero_1_b)
        derivative_2 = MathTex(r"s''(x)=-4", r"<0", color=c1t, font_size=fs2).scale(.95).next_to(implication_1, DOWN, buff=.4)
        self.add(beam, func)
        

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_6")+self.translate("Calc_1.practice_minmax.01a.voiceover-text")
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("beam_out")
            self.add_shift_sound(.5)
            self.play(beam.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("derivative_in")
            self.play(Write(derivative[0]))

            self.wait_until_bookmark("derivative_in")
            self.play(Write(derivative[1]), Write(implication_1))

            self.wait_until_bookmark("zero_1")
            self.play(Write(zero_1_a), run_time=0.5)

            self.wait_until_bookmark("critical_point")
            self.play(TransformMatchingTex(zero_1_a, zero_1_b), run_time=1)

            self.wait_until_bookmark("clean_up")
            zero_1_b.generate_target().move_to(derivative)
            self.add_shift_sound(.5)
            self.play(Unwrite(derivative), MoveToTarget(zero_1_b), run_time=.5)

            self.wait_until_bookmark("derivative_2_in")
            self.play(Write(derivative_2[0]))

            self.wait_until_bookmark("derivative_2_neg")
            self.play(Write(derivative_2[1]))

            self.wait_until_bookmark("solution")
            derivative_2.generate_target().move_to(zero_1_b)
            self.add_shift_sound(.5)
            self.play(Write(global_max), Unwrite(zero_1_b), MoveToTarget(derivative_2), run_time=.5)



        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_minmax_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        critical_point_at = self.translate("General.critical_point_at")
        global_maximum_at = self.translate("General.global_maximum_at")
        beam = ImageMobject(assets_folder / "img" / "aluminum_beam.png").set_y(-1).scale(.45)
        func = MathTex(r"s(x)=-2x^2+12x+20", color=c1t, font_size=fs2).scale(.95).set_y(2)
        derivative = MathTex(r"s'(x)=-4x+12", r"\overset!=0", color=c1t, font_size=fs2).scale(.95).next_to(func, DOWN, buff=.4)
        implication_1 = MathTex(r"\Downarrow", color=BLUE, font_size=fs2).next_to(derivative, DOWN, buff=.4)
        zero_1_a = Tex("", r"$x=3$", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.4)
        zero_1_b = Tex(critical_point_at, r"$x=3$", color=c1t, font_size=fs2).move_to(zero_1_a)
        global_max = Tex(global_maximum_at, r"$x=3$", color=c1t, font_size=fs2).scale(.95).move_to(zero_1_b)
        derivative_2 = MathTex(r"s''(x)=-4", r"<0", color=c1t, font_size=fs2).scale(.95).next_to(implication_1, DOWN, buff=.4)
        self.add(beam, func)
        

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_6")+self.translate("Calc_1.practice_minmax.01a.voiceover-text")
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("beam_out")
            self.add_shift_sound(.5)
            self.play(beam.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("derivative_in")
            self.play(Write(derivative[0]))

            self.wait_until_bookmark("derivative_in")
            self.play(Write(derivative[1]), Write(implication_1))

            self.wait_until_bookmark("zero_1")
            self.play(Write(zero_1_a), run_time=0.5)

            self.wait_until_bookmark("critical_point")
            self.play(TransformMatchingTex(zero_1_a, zero_1_b), run_time=1)

            self.wait_until_bookmark("clean_up")
            zero_1_b.generate_target().move_to(derivative)
            self.add_shift_sound(.5)
            self.play(Unwrite(derivative), MoveToTarget(zero_1_b), run_time=.5)

            self.wait_until_bookmark("derivative_2_in")
            self.play(Write(derivative_2[0]))

            self.wait_until_bookmark("derivative_2_neg")
            self.play(Write(derivative_2[1]))

            self.wait_until_bookmark("solution")
            derivative_2.generate_target().move_to(zero_1_b)
            self.add_shift_sound(.5)
            self.play(Write(global_max), Unwrite(zero_1_b), MoveToTarget(derivative_2), run_time=.5)



        # Wait for 4 seconds at the end of the animation
        self.wait(6)


#####################################
#####################################
class Calc_practice_minmax_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
                """The Extreme Value Theorem (Satz von Maximum und Minimum) states that if a function is continuous on a closed interval \([a, b]\), then it attains both its minimum and maximum values at some points within the interval.
                    The function \(f(x) = 4x^3 - 4^{x\cos(x) + x}\) combines polynomial and exponential components. Polynomials are continuous everywhere, and the exponential function \(4^u\), where \(u = x\cos(x) + x\), is also continuous for all real numbers because the composition of continuous functions is continuous. Hence, \(f(x)\) is continuous on the interval \([2, 4]\).
                    Since \(f(x)\) is continuous on the closed interval \([2, 4]\), by the Extreme Value Theorem, it must attain a minimum value on this interval. Therefore, \(f(x)\) does have a minimum on the interval \([2, 4]\).
                The following aspects must be mentioned for the solution to count as correct:
                - Establishing that the function is continuous
                - Mention of the Extreme value theorem (German: Satz von Maximum und Minimum)
                """,
                """
                The student mentioned the Extreme value theorem (German: Satz von Maximum und Minimum). he just forgot to mention the continuity of the function.
                """,
                """
                The answer is incorrect.
                """
                ],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_minmax.2q.question-text"),
            llmCheckDetails=SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex=1,
                specialInputSnippets = ["[ ]", "f"],
            )
        )
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        func = MathTex(r"f(x)=4x^3-4^{x\cos(x)+x}", color=c1t, font_size=fs2)
        interval = MathTex(r"[2,4]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2).set_y(1.8)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_minmax.02q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("f_in")
            self.play(Write(func), run_time=.5)

            self.wait_until_bookmark("interval_in")
            self.play(Write(interval), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_minmax_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        continuous = self.translate("words.continuous")
        minmax = self.translate("General.minmax")
        closed_interval = self.translate("General.closed_interval")
        min_word = self.translate("words.min")

        # Define the function text using MathTex
        func = MathTex(r"f(x)=4x^3-4^{x\cos(x)+x}", color=c1t, font_size=fs2)
        interval = MathTex(r"[2,4]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)

        continuous = Tex(r"$\bullet$ $f$ "+continuous, color=BLUE, font_size=fs2)
        interval_limits = Tex(r"$\bullet$ $[2,4]$ ", closed_interval, color=BLUE, font_size=fs2)
        evt = Tex(r"$\bullet$ ", minmax, r"\\$\Rightarrow\exists$ ", min_word, color=BLUE, font_size=fs2)
        bullets = VGroup(continuous, interval_limits, evt).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(.9).next_to(func_and_interval, DOWN, buff=.4)
        self.add(func_and_interval)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_2")+self.translate("Calc_1.practice_minmax.02a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("continuous")
            self.play(Write(continuous), run_time=.5)

            self.wait_until_bookmark("closed_interval")
            self.play(Write(interval_limits, run_time=.5))

            self.wait_until_bookmark("evt")
            self.play(Write(evt, run_time=.5))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_minmax_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        continuous = self.translate("words.continuous")
        minmax = self.translate("General.minmax")
        closed_interval = self.translate("General.closed_interval")
        min_word = self.translate("words.min")

        # Define the function text using MathTex
        func = MathTex(r"f(x)=4x^3-4^{x\cos(x)+x}", color=c1t, font_size=fs2)
        interval = MathTex(r"[2,4]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)

        continuous = Tex(r"$\bullet$ $f$ "+continuous, color=BLUE, font_size=fs2)
        interval_limits = Tex(r"$\bullet$ $[2,4]$ ", closed_interval, color=BLUE, font_size=fs2)
        evt = Tex(r"$\bullet$ ", minmax, r"\\$\Rightarrow\exists$ ", min_word, color=BLUE, font_size=fs2)
        bullets = VGroup(continuous, interval_limits, evt).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(.9).next_to(func_and_interval, DOWN, buff=.4)
        self.add(func_and_interval)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_minmax.02a.forgot_continuity")+self.translate("Calc_1.practice_minmax.02a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("continuous")
            self.play(Write(continuous), run_time=.5)

            self.wait_until_bookmark("closed_interval")
            self.play(Write(interval_limits, run_time=.5))

            self.wait_until_bookmark("evt")
            self.play(Write(evt, run_time=.5))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_minmax_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        continuous = self.translate("words.continuous")
        minmax = self.translate("General.minmax")
        closed_interval = self.translate("General.closed_interval")
        min_word = self.translate("words.min")

        # Define the function text using MathTex
        func = MathTex(r"f(x)=4x^3-4^{x\cos(x)+x}", color=c1t, font_size=fs2)
        interval = MathTex(r"[2,4]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)

        continuous = Tex(r"$\bullet$ $f$ "+continuous, color=BLUE, font_size=fs2)
        interval_limits = Tex(r"$\bullet$ $[2,4]$ ", closed_interval, color=BLUE, font_size=fs2)
        evt = Tex(r"$\bullet$ ", minmax, r"\\$\Rightarrow\exists$ ", min_word, color=BLUE, font_size=fs2)
        bullets = VGroup(continuous, interval_limits, evt).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(.9).next_to(func_and_interval, DOWN, buff=.4)
        self.add(func_and_interval)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_2")+self.translate("Calc_1.practice_minmax.02a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("continuous")
            self.play(Write(continuous), run_time=.5)

            self.wait_until_bookmark("closed_interval")
            self.play(Write(interval_limits, run_time=.5))

            self.wait_until_bookmark("evt")
            self.play(Write(evt, run_time=.5))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#

#####################################
#####################################
class Calc_practice_minmax_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$k_1=-2$, $k_2=2$", "$k_1=0$, $k_2=0$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_minmax.3q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$k_1=\key{k_1}$, $k_2=\key{k_2}$",
                answerOptionsTypes={
                    "k_1": "number",
                    "k_2": "number"
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        crit_points = self.translate("General.critical_points")
        title = self.add_title(crit_points)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"f(x)=", r"2x^3", r"-", r"24x", r"+", r"44", color=c1t, font_size=fs2).set_y(2)
        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,-1,0]).scale(.4)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_minmax.03q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(func), run_time=1)

            self.wait_until_bookmark("qmark")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)
            self.wait(1)
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_minmax_3_a(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        crit_points = self.translate("General.critical_points")
        title = self.add_title(crit_points)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"f(x)=", r"2x^3", r"-", r"24x", r"+", r"44", color=c1t, font_size=fs2).set_y(2)
        f_prime_1 = MathTex(r"f'(x)=", r"6x^2", r"-", r"24", r"", color=c1t, font_size=fs2).next_to(func, DOWN, buff=.4)
        f_prime_2 = MathTex(r"f'(x)=", r"6x^2", r"-", r"24", r"\overset!=0", color=c1t, font_size=fs2).next_to(func, DOWN, buff=.4)
        f_prime_1.shift(RIGHT*(func.get_left()-f_prime_1.get_left()))
        f_prime_2.shift(RIGHT*(func.get_left()-f_prime_2.get_left()))
        sol = MathTex(r"\Rightarrow x=\pm2", color=GREEN, font_size=fs2).next_to(f_prime_2, DOWN, buff=.6)

        self.add(func)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_3")+self.translate("Calc_1.practice_minmax.03a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("f_prime_1")
            self.play(Write(f_prime_1[0]), run_time=1)

            self.wait_until_bookmark("f_prime_2")
            self.play(ReplacementTransform(func[1].copy(), f_prime_1[1]), run_time=1)

            self.wait_until_bookmark("f_prime_3")
            self.play(Write(f_prime_1[2]), ReplacementTransform(func[3].copy(), f_prime_1[3]), run_time=1)

            self.wait_until_bookmark("f_prime_4")
            self.play(TransformMatchingTex(f_prime_1, f_prime_2), run_time=1)

            self.wait_until_bookmark("solution")
            self.play(Write(sol), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_minmax_3_b(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        crit_points = self.translate("General.critical_points")
        title = self.add_title(crit_points)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"f(x)=", r"2x^3", r"-", r"24x", r"+", r"44", color=c1t, font_size=fs2).set_y(2)
        f_prime_1 = MathTex(r"f'(x)=", r"6x^2", r"-", r"24", r"", color=c1t, font_size=fs2).next_to(func, DOWN, buff=.4)
        f_prime_2 = MathTex(r"f'(x)=", r"6x^2", r"-", r"24", r"\overset!=0", color=c1t, font_size=fs2).next_to(func, DOWN, buff=.4)
        f_prime_1.shift(RIGHT*(func.get_left()-f_prime_1.get_left()))
        f_prime_2.shift(RIGHT*(func.get_left()-f_prime_2.get_left()))
        sol = MathTex(r"\Rightarrow x=\pm2", color=GREEN, font_size=fs2).next_to(f_prime_2, DOWN, buff=.6)

        self.add(func)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.practice_minmax.03a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("f_prime_1")
            self.play(Write(f_prime_1[0]), run_time=1)

            self.wait_until_bookmark("f_prime_2")
            self.play(ReplacementTransform(func[1].copy(), f_prime_1[1]), run_time=1)

            self.wait_until_bookmark("f_prime_3")
            self.play(Write(f_prime_1[2]), ReplacementTransform(func[3].copy(), f_prime_1[3]), run_time=1)

            self.wait_until_bookmark("f_prime_4")
            self.play(TransformMatchingTex(f_prime_1, f_prime_2), run_time=1)

            self.wait_until_bookmark("solution")
            self.play(Write(sol), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#

#####################################
#####################################
class Calc_practice_minmax_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$minima=2$, $maxima=3$", "$minima=0$, $maxima=0$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_minmax.4q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$minima=\key{minima}$, $maxima=\key{maxima}$",
                answerOptionsTypes={
                    "minima": "number",
                    "maxima": "number"
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-2,2,1], [-1,1,1], x_ticks=[-2,-1,1,2], y_ticks=[-1,1])
        f = lambda x: x**4-2*x**2+0.5
        plane = cords[0]
        graph = plane.plot(f, color=BLUE, x_range = [-1.5,1.5,1/1000])
        # Define the function text using MathTex
        func = MathTex(r"f(x)=", r"x^4", r"-", r"2x^2", r"+", r"0.5", color=c1t, font_size=fs2)
        interval = MathTex(r"[-1.5,1.5]", color=c1t, font_size=fs2).scale(.9)
        func_and_interval = VGroup(func,interval).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(cords, DOWN, buff=.4)

        self.add(cords, graph, func)
        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_minmax.04q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(func), run_time=1)

            self.wait_until_bookmark("graph_in")
            self.play(Write(cords), Write(graph), run_time=1)

            self.wait_until_bookmark("interval_in")
            self.play(Write(interval), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#

class Calc_practice_minmax_4_a(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-2,2,1], [-1,1,1], x_ticks=[-2,-1,1,2], y_ticks=[-1, -0.5, 0.5,1])
        f = lambda x: x**4-2*x**2+0.5
        plane = cords[0]
        graph = plane.plot(f, color=BLUE, x_range = [-1.5,1.5,1/1000])
        # Define the function text using MathTex
        func = MathTex(r"f(x)=", r"x^4", r"-", r"2x^2", r"+", r"0.5", color=c1t, font_size=fs2)
        interval = MathTex(r"[-1.5,1.5]", color=c1t, font_size=fs2).scale(.9)
        func_and_interval = VGroup(func,interval).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(cords, DOWN, buff=.4)

        min_1, min_2 = Circle(color=GREEN, radius=0.1).move_to(plane.c2p(-1,-0.5)), Circle(color=GREEN, radius=0.1).move_to(plane.c2p(1,-0.5))
        max_1, max_2, max_3 = Circle(color=RED, radius=0.1).move_to(plane.c2p(-1.5,1)), Circle(color=RED, radius=0.1).move_to(plane.c2p(0,0.5)), Circle(color=RED, radius=0.1).move_to(plane.c2p(1.5,1))

        self.add(cords, graph, func)
        # Define the voiceover text            """
        voiceover_text = self.translate("General.correct_3")+self.translate("Calc_1.practice_minmax.04a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("minima_in")
            self.play(Write(min_1), run_time=1)
            self.play(Write(min_2), run_time=1)

            self.wait_until_bookmark("maxima_in")
            self.play(Write(max_1), run_time=1)
            self.play(Write(max_2), run_time=1)
            self.play(Write(max_3), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_minmax_4_b(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-2,2,1], [-1,1,1], x_ticks=[-2,-1,1,2], y_ticks=[-1, -0.5, 0.5,1])
        f = lambda x: x**4-2*x**2+0.5
        plane = cords[0]
        graph = plane.plot(f, color=BLUE, x_range = [-1.5,1.5,1/1000])
        # Define the function text using MathTex
        func = MathTex(r"f(x)=", r"x^4", r"-", r"2x^2", r"+", r"0.5", color=c1t, font_size=fs2)
        interval = MathTex(r"[-1.5,1.5]", color=c1t, font_size=fs2).scale(.9)
        func_and_interval = VGroup(func,interval).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(cords, DOWN, buff=.4)

        min_1, min_2 = Circle(color=GREEN, radius=0.1).move_to(plane.c2p(-1,-0.5)), Circle(color=GREEN, radius=0.1).move_to(plane.c2p(1,-0.5))
        max_1, max_2, max_3 = Circle(color=RED, radius=0.1).move_to(plane.c2p(-1.5,1)), Circle(color=RED, radius=0.1).move_to(plane.c2p(0,0.5)), Circle(color=RED, radius=0.1).move_to(plane.c2p(1.5,1))

        self.add(cords, graph, func)
        # Define the voiceover text            """
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.practice_minmax.04a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("minima_in")
            self.play(Write(min_1), run_time=1)
            self.play(Write(min_2), run_time=1)

            self.wait_until_bookmark("maxima_in")
            self.play(Write(max_1), run_time=1)
            self.play(Write(max_2), run_time=1)
            self.play(Write(max_3), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)


#####################################
#####################################
class Calc_practice_minmax_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions= [self.translate("Calc_1.Practice_minmax.5.answer-a"), self.translate("Calc_1.Practice_minmax.5.answer-b"), self.translate("Calc_1.Practice_minmax.5.answer-c"), r"$\overset{\lim}{x\to\infty}f(x)=\infty$"],
            correctAnswerIndex=3,
            questionText = self.translate("Calc_1.Practice_minmax.5q.question")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        continuos = self.translate("words.continuous")
        f = MathTex(r"f(x)=\sin(x)\cdot x^2", color=c1t, font_size=fs2).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex(r"a) "+self.translate("Calc_1.Practice_minmax.5.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(r"b) "+self.translate("Calc_1.Practice_minmax.5.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(r"c) "+self.translate("Calc_1.Practice_minmax.5.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(r"d) "+r"$\overset{\lim}{x\to\infty}f(x)=\infty$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_minmax.05q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("func_in")
            self.play(Write(f))
            
            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#

class Calc_practice_minmax_5_a(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        continuos = self.translate("words.continuous")
        f = MathTex(r"f(x)=sin(x)\cdot x^2", color=c1t, font_size=fs2).set_y(2)
        cords = self.add_cords([-100,100,50], [-10000,10000,5000], x_ticks=[], y_ticks=[]).shift(0.4*UP)
        func = lambda x: np.sin(x)*x**2
        plane = cords[0]
        graph = plane.plot(func, color=BLUE)

        # Define the answer options using Tex
        answer_a = Tex(r"a) "+self.translate("Calc_1.Practice_minmax.5.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(r"b) "+self.translate("Calc_1.Practice_minmax.5.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(r"c) "+self.translate("Calc_1.Practice_minmax.5.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(r"d) "+r"$\overset{\lim}{x\to\infty}f(x)=\infty$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

        self.add(answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_5")+self.translate("Calc_1.practice_minmax.05a.voiceover-text")


        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("plot_in")
            self.play(answers.animate.shift(DOWN*.8), Unwrite(f), Write(cords), Write(graph))

            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN), run_time=1)

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), run_time=1)

            self.wait_until_bookmark("c_green")
            self.play(answer_c.animate.set_color(GREEN), run_time=1)

            self.wait_until_bookmark("d_red")
            self.play(answer_d.animate.set_color(RED), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
class Calc_practice_minmax_5_b(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        continuos = self.translate("words.continuous")
        f = MathTex(r"f(x)=sin(x)\cdot x^2", color=c1t, font_size=fs2).set_y(2)
        cords = self.add_cords([-100,100,50], [-10000,10000,5000], x_ticks=[], y_ticks=[]).shift(0.4*UP)
        func = lambda x: np.sin(x)*x**2
        plane = cords[0]
        graph = plane.plot(func, color=BLUE)

        # Define the answer options using Tex
        answer_a = Tex(r"a) "+self.translate("Calc_1.Practice_minmax.5.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(r"b) "+self.translate("Calc_1.Practice_minmax.5.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(r"c) "+self.translate("Calc_1.Practice_minmax.5.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(r"d) "+r"$\overset{\lim}{x\to\infty}f(x)=\infty$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

        self.add(answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_5")+self.translate("Calc_1.practice_minmax.05a.voiceover-text")


        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("plot_in")
            self.play(answers.animate.shift(DOWN*.8), Unwrite(f), Write(cords), Write(graph))

            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN), run_time=1)

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), run_time=1)

            self.wait_until_bookmark("c_green")
            self.play(answer_c.animate.set_color(GREEN), run_time=1)

            self.wait_until_bookmark("d_red")
            self.play(answer_d.animate.set_color(RED), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
class Calc_practice_minmax_5_c(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        continuos = self.translate("words.continuous")
        f = MathTex(r"f(x)=sin(x)\cdot x^2", color=c1t, font_size=fs2).set_y(2)
        cords = self.add_cords([-100,100,50], [-10000,10000,5000], x_ticks=[], y_ticks=[]).shift(0.4*UP)
        func = lambda x: np.sin(x)*x**2
        plane = cords[0]
        graph = plane.plot(func, color=BLUE)

        # Define the answer options using Tex
        answer_a = Tex(r"a) "+self.translate("Calc_1.Practice_minmax.5.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(r"b) "+self.translate("Calc_1.Practice_minmax.5.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(r"c) "+self.translate("Calc_1.Practice_minmax.5.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(r"d) "+r"$\overset{\lim}{x\to\infty}f(x)=\infty$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

        self.add(answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_5")+self.translate("Calc_1.practice_minmax.05a.voiceover-text")


        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("plot_in")
            self.play(answers.animate.shift(DOWN*.8), Unwrite(f), Write(cords), Write(graph))

            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN), run_time=1)

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), run_time=1)

            self.wait_until_bookmark("c_green")
            self.play(answer_c.animate.set_color(GREEN), run_time=1)

            self.wait_until_bookmark("d_red")
            self.play(answer_d.animate.set_color(RED), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
class Calc_practice_minmax_5_d(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        continuos = self.translate("words.continuous")
        f = MathTex(r"f(x)=sin(x)\cdot x^2", color=c1t, font_size=fs2).set_y(2)
        cords = self.add_cords([-100,100,50], [-10000,10000,5000], x_ticks=[], y_ticks=[]).shift(0.4*UP)
        func = lambda x: np.sin(x)*x**2
        plane = cords[0]
        graph = plane.plot(func, color=BLUE)

        # Define the answer options using Tex
        answer_a = Tex(r"a) "+self.translate("Calc_1.Practice_minmax.5.answer-a"), color=BLUE, font_size=fs3)
        answer_b = Tex(r"b) "+self.translate("Calc_1.Practice_minmax.5.answer-b"), color=BLUE, font_size=fs3)
        answer_c = Tex(r"c) "+self.translate("Calc_1.Practice_minmax.5.answer-c"), color=BLUE, font_size=fs3)
        answer_d = Tex(r"d) "+r"$\overset{\lim}{x\to\infty}f(x)=\infty$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

        self.add(answers)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_5")+self.translate("Calc_1.practice_minmax.05a.voiceover-text")


        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("plot_in")
            self.play(answers.animate.shift(DOWN*.8), Unwrite(f), Write(cords), Write(graph))

            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN), run_time=1)

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), run_time=1)

            self.wait_until_bookmark("c_green")
            self.play(answer_c.animate.set_color(GREEN), run_time=1)

            self.wait_until_bookmark("d_red")
            self.play(answer_d.animate.set_color(RED), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#

##################################### Induction proof
#####################################
class Calc_practice_induction_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
                """
                To prove that the power set of a set with \( n \) elements contains \( 2^n \) elements using mathematical induction, we follow these steps:
                1. **Base Case:** Show the statement is true for a small value of \( n \), usually \( n = 0 \).
                2. **Inductive Step:** Assume the statement is true for some \( n = k \) (where \( k \) is a non-negative integer), and then prove it for \( n = k + 1 \).
                ### Base Case (n = 0)
                Consider a set \( S \) with no elements, i.e., \( S = \{\} \). The power set of \( S \), denoted \( \mathcal{P}(S) \), contains only the empty set: \( \mathcal{P}(S) = \{\{\}\} \). 
                The number of elements in \( \mathcal{P}(S) \) is 1, which is \( 2^0 \) (since \( 2^0 = 1 \)). So, the statement holds true for \( n = 0 \).
                ### Inductive Step
                Assume that the statement is true for a set with \( k \) elements, where \( k \) is any non-negative integer. That is, assume any set with \( k \) elements has a power set containing \( 2^k \) elements.
                Now consider a set \( T \) with \( k + 1 \) elements. We can write \( T = S \cup \{x\} \), where \( S \) is a set with \( k \) elements and \( x \) is an element not in \( S \).
                The power set of \( T \), \( \mathcal{P}(T) \), consists of all subsets of \( S \) (which, by our inductive hypothesis, number \( 2^k \)) plus all subsets of \( S \) with \( x \) added to them.
                For each subset of \( S \), there is a corresponding unique subset in \( \mathcal{P}(T) \) that includes the element \( x \). Since there are \( 2^k \) subsets of \( S \), adding \( x \) to each of these subsets creates another \( 2^k \) subsets.
                Thus, the total number of subsets in \( \mathcal{P}(T) \) is \( 2^k \) (subsets of \( S \)) plus \( 2^k \) (subsets of \( S \) with \( x \) added), which equals \( 2^k + 2^k = 2 \times 2^k = 2^{k+1} \).
                This proves that a set with \( k + 1 \) elements has a power set containing \( 2^{k+1} \) elements.
                Since the statement is true for \( n = 0 \) (base case) and true for \( n = k \) implies it is true for \( n = k + 1 \) (inductive step), by the principle of mathematical induction, the statement is true for all non-negative integers \( n \).
                This completes the induction proof.
                For this answer to be correct, the student needs to:
                - do the induction base, explicitly mentioning the empty set
                - do the induction step, correctly arguing why for n plus one, there are twice as many subsets as for n
                """,
                """
                The student did the base correctly, but not the step
                """,
                """
                The student did the step correctly, but not the base.
                """,
                """
                The answer is incorrect.
                """
                ],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_induction.1q.question-text"),
            llmCheckDetails=SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex=1,
                specialInputSnippets = ["[ ]", "f"],
            )
                        )
                    

                    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        power_set_definition = MathTex(r"\mathcal P(S)=\{x | x\subseteq S\}", color=c1t, font_size=fs2)
        power_set_example = MathTex(r"\mathcal P(\{0,1\})", r"=\{\emptyset,\{0\},\{1\},\{0,1\}\}", color=c3t, font_size=fs3)
        power_set = VGroup(power_set_definition, power_set_example).arrange(DOWN, buff=.1, aligned_edge=LEFT).set_y(1.8)
        theorem = VGroup(VGroup(Tex(self.translate("Calc_1.practice_induction.1q.thm_1"), color=c1t, font_size=fs3), Tex(self.translate("Calc_1.practice_induction.1q.thm_2"), color=c1t, font_size=fs3)).arrange(DOWN, buff=.1, aligned_edge=LEFT), MathTex("2^n", color=BLUE, font_size=fs2), Tex(self.translate("words.elements"), color=c1t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(power_set, DOWN, buff=.8)
        theorem[1].set_x(0)


        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_induction.1q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("def_in")
            self.play(Write(power_set_definition), run_time=.5)

            self.wait_until_bookmark("ex_in_1")
            self.play(Write(power_set_example[0]), run_time=.5)

            self.wait_until_bookmark("ex_in_2")
            self.play(Write(power_set_example[1]), run_time=.5)

            self.wait_until_bookmark("theorem_in")
            self.play(Write(theorem), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_induction_1_a(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        
        # Define the function text using MathTex
        power_set_definition = MathTex(r"\mathcal P(S)=\{x | x\subseteq S\}", color=c1t, font_size=fs2)
        power_set_example = MathTex(r"\mathcal P(\{0,1\})", r"=\{\emptyset,\{0\},\{1\},\{0,1\}\}", color=c3t, font_size=fs3)
        power_set = VGroup(power_set_definition, power_set_example).arrange(DOWN, buff=.1, aligned_edge=LEFT).set_y(1.8)
        theorem = VGroup(VGroup(Tex(self.translate("Calc_1.practice_induction.1q.thm_1"), color=c1t, font_size=fs3), Tex(self.translate("Calc_1.practice_induction.1q.thm_2"), color=c1t, font_size=fs3)).arrange(DOWN, buff=.1, aligned_edge=LEFT), MathTex("2^n", color=BLUE, font_size=fs2), Tex(self.translate("words.elements"), color=c1t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(power_set, DOWN, buff=.8)
        theorem[1].set_x(0)

        self.add(power_set, theorem)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        power_set_base = VGroup(MathTex(r"\mathcal P(", r"\emptyset", r")=\{\emptyset\}", color=c3t, font_size=fs3), MathTex(r"|\mathcal P(\emptyset)|=|\{\emptyset\}|=1", r"=2^0", color=c3t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, power_set_base)

        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        elements = MathTex(r"S_{n+1}", r"=S_{n}", r"\cup x_{n+1}", color=c3t, font_size=fs3).next_to(induction_step, DOWN, buff=.2)
        power_set_step = VGroup(MathTex(r"\mathcal P(\{S_{n+1}\})", r"=\{p|p\in \mathcal P(\{S_{n}\})\}", r"\\\cup\{p\cup x_{n+1}|p\in\mathcal P(\{S_{n}\})\}", color=c3t, font_size=fs3), MathTex(r"|\mathcal P(\{S_{n+1}\})|", r"=2|\mathcal P({S_{n}\})|", r"=2^{n+1}", color=c3t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(elements, DOWN, buff=.8)
        step_group = VGroup(induction_step, elements, power_set_step)


        # Define the voiceover text
        voiceover_text = self.translate("General.correct_5")+self.translate("Calc_1.practice_induction.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.add_shift_sound(0.5)
            self.play(VGroup(power_set, theorem).animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("base_in")
            self.play(Write(base), run_time=.5)

            self.wait_until_bookmark("emptyset_in")
            self.play(Write(power_set_base[0][1]), run_time=.5)

            self.wait_until_bookmark("emptyset_powerset_in")
            self.play(Write(power_set_base[0][0]), Write(power_set_base[0][2]), run_time=.5)

            self.wait_until_bookmark("base_in_1")
            self.play(Write(power_set_base[1][0]), run_time=.5)

            self.wait_until_bookmark("base_in_2")
            self.play(Write(power_set_base[1][1]), run_time=.5)

            self.wait_until_bookmark("basegroup_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)

            self.wait_until_bookmark("transition")
            self.add_shift_sound(.5)
            self.play(base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("step_in")
            self.play(Write(induction_step), run_time=.5)

            self.wait_until_bookmark("elements_in_1")
            self.play(Write(elements[0]), run_time=.5)

            self.wait_until_bookmark("elements_in_2")
            self.play(Write(elements[1]), run_time=.5)

            self.wait_until_bookmark("elements_in_3")
            self.play(Write(elements[2]), run_time=.5)

            self.wait_until_bookmark("power_set_in_1")
            self.play(Write(power_set_step[0][0]), run_time=.5)

            self.wait_until_bookmark("power_set_in_2")
            self.play(Write(power_set_step[0][1]), run_time=.5)

            self.wait_until_bookmark("power_set_in_3")
            self.play(Write(power_set_step[0][2]), run_time=.5)

            self.wait_until_bookmark("cardinality_in_1")
            self.play(Write(power_set_step[1][0]), run_time=.5)

            self.wait_until_bookmark("cardinality_in_2")
            self.play(Write(power_set_step[1][1]), run_time=.5)

            self.wait_until_bookmark("cardinality_in_3")
            self.play(Write(power_set_step[1][2]), run_time=.5)

            self.wait_until_bookmark("stepgroup_green")
            self.play(step_group.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_induction_1_b(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        
        # Define the function text using MathTex
        power_set_definition = MathTex(r"\mathcal P(S)=\{x | x\subseteq S\}", color=c1t, font_size=fs2)
        power_set_example = MathTex(r"\mathcal P(\{0,1\})", r"=\{\emptyset,\{0\},\{1\},\{0,1\}\}", color=c3t, font_size=fs3)
        power_set = VGroup(power_set_definition, power_set_example).arrange(DOWN, buff=.1, aligned_edge=LEFT).set_y(1.8)
        theorem = VGroup(VGroup(Tex(self.translate("Calc_1.practice_induction.1q.thm_1"), color=c1t, font_size=fs3), Tex(self.translate("Calc_1.practice_induction.1q.thm_2"), color=c1t, font_size=fs3)).arrange(DOWN, buff=.1, aligned_edge=LEFT), MathTex("2^n", color=BLUE, font_size=fs2), Tex(self.translate("words.elements"), color=c1t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(power_set, DOWN, buff=.8)
        theorem[1].set_x(0)

        self.add(power_set, theorem)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        power_set_base = VGroup(MathTex(r"\mathcal P(", r"\emptyset", r")=\{\emptyset\}", color=c3t, font_size=fs3), MathTex(r"|\mathcal P(\emptyset)|=|\{\emptyset\}|=1", r"=2^0", color=c3t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, power_set_base)

        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        elements = MathTex(r"S_{n+1}", r"=S_{n}", r"\cup x_{n+1}", color=c3t, font_size=fs3).next_to(induction_step, DOWN, buff=.2)
        power_set_step = VGroup(MathTex(r"\mathcal P(\{S_{n+1}\})", r"=\{p|p\in \mathcal P(\{S_{n}\})\}", r"\\\cup\{p\cup x_{n+1}|p\in\mathcal P(\{S_{n}\})\}", color=c3t, font_size=fs3), MathTex(r"|\mathcal P(\{S_{n+1}\})|", r"=2|\mathcal P({S_{n}\})|", r"=2^{n+1}", color=c3t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(elements, DOWN, buff=.8)
        step_group = VGroup(induction_step, elements, power_set_step)


        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_induction.1a.base_correct")+self.translate("Calc_1.practice_induction.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.add_shift_sound(0.5)
            self.play(VGroup(power_set, theorem).animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("base_in")
            self.play(Write(base), run_time=.5)

            self.wait_until_bookmark("emptyset_in")
            self.play(Write(power_set_base[0][1]), run_time=.5)

            self.wait_until_bookmark("emptyset_powerset_in")
            self.play(Write(power_set_base[0][0]), Write(power_set_base[0][2]), run_time=.5)

            self.wait_until_bookmark("base_in_1")
            self.play(Write(power_set_base[1][0]), run_time=.5)

            self.wait_until_bookmark("base_in_2")
            self.play(Write(power_set_base[1][1]), run_time=.5)

            self.wait_until_bookmark("basegroup_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)

            self.wait_until_bookmark("transition")
            self.add_shift_sound(.5)
            self.play(base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("step_in")
            self.play(Write(induction_step), run_time=.5)

            self.wait_until_bookmark("elements_in_1")
            self.play(Write(elements[0]), run_time=.5)

            self.wait_until_bookmark("elements_in_2")
            self.play(Write(elements[1]), run_time=.5)

            self.wait_until_bookmark("elements_in_3")
            self.play(Write(elements[2]), run_time=.5)

            self.wait_until_bookmark("power_set_in_1")
            self.play(Write(power_set_step[0][0]), run_time=.5)

            self.wait_until_bookmark("power_set_in_2")
            self.play(Write(power_set_step[0][1]), run_time=.5)

            self.wait_until_bookmark("power_set_in_3")
            self.play(Write(power_set_step[0][2]), run_time=.5)

            self.wait_until_bookmark("cardinality_in_1")
            self.play(Write(power_set_step[1][0]), run_time=.5)

            self.wait_until_bookmark("cardinality_in_2")
            self.play(Write(power_set_step[1][1]), run_time=.5)

            self.wait_until_bookmark("cardinality_in_3")
            self.play(Write(power_set_step[1][2]), run_time=.5)

            self.wait_until_bookmark("stepgroup_green")
            self.play(step_group.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_induction_1_c(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        
        # Define the function text using MathTex
        power_set_definition = MathTex(r"\mathcal P(S)=\{x | x\subseteq S\}", color=c1t, font_size=fs2)
        power_set_example = MathTex(r"\mathcal P(\{0,1\})", r"=\{\emptyset,\{0\},\{1\},\{0,1\}\}", color=c3t, font_size=fs3)
        power_set = VGroup(power_set_definition, power_set_example).arrange(DOWN, buff=.1, aligned_edge=LEFT).set_y(1.8)
        theorem = VGroup(VGroup(Tex(self.translate("Calc_1.practice_induction.1q.thm_1"), color=c1t, font_size=fs3), Tex(self.translate("Calc_1.practice_induction.1q.thm_2"), color=c1t, font_size=fs3)).arrange(DOWN, buff=.1, aligned_edge=LEFT), MathTex("2^n", color=BLUE, font_size=fs2), Tex(self.translate("words.elements"), color=c1t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(power_set, DOWN, buff=.8)
        theorem[1].set_x(0)

        self.add(power_set, theorem)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        power_set_base = VGroup(MathTex(r"\mathcal P(", r"\emptyset", r")=\{\emptyset\}", color=c3t, font_size=fs3), MathTex(r"|\mathcal P(\emptyset)|=|\{\emptyset\}|=1", r"=2^0", color=c3t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, power_set_base)

        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        elements = MathTex(r"S_{n+1}", r"=S_{n}", r"\cup x_{n+1}", color=c3t, font_size=fs3).next_to(induction_step, DOWN, buff=.2)
        power_set_step = VGroup(MathTex(r"\mathcal P(\{S_{n+1}\})", r"=\{p|p\in \mathcal P(\{S_{n}\})\}", r"\\\cup\{p\cup x_{n+1}|p\in\mathcal P(\{S_{n}\})\}", color=c3t, font_size=fs3), MathTex(r"|\mathcal P(\{S_{n+1}\})|", r"=2|\mathcal P({S_{n}\})|", r"=2^{n+1}", color=c3t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(elements, DOWN, buff=.8)
        step_group = VGroup(induction_step, elements, power_set_step)


        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_induction.1a.step_correct")+self.translate("Calc_1.practice_induction.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.add_shift_sound(0.5)
            self.play(VGroup(power_set, theorem).animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("base_in")
            self.play(Write(base), run_time=.5)

            self.wait_until_bookmark("emptyset_in")
            self.play(Write(power_set_base[0][1]), run_time=.5)

            self.wait_until_bookmark("emptyset_powerset_in")
            self.play(Write(power_set_base[0][0]), Write(power_set_base[0][2]), run_time=.5)

            self.wait_until_bookmark("base_in_1")
            self.play(Write(power_set_base[1][0]), run_time=.5)

            self.wait_until_bookmark("base_in_2")
            self.play(Write(power_set_base[1][1]), run_time=.5)

            self.wait_until_bookmark("basegroup_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)

            self.wait_until_bookmark("transition")
            self.add_shift_sound(.5)
            self.play(base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("step_in")
            self.play(Write(induction_step), run_time=.5)

            self.wait_until_bookmark("elements_in_1")
            self.play(Write(elements[0]), run_time=.5)

            self.wait_until_bookmark("elements_in_2")
            self.play(Write(elements[1]), run_time=.5)

            self.wait_until_bookmark("elements_in_3")
            self.play(Write(elements[2]), run_time=.5)

            self.wait_until_bookmark("power_set_in_1")
            self.play(Write(power_set_step[0][0]), run_time=.5)

            self.wait_until_bookmark("power_set_in_2")
            self.play(Write(power_set_step[0][1]), run_time=.5)

            self.wait_until_bookmark("power_set_in_3")
            self.play(Write(power_set_step[0][2]), run_time=.5)

            self.wait_until_bookmark("cardinality_in_1")
            self.play(Write(power_set_step[1][0]), run_time=.5)

            self.wait_until_bookmark("cardinality_in_2")
            self.play(Write(power_set_step[1][1]), run_time=.5)

            self.wait_until_bookmark("cardinality_in_3")
            self.play(Write(power_set_step[1][2]), run_time=.5)

            self.wait_until_bookmark("stepgroup_green")
            self.play(step_group.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_induction_1_d(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        
        # Define the function text using MathTex
        power_set_definition = MathTex(r"\mathcal P(S)=\{x | x\subseteq S\}", color=c1t, font_size=fs2)
        power_set_example = MathTex(r"\mathcal P(\{0,1\})", r"=\{\emptyset,\{0\},\{1\},\{0,1\}\}", color=c3t, font_size=fs3)
        power_set = VGroup(power_set_definition, power_set_example).arrange(DOWN, buff=.1, aligned_edge=LEFT).set_y(1.8)
        theorem = VGroup(VGroup(Tex(self.translate("Calc_1.practice_induction.1q.thm_1"), color=c1t, font_size=fs3), Tex(self.translate("Calc_1.practice_induction.1q.thm_2"), color=c1t, font_size=fs3)).arrange(DOWN, buff=.1, aligned_edge=LEFT), MathTex("2^n", color=BLUE, font_size=fs2), Tex(self.translate("words.elements"), color=c1t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(power_set, DOWN, buff=.8)
        theorem[1].set_x(0)

        self.add(power_set, theorem)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        power_set_base = VGroup(MathTex(r"\mathcal P(", r"\emptyset", r")=\{\emptyset\}", color=c3t, font_size=fs3), MathTex(r"|\mathcal P(\emptyset)|=|\{\emptyset\}|=1", r"=2^0", color=c3t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, power_set_base)

        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        elements = MathTex(r"S_{n+1}", r"=S_{n}", r"\cup x_{n+1}", color=c3t, font_size=fs3).next_to(induction_step, DOWN, buff=.2)
        power_set_step = VGroup(MathTex(r"\mathcal P(\{S_{n+1}\})", r"=\{p|p\in \mathcal P(\{S_{n}\})\}", r"\\\cup\{p\cup x_{n+1}|p\in\mathcal P(\{S_{n}\})\}", color=c3t, font_size=fs3), MathTex(r"|\mathcal P(\{S_{n+1}\})|", r"=2|\mathcal P({S_{n}\})|", r"=2^{n+1}", color=c3t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(elements, DOWN, buff=.8)
        step_group = VGroup(induction_step, elements, power_set_step)


        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_2")+self.translate("Calc_1.practice_induction.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.add_shift_sound(0.5)
            self.play(VGroup(power_set, theorem).animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("base_in")
            self.play(Write(base), run_time=.5)

            self.wait_until_bookmark("emptyset_in")
            self.play(Write(power_set_base[0][1]), run_time=.5)

            self.wait_until_bookmark("emptyset_powerset_in")
            self.play(Write(power_set_base[0][0]), Write(power_set_base[0][2]), run_time=.5)

            self.wait_until_bookmark("base_in_1")
            self.play(Write(power_set_base[1][0]), run_time=.5)

            self.wait_until_bookmark("base_in_2")
            self.play(Write(power_set_base[1][1]), run_time=.5)

            self.wait_until_bookmark("basegroup_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)

            self.wait_until_bookmark("transition")
            self.add_shift_sound(.5)
            self.play(base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("step_in")
            self.play(Write(induction_step), run_time=.5)

            self.wait_until_bookmark("elements_in_1")
            self.play(Write(elements[0]), run_time=.5)

            self.wait_until_bookmark("elements_in_2")
            self.play(Write(elements[1]), run_time=.5)

            self.wait_until_bookmark("elements_in_3")
            self.play(Write(elements[2]), run_time=.5)

            self.wait_until_bookmark("power_set_in_1")
            self.play(Write(power_set_step[0][0]), run_time=.5)

            self.wait_until_bookmark("power_set_in_2")
            self.play(Write(power_set_step[0][1]), run_time=.5)

            self.wait_until_bookmark("power_set_in_3")
            self.play(Write(power_set_step[0][2]), run_time=.5)

            self.wait_until_bookmark("cardinality_in_1")
            self.play(Write(power_set_step[1][0]), run_time=.5)

            self.wait_until_bookmark("cardinality_in_2")
            self.play(Write(power_set_step[1][1]), run_time=.5)

            self.wait_until_bookmark("cardinality_in_3")
            self.play(Write(power_set_step[1][2]), run_time=.5)

            self.wait_until_bookmark("stepgroup_green")
            self.play(step_group.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)


#####################################
#####################################
class Calc_practice_induction_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
            """
            Base Case (n = 0):
            When n = 0, we have:
            0^2 + 0 = 0, which is an even number. So, the statement is true for the base case.
            Inductive Step
            We want to prove that (k + 1)^2 + (k + 1) is also even.
            Start with the expression (k + 1)^2 + (k + 1):
            (k + 1)^2 + (k + 1) = k^2 + 2k + 1 + k + 1
            Now, we can use our inductive hypothesis:
            k^2 + k is even, so we can write it as 2m for some integer m.
            Now, let's rewrite the expression:
            2m + 1 + 2k + 1
            Now, combine like terms:
            2m + 2k + 2
            Factor out the common factor of 2:
            2(m + k + 1)
            Since (m + k + 1) is an integer (as the sum of integers is an integer), we can rewrite the expression as:
            2 * integer
            Therefore, (k + 1)^2 + (k + 1) is an even number.

            For this answer to be correct, the student needs to:
            - do the induction base, explicitly mentioning the empty set
            - do the induction step, correctly arguing why for n plus one, there are twice as many subsets as for n
            """,
            """
            The student did the base correctly, but not the step
            """,
            """
            The student did the step correctly, but not the base.
            """,
            """
            The answer is incorrect.
            """
                ],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_induction.2q.question-text"),
            llmCheckDetails=SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex=1,
                specialInputSnippets = ["[ ]", "f"],
            )
        )
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        is_even = self.translate("General.is_even")
        forall = self.translate("General.for_all_n")
        thm = Tex("$n^2+n$ ", is_even, " "+forall, r"$\in\mathbb N$", color=c1t, font_size=fs3).set_y(2)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_induction.2q.voiceover-text")
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("thm_in")
            self.play(Write(thm), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_induction_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        is_even = self.translate("General.is_even")
        forall = self.translate("General.for_all_n")
        thm = Tex("$n^2+n$ ", is_even, " "+forall, r"$\in\mathbb N$", color=c1t, font_size=fs3).set_y(2)
        self.add(thm)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_base = MathTex(r"0^2+0", r"=0", color=c3t, font_size=fs3).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, term_base)

        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_1 = MathTex(r"(n+1)^2+(n+1)", color=c3t, font_size=fs3)
        term_2 = MathTex(r"=", r"n^2", r"+", r"2n", r"+", r"1", r"+", r"n", r"+1", color=c3t, font_size=fs3)
        term_3 = MathTex(r"=", r"n^2", r"+", r"n", r"+", r"2n", r"+", r"2", color=c3t, font_size=fs3)
        term_3_a, term_3_b, term_3_c = VGroup(term_3[1], term_3[2], term_3[3]), term_3[5], term_3[7]
        terms = VGroup(term_1, term_2, term_3).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(1.2).next_to(induction_step, DOWN, buff=.6)
        step = VGroup(induction_step, terms)
        

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_3")+self.translate("Calc_1.practice_induction.2a.voiceover-text")
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            
            self.wait_until_bookmark("base_in")
            self.add_shift_sound(.5)
            self.play(Write(base), thm.animate.shift(5*RIGHT), run_time=.5)
            
            self.wait_until_bookmark("base_in_1")
            self.play(Write(term_base[0]), run_time=.5)

            self.wait_until_bookmark("base_in_2")
            self.play(Write(term_base[1]), run_time=.5)

            self.wait_until_bookmark("base_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)
            
            self.wait_until_bookmark("step_in")
            self.add_shift_sound(.5)
            self.play(Write(induction_step), base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("term_1_in")
            self.play(Write(term_1), run_time=.5)

            self.wait_until_bookmark("term_2_in")
            self.play(TransformMatchingTex(term_1.copy(), term_2))

            self.wait_until_bookmark("term_3_in")
            self.play(TransformMatchingTex(term_2.copy(), term_3))

            self.wait_until_bookmark("term_3_a")
            self.play(term_3_a.animate.set_color(GREEN_D), run_time=.5)

            self.wait_until_bookmark("term_3_b")
            self.play(term_3_b.animate.set_color(GREEN_D), run_time=.5)

            self.wait_until_bookmark("term_3_c")
            self.play(term_3_c.animate.set_color(GREEN_D), run_time=.5)

            self.wait_until_bookmark("step_green")
            self.play(step.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#

class Calc_practice_induction_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        is_even = self.translate("General.is_even")
        forall = self.translate("General.for_all_n")
        thm = Tex("$n^2+n$ ", is_even, " "+forall, r"$\in\mathbb N$", color=c1t, font_size=fs3).set_y(2)
        self.add(thm)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_base = MathTex(r"0^2+0", r"=0", color=c3t, font_size=fs3).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, term_base)

        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_1 = MathTex(r"(n+1)^2+(n+1)", color=c3t, font_size=fs3)
        term_2 = MathTex(r"=", r"n^2", r"+", r"2n", r"+", r"1", r"+", r"n", r"+1", color=c3t, font_size=fs3)
        term_3 = MathTex(r"=", r"n^2", r"+", r"n", r"+", r"2n", r"+", r"2", color=c3t, font_size=fs3)
        term_3_a, term_3_b, term_3_c = VGroup(term_3[1], term_3[2], term_3[3]), term_3[5], term_3[7]
        terms = VGroup(term_1, term_2, term_3).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(1.2).next_to(induction_step, DOWN, buff=.6)
        step = VGroup(induction_step, terms)
        

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_induction.2a.base_not_case")+self.translate("Calc_1.practice_induction.2a.voiceover-text")
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            
            self.wait_until_bookmark("base_in")
            self.add_shift_sound(.5)
            self.play(Write(base), thm.animate.shift(5*RIGHT), run_time=.5)
            
            self.wait_until_bookmark("base_in_1")
            self.play(Write(term_base[0]), run_time=.5)

            self.wait_until_bookmark("base_in_2")
            self.play(Write(term_base[1]), run_time=.5)

            self.wait_until_bookmark("base_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)
            
            self.wait_until_bookmark("step_in")
            self.add_shift_sound(.5)
            self.play(Write(induction_step), base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("term_1_in")
            self.play(Write(term_1), run_time=.5)

            self.wait_until_bookmark("term_2_in")
            self.play(TransformMatchingTex(term_1.copy(), term_2))

            self.wait_until_bookmark("term_3_in")
            self.play(TransformMatchingTex(term_2.copy(), term_3))

            self.wait_until_bookmark("term_3_a")
            self.play(term_3_a.animate.set_color(GREEN_D), run_time=.5)

            self.wait_until_bookmark("term_3_b")
            self.play(term_3_b.animate.set_color(GREEN_D), run_time=.5)

            self.wait_until_bookmark("term_3_c")
            self.play(term_3_c.animate.set_color(GREEN_D), run_time=.5)

            self.wait_until_bookmark("step_green")
            self.play(step.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#

class Calc_practice_induction_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        is_even = self.translate("General.is_even")
        forall = self.translate("General.for_all_n")
        thm = Tex("$n^2+n$ ", is_even, " "+forall, r"$\in\mathbb N$", color=c1t, font_size=fs3).set_y(2)
        self.add(thm)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_base = MathTex(r"0^2+0", r"=0", color=c3t, font_size=fs3).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, term_base)

        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_1 = MathTex(r"(n+1)^2+(n+1)", color=c3t, font_size=fs3)
        term_2 = MathTex(r"=", r"n^2", r"+", r"2n", r"+", r"1", r"+", r"n", r"+1", color=c3t, font_size=fs3)
        term_3 = MathTex(r"=", r"n^2", r"+", r"n", r"+", r"2n", r"+", r"2", color=c3t, font_size=fs3)
        term_3_a, term_3_b, term_3_c = VGroup(term_3[1], term_3[2], term_3[3]), term_3[5], term_3[7]
        terms = VGroup(term_1, term_2, term_3).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(1.2).next_to(induction_step, DOWN, buff=.6)
        step = VGroup(induction_step, terms)
        

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_induction.2a.step_not_base")+self.translate("Calc_1.practice_induction.2a.voiceover-text")
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            
            self.wait_until_bookmark("base_in")
            self.add_shift_sound(.5)
            self.play(Write(base), thm.animate.shift(5*RIGHT), run_time=.5)
            
            self.wait_until_bookmark("base_in_1")
            self.play(Write(term_base[0]), run_time=.5)

            self.wait_until_bookmark("base_in_2")
            self.play(Write(term_base[1]), run_time=.5)

            self.wait_until_bookmark("base_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)
            
            self.wait_until_bookmark("step_in")
            self.add_shift_sound(.5)
            self.play(Write(induction_step), base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("term_1_in")
            self.play(Write(term_1), run_time=.5)

            self.wait_until_bookmark("term_2_in")
            self.play(TransformMatchingTex(term_1.copy(), term_2))

            self.wait_until_bookmark("term_3_in")
            self.play(TransformMatchingTex(term_2.copy(), term_3))

            self.wait_until_bookmark("term_3_a")
            self.play(term_3_a.animate.set_color(GREEN_D), run_time=.5)

            self.wait_until_bookmark("term_3_b")
            self.play(term_3_b.animate.set_color(GREEN_D), run_time=.5)

            self.wait_until_bookmark("term_3_c")
            self.play(term_3_c.animate.set_color(GREEN_D), run_time=.5)

            self.wait_until_bookmark("step_green")
            self.play(step.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#

class Calc_practice_induction_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        is_even = self.translate("General.is_even")
        forall = self.translate("General.for_all_n")
        thm = Tex("$n^2+n$ ", is_even, " "+forall, r"$\in\mathbb N$", color=c1t, font_size=fs3).set_y(2)
        self.add(thm)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_base = MathTex(r"0^2+0", r"=0", color=c3t, font_size=fs3).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, term_base)

        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_1 = MathTex(r"(n+1)^2+(n+1)", color=c3t, font_size=fs3)
        term_2 = MathTex(r"=", r"n^2", r"+", r"2n", r"+", r"1", r"+", r"n", r"+1", color=c3t, font_size=fs3)
        term_3 = MathTex(r"=", r"n^2", r"+", r"n", r"+", r"2n", r"+", r"2", color=c3t, font_size=fs3)
        term_3_a, term_3_b, term_3_c = VGroup(term_3[1], term_3[2], term_3[3]), term_3[5], term_3[7]
        terms = VGroup(term_1, term_2, term_3).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(1.2).next_to(induction_step, DOWN, buff=.6)
        step = VGroup(induction_step, terms)
        

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.practice_induction.2a.voiceover-text")
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            
            self.wait_until_bookmark("base_in")
            self.add_shift_sound(.5)
            self.play(Write(base), thm.animate.shift(5*RIGHT), run_time=.5)
            
            self.wait_until_bookmark("base_in_1")
            self.play(Write(term_base[0]), run_time=.5)

            self.wait_until_bookmark("base_in_2")
            self.play(Write(term_base[1]), run_time=.5)

            self.wait_until_bookmark("base_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)
            
            self.wait_until_bookmark("step_in")
            self.add_shift_sound(.5)
            self.play(Write(induction_step), base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("term_1_in")
            self.play(Write(term_1), run_time=.5)

            self.wait_until_bookmark("term_2_in")
            self.play(TransformMatchingTex(term_1.copy(), term_2))

            self.wait_until_bookmark("term_3_in")
            self.play(TransformMatchingTex(term_2.copy(), term_3))

            self.wait_until_bookmark("term_3_a")
            self.play(term_3_a.animate.set_color(GREEN_D), run_time=.5)

            self.wait_until_bookmark("term_3_b")
            self.play(term_3_b.animate.set_color(GREEN_D), run_time=.5)

            self.wait_until_bookmark("term_3_c")
            self.play(term_3_c.animate.set_color(GREEN_D), run_time=.5)

            self.wait_until_bookmark("step_green")
            self.play(step.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#

#####################################
#####################################
class Calc_practice_induction_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
                """
                To prove that \( a_n = 5 - \frac{4}{2^n} \) for the sequence defined by \( a_0 = 1 \) and \( a_{n+1} = \frac{a_n + 5}{2} \), we use induction.

                **Base Case:** For \( n = 0 \), \( a_0 = 1 \) and \( 5 - \frac{4}{2^0} = 1 \). So, the base case holds.

                **Inductive Step:** Assume \( a_k = 5 - \frac{4}{2^k} \) for some \( k \). We show it holds for \( k+1 \):

                \[ a_{k+1} = \frac{a_k + 5}{2} = \frac{5 - \frac{4}{2^k} + 5}{2} = 5 - \frac{4}{2^{k+1}} \]

                Thus, by induction, \( a_n = 5 - \frac{4}{2^n} \) for all \( n \).

                For this answer to be correct, the student needs to:
                - do the induction base, explicitly mentioning the empty set
                - do the induction step, correctly arguing why for n plus one, there are twice as many subsets as for n
                """,
                """
                The student did the base correctly, but not the step
                """,
                """
                The student did the step correctly, but not the base.
                """,
                """
                The answer is incorrect.
                """
                ],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_induction.3q.question-text"),
            llmCheckDetails=SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex=1,
                specialInputSnippets = ["[ ]", "f"],
            )
        )
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        a_n_0 = MathTex(r"\left(a_n\right)_{n\in\mathbb N}", color=c1t, font_size=fs2)
        a_n_1 = VGroup(MathTex(r"a_0=1,", color=c3t, font_size=fs2), MathTex(r"a_{n+1}=\tfrac{a_n+5}{2}", color=c3t, font_size=fs2)).scale(.9).arrange(RIGHT, buff=.4)
        a_n = VGroup(a_n_0, a_n_1).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1.8)

        theorem = MathTex(r"a_n=", r"5", r"-", r"{{4}", r"\over", r"{2^n}}", r"\,\forall n\in\mathbb N", color=BLUE, font_size=fs2)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_induction.3q.voiceover-text")
        
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("sequence_in_1")
            self.play(Write(a_n_0), run_time=.5)

            self.wait_until_bookmark("sequence_in_2")
            self.play(Write(a_n_1[0]), run_time=.5)

            self.wait_until_bookmark("sequence_in_3")
            self.play(Write(a_n_1[1]), run_time=.5)

            self.wait_until_bookmark("theorem_in")
            self.play(Write(theorem))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#

class Calc_practice_induction_3_a(SophiaCursorScene):    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        a_n_0 = MathTex(r"\left(a_n\right)_{n\in\mathbb N}", color=c1t, font_size=fs2)
        a_n_1 = VGroup(MathTex(r"a_0=1,", color=c3t, font_size=fs2), MathTex(r"a_{n+1}=\tfrac{a_n+5}{2}", color=c3t, font_size=fs2)).scale(.9).arrange(RIGHT, buff=.4)
        a_n = VGroup(a_n_0, a_n_1).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1.8)
        theorem = MathTex(r"a_n=", r"5", r"-", r"{{4}", r"\over", r"{2^n}}", r"\,\forall n\in\mathbb N", color=BLUE, font_size=fs2)
        self.add(a_n, theorem)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_base = MathTex(r"a_0=5-\frac{4}{1}", r"=1", color=c3t, font_size=fs3).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, term_base)
        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_1 = MathTex(r"a_{n+1}=", r"{{a_n", r"+5}\over{2}}", color=c3t, font_size=fs3)
        term_2 = MathTex(r"=", r"{{5", r"-", r"\tfrac{4}{2^n}", r"+5", r"}\over{2}}", color=c3t, font_size=fs3)
        term_3 = MathTex(r"=", r"5", r"-", r"{{4}\over", r"{2^{n+1}}}", color=c3t, font_size=fs3)
        terms = VGroup(term_1, term_2, term_3).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(1.2).next_to(induction_step, DOWN, buff=.6)
        term_1_a, term_1_b = VGroup(term_1[0], term_1[2]), term_1[1]
        term_2_a, term_2_b = VGroup(term_2[0], term_2[4], term_2[5]), VGroup(term_2[1], term_2[2], term_2[3])
        fives, frac = VGroup(term_2[1], term_2[-2]).copy().set_color(RED), VGroup(term_2[3], term_2[3], term_2[5]).copy().set_color(RED)
        step = VGroup(induction_step, terms)
        

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_3")+self.translate("Calc_1.practice_induction.3a.voiceover-text") 
        
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("base_case_in")
            self.add_shift_sound(.5)
            self.play(Write(base), VGroup(a_n, theorem).animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("base_term_in")
            self.play(Write(term_base), run_time=.5)

            self.wait_until_bookmark("base_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)

            self.wait_until_bookmark("induction_step_in")
            self.add_shift_sound(.5)
            self.play(Write(induction_step), base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("term_1_in")
            self.play(Write(term_1))

            self.wait_until_bookmark("term_2_in_1")
            self.play(ReplacementTransform(term_1_a.copy(), term_2_a))

            self.wait_until_bookmark("term_2_in_2")
            self.play(ReplacementTransform(term_1_b.copy(), term_2_b))

            self.wait_until_bookmark("term_3_in_1_a")
            self.play(FadeIn(fives), run_time=.5)

            self.wait_until_bookmark("term_3_in_1_b")
            self.play(ReplacementTransform(fives, term_3[1]), Write(term_3[0]))

            self.wait_until_bookmark("term_3_in_2_a")
            self.play(FadeIn(frac), run_time=.5)

            self.wait_until_bookmark("term_3_in_2_b")
            self.play(ReplacementTransform(frac, VGroup(term_3[3], term_3[4])), Write(term_3[2]))

            self.wait_until_bookmark("step_green")
            self.play(step.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_induction_3_b(SophiaCursorScene):    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        a_n_0 = MathTex(r"\left(a_n\right)_{n\in\mathbb N}", color=c1t, font_size=fs2)
        a_n_1 = VGroup(MathTex(r"a_0=1,", color=c3t, font_size=fs2), MathTex(r"a_{n+1}=\tfrac{a_n+5}{2}", color=c3t, font_size=fs2)).scale(.9).arrange(RIGHT, buff=.4)
        a_n = VGroup(a_n_0, a_n_1).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1.8)
        theorem = MathTex(r"a_n=", r"5", r"-", r"{{4}", r"\over", r"{2^n}}", r"\,\forall n\in\mathbb N", color=BLUE, font_size=fs2)
        self.add(a_n, theorem)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_base = MathTex(r"a_0=5-\frac{4}{1}", r"=1", color=c3t, font_size=fs3).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, term_base)
        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_1 = MathTex(r"a_{n+1}=", r"{{a_n", r"+5}\over{2}}", color=c3t, font_size=fs3)
        term_2 = MathTex(r"=", r"{{5", r"-", r"\tfrac{4}{2^n}", r"+5", r"}\over{2}}", color=c3t, font_size=fs3)
        term_3 = MathTex(r"=", r"5", r"-", r"{{4}\over", r"{2^{n+1}}}", color=c3t, font_size=fs3)
        terms = VGroup(term_1, term_2, term_3).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(1.2).next_to(induction_step, DOWN, buff=.6)
        term_1_a, term_1_b = VGroup(term_1[0], term_1[2]), term_1[1]
        term_2_a, term_2_b = VGroup(term_2[0], term_2[4], term_2[5]), VGroup(term_2[1], term_2[2], term_2[3])
        fives, frac = VGroup(term_2[1], term_2[-2]).copy().set_color(RED), VGroup(term_2[3], term_2[3], term_2[5]).copy().set_color(RED)
        step = VGroup(induction_step, terms)
        

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_induction.2a.base_not_case")+self.translate("Calc_1.practice_induction.3a.voiceover-text") 
        
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("base_case_in")
            self.add_shift_sound(.5)
            self.play(Write(base), VGroup(a_n, theorem).animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("base_term_in")
            self.play(Write(term_base), run_time=.5)

            self.wait_until_bookmark("base_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)

            self.wait_until_bookmark("induction_step_in")
            self.add_shift_sound(.5)
            self.play(Write(induction_step), base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("term_1_in")
            self.play(Write(term_1))

            self.wait_until_bookmark("term_2_in_1")
            self.play(ReplacementTransform(term_1_a.copy(), term_2_a))

            self.wait_until_bookmark("term_2_in_2")
            self.play(ReplacementTransform(term_1_b.copy(), term_2_b))

            self.wait_until_bookmark("term_3_in_1_a")
            self.play(FadeIn(fives), run_time=.5)

            self.wait_until_bookmark("term_3_in_1_b")
            self.play(ReplacementTransform(fives, term_3[1]), Write(term_3[0]))

            self.wait_until_bookmark("term_3_in_2_a")
            self.play(FadeIn(frac), run_time=.5)

            self.wait_until_bookmark("term_3_in_2_b")
            self.play(ReplacementTransform(frac, VGroup(term_3[3], term_3[4])), Write(term_3[2]))

            self.wait_until_bookmark("step_green")
            self.play(step.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_induction_3_c(SophiaCursorScene):    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        a_n_0 = MathTex(r"\left(a_n\right)_{n\in\mathbb N}", color=c1t, font_size=fs2)
        a_n_1 = VGroup(MathTex(r"a_0=1,", color=c3t, font_size=fs2), MathTex(r"a_{n+1}=\tfrac{a_n+5}{2}", color=c3t, font_size=fs2)).scale(.9).arrange(RIGHT, buff=.4)
        a_n = VGroup(a_n_0, a_n_1).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1.8)
        theorem = MathTex(r"a_n=", r"5", r"-", r"{{4}", r"\over", r"{2^n}}", r"\,\forall n\in\mathbb N", color=BLUE, font_size=fs2)
        self.add(a_n, theorem)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_base = MathTex(r"a_0=5-\frac{4}{1}", r"=1", color=c3t, font_size=fs3).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, term_base)
        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_1 = MathTex(r"a_{n+1}=", r"{{a_n", r"+5}\over{2}}", color=c3t, font_size=fs3)
        term_2 = MathTex(r"=", r"{{5", r"-", r"\tfrac{4}{2^n}", r"+5", r"}\over{2}}", color=c3t, font_size=fs3)
        term_3 = MathTex(r"=", r"5", r"-", r"{{4}\over", r"{2^{n+1}}}", color=c3t, font_size=fs3)
        terms = VGroup(term_1, term_2, term_3).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(1.2).next_to(induction_step, DOWN, buff=.6)
        term_1_a, term_1_b = VGroup(term_1[0], term_1[2]), term_1[1]
        term_2_a, term_2_b = VGroup(term_2[0], term_2[4], term_2[5]), VGroup(term_2[1], term_2[2], term_2[3])
        fives, frac = VGroup(term_2[1], term_2[-2]).copy().set_color(RED), VGroup(term_2[3], term_2[3], term_2[5]).copy().set_color(RED)
        step = VGroup(induction_step, terms)
        

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_induction.2a.step_not_base")+self.translate("Calc_1.practice_induction.3a.voiceover-text") 
        
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("base_case_in")
            self.add_shift_sound(.5)
            self.play(Write(base), VGroup(a_n, theorem).animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("base_term_in")
            self.play(Write(term_base), run_time=.5)

            self.wait_until_bookmark("base_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)

            self.wait_until_bookmark("induction_step_in")
            self.add_shift_sound(.5)
            self.play(Write(induction_step), base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("term_1_in")
            self.play(Write(term_1))

            self.wait_until_bookmark("term_2_in_1")
            self.play(ReplacementTransform(term_1_a.copy(), term_2_a))

            self.wait_until_bookmark("term_2_in_2")
            self.play(ReplacementTransform(term_1_b.copy(), term_2_b))

            self.wait_until_bookmark("term_3_in_1_a")
            self.play(FadeIn(fives), run_time=.5)

            self.wait_until_bookmark("term_3_in_1_b")
            self.play(ReplacementTransform(fives, term_3[1]), Write(term_3[0]))

            self.wait_until_bookmark("term_3_in_2_a")
            self.play(FadeIn(frac), run_time=.5)

            self.wait_until_bookmark("term_3_in_2_b")
            self.play(ReplacementTransform(frac, VGroup(term_3[3], term_3[4])), Write(term_3[2]))

            self.wait_until_bookmark("step_green")
            self.play(step.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_induction_3_d(SophiaCursorScene):    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        a_n_0 = MathTex(r"\left(a_n\right)_{n\in\mathbb N}", color=c1t, font_size=fs2)
        a_n_1 = VGroup(MathTex(r"a_0=1,", color=c3t, font_size=fs2), MathTex(r"a_{n+1}=\tfrac{a_n+5}{2}", color=c3t, font_size=fs2)).scale(.9).arrange(RIGHT, buff=.4)
        a_n = VGroup(a_n_0, a_n_1).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1.8)
        theorem = MathTex(r"a_n=", r"5", r"-", r"{{4}", r"\over", r"{2^n}}", r"\,\forall n\in\mathbb N", color=BLUE, font_size=fs2)
        self.add(a_n, theorem)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_base = MathTex(r"a_0=5-\frac{4}{1}", r"=1", color=c3t, font_size=fs3).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, term_base)
        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_1 = MathTex(r"a_{n+1}=", r"{{a_n", r"+5}\over{2}}", color=c3t, font_size=fs3)
        term_2 = MathTex(r"=", r"{{5", r"-", r"\tfrac{4}{2^n}", r"+5", r"}\over{2}}", color=c3t, font_size=fs3)
        term_3 = MathTex(r"=", r"5", r"-", r"{{4}\over", r"{2^{n+1}}}", color=c3t, font_size=fs3)
        terms = VGroup(term_1, term_2, term_3).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(1.2).next_to(induction_step, DOWN, buff=.6)
        term_1_a, term_1_b = VGroup(term_1[0], term_1[2]), term_1[1]
        term_2_a, term_2_b = VGroup(term_2[0], term_2[4], term_2[5]), VGroup(term_2[1], term_2[2], term_2[3])
        fives, frac = VGroup(term_2[1], term_2[-2]).copy().set_color(RED), VGroup(term_2[3], term_2[3], term_2[5]).copy().set_color(RED)
        step = VGroup(induction_step, terms)
        

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.practice_induction.3a.voiceover-text") 
        
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("base_case_in")
            self.add_shift_sound(.5)
            self.play(Write(base), VGroup(a_n, theorem).animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("base_term_in")
            self.play(Write(term_base), run_time=.5)

            self.wait_until_bookmark("base_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)

            self.wait_until_bookmark("induction_step_in")
            self.add_shift_sound(.5)
            self.play(Write(induction_step), base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("term_1_in")
            self.play(Write(term_1))

            self.wait_until_bookmark("term_2_in_1")
            self.play(ReplacementTransform(term_1_a.copy(), term_2_a))

            self.wait_until_bookmark("term_2_in_2")
            self.play(ReplacementTransform(term_1_b.copy(), term_2_b))

            self.wait_until_bookmark("term_3_in_1_a")
            self.play(FadeIn(fives), run_time=.5)

            self.wait_until_bookmark("term_3_in_1_b")
            self.play(ReplacementTransform(fives, term_3[1]), Write(term_3[0]))

            self.wait_until_bookmark("term_3_in_2_a")
            self.play(FadeIn(frac), run_time=.5)

            self.wait_until_bookmark("term_3_in_2_b")
            self.play(ReplacementTransform(frac, VGroup(term_3[3], term_3[4])), Write(term_3[2]))

            self.wait_until_bookmark("step_green")
            self.play(step.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#

#####################################
#####################################
class Calc_practice_induction_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
        answerOptions = [
            """
            To show that \(a_n \leq 2\) for all \(n \in \mathbb{N}\) given \(a_0 = \sqrt{2}\) and \(a_{n+1} = \sqrt{a_n + 2}\), we use mathematical induction.
            **Base Case:**
            For \(n=0\), \(a_0 = \sqrt{2}\). Clearly, \(a_0 \leq 2\) since \(\sqrt{2} < 2\).
            **Inductive Step:**
            Assume \(a_n \leq 2\) for some \(n \geq 0\). We need to show \(a_{n+1} \leq 2\).
            Given \(a_{n+1} = \sqrt{a_n + 2}\), by our inductive hypothesis, \(a_n \leq 2\).
            Thus, \(a_{n+1} = \sqrt{a_n + 2} \leq \sqrt{2 + 2} = \sqrt{4} = 2\).
            Therefore, if \(a_n \leq 2\), then \(a_{n+1} \leq 2\).
            By the principle of mathematical induction, \(a_n \leq 2\) for all \(n \in \mathbb{N}\).
            For this answer to be correct, the student needs to:
            - do the induction base, explicitly mentioning the empty set
            - do the induction step, correctly arguing why for n plus one, there are twice as many subsets as for n
            """,
            """
            The student did the base correctly, but not the step
            """,
            """
            The student did the step correctly, but not the base.
            """,
            """
            The answer is incorrect.
            """
            ],
        correctAnswerIndex = 0,
        questionText = self.translate("Calc_1.practice_induction.4q.question-text"),
        llmCheckDetails=SophiaLLMQuestionCheckDetail(
            fallbackOptionIndex=1,
            specialInputSnippets = ["[ ]", "f"],
        )
    )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        a_n_0 = MathTex(r"\left(a_n\right)_{n\in\mathbb N}", color=c1t, font_size=fs2)
        a_n_1 = VGroup(MathTex(r"a_0=\sqrt2,", color=c3t, font_size=fs2), MathTex(r"a_{n+1}=\sqrt{a_n+2}", color=c3t, font_size=fs2)).scale(.8).arrange(RIGHT, buff=.4)
        a_n = VGroup(a_n_0, a_n_1).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1.8)

        theorem = MathTex(r"a_n", r"\leq", r"2", r"\,\forall n\in\mathbb N", color=BLUE, font_size=fs2)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_induction.4q.voiceover-text")
        
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("sequence_in_1")
            self.play(Write(a_n_0), run_time=.5)

            self.wait_until_bookmark("sequence_in_2")
            self.play(Write(a_n_1[0]), run_time=.5)

            self.wait_until_bookmark("sequence_in_3")
            self.play(Write(a_n_1[1]), run_time=.5)

            self.wait_until_bookmark("theorem_in")
            self.play(Write(theorem))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_induction_4_a(SophiaCursorScene):    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        a_n_0 = MathTex(r"\left(a_n\right)_{n\in\mathbb N}", color=c1t, font_size=fs2)
        a_n_1 = VGroup(MathTex(r"a_0=\sqrt2,", color=c3t, font_size=fs2), MathTex(r"a_{n+1}=\sqrt{a_n+2}", color=c3t, font_size=fs2)).scale(.8).arrange(RIGHT, buff=.4)
        a_n = VGroup(a_n_0, a_n_1).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1.8)
        theorem = MathTex(r"a_n", r"\leq", r"2", r"\,\forall n\in\mathbb N", color=BLUE, font_size=fs2)
        self.add(a_n, theorem)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_base = MathTex(r"a_0=\sqrt2", r"\leq2", color=c3t, font_size=fs3).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, term_base)
        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_1 = MathTex(r"a_{n+1}=", r"\sqrt{a_n+2}", color=c3t, font_size=fs3)
        term_2 = MathTex(r"\leq", r"{\sqrt{2+2}}", r"=", r"2", color=c3t, font_size=fs3)
        terms = VGroup(term_1, term_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(1.2).next_to(induction_step, DOWN, buff=.6)
        step = VGroup(induction_step, terms)
        

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_3")+self.translate("Calc_1.practice_induction.4a.voiceover-text")
        
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("base_case_in")
            self.add_shift_sound(.5)
            self.play(Write(base), VGroup(a_n, theorem).animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("base_term_in")
            self.play(Write(term_base), run_time=.5)

            self.wait_until_bookmark("base_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)

            self.wait_until_bookmark("induction_step_in")
            self.add_shift_sound(.5)
            self.play(Write(induction_step), base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("term_1_in")
            self.play(Write(term_1))
            
            self.wait_until_bookmark("term_2_in_1")
            self.play(Write(term_2[0]), Write(term_2[1]))

            self.wait_until_bookmark("term_2_in_2")
            self.play(Write(term_2[2]), Write(term_2[3]))

            self.wait_until_bookmark("step_green")
            self.play(step.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_induction_4_b(SophiaCursorScene):    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        a_n_0 = MathTex(r"\left(a_n\right)_{n\in\mathbb N}", color=c1t, font_size=fs2)
        a_n_1 = VGroup(MathTex(r"a_0=\sqrt2,", color=c3t, font_size=fs2), MathTex(r"a_{n+1}=\sqrt{a_n+2}", color=c3t, font_size=fs2)).scale(.8).arrange(RIGHT, buff=.4)
        a_n = VGroup(a_n_0, a_n_1).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1.8)
        theorem = MathTex(r"a_n", r"\leq", r"2", r"\,\forall n\in\mathbb N", color=BLUE, font_size=fs2)
        self.add(a_n, theorem)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_base = MathTex(r"a_0=\sqrt2", r"\leq2", color=c3t, font_size=fs3).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, term_base)
        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_1 = MathTex(r"a_{n+1}=", r"\sqrt{a_n+2}", color=c3t, font_size=fs3)
        term_2 = MathTex(r"\leq", r"{\sqrt{2+2}}", r"=", r"2", color=c3t, font_size=fs3)
        terms = VGroup(term_1, term_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(1.2).next_to(induction_step, DOWN, buff=.6)
        step = VGroup(induction_step, terms)
        

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_induction.2a.base_not_case")+self.translate("Calc_1.practice_induction.4a.voiceover-text")
        
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("base_case_in")
            self.add_shift_sound(.5)
            self.play(Write(base), VGroup(a_n, theorem).animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("base_term_in")
            self.play(Write(term_base), run_time=.5)

            self.wait_until_bookmark("base_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)

            self.wait_until_bookmark("induction_step_in")
            self.add_shift_sound(.5)
            self.play(Write(induction_step), base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("term_1_in")
            self.play(Write(term_1))
            
            self.wait_until_bookmark("term_2_in_1")
            self.play(Write(term_2[0]), Write(term_2[1]))

            self.wait_until_bookmark("term_2_in_2")
            self.play(Write(term_2[2]), Write(term_2[3]))

            self.wait_until_bookmark("step_green")
            self.play(step.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_induction_4_c(SophiaCursorScene):    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        a_n_0 = MathTex(r"\left(a_n\right)_{n\in\mathbb N}", color=c1t, font_size=fs2)
        a_n_1 = VGroup(MathTex(r"a_0=\sqrt2,", color=c3t, font_size=fs2), MathTex(r"a_{n+1}=\sqrt{a_n+2}", color=c3t, font_size=fs2)).scale(.8).arrange(RIGHT, buff=.4)
        a_n = VGroup(a_n_0, a_n_1).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1.8)
        theorem = MathTex(r"a_n", r"\leq", r"2", r"\,\forall n\in\mathbb N", color=BLUE, font_size=fs2)
        self.add(a_n, theorem)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_base = MathTex(r"a_0=\sqrt2", r"\leq2", color=c3t, font_size=fs3).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, term_base)
        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_1 = MathTex(r"a_{n+1}=", r"\sqrt{a_n+2}", color=c3t, font_size=fs3)
        term_2 = MathTex(r"\leq", r"{\sqrt{2+2}}", r"=", r"2", color=c3t, font_size=fs3)
        terms = VGroup(term_1, term_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(1.2).next_to(induction_step, DOWN, buff=.6)
        step = VGroup(induction_step, terms)
        

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_induction.2a.step_not_base")+self.translate("Calc_1.practice_induction.4a.voiceover-text")
        
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("base_case_in")
            self.add_shift_sound(.5)
            self.play(Write(base), VGroup(a_n, theorem).animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("base_term_in")
            self.play(Write(term_base), run_time=.5)

            self.wait_until_bookmark("base_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)

            self.wait_until_bookmark("induction_step_in")
            self.add_shift_sound(.5)
            self.play(Write(induction_step), base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("term_1_in")
            self.play(Write(term_1))
            
            self.wait_until_bookmark("term_2_in_1")
            self.play(Write(term_2[0]), Write(term_2[1]))

            self.wait_until_bookmark("term_2_in_2")
            self.play(Write(term_2[2]), Write(term_2[3]))

            self.wait_until_bookmark("step_green")
            self.play(step.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_induction_4_d(SophiaCursorScene):    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        a_n_0 = MathTex(r"\left(a_n\right)_{n\in\mathbb N}", color=c1t, font_size=fs2)
        a_n_1 = VGroup(MathTex(r"a_0=\sqrt2,", color=c3t, font_size=fs2), MathTex(r"a_{n+1}=\sqrt{a_n+2}", color=c3t, font_size=fs2)).scale(.8).arrange(RIGHT, buff=.4)
        a_n = VGroup(a_n_0, a_n_1).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1.8)
        theorem = MathTex(r"a_n", r"\leq", r"2", r"\,\forall n\in\mathbb N", color=BLUE, font_size=fs2)
        self.add(a_n, theorem)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_base = MathTex(r"a_0=\sqrt2", r"\leq2", color=c3t, font_size=fs3).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, term_base)
        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_1 = MathTex(r"a_{n+1}=", r"\sqrt{a_n+2}", color=c3t, font_size=fs3)
        term_2 = MathTex(r"\leq", r"{\sqrt{2+2}}", r"=", r"2", color=c3t, font_size=fs3)
        terms = VGroup(term_1, term_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(1.2).next_to(induction_step, DOWN, buff=.6)
        step = VGroup(induction_step, terms)
        

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.practice_induction.4a.voiceover-text")
        
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("base_case_in")
            self.add_shift_sound(.5)
            self.play(Write(base), VGroup(a_n, theorem).animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("base_term_in")
            self.play(Write(term_base), run_time=.5)

            self.wait_until_bookmark("base_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)

            self.wait_until_bookmark("induction_step_in")
            self.add_shift_sound(.5)
            self.play(Write(induction_step), base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("term_1_in")
            self.play(Write(term_1))
            
            self.wait_until_bookmark("term_2_in_1")
            self.play(Write(term_2[0]), Write(term_2[1]))

            self.wait_until_bookmark("term_2_in_2")
            self.play(Write(term_2[2]), Write(term_2[3]))

            self.wait_until_bookmark("step_green")
            self.play(step.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
#####################################
#####################################
class Calc_practice_induction_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
                """
                To show that \(6^n - 1\) is divisible by 5 for all \(n \in \mathbb{N}\) using mathematical induction, we proceed as follows:
                **Base Case:**
                For \(n=1\), \(6^1 - 1 = 5\), which is clearly divisible by 5.
                **Inductive Step:**
                Assume \(6^n - 1\) is divisible by 5 for some \(n \geq 1\). We need to show \(6^{n+1} - 1\) is also divisible by 5.
                Consider \(6^{n+1} - 1\). This can be rewritten as \(6 \cdot 6^n - 1\).
                Expanding this using our assumption, we get:
                \[6 \cdot 6^n - 1 = 6(6^n - 1) + 6 - 1\]
                Since \(6^n - 1\) is divisible by 5 by our inductive hypothesis, let \(6^n - 1 = 5k\) for some integer \(k\). Then:
                \[6(6^n - 1) + 6 - 1 = 6 \cdot 5k + 5 = 5(6k + 1)\]
                This shows \(6^{n+1} - 1\) is divisible by 5, as it is expressed as \(5\) times an integer (\(6k + 1\)).
                Therefore, by the principle of mathematical induction, \(6^n - 1\) is divisible by 5 for all \(n \in \mathbb{N}\).
                For this answer to be correct, the student needs to:
                - do the induction base, explicitly mentioning the empty set
                - do the induction step, correctly arguing why for n plus one, there are twice as many subsets as for n
                """,
                """
                The student did the base correctly, but not the step
                """,
                """
                The student did the step correctly, but not the base.
                """,
                """
                The answer is incorrect.
                """
                ],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_induction.5q.question-text"),
            llmCheckDetails=SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex=1,
                specialInputSnippets = ["[ ]", "f"],
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        is_divisible_by_5 = self.translate("General.is_divisible_by_5")
        forall = self.translate("General.for_all")
        theorem_strings = [r"$6^n-1$", is_divisible_by_5, forall+r" $n\in\mathbb N$"]
        theorem = VGroup(*[Tex(thm_string, color=BLUE, font_size=fs2) for thm_string in theorem_strings]).arrange(DOWN, buff=.2).set_y(1.2)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_induction.5q.voiceover-text")
        
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
    
            self.wait_until_bookmark("theorem_in")
            for idx in range(3):
                self.play(Write(theorem[idx]), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_induction_5_a(SophiaCursorScene):    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        is_divisible_by_5 = self.translate("General.is_divisible_by_5")
        forall = self.translate("General.for_all")
        theorem_strings = [r"$6^n-1$", is_divisible_by_5, forall+r" $n\in\mathbb N$"]
        theorem = VGroup(*[Tex(thm_string, color=BLUE, font_size=fs2) for thm_string in theorem_strings]).arrange(DOWN, buff=.2).set_y(1.2)
        self.add(theorem)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_base = MathTex(r"6^0-1=1-1", r"=0", color=c3t, font_size=fs3).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, term_base).scale(1.1)

        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_1 = MathTex(r"6^{n+1}-1=", r"6\cdot", r"6^n", r"-1", color=c3t, font_size=fs3)
        term_2_a = MathTex(r"6\cdot", r"(5m+1)", r"-1", r"=", r"30m+6-1", color=c3t, font_size=fs3)
        term_2_b = MathTex(r"6\cdot", r"(5m+1)", r"-1", r"=", r"30m+5", color=c3t, font_size=fs3)
        term_2 = VGroup(term_2_a, term_2_b).arrange(ORIGIN, aligned_edge=LEFT)
        term_3 = MathTex(r"5(6m+1)", color=c3t, font_size=fs3)
        terms = VGroup(term_1, term_2, term_3).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(1.1).next_to(induction_step, DOWN, buff=.6)
        explainer_1 = MathTex(r"6^n", r"-1", r"=", r"5m", font_size=fs2, color=BLUE)
        explainer_2 = MathTex(r"6^n", r"=", r"5m", r"+1", font_size=fs2, color=BLUE)
        explainer = VGroup(explainer_1, explainer_2).next_to(terms, DOWN, buff=.2)
        step = VGroup(induction_step, term_1, term_2_b, term_3)
        

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_3")+self.translate("Calc_1.practice_induction.5a.voiceover-text")
        
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("base_case_in")
            self.add_shift_sound(.5)
            self.play(Write(base), theorem.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("base_term_in")
            self.play(Write(term_base), run_time=.5)

            self.wait_until_bookmark("base_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)

            self.wait_until_bookmark("induction_step_in")
            self.add_shift_sound(.5)
            self.play(Write(induction_step), base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("term_1_in_1")
            self.play(Write(term_1[0]), run_time=.5)

            self.wait_until_bookmark("term_1_in_2")
            self.play(*[Write(term_1[idx]) for idx in range(1, 4)], run_time=.5)

            self.wait_until_bookmark("explainer_1_in")
            self.play(Write(explainer_1), run_time=1)

            self.wait_until_bookmark("explainer_2_in")
            self.play(TransformMatchingTex(explainer_1, explainer_2))

            self.wait_until_bookmark("term_2_a_transforms")
            self.play(ReplacementTransform(VGroup(explainer_2[2].copy(), explainer_2[3].copy()), term_2_a[1]))
            self.play( ReplacementTransform(term_1[2].copy(), term_2_a[0]), ReplacementTransform(term_1[3].copy(), term_2_a[2]), run_time=1)
            
            self.wait_until_bookmark("term_2_a_complete")
            self.play(Write(VGroup(term_2_a[3], term_2_a[4])), Unwrite(explainer_2))

            self.wait_until_bookmark("term_2_b")
            self.play(TransformMatchingTex(term_2_a, term_2_b))

            self.wait_until_bookmark("term_3_in")
            self.play(Write(term_3))

            self.wait_until_bookmark("step_green")
            self.play(step.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_induction_5_b(SophiaCursorScene):    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        is_divisible_by_5 = self.translate("General.is_divisible_by_5")
        forall = self.translate("General.for_all")
        theorem_strings = [r"$6^n-1$", is_divisible_by_5, forall+r" $n\in\mathbb N$"]
        theorem = VGroup(*[Tex(thm_string, color=BLUE, font_size=fs2) for thm_string in theorem_strings]).arrange(DOWN, buff=.2).set_y(1.2)
        self.add(theorem)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_base = MathTex(r"6^0-1=1-1", r"=0", color=c3t, font_size=fs3).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, term_base).scale(1.1)

        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_1 = MathTex(r"6^{n+1}-1=", r"6\cdot", r"6^n", r"-1", color=c3t, font_size=fs3)
        term_2_a = MathTex(r"6\cdot", r"(5m+1)", r"-1", r"=", r"30m+6-1", color=c3t, font_size=fs3)
        term_2_b = MathTex(r"6\cdot", r"(5m+1)", r"-1", r"=", r"30m+5", color=c3t, font_size=fs3)
        term_2 = VGroup(term_2_a, term_2_b).arrange(ORIGIN, aligned_edge=LEFT)
        term_3 = MathTex(r"5(6m+1)", color=c3t, font_size=fs3)
        terms = VGroup(term_1, term_2, term_3).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(1.1).next_to(induction_step, DOWN, buff=.6)
        explainer_1 = MathTex(r"6^n", r"-1", r"=", r"5m", font_size=fs2, color=BLUE)
        explainer_2 = MathTex(r"6^n", r"=", r"5m", r"+1", font_size=fs2, color=BLUE)
        explainer = VGroup(explainer_1, explainer_2).next_to(terms, DOWN, buff=.2)
        step = VGroup(induction_step, term_1, term_2_b, term_3)
        

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_induction.2a.base_not_case")+self.translate("Calc_1.practice_induction.5a.voiceover-text")
        
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("base_case_in")
            self.add_shift_sound(.5)
            self.play(Write(base), theorem.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("base_term_in")
            self.play(Write(term_base), run_time=.5)

            self.wait_until_bookmark("base_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)

            self.wait_until_bookmark("induction_step_in")
            self.add_shift_sound(.5)
            self.play(Write(induction_step), base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("term_1_in_1")
            self.play(Write(term_1[0]), run_time=.5)

            self.wait_until_bookmark("term_1_in_2")
            self.play(*[Write(term_1[idx]) for idx in range(1, 4)], run_time=.5)

            self.wait_until_bookmark("explainer_1_in")
            self.play(Write(explainer_1), run_time=1)

            self.wait_until_bookmark("explainer_2_in")
            self.play(TransformMatchingTex(explainer_1, explainer_2))

            self.wait_until_bookmark("term_2_a_transforms")
            self.play(ReplacementTransform(VGroup(explainer_2[2].copy(), explainer_2[3].copy()), term_2_a[1]))
            self.play( ReplacementTransform(term_1[2].copy(), term_2_a[0]), ReplacementTransform(term_1[3].copy(), term_2_a[2]), run_time=1)
            
            self.wait_until_bookmark("term_2_a_complete")
            self.play(Write(VGroup(term_2_a[3], term_2_a[4])), Unwrite(explainer_2))

            self.wait_until_bookmark("term_2_b")
            self.play(TransformMatchingTex(term_2_a, term_2_b))

            self.wait_until_bookmark("term_3_in")
            self.play(Write(term_3))

            self.wait_until_bookmark("step_green")
            self.play(step.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_induction_5_c(SophiaCursorScene):    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        is_divisible_by_5 = self.translate("General.is_divisible_by_5")
        forall = self.translate("General.for_all")
        theorem_strings = [r"$6^n-1$", is_divisible_by_5, forall+r" $n\in\mathbb N$"]
        theorem = VGroup(*[Tex(thm_string, color=BLUE, font_size=fs2) for thm_string in theorem_strings]).arrange(DOWN, buff=.2).set_y(1.2)
        self.add(theorem)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_base = MathTex(r"6^0-1=1-1", r"=0", color=c3t, font_size=fs3).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, term_base).scale(1.1)

        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_1 = MathTex(r"6^{n+1}-1=", r"6\cdot", r"6^n", r"-1", color=c3t, font_size=fs3)
        term_2_a = MathTex(r"6\cdot", r"(5m+1)", r"-1", r"=", r"30m+6-1", color=c3t, font_size=fs3)
        term_2_b = MathTex(r"6\cdot", r"(5m+1)", r"-1", r"=", r"30m+5", color=c3t, font_size=fs3)
        term_2 = VGroup(term_2_a, term_2_b).arrange(ORIGIN, aligned_edge=LEFT)
        term_3 = MathTex(r"5(6m+1)", color=c3t, font_size=fs3)
        terms = VGroup(term_1, term_2, term_3).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(1.1).next_to(induction_step, DOWN, buff=.6)
        explainer_1 = MathTex(r"6^n", r"-1", r"=", r"5m", font_size=fs2, color=BLUE)
        explainer_2 = MathTex(r"6^n", r"=", r"5m", r"+1", font_size=fs2, color=BLUE)
        explainer = VGroup(explainer_1, explainer_2).next_to(terms, DOWN, buff=.2)
        step = VGroup(induction_step, term_1, term_2_b, term_3)
        

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_induction.2a.step_not_base")+self.translate("Calc_1.practice_induction.5a.voiceover-text")
        
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("base_case_in")
            self.add_shift_sound(.5)
            self.play(Write(base), theorem.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("base_term_in")
            self.play(Write(term_base), run_time=.5)

            self.wait_until_bookmark("base_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)

            self.wait_until_bookmark("induction_step_in")
            self.add_shift_sound(.5)
            self.play(Write(induction_step), base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("term_1_in_1")
            self.play(Write(term_1[0]), run_time=.5)

            self.wait_until_bookmark("term_1_in_2")
            self.play(*[Write(term_1[idx]) for idx in range(1, 4)], run_time=.5)

            self.wait_until_bookmark("explainer_1_in")
            self.play(Write(explainer_1), run_time=1)

            self.wait_until_bookmark("explainer_2_in")
            self.play(TransformMatchingTex(explainer_1, explainer_2))

            self.wait_until_bookmark("term_2_a_transforms")
            self.play(ReplacementTransform(VGroup(explainer_2[2].copy(), explainer_2[3].copy()), term_2_a[1]))
            self.play( ReplacementTransform(term_1[2].copy(), term_2_a[0]), ReplacementTransform(term_1[3].copy(), term_2_a[2]), run_time=1)
            
            self.wait_until_bookmark("term_2_a_complete")
            self.play(Write(VGroup(term_2_a[3], term_2_a[4])), Unwrite(explainer_2))

            self.wait_until_bookmark("term_2_b")
            self.play(TransformMatchingTex(term_2_a, term_2_b))

            self.wait_until_bookmark("term_3_in")
            self.play(Write(term_3))

            self.wait_until_bookmark("step_green")
            self.play(step.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_induction_5_d(SophiaCursorScene):    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.induction"))
        self.add(title)

        # Define the function text using MathTex
        is_divisible_by_5 = self.translate("General.is_divisible_by_5")
        forall = self.translate("General.for_all")
        theorem_strings = [r"$6^n-1$", is_divisible_by_5, forall+r" $n\in\mathbb N$"]
        theorem = VGroup(*[Tex(thm_string, color=BLUE, font_size=fs2) for thm_string in theorem_strings]).arrange(DOWN, buff=.2).set_y(1.2)
        self.add(theorem)

        base = Tex(self.translate("General.induction_base"), r" $(n=0)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_base = MathTex(r"6^0-1=1-1", r"=0", color=c3t, font_size=fs3).next_to(base, DOWN, buff=.8)
        base_group = VGroup(base, term_base).scale(1.1)

        induction_step = Tex(self.translate("General.induction_step"), r" $(n\to n+1)$:", color=c1t, font_size=fs3).set_y(2.2)
        term_1 = MathTex(r"6^{n+1}-1=", r"6\cdot", r"6^n", r"-1", color=c3t, font_size=fs3)
        term_2_a = MathTex(r"6\cdot", r"(5m+1)", r"-1", r"=", r"30m+6-1", color=c3t, font_size=fs3)
        term_2_b = MathTex(r"6\cdot", r"(5m+1)", r"-1", r"=", r"30m+5", color=c3t, font_size=fs3)
        term_2 = VGroup(term_2_a, term_2_b).arrange(ORIGIN, aligned_edge=LEFT)
        term_3 = MathTex(r"5(6m+1)", color=c3t, font_size=fs3)
        terms = VGroup(term_1, term_2, term_3).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(1.1).next_to(induction_step, DOWN, buff=.6)
        explainer_1 = MathTex(r"6^n", r"-1", r"=", r"5m", font_size=fs2, color=BLUE)
        explainer_2 = MathTex(r"6^n", r"=", r"5m", r"+1", font_size=fs2, color=BLUE)
        explainer = VGroup(explainer_1, explainer_2).next_to(terms, DOWN, buff=.2)
        step = VGroup(induction_step, term_1, term_2_b, term_3)
        

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.practice_induction.5a.voiceover-text")
        
        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("base_case_in")
            self.add_shift_sound(.5)
            self.play(Write(base), theorem.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("base_term_in")
            self.play(Write(term_base), run_time=.5)

            self.wait_until_bookmark("base_green")
            self.play(base_group.animate.set_color(GREEN), run_time=.5)

            self.wait_until_bookmark("induction_step_in")
            self.add_shift_sound(.5)
            self.play(Write(induction_step), base_group.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("term_1_in_1")
            self.play(Write(term_1[0]), run_time=.5)

            self.wait_until_bookmark("term_1_in_2")
            self.play(*[Write(term_1[idx]) for idx in range(1, 4)], run_time=.5)

            self.wait_until_bookmark("explainer_1_in")
            self.play(Write(explainer_1), run_time=1)

            self.wait_until_bookmark("explainer_2_in")
            self.play(TransformMatchingTex(explainer_1, explainer_2))

            self.wait_until_bookmark("term_2_a_transforms")
            self.play(ReplacementTransform(VGroup(explainer_2[2].copy(), explainer_2[3].copy()), term_2_a[1]))
            self.play( ReplacementTransform(term_1[2].copy(), term_2_a[0]), ReplacementTransform(term_1[3].copy(), term_2_a[2]), run_time=1)
            
            self.wait_until_bookmark("term_2_a_complete")
            self.play(Write(VGroup(term_2_a[3], term_2_a[4])), Unwrite(explainer_2))

            self.wait_until_bookmark("term_2_b")
            self.play(TransformMatchingTex(term_2_a, term_2_b))

            self.wait_until_bookmark("term_3_in")
            self.play(Write(term_3))

            self.wait_until_bookmark("step_green")
            self.play(step.animate.set_color(GREEN), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#



##################################### Intermediate value theorem
#####################################
class Calc_practice_ivt_1_q(SophiaCursorScene):
    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
                """We calculate the function values at the interval limits and obtain $f(0) = 0-1-1 = -2 < 0$ and $f(3) = 81-1-27= 53 > 0$.                             
                As a sum of continuous functions, the function $f$ is again continuous in the interval $[0, 3]$.
                According to the intermediate value theorem, $f$ assumes any value between -2 and 53, i.e. specifically also the value 0.
                The following aspects must be mentioned for the solution to count as correct:
                - Establishing that the function is continuous
                - Mention of the intermediate value theorem
                - Calculation of the interval limits f(0) and f(3), or: Determination that f(0)<0 and f(3)>0.
                """,
                """
                The student did the calculation of the interval limits f(0) and f(3), or: determined that f(0)<0 and f(3)>0. he just forgot to mention the intermediate value theorem.
                """,
                """
                Almost right, The student did the calculation of the interval limits f(0) and f(3), or: determined that f(0)<0 and f(3)>0. He applied the intermediate value theorem. he just forgot to mention the continuity
                """,
                """
                Almost right, the student mentioned continuity and the intermediate value theorem. he just forgot to check the interval limits or to name their signs.
                """,
                """
                The answer is incorrect.
                """
                ],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_ivt.1q.question-text"),
            llmCheckDetails=SophiaLLMQuestionCheckDetail(
                fallbackOptionIndex=1,
                specialInputSnippets = ["[ ]", "f"],
            )
        )
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        func = MathTex(r"f(x)=3x^3-1-3^x", color=c1t, font_size=fs2)
        interval = MathTex(r"[0,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_ivt.10q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("f_in")
            self.play(Write(func), run_time=.5)

            self.wait_until_bookmark("interval_in")
            self.play(Write(interval), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_ivt_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        continuous = self.translate("words.continuous")
        ivt = self.translate("General.ivt")
        zero = self.translate("words.Zero")
        # Define the function text using MathTex
        func = MathTex(r"f(x)=3x^3-1-3^x", color=c1t, font_size=fs2)
        interval = MathTex(r"[0,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        continuous = Tex(r"$\bullet$ $f$ "+continuous, color=BLUE, font_size=fs2)
        interval_limits = Tex(r"$\bullet$ $f(0)=-2$,\,", r"$f(3)=53$", color=BLUE, font_size=fs2)
        ivt = Tex(r"$\bullet$ ", ivt, r"\\$\Rightarrow$ ", zero, color=BLUE, font_size=fs2)
        bullets = VGroup(continuous, interval_limits, ivt).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(.9).next_to(func_and_interval, DOWN, buff=.4)
        self.add(func_and_interval)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_2")+self.translate("Calc_1.practice_ivt.10a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("continuous")
            self.play(Write(continuous), run_time=.5)

            self.wait_until_bookmark("interval_limits")
            self.play(Write(interval_limits, run_time=.5))

            self.wait_until_bookmark("ivt")
            self.play(Write(ivt, run_time=.5))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_ivt_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        continuous = self.translate("words.continuous")
        ivt = self.translate("General.ivt")
        zero = self.translate("words.Zero")
        # Define the function text using MathTex
        func = MathTex(r"f(x)=3x^3-1-3^x", color=c1t, font_size=fs2)
        interval = MathTex(r"[0,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        continuous = Tex(r"$\bullet$ $f$ "+continuous, color=BLUE, font_size=fs2)
        interval_limits = Tex(r"$\bullet$ $f(0)=-2$,\,", r"$f(3)=53$", color=BLUE, font_size=fs2)
        ivt = Tex(r"$\bullet$ ", ivt, r"\\$\Rightarrow$ ", zero, color=BLUE, font_size=fs2)
        bullets = VGroup(continuous, interval_limits, ivt).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(.9).next_to(func_and_interval, DOWN, buff=.4)
        self.add(func_and_interval)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_ivt.10a.forgot_ivt")+self.translate("Calc_1.practice_ivt.10a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("continuous")
            self.play(Write(continuous), run_time=.5)

            self.wait_until_bookmark("interval_limits")
            self.play(Write(interval_limits, run_time=.5))

            self.wait_until_bookmark("ivt")
            self.play(Write(ivt, run_time=.5))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_ivt_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        continuous = self.translate("words.continuous")
        ivt = self.translate("General.ivt")
        zero = self.translate("words.Zero")
        # Define the function text using MathTex
        func = MathTex(r"f(x)=3x^3-1-3^x", color=c1t, font_size=fs2)
        interval = MathTex(r"[0,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        continuous = Tex(r"$\bullet$ $f$ "+continuous, color=BLUE, font_size=fs2)
        interval_limits = Tex(r"$\bullet$ $f(0)=-2$,\,", r"$f(3)=53$", color=BLUE, font_size=fs2)
        ivt = Tex(r"$\bullet$ ", ivt, r"\\$\Rightarrow$ ", zero, color=BLUE, font_size=fs2)
        bullets = VGroup(continuous, interval_limits, ivt).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(.9).next_to(func_and_interval, DOWN, buff=.4)
        self.add(func_and_interval)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_ivt.10a.forgot_continuity")+self.translate("Calc_1.practice_ivt.10a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("continuous")
            self.play(Write(continuous), run_time=.5)

            self.wait_until_bookmark("interval_limits")
            self.play(Write(interval_limits, run_time=.5))

            self.wait_until_bookmark("ivt")
            self.play(Write(ivt, run_time=.5))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_ivt_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        continuous = self.translate("words.continuous")
        ivt = self.translate("General.ivt")
        zero = self.translate("words.Zero")
        # Define the function text using MathTex
        func = MathTex(r"f(x)=3x^3-1-3^x", color=c1t, font_size=fs2)
        interval = MathTex(r"[0,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        continuous = Tex(r"$\bullet$ $f$ "+continuous, color=BLUE, font_size=fs2)
        interval_limits = Tex(r"$\bullet$ $f(0)=-2$,\,", r"$f(3)=53$", color=BLUE, font_size=fs2)
        ivt = Tex(r"$\bullet$ ", ivt, r"\\$\Rightarrow$ ", zero, color=BLUE, font_size=fs2)
        bullets = VGroup(continuous, interval_limits, ivt).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(.9).next_to(func_and_interval, DOWN, buff=.4)
        self.add(func_and_interval)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_ivt.10a.forgot_interval_limits")+self.translate("Calc_1.practice_ivt.10a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("continuous")
            self.play(Write(continuous), run_time=.5)

            self.wait_until_bookmark("interval_limits")
            self.play(Write(interval_limits, run_time=.5))

            self.wait_until_bookmark("ivt")
            self.play(Write(ivt, run_time=.5))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_ivt_1_e(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        continuous = self.translate("words.continuous")
        ivt = self.translate("General.ivt")
        zero = self.translate("words.Zero")
        func = MathTex(r"f(x)=3x^3-1-3^x", color=c1t, font_size=fs2)
        interval = MathTex(r"[0,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, interval).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        continuous = Tex(r"$\bullet$ $f$ "+continuous, color=BLUE, font_size=fs2)
        interval_limits = Tex(r"$\bullet$ $f(0)=-2$,\,", r"$f(3)=53$", color=BLUE, font_size=fs2)
        ivt = Tex(r"$\bullet$ ", ivt, r"\\$\Rightarrow$ ", zero, color=BLUE, font_size=fs2)
        bullets = VGroup(continuous, interval_limits, ivt).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(.9).next_to(func_and_interval, DOWN, buff=.4)
        self.add(func_and_interval)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.practice_ivt.10a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("continuous")
            self.play(Write(continuous), run_time=.5)

            self.wait_until_bookmark("interval_limits")
            self.play(Write(interval_limits, run_time=.5))

            self.wait_until_bookmark("ivt")
            self.play(Write(ivt, run_time=.5))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
        
##################################### Mean value theorem #TODO
# #####################################
# class Calc_practice_mvt_10_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         limits = self.translate("words.Limits")
#         title = self.add_title(limits)
#         self.add(title)

#         # Define the function text using MathTex
#         series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ konvergente Folge", color=c1t, font_size=fs3)
#         series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=0$", color=c1t, font_size=fs3)
#         series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
#         series_3 = Tex("", r"$b_n=$", "", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
#         series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).move_to(series_3)

#         # lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

#         # Define the voiceover text
#         voiceover_text = """
# Betrachten wir die konvergente <bookmark mark="a_1_in"/>Folge a n. Wir wissen, dass a n <bookmark mark="a_2_in"/>gegen Null konvergiert, also dass der Grenzwert der Folge gleich Null ist.
# Betrachten wir jetzt eine neue <bookmark mark="b_n_in_1"/>Folge b n, die wir als minus eins hoch n mal a n geteilt durch zwei definieren.
# Was ist <bookmark mark="b_n_in_2"/>der Grenzwert von b n für n gegen unendlich?
# """

#         # Action Sequence
#         with self.voiceover(text=voiceover_text) as tracker:
            
#             self.wait_until_bookmark("a_1_in")
#             self.play(Write(series_1), run_time=.5)

#             self.wait_until_bookmark("a_2_in")
#             self.play(Write(series_2[0]), run_time=.5)

#             self.wait_until_bookmark("b_n_in_1")
#             self.play(Write(series_3), run_time=.5)

#             self.wait_until_bookmark("b_n_in_2")
#             self.play(TransformMatchingTex(series_3, series_4))

#         # Wait for 4 seconds at the end of the animation
#         self.wait(6)

# #
        

##################################### Complex Numbers
#####################################
class Calc_practice_complex_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$Re(z)=2$, $Im(z)=-1$", "$Re(z)=0$, $Im(z)=0$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_complex.1q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$Re(z)=\key{Re}$, $Im(z)=\key{Im}$",
                answerOptionsTypes={
                    "Re": "number",
                    "Im": "number",
                }
            )
        )

    #

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        complex_numbers = self.translate("General.complex_numbers")
        title = self.add_title(complex_numbers)
        self.add(title)

        # Define the function text using MathTex
        complex_number = Tex(r"$z=\frac{4+3i}{1+2i}$", color=c1t, font_size=fs2).set_y(2)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,0,0]).scale(.45)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_complex.01q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("complex_number_in")
            self.play(Write(complex_number))

            self.wait_until_bookmark("qmark")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)


class Calc_practice_complex_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        complex_numbers = self.translate("General.complex_numbers")
        title = self.add_title(complex_numbers)
        self.add(title)

        # Define the function text using MathTex
        complex_number_1 = MathTex(r"z={{4+3i}\over", r"{1+2i}}", color=c1t, font_size=fs2).set_y(2)
        step_1 = MathTex(r"\Downarrow", r"\cdot\tfrac{(1-2i)}{(1-2i)}", color=BLUE, font_size=fs2)
        step_1[1].scale(.9)
        complex_number_2_a = MathTex(r"z={{(4+3i)(1-2i)}\over", r"{(1+2i)", r"(1-2i)}}", color=c1t, font_size=fs2)
        complex_number_2_b = MathTex(r"z={{(4+3i)(1-2i)}\over", r"{1+4}}", color=c1t, font_size=fs2)
        complex_number_2 = VGroup(complex_number_2_a, complex_number_2_b).arrange(ORIGIN, aligned_edge=LEFT)
        step_2 = Tex(r"$\Downarrow$", r" "+self.translate("words.expand"), color=BLUE, font_size=fs2)
        step_2[1].scale(.9)
        complex_number_3_a = MathTex(r"z=", r"\tfrac15", r"(4+3i-8i-6i^2)", color=c1t, font_size=fs2)
        complex_number_3_b = MathTex(r"z=", r"\tfrac15", r"(10-5i)", color=c1t, font_size=fs2)
        complex_number_3_c = MathTex(r"z=", r"2-i", color=c1t, font_size=fs2)
        complex_number_3 = VGroup(complex_number_3_a, complex_number_3_b, complex_number_3_c)
        steps = VGroup(step_1, complex_number_2, step_2, complex_number_3).arrange(DOWN, buff=.2).scale(.9).next_to(complex_number_1, DOWN, buff=.2)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").scale(.45)
        self.add(qmark, complex_number_1)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_4")+self.translate("Calc_1.practice_complex.01a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("qmark")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("denominator_1")
            self.play(Indicate(complex_number_1[-1], color=RED, scale_factor=1.4), run_time=1)

            self.wait_until_bookmark("step_1")
            self.play(Write(step_1))

            self.wait_until_bookmark("complex_number_2_a")
            self.play(Write(complex_number_2_a))

            self.wait_until_bookmark("denominator_2_a")
            self.play(Indicate(complex_number_2_a[-2], color=RED, scale_factor=1.4), run_time=1)

            self.wait_until_bookmark("denominator_2_b")
            self.play(Indicate(complex_number_2_a[-1], color=RED, scale_factor=1.4), run_time=1)

            self.wait_until_bookmark("complex_number_2_b")
            self.play(TransformMatchingTex(complex_number_2_a, complex_number_2_b))

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2))

            self.wait_until_bookmark("complex_number_3_a")
            self.play(Write(complex_number_3_a))

            self.wait_until_bookmark("complex_number_3_b")
            self.play(TransformMatchingTex(complex_number_3_a, complex_number_3_b))

            self.wait_until_bookmark("complex_number_3_c")
            self.play(TransformMatchingTex(complex_number_3_b, complex_number_3_c))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_complex_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        complex_numbers = self.translate("General.complex_numbers")
        title = self.add_title(complex_numbers)
        self.add(title)

        # Define the function text using MathTex
        complex_number_1 = MathTex(r"z={{4+3i}\over", r"{1+2i}}", color=c1t, font_size=fs2).set_y(2)
        step_1 = MathTex(r"\Downarrow", r"\cdot\tfrac{(1-2i)}{(1-2i)}", color=BLUE, font_size=fs2)
        step_1[1].scale(.9)
        complex_number_2_a = MathTex(r"z={{(4+3i)(1-2i)}\over", r"{(1+2i)", r"(1-2i)}}", color=c1t, font_size=fs2)
        complex_number_2_b = MathTex(r"z={{(4+3i)(1-2i)}\over", r"{1+4}}", color=c1t, font_size=fs2)
        complex_number_2 = VGroup(complex_number_2_a, complex_number_2_b).arrange(ORIGIN, aligned_edge=LEFT)
        step_2 = Tex(r"$\Downarrow$", r" "+self.translate("words.expand"), color=BLUE, font_size=fs2)
        step_2[1].scale(.9)
        complex_number_3_a = MathTex(r"z=", r"\tfrac15", r"(4+3i-8i-6i^2)", color=c1t, font_size=fs2)
        complex_number_3_b = MathTex(r"z=", r"\tfrac15", r"(10-5i)", color=c1t, font_size=fs2)
        complex_number_3_c = MathTex(r"z=", r"2-i", color=c1t, font_size=fs2)
        complex_number_3 = VGroup(complex_number_3_a, complex_number_3_b, complex_number_3_c)
        steps = VGroup(step_1, complex_number_2, step_2, complex_number_3).arrange(DOWN, buff=.2).scale(.9).next_to(complex_number_1, DOWN, buff=.2)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").scale(.45)
        self.add(qmark, complex_number_1)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_4")+self.translate("Calc_1.practice_complex.01a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("qmark")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("denominator_1")
            self.play(Indicate(complex_number_1[-1], color=RED, scale_factor=1.4), run_time=1)

            self.wait_until_bookmark("step_1")
            self.play(Write(step_1))

            self.wait_until_bookmark("complex_number_2_a")
            self.play(Write(complex_number_2_a))

            self.wait_until_bookmark("denominator_2_a")
            self.play(Indicate(complex_number_2_a[-2], color=RED, scale_factor=1.4), run_time=1)

            self.wait_until_bookmark("denominator_2_b")
            self.play(Indicate(complex_number_2_a[-1], color=RED, scale_factor=1.4), run_time=1)

            self.wait_until_bookmark("complex_number_2_b")
            self.play(TransformMatchingTex(complex_number_2_a, complex_number_2_b))

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2))

            self.wait_until_bookmark("complex_number_3_a")
            self.play(Write(complex_number_3_a))

            self.wait_until_bookmark("complex_number_3_b")
            self.play(TransformMatchingTex(complex_number_3_a, complex_number_3_b))

            self.wait_until_bookmark("complex_number_3_c")
            self.play(TransformMatchingTex(complex_number_3_b, complex_number_3_c))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)


##################################### Trig functions
#####################################
class Calc_practice_trig_1_q(SophiaCursorScene):


    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [r"$\frac{2{\pi}}{3}$", r"$1$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_trig.1q.question-text"),
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

        trig_functions = self.translate("General.trig_functions")
        title = self.add_title(trig_functions)
        self.add(title)

        # Define the function text using MathTex
        function = Tex(r"$f:\mathbb R \rightarrow \mathbb R$", r" $f(x)=\sin(3x)+2$", color=BLUE, font_size=fs3).scale(1.1).set_y(2.4)
        period = MathTex(r"\Rightarrow T=?", color=BLUE, font_size=fs2).next_to(function, DOWN, buff=.4)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,-.4,0]).scale(.4)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_trig.1q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in_1")
            self.play(Write(function[0]))

            self.wait_until_bookmark("func_in_2")
            self.play(Write(function[1]))

            self.wait_until_bookmark("period_in")
            self.play(Write(period), run_time=1)
            self.wait(.5)
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_trig_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        trig_functions = self.translate("General.trig_functions")
        title = self.add_title(trig_functions)
        self.add(title)

        # Define the function text using MathTex
        function = Tex(r"$f:\mathbb R \rightarrow \mathbb R$", r" $f(x)=\sin(3x)+2$", color=BLUE, font_size=fs3).scale(1.1).set_y(2.4)
        period = MathTex(r"\Rightarrow T=?", color=BLUE, font_size=fs2).next_to(function, DOWN, buff=.4)
        sine_period = MathTex(r"\sin(x)", r"=\sin(x+2\pi)", color=BLUE, font_size=fs2).next_to(function, DOWN, buff=.4)
        period_1 = MathTex(r"\Rightarrow T=2\pi", color=BLUE, font_size=fs2).next_to(sine_period, DOWN, buff=.4)

        sine_3_period_a = MathTex(r"\sin(3x)", r"=\sin(3x+2\pi)", color=c1t, font_size=fs3).next_to(period_1, DOWN, buff=.4)
        sine_3_period_b = MathTex(r"\sin(3(x+T))", r"=\sin(3x+2\pi)", color=c1t, font_size=fs3).next_to(period_1, DOWN, buff=.4)
        period_3 = MathTex(r"\Rightarrow T=\frac{2\pi}3", color=c1t, font_size=fs3).next_to(sine_3_period_b, DOWN, buff=.4)
        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([0,-.4,0]).scale(.4)

        self.add(function, period, qmark)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_2")+self.translate("Calc_1.practice_trig.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("sine_period_1")
            self.add_shift_sound(.5)
            period.generate_target().move_to(period_3)
            self.play(Write(sine_period), MoveToTarget(period), qmark.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("sine_period_2")
            self.play(Write(period_1), run_time=.5)

            self.wait_until_bookmark("sine_3_period_a")
            self.play(Write(sine_3_period_a), run_time=.5)

            self.wait_until_bookmark("sine_3_period_b")
            self.play(TransformMatchingTex(sine_3_period_a, sine_3_period_b), run_time=.5)

            self.wait_until_bookmark("period_3")
            self.play(ReplacementTransform(period, period_3), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_trig_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        trig_functions = self.translate("General.trig_functions")
        title = self.add_title(trig_functions)
        self.add(title)

        # Define the function text using MathTex
        function = Tex(r"$f:\mathbb R \rightarrow \mathbb R$", r" $f(x)=\sin(3x)+2$", color=BLUE, font_size=fs3).scale(1.1).set_y(2.4)
        period = MathTex(r"\Rightarrow T=?", color=BLUE, font_size=fs2).next_to(function, DOWN, buff=.4)
        sine_period = MathTex(r"\sin(x)", r"=\sin(x+2\pi)", color=BLUE, font_size=fs2).next_to(function, DOWN, buff=.4)
        period_1 = MathTex(r"\Rightarrow T=2\pi", color=BLUE, font_size=fs2).next_to(sine_period, DOWN, buff=.4)

        sine_3_period_a = MathTex(r"\sin(3x)", r"=\sin(3x+2\pi)", color=c1t, font_size=fs3).next_to(period_1, DOWN, buff=.4)
        sine_3_period_b = MathTex(r"\sin(3(x+T))", r"=\sin(3x+2\pi)", color=c1t, font_size=fs3).next_to(period_1, DOWN, buff=.4)
        period_3 = MathTex(r"\Rightarrow T=\frac{2\pi}3", color=c1t, font_size=fs3).next_to(sine_3_period_b, DOWN, buff=.4)
        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([0,-.4,0]).scale(.4)

        self.add(function, period, qmark)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_2")+self.translate("Calc_1.practice_trig.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("sine_period_1")
            self.add_shift_sound(.5)
            period.generate_target().move_to(period_3)
            self.play(Write(sine_period), MoveToTarget(period), qmark.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("sine_period_2")
            self.play(Write(period_1), run_time=.5)

            self.wait_until_bookmark("sine_3_period_a")
            self.play(Write(sine_3_period_a), run_time=.5)

            self.wait_until_bookmark("sine_3_period_b")
            self.play(TransformMatchingTex(sine_3_period_a, sine_3_period_b), run_time=.5)

            self.wait_until_bookmark("period_3")
            self.play(ReplacementTransform(period, period_3), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)


#####################################
# class Calc_practice_trig_2_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         trig_functions = self.translate("General.trig_functions")
#         title = self.add_title(trig_functions)
#         self.add(title)

#         # Define the function text using MathTex
#         function = Tex(r"$f:\mathbb R \rightarrow \mathbb R$", r" $f(x)=\frac{\cos(5x)}{3}$", color=BLUE, font_size=fs3).scale(1.1).set_y(2.4)
#         period = MathTex(r"\Rightarrow T=?", color=BLUE, font_size=fs2).next_to(function, DOWN, buff=.4)

#         qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,-.4,0]).scale(.4)

#         # Define the voiceover text
#         voiceover_text = """
# Betrachte die Funktion, die Funktion <bookmark mark="func_in_2"/>f von x gleich cosinus von 5 x geteilt durch drei, die <bookmark mark="func_in_1"/>von den reellen Zahlen in die reellen Zahlen abbildet.
# Was ist <bookmark mark="period_in"/>die kleinste Periode T von der Funktion f?
# """

#         # Action Sequence
#         with self.voiceover(text=voiceover_text) as tracker:

#             self.wait_until_bookmark("func_in_2")
#             self.play(Write(function[1]))
            
#             self.wait_until_bookmark("func_in_1")
#             self.play(Write(function[0]))

#             self.wait_until_bookmark("period_in")
#             self.play(Write(period))
#             self.add_shift_sound(0.5)
#             self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

#         # Wait for 4 seconds at the end of the animation
#         self.wait(6)
# #TODO
# #
        
##################################### Continuity
#####################################
class Calc_practice_continuous_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a=1$, $b=0$", "$a=2$, $b=2$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_continuous.1q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$a=\key{a}$, $b=\key{b}$",
                answerOptionsTypes={
                    "a": "number",
                    "b": "number"
                }
            )
        )

    #

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        trig_functions = self.translate("General.continuity")
        title = self.add_title(trig_functions)
        self.add(title)

        # Define the function text using MathTex
        for_string = self.translate("words.for")
        func_string = fr"f(x)=\begin{{cases}}1 + be^{{x}}& \text{{{for_string} }} x < \pi, \\a & \text{{{for_string} }} x = \pi, \\-\frac{{\sin(x)}}{{x - \pi}} & \text{{{for_string} }} x > \pi,\end{{cases}}"
        function = MathTex(func_string, font_size=fs3, color=c1t).set_y(1.4)
        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,-1,0]).scale(.4)

        for_offset = int(self.translate("General.for_offset"))
        case_0 = VGroup(*[function[0][idx] for idx in range(10)])
        case_1_a, case_1_b = VGroup(*[function[0][idx] for idx in range(10,15)]), VGroup(*[function[0][idx] for idx in range(15,22+for_offset)])
        case_2_a, case_2_b = VGroup(*[function[0][idx] for idx in range(22+for_offset,23+for_offset)]), VGroup(*[function[0][idx] for idx in range(23+for_offset,30+2*for_offset)])
        case_3_a, case_3_b = VGroup(*[function[0][idx] for idx in range(30+2*for_offset,41+2*for_offset)]), VGroup(*[function[0][idx] for idx in range(41+2*for_offset,47+3*for_offset)])
        
        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_continuous.1q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(case_0), run_time=1)

            self.wait_until_bookmark("case_1_a")
            self.play(Write(case_1_a), run_time=.5)

            self.wait_until_bookmark("case_1_b")
            self.play(Write(case_1_b), run_time=.5)

            self.wait_until_bookmark("case_2_ab")
            self.play(Write(case_2_a), Write(case_2_b), run_time=.5)

            self.wait_until_bookmark("case_3_a")
            self.play(Write(case_3_a), run_time=.5)

            self.wait_until_bookmark("case_3_b")
            self.play(Write(case_3_b), run_time=.5)

            self.wait_until_bookmark("qmark")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)
            self.wait(1)
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_continuous_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        trig_functions = self.translate("General.steadiness")
        title = self.add_title(trig_functions)
        self.add(title)

        # Define the function text using MathTex
        for_string = self.translate("words.for")
        func_string = fr"f(x)=\begin{{cases}}1 + be^{{x}}& \text{{{for_string} }} x < \pi, \\a & \text{{{for_string} }} x = \pi, \\-\frac{{\sin(x)}}{{x - \pi}} & \text{{{for_string} }} x > \pi,\end{{cases}}"
        function = MathTex(func_string, font_size=fs3, color=c1t).set_y(1.4)
        left_limit_1 = MathTex(r"\underset{x\nearrow\pi}{\lim}f(x) = ", r"\underset{x\nearrow\pi}{\lim} (1 + be^x)", color=c1t, font_size=fs3)
        left_limit_2 = MathTex(r"\underset{x\nearrow\pi}{\lim} f(x) =", r" 1 + be^\pi", color=c1t, font_size=fs3)
        left_limit = VGroup(left_limit_1, left_limit_2).arrange(ORIGIN, aligned_edge=LEFT)
        right_limit_1 = MathTex(r"\underset{x\searrow\pi}{\lim} f(x) = ", r"\underset{x\searrow\pi}{\lim} \left( -\tfrac{\sin(x)}{x - \pi} \right)", color=c1t, font_size=fs3)
        right_limit_2 = MathTex(r"\underset{x\searrow\pi}{\lim} f(x) = ", r" \underset{x\searrow\pi}{\lim} \left( -\tfrac{\cos(x)}{1} \right)", color=c1t, font_size=fs3)
        right_limit_3 = MathTex(r"\underset{x\searrow\pi}{\lim} f(x)= ", r"1", color=c1t, font_size=fs3)
        right_limit = VGroup(right_limit_1, right_limit_2, right_limit_3).arrange(ORIGIN, aligned_edge=LEFT)
        sol = MathTex(r"\Rightarrow a=1, \, b=0", color=GREEN, font_size=fs3)
        limits = VGroup(left_limit, right_limit, sol).arrange(DOWN, buff=.2).set_y(-.5)

        for_offset = int(self.translate("General.for_offset"))
        case_0 = VGroup(*[function[0][idx] for idx in range(10)])
        case_1_a, case_1_b = VGroup(*[function[0][idx] for idx in range(10,15)]), VGroup(*[function[0][idx] for idx in range(15,22+for_offset)])
        case_2_a, case_2_b = VGroup(*[function[0][idx] for idx in range(22+for_offset,23+for_offset)]), VGroup(*[function[0][idx] for idx in range(23+for_offset,30+2*for_offset)])
        case_3_a, case_3_b = VGroup(*[function[0][idx] for idx in range(30+2*for_offset,41+2*for_offset)]), VGroup(*[function[0][idx] for idx in range(41+2*for_offset,47+3*for_offset)])
        

        self.add(function)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_5")+self.translate("Calc_1.practice_continuous.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("highlight_1_a")
            self.play(case_1_a.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("highlight_2_a")
            self.play(case_3_a.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("reset_highlight_a")
            self.play(case_1_a.animate.set_color(c1t), case_3_a.animate.set_color(c1t), run_time=.5)
            
            self.wait_until_bookmark("left_1_a")
            self.play(Write(left_limit_1[0]))

            self.wait_until_bookmark("left_1_b")
            self.play(Write(left_limit_1[1]))

            self.wait_until_bookmark("left_2")
            self.play(TransformMatchingTex(left_limit_1, left_limit_2))

            self.wait_until_bookmark("right_1_a")
            self.play(Write(right_limit_1[0]))

            self.wait_until_bookmark("right_1_b")
            self.play(Write(right_limit_1[1]))

            self.wait_until_bookmark("right_2")
            self.play(TransformMatchingTex(right_limit_1, right_limit_2))

            self.wait_until_bookmark("right_3")
            self.play(TransformMatchingTex(right_limit_2, right_limit_3))

            self.wait_until_bookmark("sol_in")
            self.play(Write(sol))
            
        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_continuous_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        trig_functions = self.translate("General.steadiness")
        title = self.add_title(trig_functions)
        self.add(title)

        # Define the function text using MathTex
        for_string = self.translate("words.for")
        func_string = fr"f(x)=\begin{{cases}}1 + be^{{x}}& \text{{{for_string} }} x < \pi, \\a & \text{{{for_string} }} x = \pi, \\-\frac{{\sin(x)}}{{x - \pi}} & \text{{{for_string} }} x > \pi,\end{{cases}}"
        function = MathTex(func_string, font_size=fs3, color=c1t).set_y(1.4)
        left_limit_1 = MathTex(r"\underset{x\nearrow\pi}{\lim}f(x) = ", r"\underset{x\nearrow\pi}{\lim} (1 + be^x)", color=c1t, font_size=fs3)
        left_limit_2 = MathTex(r"\underset{x\nearrow\pi}{\lim} f(x) =", r" 1 + be^\pi", color=c1t, font_size=fs3)
        left_limit = VGroup(left_limit_1, left_limit_2).arrange(ORIGIN, aligned_edge=LEFT)
        right_limit_1 = MathTex(r"\underset{x\searrow\pi}{\lim} f(x) = ", r"\underset{x\searrow\pi}{\lim} \left( -\tfrac{\sin(x)}{x - \pi} \right)", color=c1t, font_size=fs3)
        right_limit_2 = MathTex(r"\underset{x\searrow\pi}{\lim} f(x) = ", r" \underset{x\searrow\pi}{\lim} \left( -\tfrac{\cos(x)}{1} \right)", color=c1t, font_size=fs3)
        right_limit_3 = MathTex(r"\underset{x\searrow\pi}{\lim} f(x)= ", r"1", color=c1t, font_size=fs3)
        right_limit = VGroup(right_limit_1, right_limit_2, right_limit_3).arrange(ORIGIN, aligned_edge=LEFT)
        sol = MathTex(r"\Rightarrow a=1, \, b=0", color=GREEN, font_size=fs3)
        limits = VGroup(left_limit, right_limit, sol).arrange(DOWN, buff=.2).set_y(-.5)
        
        for_offset = int(self.translate("General.for_offset"))
        case_0 = VGroup(*[function[0][idx] for idx in range(10)])
        case_1_a, case_1_b = VGroup(*[function[0][idx] for idx in range(10,15)]), VGroup(*[function[0][idx] for idx in range(15,22+for_offset)])
        case_2_a, case_2_b = VGroup(*[function[0][idx] for idx in range(22+for_offset,23+for_offset)]), VGroup(*[function[0][idx] for idx in range(23+for_offset,30+2*for_offset)])
        case_3_a, case_3_b = VGroup(*[function[0][idx] for idx in range(30+2*for_offset,41+2*for_offset)]), VGroup(*[function[0][idx] for idx in range(41+2*for_offset,47+3*for_offset)])

        self.add(function)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_5")+self.translate("Calc_1.practice_continuous.1a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("highlight_1_a")
            self.play(case_1_a.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("highlight_2_a")
            self.play(case_3_a.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("reset_highlight_a")
            self.play(case_1_a.animate.set_color(c1t), case_3_a.animate.set_color(c1t), run_time=.5)
            
            self.wait_until_bookmark("left_1_a")
            self.play(Write(left_limit_1[0]))

            self.wait_until_bookmark("left_1_b")
            self.play(Write(left_limit_1[1]))

            self.wait_until_bookmark("left_2")
            self.play(TransformMatchingTex(left_limit_1, left_limit_2))

            self.wait_until_bookmark("right_1_a")
            self.play(Write(right_limit_1[0]))

            self.wait_until_bookmark("right_1_b")
            self.play(Write(right_limit_1[1]))

            self.wait_until_bookmark("right_2")
            self.play(TransformMatchingTex(right_limit_1, right_limit_2))

            self.wait_until_bookmark("right_3")
            self.play(TransformMatchingTex(right_limit_2, right_limit_3))

            self.wait_until_bookmark("sol_in")
            self.play(Write(sol))
            
        # Wait for 4 seconds at the end of the animation
        self.wait(6)

#####################################
#####################################
class Calc_practice_continuous_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a=6$, $b=2$", "$a=0$, $b=0$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_continuous.2q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$a=\key{a}$, $b=\key{b}$",
                answerOptionsTypes={
                    "a": "number",
                    "b": "number"
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        trig_functions = self.translate("General.continuity")
        title = self.add_title(trig_functions)
        self.add(title)

        # Define the function text using MathTex
        for_string = self.translate("words.for")
        for_offset = int(self.translate("General.for_offset"))
        func_string = fr"f(x)=\begin{{cases}}2x^2 -2& \text{{{for_string} }} x < 2, \\a & \text{{{for_string} }} x = 2, \\2x+b & \text{{{for_string} }} x > 2\end{{cases}}"
        function = MathTex(func_string, font_size=fs3, color=c1t).set_y(1.4)
        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,-1,0]).scale(.4)

        case_0 = VGroup(*[function[0][idx] for idx in range(10)])
        case_1_a, case_1_b = VGroup(*[function[0][idx] for idx in range(10,15)]), VGroup(*[function[0][idx] for idx in range(15,21+for_offset)])
        case_2_a, case_2_b = VGroup(*[function[0][idx] for idx in range(21+for_offset,23+for_offset)]), VGroup(*[function[0][idx] for idx in range(23+for_offset,29+2*for_offset)])
        case_3_a, case_3_b = VGroup(*[function[0][idx] for idx in range(29+2*for_offset,34+2*for_offset)]), VGroup(*[function[0][idx] for idx in range(34+2*for_offset,40+3*for_offset)])
        
        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_continuous.2q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(case_0), run_time=1)

            self.wait_until_bookmark("case_1_a")
            self.play(Write(case_1_a), run_time=.5)

            self.wait_until_bookmark("case_1_b")
            self.play(Write(case_1_b), run_time=.5)

            self.wait_until_bookmark("case_2_ab")
            self.play(Write(case_2_a), Write(case_2_b), run_time=.5)

            self.wait_until_bookmark("case_3_a")
            self.play(Write(case_3_a), run_time=.5)

            self.wait_until_bookmark("case_3_b")
            self.play(Write(case_3_b), run_time=.5)

            self.wait_until_bookmark("qmark")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)
            self.wait(1)
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_continuous_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        trig_functions = self.translate("General.steadiness")
        title = self.add_title(trig_functions)
        self.add(title)

        # Define the function text using MathTex

        for_string = self.translate("words.for")
        func_string = fr"f(x)=\begin{{cases}}2x^2 -2& \text{{{for_string} }} x < 2, \\a & \text{{{for_string} }} x = 2, \\2x+b & \text{{{for_string} }} x > 2\end{{cases}}"
        function = MathTex(func_string, font_size=fs3, color=c1t).set_y(1.4)
        left_limit_1 = MathTex(r"\underset{x\nearrow2}{\lim}f(x) = ", r"\underset{x\nearrow2}{\lim} (2x^2-2)", color=c1t, font_size=fs3)
        left_limit_2 = MathTex(r"\underset{x\nearrow2}{\lim}f(x) = ", r"2\cdot 2^2-2", color=c1t, font_size=fs3)
        left_limit_3 = MathTex(r"\underset{x\nearrow2}{\lim} f(x) =", r" 6", color=c1t, font_size=fs3)
        left_limit = VGroup(left_limit_1, left_limit_2, left_limit_3).arrange(ORIGIN, aligned_edge=LEFT)
        right_limit_1 = MathTex(r"\underset{x\searrow2}{\lim} f(x) = ", r"\underset{x\searrow2}{\lim} \left( 2x+b)", color=c1t, font_size=fs3)
        right_limit_2 = MathTex(r"\underset{x\searrow2}{\lim} f(x) = ", r" 4+b", color=c1t, font_size=fs3)
        right_limit = VGroup(right_limit_1, right_limit_2).arrange(ORIGIN, aligned_edge=LEFT)
        sol = MathTex(r"\Rightarrow a=6, \, b=2", color=GREEN, font_size=fs3)
        limits = VGroup(left_limit, right_limit, sol).arrange(DOWN, buff=.2).set_y(-.5)

        for_offset = int(self.translate("General.for_offset"))
        case_0 = VGroup(*[function[0][idx] for idx in range(10)])
        case_1_a, case_1_b = VGroup(*[function[0][idx] for idx in range(10,15)]), VGroup(*[function[0][idx] for idx in range(15,21+for_offset)])
        case_2_a, case_2_b = VGroup(*[function[0][idx] for idx in range(21+for_offset,23+for_offset)]), VGroup(*[function[0][idx] for idx in range(23+for_offset,29+2*for_offset)])
        case_3_a, case_3_b = VGroup(*[function[0][idx] for idx in range(29+2*for_offset,34+2*for_offset)]), VGroup(*[function[0][idx] for idx in range(34+2*for_offset,40+3*for_offset)])
        

        self.add(function)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_3")+self.translate("Calc_1.practice_continuous.2a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("highlight_1_a")
            self.play(case_1_a.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("highlight_2_a")
            self.play(case_3_a.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("reset_highlight_a")
            self.play(case_1_a.animate.set_color(c1t), case_3_a.animate.set_color(c1t), run_time=.5)
            
            self.wait_until_bookmark("left_1_a")
            self.play(Write(left_limit_1[0]))

            self.wait_until_bookmark("left_1_b")
            self.play(Write(left_limit_1[1]))

            self.wait_until_bookmark("left_2")
            self.play(TransformMatchingTex(left_limit_1, left_limit_2))

            self.wait_until_bookmark("left_3")
            self.play(TransformMatchingTex(left_limit_2, left_limit_3))

            self.wait_until_bookmark("right_1_a")
            self.play(Write(right_limit_1[0]))

            self.wait_until_bookmark("right_1_b")
            self.play(Write(right_limit_1[1]))

            self.wait_until_bookmark("right_2")
            self.play(TransformMatchingTex(right_limit_1, right_limit_2))

            self.wait_until_bookmark("sol_in")
            self.play(Write(sol))
            
        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_continuous_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        trig_functions = self.translate("General.steadiness")
        title = self.add_title(trig_functions)
        self.add(title)

        # Define the function text using MathTex
        for_string = self.translate("words.for")
        func_string = fr"f(x)=\begin{{cases}}2x^2 -2& \text{{{for_string} }} x < 2, \\a & \text{{{for_string} }} x = 2, \\2x+b & \text{{{for_string} }} x > 2\end{{cases}}"
        function = MathTex(func_string, font_size=fs3, color=c1t).set_y(1.4)
        left_limit_1 = MathTex(r"\underset{x\nearrow2}{\lim}f(x) = ", r"\underset{x\nearrow2}{\lim} (2x^2-2)", color=c1t, font_size=fs3)
        left_limit_2 = MathTex(r"\underset{x\nearrow2}{\lim}f(x) = ", r"2\cdot 2^2-2", color=c1t, font_size=fs3)
        left_limit_3 = MathTex(r"\underset{x\nearrow2}{\lim} f(x) =", r" 6", color=c1t, font_size=fs3)
        left_limit = VGroup(left_limit_1, left_limit_2, left_limit_3).arrange(ORIGIN, aligned_edge=LEFT)
        right_limit_1 = MathTex(r"\underset{x\searrow2}{\lim} f(x) = ", r"\underset{x\searrow2}{\lim} \left( 2x+b)", color=c1t, font_size=fs3)
        right_limit_2 = MathTex(r"\underset{x\searrow2}{\lim} f(x) = ", r" 4+b", color=c1t, font_size=fs3)
        right_limit = VGroup(right_limit_1, right_limit_2).arrange(ORIGIN, aligned_edge=LEFT)
        sol = MathTex(r"\Rightarrow a=6, \, b=2", color=GREEN, font_size=fs3)
        limits = VGroup(left_limit, right_limit, sol).arrange(DOWN, buff=.2).set_y(-.5)

        for_offset = int(self.translate("General.for_offset"))
        case_0 = VGroup(*[function[0][idx] for idx in range(10)])
        case_1_a, case_1_b = VGroup(*[function[0][idx] for idx in range(10,15)]), VGroup(*[function[0][idx] for idx in range(15,21+for_offset)])
        case_2_a, case_2_b = VGroup(*[function[0][idx] for idx in range(21+for_offset,23+for_offset)]), VGroup(*[function[0][idx] for idx in range(23+for_offset,29+2*for_offset)])
        case_3_a, case_3_b = VGroup(*[function[0][idx] for idx in range(29+2*for_offset,34+2*for_offset)]), VGroup(*[function[0][idx] for idx in range(34+2*for_offset,40+3*for_offset)])
        

        self.add(function)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.practice_continuous.2a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("highlight_1_a")
            self.play(case_1_a.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("highlight_2_a")
            self.play(case_3_a.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("reset_highlight_a")
            self.play(case_1_a.animate.set_color(c1t), case_3_a.animate.set_color(c1t), run_time=.5)
            
            self.wait_until_bookmark("left_1_a")
            self.play(Write(left_limit_1[0]))

            self.wait_until_bookmark("left_1_b")
            self.play(Write(left_limit_1[1]))

            self.wait_until_bookmark("left_2")
            self.play(TransformMatchingTex(left_limit_1, left_limit_2))

            self.wait_until_bookmark("left_3")
            self.play(TransformMatchingTex(left_limit_2, left_limit_3))

            self.wait_until_bookmark("right_1_a")
            self.play(Write(right_limit_1[0]))

            self.wait_until_bookmark("right_1_b")
            self.play(Write(right_limit_1[1]))

            self.wait_until_bookmark("right_2")
            self.play(TransformMatchingTex(right_limit_1, right_limit_2))

            self.wait_until_bookmark("sol_in")
            self.play(Write(sol))
            
        # Wait for 4 seconds at the end of the animation
        self.wait(6)

##################################### Continuity
#####################################
class Calc_practice_continuous_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a=4$, $b=5$", "$a=0$, $b=0$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Calc_1.practice_continuous.3q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$a=\key{a}$, $b=\key{b}$",
                answerOptionsTypes={
                    "a": "number",
                    "b": "number"
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        trig_functions = self.translate("General.continuity")
        title = self.add_title(trig_functions)
        self.add(title)

        # Define the function text using MathTex
        for_string = self.translate("words.for")
        func_string = fr"f(x)=\begin{{cases}}b - e^{{x}}& \text{{{for_string} }} x < 0, \\a & \text{{{for_string} }} x = 0, \\4\frac{{e^x-1}}{{\sin(x)}} & \text{{{for_string} }} x > 0\end{{cases}}"
        function = MathTex(func_string, font_size=fs3, color=c1t).set_y(1.4)
        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,-1,0]).scale(.4)

        for_offset = int(self.translate("General.for_offset"))
        case_0 = VGroup(*[function[0][idx] for idx in range(10)])
        case_1_a, case_1_b = VGroup(*[function[0][idx] for idx in range(10,14)]), VGroup(*[function[0][idx] for idx in range(14,21+for_offset)])
        case_2_a, case_2_b = VGroup(*[function[0][idx] for idx in range(21+for_offset,22+for_offset)]), VGroup(*[function[0][idx] for idx in range(22+for_offset, 29+2*for_offset)])
        case_3_a, case_3_b = VGroup(*[function[0][idx] for idx in range(29+2*for_offset,41+2*for_offset)]), VGroup(*[function[0][idx] for idx in range(40+2*for_offset,46+3*for_offset)])
        
        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_continuous.3q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(case_0), run_time=1)

            self.wait_until_bookmark("case_1_a")
            self.play(Write(case_1_a), run_time=.5)

            self.wait_until_bookmark("case_1_b")
            self.play(Write(case_1_b), run_time=.5)

            self.wait_until_bookmark("case_2_ab")
            self.play(Write(case_2_a), Write(case_2_b), run_time=.5)

            self.wait_until_bookmark("case_3_a")
            self.play(Write(case_3_a), run_time=.5)

            self.wait_until_bookmark("case_3_b")
            self.play(Write(case_3_b), run_time=.5)

            self.wait_until_bookmark("qmark")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)
            self.wait(1)
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_continuous_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        trig_functions = self.translate("General.steadiness")
        title = self.add_title(trig_functions)
        self.add(title)

        # Define the function text using MathTex
        for_string = self.translate("words.for")
        func_string = fr"f(x)=\begin{{cases}}b - e^{{x}}& \text{{{for_string} }} x < 0, \\a & \text{{{for_string} }} x = 0, \\4\frac{{e^x-1}}{{\sin(x)}} & \text{{{for_string} }} x > 0\end{{cases}}"
        function = MathTex(func_string, font_size=fs3, color=c1t).set_y(1.4)
        left_limit_1 = MathTex(r"\underset{x\nearrow0}{\lim}f(x) = ", r"\underset{x\nearrow0}{\lim} (b-e^x)", color=c1t, font_size=fs3)
        left_limit_2 = MathTex(r"\underset{x\nearrow0}{\lim} f(x) =",  r"b-", r"e^0", color=c1t, font_size=fs3)
        left_limit_3 = MathTex(r"\underset{x\nearrow0}{\lim} f(x) =",  r"b-", r"1", color=c1t, font_size=fs3)
        left_limit = VGroup(left_limit_1, left_limit_2, left_limit_3).arrange(ORIGIN, aligned_edge=LEFT)
        right_limit_1 = MathTex(r"\underset{x\searrow0}{\lim} f(x) = ", r"\underset{x\searrow0}{\lim} \left( 4\tfrac{e^x-1}{\sin(x)} \right)", color=c1t, font_size=fs3)
        right_limit_2 = MathTex(r"\underset{x\searrow0}{\lim} f(x) = ", r" \underset{x\searrow0}{\lim} \left( 4\tfrac{e^x}{\cos(x)} \right)", color=c1t, font_size=fs3)
        right_limit_3 = MathTex(r"\underset{x\searrow0}{\lim} f(x)= ", r"4", color=c1t, font_size=fs3)
        right_limit = VGroup(right_limit_1, right_limit_2, right_limit_3).arrange(ORIGIN, aligned_edge=LEFT)
        sol = MathTex(r"\Rightarrow a=4, \, b=5", color=GREEN, font_size=fs3)
        limits = VGroup(left_limit, right_limit, sol).arrange(DOWN, buff=.2).set_y(-.5)

        # Define the function text using MathTex
        

        for_offset = int(self.translate("General.for_offset"))
        case_0 = VGroup(*[function[0][idx] for idx in range(10)])
        case_1_a, case_1_b = VGroup(*[function[0][idx] for idx in range(10,14)]), VGroup(*[function[0][idx] for idx in range(14,21+for_offset)])
        case_2_a, case_2_b = VGroup(*[function[0][idx] for idx in range(21+for_offset,22+for_offset)]), VGroup(*[function[0][idx] for idx in range(22+for_offset, 29+2*for_offset)])
        case_3_a, case_3_b = VGroup(*[function[0][idx] for idx in range(29+2*for_offset,41+2*for_offset)]), VGroup(*[function[0][idx] for idx in range(40+2*for_offset,46+3*for_offset)])
        

        self.add(function)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_5")+self.translate("Calc_1.practice_continuous.3a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("highlight_1_a")
            self.play(case_1_a.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("highlight_2_a")
            self.play(case_3_a.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("reset_highlight_a")
            self.play(case_1_a.animate.set_color(c1t), case_3_a.animate.set_color(c1t), run_time=.5)
            
            self.wait_until_bookmark("left_1_a")
            self.play(Write(left_limit_1[0]))

            self.wait_until_bookmark("left_1_b")
            self.play(Write(left_limit_1[1]))

            self.wait_until_bookmark("left_2")
            self.play(TransformMatchingTex(left_limit_1, left_limit_2))

            self.wait_until_bookmark("left_3")
            self.play(TransformMatchingTex(left_limit_2, left_limit_3))

            self.wait_until_bookmark("right_1_a")
            self.play(Write(right_limit_1[0]))

            self.wait_until_bookmark("right_1_b")
            self.play(Write(right_limit_1[1]))

            self.wait_until_bookmark("right_2")
            self.play(TransformMatchingTex(right_limit_1, right_limit_2))

            self.wait_until_bookmark("right_3")
            self.play(TransformMatchingTex(right_limit_2, right_limit_3))

            self.wait_until_bookmark("sol_in")
            self.play(Write(sol))
            
        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_continuous_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        trig_functions = self.translate("General.steadiness")
        title = self.add_title(trig_functions)
        self.add(title)

        # Define the function text using MathTex
        for_string = self.translate("words.for")
        func_string = fr"f(x)=\begin{{cases}}b - e^{{x}}& \text{{{for_string} }} x < 0, \\a & \text{{{for_string} }} x = 0, \\4\frac{{e^x-1}}{{\sin(x)}} & \text{{{for_string} }} x > 0\end{{cases}}"
        function = MathTex(func_string, font_size=fs3, color=c1t).set_y(1.4)
        left_limit_1 = MathTex(r"\underset{x\nearrow0}{\lim}f(x) = ", r"\underset{x\nearrow0}{\lim} (b-e^x)", color=c1t, font_size=fs3)
        left_limit_2 = MathTex(r"\underset{x\nearrow0}{\lim} f(x) =",  r"b-", r"e^0", color=c1t, font_size=fs3)
        left_limit_3 = MathTex(r"\underset{x\nearrow0}{\lim} f(x) =",  r"b-", r"1", color=c1t, font_size=fs3)
        left_limit = VGroup(left_limit_1, left_limit_2, left_limit_3).arrange(ORIGIN, aligned_edge=LEFT)
        right_limit_1 = MathTex(r"\underset{x\searrow0}{\lim} f(x) = ", r"\underset{x\searrow0}{\lim} \left( 4\tfrac{e^x-1}{\sin(x)} \right)", color=c1t, font_size=fs3)
        right_limit_2 = MathTex(r"\underset{x\searrow0}{\lim} f(x) = ", r" \underset{x\searrow0}{\lim} \left( 4\tfrac{e^x}{\cos(x)} \right)", color=c1t, font_size=fs3)
        right_limit_3 = MathTex(r"\underset{x\searrow0}{\lim} f(x)= ", r"4", color=c1t, font_size=fs3)
        right_limit = VGroup(right_limit_1, right_limit_2, right_limit_3).arrange(ORIGIN, aligned_edge=LEFT)
        sol = MathTex(r"\Rightarrow a=4, \, b=5", color=GREEN, font_size=fs3)
        limits = VGroup(left_limit, right_limit, sol).arrange(DOWN, buff=.2).set_y(-.5)

        # Define the function text using MathTex
        

        for_offset = int(self.translate("General.for_offset"))
        case_0 = VGroup(*[function[0][idx] for idx in range(10)])
        case_1_a, case_1_b = VGroup(*[function[0][idx] for idx in range(10,14)]), VGroup(*[function[0][idx] for idx in range(14,21+for_offset)])
        case_2_a, case_2_b = VGroup(*[function[0][idx] for idx in range(21+for_offset,22+for_offset)]), VGroup(*[function[0][idx] for idx in range(22+for_offset, 29+2*for_offset)])
        case_3_a, case_3_b = VGroup(*[function[0][idx] for idx in range(29+2*for_offset,41+2*for_offset)]), VGroup(*[function[0][idx] for idx in range(40+2*for_offset,46+3*for_offset)])
        

        self.add(function)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_5")+self.translate("Calc_1.practice_continuous.3a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("highlight_1_a")
            self.play(case_1_a.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("highlight_2_a")
            self.play(case_3_a.animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("reset_highlight_a")
            self.play(case_1_a.animate.set_color(c1t), case_3_a.animate.set_color(c1t), run_time=.5)
            
            self.wait_until_bookmark("left_1_a")
            self.play(Write(left_limit_1[0]))

            self.wait_until_bookmark("left_1_b")
            self.play(Write(left_limit_1[1]))

            self.wait_until_bookmark("left_2")
            self.play(TransformMatchingTex(left_limit_1, left_limit_2))

            self.wait_until_bookmark("left_3")
            self.play(TransformMatchingTex(left_limit_2, left_limit_3))

            self.wait_until_bookmark("right_1_a")
            self.play(Write(right_limit_1[0]))

            self.wait_until_bookmark("right_1_b")
            self.play(Write(right_limit_1[1]))

            self.wait_until_bookmark("right_2")
            self.play(TransformMatchingTex(right_limit_1, right_limit_2))

            self.wait_until_bookmark("right_3")
            self.play(TransformMatchingTex(right_limit_2, right_limit_3))

            self.wait_until_bookmark("sol_in")
            self.play(Write(sol))
            
        # Wait for 4 seconds at the end of the animation
        self.wait(6)


##################################### MISC
##################################### #TODO
# class Calc_practice_misc_10_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         limits = self.translate("words.Limits")
#         title = self.add_title(limits)
#         self.add(title)

#         # Define the function text using MathTex
#         series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ konvergente Folge", color=c1t, font_size=fs3)
#         series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=0$", color=c1t, font_size=fs3)
#         series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
#         series_3 = Tex("", r"$b_n=$", "", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
#         series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).move_to(series_3)

#         # lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

#         # Define the voiceover text
#         voiceover_text = """
# Betrachten wir die konvergente <bookmark mark="a_1_in"/>Folge a n. Wir wissen, dass a n <bookmark mark="a_2_in"/>gegen Null konvergiert, also dass der Grenzwert der Folge gleich Null ist.
# Betrachten wir jetzt eine neue <bookmark mark="b_n_in_1"/>Folge b n, die wir als minus eins hoch n mal a n geteilt durch zwei definieren.
# Was ist <bookmark mark="b_n_in_2"/>der Grenzwert von b n für n gegen unendlich?
# """

#         # Action Sequence
#         with self.voiceover(text=voiceover_text) as tracker:
            
#             self.wait_until_bookmark("a_1_in")
#             self.play(Write(series_1), run_time=.5)

#             self.wait_until_bookmark("a_2_in")
#             self.play(Write(series_2[0]), run_time=.5)

#             self.wait_until_bookmark("b_n_in_1")
#             self.play(Write(series_3), run_time=.5)

#             self.wait_until_bookmark("b_n_in_2")
#             self.play(TransformMatchingTex(series_3, series_4))

#         # Wait for 4 seconds at the end of the animation
#         self.wait(6)

# #

##################################### MERKVIDEO: VOLLSTÄNDIGE INDUKTION
#####################################
class Calc_practice_induc_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Mathematical Induction")
        self.add(title)

        #formula = MathTex(r"\sum_{i=1}^n i ={n{n+1}\over", r"2}", color=c1t, font_size=fs2).set_y(2)
        formula = MathTex("\sum_{i=1}^n i = \\frac{n (n+1)}{2}", color=c1t, font_size=fs2).next_to(title, DOWN, buff=0.8)
        self.add(formula)

        f_1 = MathTex("\\bullet ", " \sum_{i=1}^1 i = \\frac{1 (1+1)}{2}", color=c1t, font_size=fs2)
        f_2 = MathTex("\\bullet ", " \sum_{i=1}^2 i = \\frac{2 (2+1)}{2}", color=c1t, font_size=fs2)
        f_3 = MathTex("\\bullet ", " \sum_{i=1}^3 i = \\frac{3 (3+1)}{2}", color=c1t, font_size=fs2)
        f_4 = MathTex("\\bullet ", " ...", color=c1t, font_size=fs2)
        f_cases = VGroup(f_1, f_2, f_3, f_4).arrange(DOWN, buff=.6, aligned_edge=LEFT).next_to(formula, DOWN, buff=0.3).scale(.7)

        slow = ImageMobject(assets_folder / "img" / "slow_numbers.png").shift(LEFT*5).scale(.5)

        domino = ImageMobject(assets_folder / "img" / "dominos.png").shift(LEFT*5).scale(.5)
        
        base_1 = Tex("1) Base case", color=c1t, font_size=fs2)
        base_2 = MathTex("n = 1: \\,", " \sum_{i=1}^1 i", "=", "\\frac{1(1+1)}{2}", color=c1t, font_size=fs2)
        box_base_1 = SurroundingRectangle(base_1, color=BLUE, buff=MED_SMALL_BUFF)
        box_base_2 = VGroup(box_base_1, base_1)
        base = VGroup(box_base_2, base_2).arrange(DOWN, buff=.6).next_to(formula, DOWN, buff=0.3).scale(.8)

        step_1 = Tex("2) Induction step", color=c1t, font_size=fs2)
        step_2 = MathTex("\sum_{i=1}^{k+1} i =", "\sum_{i=1}^{k} i", "+ (k+1)", color=c1t, font_size=fs2)
        box_step_1 = SurroundingRectangle(step_1, color=BLUE, buff=MED_SMALL_BUFF)
        box_step_2 = VGroup(box_step_1, step_1)
        step = VGroup(box_step_2, step_2).arrange(DOWN, buff=.6).next_to(formula, DOWN, buff=0.3).scale(.8)

        step_int = MathTex("\sum_{i=1}^{k+1} i =", "\\frac{k(k+1)}{2}", "+ (k+1)", color=c1t, font_size=fs2).move_to(step_2).scale(.8)
        step_sol = MathTex("\sum_{i=1}^{k+1} i =", "\\frac{(k+1)((k+1)+1)}{2}", color=c1t, font_size=fs2).move_to(step_int).scale(.8)
        
        # Action Sequence
        with self.voiceover(
                text=""" 
                Suppose you want to prove that for every natural number n, this formula for the sum of all numbers from 1 to n holds. 
                Now, you could prove this <bookmark mark="case"/> formula case by case. <break time="1.5s"/>
                But since <bookmark mark="slow_1"/> there are infinitely many natural numbers, this is impractical... Luckily, there is a quicker <bookmark mark="slow_2"/> method, called mathematical induction.
                This <bookmark mark="domino_1"/> method works like a falling chain of dominos.
                In order for the whole chain of dominos to fall, we need to ensure that the first domino falls and that whenever one domino falls, also the next one falls, right?
                <bookmark mark="domino_2"/>  
                So, as for <bookmark mark="base_1"/> the base case, it is easy to see that the formula holds for n equal to 1. <break time="1.5s"/>
                Next, in the induction step, we <bookmark mark="step_1"/> assume that the formula holds for n equals k and we want to use this to prove that it also holds for k plus 1.
                To this end, <bookmark mark="step_2"/> we split the sum up into the sum from 1 to k and the last term. Now, we use that the formula <bookmark mark="step_3"/> already holds for n equals k. <break time="1.5s"/>
                Summing these <bookmark mark="step_4"/> two terms gives the desired result...
                """
        ) as tracker:

            self.wait_until_bookmark("case")
            self.play(Write(f_1), run_time=0.5)
            self.play(Write(f_2), run_time=0.5)
            self.play(Write(f_3), run_time=0.5)
            self.play(Write(f_4), run_time=0.5)

            self.wait_until_bookmark("slow_1")
            self.add_shift_sound(0.5)
            self.play(slow.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("slow_2")
            self.add_shift_sound(0.5)
            self.play(slow.animate(run_time=0.5).shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("domino_1")
            self.play(Unwrite(f_cases), run_time=1)
            self.wait(1)
            self.add_shift_sound(0.5)
            self.play(domino.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("domino_2")
            self.add_shift_sound(0.5)
            self.play(domino.animate(run_time=0.5).shift(5*RIGHT), run_time=.5) 

            self.wait_until_bookmark("base_1")
            self.play(Write(box_base_2), run_time=0.5)
            self.play(Write(base_2[0]), run_time=0.5)
            self.wait(.5)
            self.play(Write(base_2[1]), run_time=0.5)
            self.wait(.5)
            self.play(Write(base_2[3]), run_time=0.5)
            self.wait(.5)
            self.play(Write(base_2[2]), run_time=0.5)

            self.wait_until_bookmark("step_1")
            self.play(Unwrite(base), run_time=0.5)
            self.play(Write(box_step_2), run_time=0.5)  
            self.wait(0.5)
            self.play(Write(step_2[0]), run_time=0.5)

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2[1]), run_time=0.5)
            self.play(Write(step_2[2]), run_time=0.5)

            self.wait_until_bookmark("step_3")
            self.play(TransformMatchingTex(step_2, step_int), run_time=3)
            
            self.wait_until_bookmark("step_4")
            self.play(TransformMatchingTex(step_int, step_sol), run_time=3)


        # Wait for 4 seconds at the end of the animation
        self.wait(6)


class Calc_explain_convergence_limit(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("General.limit"))
        self.add(title)

        rec = Rectangle(height=2.2, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[0, 15, 2], y_range=[-4, 4, .5], x_length=3, y_length=1.8, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)
        coord_sys_1 = VGroup(rec, bl, cords)
        coord_sys_2 = coord_sys_1.copy().next_to(coord_sys_1, DOWN, buff=.4)
        coord_sys_2[0].set_color("#ffde91")
        cords_2 = coord_sys_2[2]


        seq_1_1, line_1_1 = VGroup(*[Dot(cords.c2p(n, 6*np.sin(n)/(n**0.9+0.01)), color=ORANGE, radius=.05) for n in range(1,15)]), cords.plot(lambda n: 6*np.sin(n)/(n**0.9+0.01), color=ORANGE, stroke_width=1)
        seq_1_2, line_1_2 = VGroup(*[Dot(cords.c2p(n, -3/(n+0.01)), color="#1300bd", radius=.05) for n in range(1,15)]), cords.plot(lambda n: -3/(n+0.01), x_range=[3/4,15,0.0001], color="#1300bd", stroke_width=1)

        seq_2_1, line_2_1 = VGroup(*[Dot(cords_2.c2p(n, 4*np.sin(n)), color=PURPLE, radius=.05) for n in range(15)]), cords_2.plot(lambda n: 4*np.sin(n), color=PURPLE, stroke_width=1)
        f_help = lambda x: 1.5 - 0.2*x
        seq_2_2, line_2_2 = VGroup(*[Dot(cords_2.c2p(n, f_help(n)), color=PINK, radius=.05) for n in range(15)]), cords_2.plot(f_help, color=PINK, stroke_width=1)

        epsilon = ValueTracker(3)
        lines_1 = VGroup(Line(cords.c2p(0,0), cords.c2p(0,0), color=GREY, stroke_width=1).add_updater(lambda m: m.put_start_and_end_on(cords.c2p(0,epsilon.get_value()), cords.c2p(15,epsilon.get_value()))), Line(cords.c2p(0,0), cords.c2p(0,0), color=GREY, stroke_width=1).add_updater(lambda m: m.put_start_and_end_on(cords.c2p(0,-epsilon.get_value()), cords.c2p(15,-epsilon.get_value()))))
        eps = VGroup(MathTex(r"\varepsilon", color=c1t, font_size=fs2).add_updater(lambda m: m.move_to(cords.c2p(17, epsilon.get_value()/2))), MathTex(r"\varepsilon", color=c1t, font_size=fs2).add_updater(lambda m: m.move_to(cords.c2p(17, -epsilon.get_value()/2))))
        n_tracker = ValueTracker(1)
        line_vert = Line(cords.c2p(0,0), cords.c2p(0,0), color=c1t, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(cords.c2p(n_tracker.get_value(),-4), cords.c2p(n_tracker.get_value(),4)))
        n_tex = MathTex(r"N", color=c1t, font_size=fs2).add_updater(lambda m: m.move_to(cords.c2p(n_tracker.get_value(), -4.8)))

        epsilon_2 = ValueTracker(3)
        lines_2 = VGroup(Line(cords_2.c2p(0,0), cords_2.c2p(0,0), color=GREY, stroke_width=1).add_updater(lambda m: m.put_start_and_end_on(cords_2.c2p(0,epsilon_2.get_value()), cords_2.c2p(15,epsilon_2.get_value()))), Line(cords_2.c2p(0,0), cords_2.c2p(0,0), color=GREY, stroke_width=1).add_updater(lambda m: m.put_start_and_end_on(cords_2.c2p(0,-epsilon_2.get_value()), cords_2.c2p(15,-epsilon_2.get_value()))))
        
        formula = VGroup(MathTex(r"\forall \varepsilon >0\,", r"\exists N\in \mathbb {N}\,", r"\forall n\in \mathbb {N}:", color=c1t, font_size=fs2), MathTex(r"n\geq N", r"\implies", r" |x_{n}-x|<\varepsilon", color=c1t, font_size=fs2).scale(.85)).arrange(DOWN, buff=.4).next_to(coord_sys_1, DOWN, buff=.4)
        description = VGroup(Tex(r"The sequence $\left(a_n\right)_{n\in\mathbb N}$ converges", color=BLUE, font_size=fs3), Tex(r"$a$ is the limit of $\left(a_n\right)_{n\in\mathbb N}$", color=BLUE, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(formula, DOWN, buff=.5)

        g = VGroup()
        for d in seq_1_1:
            if cords.p2c(d.get_center())[0]>n_tracker.get_value():
                g.add(d)
        for d in seq_1_2:
            if cords.p2c(d.get_center())[0]>n_tracker.get_value():
                g.add(d)


        # Action Sequence
        with self.voiceover(
                text=""" 
So <bookmark mark="seq_1_in"/>... this  ... is a sequence. And <bookmark mark="seq_2_in"/>this ... is also a sequence. <bookmark mark="yellow_in"/> And so are...<bookmark mark="seq_34_in"/>these two. ...
But there is one crucial difference between the sequences in the blue and the yellow box: The <bookmark mark="move_blue"/> sequences in the blue box seem to keep getting closer and closer to the value zero: As you can see, if we create a corridor arround it and make it smaller, the values with a higher index are all inside the corridor.
The sequences in the yellow box on the other hand don't seem to approach a specific value. If <bookmark mark="move_yellow"/>we create a corridor and make it smaller, some elements will be in it, and others won't.
If,<bookmark mark="yellow_out"/> like in the blue box, a sequence gets closer and closer to a value, we say that<bookmark mark="description_1_in"/> the sequence converges. And we call <bookmark mark="description_2_in"/>the value a that it approaches the limit of the sequence. But how do we formalize that concept?
A sequence converges against a, <bookmark mark="epsilon"/> if for any epsilon greater than zero, we can find a <bookmark mark="n"/>natural number n, such that <bookmark mark="greater_than_n"/>for all integers n greater than that chosen N, their <bookmark mark="small_distance"/>distance to a is smaller than epsilon.
Or, put in other words: No matter how small of a distance to a we chose, there exists an index, such that all elements that come after it will be within that distance.
                """
        ) as tracker:

            self.play(Write(coord_sys_1), run_time=.5)

            self.wait_until_bookmark("seq_1_in")
            self.play(Write(seq_1_1), run_time=1)
            self.play(Write(line_1_1), run_time=.5)

            self.wait_until_bookmark("seq_2_in")
            self.play(Write(seq_1_2), run_time=1)
            self.play(Write(line_1_2), run_time=.5)

            self.wait_until_bookmark("yellow_in")
            self.play(Write(coord_sys_2), run_time=1)

            self.wait_until_bookmark("seq_34_in")
            self.play(Write(seq_2_1), Write(seq_2_2), run_time=1)
            self.play(Write(line_2_1), Write(line_2_2), run_time=.5)

            self.wait_until_bookmark("move_blue")
            self.play(Write(lines_1), run_time=1)
            [d.add_updater(lambda m: m.set_color(RED) if np.abs(cords.p2c(m.get_center())[1])>epsilon.get_value() else m.set_color(GREEN)) for d in seq_1_1]
            [d.add_updater(lambda m: m.set_color(RED) if np.abs(cords.p2c(m.get_center())[1])>epsilon.get_value() else m.set_color(GREEN)) for d in seq_1_2]
            self.play(epsilon.animate.set_value(.6), run_time=6)

            self.wait_until_bookmark("move_yellow")
            self.play(Write(lines_2))
            [d.add_updater(lambda m: m.set_color(RED) if np.abs(cords_2.p2c(m.get_center())[1])>epsilon_2.get_value() else m.set_color(GREEN)) for d in seq_2_1]
            [d.add_updater(lambda m: m.set_color(RED) if np.abs(cords_2.p2c(m.get_center())[1])>epsilon_2.get_value() else m.set_color(GREEN)) for d in seq_2_2]
            self.play(epsilon_2.animate.set_value(.6), run_time=6)

            self.wait_until_bookmark("yellow_out")
            self.play(Unwrite(coord_sys_2), Unwrite(lines_2), Unwrite(seq_2_1), Unwrite(seq_2_2), Unwrite(line_2_1), Unwrite(line_2_2), run_time=1)
            
            self.wait_until_bookmark("description_1_in")
            [d.clear_updaters().set_color(ORANGE) for d in seq_1_1], [d.clear_updaters().set_color("#1300bd") for d in seq_1_2]
            self.play(Write(description[0]), run_time=.8)

            self.wait_until_bookmark("description_2_in")
            self.play(Write(description[1]), run_time=.8)

            self.wait_until_bookmark("epsilon")
            epsilon.set_value(4)
            self.play(Write(formula[0][0]), Write(eps))
            self.play(epsilon.animate.set_value(.8))

            self.wait_until_bookmark("n")
            self.play(Write(formula[0][1]), Write(formula[0][2]), Write(line_vert))
            self.play(n_tracker.animate.set_value(10), epsilon.animate.set_value(0.8), run_time=3)

            self.wait_until_bookmark("greater_than_n")
            [d.add_updater(lambda m: m.set_color(PURE_BLUE) if cords.p2c(m.get_center())[0]>n_tracker.get_value() else None) for d in seq_1_1]
            [d.add_updater(lambda m: m.set_color(PURE_BLUE) if cords.p2c(m.get_center())[0]>n_tracker.get_value() else None) for d in seq_1_2]
            self.play(Write(formula[0][2]), Write(formula[1][0]), run_time=1)

            self.wait_until_bookmark("small_distance")
            self.play(Write(formula[1][1]), Write(formula[1][2]), g.animate.set_color(GREEN))


        # Wait for 4 seconds at the end of the animation
        self.wait(6)


class Intro_ana_tub(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

class Intro_ana_tum(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

class Intro_ana_fub(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

class Intro_ana_fuh(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

PROTOTYPES=[
########################################################### STUFF for Prototypes
    PagePrototypeVideo.from_scene(Intro_ana_tub),
    PagePrototypeVideo.from_scene(Intro_ana_fub),
    PagePrototypeVideo.from_scene(Intro_ana_fuh),
    PagePrototypeVideo.from_scene(Intro_ana_tum),
########################################################### MC
    PagePrototypeVideo.from_scene(Calc_practice_MC_1_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_1_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_1_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_1_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_1_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_1_d),
    PagePrototypeVideo.from_scene(Calc_practice_MC_2_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_2_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_2_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_2_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_2_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_2_d),
    PagePrototypeVideo.from_scene(Calc_practice_MC_3_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_3_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_3_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_3_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_3_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_3_d),
    PagePrototypeVideo.from_scene(Calc_practice_MC_4_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_4_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_4_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_4_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_4_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_4_d),
    PagePrototypeVideo.from_scene(Calc_practice_MC_5_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_5_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_5_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_5_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_5_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_5_d),
    PagePrototypeVideo.from_scene(Calc_practice_MC_6_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_6_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_6_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_6_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_6_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_6_d),
    PagePrototypeVideo.from_scene(Calc_practice_MC_7_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_7_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_7_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_7_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_7_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_7_d),
    PagePrototypeVideo.from_scene(Calc_practice_MC_8_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_8_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_8_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_8_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_8_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_8_d),
    PagePrototypeVideo.from_scene(Calc_practice_MC_9_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_9_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_9_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_9_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_9_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_9_d),
    PagePrototypeVideo.from_scene(Calc_practice_MC_10_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_10_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_10_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_10_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_10_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_10_d),
    PagePrototypeVideo.from_scene(Calc_practice_MC_11_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_11_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_11_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_11_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_11_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_11_d),
    PagePrototypeVideo.from_scene(Calc_practice_MC_12_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_12_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_12_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_12_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_12_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_12_d),
    PagePrototypeVideo.from_scene(Calc_practice_MC_14_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_14_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_14_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_14_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_14_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_14_d),
    PagePrototypeVideo.from_scene(Calc_practice_MC_15_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_15_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_15_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_15_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_15_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_15_d),
    PagePrototypeVideo.from_scene(Calc_practice_MC_16_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_16_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_16_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_16_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_16_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_16_d),
    PagePrototypeVideo.from_scene(Calc_practice_MC_17_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_17_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_17_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_17_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_17_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_17_d),
    PagePrototypeVideo.from_scene(Calc_practice_MC_18_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_18_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_18_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_18_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_18_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_18_d),
    PagePrototypeVideo.from_scene(Calc_practice_MC_19_q),
    PagePrototypeQuestion.from_scene(Calc_practice_MC_19_q),
    PagePrototypeVideo.from_scene(Calc_practice_MC_19_a),
    PagePrototypeVideo.from_scene(Calc_practice_MC_19_b),
    PagePrototypeVideo.from_scene(Calc_practice_MC_19_c),
    PagePrototypeVideo.from_scene(Calc_practice_MC_19_d),
########################################################### Limits
    PagePrototypeVideo.from_scene(Calc_practice_limits_1_q),
    PagePrototypeQuestion.from_scene(Calc_practice_limits_1_q),
    PagePrototypeVideo.from_scene(Calc_practice_limits_1_a),
    PagePrototypeVideo.from_scene(Calc_practice_limits_1_b),
    PagePrototypeVideo.from_scene(Calc_practice_limits_2_q),
    PagePrototypeQuestion.from_scene(Calc_practice_limits_2_q),
    PagePrototypeVideo.from_scene(Calc_practice_limits_2_a),
    PagePrototypeVideo.from_scene(Calc_practice_limits_2_b),
    PagePrototypeVideo.from_scene(Calc_practice_limits_3_q),
    PagePrototypeQuestion.from_scene(Calc_practice_limits_3_q),
    PagePrototypeVideo.from_scene(Calc_practice_limits_3_a),
    PagePrototypeVideo.from_scene(Calc_practice_limits_3_b),
    PagePrototypeVideo.from_scene(Calc_practice_limits_4_q),
    PagePrototypeQuestion.from_scene(Calc_practice_limits_4_q),
    PagePrototypeVideo.from_scene(Calc_practice_limits_4_a),
    PagePrototypeVideo.from_scene(Calc_practice_limits_4_b),
    PagePrototypeVideo.from_scene(Calc_practice_limits_5_q),
    PagePrototypeQuestion.from_scene(Calc_practice_limits_5_q),
    PagePrototypeVideo.from_scene(Calc_practice_limits_5_a),
    PagePrototypeVideo.from_scene(Calc_practice_limits_5_b),
    PagePrototypeVideo.from_scene(Calc_practice_limits_6_q),
    PagePrototypeQuestion.from_scene(Calc_practice_limits_6_q),
    PagePrototypeVideo.from_scene(Calc_practice_limits_6_a),
    PagePrototypeVideo.from_scene(Calc_practice_limits_6_b),
    PagePrototypeVideo.from_scene(Calc_practice_limits_7_q),
    PagePrototypeQuestion.from_scene(Calc_practice_limits_7_q),
    PagePrototypeVideo.from_scene(Calc_practice_limits_7_a),
    PagePrototypeVideo.from_scene(Calc_practice_limits_7_b),
    PagePrototypeVideo.from_scene(Calc_practice_limits_8_q),
    PagePrototypeQuestion.from_scene(Calc_practice_limits_8_q),
    PagePrototypeVideo.from_scene(Calc_practice_limits_8_a),
    PagePrototypeVideo.from_scene(Calc_practice_limits_8_b),
    PagePrototypeVideo.from_scene(Calc_practice_limits_9_q),
    PagePrototypeQuestion.from_scene(Calc_practice_limits_9_q),
    PagePrototypeVideo.from_scene(Calc_practice_limits_9_a),
    PagePrototypeVideo.from_scene(Calc_practice_limits_9_b),
    PagePrototypeVideo.from_scene(Calc_practice_limits_10_q),
    PagePrototypeQuestion.from_scene(Calc_practice_limits_10_q),
    PagePrototypeVideo.from_scene(Calc_practice_limits_10_a),
    PagePrototypeVideo.from_scene(Calc_practice_limits_10_b),
########################################################### Derivatives
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_1_q),
    PagePrototypeQuestion.from_scene(Calc_practice_derivatives_1_q),
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_1_a),
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_1_b),
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_2_q),
    PagePrototypeQuestion.from_scene(Calc_practice_derivatives_2_q),
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_2_a),
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_2_b),
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_3_q),
    PagePrototypeQuestion.from_scene(Calc_practice_derivatives_3_q),
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_3_a),
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_3_b),
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_4_q),
    PagePrototypeQuestion.from_scene(Calc_practice_derivatives_4_q),
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_4_a),
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_4_b),
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_5_q),
    PagePrototypeQuestion.from_scene(Calc_practice_derivatives_5_q),
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_5_a),
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_5_b),
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_6_q),
    PagePrototypeQuestion.from_scene(Calc_practice_derivatives_6_q),
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_6_a),
    PagePrototypeVideo.from_scene(Calc_practice_derivatives_6_b),
    ########################################################### Derivatives
    PagePrototypeVideo.from_scene(Calc_practice_mvt_1_q),
    PagePrototypeQuestion.from_scene(Calc_practice_mvt_1_q),
    PagePrototypeVideo.from_scene(Calc_practice_mvt_1_a),
    PagePrototypeVideo.from_scene(Calc_practice_mvt_1_b),
    PagePrototypeVideo.from_scene(Calc_practice_mvt_1_c),
    PagePrototypeVideo.from_scene(Calc_practice_mvt_1_d),
    PagePrototypeVideo.from_scene(Calc_practice_mvt_2_q),
    PagePrototypeQuestion.from_scene(Calc_practice_mvt_2_q),
    PagePrototypeVideo.from_scene(Calc_practice_mvt_2_a),
    PagePrototypeVideo.from_scene(Calc_practice_mvt_2_b),
    PagePrototypeVideo.from_scene(Calc_practice_mvt_2_c),
    PagePrototypeVideo.from_scene(Calc_practice_mvt_2_d),
    PagePrototypeVideo.from_scene(Calc_practice_mvt_3_q),
    PagePrototypeQuestion.from_scene(Calc_practice_mvt_3_q),
    PagePrototypeVideo.from_scene(Calc_practice_mvt_3_a),
    PagePrototypeVideo.from_scene(Calc_practice_mvt_3_b),
########################################################### MinMax
    PagePrototypeVideo.from_scene(Calc_practice_minmax_1_q),
    PagePrototypeQuestion.from_scene(Calc_practice_minmax_1_q),
    PagePrototypeVideo.from_scene(Calc_practice_minmax_1_a),
    PagePrototypeVideo.from_scene(Calc_practice_minmax_1_b),
    PagePrototypeVideo.from_scene(Calc_practice_minmax_2_q),
    PagePrototypeQuestion.from_scene(Calc_practice_minmax_2_q),
    PagePrototypeVideo.from_scene(Calc_practice_minmax_2_a),
    PagePrototypeVideo.from_scene(Calc_practice_minmax_2_b),
    PagePrototypeVideo.from_scene(Calc_practice_minmax_2_c),
    PagePrototypeVideo.from_scene(Calc_practice_minmax_3_q),
    PagePrototypeQuestion.from_scene(Calc_practice_minmax_3_q),
    PagePrototypeVideo.from_scene(Calc_practice_minmax_3_a),
    PagePrototypeVideo.from_scene(Calc_practice_minmax_3_b),
    PagePrototypeVideo.from_scene(Calc_practice_minmax_4_q),
    PagePrototypeQuestion.from_scene(Calc_practice_minmax_4_q),
    PagePrototypeVideo.from_scene(Calc_practice_minmax_4_a),
    PagePrototypeVideo.from_scene(Calc_practice_minmax_4_b),
    PagePrototypeVideo.from_scene(Calc_practice_minmax_5_q),
    PagePrototypeQuestion.from_scene(Calc_practice_minmax_5_q),
    PagePrototypeVideo.from_scene(Calc_practice_minmax_5_a),
    PagePrototypeVideo.from_scene(Calc_practice_minmax_5_b),
    PagePrototypeVideo.from_scene(Calc_practice_minmax_5_c),
    PagePrototypeVideo.from_scene(Calc_practice_minmax_5_d),
    ########################################################### Integrals
    PagePrototypeVideo.from_scene(Calc_practice_integrals_1_q),
    PagePrototypeQuestion.from_scene(Calc_practice_integrals_1_q),
    PagePrototypeVideo.from_scene(Calc_practice_integrals_1_a),
    PagePrototypeVideo.from_scene(Calc_practice_integrals_1_b),
    PagePrototypeVideo.from_scene(Calc_practice_integrals_2_q),
    PagePrototypeQuestion.from_scene(Calc_practice_integrals_2_q),
    PagePrototypeVideo.from_scene(Calc_practice_integrals_2_a),
    PagePrototypeVideo.from_scene(Calc_practice_integrals_2_b),
    PagePrototypeVideo.from_scene(Calc_practice_integrals_3_q),
    PagePrototypeQuestion.from_scene(Calc_practice_integrals_3_q),
    PagePrototypeVideo.from_scene(Calc_practice_integrals_3_a),
    PagePrototypeVideo.from_scene(Calc_practice_integrals_3_b),
    PagePrototypeVideo.from_scene(Calc_practice_integrals_4_q),
    PagePrototypeQuestion.from_scene(Calc_practice_integrals_4_q),
    PagePrototypeVideo.from_scene(Calc_practice_integrals_4_a),
    PagePrototypeVideo.from_scene(Calc_practice_integrals_4_b),
    PagePrototypeVideo.from_scene(Calc_practice_integrals_5_q),
    PagePrototypeQuestion.from_scene(Calc_practice_integrals_5_q),
    PagePrototypeVideo.from_scene(Calc_practice_integrals_5_a),
    PagePrototypeVideo.from_scene(Calc_practice_integrals_5_b),
########################################################### Partial fraction decomposition
    PagePrototypeVideo.from_scene(Calc_practice_pfd_1_q),
    PagePrototypeQuestion.from_scene(Calc_practice_pfd_1_q),
    PagePrototypeVideo.from_scene(Calc_practice_pfd_1_a),
    PagePrototypeVideo.from_scene(Calc_practice_pfd_1_b),
########################################################### Induction
    PagePrototypeVideo.from_scene(Calc_practice_induction_1_q),
    PagePrototypeQuestion.from_scene(Calc_practice_induction_1_q),
    PagePrototypeVideo.from_scene(Calc_practice_induction_1_a),
    PagePrototypeVideo.from_scene(Calc_practice_induction_1_b),
    PagePrototypeVideo.from_scene(Calc_practice_induction_1_c),
    PagePrototypeVideo.from_scene(Calc_practice_induction_1_d),
    PagePrototypeVideo.from_scene(Calc_practice_induction_2_q),
    PagePrototypeQuestion.from_scene(Calc_practice_induction_2_q),
    PagePrototypeVideo.from_scene(Calc_practice_induction_2_a),
    PagePrototypeVideo.from_scene(Calc_practice_induction_2_b),
    PagePrototypeVideo.from_scene(Calc_practice_induction_2_c),
    PagePrototypeVideo.from_scene(Calc_practice_induction_2_d),
    PagePrototypeVideo.from_scene(Calc_practice_induction_3_q),
    PagePrototypeQuestion.from_scene(Calc_practice_induction_3_q),
    PagePrototypeVideo.from_scene(Calc_practice_induction_3_a),
    PagePrototypeVideo.from_scene(Calc_practice_induction_3_b),
    PagePrototypeVideo.from_scene(Calc_practice_induction_3_c),
    PagePrototypeVideo.from_scene(Calc_practice_induction_3_d),
    PagePrototypeVideo.from_scene(Calc_practice_induction_4_q),
    PagePrototypeQuestion.from_scene(Calc_practice_induction_4_q),
    PagePrototypeVideo.from_scene(Calc_practice_induction_4_a),
    PagePrototypeVideo.from_scene(Calc_practice_induction_4_b),
    PagePrototypeVideo.from_scene(Calc_practice_induction_4_c),
    PagePrototypeVideo.from_scene(Calc_practice_induction_4_d),
    PagePrototypeVideo.from_scene(Calc_practice_induction_5_q),
    PagePrototypeQuestion.from_scene(Calc_practice_induction_5_q),
    PagePrototypeVideo.from_scene(Calc_practice_induction_5_a),
    PagePrototypeVideo.from_scene(Calc_practice_induction_5_b),
    PagePrototypeVideo.from_scene(Calc_practice_induction_5_c),
    PagePrototypeVideo.from_scene(Calc_practice_induction_5_d),
########################################################### Intermediate Value Theorem
    PagePrototypeVideo.from_scene(Calc_practice_ivt_1_q),
    PagePrototypeQuestion.from_scene(Calc_practice_ivt_1_q),
    PagePrototypeVideo.from_scene(Calc_practice_ivt_1_a),
    PagePrototypeVideo.from_scene(Calc_practice_ivt_1_b),
    PagePrototypeVideo.from_scene(Calc_practice_ivt_1_c),
    PagePrototypeVideo.from_scene(Calc_practice_ivt_1_d),
    PagePrototypeVideo.from_scene(Calc_practice_ivt_1_e),
########################################################### Complex Numbers
    PagePrototypeVideo.from_scene(Calc_practice_complex_1_q),
    PagePrototypeQuestion.from_scene(Calc_practice_complex_1_q),
    PagePrototypeVideo.from_scene(Calc_practice_complex_1_a),
    PagePrototypeVideo.from_scene(Calc_practice_complex_1_b),
########################################################### Trig
    PagePrototypeVideo.from_scene(Calc_practice_trig_1_q),
    PagePrototypeQuestion.from_scene(Calc_practice_trig_1_q),
    PagePrototypeVideo.from_scene(Calc_practice_trig_1_a),
    PagePrototypeVideo.from_scene(Calc_practice_trig_1_b),
########################################################### Continuous
    PagePrototypeVideo.from_scene(Calc_practice_continuous_1_q),
    PagePrototypeQuestion.from_scene(Calc_practice_continuous_1_q),
    PagePrototypeVideo.from_scene(Calc_practice_continuous_1_a),
    PagePrototypeVideo.from_scene(Calc_practice_continuous_1_b),
    PagePrototypeVideo.from_scene(Calc_practice_continuous_2_q),
    PagePrototypeQuestion.from_scene(Calc_practice_continuous_2_q),
    PagePrototypeVideo.from_scene(Calc_practice_continuous_2_a),
    PagePrototypeVideo.from_scene(Calc_practice_continuous_2_b),
    PagePrototypeVideo.from_scene(Calc_practice_continuous_3_q),
    PagePrototypeQuestion.from_scene(Calc_practice_continuous_3_q),
    PagePrototypeVideo.from_scene(Calc_practice_continuous_3_a),
    PagePrototypeVideo.from_scene(Calc_practice_continuous_3_b),
]






class test(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        f = MathTex(r"\frac{d}{dx}", r"\left(", r"x^2", r"-3x", r"\right)", r"^5", color=c1t)
        g = MathTex(r"5", r"\left(", r"x^2", r"-3x", r"\right)", r"^4", r"(", r"2x", r"-3", r")", color=c1t)

        
        # Action Sequence
        with self.voiceover(
                text="""Hallo Hallo das ist ein Test. <bookmark mark="x"/>
                """
        ) as tracker:

            self.wait_until_bookmark("x")
            self.play(TransformMatchingTex(f,g), run_time=3)