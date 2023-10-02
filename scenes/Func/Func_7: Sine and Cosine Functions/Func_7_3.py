# 7_3: Trigonometric Functions: Intro Cosine

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
from sophialib.tasks.sophiataskdefinition import SophiaTaskDefinition

#####################################
#####################################
TASK_Func_7_3_I_1_q = SophiaTaskDefinition(
    answerOptions = ["blue line / green line", "pink line / blue line", "pink line / green line", "green line / blue line"],
    correctAnswerIndex = 3,
    questionText = "Which of the lines do we have two divide by which to get the sine of the bottom left corner?"
)
class Func_7_3_I_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Cosine Function")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        a = ValueTracker(0.5)
        sine = lambda: np.sin(a.get_value())
        cosine = lambda: np.cos(a.get_value())

        arc = lambda: Arc(radius=1, angle=2*PI, color=BLUE)
        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))
        triangle = VGroup(line_cos, line_sine, line_end).shift(0.7*LEFT+0.2*UP)
        

        # Action Sequence
        with self.voiceover(
                text="""
                Look at <bookmark mark="show_triangle"/> this triangle.

                From it, we now want to learn about<bookmark mark="cosine"/> the cosine function.

                Let's start with the definition of the cosine. Which line do we divide by which other line,
                to get the cosine of the angle <bookmark mark="angle"/>in the bottom
                left corner?
                """
        ) as tracker:

            self.wait_until_bookmark("show_triangle")
            self.play(Create(triangle))

            self.wait_until_bookmark("cosine")
            x,y,_ = title.get_center()-np.array([1.2,.4,0])
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("angle")
            cursor.blinking=False
            self.play(CursorMoveToCurved(cursor, -0.8, 0.1))
            cursor.blinking=True

        self.wait(4)


class Func_7_3_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Cosine Function")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        a = ValueTracker(0.5)
        sine = lambda: np.sin(a.get_value())
        cosine = lambda: np.cos(a.get_value())

        arc = lambda: Arc(radius=1, angle=2*PI, color=BLUE)
        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))
        triangle = VGroup(line_cos, line_sine, line_end).shift(0.7*LEFT+0.2*UP)
        self.add(triangle)

        cosine_formula = MathTex("\\cos(\\alpha) =", "\\frac{\\text{adjacent}}{\\text{hypothenuse}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)
        

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right. <bookmark mark="show_formula"/>
                The cosine is equal to <bookmark mark="adjacent"/> the length of the adjacent divided <bookmark mark="hypothenuse"/>
                by the length of the hypothenuse.

                The adjacent is the shorter side adjacent to the angle. In this case,<bookmark mark="adjacent_plot"/> it's the green line.
                The hypothenuse is the longest side of a triangle. In this case,<bookmark mark="hypothenuse_plot"/> it's the blue line.
                This means, that we have to divide the green line by the blue line to get the cosine of the angle in the bottom left
                corner.
                """
        ) as tracker:
            
            self.wait_until_bookmark("show_formula")
            x,y,_ = cosine_formula[0].get_center()+0.4*DOWN+0.2*LEFT
            cursor.blinking=False
            self.play(Write(cosine_formula[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("adjacent")
            cursor.blinking=False
            x,y,_ = cosine_formula[1].get_right()+0.2*RIGHT+0.2*UP
            self.play(Write(cosine_formula[1]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("hypothenuse")
            cursor.blinking=False
            x,y,_ = cosine_formula[1].get_right()+0.2*RIGHT+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("adjacent_plot")
            cursor.blinking=False
            x,y,_ = line_cos.get_center()+0.3*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("hypothenuse_plot")
            cursor.blinking=False
            x,y,_ = line_end.get_center()+0.2*(LEFT+UP)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

        self.wait(4)

class Func_7_3_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Cosine Function")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        a = ValueTracker(0.5)
        sine = lambda: np.sin(a.get_value())
        cosine = lambda: np.cos(a.get_value())

        arc = lambda: Arc(radius=1, angle=2*PI, color=BLUE)
        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))
        triangle = VGroup(line_cos, line_sine, line_end).shift(0.7*LEFT+0.2*UP)
        self.add(triangle)

        cosine_formula = MathTex("\\cos(\\alpha) =", "\\frac{\\text{adjacent}}{\\text{hypothenuse}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)
        

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right. <bookmark mark="show_formula"/>
                The cosine is equal to <bookmark mark="adjacent"/> the length of the adjacent divided <bookmark mark="hypothenuse"/>
                by the length of the hypothenuse.

                The adjacent is the shorter side adjacent to the angle. In this case,<bookmark mark="adjacent_plot"/> it's the green line.
                The hypothenuse is the longest side of a triangle. In this case,<bookmark mark="hypothenuse_plot"/> it's the blue line.
                This means, that we have to divide the green line by the blue line to get the cosine of the angle in the bottom left
                corner.
                """
        ) as tracker:
            
            self.wait_until_bookmark("show_formula")
            x,y,_ = cosine_formula[0].get_center()+0.4*DOWN+0.2*LEFT
            cursor.blinking=False
            self.play(Write(cosine_formula[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("adjacent")
            cursor.blinking=False
            x,y,_ = cosine_formula[1].get_right()+0.2*RIGHT+0.2*UP
            self.play(Write(cosine_formula[1]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("hypothenuse")
            cursor.blinking=False
            x,y,_ = cosine_formula[1].get_right()+0.2*RIGHT+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("adjacent_plot")
            cursor.blinking=False
            x,y,_ = line_cos.get_center()+0.3*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("hypothenuse_plot")
            cursor.blinking=False
            x,y,_ = line_end.get_center()+0.2*(LEFT+UP)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

        self.wait(4)

class Func_7_3_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Cosine Function")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        a = ValueTracker(0.5)
        sine = lambda: np.sin(a.get_value())
        cosine = lambda: np.cos(a.get_value())

        arc = lambda: Arc(radius=1, angle=2*PI, color=BLUE)
        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))
        triangle = VGroup(line_cos, line_sine, line_end).shift(0.7*LEFT+0.2*UP)
        self.add(triangle)

        cosine_formula = MathTex("\\cos(\\alpha) =", "\\frac{\\text{adjacent}}{\\text{hypothenuse}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)
        

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right. <bookmark mark="show_formula"/>
                The cosine is equal to <bookmark mark="adjacent"/> the length of the adjacent divided <bookmark mark="hypothenuse"/>
                by the length of the hypothenuse.

                The adjacent is the shorter side adjacent to the angle. In this case,<bookmark mark="adjacent_plot"/> it's the green line.
                The hypothenuse is the longest side of a triangle. In this case,<bookmark mark="hypothenuse_plot"/> it's the blue line.
                This means, that we have to divide the green line by the blue line to get the cosine of the angle in the bottom left
                corner.
                """
        ) as tracker:
            
            self.wait_until_bookmark("show_formula")
            x,y,_ = cosine_formula[0].get_center()+0.4*DOWN+0.2*LEFT
            cursor.blinking=False
            self.play(Write(cosine_formula[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("adjacent")
            cursor.blinking=False
            x,y,_ = cosine_formula[1].get_right()+0.2*RIGHT+0.2*UP
            self.play(Write(cosine_formula[1]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("hypothenuse")
            cursor.blinking=False
            x,y,_ = cosine_formula[1].get_right()+0.2*RIGHT+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("adjacent_plot")
            cursor.blinking=False
            x,y,_ = line_cos.get_center()+0.3*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("hypothenuse_plot")
            cursor.blinking=False
            x,y,_ = line_end.get_center()+0.2*(LEFT+UP)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

        self.wait(4)

class Func_7_3_I_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Cosine Function")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        a = ValueTracker(0.5)
        sine = lambda: np.sin(a.get_value())
        cosine = lambda: np.cos(a.get_value())

        arc = lambda: Arc(radius=1, angle=2*PI, color=BLUE)
        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))
        triangle = VGroup(line_cos, line_sine, line_end).shift(0.7*LEFT+0.2*UP)
        self.add(triangle)

        cosine_formula = MathTex("\\cos(\\alpha) =", "\\frac{\\text{adjacent}}{\\text{hypothenuse}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)
        

        # Action Sequence
        with self.voiceover(
                text="""
                Yep, that's correct. Nice Job! <bookmark mark="show_formula"/>
                The cosine is equal to <bookmark mark="adjacent"/> the length of the adjacent divided <bookmark mark="hypothenuse"/>
                by the length of the hypothenuse.

                The adjacent is the shorter side adjacent to the angle. In this case,<bookmark mark="adjacent_plot"/> it's the green line.
                The hypothenuse is the longest side of a triangle. In this case,<bookmark mark="hypothenuse_plot"/> it's the blue line.
                This means, that we have to divide the green line by the blue line to get the cosine of the angle in the bottom left
                corner.
                """
        ) as tracker:
            
            self.wait_until_bookmark("show_formula")
            x,y,_ = cosine_formula[0].get_center()+0.4*DOWN+0.2*LEFT
            cursor.blinking=False
            self.play(Write(cosine_formula[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("adjacent")
            cursor.blinking=False
            x,y,_ = cosine_formula[1].get_right()+0.2*RIGHT+0.2*UP
            self.play(Write(cosine_formula[1]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("hypothenuse")
            cursor.blinking=False
            x,y,_ = cosine_formula[1].get_right()+0.2*RIGHT+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("adjacent_plot")
            cursor.blinking=False
            x,y,_ = line_cos.get_center()+0.3*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("hypothenuse_plot")
            cursor.blinking=False
            x,y,_ = line_end.get_center()+0.2*(LEFT+UP)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

        self.wait(4)


#####################################
#####################################
#####################################
#####################################
class Func_7_3_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine Function")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        a = ValueTracker(0.5)
        sine = lambda: np.sin(a.get_value())
        cosine = lambda: np.cos(a.get_value())

        arc = lambda: Arc(radius=1.4, angle=2*PI, color=BLUE)
        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3)#.
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3)
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3)
        triangle = VGroup(line_cos, line_sine, line_end).shift(0.7*LEFT+0.2*UP)
        self.add(triangle)

        cosine_formula = MathTex("\\cos(\\alpha) =", "\\frac{\\text{adjacent}}{\\text{hypothenuse}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)
        self.add(cosine_formula)

        # Action Sequence
        with self.voiceover(
                text="""
                Let's <bookmark mark="circle"/>inscribe the triangle into a circle, with the radius of one.
                If the top left corner is in the center of the circle, <bookmark mark="hypothenuse"/> the
                hypothenuse, meaning the blue line has the length one.

                We can <bookmark mark="vary"/> vary the angle alpha and the length of the blue line will
                still be one, as long as it is inscribed into the unit circle

                """
        ) as tracker:
            
            self.play(triangle.animate.shift(0.7*RIGHT+0.2*DOWN), cosine_formula.animate.shift(DOWN))
            line_cos.add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
            line_sine.add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
            line_end.add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))

            self.wait_until_bookmark("circle")
            self.play(Create(arc()))

            self.wait_until_bookmark("hypothenuse")
            x,y,_ = line_end.get_center()+0.1*(LEFT+UP)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("vary")
            cursor.blinking=False
            rotation_updater = lambda m: m.move_to(line_end.get_start())
            cursor.add_updater(rotation_updater)
            self.play(a.animate.set_value(2*PI+0.5), run_time=6)
            cursor.blinking=True

        self.wait(4)


#####################################
#####################################
class Func_7_3_I_4(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Cosine Function")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        a = ValueTracker(0.5)
        sine = lambda: np.sin(a.get_value())
        cosine = lambda: np.cos(a.get_value())

        arc = Arc(radius=1.4, angle=2*PI, color=BLUE, stroke_width=2)
        self.add(arc)

        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))
        triangle = VGroup(line_cos, line_sine, line_end)
        self.add(triangle)

        angle_intro = Tex("Angle: ", color=c1t, font_size=fs2)
        angle_num = DecimalNumber(0, num_decimal_places=1, font_size=fs2).set_color(c1t).add_updater(lambda m: m.set_value((a.get_value()/np.pi)%2))
        angle_label = MathTex("\\Pi", color=c1t, font_size=fs2)
        angle = VGroup(angle_intro, angle_num, angle_label).arrange(RIGHT, buff=0.3)

        cosine_intro = Tex("Cosine: ", color=c1t, font_size=fs2)
        cosine_num = DecimalNumber(0, num_decimal_places=1, font_size=fs2).set_color(c1t).add_updater(lambda m: m.set_value(cosine()))
        cosine_group = VGroup(cosine_intro, cosine_num).arrange(RIGHT, buff=0.3)

        sine_angle = VGroup(angle, cosine_group).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(arc, DOWN, buff=0.6)

        cosine_num.shift((cosine_num.get_left()-angle_num.get_left())[0]*LEFT)

        # Action Sequence
        with self.voiceover(
                text="""
                Now we can <bookmark mark="sine_function_title"/>use the cosine-function to describe the relationship between
                the angle of the triangle and the sine of the angle, which in this case is equal to the length of the
                adjacent side, so the green line.

                When we change the angle, let us keep track<bookmark mark="track_angle"/> of the angle alpha and
                <bookmark mark="track_length"/>the length of the green line, which is the cosine of the angle.

                Now, <bookmark mark="vary"/>vary the angle alpha and observe how the length of the green line changes.
                Also look at how the cosine changes together with the angle.
                """
        ) as tracker:
            
            self.wait_until_bookmark("sine_function_title")
            cursor.blinking=False
            x,y,_ = title.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("track_angle")
            cursor.blinking=False
            x,y,_ = angle_num.get_center()+0.4*DOWN
            self.play(Write(angle), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("track_length")
            cursor.blinking=False
            x,y,_ = cosine_num.get_center()+0.4*DOWN
            self.play(Write(cosine_group), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True
            
            self.wait_until_bookmark("vary")
            cursor.blinking=False
            x,y,_ = line_end.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            rotation_updater = lambda m: m.move_to(line_end.get_start())
            cursor.add_updater(rotation_updater)
            self.play(a.animate.set_value(2*PI+0.5), run_time=6)
            cursor.remove_updater(rotation_updater)
            cursor.blinking=True


        self.wait(4)


#####################################
#####################################
class Func_7_3_I_5(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Cosine Function")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        a = ValueTracker(0.5)
        sine = lambda: np.sin(a.get_value())
        cosine = lambda: np.cos(a.get_value())

        arc = Arc(radius=1, angle=2*PI, color=BLUE, stroke_width=2)
        self.add(arc)

        line_cos  = Line(ORIGIN, cosine()*RIGHT, color=GREEN, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(ORIGIN, cosine()*RIGHT))
        line_sine = Line(cosine()*RIGHT, (cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(cosine()*RIGHT, (cosine()*RIGHT+sine()*UP)))
        line_end = Line((cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on((cosine()*RIGHT+sine()*UP), ORIGIN))
        triangle = VGroup(line_cos, line_sine, line_end)
        self.add(triangle)

        angle_intro = Tex("Angle: ", color=c1t, font_size=fs2)
        angle_num = DecimalNumber(0, num_decimal_places=1, font_size=fs2).set_color(c1t).add_updater(lambda m: m.set_value(a.get_value()/np.pi))
        angle_label = MathTex("\\Pi", color=c1t, font_size=fs2)
        angle = VGroup(angle_intro, angle_num, angle_label).arrange(RIGHT, buff=0.1)

        sine_intro = Tex("Cosine: ", color=c1t, font_size=fs2)
        sine_num = DecimalNumber(0, num_decimal_places=1, font_size=fs2).set_color(c1t).add_updater(lambda m: m.set_value(cosine()))
        sine_group = VGroup(sine_intro, sine_num).arrange(RIGHT, buff=0.1)

        sine_angle = VGroup(angle, sine_group).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(arc, DOWN, buff=0.6)

        sine_num.shift((sine_num.get_left()-angle_num.get_left())[0]*LEFT)

        cords = self.add_cords([0, 2*np.pi, np.pi/2], [-1, 1, 1], x_ticks=[0,np.pi/2, np.pi, 3*np.pi/2, 2*np.pi], x_labels=["0", "\\tfrac{1}{2}\\Pi" , "\\Pi", "\\tfrac{3}{2}\\Pi" , "2\\Pi"], y_ticks=[-1,1], height=2).shift(2.4*DOWN)
        plane = cords[0]

        upshift = UP
        perturb = np.array([0,0,1])

        get_fct = lambda: plane.plot(lambda x: np.cos(x), x_range=[0,a.get_value(),0.001], color=c1t, stroke_width=2)

        # Action Sequence
        with self.voiceover(
                text="""
                Let's describe the relationship between the cosine of an angle and the value of that angle
                <bookmark mark="reorder"/> using a function and its corresponding graph.

                The <bookmark mark="x_axis"/> x-axis describes the angle alpha,
                <bookmark mark="y_axis"/>and the y-axis describes the cosine of the
                angle alpha. 

                We'll <bookmark mark="reset"/>start at zero

                <bookmark mark="increase_1"/>and increase the angle alpha. As we increase the angle alpha,
                the length of the green line decreases. This means, that the cosine of the angle alpha
                decreases, until we reach negative one. Then, the cosine of the angle alpha starts to increase
                again, until it's back at one.

                """
        ) as tracker:
            
            self.wait_until_bookmark("reorder")
            x,y,_ = plane.c2p(0,0)
            self.play(arc.animate.shift(upshift), triangle.animate.shift(upshift), Write(cords), CursorMoveTo(cursor,x,y), run_time=2)
            line_cos.add_updater(lambda m: m.put_start_and_end_on(upshift, cosine()*RIGHT+upshift+perturb))
            line_sine.add_updater(lambda m: m.put_start_and_end_on(cosine()*RIGHT+upshift+perturb, (cosine()*RIGHT+sine()*UP)+upshift))
            line_end.add_updater(lambda m: m.put_start_and_end_on((cosine()*RIGHT+sine()*UP)+upshift, upshift))

            self.wait_until_bookmark("x_axis")
            cursor.blinking=False
            self.play(CursorMarkAxis(cursor, plane), run_time=0.5)

            self.wait_until_bookmark("y_axis")
            self.play(CursorMarkAxis(cursor, plane,  axis="y"), run_time=0.5)

            self.wait_until_bookmark("reset")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveResize(cursor,x,y,0.2,0.2), a.animate.set_value(0))
            cursor_updater = lambda m: m.move_to(plane.c2p(a.get_value(), cosine()))
            green_line_2 = Line(plane.c2p(0,0), plane.c2p(0,1), color=GREEN, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(plane.c2p(a.get_value(),0), plane.c2p(a.get_value(), cosine())))
            cursor.add_updater(cursor_updater)
            self.add(green_line_2, always_redraw(get_fct))

            self.wait_until_bookmark("increase_1")
            self.play(a.animate.set_value(2*np.pi), run_time=25)


        self.wait(4)



#####################################
#####################################
######## Practice Part ##############
#####################################
#####################################
TASK_Func_7_3_P_1_q = SophiaTaskDefinition(
    answerOptions = ["blue: sine, pink: none", "blue: cosine, pink: sine", "blue: sine, pink: cosine", "blue: none, pink: sine"],
    correctAnswerIndex = 1,
    questionText = "Does one of the lines describe the sine function? Or the cosine function?"
)
class Func_7_3_P_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine \& Cosine")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        cords = self.add_cords([0, 2*np.pi, np.pi/2], [-1, 1, 1], x_ticks=[0,np.pi/2, np.pi, 3*np.pi/2, 2*np.pi], x_labels=["0", "\\tfrac{1}{2}\\Pi" , "\\Pi", "\\tfrac{3}{2}\\Pi" , "2\\Pi"], y_ticks=[-1,1], height=2).shift(3*DOWN)
        plane = cords[0]

        graph_blue = plane.plot(lambda x: np.cos(x), x_range=[0,2*np.pi,0.001], color=PURE_BLUE, stroke_width=2)
        graph_pink = plane.plot(lambda x: np.sin(x), x_range=[0,2*np.pi,0.001], color=PINK)

        # Action Sequence
        with self.voiceover(
                text="""
                Look at <bookmark mark="cords"/> this coordinate system and <bookmark mark="blue"/> the blue as well
                as <bookmark mark="purple"/> the purple line.

                Does one of the lines describe the sine function?
                And does one of them describe the cosine function?
                """
        ) as tracker:
            
            self.wait_until_bookmark("cords")
            self.play(Write(cords))

            self.wait_until_bookmark("blue")
            self.play(Write(graph_blue))

            self.wait_until_bookmark("purple")
            self.play(Write(graph_pink))

        self.wait(4)


class Func_7_3_P_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine \& Cosine")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        cords = self.add_cords([0, 2*np.pi, np.pi/2], [-1, 1, 1], x_ticks=[0,np.pi/2, np.pi, 3*np.pi/2, 2*np.pi], x_labels=["0", "\\tfrac{1}{2}\\Pi" , "\\Pi", "\\tfrac{3}{2}\\Pi" , "2\\Pi"], y_ticks=[-1,1], height=2).shift(3*DOWN)
        plane = cords[0]
        self.add(cords)

        graph_blue = plane.plot(lambda x: np.cos(x), x_range=[0,2*np.pi,0.001], color=PURE_BLUE, stroke_width=2)
        graph_pink = plane.plot(lambda x: np.sin(x), x_range=[0,2*np.pi,0.001], color=PURPLE)

        startpoint_blue = plane.c2p(0,1)+0.1*UP
        bubble_blue = Bubble(["$\\cos(0)=1$", "$\\Rightarrow$cosine"], start_point=startpoint_blue, center=0.8*LEFT+2*UP, loc="b2")
        blue_updater = lambda m: m.move_to(bubble_blue.get_end())

        startpoint_pink = plane.c2p(np.pi/2,1)+0.1*UP
        bubble_pink = Bubble(["$\\sin(\\tfrac{\\Pi}{2})=1$", "$\\Rightarrow$sine"], start_point = startpoint_pink, center=0.8*RIGHT+0.4*UP)
        pink_updater = lambda m: m.move_to(bubble_pink.get_end())

        self.add(cords)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not quite right.

                <bookmark mark="blue"/> The blue line describes the cosine function One way to see this, is that
                at <bookmark mark="blue_0"/> x equals zero, the cosine is one. This is satisfied by the blue
                line.

                <bookmark mark="pink"/> The purple line describes the sine function. One way to see this, is that
                at <bookmark mark="pink_0"/> x equals pi over two, the sine is one. This is satisfied by the purple
                line.
                """
        ) as tracker:

            self.wait_until_bookmark("blue")
            self.play(Write(graph_blue))

            self.wait_until_bookmark("blue_0")
            x,y, _ = startpoint_blue
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(cursor.copy()._start_fading(3).add_updater(blue_updater))
            self.add_pencil_sound(2)
            self.play(Create(bubble_blue), Write(bubble_blue.text), run_time=2)
            cursor.blinking=True

            self.wait_until_bookmark("pink")
            self.play(Write(graph_pink))
            
            self.wait_until_bookmark("pink_0")
            x,y, _ = startpoint_pink
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(cursor.copy()._start_fading(3).add_updater(pink_updater))
            self.add_pencil_sound(2)
            self.play(Create(bubble_pink), Write(bubble_pink.text), run_time=2)
            cursor.blinking=True


        self.wait(4)



class Func_7_3_P_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine \& Cosine")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        cords = self.add_cords([0, 2*np.pi, np.pi/2], [-1, 1, 1], x_ticks=[0,np.pi/2, np.pi, 3*np.pi/2, 2*np.pi], x_labels=["0", "\\tfrac{1}{2}\\Pi" , "\\Pi", "\\tfrac{3}{2}\\Pi" , "2\\Pi"], y_ticks=[-1,1], height=2).shift(3*DOWN)
        plane = cords[0]
        self.add(cords)

        graph_blue = plane.plot(lambda x: np.cos(x), x_range=[0,2*np.pi,0.001], color=PURE_BLUE, stroke_width=2)
        graph_pink = plane.plot(lambda x: np.sin(x), x_range=[0,2*np.pi,0.001], color=PURPLE)

        startpoint_blue = plane.c2p(0,1)+0.1*UP
        bubble_blue = Bubble(["$\\cos(0)=1$", "$\\Rightarrow$cosine"], start_point=startpoint_blue, center=0.8*LEFT+2*UP, loc="b2")
        blue_updater = lambda m: m.move_to(bubble_blue.get_end())

        startpoint_pink = plane.c2p(np.pi/2,1)+0.1*UP
        bubble_pink = Bubble(["$\\sin(\\tfrac{\\Pi}{2})=1$", "$\\Rightarrow$sine"], start_point = startpoint_pink, center=0.8*RIGHT+0.4*UP)
        pink_updater = lambda m: m.move_to(bubble_pink.get_end())

        self.add(cords)

        # Action Sequence
        with self.voiceover(
                text="""
                Yes, that's correct.

                <bookmark mark="blue"/> The blue line describes the cosine function One way to see this, is that
                at <bookmark mark="blue_0"/> x equals zero, the cosine is one. This is satisfied by the blue
                line.

                <bookmark mark="pink"/> The purple line describes the sine function. One way to see this, is that
                at <bookmark mark="pink_0"/> x equals pi over two, the sine is one. This is satisfied by the purple
                line.
                """
        ) as tracker:

            self.wait_until_bookmark("blue")
            self.play(Write(graph_blue))

            self.wait_until_bookmark("blue_0")
            x,y, _ = startpoint_blue
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(cursor.copy()._start_fading(3).add_updater(blue_updater))
            self.add_pencil_sound(2)
            self.play(Create(bubble_blue), Write(bubble_blue.text), run_time=2)
            cursor.blinking=True

            self.wait_until_bookmark("pink")
            self.play(Write(graph_pink))
            
            self.wait_until_bookmark("pink_0")
            x,y, _ = startpoint_pink
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(cursor.copy()._start_fading(3).add_updater(pink_updater))
            self.add_pencil_sound(2)
            self.play(Create(bubble_pink), Write(bubble_pink.text), run_time=2)
            cursor.blinking=True


        self.wait(4)


class Func_7_3_P_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine \& Cosine")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        cords = self.add_cords([0, 2*np.pi, np.pi/2], [-1, 1, 1], x_ticks=[0,np.pi/2, np.pi, 3*np.pi/2, 2*np.pi], x_labels=["0", "\\tfrac{1}{2}\\Pi" , "\\Pi", "\\tfrac{3}{2}\\Pi" , "2\\Pi"], y_ticks=[-1,1], height=2).shift(3*DOWN)
        plane = cords[0]
        self.add(cords)

        graph_blue = plane.plot(lambda x: np.cos(x), x_range=[0,2*np.pi,0.001], color=PURE_BLUE, stroke_width=2)
        graph_pink = plane.plot(lambda x: np.sin(x), x_range=[0,2*np.pi,0.001], color=PURPLE)

        startpoint_blue = plane.c2p(0,1)+0.1*UP
        bubble_blue = Bubble(["$\\cos(0)=1$", "$\\Rightarrow$cosine"], start_point=startpoint_blue, center=0.8*LEFT+2*UP, loc="b2")
        blue_updater = lambda m: m.move_to(bubble_blue.get_end())

        startpoint_pink = plane.c2p(np.pi/2,1)+0.1*UP
        bubble_pink = Bubble(["$\\sin(\\tfrac{\\Pi}{2})=1$", "$\\Rightarrow$sine"], start_point = startpoint_pink, center=0.8*RIGHT+0.4*UP)
        pink_updater = lambda m: m.move_to(bubble_pink.get_end())

        self.add(cords)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not quite right.

                <bookmark mark="blue"/> The blue line describes the cosine function One way to see this, is that
                at <bookmark mark="blue_0"/> x equals zero, the cosine is one. This is satisfied by the blue
                line.

                <bookmark mark="pink"/> The purple line describes the sine function. One way to see this, is that
                at <bookmark mark="pink_0"/> x equals pi over two, the sine is one. This is satisfied by the purple
                line.
                """
        ) as tracker:

            self.wait_until_bookmark("blue")
            self.play(Write(graph_blue))

            self.wait_until_bookmark("blue_0")
            x,y, _ = startpoint_blue
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(cursor.copy()._start_fading(3).add_updater(blue_updater))
            self.add_pencil_sound(2)
            self.play(Create(bubble_blue), Write(bubble_blue.text), run_time=2)
            cursor.blinking=True

            self.wait_until_bookmark("pink")
            self.play(Write(graph_pink))
            
            self.wait_until_bookmark("pink_0")
            x,y, _ = startpoint_pink
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(cursor.copy()._start_fading(3).add_updater(pink_updater))
            self.add_pencil_sound(2)
            self.play(Create(bubble_pink), Write(bubble_pink.text), run_time=2)
            cursor.blinking=True


        self.wait(4)


class Func_7_3_P_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine \& Cosine")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        cords = self.add_cords([0, 2*np.pi, np.pi/2], [-1, 1, 1], x_ticks=[0,np.pi/2, np.pi, 3*np.pi/2, 2*np.pi], x_labels=["0", "\\tfrac{1}{2}\\Pi" , "\\Pi", "\\tfrac{3}{2}\\Pi" , "2\\Pi"], y_ticks=[-1,1], height=2).shift(3*DOWN)
        plane = cords[0]
        self.add(cords)

        graph_blue = plane.plot(lambda x: np.cos(x), x_range=[0,2*np.pi,0.001], color=PURE_BLUE, stroke_width=2)
        graph_pink = plane.plot(lambda x: np.sin(x), x_range=[0,2*np.pi,0.001], color=PURPLE)

        startpoint_blue = plane.c2p(0,1)+0.1*UP
        bubble_blue = Bubble(["$\\cos(0)=1$", "$\\Rightarrow$cosine"], start_point=startpoint_blue, center=0.8*LEFT+2*UP, loc="b2")
        blue_updater = lambda m: m.move_to(bubble_blue.get_end())

        startpoint_pink = plane.c2p(np.pi/2,1)+0.1*UP
        bubble_pink = Bubble(["$\\sin(\\tfrac{\\Pi}{2})=1$", "$\\Rightarrow$sine"], start_point = startpoint_pink, center=0.8*RIGHT+0.4*UP)
        pink_updater = lambda m: m.move_to(bubble_pink.get_end())

        self.add(cords)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not quite right.

                <bookmark mark="blue"/> The blue line describes the cosine function One way to see this, is that
                at <bookmark mark="blue_0"/> x equals zero, the cosine is one. This is satisfied by the blue
                line.

                <bookmark mark="pink"/> The purple line describes the sine function. One way to see this, is that
                at <bookmark mark="pink_0"/> x equals pi over two, the sine is one. This is satisfied by the purple
                line.
                """
        ) as tracker:

            self.wait_until_bookmark("blue")
            self.play(Write(graph_blue))

            self.wait_until_bookmark("blue_0")
            x,y, _ = startpoint_blue
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(cursor.copy()._start_fading(3).add_updater(blue_updater))
            self.add_pencil_sound(2)
            self.play(Create(bubble_blue), Write(bubble_blue.text), run_time=2)
            cursor.blinking=True

            self.wait_until_bookmark("pink")
            self.play(Write(graph_pink))
            
            self.wait_until_bookmark("pink_0")
            x,y, _ = startpoint_pink
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(cursor.copy()._start_fading(3).add_updater(pink_updater))
            self.add_pencil_sound(2)
            self.play(Create(bubble_pink), Write(bubble_pink.text), run_time=2)
            cursor.blinking=True


        self.wait(4)




#####################################
#####################################
TASK_Func_7_3_P_2_q = SophiaTaskDefinition(
    answerOptions = ["Cosine: Even, Sine: Even", "Cosine: Even, Sine: Odd", "Cosine: Odd, Sine: Even", "Cosine: Odd, Sine: Odd"],
    correctAnswerIndex = 1,
    questionText = "Is the cosine function even or odd? What about the sine function?"
)
class Func_7_3_P_2_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine \& Cosine")

        cords = self.add_cords([-2*np.pi, 2*np.pi, np.pi], [-1, 1, 1], x_ticks=[-2*np.pi, -np.pi, 0, np.pi, 2*np.pi], x_labels=["-2\\Pi", "-\\Pi", "0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(1.6*DOWN)
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(0,0)
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        graph_blue = plane.plot(lambda x: np.cos(x), color=PURE_BLUE, stroke_width=2)
        graph_pink = plane.plot(lambda x: np.sin(x), color=PINK)

        # Action Sequence
        with self.voiceover(
                text="""
                The <bookmark mark="blue"/> blue graph corresponds to the cosine function and
                the<bookmark mark="purple"/> purple graph corresponds to the sine function. By
                looking at the two graphs, can you tell me if the sine function is an even or an odd function?

                And what about the cosine function?
                
                Is it even, or odd?
                """
        ) as tracker:
            
            self.wait_until_bookmark("blue")
            self.play(Write(graph_blue), run_time=3)

            self.wait_until_bookmark("purple")
            self.play(Write(graph_pink), run_time=3)

        self.wait(4)



class Func_7_3_P_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine \& Cosine")

        cords = self.add_cords([-2*np.pi, 2*np.pi, np.pi], [-1, 1, 1], x_ticks=[-2*np.pi, -np.pi, 0, np.pi, 2*np.pi], x_labels=["-2\\Pi", "-\\Pi", "0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(1.6*DOWN)
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(0,0)
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        graph_blue = plane.plot(lambda x: np.cos(x), color=PURE_BLUE, stroke_width=2)
        graph_pink = plane.plot(lambda x: np.sin(x), color=PINK)

        startpoint_odd = plane.c2p(0,0)+0.1*(LEFT+DOWN)
        bubble_odd = Bubble(["$\\sin(-x)=-\\sin(x)$", "$\\Rightarrow$Sine function is odd"], start_point=startpoint_odd, width = 2.6, center=0.4*RIGHT+2.6*DOWN, loc="t1")
        odd_updater = lambda m: m.move_to(bubble_odd.get_end())

        startpoint_even = plane.c2p(0,1) + 0.1*UP
        bubble_even = Bubble(["$\\cos(-x)=\\cos(x)$", "$\\Rightarrow$Cosine function is even"], start_point=startpoint_even, width = 2.6, center=0.8*LEFT+2*UP, loc="b1")
        even_updater = lambda m: m.move_to(bubble_even.get_end())

        # Action Sequence
        with self.voiceover(
                text="""
                That's correct, well done.
                The <bookmark mark="blue"/> cosine function is an even function, because it is <bookmark mark="y_axis"/> symmetric
                to the y-axis. <bookmark mark="bubble_cosine"/>Formally, a function is even if f of minus x is equal to f of x.
                This holds true for the cosine function.

                The<bookmark mark="purple"/> purple graph corresponds to the sine function. The sine function is an odd function,
                because it is <bookmark mark="origin"/> symmetric to the origin. <bookmark mark="bubble_sine"/>Formally, a
                function is odd if f of minus x is equal to minus f of x. This holds true for the sine function.

                So in summary, the sine function is an odd function and the cosine function is an even function.
                """
        ) as tracker:
            
            self.wait_until_bookmark("blue")
            self.play(Write(graph_blue), run_time=3)

            self.wait_until_bookmark("y_axis")
            cursor.blinking=False
            self.play(CursorMarkAxis(cursor, plane, "y"), run_time=0.5)


            self.wait_until_bookmark("bubble_cosine")
            x,y, _ = startpoint_even
            self.play(CursorMoveResize(cursor, x, y, 0.2, 0.2), run_time=0.5)
            self.add(cursor.copy()._start_fading(3).add_updater(even_updater))
            self.add_pencil_sound(2)
            self.play(Create(bubble_even), Write(bubble_even.text), run_time=2)
            cursor.blinking=True

            self.wait_until_bookmark("purple")
            self.play(Write(graph_pink), run_time=3)

            self.wait_until_bookmark("origin")
            x,y,_ = plane.c2p(0,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("bubble_sine")
            x,y, _ = startpoint_odd
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(cursor.copy()._start_fading(3).add_updater(odd_updater))
            self.add_pencil_sound(2)
            self.play(Create(bubble_odd), Write(bubble_odd.text), run_time=2)
            cursor.blinking=True

        self.wait(4)


class Func_7_3_P_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine \& Cosine")

        cords = self.add_cords([-2*np.pi, 2*np.pi, np.pi], [-1, 1, 1], x_ticks=[-2*np.pi, -np.pi, 0, np.pi, 2*np.pi], x_labels=["-2\\Pi", "-\\Pi", "0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(1.6*DOWN)
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(0,0)
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        graph_blue = plane.plot(lambda x: np.cos(x), color=PURE_BLUE, stroke_width=2)
        graph_pink = plane.plot(lambda x: np.sin(x), color=PINK)

        startpoint_odd = plane.c2p(0,0)+0.1*(LEFT+DOWN)
        bubble_odd = Bubble(["$\\sin(-x)=-\\sin(x)$", "$\\Rightarrow$Sine function is odd"], start_point=startpoint_odd, width = 2.6, center=0.4*RIGHT+2.6*DOWN, loc="t1")
        odd_updater = lambda m: m.move_to(bubble_odd.get_end())

        startpoint_even = plane.c2p(0,1) + 0.1*UP
        bubble_even = Bubble(["$\\cos(-x)=\\cos(x)$", "$\\Rightarrow$Cosine function is even"], start_point=startpoint_even, width = 2.6, center=0.8*LEFT+2*UP, loc="b1")
        even_updater = lambda m: m.move_to(bubble_even.get_end())

        # Action Sequence
        with self.voiceover(
                text="""
                That's correct, well done.
                The <bookmark mark="blue"/> cosine function is an even function, because it is <bookmark mark="y_axis"/> symmetric
                to the y-axis. <bookmark mark="bubble_cosine"/>Formally, a function is even if f of minus x is equal to f of x.
                This holds true for the cosine function.

                The<bookmark mark="purple"/> purple graph corresponds to the sine function. The sine function is an odd function,
                because it is <bookmark mark="origin"/> symmetric to the origin. <bookmark mark="bubble_sine"/>Formally, a
                function is odd if f of minus x is equal to minus f of x. This holds true for the sine function.

                So in summary, the sine function is an odd function and the cosine function is an even function.
                """
        ) as tracker:
            
            self.wait_until_bookmark("blue")
            self.play(Write(graph_blue), run_time=3)

            self.wait_until_bookmark("y_axis")
            cursor.blinking=False
            self.play(CursorMarkAxis(cursor, plane, "y"), run_time=0.5)


            self.wait_until_bookmark("bubble_cosine")
            x,y, _ = startpoint_even
            self.play(CursorMoveResize(cursor, x, y, 0.2, 0.2), run_time=0.5)
            self.add(cursor.copy()._start_fading(3).add_updater(even_updater))
            self.add_pencil_sound(2)
            self.play(Create(bubble_even), Write(bubble_even.text), run_time=2)
            cursor.blinking=True

            self.wait_until_bookmark("purple")
            self.play(Write(graph_pink), run_time=3)

            self.wait_until_bookmark("origin")
            x,y,_ = plane.c2p(0,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("bubble_sine")
            x,y, _ = startpoint_odd
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(cursor.copy()._start_fading(3).add_updater(odd_updater))
            self.add_pencil_sound(2)
            self.play(Create(bubble_odd), Write(bubble_odd.text), run_time=2)
            cursor.blinking=True

        self.wait(4)


class Func_7_3_P_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine \& Cosine")

        cords = self.add_cords([-2*np.pi, 2*np.pi, np.pi], [-1, 1, 1], x_ticks=[-2*np.pi, -np.pi, 0, np.pi, 2*np.pi], x_labels=["-2\\Pi", "-\\Pi", "0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(1.6*DOWN)
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(0,0)
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        graph_blue = plane.plot(lambda x: np.cos(x), color=PURE_BLUE, stroke_width=2)
        graph_pink = plane.plot(lambda x: np.sin(x), color=PINK)

        startpoint_odd = plane.c2p(0,0)+0.1*(LEFT+DOWN)
        bubble_odd = Bubble(["$\\sin(-x)=-\\sin(x)$", "$\\Rightarrow$Sine function is odd"], start_point=startpoint_odd, width = 2.6, center=0.4*RIGHT+2.6*DOWN, loc="t1")
        odd_updater = lambda m: m.move_to(bubble_odd.get_end())

        startpoint_even = plane.c2p(0,1) + 0.1*UP
        bubble_even = Bubble(["$\\cos(-x)=\\cos(x)$", "$\\Rightarrow$Cosine function is even"], start_point=startpoint_even, width = 2.6, center=0.8*LEFT+2*UP, loc="b1")
        even_updater = lambda m: m.move_to(bubble_even.get_end())

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right.
                The <bookmark mark="blue"/> cosine function is an even function, because it is <bookmark mark="y_axis"/> symmetric
                to the y-axis. <bookmark mark="bubble_cosine"/>Formally, a function is even if f of minus x is equal to f of x.
                This holds true for the cosine function.

                The<bookmark mark="purple"/> purple graph corresponds to the sine function. The sine function is an odd function,
                because it is <bookmark mark="origin"/> symmetric to the origin. <bookmark mark="bubble_sine"/>Formally, a
                function is odd if f of minus x is equal to minus f of x. This holds true for the sine function.

                So in summary, the sine function is an odd function and the cosine function is an even function.
                """
        ) as tracker:
            
            self.wait_until_bookmark("blue")
            self.play(Write(graph_blue), run_time=3)

            self.wait_until_bookmark("y_axis")
            cursor.blinking=False
            self.play(CursorMarkAxis(cursor, plane, "y"), run_time=0.5)


            self.wait_until_bookmark("bubble_cosine")
            x,y, _ = startpoint_even
            self.play(CursorMoveResize(cursor, x, y, 0.2, 0.2), run_time=0.5)
            self.add(cursor.copy()._start_fading(3).add_updater(even_updater))
            self.add_pencil_sound(2)
            self.play(Create(bubble_even), Write(bubble_even.text), run_time=2)
            cursor.blinking=True

            self.wait_until_bookmark("purple")
            self.play(Write(graph_pink), run_time=3)

            self.wait_until_bookmark("origin")
            x,y,_ = plane.c2p(0,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("bubble_sine")
            x,y, _ = startpoint_odd
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(cursor.copy()._start_fading(3).add_updater(odd_updater))
            self.add_pencil_sound(2)
            self.play(Create(bubble_odd), Write(bubble_odd.text), run_time=2)
            cursor.blinking=True

        self.wait(4)


class Func_7_3_P_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine \& Cosine")

        cords = self.add_cords([-2*np.pi, 2*np.pi, np.pi], [-1, 1, 1], x_ticks=[-2*np.pi, -np.pi, 0, np.pi, 2*np.pi], x_labels=["-2\\Pi", "-\\Pi", "0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(1.6*DOWN)
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(0,0)
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        graph_blue = plane.plot(lambda x: np.cos(x), color=PURE_BLUE, stroke_width=2)
        graph_pink = plane.plot(lambda x: np.sin(x), color=PINK)

        startpoint_odd = plane.c2p(0,0)+0.1*(LEFT+DOWN)
        bubble_odd = Bubble(["$\\sin(-x)=-\\sin(x)$", "$\\Rightarrow$Sine function is odd"], start_point=startpoint_odd, width = 2.6, center=0.4*RIGHT+2.6*DOWN, loc="t1")
        odd_updater = lambda m: m.move_to(bubble_odd.get_end())

        startpoint_even = plane.c2p(0,1) + 0.1*UP
        bubble_even = Bubble(["$\\cos(-x)=\\cos(x)$", "$\\Rightarrow$Cosine function is even"], start_point=startpoint_even, width = 2.6, center=0.8*LEFT+2*UP, loc="b1")
        even_updater = lambda m: m.move_to(bubble_even.get_end())

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right.
                The <bookmark mark="blue"/> cosine function is an even function, because it is <bookmark mark="y_axis"/> symmetric
                to the y-axis. <bookmark mark="bubble_cosine"/>Formally, a function is even if f of minus x is equal to f of x.
                This holds true for the cosine function.

                The<bookmark mark="purple"/> purple graph corresponds to the sine function. The sine function is an odd function,
                because it is <bookmark mark="origin"/> symmetric to the origin. <bookmark mark="bubble_sine"/>Formally, a
                function is odd if f of minus x is equal to minus f of x. This holds true for the sine function.

                So in summary, the sine function is an odd function and the cosine function is an even function.
                """
        ) as tracker:
            
            self.wait_until_bookmark("blue")
            self.play(Write(graph_blue), run_time=3)

            self.wait_until_bookmark("y_axis")
            cursor.blinking=False
            self.play(CursorMarkAxis(cursor, plane, "y"), run_time=0.5)


            self.wait_until_bookmark("bubble_cosine")
            x,y, _ = startpoint_even
            self.play(CursorMoveResize(cursor, x, y, 0.2, 0.2), run_time=0.5)
            self.add(cursor.copy()._start_fading(3).add_updater(even_updater))
            self.add_pencil_sound(2)
            self.play(Create(bubble_even), Write(bubble_even.text), run_time=2)
            cursor.blinking=True

            self.wait_until_bookmark("purple")
            self.play(Write(graph_pink), run_time=3)

            self.wait_until_bookmark("origin")
            x,y,_ = plane.c2p(0,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("bubble_sine")
            x,y, _ = startpoint_odd
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(cursor.copy()._start_fading(3).add_updater(odd_updater))
            self.add_pencil_sound(2)
            self.play(Create(bubble_odd), Write(bubble_odd.text), run_time=2)
            cursor.blinking=True

        self.wait(4)





PROTOTYPES=[
    PagePrototypeVideo.from_scene(Func_7_3_I_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_7_3_I_1_q, Func_7_3_I_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_7_3_I_1_a),
    PagePrototypeVideo.from_scene(Func_7_3_I_1_b),
    PagePrototypeVideo.from_scene(Func_7_3_I_3),
    PagePrototypeVideo.from_scene(Func_7_3_I_4),
    PagePrototypeVideo.from_scene(Func_7_3_I_5),
    PagePrototypeVideo.from_scene(Func_7_3_P_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_7_3_P_1_q, Func_7_3_P_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_7_3_P_1_a),
    PagePrototypeVideo.from_scene(Func_7_3_P_1_b),
    PagePrototypeVideo.from_scene(Func_7_3_P_1_c),
    PagePrototypeVideo.from_scene(Func_7_3_P_1_d),
    PagePrototypeVideo.from_scene(Func_7_3_P_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_7_3_P_2_q, Func_7_3_P_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_7_3_P_2_a),
    PagePrototypeVideo.from_scene(Func_7_3_P_2_b),
    PagePrototypeVideo.from_scene(Func_7_3_P_2_c),
    PagePrototypeVideo.from_scene(Func_7_3_P_2_d),
]
