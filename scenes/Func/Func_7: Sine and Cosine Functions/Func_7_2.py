# 7_2: Trigonometric Functions: Intro (Sine)

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
TASK_Func_7_2_I_1_q = SophiaTaskDefinition(
    answerOptions = ["blue line / green line", "pink line / blue line", "pink line / green line", "green line / pink line"],
    correctAnswerIndex = 1,
    questionText = "Which of the lines do we have two divide by which to get the sine of the bottom left corner?"
)
class Func_7_2_I_1_q(SophiaCursorScene):

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

        arc = lambda: Arc(radius=1, angle=2*PI, color=BLUE)
        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))
        triangle = VGroup(line_cos, line_sine, line_end).shift(0.7*LEFT+0.2*UP)
        

        # Action Sequence
        with self.voiceover(
                text="""
                Check out<bookmark mark="show_triangle"/> this beautiful triangle.

                You know what's just as beautiful? <bookmark mark="sine"/> The sine function. Well, at least
                once you really understand it.

                Let's start slowly though. Which line do we divide by which other line,
                to get the sine of the angle <bookmark mark="angle"/>in the bottom
                left corner?
                """
        ) as tracker:

            self.wait_until_bookmark("show_triangle")
            self.play(Create(triangle))

            self.wait_until_bookmark("sine")
            x,y,_ = title.get_center()-np.array([1.2,.4,0])
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("angle")
            cursor.blinking=False
            self.play(CursorMoveToCurved(cursor, -0.8, 0.1))
            cursor.blinking=True

        self.wait(4)


class Func_7_2_I_1_a(SophiaCursorScene):

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

        arc = lambda: Arc(radius=1, angle=2*PI, color=BLUE)
        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))
        triangle = VGroup(line_cos, line_sine, line_end).shift(0.7*LEFT+0.2*UP)
        self.add(triangle)

        sine_formula = MathTex("\\sin(\\alpha) =", "\\frac{\\text{opposite}}{\\text{hypothenuse}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)
        

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right.
                The sine is equal to <bookmark mark="opposite"/> the length of the opposite divided <bookmark mark="hypothenuse"/>
                by the length of the hypothenuse.

                The opposite is the side opposite to the angle. In this case,<bookmark mark="opposite_plot"/> it's the pink line.
                The hypothenuse is the longest side of a triangle. In this case,<bookmark mark="hypothenuse_plot"/> it's the blue line.
                This means, that we have to divide the pink line by the blue line to get the sine of the angle in the bottom left
                corner.
                """
        ) as tracker:
            
            x,y,_ = sine_formula[0].get_center()+0.4*DOWN+0.2*LEFT
            cursor.blinking=False
            self.play(Write(sine_formula[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("opposite")
            cursor.blinking=False
            x,y,_ = sine_formula[1].get_right()+0.2*RIGHT+0.2*UP
            self.play(Write(sine_formula[1]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("hypothenuse")
            cursor.blinking=False
            x,y,_ = sine_formula[1].get_right()+0.2*RIGHT+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("opposite_plot")
            cursor.blinking=False
            x,y,_ = line_sine.get_center()+0.2*RIGHT
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("hypothenuse_plot")
            cursor.blinking=False
            x,y,_ = line_end.get_center()+0.2*(LEFT+UP)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

        self.wait(4)

class Func_7_2_I_1_b(SophiaCursorScene):

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

        arc = lambda: Arc(radius=1, angle=2*PI, color=BLUE)
        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))
        triangle = VGroup(line_cos, line_sine, line_end).shift(0.7*LEFT+0.2*UP)
        self.add(triangle)

        sine_formula = MathTex("\\sin(\\alpha) =", "\\frac{\\text{opposite}}{\\text{hypothenuse}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)
        

        # Action Sequence
        with self.voiceover(
                text="""
                Yep, that's correct.
                The sine is equal to <bookmark mark="opposite"/> the length of the opposite divided <bookmark mark="hypothenuse"/>
                by the length of the hypothenuse.

                The opposite is the side opposite to the angle. In this case,<bookmark mark="opposite_plot"/> it's the pink line.
                The hypothenuse is the longest side of a triangle. In this case,<bookmark mark="hypothenuse_plot"/> it's the blue line.
                This means, that we have to divide the pink line by the blue line to get the sine of the angle in the bottom left
                corner.
                """
        ) as tracker:
            
            x,y,_ = sine_formula[0].get_center()+0.4*DOWN+0.2*LEFT
            cursor.blinking=False
            self.play(Write(sine_formula[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("opposite")
            cursor.blinking=False
            x,y,_ = sine_formula[1].get_right()+0.2*RIGHT+0.2*UP
            self.play(Write(sine_formula[1]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("hypothenuse")
            cursor.blinking=False
            x,y,_ = sine_formula[1].get_right()+0.2*RIGHT+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("opposite_plot")
            cursor.blinking=False
            x,y,_ = line_sine.get_center()+0.2*RIGHT
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("hypothenuse_plot")
            cursor.blinking=False
            x,y,_ = line_end.get_center()+0.2*(LEFT+UP)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

        self.wait(4)


class Func_7_2_I_1_c(SophiaCursorScene):

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

        arc = lambda: Arc(radius=1, angle=2*PI, color=BLUE)
        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))
        triangle = VGroup(line_cos, line_sine, line_end).shift(0.7*LEFT+0.2*UP)
        self.add(triangle)

        sine_formula = MathTex("\\sin(\\alpha) =", "\\frac{\\text{opposite}}{\\text{hypothenuse}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)
        

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right.
                The sine is equal to <bookmark mark="opposite"/> the length of the opposite divided <bookmark mark="hypothenuse"/>
                by the length of the hypothenuse.

                The opposite is the side opposite to the angle. In this case,<bookmark mark="opposite_plot"/> it's the pink line.
                The hypothenuse is the longest side of a triangle. In this case,<bookmark mark="hypothenuse_plot"/> it's the blue line.
                This means, that we have to divide the pink line by the blue line to get the sine of the angle in the bottom left
                corner.
                """
        ) as tracker:
            
            x,y,_ = sine_formula[0].get_center()+0.4*DOWN+0.2*LEFT
            cursor.blinking=False
            self.play(Write(sine_formula[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("opposite")
            cursor.blinking=False
            x,y,_ = sine_formula[1].get_right()+0.2*RIGHT+0.2*UP
            self.play(Write(sine_formula[1]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("hypothenuse")
            cursor.blinking=False
            x,y,_ = sine_formula[1].get_right()+0.2*RIGHT+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("opposite_plot")
            cursor.blinking=False
            x,y,_ = line_sine.get_center()+0.2*RIGHT
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("hypothenuse_plot")
            cursor.blinking=False
            x,y,_ = line_end.get_center()+0.2*(LEFT+UP)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

        self.wait(4)


class Func_7_2_I_1_d(SophiaCursorScene):

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

        arc = lambda: Arc(radius=1, angle=2*PI, color=BLUE)
        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3)#.add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))
        triangle = VGroup(line_cos, line_sine, line_end).shift(0.7*LEFT+0.2*UP)
        self.add(triangle)

        sine_formula = MathTex("\\sin(\\alpha) =", "\\frac{\\text{opposite}}{\\text{hypothenuse}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)
        

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right.
                The sine is equal to <bookmark mark="opposite"/> the length of the opposite divided <bookmark mark="hypothenuse"/>
                by the length of the hypothenuse.

                The opposite is the side opposite to the angle. In this case,<bookmark mark="opposite_plot"/> it's the pink line.
                The hypothenuse is the longest side of a triangle. In this case,<bookmark mark="hypothenuse_plot"/> it's the blue line.
                This means, that we have to divide the pink line by the blue line to get the sine of the angle in the bottom left
                corner.
                """
        ) as tracker:
            
            x,y,_ = sine_formula[0].get_center()+0.4*DOWN+0.2*LEFT
            cursor.blinking=False
            self.play(Write(sine_formula[0]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("opposite")
            cursor.blinking=False
            x,y,_ = sine_formula[1].get_right()+0.2*RIGHT+0.2*UP
            self.play(Write(sine_formula[1]), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("hypothenuse")
            cursor.blinking=False
            x,y,_ = sine_formula[1].get_right()+0.2*RIGHT+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("opposite_plot")
            cursor.blinking=False
            x,y,_ = line_sine.get_center()+0.2*RIGHT
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
TASK_Func_7_2_I_2_q = SophiaTaskDefinition(
    answerOptions = ["It has the length $\cos(1)$","It has length $\sin(1)$""It has length $\sqrt{2}$","It has length $1$"],
    correctAnswerIndex = 3,
    questionText = "What can we say about the hypothenuse (the blue line) for the inscribed triangle?"
)
class Func_7_2_I_2_q(SophiaCursorScene):

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

        sine_formula = MathTex("\\sin(\\alpha) =", "\\frac{\\text{opposite}}{\\text{hypothenuse}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)
        self.add(sine_formula)

        # Action Sequence
        with self.voiceover(
                text="""
                Now what if we <bookmark mark="circle"/>inscribe the triangle into a circle, with the radius of one?
                If the top left corner is in the center of the circle, what can we say
                about <bookmark mark="hypothenuse"/> the hypothenuse, meaning the blue line?
                """
        ) as tracker:
            
            self.play(triangle.animate.shift(0.7*RIGHT+0.2*DOWN), sine_formula.animate.shift(DOWN))
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

        self.wait(4)


class Func_7_2_I_2_a(SophiaCursorScene):

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

        arc = Arc(radius=1.4, angle=2*PI, color=BLUE)
        self.add(arc)

        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3)#.
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3)
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3)
        triangle = VGroup(line_cos, line_sine, line_end)
        self.add(triangle)

        sine_formula = MathTex("\\sin(\\alpha) =", "\\frac{\\text{opposite}}{\\text{hypothenuse}}", color=c1t, font_size=fs3).next_to(arc, DOWN, buff=0.6)
        self.add(sine_formula)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right.
                The blue line goes <bookmark mark="center"/>from the center of the circle to the
                edge<bookmark mark="circle"/> of the circle. Since the radius of the circle is one, the length of the
                blue line is<bookmark mark="write_one"/> also one.

                Note that we can <bookmark mark="vary"/> vary the angle alpha and the length of the blue line will
                still be one, as long as it is inscribed into the unit circle
                """
        ) as tracker:
            
            self.wait_until_bookmark("center")
            cursor.blinking=False
            
            self.wait_until_bookmark("circle")
            x,y,_ = line_end.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("write_one")
            one = MathTex("1", color=c1t, font_size=fs3).move_to(line_end.get_center()+0.1*(LEFT+UP))
            self.play(Write(one))
            line_cos.add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
            line_sine.add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
            line_end.add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))

            self.wait_until_bookmark("vary")
            cursor.blinking=False
            rotation_updater = lambda m: m.move_to(line_end.get_start())
            cursor.add_updater(rotation_updater)
            self.remove(one)
            self.play(a.animate.set_value(2*PI+0.5), run_time=6)
            cursor.blinking=True


        self.wait(4)


class Func_7_2_I_2_b(SophiaCursorScene):

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

        arc = Arc(radius=1.4, angle=2*PI, color=BLUE)
        self.add(arc)

        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3)#.
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3)
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3)
        triangle = VGroup(line_cos, line_sine, line_end)
        self.add(triangle)

        sine_formula = MathTex("\\sin(\\alpha) =", "\\frac{\\text{opposite}}{\\text{hypothenuse}}", color=c1t, font_size=fs3).next_to(arc, DOWN, buff=0.6)
        self.add(sine_formula)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right.
                The blue line goes <bookmark mark="center"/>from the center of the circle to the
                edge<bookmark mark="circle"/> of the circle. Since the radius of the circle is one, the length of the
                blue line is<bookmark mark="write_one"/> also one.

                Note that we can <bookmark mark="vary"/> vary the angle alpha and the length of the blue line will
                still be one, as long as it is inscribed into the unit circle
                """
        ) as tracker:
            
            self.wait_until_bookmark("center")
            cursor.blinking=False
            
            self.wait_until_bookmark("circle")
            x,y,_ = line_end.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("write_one")
            one = MathTex("1", color=c1t, font_size=fs3).move_to(line_end.get_center()+0.1*(LEFT+UP))
            self.play(Write(one))
            line_cos.add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
            line_sine.add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
            line_end.add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))

            self.wait_until_bookmark("vary")
            cursor.blinking=False
            rotation_updater = lambda m: m.move_to(line_end.get_start())
            cursor.add_updater(rotation_updater)
            self.remove(one)
            self.play(a.animate.set_value(2*PI+0.5), run_time=6)
            cursor.blinking=True


        self.wait(4)


class Func_7_2_I_2_c(SophiaCursorScene):

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

        arc = Arc(radius=1.4, angle=2*PI, color=BLUE)
        self.add(arc)

        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3)#.
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3)
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3)
        triangle = VGroup(line_cos, line_sine, line_end)
        self.add(triangle)

        sine_formula = MathTex("\\sin(\\alpha) =", "\\frac{\\text{opposite}}{\\text{hypothenuse}}", color=c1t, font_size=fs3).next_to(arc, DOWN, buff=0.6)
        self.add(sine_formula)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right.
                The blue line goes <bookmark mark="center"/>from the center of the circle to the
                edge<bookmark mark="circle"/> of the circle. Since the radius of the circle is one, the length of the
                blue line is<bookmark mark="write_one"/> also one.

                Note that we can <bookmark mark="vary"/> vary the angle alpha and the length of the blue line will
                still be one, as long as it is inscribed into the unit circle
                """
        ) as tracker:
            
            self.wait_until_bookmark("center")
            cursor.blinking=False
            
            self.wait_until_bookmark("circle")
            x,y,_ = line_end.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("write_one")
            one = MathTex("1", color=c1t, font_size=fs3).move_to(line_end.get_center()+0.1*(LEFT+UP))
            self.play(Write(one))
            line_cos.add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
            line_sine.add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
            line_end.add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))

            self.wait_until_bookmark("vary")
            cursor.blinking=False
            rotation_updater = lambda m: m.move_to(line_end.get_start())
            cursor.add_updater(rotation_updater)
            self.remove(one)
            self.play(a.animate.set_value(2*PI+0.5), run_time=6)
            cursor.blinking=True


        self.wait(4)


class Func_7_2_I_2_d(SophiaCursorScene):

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

        arc = Arc(radius=1.4, angle=2*PI, color=BLUE)
        self.add(arc)

        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3)#.
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3)
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3)
        triangle = VGroup(line_cos, line_sine, line_end)
        self.add(triangle)

        sine_formula = MathTex("\\sin(\\alpha) =", "\\frac{\\text{opposite}}{\\text{hypothenuse}}", color=c1t, font_size=fs3).next_to(arc, DOWN, buff=0.6)
        self.add(sine_formula)

        # Action Sequence
        with self.voiceover(
                text="""
                Yes, that's right. Well done.
                The blue line goes <bookmark mark="center"/>from the center of the circle to the
                edge<bookmark mark="circle"/> of the circle. Since the radius of the circle is one, the length of the
                blue line is<bookmark mark="write_one"/> also one.

                Note that we can <bookmark mark="vary"/> vary the angle alpha and the length of the blue line will
                still be one, as long as it is inscribed into the unit circle
                """
        ) as tracker:
            
            self.wait_until_bookmark("center")
            cursor.blinking=False
            
            self.wait_until_bookmark("circle")
            x,y,_ = line_end.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("write_one")
            one = MathTex("1", color=c1t, font_size=fs3).move_to(line_end.get_center()+0.1*(LEFT+UP))
            self.play(Write(one))
            line_cos.add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
            line_sine.add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
            line_end.add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))

            self.wait_until_bookmark("vary")
            cursor.blinking=False
            rotation_updater = lambda m: m.move_to(line_end.get_start())
            cursor.add_updater(rotation_updater)
            self.remove(one)
            self.play(a.animate.set_value(2*PI+0.5), run_time=6)
            cursor.blinking=True


        self.wait(4)


#####################################
#####################################
class Func_7_2_I_3(SophiaCursorScene):

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

        arc = Arc(radius=1.4, angle=2*PI, color=BLUE, stroke_width=2)
        self.add(arc)

        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))
        triangle = VGroup(line_cos, line_sine, line_end)
        self.add(triangle)

        sine_formula = MathTex("\\sin(\\alpha) =", "\\frac{\\text{opposite}}{\\text{hypothenuse}}", color=c1t, font_size=fs3).next_to(arc, DOWN, buff=0.6)
        sine_formula_2 = MathTex("\\sin(\\alpha) =", "\\text{opposite}", color=PINK, font_size=fs3).move_to(sine_formula)
        self.add(sine_formula)

        # Action Sequence
        with self.voiceover(
                text="""
                So <bookmark mark="sine"/> the sine of the angle alpha <bookmark mark="opposite"/>is the opposite divided 
                <bookmark mark="hypothenuse"/>by the hypothenuse.
                In our example, that means the <bookmark mark="pink_line"/>length of the pink line divided by the <bookmark mark="blue_line"/>
                length of the blue line. And we know that <bookmark mark="vary"/> the length of the blue line is always one, as long as it is
                inscribed into the unit circle. This means, that the sine of the angle alpha is <bookmark mark="sine_one"/> always equal to
                the length of the pink line,  <bookmark mark="hypothenuse_2"/>because the hypothenuse that we're dividing by is always one.

                So for the expression, that means that if we inscribe the triangle into the unit circle, the <bookmark mark="sine_term"/>
                sine of the inner angle is equal to the <bookmark mark="opposite_term"/>length of the opposite side.
                """
        ) as tracker:
            
            self.wait_until_bookmark("sine")
            cursor.blinking=False
            x,y,_ = sine_formula[0].get_center()+0.4*DOWN+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("opposite")
            cursor.blinking=False
            x,y,_ = sine_formula[1].get_right()+0.2*RIGHT+0.2*UP
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("hypothenuse")
            cursor.blinking=False
            x,y,_ = sine_formula[1].get_right()+0.2*RIGHT+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("pink_line")
            cursor.blinking=False
            x,y,_ = line_sine.get_center()+0.2*RIGHT
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("blue_line")
            cursor.blinking=False
            x,y,_ = line_end.get_center()+0.2*(LEFT+UP)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
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

            self.wait_until_bookmark("sine_one")
            cursor.blinking=False
            x,y,_ = line_sine.get_center()+0.2*RIGHT
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("hypothenuse_2")
            cursor.blinking=False
            x,y,_ = sine_formula[1].get_right()+0.2*RIGHT+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("sine_term")
            cursor.blinking=False
            x,y,_ = sine_formula[0].get_center()+0.4*DOWN+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("opposite_term")
            cursor.blinking=False
            x,y,_ = sine_formula_2[1].get_center()+0.4*DOWN
            self.play(ReplacementTransform(sine_formula, sine_formula_2), CursorMoveToCurved(cursor, x, y), run_time=0.5)

        self.wait(4)


#####################################
#####################################
class Func_7_2_I_4(SophiaCursorScene):

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

        arc = Arc(radius=1.4, angle=2*PI, color=BLUE, stroke_width=2)
        self.add(arc)

        line_cos  = Line(ORIGIN, 1.4*cosine()*RIGHT, color=GREEN, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(ORIGIN, 1.4*cosine()*RIGHT))
        line_sine = Line(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(1.4*cosine()*RIGHT, 1.4*(cosine()*RIGHT+sine()*UP)))
        line_end = Line(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(1.4*(cosine()*RIGHT+sine()*UP), ORIGIN))
        triangle = VGroup(line_cos, line_sine, line_end)
        self.add(triangle)

        angle_intro = Tex("Angle: ", color=c1t, font_size=fs2)
        angle_num = DecimalNumber(0, num_decimal_places=1, font_size=fs2).set_color(c1t).add_updater(lambda m: m.set_value(a.get_value()/np.pi))
        angle_label = MathTex("\\Pi", color=c1t, font_size=fs2)
        angle = VGroup(angle_intro, angle_num, angle_label).arrange(RIGHT, buff=0.1)

        sine_intro = Tex("Sine: ", color=c1t, font_size=fs2)
        sine_num = DecimalNumber(0, num_decimal_places=1, font_size=fs2).set_color(c1t).add_updater(lambda m: m.set_value(sine()))
        sine_group = VGroup(sine_intro, sine_num).arrange(RIGHT, buff=0.1)

        sine_angle = VGroup(angle, sine_group).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(arc, DOWN, buff=0.6)

        sine_num.shift((sine_num.get_left()-angle_num.get_left())[0]*LEFT)

        # Action Sequence
        with self.voiceover(
                text="""
                Now we can <bookmark mark="sine_function_title"/>use the sine-function to describe the relationship between
                the angle of the triangle and the sine of the angle, which in this case is equal to the length of the
                opposite side, so the pink line.

                When we change the angle, let us keep track<bookmark mark="track_angle"/> of the angle alpha and
                <bookmark mark="track_length"/>the length of the pink line, which is the sine of the angle.

                Now, <bookmark mark="vary"/>vary the angle alpha and observe how the length of the pink line changes.
                Also look at how the sine changes together with the angle.
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
            x,y,_ = sine_num.get_center()+0.4*DOWN
            self.play(Write(sine_group), CursorMoveTo(cursor, x, y), run_time=0.5)
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
class Func_7_2_I_5(SophiaCursorScene):

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

        sine_intro = Tex("Sine: ", color=c1t, font_size=fs2)
        sine_num = DecimalNumber(0, num_decimal_places=1, font_size=fs2).set_color(c1t).add_updater(lambda m: m.set_value(sine()))
        sine_group = VGroup(sine_intro, sine_num).arrange(RIGHT, buff=0.1)

        sine_angle = VGroup(angle, sine_group).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(arc, DOWN, buff=0.6)

        sine_num.shift((sine_num.get_left()-angle_num.get_left())[0]*LEFT)

        cords = self.add_cords([0, 2*np.pi, np.pi/2], [-1, 1, 1], x_ticks=[0,np.pi/2, np.pi, 3*np.pi/2, 2*np.pi], x_labels=["0", "\\tfrac{1}{2}\\Pi" , "\\Pi", "\\tfrac{3}{2}\\Pi" , "2\\Pi"], y_ticks=[-1,1], height=2).shift(2.4*DOWN)
        plane = cords[0]

        upshift = UP
        perturb = np.array([0,0,1])

        get_fct = lambda: plane.plot(lambda x: np.sin(x), x_range=[0,a.get_value(),0.001], color=c1t, stroke_width=2)

        # Action Sequence
        with self.voiceover(
                text="""
                I already announced that we will use the sine function to describe the relationship between
                the angle of the triangle and the sine of the angle. <bookmark mark="reorder"/>

                Let's do that graphically.

                On this graph, <bookmark mark="x_axis"/>the x-axis describes the angle alpha,
                <bookmark mark="y_axis"/>and the y-axis describes the sine of the
                angle alpha. 

                Now let's <bookmark mark="reset"/>start at zero

                <bookmark mark="increase_1"/>and increase the angle alpha. See how the sine of the angle
                increases in parallel to the opposite side of the triangle?

                Anyway, this is the sine function... The value of the sine function at a certain angle alpha
                is equal to the length of the opposite side of the triangle. It also has this cool wave shape.
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
            cursor_updater = lambda m: m.move_to(plane.c2p(a.get_value(), sine()))
            pink_line_2 = Line(plane.c2p(0,0), plane.c2p(0,1), color=PINK, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(plane.c2p(a.get_value(),0), plane.c2p(a.get_value(), sine())))
            cursor.add_updater(cursor_updater)
            self.add(pink_line_2, always_redraw(get_fct))

            self.wait_until_bookmark("increase_1")
            self.play(a.animate.set_value(2*np.pi), run_time=18)


        self.wait(4)

#####################################
#####################################
class Func_7_2_I_6(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine Function")

        a = ValueTracker(0)
        sine = lambda: np.sin(a.get_value())
        cosine = lambda: np.cos(a.get_value())

        upshift = UP
        perturb = np.array([0,0,1])

        one = ImageMobject(assets_folder / "img" / "one_baloony.png")
        one = one.scale(2.5/one.get_width()).move_to([-5, 1, 0])

        arc = Arc(radius=1, angle=2*PI, color=BLUE, stroke_width=2).shift(upshift)
        self.add(arc)

        line_cos  = Line(ORIGIN, cosine()*RIGHT, color=GREEN, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(upshift, cosine()*RIGHT+upshift+perturb))
        line_sine = Line(cosine()*RIGHT, (cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(cosine()*RIGHT+upshift+perturb, (cosine()*RIGHT+sine()*UP)+upshift))
        line_end = Line((cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on((cosine()*RIGHT+sine()*UP)+upshift, upshift))

        triangle = VGroup(line_cos, line_end, line_sine).shift(upshift)
        self.add(triangle)

        angle_intro = Tex("Angle: ", color=c1t, font_size=fs2)
        angle_num = DecimalNumber(0, num_decimal_places=1, font_size=fs2).set_color(c1t).add_updater(lambda m: m.set_value(a.get_value()/np.pi))
        angle_label = MathTex("\\Pi", color=c1t, font_size=fs2)
        angle = VGroup(angle_intro, angle_num, angle_label).arrange(RIGHT, buff=0.1)

        sine_intro = Tex("Sine: ", color=c1t, font_size=fs2)
        sine_num = DecimalNumber(0, num_decimal_places=1, font_size=fs2).set_color(c1t).add_updater(lambda m: m.set_value(sine()))
        sine_group = VGroup(sine_intro, sine_num).arrange(RIGHT, buff=0.1)

        sine_angle = VGroup(angle, sine_group).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(arc, DOWN, buff=0.6)

        sine_num.shift((sine_num.get_left()-angle_num.get_left())[0]*LEFT)

        cords = self.add_cords([0, 2*np.pi, np.pi/2], [-1, 1, 1], x_ticks=[0,np.pi/2, np.pi, 3*np.pi/2, 2*np.pi], x_labels=["0", "\\tfrac{1}{2}\\Pi" , "\\Pi", "\\tfrac{3}{2}\\Pi" , "2\\Pi"], y_ticks=[-1,1], height=2).shift(3.4*DOWN)
        plane = cords[0]
        x,y,_ = plane.c2p(0,0)
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        get_fct = plane.plot(lambda x: np.sin(x), color=c1t, stroke_width=2)
        self.add(get_fct)

        # Action Sequence
        with self.voiceover(
                text="""
                Here are three important facts about the sign function:

                <bookmark mark="one"/>FACT NUMBER ONE: The maximum value of the sign function is one.
                It is <bookmark mark="max"/> reached at the angle alpha equals half pi.
                Similarly, the minimum value of the sign function is negative one,
                <bookmark mark="min"/>and it is reached at the angle alpha equals
                three half pie.

                Look how in both cases<bookmark mark="switch"/>, the triangle is not really a triangle?
                It looks much more like a line.
                """
        ) as tracker:
            
            self.wait_until_bookmark("one")
            self.play(one.animate.shift(5*RIGHT), run_time=.5)
            self.wait(1)
            self.play(one.animate.shift(5*RIGHT), run_time=.5)
            
            self.wait_until_bookmark("max")
            cursor.blinking=False
            cursor_updater = lambda m: m.move_to(plane.c2p(a.get_value(), sine()))
            cursor.add_updater(cursor_updater)
            pink_line_2 = Line(plane.c2p(0,0), plane.c2p(0,1), color=PINK, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(plane.c2p(a.get_value(),0), plane.c2p(a.get_value(), sine())))
            self.add(pink_line_2)
            self.play(a.animate.set_value(np.pi/2), run_time=2)

            self.wait_until_bookmark("min")
            self.play(a.animate.set_value(3*np.pi/2), run_time=2)

            self.wait_until_bookmark("switch")
            self.play(a.animate.set_value(0.5*np.pi))
            self.wait(2)
            self.play(a.animate.set_value(1.5*np.pi))

        self.wait(4)


#####################################
#####################################
class Func_7_2_I_7(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine Function")

        a = ValueTracker(0)
        sine = lambda: np.sin(a.get_value())
        cosine = lambda: np.cos(a.get_value())

        upshift = UP
        perturb = np.array([0,0,1])

        two = ImageMobject(assets_folder / "img" / "two_baloony.png")
        two = two.scale(2.5/two.get_width()).move_to([-5, 1, 0])

        arc = Arc(radius=1, angle=2*PI, color=BLUE, stroke_width=2).shift(upshift)
        self.add(arc)

        line_cos  = Line(ORIGIN, cosine()*RIGHT, color=GREEN, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(upshift, cosine()*RIGHT+upshift+perturb))
        line_sine = Line(cosine()*RIGHT, (cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(cosine()*RIGHT+upshift+perturb, (cosine()*RIGHT+sine()*UP)+upshift))
        line_end = Line((cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on((cosine()*RIGHT+sine()*UP)+upshift, upshift))

        triangle = VGroup(line_cos, line_end, line_sine).shift(upshift)
        self.add(triangle)

        angle_intro = Tex("Angle: ", color=c1t, font_size=fs2)
        angle_num = DecimalNumber(0, num_decimal_places=1, font_size=fs2).set_color(c1t).add_updater(lambda m: m.set_value(a.get_value()/np.pi))
        angle_label = MathTex("\\Pi", color=c1t, font_size=fs2)
        angle = VGroup(angle_intro, angle_num, angle_label).arrange(RIGHT, buff=0.1)

        sine_intro = Tex("Sine: ", color=c1t, font_size=fs2)
        sine_num = DecimalNumber(0, num_decimal_places=1, font_size=fs2).set_color(c1t).add_updater(lambda m: m.set_value(sine()))
        sine_group = VGroup(sine_intro, sine_num).arrange(RIGHT, buff=0.1)

        sine_angle = VGroup(angle, sine_group).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(arc, DOWN, buff=0.6)

        sine_num.shift((sine_num.get_left()-angle_num.get_left())[0]*LEFT)

        cords = self.add_cords([0, 4*np.pi, np.pi], [-1, 1, 1], x_ticks=[0, np.pi, 2*np.pi, 3*np.pi, 4*np.pi], x_labels=["0" , "\\Pi", "2\\Pi", "3\\Pi", "4\\Pi"], y_ticks=[-1,1], height=2).shift(3.4*DOWN)
        plane = cords[0]
        x,y,_ = plane.c2p(0,0)
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        get_fct = lambda: plane.plot(lambda x: np.sin(x), x_range=[0,a.get_value(),0.001], color=c1t, stroke_width=2)
        self.add(always_redraw(get_fct))

        # Action Sequence
        with self.voiceover(
                text="""
                <bookmark mark="two"/>FACT NUMBER TWO: The sine function is periodic. This means, that it repeats itself
                every 2 pie.

                What does that mean?

                So we already know what the function looks <bookmark mark="zero_to_two_pi"/> like from zero to two pie.
                It starts at zero and then goes up to one, back to zero, down to negative one and back to zero.
                
                Now notice that this all happened while the triangle went around the circle fully, so after two pie,
                we're back at where we started.

                So naturally, the function will look exactly the way it does at x equals zero:
                <bookmark mark="continue_1"/> Up to one, back to zero, down to negative one, and back to zero again.

                And at four pie, it repeats itself again!
                """
        ) as tracker:
            
            self.wait_until_bookmark("two")
            self.play(two.animate.shift(5*RIGHT), run_time=.5)
            self.wait(1)
            self.play(two.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("zero_to_two_pi")
            cursor.blinking=False
            cursor_updater = lambda m: m.move_to(plane.c2p(a.get_value(), sine()))
            cursor.add_updater(cursor_updater)
            pink_line_2 = Line(plane.c2p(0,0), plane.c2p(0,1), color=PINK, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(plane.c2p(a.get_value(),0), plane.c2p(a.get_value(), sine())))
            self.add(pink_line_2)
            self.play(a.animate.set_value(2*np.pi), run_time=10)
            cursor.blinking=True

            self.wait_until_bookmark("continue_1")
            cursor.blinking=False
            self.play(a.animate.set_value(4*np.pi), run_time=6)
            cursor.blinking=True


        self.wait(4)



#####################################
#####################################
class Func_7_2_I_8(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine Function")

        a = ValueTracker(-2*np.pi)
        sine = lambda: np.sin(a.get_value())
        cosine = lambda: np.cos(a.get_value())

        upshift = UP
        perturb = np.array([0,0,1])

        three = ImageMobject(assets_folder / "img" / "three_baloony.png")
        three = three.scale(2.5/three.get_width()).move_to([-5, 1, 0])

        arc = Arc(radius=1, angle=2*PI, color=BLUE, stroke_width=2).shift(upshift)
        self.add(arc)

        line_cos  = Line(ORIGIN, cosine()*RIGHT, color=GREEN, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(upshift, cosine()*RIGHT+upshift+perturb))
        line_sine = Line(cosine()*RIGHT, (cosine()*RIGHT+sine()*UP), color=PINK, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(cosine()*RIGHT+upshift+perturb, (cosine()*RIGHT+sine()*UP)+upshift))
        line_end = Line((cosine()*RIGHT+sine()*UP), ORIGIN, color=PURE_BLUE, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on((cosine()*RIGHT+sine()*UP)+upshift, upshift))

        triangle = VGroup(line_cos, line_end, line_sine).shift(upshift)
        self.add(triangle)

        cords = self.add_cords([-2*np.pi, 2*np.pi,  np.pi], [-1, 1, 1], x_ticks=[-2*np.pi, -np.pi, 0, np.pi, 2*np.pi], x_labels=["-2\\Pi", "-\\Pi", "0" , "\\Pi", "2\\Pi"], y_ticks=[-1,1], height=2).shift(3.4*DOWN)
        plane = cords[0]
        x,y,_ = plane.c2p(-2*np.pi,0)
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        get_fct = lambda: plane.plot(lambda x: np.sin(x), x_range=[-2*np.pi,a.get_value(),0.001], color=c1t, stroke_width=2)
        self.add(always_redraw(get_fct))

        plot = plane.plot(lambda x: np.sin(x), color=c1t, stroke_width=2)

        # Action Sequence
        with self.voiceover(
                text="""
                <bookmark mark="three"/>FACT NUMBER THREE: The sine function is an odd function.

                What does that mean?

                Let's <bookmark mark="draw_1"/>first draw the function from negative two pi to zero.
                From fact number two, we know that the function looks exactly the same from negative two pie to zero
                as it does from zero to two pie.

                <bookmark mark="draw_2"/>
                Now let's draw the function from zero to two pie as well.

                Look <bookmark mark="y_axis"/> at the y-axis and compare the values of the function on
                the left and on the right side of the y-axis.

                See how the values are the same, but the sign is different? That's what it means to be an odd function.
                <bookmark mark="clean_circle"/> Specifically, <bookmark mark="odd_1_a"/>that f of negative x is
                <bookmark mark="odd_1_b"/>equal to negative f of x.

                You can easily check that this is true here. This means <bookmark mark="odd_2_a"/>that the sine of negative x
                <bookmark mark="odd_2_b"/>is equal to negative sine of  x.

                So the sine function is an odd function.
                """
        ) as tracker:
            
            self.wait_until_bookmark("three")
            self.play(three.animate.shift(5*RIGHT), run_time=.5)
            self.wait(1)
            self.play(three.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("draw_1")
            cursor.blinking=False
            cursor_updater = lambda m: m.move_to(plane.c2p(a.get_value(), sine()))
            cursor.add_updater(cursor_updater)
            pink_line_2 = Line(plane.c2p(0,0), plane.c2p(0,1), color=PINK, stroke_width=3).add_updater(lambda m: m.put_start_and_end_on(plane.c2p(a.get_value(),0)+perturb, plane.c2p(a.get_value(), sine())))
            self.add(pink_line_2)
            self.play(a.animate.set_value(0), run_time=6)
            self.wait()

            self.wait_until_bookmark("draw_2")
            self.play(a.animate.set_value(2*np.pi), run_time=4)
            self.add(plot)
            self.remove(get_fct)
            cursor.blinking=True

            self.wait_until_bookmark("y_axis")
            cursor.blinking=False
            cursor.remove_updater(cursor_updater)
            self.play(CursorMarkAxis(cursor, plane,  axis="y"), run_time=0.5)
            self.wait(1)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveResize(cursor,x,y,0.2,0.2))
            cursor.blinking=True

            self.wait_until_bookmark("clean_circle")
            odd_1 = MathTex("f(-x)", "=", " -f(x)", color=c1t, font_size=fs2)
            odd_2 = MathTex("\\sin(x)", "=", "-\\sin(-x)", color=c1t, font_size=fs2)
            odd = VGroup(odd_1, odd_2).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(title, DOWN, buff=0.8)
            self.remove(arc, triangle)

            self.wait_until_bookmark("odd_1_a")
            cursor.blinking=False
            x,y,_ = odd_1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(odd_1), run_time=.5)

            self.wait_until_bookmark("odd_1_b")
            x,y,_ = odd_1[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("odd_2_a")
            cursor.blinking=False
            x,y,_ = odd_2[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(odd_2), run_time=.5)

            self.wait_until_bookmark("odd_2_b")
            x,y,_ = odd_2[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
            cursor.blinking=True

        self.wait(4)



PROTOTYPES=[
    PagePrototypeVideo.from_scene(Func_7_2_I_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_7_2_I_1_q, Func_7_2_I_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_7_2_I_1_a),
    PagePrototypeVideo.from_scene(Func_7_2_I_1_b),
    PagePrototypeVideo.from_scene(Func_7_2_I_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_7_2_I_2_q, Func_7_2_I_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_7_2_I_2_a),
    PagePrototypeVideo.from_scene(Func_7_2_I_2_b),
    PagePrototypeVideo.from_scene(Func_7_2_I_2_c),
    PagePrototypeVideo.from_scene(Func_7_2_I_2_d),
    PagePrototypeVideo.from_scene(Func_7_2_I_3),
    PagePrototypeVideo.from_scene(Func_7_2_I_4),
    PagePrototypeVideo.from_scene(Func_7_2_I_5),
    PagePrototypeVideo.from_scene(Func_7_2_I_6),
    PagePrototypeVideo.from_scene(Func_7_2_I_7),
    PagePrototypeVideo.from_scene(Func_7_2_I_8),
]
