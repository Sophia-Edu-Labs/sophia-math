# 7_2: Trigonometric Functions: Intro (Sine)

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
import ast

#####################################
#####################################

#Intro Sine - Video 1
class Func_7_2_I_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_7_2.I1.q.answer-options")),
            correctAnswerIndex=1,
            questionText=self.translate("Func_7_2.I1.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_7_2.I1.q.title"))

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
                text=self.translate("Func_7_2.I1.q.voiceover")
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
        title = self.add_title(self.translate("Func_7_2.I1.q.title"))

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

        opp, hyp = self.translate("Func_7_2.I1.a.opposite"), self.translate("Func_7_2.I1.a.hypothenuse")
        sine_formula = MathTex("\\sin(\\alpha) =", f"\\frac{{\\text{{{opp}}}}}{{\\text{{{hyp}}}}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)
        
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_7_2.I1.a.voiceover")
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
        title = self.add_title(self.translate("Func_7_2.I1.q.title"))

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

        opp, hyp = self.translate("Func_7_2.I1.a.opposite"), self.translate("Func_7_2.I1.a.hypothenuse")
        sine_formula = MathTex("\\sin(\\alpha) =", f"\\frac{{\\text{{{opp}}}}}{{\\text{{{hyp}}}}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_1")+self.translate("Func_7_2.I1.a.voiceover")
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
        title = self.add_title(self.translate("Func_7_2.I1.q.title"))

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

        opp, hyp = self.translate("Func_7_2.I1.a.opposite"), self.translate("Func_7_2.I1.a.hypothenuse")
        sine_formula = MathTex("\\sin(\\alpha) =", f"\\frac{{\\text{{{opp}}}}}{{\\text{{{hyp}}}}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)
        

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_7_2.I1.a.voiceover")
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
        title = self.add_title(self.translate("Func_7_2.I1.q.title"))

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

        opp, hyp = self.translate("Func_7_2.I1.a.opposite"), self.translate("Func_7_2.I1.a.hypothenuse")
        sine_formula = MathTex("\\sin(\\alpha) =", f"\\frac{{\\text{{{opp}}}}}{{\\text{{{hyp}}}}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)
        

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_7_2.I1.a.voiceover")
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
class Func_7_2_I_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_7_2.I2.q.answer-options")),
            correctAnswerIndex=3,
            questionText=self.translate("Func_7_2.I2.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_2.I1.q.title"))

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

        opp, hyp = self.translate("Func_7_2.I1.a.opposite"), self.translate("Func_7_2.I1.a.hypothenuse")
        sine_formula = MathTex("\\sin(\\alpha) =", f"\\frac{{\\text{{{opp}}}}}{{\\text{{{hyp}}}}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)

        self.add(sine_formula)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_2.I2.q.voiceover")
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
        title = self.add_title(self.translate("Func_7_2.I1.q.title"))

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

        
        opp, hyp = self.translate("Func_7_2.I1.a.opposite"), self.translate("Func_7_2.I1.a.hypothenuse")
        sine_formula = MathTex("\\sin(\\alpha) =", f"\\frac{{\\text{{{opp}}}}}{{\\text{{{hyp}}}}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)

        self.add(sine_formula)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_2.I2.a.voiceover")
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
        title = self.add_title(self.translate("Func_7_2.I1.q.title"))

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

        
        opp, hyp = self.translate("Func_7_2.I1.a.opposite"), self.translate("Func_7_2.I1.a.hypothenuse")
        sine_formula = MathTex("\\sin(\\alpha) =", f"\\frac{{\\text{{{opp}}}}}{{\\text{{{hyp}}}}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)

        self.add(sine_formula)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_2.I2.a.voiceover")
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
        title = self.add_title(self.translate("Func_7_2.I1.q.title"))

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

        
        opp, hyp = self.translate("Func_7_2.I1.a.opposite"), self.translate("Func_7_2.I1.a.hypothenuse")
        sine_formula = MathTex("\\sin(\\alpha) =", f"\\frac{{\\text{{{opp}}}}}{{\\text{{{hyp}}}}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)

        self.add(sine_formula)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_2.I2.a.voiceover")
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
        title = self.add_title(self.translate("Func_7_2.I1.q.title"))

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

        opp, hyp = self.translate("Func_7_2.I1.a.opposite"), self.translate("Func_7_2.I1.a.hypothenuse")
        sine_formula = MathTex("\\sin(\\alpha) =", f"\\frac{{\\text{{{opp}}}}}{{\\text{{{hyp}}}}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)
        self.add(sine_formula)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_2.I2.d.voiceover")
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
        title = self.add_title(self.translate("Func_7_2.I1.q.title"))

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

        opp, hyp = self.translate("Func_7_2.I1.a.opposite"), self.translate("Func_7_2.I1.a.hypothenuse")
        sine_formula = MathTex("\\sin(\\alpha) =", f"\\frac{{\\text{{{opp}}}}}{{\\text{{{hyp}}}}}", color=c1t, font_size=fs3).next_to(triangle, DOWN, buff=0.8)
        sine_formula_2 = MathTex("\\sin(\\alpha) =", "\\text{opposite}", color=PINK, font_size=fs3).move_to(sine_formula)
        self.add(sine_formula)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_2.I3.voiceover")
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
        title = self.add_title(self.translate("Func_7_2.I1.q.title"))

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

        angle_intro = Tex(self.translate("Func_7_2.I4.angle"), color=c1t, font_size=fs2)
        angle_num = DecimalNumber(0, num_decimal_places=1, font_size=fs2).set_color(c1t).add_updater(lambda m: m.set_value(a.get_value()/np.pi))
        angle_label = MathTex("\\Pi", color=c1t, font_size=fs2)
        angle = VGroup(angle_intro, angle_num, angle_label).arrange(RIGHT, buff=0.1)

        sine_intro = Tex(self.translate("Func_7_2.I4.sine"), color=c1t, font_size=fs2)
        sine_num = DecimalNumber(0, num_decimal_places=1, font_size=fs2).set_color(c1t).add_updater(lambda m: m.set_value(sine()))
        sine_group = VGroup(sine_intro, sine_num).arrange(RIGHT, buff=0.1)

        sine_angle = VGroup(angle, sine_group).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(arc, DOWN, buff=0.6)

        sine_num.shift((sine_num.get_left()-angle_num.get_left())[0]*LEFT)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_2.I4.voiceover")
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
        title = self.add_title(self.translate("Func_7_2.I1.q.title"))

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

        angle_intro = Tex(self.translate("Func_7_2.I4.angle"), color=c1t, font_size=fs2)
        angle_num = DecimalNumber(0, num_decimal_places=1, font_size=fs2).set_color(c1t).add_updater(lambda m: m.set_value(a.get_value()/np.pi))
        angle_label = MathTex("\\Pi", color=c1t, font_size=fs2)
        angle = VGroup(angle_intro, angle_num, angle_label).arrange(RIGHT, buff=0.1)

        sine_intro = Tex(self.translate("Func_7_2.I4.sine"), color=c1t, font_size=fs2)
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
                text=self.translate("Func_7_2.I5.voiceover")
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
        title = self.add_title(self.translate("Func_7_2.I1.q.title"))

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

        angle_intro = Tex(self.translate("Func_7_2.I4.angle"), color=c1t, font_size=fs2)
        angle_num = DecimalNumber(0, num_decimal_places=1, font_size=fs2).set_color(c1t).add_updater(lambda m: m.set_value(a.get_value()/np.pi))
        angle_label = MathTex("\\Pi", color=c1t, font_size=fs2)
        angle = VGroup(angle_intro, angle_num, angle_label).arrange(RIGHT, buff=0.1)

        sine_intro = Tex(self.translate("Func_7_2.I4.sine"), color=c1t, font_size=fs2)
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
                text=self.translate("Func_7_2.I6.voiceover")
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
        title = self.add_title(self.translate("Func_7_2.I1.q.title"))

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

        angle_intro = Tex(self.translate("Func_7_2.I4.angle"), color=c1t, font_size=fs2)
        angle_num = DecimalNumber(0, num_decimal_places=1, font_size=fs2).set_color(c1t).add_updater(lambda m: m.set_value(a.get_value()/np.pi))
        angle_label = MathTex("\\Pi", color=c1t, font_size=fs2)
        angle = VGroup(angle_intro, angle_num, angle_label).arrange(RIGHT, buff=0.1)

        sine_intro = Tex(self.translate("Func_7_2.I4.sine"), color=c1t, font_size=fs2)
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
                text=self.translate("Func_7_2.I7.voiceover")
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
        title = self.add_title(self.translate("Func_7_2.I1.q.title"))

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
                text=self.translate("Func_7_2.I8.voiceover")
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
    PagePrototypeQuestion.from_scene(Func_7_2_I_1_q),
    PagePrototypeVideo.from_scene(Func_7_2_I_1_a),
    PagePrototypeVideo.from_scene(Func_7_2_I_1_b),
    PagePrototypeVideo.from_scene(Func_7_2_I_2_q),
    PagePrototypeQuestion.from_scene(Func_7_2_I_2_q),
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
