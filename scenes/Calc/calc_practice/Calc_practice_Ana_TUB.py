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

            self.wait_until_bookmark("intervall_f_range")
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

            self.wait_until_bookmark("intervall_f_range")
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

            self.wait_until_bookmark("intervall_f_range")
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

            self.wait_until_bookmark("intervall_f_range")
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
# MC, Mean Value Theorem
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

        answer_a = Tex("a) $f$ auf $[0,1]$ differenzierbar", color=BLUE, font_size=fs3)
        answer_b = Tex("b) Keine weitere Bedingung nötig", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ ist auf $[0,1]$ integrierbar", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f$ hat in $]0,1[$ lokales Extremum", color=BLUE, font_size=fs3)
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

        answer_a = Tex("a) $f$ auf $[0,1]$ differenzierbar", color=BLUE, font_size=fs3)
        answer_b = Tex("b) Keine weitere Bedingung nötig", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ ist auf $[0,1]$ integrierbar", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f$ hat in $]0,1[$ lokales Extremum", color=BLUE, font_size=fs3)
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

        answer_a = Tex("a) $f$ auf $[0,1]$ differenzierbar", color=BLUE, font_size=fs3)
        answer_b = Tex("b) Keine weitere Bedingung nötig", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ ist auf $[0,1]$ integrierbar", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f$ hat in $]0,1[$ lokales Extremum", color=BLUE, font_size=fs3)
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

        answer_a = Tex("a) $f$ auf $[0,1]$ differenzierbar", color=BLUE, font_size=fs3)
        answer_b = Tex("b) Keine weitere Bedingung nötig", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ ist auf $[0,1]$ integrierbar", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f$ hat in $]0,1[$ lokales Extremum", color=BLUE, font_size=fs3)
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
# MC
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
# MC,
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

class Calc_practice_MC_8_a(SophiaCursorScene):

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
#
        
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
        f_definition = MathTex("f: \\{1,2,3\\} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=(x-1)^2", color=c1t, font_size=fs2)
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
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

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
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

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
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

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
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

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

        # Define the function text using MathTex
        f = Tex(self.translate("Calc_1.Practice_MC.19q.f"), color=c1t, font_size=fs2).set_y(2)

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


class Calc_practice_MC_19_a(SophiaCursorScene):

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
        voiceover_text = """
Jetzt <bookmark mark="giraffe_in"/>suchen wir den <bookmark mark="limit_in"/>Grenzwert für n gegen unendlich des <bookmark mark="term_in"/>Terms n mal Sinus von n plus Sinus von n, geteilt durch n plus eins im Quadrat zwei.
Was kommt da raus??
"""

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
            answerOptions = ["$\pi^2$", "$1$"],
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
            answerOptions = ["$0$", "$1$"],
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
        voiceover_text = """
Was ist der<bookmark mark="limit_in"/> Grenzwert für x gegen 0 von der Funktion<bookmark mark="func_in"/> x quadrat minus zwei geteilt durch den Cosinus von x?
"""

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
        voiceover_text = """
We can simply plug in the limit, so x equals zero and <bookmark mark="implication_1"/>we obtain zero squared minus two, divided by the Cosinus of zero. This is equal to negative two, and that is the solution.
"""

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
        voiceover_text = """
Betrachte die Funktion <bookmark mark="func_in"/>e hoch x minus eins geteilt durch den Sinus von x.
<bookmark mark="dog_in"/>Was ist der Grenzwert dieser Funktion <bookmark mark="limit_in"/>für x gegen 0?
"""

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
        voiceover_text = """
Wenn wir den Grenzwert des Zählers, oder den Grenzwert des Nenners bilden, erkennen wir, dass beide gegen Null gehen, wenn x gegen Null geht.
Also können wir <bookmark mark="implication_1"/>die Regel von L'Hopital anwenden, und wir erhalten, dass der Grenzwert gleich dem Grenzwert der Ableitung des Zählers geteilt durch die Ableitung des Nenners ist.
Das ist in diesem Fall gleich <bookmark mark="func_2_a"/>dem Grenzwert für x gegen Null von e hoch x geteilt durch den Kosinus von x. Und <bookmark mark="func_2_b"/>das ist gleich 1 durch 1, also ist die Lösung Eins.
"""

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

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ konvergente Folge", color=c1t, font_size=fs3)
        series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=0$", color=c1t, font_size=fs3)
        series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        series_3 = Tex("", r"$b_n=$", "", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
        series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).move_to(series_3)

        # lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = """
Betrachten wir die konvergente <bookmark mark="a_1_in"/>Folge a n. Wir wissen, dass a n <bookmark mark="a_2_in"/>gegen Null konvergiert, also dass der Grenzwert der Folge gleich Null ist.
Betrachten wir jetzt eine neue <bookmark mark="b_n_in_1"/>Folge b n, die wir als minus eins hoch n mal a n geteilt durch zwei definieren.
Was ist <bookmark mark="b_n_in_2"/>der Grenzwert von b n für n gegen unendlich?
"""

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
        series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ konvergente Folge", color=c1t, font_size=fs3)
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
        voiceover_text = """
Da bn nichts anderes ist als "a" n, abwechselnd mit ein halb und minus ein halb multipliziert, können wir <bookmark mark="upper_limit_a"/>den Betrag von b n nach oben durch "a" n abschätzen.
Wir wissen ja, <bookmark mark="upper_limit_b"/>dass a n gegen null konvergiert. Also können wir <bookmark mark="implication_1"/>das Sandwich-Theorem anwenden, und wir erhalten, dass <bookmark mark="solution"/>der Grenzwert von b n für n gegen unendlich gleich Null ist.
"""

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

#
        
##################################### Partial fraction decomposition
#####################################
class Calc_practice_pfd_1_q(SophiaCursorScene):

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
        voiceover_text = """
Betrachte die <bookmark mark="pfd_in"/>Funktion vier x quadrat plus zwei x plus drei geteilt durch x hoch drei plus x.
Wenden wir darauf eine Partialbruchzerlegung mit dem Ansatz <bookmark mark="ansatz_in"/>A x plus B geteilt durch x quadrat plus eins plus C geteilt durch x an.
<bookmark mark="qmark_in"/>Was sind dann die Koeffizienten A, B und C?
"""

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

#####################################
class Calc_practice_pfd_2_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        pfd = self.translate("General.pfd")
        title = self.add_title(pfd)
        self.add(title)

        # Define the function text using MathTex
        pfd = MathTex(r"\frac{x^2+10x+18}{x(x^2+6x+9)}", r"=\frac{A}{x}+\frac{B}{x+3}+\frac{C}{(x+3)^2}", color=c1t, font_size=fs3).set_y(2)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,0,0]).scale(.45)

        # Define the voiceover text
        voiceover_text = """
Du hast die <bookmark mark="pfd_in"/>Funktion x quadrat plus zehn x plus achtzehn geteilt durch x mal Klammer auf x quadrat plus sechs x plus neun Klammer zu, gegeben.
Du sollst nun eine Partialbruchzerlegung mit dem Ansatz <bookmark mark="ansatz_in"/>A durch x plus B durch x plus drei plus C durch Klammer auf x plus drei Klammer zu hoch zwei durchführen.
<bookmark mark="qmark_in"/>Was sind dann die Koeffizienten A, B und C?
"""

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
#

        


##################################### Minimum and Maximum
#####################################
class Calc_practice_minmax_10_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ konvergente Folge", color=c1t, font_size=fs3)
        series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=0$", color=c1t, font_size=fs3)
        series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        series_3 = Tex("", r"$b_n=$", "", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
        series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).move_to(series_3)

        # lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = """
Betrachten wir die konvergente <bookmark mark="a_1_in"/>Folge a n. Wir wissen, dass a n <bookmark mark="a_2_in"/>gegen Null konvergiert, also dass der Grenzwert der Folge gleich Null ist.
Betrachten wir jetzt eine neue <bookmark mark="b_n_in_1"/>Folge b n, die wir als minus eins hoch n mal a n geteilt durch zwei definieren.
Was ist <bookmark mark="b_n_in_2"/>der Grenzwert von b n für n gegen unendlich?
"""

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

#
        
##################################### Intermediate value theorem
#####################################
class Calc_practice_ivt_10_q(SophiaCursorScene):
    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [
"""Wir berechnen die Funktionswerte an den Intervallgrenzen und erhalten $f(0) = 0-1-1 = -2 < 0$ bzw. $f(3) = 81-1-27= 53 > 0$.                             
Die Funktion $f$ ist als Summe stetiger Funktionen wieder stetig im Intervall $[0, 3]$.
Nach dem Zwischenwertsatz nimmt $f$ jeden Wert zwischen -2 und 53 an also auch speziell den Wert 0.
Folgende Aspekte müssen genannt sein, damit die Lösung als korrekt zählt:
- Feststellung, dass die Funktion stetig ist
- Nennung des Zwischenwertsatzes
- Berechnung der Intervallgrenzen f(0) und f(3), oder: Feststellung, dass f(0)<0 ist und f(3)>0 ist.
""",
"""
Fast richtig, der Schüler hat alles richig gemacht und nichts falsches, er hat nur vergessen, den Zwischenwertsatz zu nennen. 
""",
"""
Fast richtig, der Schüler hat alles richig gemacht und nichts falsches, er hat nur vergessen, die Stetigkeit zu nennen
""",
"""
Fast richtig, der Schüler hat alles richig gemacht und nichts falsches, er hat nur vergessen, die Intervallgrenzen abzuprüfen, oder ihre Vorzeichen zu nennen.
""",
"""
Die Antwort ist falsch.
"""
],
            correctAnswerIndex = 0,
            questionText = """Beweisen Sie, dass die Funktion $f(x) = 3x^3 - 1 - 3^x$ im Intervall $[0, 3]$ mindestens eine Nullstelle besitzt.""",
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
        intervall = MathTex(r"[0,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, intervall).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_ivt.10q.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("f_in")
            self.play(Write(func), run_time=.5)

            self.wait_until_bookmark("intervall_in")
            self.play(Write(intervall), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_ivt_10_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        # Define the function text using MathTex
        func = MathTex(r"f(x)=3x^3-1-3^x", color=c1t, font_size=fs2)
        intervall = MathTex(r"[0,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, intervall).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        steady = Tex(r"$\bullet$ $f$ stetig", color=BLUE, font_size=fs2)
        intervall_limits = Tex(r"$\bullet$ $f(0)=-2$,\,", r"$f(3)=53$", color=BLUE, font_size=fs2)
        ivt = Tex(r"$\bullet$ Zwischenwertsatz\\$\Rightarrow$ Nullstelle", color=BLUE, font_size=fs2)
        bullets = VGroup(steady, intervall_limits, ivt).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(.9).next_to(func_and_interval, DOWN, buff=.4)
        self.add(func_and_interval)

        # Define the voiceover text
        voiceover_text = self.translate("General.correct_2")+self.translate("Calc_1.practice_ivt.10a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("steady")
            self.play(Write(steady), run_time=.5)

            self.wait_until_bookmark("intervall_limits")
            self.play(Write(intervall_limits, run_time=.5))

            self.wait_until_bookmark("ivt")
            self.play(Write(ivt, run_time=.5))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_ivt_10_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        func = MathTex(r"f(x)=3x^3-1-3^x", color=c1t, font_size=fs2)
        intervall = MathTex(r"[0,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, intervall).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        steady = Tex(r"$\bullet$ $f$ stetig", color=BLUE, font_size=fs2)
        intervall_limits = Tex(r"$\bullet$ $f(0)=-2$,\,", r"$f(3)=53$", color=BLUE, font_size=fs2)
        ivt = Tex(r"$\bullet$ Zwischenwertsatz\\$\Rightarrow$ Nullstelle", color=BLUE, font_size=fs2)
        bullets = VGroup(steady, intervall_limits, ivt).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(.9).next_to(func_and_interval, DOWN, buff=.4)
        self.add(func_and_interval)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_ivt.10a.forgot_ivt")+self.translate("Calc_1.practice_ivt.10a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("steady")
            self.play(Write(steady), run_time=.5)

            self.wait_until_bookmark("intervall_limits")
            self.play(Write(intervall_limits, run_time=.5))

            self.wait_until_bookmark("ivt")
            self.play(Write(ivt, run_time=.5))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_ivt_10_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        func = MathTex(r"f(x)=3x^3-1-3^x", color=c1t, font_size=fs2)
        intervall = MathTex(r"[0,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, intervall).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        steady = Tex(r"$\bullet$ $f$ stetig", color=BLUE, font_size=fs2)
        intervall_limits = Tex(r"$\bullet$ $f(0)=-2$,\,", r"$f(3)=53$", color=BLUE, font_size=fs2)
        ivt = Tex(r"$\bullet$ Zwischenwertsatz\\$\Rightarrow$ Nullstelle", color=BLUE, font_size=fs2)
        bullets = VGroup(steady, intervall_limits, ivt).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(.9).next_to(func_and_interval, DOWN, buff=.4)
        self.add(func_and_interval)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_ivt.10a.forgot_continuity")+self.translate("Calc_1.practice_ivt.10a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("steady")
            self.play(Write(steady), run_time=.5)

            self.wait_until_bookmark("intervall_limits")
            self.play(Write(intervall_limits, run_time=.5))

            self.wait_until_bookmark("ivt")
            self.play(Write(ivt, run_time=.5))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_ivt_10_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        func = MathTex(r"f(x)=3x^3-1-3^x", color=c1t, font_size=fs2)
        intervall = MathTex(r"[0,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, intervall).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        steady = Tex(r"$\bullet$ $f$ stetig", color=BLUE, font_size=fs2)
        intervall_limits = Tex(r"$\bullet$ $f(0)=-2$,\,", r"$f(3)=53$", color=BLUE, font_size=fs2)
        ivt = Tex(r"$\bullet$ Zwischenwertsatz\\$\Rightarrow$ Nullstelle", color=BLUE, font_size=fs2)
        bullets = VGroup(steady, intervall_limits, ivt).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(.9).next_to(func_and_interval, DOWN, buff=.4)
        self.add(func_and_interval)

        # Define the voiceover text
        voiceover_text = self.translate("Calc_1.practice_ivt.10a.forgot_interval_limits")+self.translate("Calc_1.practice_ivt.10a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("steady")
            self.play(Write(steady), run_time=.5)

            self.wait_until_bookmark("intervall_limits")
            self.play(Write(intervall_limits, run_time=.5))

            self.wait_until_bookmark("ivt")
            self.play(Write(ivt, run_time=.5))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
class Calc_practice_ivt_10_e(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        func = MathTex(r"f(x)=3x^3-1-3^x", color=c1t, font_size=fs2)
        intervall = MathTex(r"[0,3]", color=c1t, font_size=fs2)
        func_and_interval = VGroup(func, intervall).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        steady = Tex(r"$\bullet$ $f$ stetig", color=BLUE, font_size=fs2)
        intervall_limits = Tex(r"$\bullet$ $f(0)=-2$,\,", r"$f(3)=53$", color=BLUE, font_size=fs2)
        ivt = Tex(r"$\bullet$ Zwischenwertsatz\\$\Rightarrow$ Nullstelle", color=BLUE, font_size=fs2)
        bullets = VGroup(steady, intervall_limits, ivt).arrange(DOWN, buff=.2, aligned_edge=LEFT).scale(.9).next_to(func_and_interval, DOWN, buff=.4)
        self.add(func_and_interval)

        # Define the voiceover text
        voiceover_text = self.translate("General.incorrect_3")+self.translate("Calc_1.practice_ivt.10a.voiceover-text")

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("steady")
            self.play(Write(steady), run_time=.5)

            self.wait_until_bookmark("intervall_limits")
            self.play(Write(intervall_limits, run_time=.5))

            self.wait_until_bookmark("ivt")
            self.play(Write(ivt, run_time=.5))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#
        
##################################### Mean value theorem #TODO
#####################################
class Calc_practice_mvt_10_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ konvergente Folge", color=c1t, font_size=fs3)
        series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=0$", color=c1t, font_size=fs3)
        series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        series_3 = Tex("", r"$b_n=$", "", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
        series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).move_to(series_3)

        # lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = """
Betrachten wir die konvergente <bookmark mark="a_1_in"/>Folge a n. Wir wissen, dass a n <bookmark mark="a_2_in"/>gegen Null konvergiert, also dass der Grenzwert der Folge gleich Null ist.
Betrachten wir jetzt eine neue <bookmark mark="b_n_in_1"/>Folge b n, die wir als minus eins hoch n mal a n geteilt durch zwei definieren.
Was ist <bookmark mark="b_n_in_2"/>der Grenzwert von b n für n gegen unendlich?
"""

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

#
        

##################################### Complex Numbers
#####################################
class Calc_practice_complex_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        complex_numbers = self.translate("General.complex_numbers")
        title = self.add_title(complex_numbers)
        self.add(title)

        # Define the function text using MathTex
        complex_number = Tex(r"$z=\frac{c+3i}{1+2i}$", color=BLUE, font_size=fs1).set_y(2)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,0,0]).scale(.45)

        # Define the voiceover text
        voiceover_text = """
Betrachte die Komplexe Zahl <bookmark mark="complex_number_in"/>z, welche durch den Ausdruck c plus drei i geteilt durch eins plus zwei i definiert ist.
Was ist der <bookmark mark="qmark"/>Realteil von z? Und was ist der Imaginärteil von z?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("complex_number_in")
            self.play(Write(complex_number))

            self.wait_until_bookmark("qmark")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

#
        
##################################### Trig functions
#####################################
class Calc_practice_trig_1_q(SophiaCursorScene):

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
        voiceover_text = """
Du hast eine Funktion gegeben, die <bookmark mark="func_in_1"/>von den reellen Zahlen in die reellen Zahlen abbildet.
Der Term der Funktion lautet <bookmark mark="func_in_2"/>f von x gleich Sinus von drei x plus zwei.
Was ist <bookmark mark="period_in"/>die kleinste Periode T, die diese Funktion besitzt?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in_1")
            self.play(Write(function[0]))

            self.wait_until_bookmark("func_in_2")
            self.play(Write(function[1]))

            self.wait_until_bookmark("period_in")
            self.play(Write(period))
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
        sine_3_period_a = MathTex(r"\sin(3x)", r"=\sin(3x+2\pi)", color=BLUE, font_size=fs2).next_to(period_1, DOWN, buff=.4)
        sine_3_period_b = MathTex(r"\sin(3(x+T))", r"=\sin(3x+2\pi)", color=BLUE, font_size=fs2).next_to(period_1, DOWN, buff=.4)
        period_3 = MathTex(r"\Rightarrow T=\frac{2\pi}3", color=BLUE, font_size=fs2).next_to(period_3, DOWN, buff=.4)
        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([0,-.4,0]).scale(.4)

        self.add

        # Define the voiceover text
        voiceover_text = """
Wir wissen ja, dass <bookmark mark="sine_period_1"/>Sinus von x gleich Sinus von x plus zwei Pi ist.
Also ist <bookmark mark="sine_period_2"/>die kleinste Periode von Sinus von x gleich zwei Pi.
Das ganze bedeutet jetzt aber auch,<bookmark mark="sine_3_period_a"/> dass der Sinus von 3 x gleich dem Sinus von 3 x plus zwei Pi ist.
Jetzt wollen wir ja die Periode wissen, also schreiben wir <bookmark mark="sine_3_period_b"/>drei x plus T in die Klammer, und wir erhalten, dass der Sinus von drei x plus T gleich dem Sinus von drei x plus zwei Pi ist.
Und dann lösen wir das ganze nach T auf, und <bookmark mark="period_3"/>wir erhalten, dass die Periode T gleich zwei Pi durch drei ist.
"""

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
class Calc_practice_trig_2_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        trig_functions = self.translate("General.trig_functions")
        title = self.add_title(trig_functions)
        self.add(title)

        # Define the function text using MathTex
        function = Tex(r"$f:\mathbb R \rightarrow \mathbb R$", r" $f(x)=\frac{\cos(5x)}{3}$", color=BLUE, font_size=fs3).scale(1.1).set_y(2.4)
        period = MathTex(r"\Rightarrow T=?", color=BLUE, font_size=fs2).next_to(function, DOWN, buff=.4)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,-.4,0]).scale(.4)

        # Define the voiceover text
        voiceover_text = """
Betrachte die Funktion, die Funktion <bookmark mark="func_in_2"/>f von x gleich cosinus von 5 x geteilt durch drei, die <bookmark mark="func_in_1"/>von den reellen Zahlen in die reellen Zahlen abbildet.
Was ist <bookmark mark="period_in"/>die kleinste Periode T von der Funktion f?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("func_in_2")
            self.play(Write(function[1]))
            
            self.wait_until_bookmark("func_in_1")
            self.play(Write(function[0]))

            self.wait_until_bookmark("period_in")
            self.play(Write(period))
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

#
        
##################################### Steadiness
#####################################
class Calc_practice_steady_1_q(SophiaCursorScene):

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
        voiceover_text = """
Du hast eine Funktion gegeben, die <bookmark mark="func_in_1"/>von den reellen Zahlen in die reellen Zahlen abbildet.
Der Term der Funktion lautet <bookmark mark="func_in_2"/>f von x gleich Sinus von drei x plus zwei.
Was ist <bookmark mark="period_in"/>die kleinste Periode T, die diese Funktion besitzt?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in_1")
            self.play(Write(function[0]))

            self.wait_until_bookmark("func_in_2")
            self.play(Write(function[1]))

            self.wait_until_bookmark("period_in")
            self.play(Write(period))
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)


#
        
##################################### MISC
#####################################
class Calc_practice_misc_10_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ konvergente Folge", color=c1t, font_size=fs3)
        series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=0$", color=c1t, font_size=fs3)
        series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        series_3 = Tex("", r"$b_n=$", "", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
        series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).move_to(series_3)

        # lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = """
Betrachten wir die konvergente <bookmark mark="a_1_in"/>Folge a n. Wir wissen, dass a n <bookmark mark="a_2_in"/>gegen Null konvergiert, also dass der Grenzwert der Folge gleich Null ist.
Betrachten wir jetzt eine neue <bookmark mark="b_n_in_1"/>Folge b n, die wir als minus eins hoch n mal a n geteilt durch zwei definieren.
Was ist <bookmark mark="b_n_in_2"/>der Grenzwert von b n für n gegen unendlich?
"""

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

#

PROTOTYPES=[
##########################################################################
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
    PagePrototypeVideo.from_scene(Calc_practice_limits_1_q),
    PagePrototypeQuestion.from_scene(Calc_practice_limits_1_q),
    PagePrototypeVideo.from_scene(Calc_practice_limits_1_a),
    PagePrototypeVideo.from_scene(Calc_practice_limits_1_b),
    PagePrototypeVideo.from_scene(Calc_practice_limits_2_q),
    PagePrototypeQuestion.from_scene(Calc_practice_limits_2_q),
    PagePrototypeVideo.from_scene(Calc_practice_limits_2_a),
    PagePrototypeVideo.from_scene(Calc_practice_limits_2_b),
    PagePrototypeVideo.from_scene(Calc_practice_ivt_10_q),
    PagePrototypeQuestion.from_scene(Calc_practice_ivt_10_q),
    PagePrototypeVideo.from_scene(Calc_practice_ivt_10_a),
    PagePrototypeVideo.from_scene(Calc_practice_ivt_10_b),
    PagePrototypeVideo.from_scene(Calc_practice_ivt_10_c),
    PagePrototypeVideo.from_scene(Calc_practice_ivt_10_d),
    PagePrototypeVideo.from_scene(Calc_practice_ivt_10_e),
]