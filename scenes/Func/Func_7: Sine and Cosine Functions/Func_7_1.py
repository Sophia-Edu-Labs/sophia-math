# 7_1: Trigonometric Functions: Degrees and Radians

# Import necessary libraries and modules
from abc import ABCMeta, abstractmethod
from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
from sophialib.styles.sophiascene import (CursorMoveToCurved, CursorPositionTracker,
                                          CursorPositionTracking,
                                          CursorResizeDefault, SophiaScene, Cursor,
                                          assets_folder, avatars_folder,
                                          generated_avatars_folder, AltCursor,
                                          SophiaCursorScene, CursorMoveTo,
                                          CursorMoveResize, Notepad, CursorMarkAxis, Bubble)
from sophialib.styles.styleconstants import *
from sophialib.styles.sophiaobjects import *
from manim import *
from PIL import Image
import numpy as np
from pathlib import Path
from sophialib.tasks.sophiataskdefinition import SophiaTaskDefinition

#####################################
#####################################
TASK_Func_7_1_I_1_q = SophiaTaskDefinition(
    answerOptions = ["$90^\circ$", "$180^\circ$", "$270^\circ$", "$360^\circ$"],
    correctAnswerIndex = 2,
    questionText = "How many degrees does this $\\tfrac{3}{4}$ circle have?"
)
class Func_7_1_I_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Degrees")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
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
                text="""
                Whenever two lines meet, we get an angle.
                And the most commonly known method to measure angles is by <bookmark mark="degrees"/>using degrees.

                <bookmark mark="full_circle"/>A full circle has 360 degrees.
                <bookmark mark="half_circle"/>A half circle has 180 degrees.
                <bookmark mark="quarter_circle"/>A quarter circle has 90 degrees.
                And so on...

                How many degrees does <bookmark mark="threequartercircle"/>this angle have,
                which reaches three quarters around the circle?
                """
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(1))

            self.wait_until_bookmark("degrees")
            x,y,_ = angle.get_center()+0.4*DOWN
            cursor.blinking=False
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
            cursor.blinking=True

            self.wait_until_bookmark("threequartercircle")
            cursor.blinking=False
            self.play(a.animate.set_value(0.75), run_time=0.5)
            x,y,_ = arc.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(MoveAlongPath(cursor, arc))
            self.play(CursorMoveTo(cursor,0,0))
            cursor.blinking=True

        self.wait(4)


class Func_7_1_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Degrees")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        a = ValueTracker(0)

        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE).shift(UP)
        line_start = Line(UP, get_arc().get_start(), color=BLUE)
        get_line_end = lambda: Line(UP, get_arc().get_end(), color=BLUE)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        three_quarter = Tex("Here: $\\tfrac{3}{4}$ of a full circle", color=c1t, font_size=fs3)
        full_circle = Tex("Full circle: $360^\\circ$", color=c1t, font_size=fs3)
        explanations = VGroup(three_quarter, full_circle).arrange(DOWN, buff=0.2, aligned_edge=LEFT).shift(DOWN*1.2)

        equation = MathTex("\\tfrac{3}{4}", "\\cdot",  "360^\\circ", "=", "270^\\circ", color=c1t, font_size=fs2).shift(2.2*DOWN)

        
        # Action Sequence
        with self.voiceover(
                text="""
                That's wrong, unfortunately.

                We have <bookmark mark="three_quarter"/> three quarters of a circle here.
                And we know that <bookmark mark="full_circle"/>a full circle has 360 degrees.
                So the angle we're looking for is three quarters of 360 degrees.
                So our angle is <bookmark mark="equation_1"/> three quarters <bookmark mark="equation_2"/>
                times 360 degrees, which <bookmark mark="equation_3"/>is 270 degrees.
                """
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(0.75))

            self.wait_until_bookmark("three_quarter")
            x,y,_ = three_quarter.get_center()+0.4*DOWN
            cursor.blinking=False
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
            cursor.blinking=True

        self.wait(4)

class Func_7_1_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Degrees")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        a = ValueTracker(0)

        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE).shift(UP)
        line_start = Line(UP, get_arc().get_start(), color=BLUE)
        get_line_end = lambda: Line(UP, get_arc().get_end(), color=BLUE)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        three_quarter = Tex("Here: $\\tfrac{3}{4}$ of a full circle", color=c1t, font_size=fs3)
        full_circle = Tex("Full circle: $360^\\circ$", color=c1t, font_size=fs3)
        explanations = VGroup(three_quarter, full_circle).arrange(DOWN, buff=0.2, aligned_edge=LEFT).shift(DOWN*1.2)

        equation = MathTex("\\tfrac{3}{4}", "\\cdot",  "360^\\circ", "=", "270^\\circ", color=c1t, font_size=fs2).shift(2.2*DOWN)

        
        # Action Sequence
        with self.voiceover(
                text="""
                That's wrong, unfortunately.

                We have <bookmark mark="three_quarter"/> three quarters of a circle here.
                And we know that <bookmark mark="full_circle"/>a full circle has 360 degrees.
                So the angle we're looking for is three quarters of 360 degrees.
                So our angle is <bookmark mark="equation_1"/> three quarters <bookmark mark="equation_2"/>
                times 360 degrees, which <bookmark mark="equation_3"/>is 270 degrees.
                """
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(0.75))

            self.wait_until_bookmark("three_quarter")
            x,y,_ = three_quarter.get_center()+0.4*DOWN
            cursor.blinking=False
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
            cursor.blinking=True

        self.wait(4)

class Func_7_1_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Degrees")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        a = ValueTracker(0)

        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE).shift(UP)
        line_start = Line(UP, get_arc().get_start(), color=BLUE)
        get_line_end = lambda: Line(UP, get_arc().get_end(), color=BLUE)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        three_quarter = Tex("Here: $\\tfrac{3}{4}$ of a full circle", color=c1t, font_size=fs3)
        full_circle = Tex("Full circle: $360^\\circ$", color=c1t, font_size=fs3)
        explanations = VGroup(three_quarter, full_circle).arrange(DOWN, buff=0.2, aligned_edge=LEFT).shift(DOWN*1.2)

        equation = MathTex("\\tfrac{3}{4}", "\\cdot",  "360^\\circ", "=", "270^\\circ", color=c1t, font_size=fs2).shift(2.2*DOWN)

        
        # Action Sequence
        with self.voiceover(
                text="""
                That's right, congrats!

                We have <bookmark mark="three_quarter"/> three quarters of a circle here.
                And we know that <bookmark mark="full_circle"/>a full circle has 360 degrees.
                So the angle we're looking for is three quarters of 360 degrees.
                So our angle is <bookmark mark="equation_1"/> three quarters <bookmark mark="equation_2"/>
                times 360 degrees, which <bookmark mark="equation_3"/>is 270 degrees.
                """
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(0.75))

            self.wait_until_bookmark("three_quarter")
            x,y,_ = three_quarter.get_center()+0.4*DOWN
            cursor.blinking=False
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
            cursor.blinking=True

        self.wait(4)

class Func_7_1_I_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Degrees")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        a = ValueTracker(0)

        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE).shift(UP)
        line_start = Line(UP, get_arc().get_start(), color=BLUE)
        get_line_end = lambda: Line(UP, get_arc().get_end(), color=BLUE)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        three_quarter = Tex("Here: $\\tfrac{3}{4}$ of a full circle", color=c1t, font_size=fs3)
        full_circle = Tex("Full circle: $360^\\circ$", color=c1t, font_size=fs3)
        explanations = VGroup(three_quarter, full_circle).arrange(DOWN, buff=0.2, aligned_edge=LEFT).shift(DOWN*1.2)

        equation = MathTex("\\tfrac{3}{4}", "\\cdot",  "360^\\circ", "=", "270^\\circ", color=c1t, font_size=fs2).shift(2.2*DOWN)

        
        # Action Sequence
        with self.voiceover(
                text="""
                That's wrong, unfortunately.

                We have <bookmark mark="three_quarter"/> three quarters of a circle here.
                And we know that <bookmark mark="full_circle"/>a full circle has 360 degrees.
                So the angle we're looking for is three quarters of 360 degrees.
                So our angle is <bookmark mark="equation_1"/> three quarters <bookmark mark="equation_2"/>
                times 360 degrees, which <bookmark mark="equation_3"/>is 270 degrees.
                """
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(0.75))

            self.wait_until_bookmark("three_quarter")
            x,y,_ = three_quarter.get_center()+0.4*DOWN
            cursor.blinking=False
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
            cursor.blinking=True

        self.wait(4)


#####################################
#####################################
TASK_Func_7_1_I_2_q = SophiaTaskDefinition(
    answerOptions = ["$90^\circ$", "$180^\circ$", "$270^\circ$", "$360^\circ$"],
    correctAnswerIndex = 3,
    questionText = "How many degrees does this $\\tfrac{3}{4}$ circle have?"
)
class Func_7_1_I_2_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Radians")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, y=0.6)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        a = ValueTracker(0)

        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE, fill_color=BLUE).shift(0.6*UP)
        line_start = Line(0.6*UP, get_arc().get_start(), color=BLUE).add_updater(lambda m: m.set_stroke_width(0 if a.get_value() == 1 else 4))
        get_line_end = lambda: Line(0.6*UP, get_arc().get_end(), color=BLUE, stroke_width = 0 if a.get_value() == 1 else 4)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        degrees = Tex("Degrees:", color=c1t, font_size=fs2)
        radians = Tex("Radians:", color=c1t, font_size=fs2)
        measures = VGroup(degrees, radians).arrange(DOWN, buff=0.4, aligned_edge=LEFT).shift(DOWN*1.8+LEFT)
        degrees_val_1 = MathTex("360^\\circ", color=c1t, font_size=fs2)
        radians_val_1 = MathTex("2\\Pi", color=c1t, font_size=fs2)
        values_1 = VGroup(degrees_val_1, radians_val_1).arrange(DOWN, buff=0.4, aligned_edge=LEFT).next_to(measures, RIGHT, buff=0.4)
        degrees_val_2 = MathTex("180^\\circ", color=c1t, font_size=fs2)
        radians_val_2 = MathTex("?", color=c1t, font_size=fs2)
        values_2 = VGroup(degrees_val_2, radians_val_2).arrange(DOWN, buff=0.4, aligned_edge=LEFT).next_to(values_1, RIGHT, buff=0.4)
        full = Tex("Full", color=c1t, font_size=fs2).next_to(degrees_val_1, UP, buff=0.4)
        half = Tex("Half", color=c1t, font_size=fs2).next_to(degrees_val_2, UP, buff=0.4)


        # Action Sequence
        with self.voiceover(
                text="""
                In addition to degrees, there is one more way to describe angles:
                Radians. And just like a full circle <bookmark mark="degrees"/>has 360 degrees,
                in radians the angle of a full circle<bookmark mark="radians"/> is 2 pi.

                Now, knowing that a full circle is 2 pi radians, how many radians
                <bookmark mark="half_circle"/>is a half circle?
                
                A little hint: As mentioned, a <bookmark mark="full_circle_fin"/> full circle has 360 degrees.
                And <bookmark mark="half_circle_fin"/>a half circle has 180 degrees.

                Now we also know that a full circle <bookmark mark="radians_fin"/>is 2 pi radians.
                So <bookmark mark="radians_fin_half"/>how many radians is a half circle?
                """
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(1), run_time=3)

            self.wait_until_bookmark("degrees")
            x,y,_ = degrees_val_1.get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(degrees), Write(degrees_val_1), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("radians")
            cursor.blinking=False
            x,y,_ = radians_val_1.get_center()+0.4*DOWN
            self.play(Write(radians), Write(radians_val_1), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("half_circle")
            cursor.blinking=False
            self.play(a.animate.set_value(0.5), run_time=0.5)
            x,y,_ = arc.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            self.play(MoveAlongPath(cursor, arc))
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("full_circle_fin")
            cursor.blinking=False
            x,y,_ = degrees_val_1.get_center()+0.4*DOWN
            self.play(Write(full), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("half_circle_fin")
            cursor.blinking=False
            x,y,_ = degrees_val_2.get_center()+0.4*DOWN
            self.play(Write(half), Write(degrees_val_2), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("radians_fin")
            cursor.blinking=False
            x,y,_ = radians_val_1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("radians_fin_half")
            cursor.blinking=False
            x,y,_ = radians_val_2.get_center()+0.4*DOWN
            self.play(Write(radians_val_2), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

        self.wait(4)


class Func_7_1_I_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Radians")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=0.6)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        a = ValueTracker(0)


        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE, fill_color=BLUE).shift(0.6*UP)
        line_start = Line(0.6*UP, get_arc().get_start(), color=BLUE).add_updater(lambda m: m.set_stroke_width(0 if a.get_value() == 1 else 4))
        get_line_end = lambda: Line(0.6*UP, get_arc().get_end(), color=BLUE, stroke_width = 0 if a.get_value() == 1 else 4)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        half = Tex("Here: $\\tfrac{1}{2}$ of a full circle", color=c1t, font_size=fs2)
        full_circle = Tex("Full circle: $2\\Pi$", color=c1t, font_size=fs2)
        explanations = VGroup(half, full_circle).arrange(DOWN, buff=0.2, aligned_edge=LEFT).shift(DOWN*1.2)

        equation = MathTex("\\tfrac{1}{2}", "\\cdot",  "2\\Pi", "=", "\\Pi", color=c1t, font_size=fs2).shift(2.2*DOWN)

        
        # Action Sequence
        with self.voiceover(
                text="""
                That's wrong, unfortunately.

                We're considering <bookmark mark="half"/> a half circle in this example.
                And we know that <bookmark mark="full_circle"/>a full circle has 2 Pi Radians.
                This means that our angle is <bookmark mark="equation_1"/> one half
                <bookmark mark="equation_2"/> times 2 Pi, which
                <bookmark mark="equation_3"/>equals Pi.
                """
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(0.5))

            self.wait_until_bookmark("half")
            x,y,_ = half.get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), Write(half), run_time=0.5)

            self.wait_until_bookmark("full_circle")
            x,y,_ = full_circle.get_center()+0.4*DOWN
            self.play(Write(full_circle), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("equation_1")
            cursor.blinking=False
            x,y, _ = equation[0].get_center()+0.4*DOWN
            self.play(Write(equation[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("equation_2")
            cursor.blinking=False
            x,y, _ = equation[2].get_center()+0.4*DOWN
            self.play(Write(equation[1]), Write(equation[2]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("equation_3")
            cursor.blinking=False
            x,y, _ = equation[4].get_center()+0.4*DOWN
            self.play(Write(equation[3]), Write(equation[4]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

        self.wait(4)


class Func_7_1_I_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Radians")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=0.6)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        a = ValueTracker(0)


        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE, fill_color=BLUE).shift(0.6*UP)
        line_start = Line(0.6*UP, get_arc().get_start(), color=BLUE).add_updater(lambda m: m.set_stroke_width(0 if a.get_value() == 1 else 4))
        get_line_end = lambda: Line(0.6*UP, get_arc().get_end(), color=BLUE, stroke_width = 0 if a.get_value() == 1 else 4)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        half = Tex("Here: $\\tfrac{1}{2}$ of a full circle", color=c1t, font_size=fs2)
        full_circle = Tex("Full circle: $2\\Pi$", color=c1t, font_size=fs2)
        explanations = VGroup(half, full_circle).arrange(DOWN, buff=0.2, aligned_edge=LEFT).shift(DOWN*1.2)

        equation = MathTex("\\tfrac{1}{2}", "\\cdot",  "2\\Pi", "=", "\\Pi", color=c1t, font_size=fs2).shift(2.2*DOWN)

        
        # Action Sequence
        with self.voiceover(
                text="""
                That's wrong, unfortunately.

                We're considering <bookmark mark="half"/> a half circle in this example.
                And we know that <bookmark mark="full_circle"/>a full circle has 2 Pi Radians.
                This means that our angle is <bookmark mark="equation_1"/> one half
                <bookmark mark="equation_2"/> times 2 Pi, which
                <bookmark mark="equation_3"/>equals Pi.
                """
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(0.5))

            self.wait_until_bookmark("half")
            x,y,_ = half.get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), Write(half), run_time=0.5)

            self.wait_until_bookmark("full_circle")
            x,y,_ = full_circle.get_center()+0.4*DOWN
            self.play(Write(full_circle), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("equation_1")
            cursor.blinking=False
            x,y, _ = equation[0].get_center()+0.4*DOWN
            self.play(Write(equation[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("equation_2")
            cursor.blinking=False
            x,y, _ = equation[2].get_center()+0.4*DOWN
            self.play(Write(equation[1]), Write(equation[2]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("equation_3")
            cursor.blinking=False
            x,y, _ = equation[4].get_center()+0.4*DOWN
            self.play(Write(equation[3]), Write(equation[4]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

        self.wait(4)


class Func_7_1_I_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Radians")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=0.6)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        a = ValueTracker(0)


        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE, fill_color=BLUE).shift(0.6*UP)
        line_start = Line(0.6*UP, get_arc().get_start(), color=BLUE).add_updater(lambda m: m.set_stroke_width(0 if a.get_value() == 1 else 4))
        get_line_end = lambda: Line(0.6*UP, get_arc().get_end(), color=BLUE, stroke_width = 0 if a.get_value() == 1 else 4)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        half = Tex("Here: $\\tfrac{1}{2}$ of a full circle", color=c1t, font_size=fs2)
        full_circle = Tex("Full circle: $2\\Pi$", color=c1t, font_size=fs2)
        explanations = VGroup(half, full_circle).arrange(DOWN, buff=0.2, aligned_edge=LEFT).shift(DOWN*1.2)

        equation = MathTex("\\tfrac{1}{2}", "\\cdot",  "2\\Pi", "=", "\\Pi", color=c1t, font_size=fs2).shift(2.2*DOWN)

        
        # Action Sequence
        with self.voiceover(
                text="""
                That's wrong, unfortunately.

                We're considering <bookmark mark="half"/> a half circle in this example.
                And we know that <bookmark mark="full_circle"/>a full circle has 2 Pi Radians.
                This means that our angle is <bookmark mark="equation_1"/> one half
                <bookmark mark="equation_2"/> times 2 Pi, which
                <bookmark mark="equation_3"/>equals Pi.
                """
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(0.5))

            self.wait_until_bookmark("half")
            x,y,_ = half.get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), Write(half), run_time=0.5)

            self.wait_until_bookmark("full_circle")
            x,y,_ = full_circle.get_center()+0.4*DOWN
            self.play(Write(full_circle), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("equation_1")
            cursor.blinking=False
            x,y, _ = equation[0].get_center()+0.4*DOWN
            self.play(Write(equation[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("equation_2")
            cursor.blinking=False
            x,y, _ = equation[2].get_center()+0.4*DOWN
            self.play(Write(equation[1]), Write(equation[2]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("equation_3")
            cursor.blinking=False
            x,y, _ = equation[4].get_center()+0.4*DOWN
            self.play(Write(equation[3]), Write(equation[4]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

        self.wait(4)


class Func_7_1_I_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Radians")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=0.6)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        a = ValueTracker(0)


        get_arc = lambda: Arc(radius=1, angle=2*PI*a.get_value(), color=BLUE, fill_color=BLUE).shift(0.6*UP)
        line_start = Line(0.6*UP, get_arc().get_start(), color=BLUE).add_updater(lambda m: m.set_stroke_width(0 if a.get_value() == 1 else 4))
        get_line_end = lambda: Line(0.6*UP, get_arc().get_end(), color=BLUE, stroke_width = 0 if a.get_value() == 1 else 4)

        arc = always_redraw(get_arc)
        line_end = always_redraw(get_line_end)
        self.add(arc, line_start, line_end)

        half = Tex("Here: $\\tfrac{1}{2}$ of a full circle", color=c1t, font_size=fs2)
        full_circle = Tex("Full circle: $2\\Pi$", color=c1t, font_size=fs2)
        explanations = VGroup(half, full_circle).arrange(DOWN, buff=0.2, aligned_edge=LEFT).shift(DOWN*1.2)

        equation = MathTex("\\tfrac{1}{2}", "\\cdot",  "2\\Pi", "=", "\\Pi", color=c1t, font_size=fs2).shift(2.2*DOWN)

        
        # Action Sequence
        with self.voiceover(
                text="""
                That is correct, well done!

                We're considering <bookmark mark="half"/> a half circle in this example.
                And we know that <bookmark mark="full_circle"/>a full circle has 2 Pi Radians.
                This means that our angle is <bookmark mark="equation_1"/> one half
                <bookmark mark="equation_2"/> times 2 Pi, which
                <bookmark mark="equation_3"/>equals Pi.
                """
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(0.5))

            self.wait_until_bookmark("half")
            x,y,_ = half.get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), Write(half), run_time=0.5)

            self.wait_until_bookmark("full_circle")
            x,y,_ = full_circle.get_center()+0.4*DOWN
            self.play(Write(full_circle), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("equation_1")
            cursor.blinking=False
            x,y, _ = equation[0].get_center()+0.4*DOWN
            self.play(Write(equation[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("equation_2")
            cursor.blinking=False
            x,y, _ = equation[2].get_center()+0.4*DOWN
            self.play(Write(equation[1]), Write(equation[2]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("equation_3")
            cursor.blinking=False
            x,y, _ = equation[4].get_center()+0.4*DOWN
            self.play(Write(equation[3]), Write(equation[4]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

        self.wait(4)


#####################################
#####################################
class Func_7_1_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Measuring Angles")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, y=0.6)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
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
                text="""
                Ever wondered why a full <bookmark mark="degrees"/>circle has 360 degrees?
                It seems to be such a random number, doesn't it? Why not 72? Or 420?

                Well, the reason that it is 360 is that it has always been that way.
                <bookmark mark="temple"/>The Babylonians, who lived in the area of today's Iraq,
                used a number system with <bookmark mark="base"/>a base of 60. This means that
                they counted in 60s instead of tens like we do today. And they used this number
                system to measure angles as well. So imagine, to them, 360 was kind of like
                100 is to us today. It was a nice round number that was easy to work with.
                <bookmark mark="degrees_switch"/> There is also a reason why <bookmark mark="rad"/>
                in Radians, a full circle is 2 Pi. And it's not historical, but mathematical.
                <bookmark mark="qmark"/>
                Take a moment and think: Why do we say that a full circle is 2 Pi Radians?
                If you want a hint: Think about the circumference of a circle.
                """
        ) as tracker:

            # Display the arc initially
            self.play(a.animate.set_value(1), run_time=1)

            self.wait_until_bookmark("degrees")
            threesixty = MathTex("360", color=c1t, font_size=fs1).move_to(arc)
            x,y,_ = threesixty.get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(threesixty), run_time=0.5)
            qmark = self.draw_qmark(cursor, [0,-2.2,0], run_time=4, apply_waves=0)
            for _ in range(2):
                self.play(ApplyWave(qmark), run_time=2)
            cursor.blinking=True

            self.wait_until_bookmark("temple")
            self.play(FadeOut(qmark), temple.animate.shift(5*RIGHT), run_time=1)

            self.wait_until_bookmark("base")
            x,y,_ = threesixty.get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True
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
        title = self.add_title("Measuring Angles")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=False, y=0.6)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
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
                text="""
                Here it goes:
                Recall the formula <bookmark mark="around"/>for the circumference of a circle:
                The <bookmark mark="circ_1"/> circumference c of a circle is equal <bookmark mark="two"/>
                to 2 <bookmark mark="pi"/> times Pie times <bookmark mark="r"/>the radius r of the circle.

                If we look at the unit circle,<bookmark mark="unit"/> which is a circle with the radius
                of 1, we can see that the circumference of the unit circle is <bookmark mark="two_pi"/>
                simply equal to two times Pie.

                So in the unit circle, the angle in radians is <bookmark mark="rad_1"/> equal to
                the circumference of the unit circle.

                <bookmark mark="red_circle"/> And this holds true for other angles as well: A quarter
                of the unit circle has both a circumference and an angle of 0.5 Pie. <bookmark mark="half"/>
                And a half of the unit circle has both a circumference and an angle of Pie.
                """
        ) as tracker:

            self.wait_until_bookmark("around")
            x,y,_ = arc.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(MoveAlongPath(cursor, arc))
            cursor.blinking=True

            self.wait_until_bookmark("circ_1")
            x,y,_ = circ[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(circ[0]), Write(circ[1]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("two")
            cursor.blinking=False
            x,y,_ = circ[2].get_center()+0.4*DOWN
            self.play(Write(circ[2]), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("pi")
            x,y,_ = circ[4].get_center()+0.4*DOWN
            self.play(Write(circ[3]), Write(circ[4]), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("r")
            x,y,_ = circ[6].get_center()+0.4*DOWN
            self.play(Write(circ[5]), Write(circ[6]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("unit")
            cursor.blinking=False
            x,y,_ = unit_line.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor_updater = lambda m: m.move_to(unit_line.get_end())
            cursor.add_updater(cursor_updater)
            self.play(Create(unit_line), Write(unit_label))
            cursor.remove_updater(cursor_updater)
            cursor.blinking=True

            self.wait_until_bookmark("two_pi")
            cursor.blinking=False
            x,y,_ = circ[4].get_center()+0.4*DOWN
            self.play(circ.animate.shift(0.3*RIGHT), Unwrite(circ[5]), Unwrite(circ[6]), CursorMoveTo(cursor, x, y))
            cursor.blinking=True

            self.wait_until_bookmark("rad_1")
            dec = DecimalNumber(2, num_decimal_places=1, font_size=fs1).set_color(c1t).move_to(circ[2].get_right())
            pi_dec = MathTex("\\Pi", color=c1t, font_size=fs1).move_to(circ[4])
            self.play(ReplacementTransform(circ[2], dec), ReplacementTransform(circ[4], pi_dec), Unwrite(circ[0]), Unwrite(circ[1]), Unwrite(circ[3]))
            circumference = VGroup(dec, pi_dec)
            self.play(circumference.animate.shift(circumference.get_x()*LEFT), run_time=0.3)

            self.wait_until_bookmark("red_circle")
            self.add(arc_2, line_start_2, line_end_2)
            x,y,_ = arc_2.get_start()
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), Unwrite(unit_line), Unwrite(unit_label), run_time=0.5)
            cursor.add_updater(lambda m: m.move_to(arc_2.get_end()))
            dec.add_updater(lambda m: m.set_value(b.get_value()*2))
            self.play(b.animate.set_value(0.25))
            cursor.blinking=True

            self.wait_until_bookmark("half")
            cursor.blinking=False
            self.play(b.animate.set_value(0.5))
            cursor.blinking=True

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
        title = self.add_title("Measuring Angles")

        deg = int(self.angle_frac*360)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=False, y=0.6)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        circ =  Arc(radius=1, angle=2*PI, color=BLUE, fill_color=BLUE).shift(0.6*UP)
        self.add(circ)

        b = ValueTracker(0)

        get_arc_2 = lambda: Arc(radius=1, angle=2*PI*b.get_value(), color=self.color, fill_color=BLUE).shift(0.6*UP)
        line_start_2 = Line(0.6*UP, get_arc_2().get_start(), color=self.color).add_updater(lambda m: m.set_stroke_width(0 if b.get_value()==1 else 4))
        get_line_end_2 = lambda: Line(0.6*UP, get_arc_2().get_end(), color=self.color, stroke_width = 0 if b.get_value()==1 else 4)

        arc_2 = always_redraw(get_arc_2)
        line_end_2 = always_redraw(get_line_end_2)
        
        label_deg = Tex("Degrees: ", f"${deg}$", "$^\\circ$", color=c1t, font_size=fs1)
        label_rad = Tex("Radians: ", "  ?", color=c1t, font_size=fs1)
        labels = VGroup(label_deg, label_rad).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(circ, DOWN, buff=0.6)

        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.intro} <bookmark mark="red_circle"/> {self.color_string} circle. Measured in Degrees, it <bookmark mark="degrees"/>
                has an angle of {deg} degrees.
                What is the equivalent angle, when we <bookmark mark="rad"/>describe it in Radians, instead of Degrees?
                """
        ) as tracker:


            self.wait_until_bookmark("red_circle")
            self.add(arc_2, line_start_2, line_end_2)
            x,y,_ = arc_2.get_start()
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor_updater = lambda m: m.move_to(arc_2.get_end())
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(self.angle_frac))
            cursor.remove_updater(cursor_updater)
            cursor.blinking=True

            self.wait_until_bookmark("degrees")
            x,y,_ = label_deg[1].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(label_deg), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("rad")
            x,y,_ = label_rad[1].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(label_rad), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

        self.wait(4)


class DegToRadAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Measuring Angles")

        deg = int(self.angle_frac*360)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=False, y=0.6)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        circ =  Arc(radius=1, angle=2*PI, color=BLUE, fill_color=BLUE).shift(0.6*UP)
        self.add(circ)

        b = ValueTracker(0)

        get_arc_2 = lambda: Arc(radius=1, angle=2*PI*b.get_value(), color=self.color, fill_color=BLUE).shift(0.6*UP)
        line_start_2 = Line(0.6*UP, get_arc_2().get_start(), color=self.color).add_updater(lambda m: m.set_stroke_width(0 if b.get_value()==1 else 4))
        get_line_end_2 = lambda: Line(0.6*UP, get_arc_2().get_end(), color=self.color, stroke_width = 0 if b.get_value()==1 else 4)

        arc_2 = always_redraw(get_arc_2)
        line_end_2 = always_redraw(get_line_end_2)
        
        label_deg = Tex("Degrees: ", f"${deg}$", "$^\\circ$", color=c1t, font_size=fs1).next_to(circ, DOWN, buff=0.6)
        eq = MathTex(f"{self.angle_frac_tex}", "\\cdot", "2\\Pi", "=", f"{2*self.angle_frac}\\Pi", color=c1t, font_size=fs1).next_to(label_deg, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.intro} The <bookmark mark="red_circle"/> angle of the {self.color_string} circle is <bookmark mark="degrees"/>
                {deg} degrees, which is {self.angle_frac_string} of a full circle.

                So the angle in Radians is also {self.angle_frac_string} of a full circle, which <bookmark mark="eq_1"/>
                is {self.angle_frac_string} <bookmark mark="eq_2"/> times 2 Pi, which <bookmark mark="eq_3"/> equals
                {self.angle_rad_string}Pi Radians.
                """
        ) as tracker:


            self.wait_until_bookmark("red_circle")
            self.add(arc_2, line_start_2, line_end_2)
            x,y,_ = arc_2.get_start()
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor_updater = lambda m: m.move_to(arc_2.get_end())
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(self.angle_frac))
            cursor.remove_updater(cursor_updater)
            cursor.blinking=True

            self.wait_until_bookmark("degrees")
            x,y,_ = label_deg[1].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(label_deg), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("eq_1")
            cursor.blinking=False
            x,y,_ = eq[0].get_center()+0.4*DOWN
            self.play(Write(eq[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("eq_2")
            cursor.blinking=False
            x,y,_ = eq[2].get_center()+0.4*DOWN
            self.play(Write(eq[1]), Write(eq[2]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("eq_3")
            cursor.blinking=False
            x,y,_ = eq[4].get_center()+0.4*DOWN
            self.play(Write(eq[3]), Write(eq[4]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

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
        title = self.add_title("Measuring Angles")

        deg = int(self.angle_frac*360)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=False, y=0.6)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        circ =  Arc(radius=1, angle=2*PI, color=BLUE, fill_color=BLUE).shift(0.6*UP)
        self.add(circ)

        b = ValueTracker(0)

        get_arc_2 = lambda: Arc(radius=1, angle=2*PI*b.get_value(), color=self.color, fill_color=BLUE).shift(0.6*UP)
        line_start_2 = Line(0.6*UP, get_arc_2().get_start(), color=self.color).add_updater(lambda m: m.set_stroke_width(0 if b.get_value()==1 else 4))
        get_line_end_2 = lambda: Line(0.6*UP, get_arc_2().get_end(), color=self.color, stroke_width = 0 if b.get_value()==1 else 4)

        arc_2 = always_redraw(get_arc_2)
        line_end_2 = always_redraw(get_line_end_2)
        
        label_rad = Tex("Radians: ", f"${2*self.angle_frac}\\Pi$", color=c1t, font_size=fs1)
        label_deg = Tex("Degrees: ", "$?^\\circ$", color=c1t, font_size=fs1)
        labels = VGroup(label_rad, label_deg).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(circ, DOWN, buff=0.6)

        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.intro} <bookmark mark="red_circle"/> {self.color_string} circle. Measured in Radians, it <bookmark mark="rad"/>
                has an angle of {self.angle_rad_string} Pi.
                What is the equivalent angle, when we <bookmark mark="degrees"/>describe it in Degrees, instead of Radians?
                """
        ) as tracker:


            self.wait_until_bookmark("red_circle")
            self.add(arc_2, line_start_2, line_end_2)
            x,y,_ = arc_2.get_start()
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor_updater = lambda m: m.move_to(arc_2.get_end())
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(self.angle_frac))
            cursor.remove_updater(cursor_updater)
            cursor.blinking=True

            self.wait_until_bookmark("rad")
            x,y,_ = label_rad[1].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(label_rad), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("degrees")
            x,y,_ = label_deg[1].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(label_deg), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

        self.wait(4)


class RadToDegAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Measuring Angles")

        deg = int(self.angle_frac*360)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=False, y=0.6)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        circ =  Arc(radius=1, angle=2*PI, color=BLUE, fill_color=BLUE).shift(0.6*UP)
        self.add(circ)

        b = ValueTracker(0)

        get_arc_2 = lambda: Arc(radius=1, angle=2*PI*b.get_value(), color=self.color, fill_color=BLUE).shift(0.6*UP)
        line_start_2 = Line(0.6*UP, get_arc_2().get_start(), color=self.color).add_updater(lambda m: m.set_stroke_width(0 if b.get_value()==1 else 4))
        get_line_end_2 = lambda: Line(0.6*UP, get_arc_2().get_end(), color=self.color, stroke_width = 0 if b.get_value()==1 else 4)

        arc_2 = always_redraw(get_arc_2)
        line_end_2 = always_redraw(get_line_end_2)
        
        label_rad = Tex("Radians: ", f"${2*self.angle_frac}\\Pi$", color=c1t, font_size=fs1).next_to(circ, DOWN, buff=0.6)
        eq = MathTex(f"{self.angle_frac_tex}", "\\cdot", "360^\\circ", "=", f"{360*self.angle_frac}^\\circ", color=c1t, font_size=fs1).next_to(label_rad, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.intro} The <bookmark mark="red_circle"/> angle of the {self.color_string} circle is <bookmark mark="radians"/>
                {self.angle_rad_string} Pi, which is {self.angle_frac_string} of a full circle.

                So the angle in Degrees is also {self.angle_frac_string} of a full circle, which <bookmark mark="eq_1"/>
                is {self.angle_frac_string} <bookmark mark="eq_2"/> times 360 Degrees, which <bookmark mark="eq_3"/> equals
                {deg}degrees.
                """
        ) as tracker:


            self.wait_until_bookmark("red_circle")
            self.add(arc_2, line_start_2, line_end_2)
            x,y,_ = arc_2.get_start()
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor_updater = lambda m: m.move_to(arc_2.get_end())
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(self.angle_frac))
            cursor.remove_updater(cursor_updater)
            cursor.blinking=True

            self.wait_until_bookmark("radians")
            x,y,_ = label_rad[1].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(label_rad), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True
            
            self.wait_until_bookmark("eq_1")
            cursor.blinking=False
            x,y,_ = eq[0].get_center()+0.4*DOWN
            self.play(Write(eq[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("eq_2")
            cursor.blinking=False
            x,y,_ = eq[2].get_center()+0.4*DOWN
            self.play(Write(eq[1]), Write(eq[2]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("eq_3")
            cursor.blinking=False
            x,y,_ = eq[4].get_center()+0.4*DOWN
            self.play(Write(eq[3]), Write(eq[4]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

        self.wait(4)


#####################################
#####################################
######## Specific Qs ################
#####################################
#####################################
TASK_Func_7_1_P_1_q = SophiaTaskDefinition(
    answerOptions = ["$2\\Pi$", "$90\Pi$", "$\\frac{1}{2}\Pi$", "$\\frac{1}{4}\Pi$"],
    correctAnswerIndex = 2,
    questionText = f"What angle in Radians corresponds to $90^\circ$?"
)
class Func_7_1_P_1_q(DegToRadQuestionScene):

    def construct(self):
        
        self.intro = "Look at the"
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = "one quarter"
        self.angle_rad_string = "one half"
        self.color_string = "purple"
        self.color = PURPLE

        super().construct()


class Func_7_1_P_1_a(DegToRadAnswerScene):

    def construct(self):
        
        self.intro = "That's not it..."
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = "one quarter"
        self.angle_rad_string = "one half"
        self.color_string = "purple"
        self.color = PURPLE

        super().construct()


class Func_7_1_P_1_b(DegToRadAnswerScene):

    def construct(self):
        
        self.intro = "That's not it..."
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = "one quarter"
        self.angle_rad_string = "one half"
        self.color_string = "purple"
        self.color = PURPLE

        super().construct()


class Func_7_1_P_1_c(DegToRadAnswerScene):

    def construct(self):
        
        self.intro = "That's correct, well done."
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = "one quarter"
        self.angle_rad_string = "one half"
        self.color_string = "purple"
        self.color = PURPLE

        super().construct()


class Func_7_1_P_1_d(DegToRadAnswerScene):

    def construct(self):
        
        self.intro = "That's not it..."
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = "one quarter"
        self.angle_rad_string = "one half"
        self.color_string = "purple"
        self.color = PURPLE

        super().construct()
        

#####################################
#####################################
TASK_Func_7_1_P_2_q = SophiaTaskDefinition(
    answerOptions = ["$90^\circ$", "$180^\circ$", "$270^\circ$", "$360^\circ$"],
    correctAnswerIndex = 0,
    questionText = "What angle in degrees corresponds to $\tfrac{\Pi}{2}$?"
)
class Func_7_1_P_2_q(RadToDegQuestionScene):

    def construct(self):
        
        self.intro = "Look at the"
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = "one quarter"
        self.angle_rad_string = "one half"
        self.color_string = "green"
        self.color = GREEN

        super().construct()



class Func_7_1_P_2_a(RadToDegAnswerScene):

    def construct(self):

        self.intro = "That's correct, well done."
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = "one quarter"
        self.angle_rad_string = "one half"
        self.color_string = "green"
        self.color = GREEN

        super().construct()


class Func_7_1_P_2_b(RadToDegAnswerScene):

    def construct(self):

        self.intro = "No, that's not right."
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = "one quarter"
        self.angle_rad_string = "one half"
        self.color_string = "green"
        self.color = GREEN

        super().construct()


class Func_7_1_P_2_c(RadToDegAnswerScene):

    def construct(self):

        self.intro = "No, that's not right."
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = "one quarter"
        self.angle_rad_string = "one half"
        self.color_string = "green"
        self.color = GREEN

        super().construct()


class Func_7_1_P_2_d(RadToDegAnswerScene):

    def construct(self):

        self.intro = "No, that's not right."
        self.angle_frac = 1/4
        self.angle_frac_tex = "\\tfrac{1}{4}"
        self.angle_frac_string = "one quarter"
        self.angle_rad_string = "one half"
        self.color_string = "green"
        self.color = GREEN

        super().construct()


#####################################
#####################################
TASK_Func_7_1_P_3_q = SophiaTaskDefinition(
    answerOptions = ["$90^\circ$", "$180^\circ$", "$270^\circ$", "$360^\circ$"],
    correctAnswerIndex = 2,
    questionText = "What angle in degrees corresponds to $\tfrac{3\Pi}{2}$?"
)
class Func_7_1_P_3_q(RadToDegQuestionScene):

    def construct(self):
        
        self.intro = "Look at the"
        self.angle_frac = 3/4
        self.angle_frac_tex = "\\tfrac{3}{4}"
        self.angle_frac_string = "three quarter"
        self.angle_rad_string = "one and a half"
        self.color_string = "orange"
        self.color = ORANGE

        super().construct()



class Func_7_1_P_3_a(RadToDegAnswerScene):

    def construct(self):

        self.intro = "No, that's not it."
        self.angle_frac = 3/4
        self.angle_frac_tex = "\\tfrac{3}{4}"
        self.angle_frac_string = "three quarter"
        self.angle_rad_string = "one and a half"
        self.color_string = "orange"
        self.color = ORANGE

        super().construct()


class Func_7_1_P_3_b(RadToDegAnswerScene):

    def construct(self):

        self.intro = "No, that's not it."
        self.angle_frac = 3/4
        self.angle_frac_tex = "\\tfrac{3}{4}"
        self.angle_frac_string = "three quarter"
        self.angle_rad_string = "one and a half"
        self.color_string = "orange"
        self.color = ORANGE

        super().construct()


class Func_7_1_P_3_c(RadToDegAnswerScene):

    def construct(self):

        self.intro = "Yep, you got it."
        self.angle_frac = 3/4
        self.angle_frac_tex = "\\tfrac{3}{4}"
        self.angle_frac_string = "three quarter"
        self.angle_rad_string = "one and a half"
        self.color_string = "orange"
        self.color = ORANGE

        super().construct()


class Func_7_1_P_3_d(RadToDegAnswerScene):

    def construct(self):

        self.intro = "No, that's not it."
        self.angle_frac = 3/4
        self.angle_frac_tex = "\\tfrac{3}{4}"
        self.angle_frac_string = "three quarter"
        self.angle_rad_string = "one and a half"
        self.color_string = "orange"
        self.color = ORANGE

        super().construct()


#####################################
#####################################
TASK_Func_7_1_P_4_q = SophiaTaskDefinition(
    answerOptions = ["$2\Pi$", "$\\frac{1}{4}\Pi$", "$\\frac{1}{2}\Pi$", "$\Pi$"],
    correctAnswerIndex = 1,
    questionText = f"What angle in Radians corresponds to $45^\circ$?"
)
class Func_7_1_P_4_q(DegToRadQuestionScene):

    def construct(self):
        
        self.intro = "Check out the"
        self.angle_frac = 1/8
        self.angle_frac_tex = "\\tfrac{1}{8}"
        self.angle_frac_string = "one eigth"
        self.angle_rad_string = "one quarter"
        self.color_string = "pink"
        self.color = PINK

        super().construct()


class Func_7_1_P_4_a(DegToRadAnswerScene):

    def construct(self):
        
        self.intro = "Yes, that's right."
        self.angle_frac = 1/8
        self.angle_frac_tex = "\\tfrac{1}{8}"
        self.angle_frac_string = "one eigth"
        self.angle_rad_string = "one quarter"
        self.color_string = "pink"
        self.color = PINK


        super().construct()

class Func_7_1_P_4_b(DegToRadAnswerScene):

    def construct(self):
        
        self.intro = "No, that's not it."
        self.angle_frac = 1/8
        self.angle_frac_tex = "\\tfrac{1}{8}"
        self.angle_frac_string = "one eigth"
        self.angle_rad_string = "one quarter"
        self.color_string = "pink"
        self.color = PINK


        super().construct()

class Func_7_1_P_4_c(DegToRadAnswerScene):

    def construct(self):
        
        self.intro = "No, that's not it."
        self.angle_frac = 1/8
        self.angle_frac_tex = "\\tfrac{1}{8}"
        self.angle_frac_string = "one eigth"
        self.angle_rad_string = "one quarter"
        self.color_string = "pink"
        self.color = PINK


        super().construct()

class Func_7_1_P_4_d(DegToRadAnswerScene):

    def construct(self):
        
        self.intro = "No, that's not it."
        self.angle_frac = 1/8
        self.angle_frac_tex = "\\tfrac{1}{8}"
        self.angle_frac_string = "one eigth"
        self.angle_rad_string = "one quarter"
        self.color_string = "pink"
        self.color = PINK


        super().construct()

PROTOTYPES=[
    PagePrototypeVideo.from_scene(Func_7_1_I_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_7_1_I_1_q, Func_7_1_I_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_7_1_I_1_a),
    PagePrototypeVideo.from_scene(Func_7_1_I_1_b),
    PagePrototypeVideo.from_scene(Func_7_1_I_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_7_1_I_2_q, Func_7_1_I_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_7_1_I_2_a),
    PagePrototypeVideo.from_scene(Func_7_1_I_2_b),
    PagePrototypeVideo.from_scene(Func_7_1_I_2_c),
    PagePrototypeVideo.from_scene(Func_7_1_I_2_d),
    PagePrototypeVideo.from_scene(Func_7_1_I_3),
    PagePrototypeVideo.from_scene(Func_7_1_I_4),
    PagePrototypeVideo.from_scene(Func_7_1_P_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_7_1_P_1_q, Func_7_1_P_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_7_1_P_1_a),
    PagePrototypeVideo.from_scene(Func_7_1_P_1_b),
    PagePrototypeVideo.from_scene(Func_7_1_P_1_c),
    PagePrototypeVideo.from_scene(Func_7_1_P_1_d),
    PagePrototypeVideo.from_scene(Func_7_1_P_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_7_1_P_2_q, Func_7_1_P_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_7_1_P_2_a),
    PagePrototypeVideo.from_scene(Func_7_1_P_2_b),
    PagePrototypeVideo.from_scene(Func_7_1_P_2_c),
    PagePrototypeVideo.from_scene(Func_7_1_P_2_d),
    PagePrototypeVideo.from_scene(Func_7_1_P_3_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_7_1_P_3_q, Func_7_1_P_3_q.__name__),
    PagePrototypeVideo.from_scene(Func_7_1_P_3_a),
    PagePrototypeVideo.from_scene(Func_7_1_P_3_b),
    PagePrototypeVideo.from_scene(Func_7_1_P_3_c),
    PagePrototypeVideo.from_scene(Func_7_1_P_3_d),
    PagePrototypeVideo.from_scene(Func_7_1_P_4_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_7_1_P_4_q, Func_7_1_P_4_q.__name__),
    PagePrototypeVideo.from_scene(Func_7_1_P_4_a),
    PagePrototypeVideo.from_scene(Func_7_1_P_4_b),
    PagePrototypeVideo.from_scene(Func_7_1_P_4_c),
    PagePrototypeVideo.from_scene(Func_7_1_P_4_d),
]
