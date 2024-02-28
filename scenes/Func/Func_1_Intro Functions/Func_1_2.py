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
from sophialib.tasks.sophiataskdefinition import SophiaFreeTextTaskDetail, SophiaTaskDefinition
import ast


# Function to create piecewise linear function based on given points
def create_piecewise_linear(points):
    def piecewise_linear(x):
        # Sort the points based on x-coordinate
        sorted_points = sorted(points, key=lambda p: p[0])

        # Find the closest two points for interpolation
        left_point, right_point = None, None
        for point in sorted_points:
            if x < point[0]:
                right_point = point
                break
            left_point = point

        # Extrapolate if x is outside the range of points
        if right_point is None:
            return sorted_points[-1][1]
        if left_point is None:
            return sorted_points[0][1]

        # Linear interpolation
        x1, y1 = left_point
        x2, y2 = right_point
        slope = (y2 - y1) / (x2 - x1)
        interpolated_value = y1 + slope * (x - x1)

        return interpolated_value

    return piecewise_linear

###########################################
###########################################
# Topic: Repetition - What is a Term?
class Func_1_2_I_1_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$2x+3$", "$x^2-2$", "$x+3=7$"],
            correctAnswerIndex = 2,
            questionText = self.translate("Func_1_2.1I11q.question-text"),
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,0,0]).scale(0.8)

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_1.1I3.main.title"))

        term1 = MathTex("2x+3", color=c1t).shift(UP*1.5)
        term2 = MathTex("x^2-2", color=c1t).next_to(term1, DOWN)
        term3 = MathTex("x+3=7", color=c1t).next_to(term2, DOWN)
        
        xvals_int = [i for i in range(5)]
        yvals_int = [8, 4, 5, 7, 3]
        xvals, yvals = [str(x) for x in xvals_int], [str(y) for y in yvals_int]
        xlabel = "x"
        ylabel = "y"

        x_to_y = MathTex("x", "\\mapsto", "y", color=c1t)

        t = Table([[str(val) for val in xvals], [str(val) for val in yvals]],
                    color=BLACK, line_config={"color":BLACK}, element_to_mobject_config={"color":BLACK},
                    row_labels=[Text(xlabel, color=BLACK, font_size = fs1), Text(ylabel, color=BLACK, font_size = fs1)])
        t = t.scale(3.3/t.get_width())
        rows = t.get_rows()
        x_rect = SurroundingRectangle(rows[0], color=RED, buff=0.1, corner_radius=0.2)
        y_rect = SurroundingRectangle(rows[1], color=GREEN, buff=0.1, corner_radius=0.2)
        
        f_terms = Tex(self.translate("Func_1_2.1I1.f-terms"), color=c1t)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_2.1I11q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("x_to_y")
            self.play(Write(x_to_y), run_time=1)
            
            self.wait_until_bookmark("qmark")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(RIGHT*5), FadeOut(x_to_y), run_time=0.5)
            self.wait(1)
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("table_in")
            self.play(Write(t), run_time=2)

            self.wait_until_bookmark("x_table")
            self.add_pencil_sound(1)
            self.play(Write(x_rect), run_time=1)

            self.wait_until_bookmark("y_table")
            self.add_pencil_sound(1)
            self.play(Write(y_rect), run_time=1)

            self.wait_until_bookmark("table_out")
            self.play(Unwrite(t), Unwrite(x_rect), Unwrite(y_rect), run_time=1)

            self.wait_until_bookmark("func_in")
            self.play(Write(f_terms), run_time=1)
            self.wait(0.5)
            self.play(f_terms.animate.move_to(title), FadeOut(title), run_time=1)

            self.wait_until_bookmark("term_1")
            self.play(Write(term1), run_time=1)

            self.wait_until_bookmark("term_2")
            self.play(Write(term2), run_time=1)

            self.wait_until_bookmark("term_3")
            self.play(Write(term3), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_1_2_I_1_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,0,0]).scale(0.8)

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        term1 = MathTex("2x+3", color=c1t).shift(UP*1.5)
        term2 = MathTex("x^2-2", color=c1t).next_to(term1, DOWN)
        term3 = MathTex("x+3=7", color=c1t).next_to(term2, DOWN)
        self.add(term1, term2, term3)

        left, right = term3.get_left()[0], term3.get_right()[0]
        top, bottom = term3.get_top()[1], term3.get_bottom()[1]
        strike = VGroup(Line([left, bottom, 0], [right, top, 0], color=RED, stroke_width=5), Line([left, top, 0], [right, bottom, 0], color=RED, stroke_width=5))

        pos_rect = SurroundingRectangle(Group(term1, term2), color=GREEN, buff=0.2, corner_radius=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_1_2.1I11a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("strike_out")
            self.add_pencil_sound(1)
            self.play(Write(strike), run_time=1)

            self.wait_until_bookmark("pos_box")
            self.add_pencil_sound(1)
            self.play(Write(pos_rect), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,0,0]).scale(0.8)

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        term1 = MathTex("2x+3", color=c1t).shift(UP*1.5)
        term2 = MathTex("x^2-2", color=c1t).next_to(term1, DOWN)
        term3 = MathTex("x+3=7", color=c1t).next_to(term2, DOWN)
        self.add(term1, term2, term3)

        left, right = term3.get_left()[0], term3.get_right()[0]
        top, bottom = term3.get_top()[1], term3.get_bottom()[1]
        strike = VGroup(Line([left, bottom, 0], [right, top, 0], color=RED, stroke_width=5), Line([left, top, 0], [right, bottom, 0], color=RED, stroke_width=5))

        pos_rect = SurroundingRectangle(Group(term1, term2), color=GREEN, buff=0.2, corner_radius=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_1_2.1I11a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("strike_out")
            self.add_pencil_sound(1)
            self.play(Write(strike), run_time=1)

            self.wait_until_bookmark("pos_box")
            self.add_pencil_sound(1)
            self.play(Write(pos_rect), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,0,0]).scale(0.8)

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        term1 = MathTex("2x+3", color=c1t).shift(UP*1.5)
        term2 = MathTex("x^2-2", color=c1t).next_to(term1, DOWN)
        term3 = MathTex("x+3=7", color=c1t).next_to(term2, DOWN)
        self.add(term1, term2, term3)

        left, right = term3.get_left()[0], term3.get_right()[0]
        top, bottom = term3.get_top()[1], term3.get_bottom()[1]
        strike = VGroup(Line([left, bottom, 0], [right, top, 0], color=RED, stroke_width=5), Line([left, top, 0], [right, bottom, 0], color=RED, stroke_width=5))

        pos_rect = SurroundingRectangle(Group(term1, term2), color=GREEN, buff=0.2, corner_radius=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_2")+self.translate("Func_1_2.1I11a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("strike_out")
            self.add_pencil_sound(1)
            self.play(Write(strike), run_time=1)

            self.wait_until_bookmark("pos_box")
            self.add_pencil_sound(1)
            self.play(Write(pos_rect), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

###########################################
###########################################
class Func_1_2_I_1_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$y=6$", "$y=9$", "$y=3$", "$y=12$"],
            correctAnswerIndex = 1,
            questionText = self.translate("Func_1_2.1I12q.question-text"),
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,0,0]).scale(0.8)

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        term = MathTex("2\\cdot","x","+3", color=c1t)
        x_in = MathTex("x","\\\\\\Downarrow", color=RED).next_to(term[1], UP*.8)
        b = Brace(term, sharpness=1, color=c1t)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(b, DOWN*.6)

        x_0 = MathTex("=0", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_0 = MathTex("=3", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        term_0 = MathTex("2\\cdot","0","+3", color=c1t)
        term_0[1].set_color(RED)

        x_1 = MathTex("=1", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_1 = MathTex("=5", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        term_1 = MathTex("2\\cdot","1","+3", color=c1t)
        term_1[1].set_color(RED)

        x_question = MathTex("=3", color=RED).next_to(x_in[0], RIGHT, buff=0.1)

        term.shift(UP*1.5)
        self.add(term)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_2.1I12q.voiceover")
        ) as tracker:
            
            down_shift = term.get_y()
            self.play(term.animate.shift(DOWN*down_shift))

            self.wait_until_bookmark("x_in")
            self.play(Write(x_in), run_time=1)

            self.wait_until_bookmark("y_in")
            self.play(Write(b), Write(y_out), run_time=1)

            self.wait_until_bookmark("x_0")
            self.play(Write(x_0), run_time=1)
            self.wait(1)
            term_copy = term.copy()
            self.play(TransformMatchingTex(term, term_0))

            self.wait_until_bookmark("y_0")
            self.play(Write(y_0), run_time=1)

            self.wait_until_bookmark("x_1")
            self.play(TransformMatchingTex(term_0, term_copy), run_time=.4)
            self.play(ReplacementTransform(x_0, x_1), Unwrite(y_0), run_time=1)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_copy, term_1))

            self.wait_until_bookmark("y_1")
            term = term_copy.copy()
            self.play(Write(y_1), run_time=1)

            self.wait_until_bookmark("x_y_out")
            self.play(TransformMatchingTex(term_1, term), run_time=.4)
            self.play(FadeOut(x_1), FadeOut(y_1), run_time=1)

            self.wait_until_bookmark("x_question")
            self.play(Write(x_question), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        term = MathTex("2\\cdot","x","+3", color=c1t)
        x_in = MathTex("x","\\\\\\Downarrow", color=RED).next_to(term[1], UP*0.8)
        b = Brace(term, sharpness=1, color=c1t)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(b, DOWN*.6)
        x_question = MathTex("=3", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_question = MathTex("=9", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        term_question = MathTex("2\\cdot","3","+3", color=c1t)
        term_question[1].set_color(RED)

        self.add(term, x_in, b, y_out, x_question)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_1_2.1I12a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("term_q")
            self.play(TransformMatchingTex(term, term_question))
            
            self.wait_until_bookmark("y_q")
            self.play(Write(y_question), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        term = MathTex("2\\cdot","x","+3", color=c1t)
        x_in = MathTex("x","\\\\\\Downarrow", color=RED).next_to(term[1], UP*0.8)
        b = Brace(term, sharpness=1, color=c1t)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(b, DOWN*.6)
        x_question = MathTex("=3", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_question = MathTex("=9", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        term_question = MathTex("2\\cdot","3","+3", color=c1t)
        term_question[1].set_color(RED)

        self.add(term, x_in, b, y_out, x_question)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_1")+self.translate("Func_1_2.1I12a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("term_q")
            self.play(TransformMatchingTex(term, term_question))
            
            self.wait_until_bookmark("y_q")
            self.play(Write(y_question), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        term = MathTex("2\\cdot","x","+3", color=c1t)
        x_in = MathTex("x","\\\\\\Downarrow", color=RED).next_to(term[1], UP*0.8)
        b = Brace(term, sharpness=1, color=c1t)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(b, DOWN*.6)
        x_question = MathTex("=3", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_question = MathTex("=9", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        term_question = MathTex("2\\cdot","3","+3", color=c1t)
        term_question[1].set_color(RED)

        self.add(term, x_in, b, y_out, x_question)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_1_2.1I12a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("term_q")
            self.play(TransformMatchingTex(term, term_question))
            
            self.wait_until_bookmark("y_q")
            self.play(Write(y_question), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        term = MathTex("2\\cdot","x","+3", color=c1t)
        x_in = MathTex("x","\\\\\\Downarrow", color=RED).next_to(term[1], UP*0.8)
        b = Brace(term, sharpness=1, color=c1t)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(b, DOWN*.6)
        x_question = MathTex("=3", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_question = MathTex("=9", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        term_question = MathTex("2\\cdot","3","+3", color=c1t)
        term_question[1].set_color(RED)

        self.add(term, x_in, b, y_out, x_question)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_1_2.1I12a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("term_q")
            self.play(TransformMatchingTex(term, term_question))
            
            self.wait_until_bookmark("y_q")
            self.play(Write(y_question), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

###########################################
###########################################
class Func_1_2_I_1_4(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        term = MathTex("","","","2\\cdot", "x", "+3", color=c1t)
        func_term = MathTex("f(","x",")=","2\\cdot", "x", "+3", color=c1t)
        ft_2 = func_term.copy()
        box = SurroundingRectangle(func_term, color=PURE_BLUE, buff=0.3, corner_radius=0.2)
        self.add(term)

        int_term_x4 = MathTex("f(","4",")=","2\\cdot", "4", "+3", color=c1t)
        int_term_x4[1].set_color(RED)
        int_term_x4[-2].set_color(RED)
        
        func_term_x4 = MathTex("f(","4",")=","11", color=c1t)
        func_term_x4[1].set_color(RED)
        func_term_x4[-1].set_color(GREEN)

        int_term_x5 = MathTex("f(","5",")=","2\\cdot", "5", "+3", color=c1t)
        int_term_x5[1].set_color(RED)
        int_term_x5[-2].set_color(RED)

        func_term_x5 = MathTex("f(","5",")=","13", color=c1t)
        func_term_x5[1].set_color(RED)
        func_term_x5[-1].set_color(GREEN)

        
        x_in = MathTex("x","\\\\ \\Downarrow", color=RED).next_to(box, UP*.6)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(box, DOWN*.6)

        x_in_4 = MathTex("=4", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_out_4 = MathTex("=11", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)

        x_in_5 = MathTex("=5", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_out_5 = MathTex("=13", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_2.1I14.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f_x")
            self.play(TransformMatchingTex(term, func_term))

            self.wait_until_bookmark("box")
            self.add_pencil_sound(1)
            self.play(Write(box), run_time=1)

            self.wait_until_bookmark("x_in")
            self.play(Write(x_in), run_time=1)

            self.wait_until_bookmark("y_out")
            self.play(Write(y_out), run_time=1)

            self.wait_until_bookmark("x4")
            self.play(Write(x_in_4))

            self.wait_until_bookmark("four_in")
            self.play(TransformMatchingTex(func_term, int_term_x4), run_time=1)

            self.wait_until_bookmark("four_sol")
            self.play(TransformMatchingTex(int_term_x4, func_term_x4), run_time=1)

            self.wait_until_bookmark("y_11")
            self.play(Write(y_out_4), run_time=1)

            self.wait_until_bookmark("reset")
            self.play(TransformMatchingTex(func_term_x4, ft_2), Unwrite(x_in_4), Unwrite(y_out_4), run_time=1)

            self.wait_until_bookmark("x5")
            self.play(Write(x_in_5))

            self.wait_until_bookmark("five_in")
            self.play(TransformMatchingTex(ft_2, int_term_x5), run_time=1)

            self.wait_until_bookmark("five_sol")
            self.play(TransformMatchingTex(int_term_x5, func_term_x5), run_time=1)

            self.wait_until_bookmark("y_13")
            self.play(Write(y_out_5), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


###########################################
###########################################
class Func_1_2_I_1_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$y=6$", "$y=9$", "$y=3$", "$y=12$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_2.1I15q.question-text"),
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        ##
        func_term = MathTex("f(","x",")=","2\\cdot", "x", "+3", color=c1t)
        ftc = func_term.copy()
        box = SurroundingRectangle(func_term, color=PURE_BLUE, buff=0.3, corner_radius=0.2)
        self.add(func_term, box)

        int_term_x_half = MathTex("f(","\\tfrac12",")=","2\\cdot", "\\tfrac12", "+3", color=c1t)
        int_term_x_half[1].set_color(RED)
        int_term_x_half[-2].set_color(RED)
        
        func_term_x_half = MathTex("f(","\\tfrac12",")=","4", color=c1t)
        func_term_x_half[1].set_color(RED)
        func_term_x_half[-1].set_color(GREEN)

        int_term__threehalf = MathTex("f(","\\tfrac32",")=","2\\cdot", "\\tfrac32", "+3", color=c1t)
        int_term__threehalf[1].set_color(RED)
        int_term__threehalf[-2].set_color(RED)

        func_term__threehalf = MathTex("f(","\\tfrac32",")=","6", color=c1t)
        func_term__threehalf[1].set_color(RED)
        func_term__threehalf[-1].set_color(GREEN)

        
        x_in = MathTex("x","\\\\ \\Downarrow", color=RED).next_to(box, UP*.6)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(box, DOWN*.6)

        x_in_half = MathTex("=\\tfrac12", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_out_half = MathTex("=4", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)

        x_in_threehalf = MathTex("=\\tfrac32", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        ##

        self.add(func_term, box, x_in, y_out)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_2.1I15q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("x_half")
            self.play(Write(x_in_half), run_time=1)

            self.wait_until_bookmark("half_in")
            self.play(TransformMatchingTex(func_term, int_term_x_half), run_time=1)

            self.wait_until_bookmark("y_4")
            self.play(TransformMatchingTex(int_term_x_half, func_term_x_half), run_time=1)
            self.wait(0.5)
            self.play(Write(y_out_half), run_time=1)

            self.wait_until_bookmark("reset")
            self.play(TransformMatchingTex(func_term_x_half, ftc), Unwrite(x_in_half), Unwrite(y_out_half), run_time=1)

            self.wait_until_bookmark("x_three_half")
            self.play(Write(x_in_threehalf), run_time=1)



        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_1_2_I_1_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))
        ##
        func_term = MathTex("f(","x",")=","2\\cdot", "x", "+3", color=c1t)
        ftc = func_term.copy()
        box = SurroundingRectangle(func_term, color=PURE_BLUE, buff=0.3, corner_radius=0.2)
        self.add(func_term, box)


        int_term_threehalf = MathTex("f(","\\tfrac32",")=","2\\cdot", "\\tfrac32", "+3", color=c1t)
        int_term_threehalf[1].set_color(RED)
        int_term_threehalf[-2].set_color(RED)

        func_term_threehalf = MathTex("f(","\\tfrac32",")=","6", color=c1t)
        func_term_threehalf[1].set_color(RED)
        func_term_threehalf[-1].set_color(GREEN)

        
        x_in = MathTex("x","\\\\ \\Downarrow", color=RED).next_to(box, UP*.6)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(box, DOWN*.6)

        x_in_threehalf = MathTex("=\\tfrac32", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_out_threehalf = MathTex("=6", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        ##

        self.add(func_term, box, x_in, y_out)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_4")+self.translate("Func_1_2.1I15a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("x_threehalf")
            self.play(Write(x_in_threehalf), run_time=1)

            self.wait_until_bookmark("threehalf_in")
            self.play(TransformMatchingTex(func_term, int_term_threehalf), run_time=1)

            self.wait_until_bookmark("y_6")
            self.play(TransformMatchingTex(int_term_threehalf, func_term_threehalf), run_time=1)
            self.wait(0.5)
            self.play(Write(y_out_threehalf), run_time=1)


        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_5_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))
        ##
        func_term = MathTex("f(","x",")=","2\\cdot", "x", "+3", color=c1t)
        ftc = func_term.copy()
        box = SurroundingRectangle(func_term, color=PURE_BLUE, buff=0.3, corner_radius=0.2)
        self.add(func_term, box)


        int_term_threehalf = MathTex("f(","\\tfrac32",")=","2\\cdot", "\\tfrac32", "+3", color=c1t)
        int_term_threehalf[1].set_color(RED)
        int_term_threehalf[-2].set_color(RED)

        func_term_threehalf = MathTex("f(","\\tfrac32",")=","6", color=c1t)
        func_term_threehalf[1].set_color(RED)
        func_term_threehalf[-1].set_color(GREEN)

        
        x_in = MathTex("x","\\\\ \\Downarrow", color=RED).next_to(box, UP*.6)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(box, DOWN*.6)

        x_in_threehalf = MathTex("=\\tfrac32", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_out_threehalf = MathTex("=6", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        ##

        self.add(func_term, box, x_in, y_out)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_1_2.1I15a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("x_threehalf")
            self.play(Write(x_in_threehalf), run_time=1)

            self.wait_until_bookmark("threehalf_in")
            self.play(TransformMatchingTex(func_term, int_term_threehalf), run_time=1)

            self.wait_until_bookmark("y_6")
            self.play(TransformMatchingTex(int_term_threehalf, func_term_threehalf), run_time=1)
            self.wait(0.5)
            self.play(Write(y_out_threehalf), run_time=1)


        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_5_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))
        ##
        func_term = MathTex("f(","x",")=","2\\cdot", "x", "+3", color=c1t)
        ftc = func_term.copy()
        box = SurroundingRectangle(func_term, color=PURE_BLUE, buff=0.3, corner_radius=0.2)
        self.add(func_term, box)


        int_term_threehalf = MathTex("f(","\\tfrac32",")=","2\\cdot", "\\tfrac32", "+3", color=c1t)
        int_term_threehalf[1].set_color(RED)
        int_term_threehalf[-2].set_color(RED)

        func_term_threehalf = MathTex("f(","\\tfrac32",")=","6", color=c1t)
        func_term_threehalf[1].set_color(RED)
        func_term_threehalf[-1].set_color(GREEN)

        
        x_in = MathTex("x","\\\\ \\Downarrow", color=RED).next_to(box, UP*.6)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(box, DOWN*.6)

        x_in_threehalf = MathTex("=\\tfrac32", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_out_threehalf = MathTex("=6", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        ##

        self.add(func_term, box, x_in, y_out)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_1_2.1I15a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("x_threehalf")
            self.play(Write(x_in_threehalf), run_time=1)

            self.wait_until_bookmark("threehalf_in")
            self.play(TransformMatchingTex(func_term, int_term_threehalf), run_time=1)

            self.wait_until_bookmark("y_6")
            self.play(TransformMatchingTex(int_term_threehalf, func_term_threehalf), run_time=1)
            self.wait(0.5)
            self.play(Write(y_out_threehalf), run_time=1)


        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_5_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))
        ##
        func_term = MathTex("f(","x",")=","2\\cdot", "x", "+3", color=c1t)
        ftc = func_term.copy()
        box = SurroundingRectangle(func_term, color=PURE_BLUE, buff=0.3, corner_radius=0.2)
        self.add(func_term, box)


        int_term_threehalf = MathTex("f(","\\tfrac32",")=","2\\cdot", "\\tfrac32", "+3", color=c1t)
        int_term_threehalf[1].set_color(RED)
        int_term_threehalf[-2].set_color(RED)

        func_term_threehalf = MathTex("f(","\\tfrac32",")=","6", color=c1t)
        func_term_threehalf[1].set_color(RED)
        func_term_threehalf[-1].set_color(GREEN)

        
        x_in = MathTex("x","\\\\ \\Downarrow", color=RED).next_to(box, UP*.6)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(box, DOWN*.6)

        x_in_threehalf = MathTex("=\\tfrac32", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_out_threehalf = MathTex("=6", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        ##

        self.add(func_term, box, x_in, y_out)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_1_2.1I15a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("x_threehalf")
            self.play(Write(x_in_threehalf), run_time=1)

            self.wait_until_bookmark("threehalf_in")
            self.play(TransformMatchingTex(func_term, int_term_threehalf), run_time=1)

            self.wait_until_bookmark("y_6")
            self.play(TransformMatchingTex(int_term_threehalf, func_term_threehalf), run_time=1)
            self.wait(0.5)
            self.play(Write(y_out_threehalf), run_time=1)


        # Wait for 4 seconds at the end of animation
        self.wait(4)



###########################################
###########################################
class Func_1_2_I_1_6_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$y=9$", "$y=1$", "$y=-1$", "$y=2$"],
            correctAnswerIndex = 2,
            questionText = self.translate("Func_1_2.1I16q.question-text"),
        )

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        ##
        func_term = MathTex("f(","x",")=","4-", "x", color=c1t)
        box = SurroundingRectangle(func_term, color=PURE_BLUE, buff=0.3, corner_radius=0.2)
        
        x_in = MathTex("x","\\\\ \\Downarrow", color=RED).next_to(box, UP*.6)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(box, DOWN*.6)


        x_in_five = MathTex("=5", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        ##

        self.add(x_in, y_out, box)

        
        # Action Sequence
        with self.voiceover(
            text=self.translate("Func_1_2.1I16q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("func_term")
            self.play(Write(func_term), run_time=1)

            self.wait_until_bookmark("x_five")
            self.play(Write(x_in_five), run_time=1)


class Func_1_2_I_1_6_a(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        func_term = MathTex("f(","x",")=","4-x", color=c1t)
        box = SurroundingRectangle(func_term, color=PURE_BLUE, buff=0.3, corner_radius=0.2)
        self.add(func_term, box)


        int_term_5 = MathTex("f(","5",")=","4-", "5", color=c1t)
        int_term_5[1].set_color(RED)
        int_term_5[-1].set_color(RED)

        func_term_5 = MathTex("f(","5",")=","-1", color=c1t)
        func_term_5[1].set_color(RED)
        func_term_5[-1].set_color(GREEN)

        
        x_in = MathTex("x","\\\\ \\Downarrow", color=RED).next_to(box, UP*.6)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(box, DOWN*.6)

        x_in_threehalf = MathTex("=5", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_out_threehalf = MathTex("=-1", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        ##

        self.add(func_term, box, x_in, y_out)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_1_2.1I16a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("x_five")
            self.play(Write(x_in_threehalf), run_time=1)

            self.wait_until_bookmark("five_in")
            self.play(TransformMatchingTex(func_term, int_term_5), run_time=1)

            self.wait_until_bookmark("y_neg_one")
            self.play(TransformMatchingTex(int_term_5, func_term_5), run_time=1)
            self.wait(0.5)
            self.play(Write(y_out_threehalf), run_time=1)


        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_6_b(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        func_term = MathTex("f(","x",")=","4-x", color=c1t)
        box = SurroundingRectangle(func_term, color=PURE_BLUE, buff=0.3, corner_radius=0.2)
        self.add(func_term, box)


        int_term_5 = MathTex("f(","5",")=","4-", "5", color=c1t)
        int_term_5[1].set_color(RED)
        int_term_5[-1].set_color(RED)

        func_term_5 = MathTex("f(","5",")=","-1", color=c1t)
        func_term_5[1].set_color(RED)
        func_term_5[-1].set_color(GREEN)

        
        x_in = MathTex("x","\\\\ \\Downarrow", color=RED).next_to(box, UP*.6)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(box, DOWN*.6)

        x_in_threehalf = MathTex("=5", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_out_threehalf = MathTex("=-1", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        ##

        self.add(func_term, box, x_in, y_out)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_1_2.1I16a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("x_five")
            self.play(Write(x_in_threehalf), run_time=1)

            self.wait_until_bookmark("five_in")
            self.play(TransformMatchingTex(func_term, int_term_5), run_time=1)

            self.wait_until_bookmark("y_neg_one")
            self.play(TransformMatchingTex(int_term_5, func_term_5), run_time=1)
            self.wait(0.5)
            self.play(Write(y_out_threehalf), run_time=1)


        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_6_c(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        func_term = MathTex("f(","x",")=","4-x", color=c1t)
        box = SurroundingRectangle(func_term, color=PURE_BLUE, buff=0.3, corner_radius=0.2)
        self.add(func_term, box)


        int_term_5 = MathTex("f(","5",")=","4-", "5", color=c1t)
        int_term_5[1].set_color(RED)
        int_term_5[-1].set_color(RED)

        func_term_5 = MathTex("f(","5",")=","-1", color=c1t)
        func_term_5[1].set_color(RED)
        func_term_5[-1].set_color(GREEN)

        
        x_in = MathTex("x","\\\\ \\Downarrow", color=RED).next_to(box, UP*.6)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(box, DOWN*.6)

        x_in_threehalf = MathTex("=5", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_out_threehalf = MathTex("=-1", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        ##

        self.add(func_term, box, x_in, y_out)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_4")+self.translate("Func_1_2.1I16a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("x_five")
            self.play(Write(x_in_threehalf), run_time=1)

            self.wait_until_bookmark("five_in")
            self.play(TransformMatchingTex(func_term, int_term_5), run_time=1)

            self.wait_until_bookmark("y_neg_one")
            self.play(TransformMatchingTex(int_term_5, func_term_5), run_time=1)
            self.wait(0.5)
            self.play(Write(y_out_threehalf), run_time=1)


        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_6_d(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        func_term = MathTex("f(","x",")=","4-x", color=c1t)
        box = SurroundingRectangle(func_term, color=PURE_BLUE, buff=0.3, corner_radius=0.2)
        self.add(func_term, box)


        int_term_5 = MathTex("f(","5",")=","4-", "5", color=c1t)
        int_term_5[1].set_color(RED)
        int_term_5[-1].set_color(RED)

        func_term_5 = MathTex("f(","5",")=","-1", color=c1t)
        func_term_5[1].set_color(RED)
        func_term_5[-1].set_color(GREEN)

        
        x_in = MathTex("x","\\\\ \\Downarrow", color=RED).next_to(box, UP*.6)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(box, DOWN*.6)

        x_in_threehalf = MathTex("=5", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_out_threehalf = MathTex("=-1", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        ##

        self.add(func_term, box, x_in, y_out)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_1_2.1I16a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("x_five")
            self.play(Write(x_in_threehalf), run_time=1)

            self.wait_until_bookmark("five_in")
            self.play(TransformMatchingTex(func_term, int_term_5), run_time=1)

            self.wait_until_bookmark("y_neg_one")
            self.play(TransformMatchingTex(int_term_5, func_term_5), run_time=1)
            self.wait(0.5)
            self.play(Write(y_out_threehalf), run_time=1)


        # Wait for 4 seconds at the end of animation
        self.wait(4)

###########################################
###########################################
class Func_1_2_I_1_7_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$y=-2$", "$y=2$", "$y=-4$", "$y=4$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_2.1I17q.question-text"),
        )

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        ##
        func_term = MathTex("f(","x",")=","2\\cdot", "x", "+2", color=c1t)
        box = SurroundingRectangle(func_term, color=PURE_BLUE, buff=0.3, corner_radius=0.2)
        
        x_in = MathTex("x","\\\\ \\Downarrow", color=RED).next_to(box, UP*.6)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(box, DOWN*.6)


        x_in_neg_two = MathTex("=-2", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        ##

        self.add(x_in, y_out, box)

        
        # Action Sequence
        with self.voiceover(
            text=self.translate("Func_1_2.1I17q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("func_term")
            self.play(Write(func_term), run_time=1)

            self.wait_until_bookmark("x_neg_two")
            self.play(Write(x_in_neg_two), run_time=1)
        

class Func_1_2_I_1_7_a(SophiaCursorScene):


    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        func_term = MathTex("f(","x",")=","2\\cdot", "x", "+2", color=c1t, font_size=fs2)

        int_term_5 = MathTex("f(","-2",")=","2\\cdot", "(-2)", "+2", color=c1t, font_size=fs2)
        int_term_5[1].set_color(RED)
        int_term_5[-2].set_color(RED)

        func_term_5 = MathTex("f(","-2",")=","-2", color=c1t, font_size=fs2)
        func_term_5[1].set_color(RED)
        func_term_5[-1].set_color(GREEN)
        
        box = SurroundingRectangle(int_term_5, color=PURE_BLUE, buff=0.3, corner_radius=0.2)

        self.add(func_term, box)
        
        x_in = MathTex("x","\\\\ \\Downarrow", color=RED).next_to(box, UP*.6)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(box, DOWN*.6)

        x_in_threehalf = MathTex("=-2", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_out_threehalf = MathTex("=-2", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        ##

        self.add(func_term, box, x_in, y_out)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_4")+self.translate("Func_1_2.1I17a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("x_neg_two")
            self.play(Write(x_in_threehalf), run_time=1)

            self.wait_until_bookmark("neg_two_in")
            self.play(TransformMatchingTex(func_term, int_term_5), run_time=1)

            self.wait_until_bookmark("y_neg_two")
            self.play(TransformMatchingTex(int_term_5, func_term_5), run_time=1)
            self.wait(0.5)
            self.play(Write(y_out_threehalf), run_time=1)


        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_7_b(SophiaCursorScene):


    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        func_term = MathTex("f(","x",")=","2\\cdot", "x", "+2", color=c1t, font_size=fs2)

        int_term_5 = MathTex("f(","-2",")=","2\\cdot", "(-2)", "+2", color=c1t, font_size=fs2)
        int_term_5[1].set_color(RED)
        int_term_5[-2].set_color(RED)

        func_term_5 = MathTex("f(","-2",")=","-2", color=c1t, font_size=fs2)
        func_term_5[1].set_color(RED)
        func_term_5[-1].set_color(GREEN)
        
        box = SurroundingRectangle(int_term_5, color=PURE_BLUE, buff=0.3, corner_radius=0.2)

        self.add(func_term, box)
        
        x_in = MathTex("x","\\\\ \\Downarrow", color=RED).next_to(box, UP*.6)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(box, DOWN*.6)

        x_in_threehalf = MathTex("=-2", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_out_threehalf = MathTex("=-2", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        ##

        self.add(func_term, box, x_in, y_out)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_1_2.1I17a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("x_neg_two")
            self.play(Write(x_in_threehalf), run_time=1)

            self.wait_until_bookmark("neg_two_in")
            self.play(TransformMatchingTex(func_term, int_term_5), run_time=1)

            self.wait_until_bookmark("y_neg_two")
            self.play(TransformMatchingTex(int_term_5, func_term_5), run_time=1)
            self.wait(0.5)
            self.play(Write(y_out_threehalf), run_time=1)


        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_7_c(SophiaCursorScene):


    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        func_term = MathTex("f(","x",")=","2\\cdot", "x", "+2", color=c1t, font_size=fs2)

        int_term_5 = MathTex("f(","-2",")=","2\\cdot", "(-2)", "+2", color=c1t, font_size=fs2)
        int_term_5[1].set_color(RED)
        int_term_5[-2].set_color(RED)

        func_term_5 = MathTex("f(","-2",")=","-2", color=c1t, font_size=fs2)
        func_term_5[1].set_color(RED)
        func_term_5[-1].set_color(GREEN)
        
        box = SurroundingRectangle(int_term_5, color=PURE_BLUE, buff=0.3, corner_radius=0.2)

        self.add(func_term, box)
        
        x_in = MathTex("x","\\\\ \\Downarrow", color=RED).next_to(box, UP*.6)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(box, DOWN*.6)

        x_in_threehalf = MathTex("=-2", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_out_threehalf = MathTex("=-2", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        ##

        self.add(func_term, box, x_in, y_out)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_1_2.1I17a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("x_neg_two")
            self.play(Write(x_in_threehalf), run_time=1)

            self.wait_until_bookmark("neg_two_in")
            self.play(TransformMatchingTex(func_term, int_term_5), run_time=1)

            self.wait_until_bookmark("y_neg_two")
            self.play(TransformMatchingTex(int_term_5, func_term_5), run_time=1)
            self.wait(0.5)
            self.play(Write(y_out_threehalf), run_time=1)


        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_7_d(SophiaCursorScene):


    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        func_term = MathTex("f(","x",")=","2\\cdot", "x", "+2", color=c1t, font_size=fs2)

        int_term_5 = MathTex("f(","-2",")=","2\\cdot", "(-2)", "+2", color=c1t, font_size=fs2)
        int_term_5[1].set_color(RED)
        int_term_5[-2].set_color(RED)

        func_term_5 = MathTex("f(","-2",")=","-2", color=c1t, font_size=fs2)
        func_term_5[1].set_color(RED)
        func_term_5[-1].set_color(GREEN)
        
        box = SurroundingRectangle(int_term_5, color=PURE_BLUE, buff=0.3, corner_radius=0.2)

        self.add(func_term, box)
        
        x_in = MathTex("x","\\\\ \\Downarrow", color=RED).next_to(box, UP*.6)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(box, DOWN*.6)

        x_in_threehalf = MathTex("=-2", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_out_threehalf = MathTex("=-2", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)
        ##

        self.add(func_term, box, x_in, y_out)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_1_2.1I17a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("x_neg_two")
            self.play(Write(x_in_threehalf), run_time=1)

            self.wait_until_bookmark("neg_two_in")
            self.play(TransformMatchingTex(func_term, int_term_5), run_time=1)

            self.wait_until_bookmark("y_neg_two")
            self.play(TransformMatchingTex(int_term_5, func_term_5), run_time=1)
            self.wait(0.5)
            self.play(Write(y_out_threehalf), run_time=1)


        # Wait for 4 seconds at the end of animation
        self.wait(4)


###########################################
###########################################
class Func_1_2_I_1_8(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        baboon = ImageMobject(assets_folder / "img" / "baboon_thumbs.png").move_to([-5,0,0])
        baboon.scale(3.5/baboon.get_width())

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        func_term = MathTex("f(","x",")=","...", color=c1t)
        box = SurroundingRectangle(func_term, color=PURE_BLUE, buff=0.3, corner_radius=0.2)

        func_term_dots_q = MathTex("f(","...",")=","???", color=c1t)
        func_term_dots_q[1].set_color(RED)
        func_term_dots_q[-1].set_color(GREEN)
        
        x_in = MathTex("x","\\\\ \\Downarrow", color=RED).next_to(box, UP*.6)
        y_out = MathTex("\\Downarrow\\\\","y", color=GREEN).next_to(box, DOWN*.6)

        x_in_dot = MathTex("=...", color=RED).next_to(x_in[0], RIGHT, buff=0.1)
        y_out_q = MathTex("=???", color=GREEN).next_to(y_out[1], RIGHT, buff=0.1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_2.1I18.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("term_in")
            self.play(Write(func_term), Write(box), run_time=1)

            self.wait_until_bookmark("x_in")
            self.play(Write(x_in), Write(x_in_dot), run_time=1)

            self.wait_until_bookmark("y_out")
            self.play(TransformMatchingTex(func_term, func_term_dots_q), run_time=1)
            self.wait(2)
            self.play(Write(y_out), Write(y_out_q), run_time=2)

            self.wait_until_bookmark("baboon_in")
            self.add_shift_sound(0.5)
            self.play(baboon.animate.shift(RIGHT*5), FadeOut(func_term), FadeOut(box), FadeOut(x_in), FadeOut(y_out), FadeOut(x_in_dot), FadeOut(y_out_q), run_time=1)


        # Wait for 4 seconds at the end of animation
        self.wait(4)
    

######################################################################################
class Func_1_2_I_1_9_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$f(x)=5+x$", "$g(x)=5\\cdot x$", "$h(x)=5\\cdot x +5$"],
            correctAnswerIndex = 1,
            questionText = self.translate("Func_1_2.1I19q.question-text"),
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        cat_with_hat = ImageMobject(assets_folder / "img" / "cat_with_hat.png").move_to([-5,0,0])
        cat_with_hat.scale(3.5/cat_with_hat.get_width())
        crazy_world = ImageMobject(assets_folder / "img" / "crazy_world.png").move_to([-5,0,0])
        crazy_world.scale(3.5/crazy_world.get_width())

        f = MathTex("f(x)=5+x", color=c1t, font_size=fs1)
        g = MathTex("g(x)=5\\cdot x", color=c1t, font_size=fs1)
        h = MathTex("h(x)=5\\cdot x+5", color=c1t, font_size=fs1)
        funcs = VGroup(f, g, h).arrange(DOWN, buff=0.4, aligned_edge=LEFT).shift(DOWN*1.8)
        price = Tex(":$5$\\texteuro", color=c1t, font_size=fs1).shift([1.4,1,0])



        # Action Sequence
        with self.voiceover(
                text = self.translate("Func_1_2.1I19q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("world_in")
            self.add_shift_sound(0.5)
            self.play(crazy_world.animate.shift(RIGHT*5), run_time=.5)

            self.wait_until_bookmark("world_out")
            self.add_shift_sound(0.5)
            self.play(crazy_world.animate.shift(RIGHT*5), run_time=.5)

            self.wait_until_bookmark("cat_in")
            self.add_shift_sound(0.5)
            self.play(cat_with_hat.animate.shift(RIGHT*5), run_time=.5)

            self.wait_until_bookmark("prize_in")
            self.play(cat_with_hat.animate.scale(0.4), run_time=1)
            self.play(cat_with_hat.animate.shift([0,1,0]), Write(price), run_time=1)

            self.wait_until_bookmark("f_in")
            self.play(Write(f), run_time=1)

            self.wait_until_bookmark("g_in")
            self.play(Write(g), run_time=1)

            self.wait_until_bookmark("h_in")
            self.play(Write(h), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_1_2_I_1_9_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        cat_with_hat = ImageMobject(assets_folder / "img" / "cat_with_hat.png").move_to(UP)
        cat_with_hat.scale(1.4/cat_with_hat.get_width())

        price = Tex(":$5$\\texteuro", color=c1t, font_size=fs1).shift([1.4,1,0])

        func_correct = MathTex("g(x)=", "5\\cdot", "x", color=c1t, font_size=fs1).shift(DOWN)

        self.add(cat_with_hat, price)

        # Action Sequence
        with self.voiceover(
                text = self.translate("General.incorrect_1")+self.translate("Func_1_2.1I19a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("x_in")
            self.play(Write(func_correct[2]), run_time=1)

            self.wait_until_bookmark("five_in")
            self.play(Write(func_correct[1]), run_time=1)

            self.wait_until_bookmark("g_in")
            self.play(Write(func_correct[0]), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_9_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        cat_with_hat = ImageMobject(assets_folder / "img" / "cat_with_hat.png").move_to(UP)
        cat_with_hat.scale(1.4/cat_with_hat.get_width())

        price = Tex(":$5$\\texteuro", color=c1t, font_size=fs1).shift([1.4,1,0])

        func_correct = MathTex("g(x)=", "5\\cdot", "x", color=c1t, font_size=fs1).shift(DOWN)

        self.add(cat_with_hat, price)

        # Action Sequence
        with self.voiceover(
                #text=self.translate("Func_1_2.1I19.voiceover")
                text = self.translate("General.correct_1")+self.translate("Func_1_2.1I19a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("x_in")
            self.play(Write(func_correct[2]), run_time=1)

            self.wait_until_bookmark("five_in")
            self.play(Write(func_correct[1]), run_time=1)

            self.wait_until_bookmark("g_in")
            self.play(Write(func_correct[0]), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_9_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        cat_with_hat = ImageMobject(assets_folder / "img" / "cat_with_hat.png").move_to(UP)
        cat_with_hat.scale(1.4/cat_with_hat.get_width())

        price = Tex(":$5$\\texteuro", color=c1t, font_size=fs1).shift([1.4,1,0])

        func_correct = MathTex("g(x)=", "5\\cdot", "x", color=c1t, font_size=fs1).shift(DOWN)

        self.add(cat_with_hat, price)

        # Action Sequence
        with self.voiceover(
                #text=self.translate("Func_1_2.1I19.voiceover")
                text = self.translate("General.incorrect_1")+self.translate("Func_1_2.1I19a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("x_in")
            self.play(Write(func_correct[2]), run_time=1)

            self.wait_until_bookmark("five_in")
            self.play(Write(func_correct[1]), run_time=1)

            self.wait_until_bookmark("g_in")
            self.play(Write(func_correct[0]), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


###########################################
###########################################
class Func_1_2_I_1_10_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$f(x)=100+2x$", "$g(x)=102\\cdot x$", "$h(x)=100\\cdot x +2$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_2.1I110q.question-text"),
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        ice_cream_machine = ImageMobject(assets_folder / "img" / "ice_cream_machine.png").move_to([-5,0,0])
        ice_cream_machine.scale(3.5/ice_cream_machine.get_width())

        ice_cream_cone = ImageMobject(assets_folder / "img" / "ice_cream_cone.png").move_to(UP*0.6)
        ice_cream_cone.scale(1.2/ice_cream_cone.get_width())

        f = MathTex("f(x)=100+2x", color=c1t, font_size=fs2)
        g = MathTex("g(x)=102\\cdot x", color=c1t, font_size=fs2)
        h = MathTex("h(x)=100\\cdot x+2", color=c1t, font_size=fs2)
        funcs = VGroup(f, g, h).arrange(DOWN, buff=0.4, aligned_edge=LEFT).shift(DOWN*1.8)

        price_machine = Tex(":$100$\\texteuro", color=c1t, font_size=fs1).shift([1.4,2,0])
        price_cone = Tex(":$2$\\texteuro", color=c1t, font_size=fs1).shift([1.4,.6,0])



        # Action Sequence
        with self.voiceover(
                text = self.translate("Func_1_2.1I110q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("machine_in")
            self.add_shift_sound(0.5)
            self.play(ice_cream_machine.animate.shift(RIGHT*5), run_time=.5)

            self.wait_until_bookmark("prize_in")
            self.play(ice_cream_machine.animate.scale(0.35), run_time=1)
            self.play(ice_cream_machine.animate.shift([0,2,0]), Write(price_machine), run_time=1)

            self.wait_until_bookmark("cone_in")
            self.play(FadeIn(ice_cream_cone), run_time=1)
            self.play(FadeIn(price_cone), run_time=1)

            self.wait_until_bookmark("f_in")
            self.play(Write(f), run_time=1)

            self.wait_until_bookmark("g_in")
            self.play(Write(g), run_time=1)

            self.wait_until_bookmark("h_in")
            self.play(Write(h), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_1_2_I_1_10_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        ice_cream_machine = ImageMobject(assets_folder / "img" / "ice_cream_machine.png").move_to([0,2,0])
        ice_cream_machine.scale(1.22/ice_cream_machine.get_width())

        ice_cream_cone = ImageMobject(assets_folder / "img" / "ice_cream_cone.png").move_to(UP*0.6)
        ice_cream_cone.scale(1.2/ice_cream_cone.get_width())

        price_machine = Tex(":$100$\\texteuro", color=c1t, font_size=fs1).shift([1.4,2,0])
        price_cone = Tex(":$2$\\texteuro", color=c1t, font_size=fs1).shift([1.4,.6,0])


        func_correct = MathTex("f(x)=", "100", "+2x", color=c1t, font_size=fs1).shift(DOWN)

        self.add(ice_cream_machine, ice_cream_cone, price_machine, price_cone)

        # Action Sequence
        with self.voiceover(
                text = self.translate("General.correct_4")+self.translate("Func_1_2.1I110a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("hundred_in")
            self.play(Write(func_correct[1]), run_time=1)

            self.wait_until_bookmark("two_x")
            self.play(Write(func_correct[2]), run_time=1)

            self.wait_until_bookmark("f_in")
            self.play(Write(func_correct[0]), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_10_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        ice_cream_machine = ImageMobject(assets_folder / "img" / "ice_cream_machine.png").move_to([0,2,0])
        ice_cream_machine.scale(1.22/ice_cream_machine.get_width())

        ice_cream_cone = ImageMobject(assets_folder / "img" / "ice_cream_cone.png").move_to(UP*0.6)
        ice_cream_cone.scale(1.2/ice_cream_cone.get_width())

        price_machine = Tex(":$100$\\texteuro", color=c1t, font_size=fs1).shift([1.4,2,0])
        price_cone = Tex(":$2$\\texteuro", color=c1t, font_size=fs1).shift([1.4,.6,0])


        func_correct = MathTex("f(x)=", "100", "+2x", color=c1t, font_size=fs1).shift(DOWN)

        self.add(ice_cream_machine, ice_cream_cone, price_machine, price_cone)

        # Action Sequence
        with self.voiceover(
                #text=self.translate("Func_1_2.1I19.voiceover")
                text = self.translate("General.incorrect_4")+self.translate("Func_1_2.1I110a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("hundred_in")
            self.play(Write(func_correct[1]), run_time=1)

            self.wait_until_bookmark("two_x")
            self.play(Write(func_correct[2]), run_time=1)

            self.wait_until_bookmark("f_in")
            self.play(Write(func_correct[0]), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_10_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        ice_cream_machine = ImageMobject(assets_folder / "img" / "ice_cream_machine.png").move_to([0,2,0])
        ice_cream_machine.scale(1.22/ice_cream_machine.get_width())

        ice_cream_cone = ImageMobject(assets_folder / "img" / "ice_cream_cone.png").move_to(UP*0.6)
        ice_cream_cone.scale(1.2/ice_cream_cone.get_width())

        price_machine = Tex(":$100$\\texteuro", color=c1t, font_size=fs1).shift([1.4,2,0])
        price_cone = Tex(":$2$\\texteuro", color=c1t, font_size=fs1).shift([1.4,.6,0])


        func_correct = MathTex("f(x)=", "100", "+2x", color=c1t, font_size=fs1).shift(DOWN)

        self.add(ice_cream_machine, ice_cream_cone, price_machine, price_cone)

        # Action Sequence
        with self.voiceover(
                #text=self.translate("Func_1_2.1I19.voiceover")
                text = self.translate("General.incorrect_4")+self.translate("Func_1_2.1I110a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("hundred_in")
            self.play(Write(func_correct[1]), run_time=1)

            self.wait_until_bookmark("two_x")
            self.play(Write(func_correct[2]), run_time=1)

            self.wait_until_bookmark("f_in")
            self.play(Write(func_correct[0]), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

###########################################
###########################################
class Func_1_2_I_1_11_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$f(x)=1000+10x$", "$g(x)=10\\cdot x-1000$", "$h(x)=1000-10x$"],
            correctAnswerIndex = 2,
            questionText = self.translate("Func_1_2.1I111q.question-text"),
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        futuristic_gold = ImageMobject(assets_folder / "img" / "futuristic_gold.png").move_to([-5,0,0])
        futuristic_gold.scale(3.5/futuristic_gold.get_width())

        futuristic_drink = ImageMobject(assets_folder / "img" / "futuristic_drink.png").move_to(UP*0.6)
        futuristic_drink.scale(1.2/futuristic_drink.get_width())

        f = MathTex("f(x)=1000+10x", color=c1t, font_size=fs2)
        g = MathTex("g(x)=10\\cdot x-1000", color=c1t, font_size=fs2)
        h = MathTex("h(x)=1000-10x", color=c1t, font_size=fs2)
        funcs = VGroup(f, g, h).arrange(DOWN, buff=0.4, aligned_edge=LEFT).shift(DOWN*1.8)

        price_machine = Tex(":$1000$", color=c1t, font_size=fs2).shift([1.4,2,0])
        price_cone = Tex(":$10$", color=c1t, font_size=fs2).shift([1.4,.6,0])



        # Action Sequence
        with self.voiceover(
                text = self.translate("Func_1_2.1I111q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("gold_in")
            self.add_shift_sound(0.5)
            self.play(futuristic_gold.animate.shift(RIGHT*5), run_time=.5)

            self.wait_until_bookmark("prize_in")
            self.play(futuristic_gold.animate.scale(0.35), run_time=1)
            self.play(futuristic_gold.animate.shift([0,2,0]), Write(price_machine), run_time=1)

            self.wait_until_bookmark("drink_in")
            self.play(FadeIn(futuristic_drink), run_time=1)
            self.play(FadeIn(price_cone), run_time=1)

            self.wait_until_bookmark("f_in")
            self.play(Write(f), run_time=1)

            self.wait_until_bookmark("g_in")
            self.play(Write(g), run_time=1)

            self.wait_until_bookmark("h_in")
            self.play(Write(h), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_11_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        futuristic_gold = ImageMobject(assets_folder / "img" / "futuristic_gold.png").move_to([0,2,0])
        futuristic_gold.scale(1.22/futuristic_gold.get_width())

        futuristic_drink = ImageMobject(assets_folder / "img" / "futuristic_drink.png").move_to(UP*0.6)
        futuristic_drink.scale(1.2/futuristic_drink.get_width())

        price_gold = Tex(":$1000$", color=c1t, font_size=fs1).shift([1.4,2,0])
        pricedrink = Tex(":$10$", color=c1t, font_size=fs1).shift([1.4,.6,0])


        func_correct = MathTex("h(x)=", "1000", "-10x", color=c1t, font_size=fs1).shift(DOWN)

        self.add(futuristic_gold, futuristic_drink, price_gold, pricedrink)

        # Action Sequence
        with self.voiceover(
                text = self.translate("General.incorrect_5")+self.translate("Func_1_2.1I111a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("thousand_in")
            self.play(Write(func_correct[1]), run_time=1)

            self.wait_until_bookmark("ten_x")
            self.play(Write(func_correct[2]), run_time=1)

            self.wait_until_bookmark("f_in")
            self.play(Write(func_correct[0]), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_11_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        futuristic_gold = ImageMobject(assets_folder / "img" / "futuristic_gold.png").move_to([0,2,0])
        futuristic_gold.scale(1.22/futuristic_gold.get_width())

        futuristic_drink = ImageMobject(assets_folder / "img" / "futuristic_drink.png").move_to(UP*0.6)
        futuristic_drink.scale(1.2/futuristic_drink.get_width())

        price_gold = Tex(":$1000$", color=c1t, font_size=fs1).shift([1.4,2,0])
        pricedrink = Tex(":$10$", color=c1t, font_size=fs1).shift([1.4,.6,0])


        func_correct = MathTex("h(x)=", "1000", "-10x", color=c1t, font_size=fs1).shift(DOWN)

        self.add(futuristic_gold, futuristic_drink, price_gold, pricedrink)

        # Action Sequence
        with self.voiceover(
                text = self.translate("General.incorrect_5")+self.translate("Func_1_2.1I111a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("thousand_in")
            self.play(Write(func_correct[1]), run_time=1)

            self.wait_until_bookmark("ten_x")
            self.play(Write(func_correct[2]), run_time=1)

            self.wait_until_bookmark("f_in")
            self.play(Write(func_correct[0]), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_11_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        futuristic_gold = ImageMobject(assets_folder / "img" / "futuristic_gold.png").move_to([0,2,0])
        futuristic_gold.scale(1.22/futuristic_gold.get_width())

        futuristic_drink = ImageMobject(assets_folder / "img" / "futuristic_drink.png").move_to(UP*0.6)
        futuristic_drink.scale(1.2/futuristic_drink.get_width())

        price_gold = Tex(":$1000$", color=c1t, font_size=fs1).shift([1.4,2,0])
        pricedrink = Tex(":$10$", color=c1t, font_size=fs1).shift([1.4,.6,0])


        func_correct = MathTex("h(x)=", "1000", "-10x", color=c1t, font_size=fs1).shift(DOWN)

        self.add(futuristic_gold, futuristic_drink, price_gold, pricedrink)

        # Action Sequence
        with self.voiceover(
                text = self.translate("General.correct_4")+self.translate("Func_1_2.1I111a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("thousand_in")
            self.play(Write(func_correct[1]), run_time=1)

            self.wait_until_bookmark("ten_x")
            self.play(Write(func_correct[2]), run_time=1)

            self.wait_until_bookmark("f_in")
            self.play(Write(func_correct[0]), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)



###########################################
###########################################
class Func_1_2_I_1_12_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$f(x)=5-2\\cdot x$", "$g(x)=5x-2$", "$h(x)=3\\cdot x$"],
            correctAnswerIndex = 2,
            questionText = self.translate("Func_1_2.1I112q.question-text"),
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        space_taxi = ImageMobject(assets_folder / "img" / "space_taxi.png").move_to([-5,0,0])
        space_taxi.scale(3.5/space_taxi.get_width())

        space_fuel = ImageMobject(assets_folder / "img" / "space_fuel.png").move_to(UP*0.6)
        space_fuel.scale(1.2/space_fuel.get_width())

        f = MathTex("f(x)=5-2\\cdot x", color=c1t, font_size=fs2)
        g = MathTex("g(x)=5x-2", color=c1t, font_size=fs2)
        h = MathTex("h(x)=3\\cdot x", color=c1t, font_size=fs2)
        funcs = VGroup(f, g, h).arrange(DOWN, buff=0.4, aligned_edge=LEFT).shift(DOWN*1.8)

        price_machine = Tex(":$5$", color=c1t, font_size=fs2).shift([1.4,2,0])
        price_cone = Tex(":$2$", color=c1t, font_size=fs2).shift([1.4,.6,0])



        # Action Sequence
        with self.voiceover(
                text = self.translate("Func_1_2.1I112q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("taxi_in")
            self.add_shift_sound(0.5)
            self.play(space_taxi.animate.shift(RIGHT*5), run_time=.5)

            self.wait_until_bookmark("prize_in")
            self.play(space_taxi.animate.scale(0.35), run_time=1)
            self.play(space_taxi.animate.shift([0,2,0]), Write(price_machine), run_time=1)

            self.wait_until_bookmark("fuel_in")
            self.play(FadeIn(space_fuel), run_time=1)
            self.play(FadeIn(price_cone), run_time=1)

            self.wait_until_bookmark("f_in")
            self.play(Write(f), run_time=1)

            self.wait_until_bookmark("g_in")
            self.play(Write(g), run_time=1)

            self.wait_until_bookmark("h_in")
            self.play(Write(h), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_12_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        space_taxi = ImageMobject(assets_folder / "img" / "space_taxi.png").move_to([0,2,0])
        space_taxi.scale(1.22/space_taxi.get_width())

        space_fuel = ImageMobject(assets_folder / "img" / "space_fuel.png").move_to(UP*0.6)
        space_fuel.scale(1.2/space_fuel.get_width())

        price_taxi = Tex(":$5$", color=c1t, font_size=fs1).shift([1.4,2,0])
        price_fuel = Tex(":$2$", color=c1t, font_size=fs1).shift([1.4,.6,0])


        func_correct_1 = MathTex("h(x)=", "5x", "-2x", color=c1t, font_size=fs1).shift(DOWN)
        func_correct_2 = MathTex("h(x)=", "3x", "", color=c1t, font_size=fs1).shift(DOWN)

        self.add(space_taxi, space_fuel, price_taxi, price_fuel)

        # Action Sequence
        with self.voiceover(
                text = self.translate("General.incorrect_6")+self.translate("Func_1_2.1I112a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("five_x")
            self.play(Write(func_correct_1[1]), run_time=1)

            self.wait_until_bookmark("two_x")
            self.play(Write(func_correct_1[2]), run_time=1)

            self.wait_until_bookmark("h_in")
            self.play(Write(func_correct_1[0]), run_time=1)

            self.wait_until_bookmark("f_in")
            self.play(TransformMatchingTex(func_correct_1, func_correct_2), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_12_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        space_taxi = ImageMobject(assets_folder / "img" / "space_taxi.png").move_to([0,2,0])
        space_taxi.scale(1.22/space_taxi.get_width())

        space_fuel = ImageMobject(assets_folder / "img" / "space_fuel.png").move_to(UP*0.6)
        space_fuel.scale(1.2/space_fuel.get_width())

        price_taxi = Tex(":$5$", color=c1t, font_size=fs1).shift([1.4,2,0])
        price_fuel = Tex(":$2$", color=c1t, font_size=fs1).shift([1.4,.6,0])


        func_correct_1 = MathTex("h(x)=", "5x", "-2x", color=c1t, font_size=fs1).shift(DOWN)
        func_correct_2 = MathTex("h(x)=", "3x", "", color=c1t, font_size=fs1).shift(DOWN)

        self.add(space_taxi, space_fuel, price_taxi, price_fuel)

        # Action Sequence
        with self.voiceover(
                text = self.translate("General.incorrect_6")+self.translate("Func_1_2.1I112a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("five_x")
            self.play(Write(func_correct_1[1]), run_time=1)

            self.wait_until_bookmark("two_x")
            self.play(Write(func_correct_1[2]), run_time=1)

            self.wait_until_bookmark("h_in")
            self.play(Write(func_correct_1[0]), run_time=1)

            self.wait_until_bookmark("f_in")
            self.play(TransformMatchingTex(func_correct_1, func_correct_2), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_2_I_1_12_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))

        space_taxi = ImageMobject(assets_folder / "img" / "space_taxi.png").move_to([0,2,0])
        space_taxi.scale(1.22/space_taxi.get_width())

        space_fuel = ImageMobject(assets_folder / "img" / "space_fuel.png").move_to(UP*0.6)
        space_fuel.scale(1.2/space_fuel.get_width())

        price_taxi = Tex(":$5$", color=c1t, font_size=fs1).shift([1.4,2,0])
        price_fuel = Tex(":$2$", color=c1t, font_size=fs1).shift([1.4,.6,0])


        func_correct_1 = MathTex("h(x)=", "5x", "-2x", color=c1t, font_size=fs1).shift(DOWN)
        func_correct_2 = MathTex("h(x)=", "3x", "", color=c1t, font_size=fs1).shift(DOWN)

        self.add(space_taxi, space_fuel, price_taxi, price_fuel)

        # Action Sequence
        with self.voiceover(
                text = self.translate("General.correct_6")+self.translate("Func_1_2.1I112a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("five_x")
            self.play(Write(func_correct_1[1]), run_time=1)

            self.wait_until_bookmark("two_x")
            self.play(Write(func_correct_1[2]), run_time=1)

            self.wait_until_bookmark("h_in")
            self.play(Write(func_correct_1[0]), run_time=1)

            self.wait_until_bookmark("f_in")
            self.play(TransformMatchingTex(func_correct_1, func_correct_2), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

###########################################
###########################################
class Func_1_2_I_1_13(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_1_2.1I1.f-terms"))
        zebra_thumbs = ImageMobject(assets_folder / "img" / "zebra_thumbs.png").move_to([-5,0,0])
        zebra_thumbs.scale(4/zebra_thumbs.get_width())

        # Action Sequence
        with self.voiceover(
                text = self.translate("Func_1_2.1I13.voiceover")
        ) as tracker:
            
            self.add_shift_sound(0.5)
            self.play(zebra_thumbs.animate.shift(RIGHT*5), run_time=.5)

        self.add_shift_sound(0.5)
        self.play(zebra_thumbs.animate.shift(RIGHT*5), run_time=.5)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


######################################################################################
class Func_1_2_I_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        apple = ImageMobject(assets_folder / "img" / "apple.png").scale(0.4).shift(UP*1.2+LEFT*1.2)

        # Add title to the scene
        self.add_title(self.translate("Func_1_2.1I1q.main.title"))

        term1 = MathTex("2x+3", color=c1t).shift(UP*1.5)
        term2 = MathTex("x^2-2", color=c1t).next_to(term1, DOWN)
        term3 = MathTex("x+3=7", color=c1t).next_to(term2, DOWN)
        left, right = term3.get_left()[0], term3.get_right()[0]
        top, bottom = term3.get_top()[1], term3.get_bottom()[1]
        strikeA = Line([left, bottom, 0], [right, top, 0], color=RED, stroke_width=5)
        strikeB = Line([left, top, 0], [right, bottom, 0], color=RED, stroke_width=5)
        appleCost = Tex(self.translate("Func_1_2.1I1q.main.apple-cost"), color=c1t, font_size=fs2).next_to(apple, RIGHT).shift(DOWN*0.3+LEFT*0.4)

        explainers = format_text_group(ast.literal_eval(self.translate("Func_1_2.1I1q.main.explainers")), font_size=fs3)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_2.1I1q.main.voiceover")
        ) as tracker:

            self.wait_until_bookmark("term1")
            self.play(Write(term1), run_time=1)

            self.wait_until_bookmark("term2")
            self.play(Write(term2), run_time=1)

            self.wait_until_bookmark("term3")
            self.play(Write(term3), run_time=1)
            self.wait(0.5)
            self.add_pencil_sound(1)
            self.play(Write(strikeA), Write(strikeB), run_time=1)

            self.wait_until_bookmark("unwriteTerms")
            self.play(Unwrite(term1), Unwrite(term2), Unwrite(term3), Unwrite(strikeA), Unwrite(strikeB), run_time=1)
            
            self.wait_until_bookmark("apple")
            self.play(FadeIn(apple), run_time=1)
            self.play(Write(appleCost), run_time=1)

            self.wait_until_bookmark("appleCost")
            self.play(FadeIn(explainers), run_time=1)


        # Wait for 4 seconds at the end of animation
        self.wait(4)

###########################################
###########################################
class Func_1_2_I_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        self.add_title(self.translate("Func_1_2.1I2.main.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                               x_labels=[-3, 0, 3], y_labels=[-6, 0, 6]).shift(DOWN)
        plane = cords[0]
        redx = plane.x_axis.copy().set_color(RED).set_stroke(width=4)
        self.add(cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, idle=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True

        self.add(cursor)

        func = MathTex("2x-2", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.8)
        func2 = MathTex("f(x)=2x-2", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.8)
        def f(x):
            return 2*x-2
        f_plotted = plane.plot(f, color=c3)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_2.1I2.main.voiceover")
        ) as tracker:

            self.wait_until_bookmark("term")
            self.play(Write(func), run_time=1)

            self.wait_until_bookmark("xaxis")
            self.play(Write(redx), run_time=3)

            self.wait_until_bookmark("plot")
            cursor.idle = False
            x, y, _ = cursor.get_center()
            self.play(CursorMoveResize(cursor, x, y, 0.15, 0.15), run_time=0.5)
            for x in [-3, -2, -1, 0, 1, 2, 3]:
                self.play(cursor.animate.move_to(plane.c2p(x, f(x))), run_time=0.5)
                self.add(cursor.copy().set_opacity(0.5).set_color(c3))
                self.wait(0.5)
            self.play(CursorMoveResize(cursor, xo, yo, 0.2, 0.2), run_time=0.5)

            self.wait_until_bookmark("func")
            self.add_pencil_sound(3)
            self.play(Write(f_plotted), run_time=3)

            self.wait_until_bookmark("xTerm")
            self.play(func.animate.scale(2), run_time=1)
            self.play(func.animate.scale(0.5), run_time=1)

            self.wait_until_bookmark("xFunc")
            xx, xy, _ = plane.c2p(2, 0)
            yx, yy, _ = plane.c2p(2, f(2))
            l = Line([xx, xy, 0], [yx, yy, 0], color=RED)
            self.play(CursorMoveResize(cursor, xx, xy, 0.2, 0.2), run_time=0.5)
            self.play(CursorMoveResize(cursor, yx, yy, 0.2, 0.2), run_time=0.5)
            self.play(Write(l), run_time=0.5)
            self.play(CursorMoveResize(cursor, xo, yo, 0.2, 0.2), run_time=0.5)

            self.wait_until_bookmark("termToFunc")
            self.play(TransformMatchingTex(func, func2), run_time=2)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

############################################
############################################
##### Practice Part ########################
############################################
############################################


# Topic: How do we get from a Term to a function?
class FuncTermQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        self.add_title(self.translate("Func_1_2.1I2q.main.title"))

        # Create the coordinate system
        plane = self.cords[0]
        self.add(self.cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, idle=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex(self.term, color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        fs_plotted = [plane.plot(self.fs[0], color=c3), plane.plot(self.fs[1], color=c4), plane.plot(self.fs[2], color=c5)]
        self.add(func)

        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_1_2.1I2.func-term-q-scene.voiceover"))
        ) as tracker:

            self.wait_until_bookmark("term")
            x,y,_ = func.get_center()
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x, y, func.get_width()+0.2, func.get_height()+0.2), run_time=0.5)

            self.wait_until_bookmark("blue")
            self.add_pencil_sound(2)
            self.play(Write(fs_plotted[0]), CursorMoveResize(cursor, xo, yo, 0.2, 0.2),  run_time=2)
            cursor.idle=True

            self.wait_until_bookmark("orange")
            self.add_pencil_sound(2)
            self.play(Write(fs_plotted[1]), run_time=2)

            self.wait_until_bookmark("lila")
            self.add_pencil_sound(2)
            self.play(Write(fs_plotted[2]), run_time=2)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


# Topic: How do we get from a Term to a function?
class FuncTermAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        self.add_title(self.translate("Func_1_2.1I2a.main.title"))

        # Create the coordinate system
        self.cords.shift(DOWN)
        plane = self.cords[0]
        self.add(self.cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, idle=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex(self.term, color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        fs_plotted = [plane.plot(self.fs[0], color=c3), plane.plot(self.fs[1], color=c4), plane.plot(self.fs[2], color=c5)]
        self.add(func)


        self.plugInTexts = ""
        for i in range(len(self.vals)):
            self.i = i
            if i < 2:
                self.plugInTexts += self.evaluate_string(self.translate("Func_1_2.1I2a.main.plug-in-texts-1"))
            elif i < len(self.vals) - 1:
                self.plugInTexts += self.evaluate_string(self.translate("Func_1_2.1I2a.main.plug-in-texts-2"))
            else:
                self.plugInTexts += self.evaluate_string(self.translate("Func_1_2.1I2a.main.plug-in-texts-3"))

        self.introText = ""
        if self.idx_selected == self.idx_correct:
            self.introText = self.translate("Func_1_2.1I2a.main.intro-text-correct")
        else:
            self.introText = self.translate("Func_1_2.1I2a.main.intro-text-incorrect")

        # Action Sequence
        with self.voiceover(
                text= self.evaluate_string(self.translate("Func_1_2.1I2a.func-term-answer.voiceover"))
        ) as tracker:
            
            print(self.evaluate_string(self.translate("Func_1_2.1I2a.func-term-answer.voiceover")))

            self.wait_until_bookmark("show_term")
            x,y,_ = func.get_center()
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x, y, func.get_width()+0.2, func.get_height()+0.2), run_time=0.5)

            self.wait_until_bookmark("addPoints")
            cursor.idle = False
            for i in range(len(self.vals)):
                self.wait_until_bookmark(f"val{i+1}")
                x,y,_ = plane.c2p(self.vals[i], self.fs[self.idx_correct](self.vals[i]))
                self.play(CursorMoveResize(cursor,x,y,0.2,0.2), run_time=1)
                self.add(cursor.copy().set_color(c3))

            self.wait_until_bookmark("connect")
            self.add_pencil_sound(2)
            self.play(Write(fs_plotted[self.idx_correct]), run_time=2)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


############################################
############################################
##### Instruction Part #####################
############################################
############################################

###########################################
###########################################
class Func_1_2_I_2_1_q(FuncTermQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_1_2.1I21q.answer-options")),
            correctAnswerIndex = 1,
            questionText = self.translate("Func_1_2.1I2_1q.question.which-graph-belongs") 
        )

    def construct(self):
        self.term = "f(x)=-x"
        self.termInWords = self.translate("Func_1_2.1I2_1q.main.term-in-words")
        self.cords = self.add_cords([-2, 2, 1], [-6, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 10])
        def f1(x):
            return x/2 - 2
        def f2(x):
            return -x
        def f3(x):
            return 3
        self.fs = [f1, f2, f3]
        self.idx_correct = 1
        super().construct()

class Func_1_2_I_2_1_a(FuncTermAnswerScene):

    def construct(self):
        self.term = "f(x)=-x"
        self.termInWords = self.translate("Func_1_2.1I2_1q.main.term-in-words")
        self.cords = self.add_cords([-2, 2, 1], [-6, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 10])
        def f1(x):
            return x/2 - 2
        def f2(x):
            return -x
        def f3(x):
            return 3
        self.fs = [f1, f2, f3]
        self.idx_correct = 1
        self.idx_selected = 0
        self.vals = [-2,-1,0,1,2]
        super().construct()

class Func_1_2_I_2_1_b(FuncTermAnswerScene):

    def construct(self):
        self.term = "f(x)=-x"
        self.termInWords = self.translate("Func_1_2.1I2_1q.main.term-in-words")
        self.cords = self.add_cords([-2, 2, 1], [-6, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 10],
                        x_labels=[-2, 0, 2], y_labels=[-6, 0, 10])
        def f1(x):
            return x/2 - 2
        def f2(x):
            return -x
        def f3(x):
            return 3
        self.fs = [f1, f2, f3]
        self.idx_correct = 1
        self.idx_selected = 1
        self.vals = [-2,-1,0,1,2]
        super().construct()

class Func_1_2_I_2_1_c(FuncTermAnswerScene):

    def construct(self):
        self.term = "f(x)=-x"
        self.termInWords = self.translate("Func_1_2.1I2_1q.main.term-in-words")
        self.cords = self.add_cords([-2, 2, 1], [-6, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 10])
        def f1(x):
            return x/2 - 2
        def f2(x):
            return -x
        def f3(x):
            return 3
        self.fs = [f1, f2, f3]
        self.idx_correct = 1
        self.idx_selected = 2
        self.vals = [-2,-1,0,1,2]
        super().construct()


# Class for creating the animation scene
# Topic: How do we get from a Term to a Function?
class Func_1_2_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):

        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        self.add_title(self.translate("Func_1_2.1I3.main.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6]).shift(DOWN)
        plane = cords[0]
        redx = plane.x_axis.copy().set_color(RED).set_stroke(width=4)
        self.add(cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, idle=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True

        self.add(cursor)

        func = MathTex("f(x)=x^2-3", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        def f(x):
            return x**2-3
        f_plotted = plane.plot(f, color=c3)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_2.1I3.main.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("term")
            self.wait(1)
            self.play(Write(func), run_time=2)

            self.wait_until_bookmark("show_term")
            x,y,_ = func.get_center()
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x, y, func.get_width()+0.2, func.get_height()+0.2), run_time=0.5)

            self.wait_until_bookmark("graph")
            self.wait(1)
            self.play(CursorMoveResize(cursor,xo,yo,0.2,0.2), Write(f_plotted), run_time=4)
            cursor.ide=True

        # Wait for 4 seconds at the end of animation
        self.wait(4)


# Class for creating the animation scene
# Topic: How do we get from a Term to a Function?
class Func_1_2_I_4(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):

        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        self.add_title(self.translate("Func_1_2.1I4.main.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                               x_labels=[-3, 0, 3], y_labels=[-6, 0, 6]).shift(DOWN)
        plane = cords[0]
        redx = plane.x_axis.copy().set_color(RED).set_stroke(width=4)
        y_min, y_max = plane.y_axis.n2p(-3)[1], plane.y_axis.n2p(6)[1]
        redy = Line([0, y_min, 0], [0, y_max, 0]).set_color(RED).set_stroke(width=4)
        self.add(cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, idle=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True

        self.add(cursor)

        func = MathTex("f(x)=x^2-3", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        def f(x):
            return x**2-3
        f_plotted = plane.plot(f, color=c3)

        domain = Tex(self.translate("Func_1_2.1I4.main.domain"), color=c3t, font_size=fs3, tex_environment="flushleft").next_to(func, DOWN, buff=.6)
        range = Tex(self.translate("Func_1_2.1I4.main.range"), color=c3t, font_size=fs3, tex_environment="flushleft").next_to(func, DOWN, buff=.6)
        range.shift(LEFT*(range.get_left()-domain.get_left()))
        self.add(func, f_plotted)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_2.1I4.main.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("domain_in")
            self.play(Write(domain), run_time=1)
            
            self.wait_until_bookmark("show_def")
            self.play(Write(redx), run_time=2)

            self.wait_until_bookmark("range_in")
            self.play(Transform(domain, range), run_time=.5)

            self.wait_until_bookmark("show_val")
            self.play(Write(redy), run_time=2)


        # Wait for 4 seconds at the end of animation
        self.wait(4)





############################################
############################################
##### Exercises ############################
############################################
############################################
class Func_1_2_P_1_1_q(FuncTermQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_1_2.1I21q.answer-options")),
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_2.1I2_1q.question.which-graph-belongs") 
        )

    def construct(self):

        self.term = "f(x)=x^2-3"
        self.termInWords = "f of x is equal to x squared minus three"
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                        x_labels=[-3, 0, 3], y_labels=[-6, 0, 6])
        def f1(x):
            return x**2-3
        def f2(x):
            return x**2
        def f3(x):
            return 3-x**2
        self.fs = [f1, f2, f3]
        self.idx_correct = 0

        super().construct()

class Func_1_2_P_1_1_a(FuncTermAnswerScene):

    def construct(self):
        self.term = "f(x)=x^2-3"
        self.termInWords = "f of x equals x squared minus three"
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                        x_labels=[-3, 0, 3], y_labels=[-6, 0, 6])
        def f1(x):
            return x**2-3
        def f2(x):
            return x**2
        def f3(x):
            return 3-x**2
        self.fs = [f1, f2, f3]
        self.idx_correct = 0
        self.idx_selected = 0
        self.vals = [-3,-2,-1,0,1,2,3]

        super().construct()

class Func_1_2_P_1_1_b(FuncTermAnswerScene):

    def construct(self):
        self.term = "f(x)=x^2-3"
        self.termInWords = "f of x is equal to x squared minus three"
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                        x_labels=[-3, 0, 3], y_labels=[-6, 0, 6])
        def f1(x):
            return x**2-3
        def f2(x):
            return x**2
        def f3(x):
            return 3-x**2
        self.fs = [f1, f2, f3]
        self.idx_correct = 0
        self.idx_selected = 1
        self.vals = [-3,-2,-1,0,1,2,3]

        super().construct()

class Func_1_2_P_1_1_c(FuncTermAnswerScene):

    def construct(self):
        self.term = "f(x)=x^2-3"
        self.termInWords = "f of x is equal to x squared minus three"
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                        x_labels=[-3, 0, 3], y_labels=[-6, 0, 6])
        def f1(x):
            return x**2-3
        def f2(x):
            return x**2
        def f3(x):
            return 3-x**2
        self.fs = [f1, f2, f3]
        self.idx_correct = 0
        self.idx_selected = 2
        self.vals = [-3,-2,-1,0,1,2,3]

        super().construct()


#################################################
#################################################
class Func_1_2_P_1_2_q(FuncTermQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_1_2.1I21q.answer-options")),
            correctAnswerIndex = 1,
            questionText = self.translate("Func_1_2.1I2_1q.question.which-graph-belongs") 
        )

    def construct(self):
        self.term = "f(x)=x^3"
        self.termInWords = "f of x is equal to x cubed"
        self.cords = self.add_cords([-3, 3, 1], [-27, 27, 9], x_ticks=[-3, 0, 3], y_ticks=[-27, 0, 27],
                        x_labels=[-3, 0, 3], y_labels=[-27, 0, 27])
        def f1(x):
            return x**2
        def f2(x):
            return x**3
        def f3(x):
            return x+3
        self.fs = [f1, f2, f3]
        self.idx_correct = 1
        super().construct()

class Func_1_2_P_1_2_a(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=x^3"
        self.termInWords = "f of x is equal to x cubed"
        self.cords = self.add_cords([-3, 3, 1], [-27, 27, 9], x_ticks=[-3, 0, 3], y_ticks=[-27, 0, 27],
                        x_labels=[-3, 0, 3], y_labels=[-27, 0, 27])
        def f1(x):
            return x**2
        def f2(x):
            return x**3
        def f3(x):
            return x+3
        self.fs = [f1, f2, f3]
        self.idx_correct = 1
        self.idx_selected = 0
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()

class Func_1_2_P_1_2_b(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=x^3"
        self.termInWords = "f of x is equal to x cubed"
        self.cords = self.add_cords([-3, 3, 1], [-27, 27, 9], x_ticks=[-3, 0, 3], y_ticks=[-27, 0, 27],
                        x_labels=[-3, 0, 3], y_labels=[-27, 0, 27])
        def f1(x):
            return x**2
        def f2(x):
            return x**3
        def f3(x):
            return x+3
        self.fs = [f1, f2, f3]
        self.idx_correct = 1
        self.idx_selected = 1
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()

class Func_1_2_P_1_2_c(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=x^3"
        self.termInWords = "f of x is equal to x cubed"
        self.cords = self.add_cords([-3, 3, 1], [-27, 27, 9], x_ticks=[-3, 0, 3], y_ticks=[-27, 0, 27],
                        x_labels=[-3, 0, 3], y_labels=[-27, 0, 27])
        def f1(x):
            return x**2
        def f2(x):
            return x**3
        def f3(x):
            return x+3
        self.fs = [f1, f2, f3]
        self.idx_correct = 1
        self.idx_selected = 2
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()

#################################################
#################################################
class Func_1_2_P_1_3_q(FuncTermQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_1_2.1I21q.answer-options")),
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_2.1I2_1q.question.which-graph-belongs") 
        )

    def construct(self):
        self.term = "f(x)=2x^2 + 1"
        self.termInWords = self.translate("Func_1_2.P13.term-in-words")
        self.cords = self.add_cords([-2, 2, 1], [-6, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 10])
        def f1(x):
            return 2*x**2 + 1
        def f2(x):
            return x**2
        def f3(x):
            return 2*x + 1
        self.fs = [f1, f2, f3]
        self.idx_correct = 0
        super().construct()

class Func_1_2_P_1_3_a(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=2x^2 + 1"
        self.termInWords = self.translate("Func_1_2.P13.term-in-words")
        self.cords = self.add_cords([-2, 2, 1], [-6, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 10],
                        x_labels=[-2, 0, 2], y_labels=[-6, 0, 10])
        def f1(x):
            return 2*x**2 + 1
        def f2(x):
            return x**2
        def f3(x):
            return 2*x + 1
        self.fs = [f1, f2, f3]
        self.idx_correct = 0
        self.idx_selected = 0
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()

class Func_1_2_P_1_3_b(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=2x^2 + 1"
        self.termInWords = self.translate("Func_1_2.P13.term-in-words")
        self.cords = self.add_cords([-2, 2, 1], [-6, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 10],
                        x_labels=[-2, 0, 2], y_labels=[-6, 0, 10])
        def f1(x):
            return 2*x**2 + 1
        def f2(x):
            return x**2
        def f3(x):
            return 2*x + 1
        self.fs = [f1, f2, f3]
        self.idx_correct = 0
        self.idx_selected = 1
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()

class Func_1_2_P_1_3_c(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=2x^2 + 1"
        self.termInWords = self.translate("Func_1_2.P13.term-in-words")
        self.cords = self.add_cords([-2, 2, 1], [-6, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 10],
                        x_labels=[-2, 0, 2], y_labels=[-6, 0, 10])
        def f1(x):
            return 2*x**2 + 1
        def f2(x):
            return x**2
        def f3(x):
            return 2*x + 1
        self.fs = [f1, f2, f3]
        self.idx_correct = 0
        self.idx_selected = 2
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()

#################################################
#################################################
class Func_1_2_P_1_4_q(FuncTermQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_1_2.1I21q.answer-options")),
            correctAnswerIndex = 2,
            questionText = self.translate("Func_1_2.1I2_1q.question.which-graph-belongs") 
        )

    def construct(self):
        self.term = "f(x)=3x^2 - x"
        self.termInWords = self.translate("Func_1_2.P14.term-in-words")
        self.cords = self.add_cords([-2, 2, 1], [-6, 18, 3], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 6, 12, 18],
                        x_labels=[-2, 0, 2], y_labels=[-6, 0, 6, 12, 18])
        def f3(x):
            return 3*x**2 - x
        def f2(x):
            return x**2
        def f1(x):
            return x - 3
        self.fs = [f1, f2, f3]
        self.idx_correct = 2
        super().construct()

class Func_1_2_P_1_4_a(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=3x^2 - x"
        self.termInWords = self.translate("Func_1_2.P14.term-in-words")
        self.cords = self.add_cords([-2, 2, 1], [-6, 18, 3], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 6, 12, 18],
                        x_labels=[-2, 0, 2], y_labels=[-6, 0, 6, 12, 18])
        def f3(x):
            return 3*x**2 - x
        def f2(x):
            return x**2
        def f1(x):
            return x - 3
        self.fs = [f1, f2, f3]
        self.idx_correct = 2
        self.idx_selected = 0
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()

class Func_1_2_P_1_4_b(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=3x^2 - x"
        self.termInWords = self.translate("Func_1_2.P14.term-in-words")
        self.cords = self.add_cords([-2, 2, 1], [-6, 18, 3], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 6, 12, 18],
                        x_labels=[-2, 0, 2], y_labels=[-6, 0, 6, 12, 18])
        def f3(x):
            return 3*x**2 - x
        def f2(x):
            return x**2
        def f1(x):
            return x - 3
        self.fs = [f1, f2, f3]
        self.idx_correct = 2
        self.idx_selected = 1
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()

class Func_1_2_P_1_4_c(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=3x^2 - x"
        self.termInWords = self.translate("Func_1_2.P14.term-in-words")
        self.cords = self.add_cords([-2, 2, 1], [-6, 18, 3], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 6, 12, 18],
                        x_labels=[-2, 0, 2], y_labels=[-6, 0, 6, 12, 18])
        def f3(x):
            return 3*x**2 - x
        def f2(x):
            return x**2
        def f1(x):
            return x - 3
        self.fs = [f1, f2, f3]
        self.idx_correct = 2
        self.idx_selected = 2
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()


#################################################
#################################################
# New Exercise Type
#################################################
#################################################


# This class presents a function and then asks what
# the corresponding domain and what the corresponding
# range is. It's in German for now.
class FuncDefinitionsQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):

        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        # Add title to the scene
        self.add_title(self.translate("Func_1_2.func-def-q-scene"))

        # Create the coordinate system
        self.cords.shift(DOWN*0.4)
        plane = self.cords[0]
        self.add(self.cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, idle=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex(self.funcTex, color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        f_plotted = plane.plot(self.f, color=c3)
        self.add(func)



        domain = Tex(self.translate("Func_1_2.func-def-q.domain"), color=c3t, font_size=fs3).next_to(func, DOWN, buff=.6)
        range = Tex(self.translate("Func_1_2.func-def-q-range"), color=c3t, font_size=fs3).next_to(domain, DOWN, buff=.2)

        # Action Sequence
        with self.voiceover(
            text=self.evaluate_string(self.translate("Func_1_2.func-def-q-scene-voiceover"))
        ) as tracker:

            self.wait_until_bookmark("Func")
            self.add_pencil_sound(2)
            self.play(Write(f_plotted), run_time=2)

            self.wait_until_bookmark("domain")
            self.play(Write(domain), run_time=.5)

            self.wait_until_bookmark("range")
            self.play(Write(range), run_time=.5)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class FuncDefinitionsAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):

        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        def get_num(x):
            if x < 0:
                return "Minus " + nums[abs(x)]
            else:
                return nums[x]


        self.add_title(self.translate("Func_1_2.func-def.title"))

        # Create the coordinate system
        plane = self.cords[0]
        self.add(self.cords)

        redx = plane.x_axis.copy().set_color(RED).set_stroke(width=4)
        y_min, y_max = plane.y_axis.n2p(self.range[0])[1], plane.y_axis.n2p(self.range[1])[1]
        redy = Line([0, y_min, 0], [0, y_max, 0]).set_color(RED).set_stroke(width=4)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, idle=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex(self.funcTex, color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        f_plotted = plane.plot(self.f, color=c3)
        self.add(func, f_plotted)
        domain = VGroup(Tex(self.translate("Func_1_2.func-def.domain"), color=c3t, font_size=fs3), Tex(f"$\\rightarrow[{self.domain[0]},{self.domain[1]}]$.", color=c3t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=RIGHT)
        range = VGroup(Tex(self.translate("Func_1_2.func-def.range"), color=c3t, font_size=fs3), Tex(f"$\\rightarrow[{self.range[0]},{self.range[1]}]$.", color=c3t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=RIGHT)
        dr = VGroup(domain, range).arrange(DOWN, buff=.6, aligned_edge=RIGHT).next_to(func, DOWN, buff=.6)

        intro = self.translate("Func_1_2.func-def.intro-incorrect")
        if self.isTrue:
            intro = self.translate("Func_1_2.func-def.intro-correct")
        # Action Sequence
        self.intro = intro
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_1_2.func-def.voiceover"))
        ) as tracker:
            
            self.wait_until_bookmark("define_domain")
            self.play(Write(domain[0]), run_time=.5)

            self.wait_until_bookmark("domain")
            self.play(Write(domain[1]), run_time=.5)
            self.play(Write(redx), run_time=2)

            self.wait_until_bookmark("define_range")
            self.play(Write(range[0]), run_time=.5)

            self.wait_until_bookmark("range")
            self.play(Write(range[1]), run_time=.5)
            self.play(Write(redy), run_time=2)

        # Wait for 4 seconds at the end of animation
        self.wait(4)



#################################################
#################################################
class Func_1_2_P_2_1_q(FuncDefinitionsQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_1_2.P21.q.answer-options")),
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_2.P21.q.question-text") 
        )

    def construct(self):

        # Setting up the specific function
        self.funcTex = "f(x)=x^2-3"
        self.f = lambda x: x**2-3
        self.funcSpoken = self.translate("Func_1_2.P21.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6])

        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_1_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-3"
        self.f = lambda x: x**2-3
        self.funcSpoken = self.translate("Func_1_2.P21.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6])
        self.isTrue = True
        self.domain = [-3,3]
        self.range = [-3,6]
        super().construct()

class Func_1_2_P_2_1_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-3"
        self.f = lambda x: x**2-3
        self.funcSpoken = self.translate("Func_1_2.P21.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,6]
        super().construct()

class Func_1_2_P_2_1_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-3"
        self.f = lambda x: x**2-3
        self.funcSpoken = self.translate("Func_1_2.P21.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,6]
        super().construct()

class Func_1_2_P_2_1_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-3"
        self.f = lambda x: x**2-3
        self.funcSpoken = self.translate("Func_1_2.P21.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,6]
        super().construct()



#################################################
#################################################
class Func_1_2_P_2_2_q(FuncDefinitionsQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_1_2.P22.q.answer-options")),
            correctAnswerIndex = 2,
            questionText = self.translate("Func_1_2.P21.q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=3,
                answerOptionMatcher=self.translate("Func_1_2.P21.q.answer-option-matchers"),
                answerOptionsTypes={
                    "d1": "number",
                    "d2": "number",
                    "w1": "number",
                    "w2": "number"
                }
            )
        )

    def construct(self):
        # Setting up the specific function
        self.funcTex = "f(x)=x^3+2"
        self.f = lambda x: x**3+2
        self.funcSpoken = self.translate("Func_1_2.P22.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-8, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-8, 0, 10])
        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_2_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^3+2"
        self.f = lambda x: x**3+2
        self.funcSpoken = self.translate("Func_1_2.P22.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-8, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-8, 0, 10])
        self.isTrue = False
        self.domain = [-1,9]
        self.range = [-2,2]
        super().construct()

class Func_1_2_P_2_2_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^3+2"
        self.f = lambda x: x**3+2
        self.funcSpoken = self.translate("Func_1_2.P22.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-8, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-8, 0, 10])
        self.isTrue = False
        self.domain = [-1,9]
        self.range = [-2,2]
        super().construct()

class Func_1_2_P_2_2_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^3+2"
        self.f = lambda x: x**3+2
        self.funcSpoken = self.translate("Func_1_2.P22.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-8, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-8, 0, 10])
        self.isTrue = True
        self.domain = [-1,9]
        self.range = [-2,2]
        super().construct()

class Func_1_2_P_2_2_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^3+2"
        self.f = lambda x: x**3+2
        self.funcSpoken = self.translate("Func_1_2.P22.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-8, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-8, 0, 10])
        self.isTrue = False
        self.domain = [-1,9]
        self.range = [-2,2]
        super().construct()

#################################################
#################################################
class Func_1_2_P_2_3_q(FuncDefinitionsQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_1_2.P23.q.answer-options")),
            correctAnswerIndex = 1,
            questionText = self.translate("Func_1_2.P21.q.question-text") 
        )

    def construct(self):
        # Setting up the specific function
        self.funcTex = "f(x)=2x"
        self.f = lambda x: 2*x
        self.funcSpoken = self.translate("Func_1_2.P23.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-4, 4, 1], x_ticks=[-2, 0, 2], y_ticks=[-4, 0, 4])
        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_3_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=2x"
        self.f = lambda x: 2*x
        self.funcSpoken = self.translate("Func_1_2.P23.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-4, 4, 1], x_ticks=[-2, 0, 2], y_ticks=[-4, 0, 4])
        self.isTrue = True  # Set to True for the correct answer
        self.domain = [-2,2]
        self.range = [-4,4]
        super().construct()

class Func_1_2_P_2_3_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=2x"
        self.f = lambda x: 2*x
        self.funcSpoken = self.translate("Func_1_2.P23.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-4, 4, 1], x_ticks=[-2, 0, 2], y_ticks=[-4, 0, 4])
        self.isTrue = False
        self.domain = [-2,2]
        self.range = [-4,4]
        super().construct()

class Func_1_2_P_2_3_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=2x"
        self.f = lambda x: 2*x
        self.funcSpoken = self.translate("Func_1_2.P23.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-4, 4, 1], x_ticks=[-2, 0, 2], y_ticks=[-4, 0, 4])
        self.isTrue = False
        self.domain = [-2,2]
        self.range = [-4,4]
        super().construct()

class Func_1_2_P_2_3_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=2x"
        self.f = lambda x: 2*x
        self.funcSpoken = self.translate("Func_1_2.P23.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-4, 4, 1], x_ticks=[-2, 0, 2], y_ticks=[-4, 0, 4])
        self.isTrue = False
        self.domain = [-2,2]
        self.range = [-4,4]
        super().construct()


#################################################
#################################################
class Func_1_2_P_2_4_q(FuncDefinitionsQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_1_2.P24.q.answer-options")),
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_2.P21.q.question-text") 
        )

    def construct(self):
        # Setting up the specific function
        self.funcTex = "f(x)=4x-5"
        self.f = lambda x: 4*x - 5
        self.funcSpoken = self.translate("Func_1_2.P24.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-12, 12, 4], x_ticks=[-3, 0, 3], y_ticks=[-12, 0, 12])
        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_4_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=4x-5"
        self.f = lambda x: 4*x - 5
        self.funcSpoken = self.translate("Func_1_2.P24.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-12, 12, 4], x_ticks=[-3, 0, 3], y_ticks=[-12, 0, 12])
        self.isTrue = True  # Set to True for the correct answer
        self.domain = [-3,3]
        self.range = [-17,7]
        super().construct()

class Func_1_2_P_2_4_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=4x-5"
        self.f = lambda x: 4*x - 5
        self.funcSpoken = self.translate("Func_1_2.P24.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-12, 12, 4], x_ticks=[-3, 0, 3], y_ticks=[-12, 0, 12])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,3]
        super().construct()

class Func_1_2_P_2_4_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=4x-5"
        self.f = lambda x: 4*x - 5
        self.funcSpoken = self.translate("Func_1_2.P24.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-12, 12, 4], x_ticks=[-3, 0, 3], y_ticks=[-12, 0, 12])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,3]
        super().construct()

class Func_1_2_P_2_4_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=4x-5"
        self.f = lambda x: 4*x - 5
        self.funcSpoken = self.translate("Func_1_2.P24.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-12, 12, 4], x_ticks=[-3, 0, 3], y_ticks=[-12, 0, 12])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,3]
        super().construct()


#################################################
#################################################
class Func_1_2_P_2_5_q(FuncDefinitionsQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_1_2.P25.q.answer-options")),
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_2.P21.q.question-text") 
        )

    def construct(self):
        # Setting up the specific function
        self.funcTex = "f(x)=x^2+x-2"
        self.f = lambda x: x**2 + x - 2
        self.funcSpoken = self.translate("Func_1_2.P25.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 10, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 10])
        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_5_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2+x-2"
        self.f = lambda x: x**2 + x - 2
        self.funcSpoken = self.translate("Func_1_2.P25.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 10, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 10])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-10,10]
        super().construct()

class Func_1_2_P_2_5_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2+x-2"
        self.f = lambda x: x**2 + x - 2
        self.funcSpoken = self.translate("Func_1_2.P25.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 10, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 10])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,10]
        super().construct()

class Func_1_2_P_2_5_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2+x-2"
        self.f = lambda x: x**2 + x - 2
        self.funcSpoken = self.translate("Func_1_2.P25.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 10, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 10])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,10]
        super().construct()

class Func_1_2_P_2_5_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2+x-2"
        self.f = lambda x: x**2 + x - 2
        self.funcSpoken = self.translate("Func_1_2.P25.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 10, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 10])
        self.isTrue = True  # Set to True for the correct answer
        self.domain = [-3,3]
        self.range = [-4,10]
        super().construct()


#################################################
#################################################
class Func_1_2_P_2_6_q(FuncDefinitionsQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_1_2.P26.q.answer-options")),
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_2.P21.q.question-text") 
        )

    def construct(self):
        # Setting up the specific function
        self.funcTex = "f(x)=3x^2-2x+1"
        self.f = lambda x: 3*x**2 - 2*x + 1
        self.funcSpoken = self.translate("Func_1_2.P26.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-2, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-2, 0, 10])
        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_6_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=3x^2-2x+1"
        self.f = lambda x: 3*x**2 - 2*x + 1
        self.funcSpoken = self.translate("Func_1_2.P26.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-2, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-2, 0, 10])
        self.isTrue = True  # Set to True for the correct answer
        self.domain = [-2,3]
        self.range = [9,17]
        super().construct()

class Func_1_2_P_2_6_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=3x^2-2x+1"
        self.f = lambda x: 3*x**2 - 2*x + 1
        self.funcSpoken = self.translate("Func_1_2.P26.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-2, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-2, 0, 10])
        self.isTrue = False
        self.domain = [-2,3]
        self.range = [-1,12]
        super().construct()

class Func_1_2_P_2_6_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=3x^2-2x+1"
        self.f = lambda x: 3*x**2 - 2*x + 1
        self.funcSpoken = self.translate("Func_1_2.P26.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-2, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-2, 0, 10])
        self.isTrue = False
        self.domain = [-2,3]
        self.range = [9,17]
        super().construct()

class Func_1_2_P_2_6_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=3x^2-2x+1"
        self.f = lambda x: 3*x**2 - 2*x + 1
        self.funcSpoken = self.translate("Func_1_2.P26.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-2, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-2, 0, 10])
        self.isTrue = False
        self.domain = [-2,3]
        self.range = [-3,3]
        super().construct()







# Add the scene to prototypes
PROTOTYPES = [
    PagePrototypeVideo.from_scene(Func_1_2_I_1_1_q),
    PagePrototypeQuestion.from_scene(Func_1_2_I_1_1_q),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_1_a),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_1_b),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_1_c),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_2_q),
    PagePrototypeQuestion.from_scene(Func_1_2_I_1_2_q),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_2_a),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_2_b),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_2_c),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_2_d),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_4),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_5_q),
    PagePrototypeQuestion.from_scene(Func_1_2_I_1_5_q),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_5_a),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_5_b),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_5_c),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_5_d),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_6_q),
    PagePrototypeQuestion.from_scene(Func_1_2_I_1_6_q),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_6_a),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_6_b),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_6_c),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_6_d),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_7_q),
    PagePrototypeQuestion.from_scene(Func_1_2_I_1_7_q),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_7_a),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_7_b),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_7_c),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_7_d),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_8),
#
    PagePrototypeVideo.from_scene(Func_1_2_I_1_9_q),
    PagePrototypeQuestion.from_scene(Func_1_2_I_1_9_q),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_9_a),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_9_b),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_9_c),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_10_q),
    PagePrototypeQuestion.from_scene(Func_1_2_I_1_10_q),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_10_a),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_10_b),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_10_c),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_11_q),
    PagePrototypeQuestion.from_scene(Func_1_2_I_1_11_q),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_11_a),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_11_b),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_11_c),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_12_q),
    PagePrototypeQuestion.from_scene(Func_1_2_I_1_12_q),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_12_a),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_12_b),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_12_c),
    PagePrototypeVideo.from_scene(Func_1_2_I_1_13),
#
    PagePrototypeVideo.from_scene(Func_1_2_I_1),
    PagePrototypeVideo.from_scene(Func_1_2_I_2),
    PagePrototypeVideo.from_scene(Func_1_2_I_2_1_q),
    PagePrototypeQuestion.from_scene(Func_1_2_I_2_1_q),
    PagePrototypeVideo.from_scene(Func_1_2_I_2_1_a),
    PagePrototypeVideo.from_scene(Func_1_2_I_2_1_b),
    PagePrototypeVideo.from_scene(Func_1_2_I_2_1_c),
    PagePrototypeVideo.from_scene(Func_1_2_I_3),
    PagePrototypeVideo.from_scene(Func_1_2_I_4),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_1_q),
    PagePrototypeQuestion.from_scene(Func_1_2_P_1_1_q),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_1_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_1_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_1_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_2_q),
    PagePrototypeQuestion.from_scene(Func_1_2_P_1_2_q),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_2_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_2_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_2_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_3_q),
    PagePrototypeQuestion.from_scene(Func_1_2_P_1_3_q),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_3_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_3_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_3_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_4_q),
    PagePrototypeQuestion.from_scene(Func_1_2_P_1_4_q),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_4_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_4_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_4_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_1_q),
    PagePrototypeQuestion.from_scene(Func_1_2_P_2_1_q),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_1_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_1_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_1_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_1_d),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_2_q),
    PagePrototypeQuestion.from_scene(Func_1_2_P_2_2_q),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_2_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_2_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_2_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_2_d),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_3_q),
    PagePrototypeQuestion.from_scene(Func_1_2_P_2_3_q),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_3_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_3_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_3_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_3_d),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_4_q),
    PagePrototypeQuestion.from_scene(Func_1_2_P_2_4_q),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_4_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_4_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_4_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_4_d),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_5_q),
    PagePrototypeQuestion.from_scene(Func_1_2_P_2_5_q),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_5_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_5_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_5_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_5_d),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_6_q),
    PagePrototypeQuestion.from_scene(Func_1_2_P_2_6_q),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_6_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_6_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_6_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_6_d),
]
