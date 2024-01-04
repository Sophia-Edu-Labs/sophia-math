# 7_1: Trigonometric Functions: Degrees and Radians

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

#####################################
#####################################
class Func_7_1_I_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$90^\circ$", "$180^\circ$", "$270^\circ$", "$360^\circ$"],
            correctAnswerIndex = 2,
            questionText=self.translate("Func_7_1.I1.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_7_1.I1.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)

        self.add(cursor)

        a = ValueTracker(0)

        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE)
        line_start = Line(ORIGIN, get_arc().get_start(), color=BLUE)
        get_line_end = lambda: Line(ORIGIN, get_arc().get_end(), color=BLUE)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        angle = DecimalNumber(0, num_decimal_places=0, color=c1t, font_size=fs2).add_updater(lambda m: m.set_value(a.get_value()*360)).shift(1.6*DOWN)
        deg = MathTex("{^\\circ}", color=c1t, font_size=fs2).next_to(angle, RIGHT, buff=0.4).shift(0.1*UP)
        self.add(angle, deg)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_1.I1.q.voiceover")
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(1))

            self.wait_until_bookmark("degrees")
            x,y,_ = angle.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("full_circle")
            x,y,_ = arc.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(MoveAlongPath(cursor, arc))

            self.wait_until_bookmark("half_circle")
            self.play(a.animate.set_value(0.5), run_time=0.5)
            self.play(MoveAlongPath(cursor, arc))
            x,y,_ = arc.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("quarter_circle")
            self.play(a.animate.set_value(0.25), run_time=0.5)
            self.play(MoveAlongPath(cursor, arc))
            self.play(CursorMoveTo(cursor,0,0))
            cursor.idle=True

            self.wait_until_bookmark("threequartercircle")
            cursor.idle=False
            self.play(a.animate.set_value(0.75), run_time=0.5)
            x,y,_ = arc.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(MoveAlongPath(cursor, arc))
            self.play(CursorMoveTo(cursor,0,0))
            cursor.idle=True

        self.wait(4)


class Func_7_1_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_7_1.I1.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)

        self.add(cursor)

        a = ValueTracker(0)

        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE).shift(UP)
        line_start = Line(UP, get_arc().get_start(), color=BLUE)
        get_line_end = lambda: Line(UP, get_arc().get_end(), color=BLUE)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        three_quarter = Tex(self.translate("Func_7_1.I1.a.three_quarter"), color=c1t, font_size=fs3)
        full_circle = Tex(self.translate("Func_7_1.I1.a.full_circle"), color=c1t, font_size=fs3)
        explanations = VGroup(three_quarter, full_circle).arrange(DOWN, buff=0.2, aligned_edge=LEFT).shift(DOWN*1.2)

        equation = MathTex("\\tfrac{3}{4}", "\\cdot",  "360^\\circ", "=", "270^\\circ", color=c1t, font_size=fs2).shift(2.2*DOWN)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_1.I1.a.voiceover")
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(0.75))

            self.wait_until_bookmark("three_quarter")
            x,y,_ = three_quarter.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), Write(three_quarter), run_time=0.5)

            self.wait_until_bookmark("full_circle")
            x,y,_ = full_circle.get_center()+0.4*DOWN
            self.play(Write(full_circle), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("equation_1")
            x,y, _ = equation[0].get_center()+0.4*DOWN
            self.play(Write(equation[0]), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("equation_2")
            x,y, _ = equation[2].get_center()+0.4*DOWN
            self.play(Write(equation[1]), Write(equation[2]), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("equation_3")
            x,y, _ = equation[4].get_center()+0.4*DOWN
            self.play(Write(equation[3]), Write(equation[4]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

        self.wait(4)

class Func_7_1_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_7_1.I1.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)

        self.add(cursor)

        a = ValueTracker(0)

        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE).shift(UP)
        line_start = Line(UP, get_arc().get_start(), color=BLUE)
        get_line_end = lambda: Line(UP, get_arc().get_end(), color=BLUE)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        three_quarter = Tex(self.translate("Func_7_1.I1.a.three_quarter"), color=c1t, font_size=fs3)
        full_circle = Tex(self.translate("Func_7_1.I1.a.full_circle"), color=c1t, font_size=fs3)
        explanations = VGroup(three_quarter, full_circle).arrange(DOWN, buff=0.2, aligned_edge=LEFT).shift(DOWN*1.2)

        equation = MathTex("\\tfrac{3}{4}", "\\cdot",  "360^\\circ", "=", "270^\\circ", color=c1t, font_size=fs2).shift(2.2*DOWN)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_1.I1.a.voiceover")
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(0.75))

            self.wait_until_bookmark("three_quarter")
            x,y,_ = three_quarter.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), Write(three_quarter), run_time=0.5)

            self.wait_until_bookmark("full_circle")
            x,y,_ = full_circle.get_center()+0.4*DOWN
            self.play(Write(full_circle), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("equation_1")
            x,y, _ = equation[0].get_center()+0.4*DOWN
            self.play(Write(equation[0]), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("equation_2")
            x,y, _ = equation[2].get_center()+0.4*DOWN
            self.play(Write(equation[1]), Write(equation[2]), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("equation_3")
            x,y, _ = equation[4].get_center()+0.4*DOWN
            self.play(Write(equation[3]), Write(equation[4]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

        self.wait(4)

class Func_7_1_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_7_1.I1.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)

        self.add(cursor)

        a = ValueTracker(0)

        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE).shift(UP)
        line_start = Line(UP, get_arc().get_start(), color=BLUE)
        get_line_end = lambda: Line(UP, get_arc().get_end(), color=BLUE)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        three_quarter = Tex(self.translate("Func_7_1.I1.a.three_quarter"), color=c1t, font_size=fs3)
        full_circle = Tex(self.translate("Func_7_1.I1.a.full_circle"), color=c1t, font_size=fs3)
        explanations = VGroup(three_quarter, full_circle).arrange(DOWN, buff=0.2, aligned_edge=LEFT).shift(DOWN*1.2)

        equation = MathTex("\\tfrac{3}{4}", "\\cdot",  "360^\\circ", "=", "270^\\circ", color=c1t, font_size=fs2).shift(2.2*DOWN)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_1.I1.c.voiceover")
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(0.75))

            self.wait_until_bookmark("three_quarter")
            x,y,_ = three_quarter.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), Write(three_quarter), run_time=0.5)

            self.wait_until_bookmark("full_circle")
            x,y,_ = full_circle.get_center()+0.4*DOWN
            self.play(Write(full_circle), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("equation_1")
            x,y, _ = equation[0].get_center()+0.4*DOWN
            self.play(Write(equation[0]), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("equation_2")
            x,y, _ = equation[2].get_center()+0.4*DOWN
            self.play(Write(equation[1]), Write(equation[2]), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("equation_3")
            x,y, _ = equation[4].get_center()+0.4*DOWN
            self.play(Write(equation[3]), Write(equation[4]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

        self.wait(4)

class Func_7_1_I_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_7_1.I1.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)

        self.add(cursor)

        a = ValueTracker(0)

        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE).shift(UP)
        line_start = Line(UP, get_arc().get_start(), color=BLUE)
        get_line_end = lambda: Line(UP, get_arc().get_end(), color=BLUE)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        three_quarter = Tex(self.translate("Func_7_1.I1.a.three_quarter"), color=c1t, font_size=fs3)
        full_circle = Tex(self.translate("Func_7_1.I1.a.full_circle"), color=c1t, font_size=fs3)
        explanations = VGroup(three_quarter, full_circle).arrange(DOWN, buff=0.2, aligned_edge=LEFT).shift(DOWN*1.2)

        equation = MathTex("\\tfrac{3}{4}", "\\cdot",  "360^\\circ", "=", "270^\\circ", color=c1t, font_size=fs2).shift(2.2*DOWN)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_1.I1.a.voiceover")
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(0.75))

            self.wait_until_bookmark("three_quarter")
            x,y,_ = three_quarter.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), Write(three_quarter), run_time=0.5)

            self.wait_until_bookmark("full_circle")
            x,y,_ = full_circle.get_center()+0.4*DOWN
            self.play(Write(full_circle), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("equation_1")
            x,y, _ = equation[0].get_center()+0.4*DOWN
            self.play(Write(equation[0]), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("equation_2")
            x,y, _ = equation[2].get_center()+0.4*DOWN
            self.play(Write(equation[1]), Write(equation[2]), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("equation_3")
            x,y, _ = equation[4].get_center()+0.4*DOWN
            self.play(Write(equation[3]), Write(equation[4]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

        self.wait(4)
        
        
        
#####################################
#####################################
class Func_7_1_I_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\frac{3}{2}{\pi}$", "$\\frac{1}{2}{\pi}$", "$2{\pi}$", "${\pi}$"],
            correctAnswerIndex = 3,
            questionText=self.translate("Func_7_1.I2.q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=0,
                answerOptionMatcher="$\key{a}$",
                answerOptionsTypes={
                    "a": "number"
                },
                answerOptionsEquality={
                    "a": {
                        "roundingDecimalPlaces": 2,
                        "tolerance": 0.1
                    }
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_1.I2.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True, y=0.6)

        self.add(cursor)

        a = ValueTracker(0)

        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE, fill_color=BLUE).shift(0.6*UP)
        line_start = Line(0.6*UP, get_arc().get_start(), color=BLUE).add_updater(lambda m: m.set_stroke_width(0 if a.get_value() == 1 else 4))
        get_line_end = lambda: Line(0.6*UP, get_arc().get_end(), color=BLUE, stroke_width = 0 if a.get_value() == 1 else 4)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        degrees = Tex(self.translate("Func_7_1.I2.q.deg"), color=c1t, font_size=fs2)
        radians = Tex(self.translate("Func_7_1.I2.q.rad"), color=c1t, font_size=fs2)
        measures = VGroup(degrees, radians).arrange(DOWN, buff=0.4, aligned_edge=LEFT).shift(DOWN*1.8+LEFT)
        degrees_val_1 = MathTex("360^\\circ", color=c1t, font_size=fs2)
        radians_val_1 = MathTex("2\\Pi", color=c1t, font_size=fs2)
        values_1 = VGroup(degrees_val_1, radians_val_1).arrange(DOWN, buff=0.4, aligned_edge=LEFT).next_to(measures, RIGHT, buff=0.4)
        degrees_val_2 = MathTex("180^\\circ", color=c1t, font_size=fs2)
        radians_val_2 = MathTex("?", color=c1t, font_size=fs2)
        values_2 = VGroup(degrees_val_2, radians_val_2).arrange(DOWN, buff=0.4, aligned_edge=LEFT).next_to(values_1, RIGHT, buff=0.4)
        full = Tex(self.translate("Func_7_1.I2.q.full"), color=c1t, font_size=fs2).next_to(degrees_val_1, UP, buff=0.4)
        half = Tex(self.translate("Func_7_1.I2.q.half"), color=c1t, font_size=fs2).next_to(degrees_val_2, UP, buff=0.4)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_1.I2.q.voiceover")
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(1), run_time=3)

            self.wait_until_bookmark("degrees")
            x,y,_ = degrees_val_1.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(degrees), Write(degrees_val_1), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("radians")
            cursor.idle=False
            x,y,_ = radians_val_1.get_center()+0.4*DOWN
            self.play(Write(radians), Write(radians_val_1), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("half_circle")
            cursor.idle=False
            self.play(a.animate.set_value(0.5), run_time=0.5)
            x,y,_ = arc.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            self.play(MoveAlongPath(cursor, arc))
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("full_circle_fin")
            cursor.idle=False
            x,y,_ = degrees_val_1.get_center()+0.4*DOWN
            self.play(Write(full), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("half_circle_fin")
            cursor.idle=False
            x,y,_ = degrees_val_2.get_center()+0.4*DOWN
            self.play(Write(half), Write(degrees_val_2), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("radians_fin")
            cursor.idle=False
            x,y,_ = radians_val_1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("radians_fin_half")
            cursor.idle=False
            x,y,_ = radians_val_2.get_center()+0.4*DOWN
            self.play(Write(radians_val_2), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

        self.wait(4)


class Func_7_1_I_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_7_1.I2.q.title"))


        cursor = AltCursor(stroke_width=0.0, idle=True, x=0.6)

        self.add(cursor)

        a = ValueTracker(0)


        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE, fill_color=BLUE).shift(0.6*UP)
        line_start = Line(0.6*UP, get_arc().get_start(), color=BLUE).add_updater(lambda m: m.set_stroke_width(0 if a.get_value() == 1 else 4))
        get_line_end = lambda: Line(0.6*UP, get_arc().get_end(), color=BLUE, stroke_width = 0 if a.get_value() == 1 else 4)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        
        half = Tex(self.translate("Func_7_1.I2.a.half"), color=c1t, font_size=fs2)
        full_circle = Tex(self.translate("Func_7_1.I2.a.full"), color=c1t, font_size=fs2)
        explanations = VGroup(half, full_circle).arrange(DOWN, buff=0.2, aligned_edge=LEFT).shift(DOWN*1.2)

        equation = MathTex("\\tfrac{1}{2}", "\\cdot",  "2\\Pi", "=", "\\Pi", color=c1t, font_size=fs2).shift(2.2*DOWN)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6") + self.translate("Func_7_1.I2.a.voiceover")
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(0.5))

            self.wait_until_bookmark("half")
            x,y,_ = half.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), Write(half), run_time=0.5)

            self.wait_until_bookmark("full_circle")
            x,y,_ = full_circle.get_center()+0.4*DOWN
            self.play(Write(full_circle), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("equation_1")
            cursor.idle=False
            x,y, _ = equation[0].get_center()+0.4*DOWN
            self.play(Write(equation[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("equation_2")
            cursor.idle=False
            x,y, _ = equation[2].get_center()+0.4*DOWN
            self.play(Write(equation[1]), Write(equation[2]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("equation_3")
            cursor.idle=False
            x,y, _ = equation[4].get_center()+0.4*DOWN
            self.play(Write(equation[3]), Write(equation[4]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

        self.wait(4)


class Func_7_1_I_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_7_1.I2.q.title"))


        cursor = AltCursor(stroke_width=0.0, idle=True, x=0.6)

        self.add(cursor)

        a = ValueTracker(0)


        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE, fill_color=BLUE).shift(0.6*UP)
        line_start = Line(0.6*UP, get_arc().get_start(), color=BLUE).add_updater(lambda m: m.set_stroke_width(0 if a.get_value() == 1 else 4))
        get_line_end = lambda: Line(0.6*UP, get_arc().get_end(), color=BLUE, stroke_width = 0 if a.get_value() == 1 else 4)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        
        half = Tex(self.translate("Func_7_1.I2.a.half"), color=c1t, font_size=fs2)
        full_circle = Tex(self.translate("Func_7_1.I2.a.full"), color=c1t, font_size=fs2)
        explanations = VGroup(half, full_circle).arrange(DOWN, buff=0.2, aligned_edge=LEFT).shift(DOWN*1.2)

        equation = MathTex("\\tfrac{1}{2}", "\\cdot",  "2\\Pi", "=", "\\Pi", color=c1t, font_size=fs2).shift(2.2*DOWN)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6") + self.translate("Func_7_1.I2.a.voiceover")
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(0.5))

            self.wait_until_bookmark("half")
            x,y,_ = half.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), Write(half), run_time=0.5)

            self.wait_until_bookmark("full_circle")
            x,y,_ = full_circle.get_center()+0.4*DOWN
            self.play(Write(full_circle), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("equation_1")
            cursor.idle=False
            x,y, _ = equation[0].get_center()+0.4*DOWN
            self.play(Write(equation[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("equation_2")
            cursor.idle=False
            x,y, _ = equation[2].get_center()+0.4*DOWN
            self.play(Write(equation[1]), Write(equation[2]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("equation_3")
            cursor.idle=False
            x,y, _ = equation[4].get_center()+0.4*DOWN
            self.play(Write(equation[3]), Write(equation[4]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

        self.wait(4)


class Func_7_1_I_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_7_1.I2.q.title"))


        cursor = AltCursor(stroke_width=0.0, idle=True, x=0.6)

        self.add(cursor)

        a = ValueTracker(0)


        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE, fill_color=BLUE).shift(0.6*UP)
        line_start = Line(0.6*UP, get_arc().get_start(), color=BLUE).add_updater(lambda m: m.set_stroke_width(0 if a.get_value() == 1 else 4))
        get_line_end = lambda: Line(0.6*UP, get_arc().get_end(), color=BLUE, stroke_width = 0 if a.get_value() == 1 else 4)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        
        half = Tex(self.translate("Func_7_1.I2.a.half"), color=c1t, font_size=fs2)
        full_circle = Tex(self.translate("Func_7_1.I2.a.full"), color=c1t, font_size=fs2)
        explanations = VGroup(half, full_circle).arrange(DOWN, buff=0.2, aligned_edge=LEFT).shift(DOWN*1.2)

        equation = MathTex("\\tfrac{1}{2}", "\\cdot",  "2\\Pi", "=", "\\Pi", color=c1t, font_size=fs2).shift(2.2*DOWN)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6") + self.translate("Func_7_1.I2.a.voiceover")
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(0.5))

            self.wait_until_bookmark("half")
            x,y,_ = half.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), Write(half), run_time=0.5)

            self.wait_until_bookmark("full_circle")
            x,y,_ = full_circle.get_center()+0.4*DOWN
            self.play(Write(full_circle), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("equation_1")
            cursor.idle=False
            x,y, _ = equation[0].get_center()+0.4*DOWN
            self.play(Write(equation[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("equation_2")
            cursor.idle=False
            x,y, _ = equation[2].get_center()+0.4*DOWN
            self.play(Write(equation[1]), Write(equation[2]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("equation_3")
            cursor.idle=False
            x,y, _ = equation[4].get_center()+0.4*DOWN
            self.play(Write(equation[3]), Write(equation[4]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

        self.wait(4)


class Func_7_1_I_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_7_1.I2.q.title"))


        cursor = AltCursor(stroke_width=0.0, idle=True, x=0.6)

        self.add(cursor)

        a = ValueTracker(0)


        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE, fill_color=BLUE).shift(0.6*UP)
        line_start = Line(0.6*UP, get_arc().get_start(), color=BLUE).add_updater(lambda m: m.set_stroke_width(0 if a.get_value() == 1 else 4))
        get_line_end = lambda: Line(0.6*UP, get_arc().get_end(), color=BLUE, stroke_width = 0 if a.get_value() == 1 else 4)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        half = Tex(self.translate("Func_7_1.I2.a.half"), color=c1t, font_size=fs2)
        full_circle = Tex(self.translate("Func_7_1.I2.a.full"), color=c1t, font_size=fs2)
        explanations = VGroup(half, full_circle).arrange(DOWN, buff=0.2, aligned_edge=LEFT).shift(DOWN*1.2)

        equation = MathTex("\\tfrac{1}{2}", "\\cdot",  "2\\Pi", "=", "\\Pi", color=c1t, font_size=fs2).shift(2.2*DOWN)

        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_6") + self.translate("Func_7_1.I2.a.voiceover")
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(0.5))

            self.wait_until_bookmark("half")
            x,y,_ = half.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), Write(half), run_time=0.5)

            self.wait_until_bookmark("full_circle")
            x,y,_ = full_circle.get_center()+0.4*DOWN
            self.play(Write(full_circle), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("equation_1")
            cursor.idle=False
            x,y, _ = equation[0].get_center()+0.4*DOWN
            self.play(Write(equation[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("equation_2")
            cursor.idle=False
            x,y, _ = equation[2].get_center()+0.4*DOWN
            self.play(Write(equation[1]), Write(equation[2]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("equation_3")
            cursor.idle=False
            x,y, _ = equation[4].get_center()+0.4*DOWN
            self.play(Write(equation[3]), Write(equation[4]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

        self.wait(4)


#####################################
#####################################
class Func_7_1_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_1.I3.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True, y=0.6)

        self.add(cursor)

        a = ValueTracker(0)

        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE, fill_color=BLUE).shift(0.6*UP)
        line_start = Line(0.6*UP, get_arc().get_start(), color=BLUE).add_updater(lambda m: m.set_stroke_width(0 if a.get_value() == 1 else 4))
        get_line_end = lambda: Line(0.6*UP, get_arc().get_end(), color=BLUE, stroke_width = 0 if a.get_value() == 1 else 4)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        temple = ImageMobject(assets_folder / "img" / "ancient_temple.png")
        temple = temple.scale(4/temple.get_width()).move_to([-5, -2.2, 0])


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_1.I3.voiceover")
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(1), run_time=1)

            self.wait_until_bookmark("degrees")
            threesixty = MathTex("360", color=c1t, font_size=fs1).move_to(arc)
            x,y,_ = threesixty.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(threesixty), run_time=0.5)
            qmark = self.draw_qmark(cursor, [0,-2.2,0], run_time=4, apply_waves=0)
            for _ in range(2):
                self.play(ApplyWave(qmark), run_time=2)
            cursor.idle=True

            self.wait_until_bookmark("temple")
            self.play(FadeOut(qmark), temple.animate.shift(5*RIGHT), run_time=1)

            self.wait_until_bookmark("base")
            x,y,_ = threesixty.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True
            for idx in range(6):
                threesixty_new = MathTex(str((1+idx)*60), color=c1t, font_size=fs1).move_to(threesixty)
                self.play(ReplacementTransform(threesixty, threesixty_new))
                self.wait(0.5 if idx!=0 else 3)
                threesixty = threesixty_new

            self.wait_until_bookmark("degrees_switch")
            self.play(temple.animate.shift(5*RIGHT))

            self.wait_until_bookmark("rad")
            rad = MathTex("2\\Pi", color=c1t, font_size=fs1).move_to(threesixty)
            self.play(ReplacementTransform(threesixty, rad))

            self.wait_until_bookmark("qmark")
            self.draw_qmark(cursor, [0,-2.2,0], run_time=4, apply_waves=0)
            for _ in range(2):
                self.play(ApplyWave(qmark), run_time=2)

        self.wait(4)


#####################################
#####################################
class Func_7_1_I_4(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_1.I3.title"))

        cursor = AltCursor(stroke_width=0.0, idle=False, y=0.6)

        self.add(cursor)

        a = ValueTracker(1)

        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE, fill_color=BLUE).shift(0.6*UP)
        line_start = Line(0.6*UP, get_arc().get_start(), color=BLUE).add_updater(lambda m: m.set_stroke_width(0 if a.get_value()%1==0 else 4))
        get_line_end = lambda: Line(0.6*UP, get_arc().get_end(), color=BLUE, stroke_width = 0 if a.get_value()%1==0 else 4)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        b = ValueTracker(0)

        get_arc_2 = lambda: Arc(radius=1, angle=2*PI*b.get_value(), color=RED, fill_color=BLUE).shift(0.6*UP)
        line_start_2 = Line(0.6*UP, get_arc_2().get_start(), color=RED).add_updater(lambda m: m.set_stroke_width(0 if b.get_value()==1 else 4))
        get_line_end_2 = lambda: Line(0.6*UP, get_arc_2().get_end(), color=RED, stroke_width = 0 if b.get_value()==1 else 4)

        arc_2 = always_redraw(get_arc_2)
        line_end_2 = always_redraw(get_line_end_2)
        circ = MathTex("C", "=", "2", "\\cdot", "\\Pi", "\\cdot", "r", color=c1t, font_size=fs1).next_to(arc, DOWN, buff=0.6)

        unit_line = Line(0.6*UP, arc.get_end(), color=c1t, stroke_width=4)
        unit_label = MathTex("1", color=c1t, font_size=fs3).next_to(unit_line, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_1.I4.voiceover")
        ) as tracker:

            self.wait_until_bookmark("around")
            x,y,_ = arc.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(MoveAlongPath(cursor, arc))
            cursor.idle=True

            self.wait_until_bookmark("circ_1")
            x,y,_ = circ[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(circ[0]), Write(circ[1]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("two")
            cursor.idle=False
            x,y,_ = circ[2].get_center()+0.4*DOWN
            self.play(Write(circ[2]), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("pi")
            x,y,_ = circ[4].get_center()+0.4*DOWN
            self.play(Write(circ[3]), Write(circ[4]), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("r")
            x,y,_ = circ[6].get_center()+0.4*DOWN
            self.play(Write(circ[5]), Write(circ[6]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("unit")
            cursor.idle=False
            x,y,_ = unit_line.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor_updater = lambda m: m.move_to(unit_line.get_end())
            cursor.add_updater(cursor_updater)
            self.play(Create(unit_line), Write(unit_label))
            cursor.remove_updater(cursor_updater)
            cursor.idle=True

            self.wait_until_bookmark("two_pi")
            cursor.idle=False
            x,y,_ = circ[4].get_center()+0.4*DOWN
            self.play(circ.animate.shift(0.3*RIGHT), Unwrite(circ[5]), Unwrite(circ[6]), CursorMoveTo(cursor, x, y))
            cursor.idle=True

            self.wait_until_bookmark("rad_1")
            dec = DecimalNumber(2, num_decimal_places=1, font_size=fs1).set_color(c1t).move_to(circ[2].get_right())
            pi_dec = MathTex("\\Pi", color=c1t, font_size=fs1).move_to(circ[4])
            self.play(ReplacementTransform(circ[2], dec), ReplacementTransform(circ[4], pi_dec), Unwrite(circ[0]), Unwrite(circ[1]), Unwrite(circ[3]))
            circumference = VGroup(dec, pi_dec)
            self.play(circumference.animate.shift(circumference.get_x()*LEFT), run_time=0.3)

            self.wait_until_bookmark("red_circle")
            self.add(arc_2, line_start_2, line_end_2)
            x,y,_ = arc_2.get_start()
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), Unwrite(unit_line), Unwrite(unit_label), run_time=0.5)
            cursor.add_updater(lambda m: m.move_to(arc_2.get_end()))
            dec.add_updater(lambda m: m.set_value(b.get_value()*2))
            self.play(b.animate.set_value(0.25))
            cursor.idle=True

            self.wait_until_bookmark("half")
            cursor.idle=False
            self.play(b.animate.set_value(0.5))
            cursor.idle=True

        self.wait(4)


#####################################
#####################################
######## Practice Part ##############
#####################################
#####################################

#####################################
#####################################
######## General Qs #################
#####################################
#####################################
class DegToRadQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_1.I1.q.title"))

        deg = int(self.angle_frac*360)

        cursor = AltCursor(stroke_width=0.0, idle=False, y=0.6)

        self.add(cursor)

        circ =  Arc(radius=1, angle=2*PI, color=BLUE, fill_color=BLUE).shift(0.6*UP)
        self.add(circ)

        b = ValueTracker(0)

        get_arc_2 = lambda: Arc(radius=1, angle=2*PI*b.get_value(), color=self.color, fill_color=BLUE).shift(0.6*UP)
        line_start_2 = Line(0.6*UP, get_arc_2().get_start(), color=self.color).add_updater(lambda m: m.set_stroke_width(0 if b.get_value()==1 else 4))
        get_line_end_2 = lambda: Line(0.6*UP, get_arc_2().get_end(), color=self.color, stroke_width = 0 if b.get_value()==1 else 4)

        arc_2 = always_redraw(get_arc_2)
        line_end_2 = always_redraw(get_line_end_2)
        
        label_deg = Tex(self.translate("Func_7_1.DegToRadQuestionScene.deg"), f"${deg}$", "$^\\circ$", color=c1t, font_size=fs1)
        label_rad = Tex(self.translate("Func_7_1.DegToRadQuestionScene.rad"), "  ?", color=c1t, font_size=fs1)
        labels = VGroup(label_deg, label_rad).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(circ, DOWN, buff=0.6)

        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_7_1.DegToRadQuestionScene.voiceover"))
        ) as tracker:


            self.wait_until_bookmark("red_circle")
            self.add(arc_2, line_start_2, line_end_2)
            x,y,_ = arc_2.get_start()
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor_updater = lambda m: m.move_to(arc_2.get_end())
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(self.angle_frac))
            cursor.remove_updater(cursor_updater)
            cursor.idle=True

            self.wait_until_bookmark("degrees")
            x,y,_ = label_deg[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(label_deg), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("rad")
            x,y,_ = label_rad[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(label_rad), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

        self.wait(4)


class DegToRadAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_1.I1.q.title"))

        deg = self.deg = int(self.angle_frac*360)
        

        cursor = AltCursor(stroke_width=0.0, idle=False, y=0.6)

        self.add(cursor)

        circ =  Arc(radius=1, angle=2*PI, color=BLUE, fill_color=BLUE).shift(0.6*UP)
        self.add(circ)

        b = ValueTracker(0)

        get_arc_2 = lambda: Arc(radius=1, angle=2*PI*b.get_value(), color=self.color, fill_color=BLUE).shift(0.6*UP)
        line_start_2 = Line(0.6*UP, get_arc_2().get_start(), color=self.color).add_updater(lambda m: m.set_stroke_width(0 if b.get_value()==1 else 4))
        get_line_end_2 = lambda: Line(0.6*UP, get_arc_2().get_end(), color=self.color, stroke_width = 0 if b.get_value()==1 else 4)

        arc_2 = always_redraw(get_arc_2)
        line_end_2 = always_redraw(get_line_end_2)
        
        label_deg = Tex(self.translate("Func_7_1.DegToRadQuestionScene.deg"), f"${deg}$", "$^\\circ$", color=c1t, font_size=fs1).next_to(circ, DOWN, buff=0.6)
        eq = MathTex(f"{self.angle_frac_tex}", "\\cdot", "2\\Pi", "=", f"{2*self.angle_frac}\\Pi", color=c1t, font_size=fs1).next_to(label_deg, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_7_1.DegToRadAnswerScene.voiceover"))
        ) as tracker:


            self.wait_until_bookmark("red_circle")
            self.add(arc_2, line_start_2, line_end_2)
            x,y,_ = arc_2.get_start()
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor_updater = lambda m: m.move_to(arc_2.get_end())
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(self.angle_frac))
            cursor.remove_updater(cursor_updater)
            cursor.idle=True

            self.wait_until_bookmark("degrees")
            x,y,_ = label_deg[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(label_deg), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("eq_1")
            cursor.idle=False
            x,y,_ = eq[0].get_center()+0.4*DOWN
            self.play(Write(eq[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("eq_2")
            cursor.idle=False
            x,y,_ = eq[2].get_center()+0.4*DOWN
            self.play(Write(eq[1]), Write(eq[2]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("eq_3")
            cursor.idle=False
            x,y,_ = eq[4].get_center()+0.4*DOWN
            self.play(Write(eq[3]), Write(eq[4]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

        self.wait(4)


#####################################
#####################################
class RadToDegQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_1.I1.q.title"))

        deg = int(self.angle_frac*360)

        cursor = AltCursor(stroke_width=0.0, idle=False, y=0.6)

        self.add(cursor)

        circ =  Arc(radius=1, angle=2*PI, color=BLUE, fill_color=BLUE).shift(0.6*UP)
        self.add(circ)

        b = ValueTracker(0)

        get_arc_2 = lambda: Arc(radius=1, angle=2*PI*b.get_value(), color=self.color, fill_color=BLUE).shift(0.6*UP)
        line_start_2 = Line(0.6*UP, get_arc_2().get_start(), color=self.color).add_updater(lambda m: m.set_stroke_width(0 if b.get_value()==1 else 4))
        get_line_end_2 = lambda: Line(0.6*UP, get_arc_2().get_end(), color=self.color, stroke_width = 0 if b.get_value()==1 else 4)

        arc_2 = always_redraw(get_arc_2)
        line_end_2 = always_redraw(get_line_end_2)
        
        label_rad = Tex(self.translate("Func_7_1.DegToRadQuestionScene.rad"), f"${2*self.angle_frac}\\Pi$", color=c1t, font_size=fs1)
        label_deg = Tex(self.translate("Func_7_1.DegToRadQuestionScene.deg"), "$?^\\circ$", color=c1t, font_size=fs1)
        labels = VGroup(label_rad, label_deg).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(circ, DOWN, buff=0.6)

        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_7_1.RadToDegQuestionScene.voiceover"))
        ) as tracker:


            self.wait_until_bookmark("red_circle")
            self.add(arc_2, line_start_2, line_end_2)
            x,y,_ = arc_2.get_start()
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor_updater = lambda m: m.move_to(arc_2.get_end())
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(self.angle_frac))
            cursor.remove_updater(cursor_updater)
            cursor.idle=True

            self.wait_until_bookmark("rad")
            x,y,_ = label_rad[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(label_rad), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("degrees")
            x,y,_ = label_deg[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(label_deg), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

        self.wait(4)


class RadToDegAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_1.I1.q.title"))

        deg = int(self.angle_frac*360)

        cursor = AltCursor(stroke_width=0.0, idle=False, y=0.6)

        self.add(cursor)

        circ =  Arc(radius=1, angle=2*PI, color=BLUE, fill_color=BLUE).shift(0.6*UP)
        self.add(circ)

        b = ValueTracker(0)

        get_arc_2 = lambda: Arc(radius=1, angle=2*PI*b.get_value(), color=self.color, fill_color=BLUE).shift(0.6*UP)
        line_start_2 = Line(0.6*UP, get_arc_2().get_start(), color=self.color).add_updater(lambda m: m.set_stroke_width(0 if b.get_value()==1 else 4))
        get_line_end_2 = lambda: Line(0.6*UP, get_arc_2().get_end(), color=self.color, stroke_width = 0 if b.get_value()==1 else 4)

        arc_2 = always_redraw(get_arc_2)
        line_end_2 = always_redraw(get_line_end_2)
        
        label_rad = Tex(self.translate("Func_7_1.DegToRadQuestionScene.rad"), f"${2*self.angle_frac}\\Pi$", color=c1t, font_size=fs1).next_to(circ, DOWN, buff=0.6)
        eq = MathTex(f"{self.angle_frac_tex}", "\\cdot", "360^\\circ", "=", f"{360*self.angle_frac}^\\circ", color=c1t, font_size=fs1).next_to(label_rad, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_7_1.RadToDegAnswerScene.voiceover"))
        ) as tracker:


            self.wait_until_bookmark("red_circle")
            self.add(arc_2, line_start_2, line_end_2)
            x,y,_ = arc_2.get_start()
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor_updater = lambda m: m.move_to(arc_2.get_end())
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(self.angle_frac))
            cursor.remove_updater(cursor_updater)
            cursor.idle=True

            self.wait_until_bookmark("radians")
            x,y,_ = label_rad[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(label_rad), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True
            
            self.wait_until_bookmark("eq_1")
            cursor.idle=False
            x,y,_ = eq[0].get_center()+0.4*DOWN
            self.play(Write(eq[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("eq_2")
            cursor.idle=False
            x,y,_ = eq[2].get_center()+0.4*DOWN
            self.play(Write(eq[1]), Write(eq[2]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("eq_3")
            cursor.idle=False
            x,y,_ = eq[4].get_center()+0.4*DOWN
            self.play(Write(eq[3]), Write(eq[4]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

        self.wait(4)


#####################################
#####################################
######## Specific Qs ################
#####################################
#####################################
class Func_7_1_P_1_q(DegToRadQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$2\\Pi$", "$90\Pi$", "$\\frac{1}{2}\Pi$", "$\\frac{1}{4}\Pi$"],
            correctAnswerIndex = 2,
            questionText=self.translate("Func_7_1.P1.q.question-text")
        )

    def construct(self):
        
        self.intro = self.translate("Func_7_1.P1.q.intro")
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = self.translate("Func_7_1.P1.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P1.q.angle-rad-string")
        self.color_string = self.translate("Func_7_1.P1.q.color-string")
        self.color = PURPLE

        super().construct()


class Func_7_1_P_1_a(DegToRadAnswerScene):

    def construct(self):
        
        self.intro = self.translate("Func_7_1.P1.a.intro")
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = self.translate("Func_7_1.P1.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P1.q.angle-rad-string")
        self.color_string = self.translate("Func_7_1.P1.q.color-string")
        self.color = PURPLE

        super().construct()


class Func_7_1_P_1_b(DegToRadAnswerScene):

    def construct(self):
        
        self.intro = self.translate("Func_7_1.P1.a.intro")
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = self.translate("Func_7_1.P1.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P1.q.angle-rad-string")
        self.color_string = self.translate("Func_7_1.P1.q.color-string")
        self.color = PURPLE

        super().construct()


class Func_7_1_P_1_c(DegToRadAnswerScene):

    def construct(self):
        
        self.intro = self.translate("Func_7_1.P1.c.intro")
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = self.translate("Func_7_1.P1.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P1.q.angle-rad-string")
        self.color_string = self.translate("Func_7_1.P1.q.color-string")
        self.color = PURPLE

        super().construct()


class Func_7_1_P_1_d(DegToRadAnswerScene):

    def construct(self):
        
        self.intro = self.translate("Func_7_1.P1.a.intro")
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = self.translate("Func_7_1.P1.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P1.q.angle-rad-string")
        self.color_string = self.translate("Func_7_1.P1.q.color-string")
        self.color = PURPLE

        super().construct()
        

#####################################
#####################################
class Func_7_1_P_2_q(RadToDegQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$90^\circ$", "$180^\circ$", "$270^\circ$", "$360^\circ$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_7_1.P2.q.question-text")
        )

    def construct(self):
        
        self.intro = self.translate("Func_7_1.P2.q.intro")
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = self.translate("Func_7_1.P1.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P1.q.angle-rad-string")
        self.color_string = self.translate("Func_7_1.P2.q.color-string")
        self.color = GREEN

        super().construct()



class Func_7_1_P_2_a(RadToDegAnswerScene):

    def construct(self):

        self.intro = self.translate("Func_7_1.P2.a.intro")
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = self.translate("Func_7_1.P1.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P1.q.angle-rad-string")
        self.color_string = self.translate("Func_7_1.P2.q.color-string")
        self.color = GREEN

        super().construct()


class Func_7_1_P_2_b(RadToDegAnswerScene):

    def construct(self):

        self.intro = self.translate("Func_7_1.P2.b.intro")
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = self.translate("Func_7_1.P1.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P1.q.angle-rad-string")
        self.color_string = self.translate("Func_7_1.P2.q.color-string")
        self.color = GREEN

        super().construct()


class Func_7_1_P_2_c(RadToDegAnswerScene):

    def construct(self):

        self.intro = self.translate("Func_7_1.P2.b.intro")
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = self.translate("Func_7_1.P1.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P1.q.angle-rad-string")
        self.color_string = self.translate("Func_7_1.P2.q.color-string")
        self.color = GREEN

        super().construct()


class Func_7_1_P_2_d(RadToDegAnswerScene):

    def construct(self):

        self.intro = self.translate("Func_7_1.P2.b.intro")
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = self.translate("Func_7_1.P1.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P1.q.angle-rad-string")
        self.color_string = self.translate("Func_7_1.P2.q.color-string")
        self.color = GREEN

        super().construct()


#####################################
#####################################
class Func_7_1_P_3_q(RadToDegQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$90^\circ$", "$180^\circ$", "$270^\circ$", "$360^\circ$"],
            correctAnswerIndex = 2,
            questionText=self.translate("Func_7_1.P3.q.question-text")
        )

    def construct(self):
        
        self.intro = self.translate("Func_7_1.P3.q.intro")
        self.angle_frac = 3/4
        self.angle_frac_tex = "\\tfrac{3}{4}"
        self.angle_frac_string = self.translate("Func_7_1.P3.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P3.q.angle-rad-string")
        self.color_string = self.translate("Func_7_1.P3.q.color-string")
        self.color = ORANGE

        super().construct()



class Func_7_1_P_3_a(RadToDegAnswerScene):

    def construct(self):

        self.intro = self.translate("Func_7_1.P3.a.intro")
        self.angle_frac = 3/4
        self.angle_frac_tex = "\\tfrac{3}{4}"
        self.angle_frac_string = self.translate("Func_7_1.P3.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P3.q.angle-rad-string")
        self.color_string = self.translate("Func_7_1.P3.q.color-string")
        self.color = ORANGE

        super().construct()


class Func_7_1_P_3_b(RadToDegAnswerScene):

    def construct(self):

        self.intro = self.translate("Func_7_1.P3.a.intro")
        self.angle_frac = 3/4
        self.angle_frac_tex = "\\tfrac{3}{4}"
        self.angle_frac_string = self.translate("Func_7_1.P3.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P3.q.angle-rad-string")
        self.color_string = self.translate("Func_7_1.P3.q.color-string")
        self.color = ORANGE

        super().construct()


class Func_7_1_P_3_c(RadToDegAnswerScene):

    def construct(self):

        self.intro = self.translate("Func_7_1.P3.c.intro")
        self.angle_frac = 3/4
        self.angle_frac_tex = "\\tfrac{3}{4}"
        self.angle_frac_string = self.translate("Func_7_1.P3.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P3.q.angle-rad-string")
        self.color_string = self.translate("Func_7_1.P3.q.color-string")
        self.color = ORANGE

        super().construct()


class Func_7_1_P_3_d(RadToDegAnswerScene):

    def construct(self):

        self.intro = self.translate("Func_7_1.P3.a.intro")
        self.angle_frac = 3/4
        self.angle_frac_tex = "\\tfrac{3}{4}"
        self.angle_frac_string = self.translate("Func_7_1.P3.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P3.q.angle-rad-string")
        self.color_string = self.translate("Func_7_1.P3.q.color-string")
        self.color = ORANGE

        super().construct()


#####################################
#####################################
class Func_7_1_P_4_q(DegToRadQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$2\Pi$", "$\\frac{1}{4}\Pi$", "$\\frac{1}{2}\Pi$", "$\Pi$"],
            correctAnswerIndex = 1,
            questionText=self.translate("Func_7_1.P4.q.question-text")
        )

    def construct(self):
        
        self.intro = self.translate("Func_7_1.P4.q.intro")
        self.angle_frac = 1/8
        self.angle_frac_tex = "\\tfrac{1}{8}"
        self.angle_frac_string = self.translate("Func_7_1.P4.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P1.q.angle-frac-string")
        self.color_string = self.translate("Func_7_1.P4.q.color-string")
        self.color = PINK

        super().construct()


class Func_7_1_P_4_a(DegToRadAnswerScene):

    def construct(self):
        
        self.intro = self.translate("Func_7_1.P4.a.intro")
        self.angle_frac = 1/8
        self.angle_frac_tex = "\\tfrac{1}{8}"
        self.angle_frac_string = self.translate("Func_7_1.P4.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P1.q.angle-frac-string")
        self.color_string = self.translate("Func_7_1.P4.q.color-string")
        self.color = PINK


        super().construct()

class Func_7_1_P_4_b(DegToRadAnswerScene):

    def construct(self):
        
        self.intro = self.translate("Func_7_1.P4.b.intro")
        self.angle_frac = 1/8
        self.angle_frac_tex = "\\tfrac{1}{8}"
        self.angle_frac_string = self.translate("Func_7_1.P4.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P1.q.angle-frac-string")
        self.color_string = self.translate("Func_7_1.P4.q.color-string")
        self.color = PINK


        super().construct()

class Func_7_1_P_4_c(DegToRadAnswerScene):

    def construct(self):
        
        self.intro = self.translate("Func_7_1.P4.b.intro")
        self.angle_frac = 1/8
        self.angle_frac_tex = "\\tfrac{1}{8}"
        self.angle_frac_string = self.translate("Func_7_1.P4.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P1.q.angle-frac-string")
        self.color_string = self.translate("Func_7_1.P4.q.color-string")
        self.color = PINK


        super().construct()

class Func_7_1_P_4_d(DegToRadAnswerScene):

    def construct(self):
        
        self.intro = self.translate("Func_7_1.P4.b.intro")
        self.angle_frac = 1/8
        self.angle_frac_tex = "\\tfrac{1}{8}"
        self.angle_frac_string = self.translate("Func_7_1.P4.q.angle-frac-string")
        self.angle_rad_string = self.translate("Func_7_1.P1.q.angle-frac-string")
        self.color_string = self.translate("Func_7_1.P4.q.color-string")
        self.color = PINK


        super().construct()

PROTOTYPES=[
    PagePrototypeVideo.from_scene(Func_7_1_I_1_q),
    PagePrototypeQuestion.from_scene(Func_7_1_I_1_q),
    PagePrototypeVideo.from_scene(Func_7_1_I_1_a),
    PagePrototypeVideo.from_scene(Func_7_1_I_1_b),
    PagePrototypeVideo.from_scene(Func_7_1_I_2_q),
    PagePrototypeQuestion.from_scene(Func_7_1_I_2_q),
    PagePrototypeVideo.from_scene(Func_7_1_I_2_a),
    PagePrototypeVideo.from_scene(Func_7_1_I_2_b),
    PagePrototypeVideo.from_scene(Func_7_1_I_2_c),
    PagePrototypeVideo.from_scene(Func_7_1_I_2_d),
    PagePrototypeVideo.from_scene(Func_7_1_I_3),
    PagePrototypeVideo.from_scene(Func_7_1_I_4),
    PagePrototypeVideo.from_scene(Func_7_1_P_1_q),
    PagePrototypeQuestion.from_scene(Func_7_1_P_1_q),
    PagePrototypeVideo.from_scene(Func_7_1_P_1_a),
    PagePrototypeVideo.from_scene(Func_7_1_P_1_b),
    PagePrototypeVideo.from_scene(Func_7_1_P_1_c),
    PagePrototypeVideo.from_scene(Func_7_1_P_1_d),
    PagePrototypeVideo.from_scene(Func_7_1_P_2_q),
    PagePrototypeQuestion.from_scene(Func_7_1_P_2_q),
    PagePrototypeVideo.from_scene(Func_7_1_P_2_a),
    PagePrototypeVideo.from_scene(Func_7_1_P_2_b),
    PagePrototypeVideo.from_scene(Func_7_1_P_2_c),
    PagePrototypeVideo.from_scene(Func_7_1_P_2_d),
    PagePrototypeVideo.from_scene(Func_7_1_P_3_q),
    PagePrototypeQuestion.from_scene(Func_7_1_P_3_q),
    PagePrototypeVideo.from_scene(Func_7_1_P_3_a),
    PagePrototypeVideo.from_scene(Func_7_1_P_3_b),
    PagePrototypeVideo.from_scene(Func_7_1_P_3_c),
    PagePrototypeVideo.from_scene(Func_7_1_P_3_d),
    PagePrototypeVideo.from_scene(Func_7_1_P_4_q),
    PagePrototypeQuestion.from_scene(Func_7_1_P_4_q),
    PagePrototypeVideo.from_scene(Func_7_1_P_4_a),
    PagePrototypeVideo.from_scene(Func_7_1_P_4_b),
    PagePrototypeVideo.from_scene(Func_7_1_P_4_c),
    PagePrototypeVideo.from_scene(Func_7_1_P_4_d),
]
