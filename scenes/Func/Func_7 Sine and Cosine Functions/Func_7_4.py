# 7_4: Trigonometric Functions: Scaling

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
class Func_7_4_I_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_7_4.I1.q.answer-options")),
            correctAnswerIndex=1,
            questionText=self.translate("Func_7_4.I1.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-1.5, 1.5, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(1.6*DOWN)
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(-0.5,np.sin(-0.5))
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=False, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        graph_blue = plane.plot(lambda x: np.sin(x), color=BLUE)

        line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
        line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

        functerm = MathTex("f","(x)",  "=", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I1.q.voiceover")
        ) as tracker:
            
            
            self.add(cursor.copy().add_updater(lambda m: m.move_to(graph_blue.get_end()))._start_fading(2))
            self.add_pencil_sound(1.5)
            self.play(Create(graph_blue))
            cursor.blinking=True

            self.wait_until_bookmark("neg_1")
            x,y,_ = line_1.get_start()
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("pos_1")
            cursor.blinking=False
            self.add(cursor.copy().add_updater(lambda m: m.move_to(line_1.get_end()))._start_fading(2))
            self.play(Create(line_1), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("neg_2")
            x,y,_ = line_2.get_start()
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("pos_2")
            cursor.blinking=False
            self.add(cursor.copy().add_updater(lambda m: m.move_to(line_2.get_end()))._start_fading(2))
            self.play(Create(line_2), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            x,y,_ = functerm[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(functerm), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("fx")
            x,y,_ = functerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("sin")
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("x")
            x,y,_ = functerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
            cursor.blinking=True

        self.wait(4)


class Func_7_4_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-1.5, 1.5, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(1.6*DOWN)
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(-0.5,np.sin(-0.5))
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        graph_blue = plane.plot(lambda x: np.sin(x), color=BLUE)

        a = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(x), color=BLUE))

        ones = VGroup(MathTex("1", color=c1t, font_size=fs2), MathTex("-1", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=RIGHT)
        arrows = VGroup(MathTex("\\Rightarrow", color=c1t, font_size=fs2), MathTex("\\Rightarrow", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=LEFT)
        twos = VGroup(MathTex("2", color=c1t, font_size=fs2), MathTex("-2", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=RIGHT)
        ones_to_twos = VGroup(ones, arrows, twos).arrange(RIGHT, buff=0.4).next_to(title, DOWN, buff=0.4)
        row_one = VGroup(ones_to_twos[0][0], ones_to_twos[1][0], ones_to_twos[2][0])
        row_two = VGroup(ones_to_twos[0][1], ones_to_twos[1][1], ones_to_twos[2][1])

        functerm = MathTex("f","(x)",  "=", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        functerm_2 = MathTex("f","(x)",  "=", "2", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)

        self.add(functerm, graph_blue)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("row_1_a")
            cursor.blinking=False
            x,y,_ = row_one[0].get_center()+0.4*DOWN
            self.play(Create(row_one), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("row_1_b")
            x,y,_ = row_one[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("row_2_a")
            cursor.blinking=False
            x,y,_ = row_two[0].get_center()+0.4*DOWN
            self.play(Create(row_two), CursorMoveTo(cursor,x,y), run_time=.5)
            
            self.wait_until_bookmark("row_2_b")
            x,y,_ = row_two[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("transform_term")
            x,y,_ = functerm_2[3].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(TransformMatchingTex(functerm, functerm_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("stretch_func")
            self.remove(graph_blue)
            self.add(graph_blue_updated)
            x,y,_ = plane.c2p(np.pi/2,1)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.add_updater(lambda m: m.move_to(plane.c2p(np.pi/2,a.get_value())))
            self.play(a.animate.set_value(2), run_time=2)
            cursor.blinking=True


        self.wait(4)


class Func_7_4_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-1.5, 1.5, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(1.6*DOWN)
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(-0.5,np.sin(-0.5))
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        graph_blue = plane.plot(lambda x: np.sin(x), color=BLUE)

        a = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(x), color=BLUE))

        ones = VGroup(MathTex("1", color=c1t, font_size=fs2), MathTex("-1", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=RIGHT)
        arrows = VGroup(MathTex("\\Rightarrow", color=c1t, font_size=fs2), MathTex("\\Rightarrow", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=LEFT)
        twos = VGroup(MathTex("2", color=c1t, font_size=fs2), MathTex("-2", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=RIGHT)
        ones_to_twos = VGroup(ones, arrows, twos).arrange(RIGHT, buff=0.4).next_to(title, DOWN, buff=0.4)
        row_one = VGroup(ones_to_twos[0][0], ones_to_twos[1][0], ones_to_twos[2][0])
        row_two = VGroup(ones_to_twos[0][1], ones_to_twos[1][1], ones_to_twos[2][1])

        functerm = MathTex("f","(x)",  "=", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        functerm_2 = MathTex("f","(x)",  "=", "2", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)

        self.add(functerm, graph_blue)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I1.b.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("row_1_a")
            cursor.blinking=False
            x,y,_ = row_one[0].get_center()+0.4*DOWN
            self.play(Create(row_one), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("row_1_b")
            x,y,_ = row_one[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("row_2_a")
            cursor.blinking=False
            x,y,_ = row_two[0].get_center()+0.4*DOWN
            self.play(Create(row_two), CursorMoveTo(cursor,x,y), run_time=.5)
            
            self.wait_until_bookmark("row_2_b")
            x,y,_ = row_two[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("transform_term")
            x,y,_ = functerm_2[3].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(TransformMatchingTex(functerm, functerm_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("stretch_func")
            self.remove(graph_blue)
            self.add(graph_blue_updated)
            x,y,_ = plane.c2p(np.pi/2,1)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.add_updater(lambda m: m.move_to(plane.c2p(np.pi/2,a.get_value())))
            self.play(a.animate.set_value(2), run_time=2)
            cursor.blinking=True


        self.wait(4)


class Func_7_4_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-1.5, 1.5, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(1.6*DOWN)
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(-0.5,np.sin(-0.5))
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        graph_blue = plane.plot(lambda x: np.sin(x), color=BLUE)

        a = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(x), color=BLUE))

        ones = VGroup(MathTex("1", color=c1t, font_size=fs2), MathTex("-1", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=RIGHT)
        arrows = VGroup(MathTex("\\Rightarrow", color=c1t, font_size=fs2), MathTex("\\Rightarrow", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=LEFT)
        twos = VGroup(MathTex("2", color=c1t, font_size=fs2), MathTex("-2", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=RIGHT)
        ones_to_twos = VGroup(ones, arrows, twos).arrange(RIGHT, buff=0.4).next_to(title, DOWN, buff=0.4)
        row_one = VGroup(ones_to_twos[0][0], ones_to_twos[1][0], ones_to_twos[2][0])
        row_two = VGroup(ones_to_twos[0][1], ones_to_twos[1][1], ones_to_twos[2][1])

        functerm = MathTex("f","(x)",  "=", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        functerm_2 = MathTex("f","(x)",  "=", "2", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)

        self.add(functerm, graph_blue)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("row_1_a")
            cursor.blinking=False
            x,y,_ = row_one[0].get_center()+0.4*DOWN
            self.play(Create(row_one), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("row_1_b")
            x,y,_ = row_one[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("row_2_a")
            cursor.blinking=False
            x,y,_ = row_two[0].get_center()+0.4*DOWN
            self.play(Create(row_two), CursorMoveTo(cursor,x,y), run_time=.5)
            
            self.wait_until_bookmark("row_2_b")
            x,y,_ = row_two[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("transform_term")
            x,y,_ = functerm_2[3].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(TransformMatchingTex(functerm, functerm_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("stretch_func")
            self.remove(graph_blue)
            self.add(graph_blue_updated)
            x,y,_ = plane.c2p(np.pi/2,1)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.add_updater(lambda m: m.move_to(plane.c2p(np.pi/2,a.get_value())))
            self.play(a.animate.set_value(2), run_time=2)
            cursor.blinking=True


        self.wait(4)


class Func_7_4_I_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-1.5, 1.5, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(1.6*DOWN)
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(-0.5,np.sin(-0.5))
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        graph_blue = plane.plot(lambda x: np.sin(x), color=BLUE)

        a = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(x), color=BLUE))

        ones = VGroup(MathTex("1", color=c1t, font_size=fs2), MathTex("-1", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=RIGHT)
        arrows = VGroup(MathTex("\\Rightarrow", color=c1t, font_size=fs2), MathTex("\\Rightarrow", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=LEFT)
        twos = VGroup(MathTex("2", color=c1t, font_size=fs2), MathTex("-2", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=RIGHT)
        ones_to_twos = VGroup(ones, arrows, twos).arrange(RIGHT, buff=0.4).next_to(title, DOWN, buff=0.4)
        row_one = VGroup(ones_to_twos[0][0], ones_to_twos[1][0], ones_to_twos[2][0])
        row_two = VGroup(ones_to_twos[0][1], ones_to_twos[1][1], ones_to_twos[2][1])

        functerm = MathTex("f","(x)",  "=", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        functerm_2 = MathTex("f","(x)",  "=", "2", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)

        self.add(functerm, graph_blue)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("row_1_a")
            cursor.blinking=False
            x,y,_ = row_one[0].get_center()+0.4*DOWN
            self.play(Create(row_one), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("row_1_b")
            x,y,_ = row_one[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("row_2_a")
            cursor.blinking=False
            x,y,_ = row_two[0].get_center()+0.4*DOWN
            self.play(Create(row_two), CursorMoveTo(cursor,x,y), run_time=.5)
            
            self.wait_until_bookmark("row_2_b")
            x,y,_ = row_two[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("transform_term")
            x,y,_ = functerm_2[3].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(TransformMatchingTex(functerm, functerm_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("stretch_func")
            self.remove(graph_blue)
            self.add(graph_blue_updated)
            x,y,_ = plane.c2p(np.pi/2,1)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.add_updater(lambda m: m.move_to(plane.c2p(np.pi/2,a.get_value())))
            self.play(a.animate.set_value(2), run_time=2)
            cursor.blinking=True


        self.wait(4)



#####################################
#####################################
class Func_7_4_I_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

        a = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(x), color=BLUE))

        line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
        line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

        functerm = MathTex("f","(x)",  "=", "a", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        a_val = VGroup(MathTex("a=", color=c1t, font_size=fs1), DecimalNumber(1).scale(.9).set_color(c1t).add_updater(lambda m: m.set_value(a.get_value()))).arrange(RIGHT, buff=0.2).next_to(functerm, DOWN, buff=0.4)
        a_val[1].shift((a_val[0].get_bottom()-a_val[1].get_bottom())[1]*UP)
        self.add(graph_blue_updated, functerm, a_val)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I2.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("y_axis")
            cursor.blinking = False
            self.play(CursorMarkAxis(cursor, plane, "y"), run_time=.5)

            self.wait_until_bookmark("scale_a")
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y, 0.2, 0.2), run_time=.5)
            cursor.blinking = True

            self.wait_until_bookmark("move_cursor")
            x,y,_ = plane.c2p(np.pi/2,1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.add_updater(lambda m: m.move_to(plane.c2p(np.pi/2,a.get_value())))

            self.wait_until_bookmark("a_1")
            self.play(a.animate.set_value(2.5), run_time=2.5)
            cursor.blinking=True

            self.wait_until_bookmark("a_2")
            cursor.blinking=False
            self.play(a.animate.set_value(0.3), run_time=4)
            cursor.blinking=True

            self.wait_until_bookmark("a_3")
            cursor.blinking=False
            self.play(a.animate.set_value(-1), run_time=1)
            cursor.blinking=True


        self.wait(4)


#####################################
#####################################
class Func_7_4_P_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a=2$", "$a=\\tfrac{1}{2}$", "$a=-2$", "$a=-\\tfrac{1}{2}$"],
            correctAnswerIndex = 2,
            questionText=self.translate("Func_7_4.P1.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

        a = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(x), color=BLUE))

        line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
        line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

        functerm = MathTex("f","(x)",  "=", "a", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        self.add(graph_blue_updated, functerm)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.P1.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking = False
            x,y,_ = functerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("fx")
            x,y,_ = functerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("a")
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("sin")
            x,y,_ = functerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

            self.wait_until_bookmark("x")
            x,y,_ = functerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)
            cursor.blinking=True

            self.wait_until_bookmark("move_cursor")
            x,y,_ = plane.c2p(np.pi/2,1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/2,a.get_value()))
            cursor.add_updater(cursor_updater)

            self.wait_until_bookmark("a_1")
            self.play(a.animate.set_value(2))

            self.wait_until_bookmark("a_2")
            self.play(a.animate.set_value(-2), run_time=.3)
            cursor.blinking=True

            self.wait_until_bookmark("a_mark")
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            cursor.blinking=False
            cursor.remove_updater(cursor_updater)
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)
            cursor.blinking=True

        self.wait(4)



class Func_7_4_P_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

        a = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(x), color=BLUE))

        line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
        line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

        functerm = MathTex("f","(x)",  "=", "a", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        self.add(graph_blue_updated, functerm)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.P1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking = False
            x,y,_ = functerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("fx")
            x,y,_ = functerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("a")
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("sin")
            x,y,_ = functerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

            self.wait_until_bookmark("x")
            x,y,_ = functerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)
            cursor.blinking=True

            self.wait_until_bookmark("move_cursor_1")
            x,y,_ = plane.c2p(np.pi/2,1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/2,a.get_value()))
            cursor.add_updater(cursor_updater)

            self.wait_until_bookmark("a_1")
            self.play(a.animate.set_value(2))

            self.wait_until_bookmark("a_term_1")
            cursor.remove_updater(cursor_updater)
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)
            cursor.blinking=True
            self.play(ReplacementTransform(functerm[3], MathTex("2", color=c1t, font_size=fs1).move_to(functerm[3])))

            self.wait_until_bookmark("move_cursor_2")
            x,y,_ = plane.c2p(np.pi/2,2)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.add_updater(cursor_updater)

            self.wait_until_bookmark("a_2")
            self.play(a.animate.set_value(-2), run_time=.3)
            cursor.blinking=True

            self.wait_until_bookmark("a_term_2")
            cursor.remove_updater(cursor_updater)
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)
            cursor.blinking=True
            self.play(functerm[-2].animate.shift(0.3*RIGHT), functerm[-1].animate.shift(0.3*RIGHT), ReplacementTransform(functerm[3], MathTex("-2", color=c1t, font_size=fs1).move_to(functerm[3]).shift(0.1*RIGHT)))

        self.wait(4)


class Func_7_4_P_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

        a = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(x), color=BLUE))

        line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
        line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

        functerm = MathTex("f","(x)",  "=", "a", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        self.add(graph_blue_updated, functerm)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.P1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking = False
            x,y,_ = functerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("fx")
            x,y,_ = functerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("a")
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("sin")
            x,y,_ = functerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

            self.wait_until_bookmark("x")
            x,y,_ = functerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)
            cursor.blinking=True

            self.wait_until_bookmark("move_cursor_1")
            x,y,_ = plane.c2p(np.pi/2,1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/2,a.get_value()))
            cursor.add_updater(cursor_updater)

            self.wait_until_bookmark("a_1")
            self.play(a.animate.set_value(2))

            self.wait_until_bookmark("a_term_1")
            cursor.remove_updater(cursor_updater)
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)
            cursor.blinking=True
            self.play(ReplacementTransform(functerm[3], MathTex("2", color=c1t, font_size=fs1).move_to(functerm[3])))

            self.wait_until_bookmark("move_cursor_2")
            x,y,_ = plane.c2p(np.pi/2,2)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.add_updater(cursor_updater)

            self.wait_until_bookmark("a_2")
            self.play(a.animate.set_value(-2), run_time=.3)
            cursor.blinking=True

            self.wait_until_bookmark("a_term_2")
            cursor.remove_updater(cursor_updater)
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)
            cursor.blinking=True
            self.play(functerm[-2].animate.shift(0.3*RIGHT), functerm[-1].animate.shift(0.3*RIGHT), ReplacementTransform(functerm[3], MathTex("-2", color=c1t, font_size=fs1).move_to(functerm[3]).shift(0.1*RIGHT)))

        self.wait(4)


class Func_7_4_P_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

        a = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(x), color=BLUE))

        line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
        line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

        functerm = MathTex("f","(x)",  "=", "a", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        self.add(graph_blue_updated, functerm)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.P1.c.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking = False
            x,y,_ = functerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("fx")
            x,y,_ = functerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("a")
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("sin")
            x,y,_ = functerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

            self.wait_until_bookmark("x")
            x,y,_ = functerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)
            cursor.blinking=True

            self.wait_until_bookmark("move_cursor_1")
            x,y,_ = plane.c2p(np.pi/2,1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/2,a.get_value()))
            cursor.add_updater(cursor_updater)

            self.wait_until_bookmark("a_1")
            self.play(a.animate.set_value(2))

            self.wait_until_bookmark("a_term_1")
            cursor.remove_updater(cursor_updater)
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)
            cursor.blinking=True
            self.play(ReplacementTransform(functerm[3], MathTex("2", color=c1t, font_size=fs1).move_to(functerm[3])))

            self.wait_until_bookmark("move_cursor_2")
            x,y,_ = plane.c2p(np.pi/2,2)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.add_updater(cursor_updater)

            self.wait_until_bookmark("a_2")
            self.play(a.animate.set_value(-2), run_time=.3)
            cursor.blinking=True

            self.wait_until_bookmark("a_term_2")
            cursor.remove_updater(cursor_updater)
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)
            cursor.blinking=True
            self.play(functerm[-2].animate.shift(0.3*RIGHT), functerm[-1].animate.shift(0.3*RIGHT), ReplacementTransform(functerm[3], MathTex("-2", color=c1t, font_size=fs1).move_to(functerm[3]).shift(0.1*RIGHT)))

        self.wait(4)


class Func_7_4_P_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

        a = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(x), color=BLUE))

        line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
        line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

        functerm = MathTex("f","(x)",  "=", "a", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        self.add(graph_blue_updated, functerm)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.P1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking = False
            x,y,_ = functerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("fx")
            x,y,_ = functerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("a")
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("sin")
            x,y,_ = functerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

            self.wait_until_bookmark("x")
            x,y,_ = functerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)
            cursor.blinking=True

            self.wait_until_bookmark("move_cursor_1")
            x,y,_ = plane.c2p(np.pi/2,1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/2,a.get_value()))
            cursor.add_updater(cursor_updater)

            self.wait_until_bookmark("a_1")
            self.play(a.animate.set_value(2))

            self.wait_until_bookmark("a_term_1")
            cursor.remove_updater(cursor_updater)
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)
            cursor.blinking=True
            self.play(ReplacementTransform(functerm[3], MathTex("2", color=c1t, font_size=fs1).move_to(functerm[3])))

            self.wait_until_bookmark("move_cursor_2")
            x,y,_ = plane.c2p(np.pi/2,2)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.add_updater(cursor_updater)

            self.wait_until_bookmark("a_2")
            self.play(a.animate.set_value(-2), run_time=.3)
            cursor.blinking=True

            self.wait_until_bookmark("a_term_2")
            cursor.remove_updater(cursor_updater)
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)
            cursor.blinking=True
            self.play(functerm[-2].animate.shift(0.3*RIGHT), functerm[-1].animate.shift(0.3*RIGHT), ReplacementTransform(functerm[3], MathTex("-2", color=c1t, font_size=fs1).move_to(functerm[3]).shift(0.1*RIGHT)))

        self.wait(4)


#####################################
#####################################
class Func_7_4_I_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_7_4.I3.q.answer-options")),
            correctAnswerIndex=3,
            questionText=self.translate("Func_7_4.I3.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

        a = ValueTracker(1)
        b = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(b.get_value()*x), color=BLUE))

        line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
        line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

        functerm = MathTex("f","(x)",  "=", "a", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        functerm_2 = MathTex("f","(x)",  "=", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        self.add(graph_blue_updated, functerm)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I3.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("start")
            x,y,_ = plane.c2p(np.pi/2,1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/2,a.get_value()))
            cursor.add_updater(cursor_updater)
            self.play(a.animate.set_value(2.5), run_time=.8)
            cursor.remove_updater(cursor_updater)
            cursor.blinking=True
            
            self.wait_until_bookmark("y_axis")
            cursor.blinking = False
            self.play(CursorMarkAxis(cursor, plane, "y"), run_time=.5)
            self.wait(1)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveResize(cursor,x,y,0.2,0.2), run_time=.3)
            cursor.blinking=True

            self.wait_until_bookmark("scale_a")
            cursor.blinking = False
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y, 0.2, 0.2), run_time=.5)
            cursor.blinking = True


            self.wait_until_bookmark("x_axis")
            cursor.blinking = False
            self.play(a.animate(run_time=.4).set_value(1), CursorMarkAxis(cursor, plane, "x"), run_time=1)

            self.wait_until_bookmark("f")
            cursor.blinking = False
            x,y,_ = functerm[0].get_center()+0.4*DOWN
            self.play(TransformMatchingTex(functerm, functerm_2), CursorMoveResize(cursor, x, y, 0.2, 0.2), run_time=.5)

            self.wait_until_bookmark("fx")
            x,y,_ = functerm_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("sin")
            x,y,_ = functerm_2[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

            self.wait_until_bookmark("x")
            x,y,_ = functerm_2[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)
            cursor.blinking=True

            self.wait_until_bookmark("scale_b")
            x,y,_ = plane.c2p(np.pi/2,1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/(2*b.get_value()),1))
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(2.5), run_time=2.5)
            cursor.remove_updater(cursor_updater)
            cursor.blinking=True

        self.wait(4)


class Func_7_4_I_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

        a = ValueTracker(1)
        b = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(b.get_value()*x), color=BLUE))

        line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
        line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

        functerm_1 = MathTex("f","(x)",  "=",  "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        functerm_2 = MathTex("f","(x)",  "=", "\\sin", "(", "b", "\\cdot x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        self.add(graph_blue_updated, functerm_1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I3.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("scale_b")
            x,y,_ = plane.c2p(np.pi/2,1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/(2*b.get_value()),1))
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(2.5), run_time=1)
            self.play(b.animate.set_value(0.4), run_time=2)
            self.play(b.animate.set_value(1), run_time=1)
            cursor.remove_updater(cursor_updater)
            cursor.blinking=True

            self.wait_until_bookmark("term_1")
            cursor.blinking = False
            x,y,_ = functerm_2[5].get_center()+0.4*DOWN
            self.play(TransformMatchingTex(functerm_1, functerm_2), CursorMoveTo(cursor, x, y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("x_axis")
            cursor.blinking = False
            self.play(CursorMarkAxis(cursor, plane, "x"), run_time=.5)
            x,y,_ = plane.c2p(0,0)
            self.wait(2)
            self.play(CursorMoveResize(cursor,x,y,0.2,0.2), run_time=.3)
            cursor.blinking=True

        self.wait(4)



class Func_7_4_I_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

        a = ValueTracker(1)
        b = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(b.get_value()*x), color=BLUE))

        line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
        line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

        functerm_1 = MathTex("f","(x)",  "=",  "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        functerm_2 = MathTex("f","(x)",  "=", "\\sin", "(", "b", "\\cdot x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        self.add(graph_blue_updated, functerm_1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I3.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("scale_b")
            x,y,_ = plane.c2p(np.pi/2,1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/(2*b.get_value()),1))
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(2.5), run_time=1)
            self.play(b.animate.set_value(0.4), run_time=2)
            self.play(b.animate.set_value(1), run_time=1)
            cursor.remove_updater(cursor_updater)
            cursor.blinking=True

            self.wait_until_bookmark("term_1")
            cursor.blinking = False
            x,y,_ = functerm_2[5].get_center()+0.4*DOWN
            self.play(TransformMatchingTex(functerm_1, functerm_2), CursorMoveTo(cursor, x, y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("x_axis")
            cursor.blinking = False
            self.play(CursorMarkAxis(cursor, plane, "x"), run_time=.5)
            x,y,_ = plane.c2p(0,0)
            self.wait(2)
            self.play(CursorMoveResize(cursor,x,y,0.2,0.2), run_time=.3)
            cursor.blinking=True

        self.wait(4)



class Func_7_4_I_3_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

        a = ValueTracker(1)
        b = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(b.get_value()*x), color=BLUE))

        line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
        line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

        functerm_1 = MathTex("f","(x)",  "=",  "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        functerm_2 = MathTex("f","(x)",  "=", "\\sin", "(", "b", "\\cdot x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        self.add(graph_blue_updated, functerm_1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I3.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("scale_b")
            x,y,_ = plane.c2p(np.pi/2,1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/(2*b.get_value()),1))
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(2.5), run_time=1)
            self.play(b.animate.set_value(0.4), run_time=2)
            self.play(b.animate.set_value(1), run_time=1)
            cursor.remove_updater(cursor_updater)
            cursor.blinking=True

            self.wait_until_bookmark("term_1")
            cursor.blinking = False
            x,y,_ = functerm_2[5].get_center()+0.4*DOWN
            self.play(TransformMatchingTex(functerm_1, functerm_2), CursorMoveTo(cursor, x, y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("x_axis")
            cursor.blinking = False
            self.play(CursorMarkAxis(cursor, plane, "x"), run_time=.5)
            x,y,_ = plane.c2p(0,0)
            self.wait(2)
            self.play(CursorMoveResize(cursor,x,y,0.2,0.2), run_time=.3)
            cursor.blinking=True

        self.wait(4)



class Func_7_4_I_3_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

        a = ValueTracker(1)
        b = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(b.get_value()*x), color=BLUE))

        line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
        line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

        functerm_1 = MathTex("f","(x)",  "=",  "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        functerm_2 = MathTex("f","(x)",  "=", "\\sin", "(", "b", "\\cdot x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        self.add(graph_blue_updated, functerm_1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I3.d.voiceover")

        ) as tracker:

            self.wait_until_bookmark("scale_b")
            x,y,_ = plane.c2p(np.pi/2,1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/(2*b.get_value()),1))
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(2.5), run_time=1)
            self.play(b.animate.set_value(0.4), run_time=2)
            self.play(b.animate.set_value(1), run_time=1)
            cursor.remove_updater(cursor_updater)
            cursor.blinking=True

            self.wait_until_bookmark("term_1")
            cursor.blinking = False
            x,y,_ = functerm_2[5].get_center()+0.4*DOWN
            self.play(TransformMatchingTex(functerm_1, functerm_2), CursorMoveTo(cursor, x, y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("x_axis")
            cursor.blinking = False
            self.play(CursorMarkAxis(cursor, plane, "x"), run_time=.5)
            x,y,_ = plane.c2p(0,0)
            self.wait(2)
            self.play(CursorMoveResize(cursor,x,y,0.2,0.2), run_time=.3)
            cursor.blinking=True

        self.wait(4)





#####################################
#####################################
class Func_7_4_I_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_7_4.I4.q.answer-options")),
            correctAnswerIndex=1,
            questionText=self.translate("Func_7_4.I4.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

        a = ValueTracker(1)
        b = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(b.get_value()*x), color=BLUE))

        line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
        line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

        functerm_1 = MathTex("f","(x)",  "=", "\\sin", "(", "b", "\\cdot x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        self.add(graph_blue_updated, functerm_1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I4.q.voiceover")
        ) as tracker:

            self.wait_until_bookmark("f")
            cursor.blinking = False
            x,y,_ = functerm_1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("fx")
            x,y,_ = functerm_1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("sin")
            x,y,_ = functerm_1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

            self.wait_until_bookmark("b_1")
            x,y,_ = functerm_1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

            self.wait_until_bookmark("x")
            x,y,_ = functerm_1[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)
            cursor.blinking=True

            self.wait_until_bookmark("stretch")
            cursor.blinking = False
            x,y,_ = plane.c2p(np.pi/2,1)
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/(2*b.get_value()),1))
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(0.4), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("compress")
            cursor.blinking = False
            self.play(b.animate.set_value(2.5), run_time=1)
            cursor.blinking=True

        cursor.remove_updater(cursor_updater)
        x,y,_ = plane.c2p(0,0)
        self.play(CursorMoveResize(cursor,x,y,0.2,0.2), b.animate.set_value(1), run_time=1)            

        self.wait(4)


class Func_7_4_I_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

        a = ValueTracker(1)
        b = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(b.get_value()*x), color=BLUE))

        line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
        line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

        functerm_1 = MathTex("f","(x)",  "=", "\\sin", "(", "b", "\\cdot x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        self.add(graph_blue_updated, functerm_1)

        line_1 = Line(plane.c2p(0,-1), plane.c2p(1.5*np.pi,-1), color=PURPLE)
        text_1 = MathTex("1.5\\Pi", color=PURPLE, font_size=fs3).next_to(line_1, DOWN, buff=0.1)
        line_2 = Line(plane.c2p(0,-1), plane.c2p(.5*np.pi,-1), color=GREEN)
        text_2 = MathTex("0.5\\Pi", color=GREEN, font_size=fs3).next_to(line_2, DOWN, buff=0.1)
        line_3 = Line(plane.c2p(0,1), plane.c2p(.5*np.pi,1), color=PURPLE)
        text_3 = MathTex("0.5\\Pi", color=PURPLE, font_size=fs3).next_to(line_3, UP, buff=0.1)
        line_4 = Line(plane.c2p(0,1), plane.c2p(np.pi,1), color=GREEN)
        text_4 = MathTex("\\Pi", color=GREEN, font_size=fs3).next_to(line_4, UP, buff=.1).shift(RIGHT*0.4)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I4.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("point")
            x,y,_ = plane.c2p(1.5*np.pi,-1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("line_1")
            self.play(Create(line_1), Write(text_1), run_time=1)

            self.wait_until_bookmark("squash")
            cursor.blinking = False
            cursor_updater = lambda m: m.move_to(plane.c2p(3*np.pi/(2*b.get_value()),-1))
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(3), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("line_2")
            self.play(Create(line_2), Write(text_2), run_time=1)

            self.wait_until_bookmark("clean")
            cursor.blinking=False
            self.play(FadeOut(line_1), FadeOut(line_2), FadeOut(text_1), FadeOut(text_2), b.animate.set_value(1), run_time=1)
            cursor.remove_updater(cursor_updater)
            cursor.blinking=True

            self.wait_until_bookmark("point_2")
            x,y,_ = plane.c2p(.5*np.pi,1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("line_3")
            self.play(Create(line_3), Write(text_3), run_time=1)

            self.wait_until_bookmark("stretch")
            cursor.blinking = False
            cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/(2*b.get_value()),1))
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(0.5), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("line_4")
            self.play(Create(line_4), Write(text_4), run_time=1)
            self.bring_to_front(line_3)

            self.wait_until_bookmark("clean_final")
            cursor.blinking=False
            self.play(FadeOut(line_3), FadeOut(line_4), FadeOut(text_3), FadeOut(text_4), b.animate.set_value(1), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("squash_final")
            cursor.blinking = False
            self.play(b.animate.set_value(3), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("stretch_final")
            cursor.blinking = False
            self.play(b.animate.set_value(0.5), run_time=1)
            cursor.blinking=True

        cursor.remove_updater(cursor_updater)
        x,y,_ = plane.c2p(0,0)
        cursor.blinking=False
        self.play(CursorMoveResize(cursor,x,y,0.2,0.2), b.animate.set_value(1), run_time=1)         
        cursor.blinking=True   

        self.wait(4)



class Func_7_4_I_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

        a = ValueTracker(1)
        b = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(b.get_value()*x), color=BLUE))

        line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
        line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

        functerm_1 = MathTex("f","(x)",  "=", "\\sin", "(", "b", "\\cdot x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        self.add(graph_blue_updated, functerm_1)

        line_1 = Line(plane.c2p(0,-1), plane.c2p(1.5*np.pi,-1), color=PURPLE)
        text_1 = MathTex("1.5\\Pi", color=PURPLE, font_size=fs3).next_to(line_1, DOWN, buff=0.1)
        line_2 = Line(plane.c2p(0,-1), plane.c2p(.5*np.pi,-1), color=GREEN)
        text_2 = MathTex("0.5\\Pi", color=GREEN, font_size=fs3).next_to(line_2, DOWN, buff=0.1)
        line_3 = Line(plane.c2p(0,1), plane.c2p(.5*np.pi,1), color=PURPLE)
        text_3 = MathTex("0.5\\Pi", color=PURPLE, font_size=fs3).next_to(line_3, UP, buff=0.1)
        line_4 = Line(plane.c2p(0,1), plane.c2p(np.pi,1), color=GREEN)
        text_4 = MathTex("\\Pi", color=GREEN, font_size=fs3).next_to(line_4, UP, buff=.1).shift(RIGHT*0.4)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I4.b.voiceover")
        ) as tracker:

            self.wait_until_bookmark("point")
            x,y,_ = plane.c2p(1.5*np.pi,-1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("line_1")
            self.play(Create(line_1), Write(text_1), run_time=1)

            self.wait_until_bookmark("squash")
            cursor.blinking = False
            cursor_updater = lambda m: m.move_to(plane.c2p(3*np.pi/(2*b.get_value()),-1))
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(3), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("line_2")
            self.play(Create(line_2), Write(text_2), run_time=1)

            self.wait_until_bookmark("clean")
            cursor.blinking=False
            self.play(FadeOut(line_1), FadeOut(line_2), FadeOut(text_1), FadeOut(text_2), b.animate.set_value(1), run_time=1)
            cursor.remove_updater(cursor_updater)
            cursor.blinking=True

            self.wait_until_bookmark("point_2")
            x,y,_ = plane.c2p(.5*np.pi,1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("line_3")
            self.play(Create(line_3), Write(text_3), run_time=1)

            self.wait_until_bookmark("stretch")
            cursor.blinking = False
            cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/(2*b.get_value()),1))
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(0.5), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("line_4")
            self.play(Create(line_4), Write(text_4), run_time=1)
            self.bring_to_front(line_3)

            self.wait_until_bookmark("clean_final")
            cursor.blinking=False
            self.play(FadeOut(line_3), FadeOut(line_4), FadeOut(text_3), FadeOut(text_4), b.animate.set_value(1), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("squash_final")
            cursor.blinking = False
            self.play(b.animate.set_value(3), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("stretch_final")
            cursor.blinking = False
            self.play(b.animate.set_value(0.5), run_time=1)
            cursor.blinking=True

        cursor.remove_updater(cursor_updater)
        x,y,_ = plane.c2p(0,0)
        cursor.blinking=False
        self.play(CursorMoveResize(cursor,x,y,0.2,0.2), b.animate.set_value(1), run_time=1)         
        cursor.blinking=True   

        self.wait(4)


class Func_7_4_I_4_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

        a = ValueTracker(1)
        b = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(b.get_value()*x), color=BLUE))

        line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
        line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

        functerm_1 = MathTex("f","(x)",  "=", "\\sin", "(", "b", "\\cdot x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        self.add(graph_blue_updated, functerm_1)

        line_1 = Line(plane.c2p(0,-1), plane.c2p(1.5*np.pi,-1), color=PURPLE)
        text_1 = MathTex("1.5\\Pi", color=PURPLE, font_size=fs3).next_to(line_1, DOWN, buff=0.1)
        line_2 = Line(plane.c2p(0,-1), plane.c2p(.5*np.pi,-1), color=GREEN)
        text_2 = MathTex("0.5\\Pi", color=GREEN, font_size=fs3).next_to(line_2, DOWN, buff=0.1)
        line_3 = Line(plane.c2p(0,1), plane.c2p(.5*np.pi,1), color=PURPLE)
        text_3 = MathTex("0.5\\Pi", color=PURPLE, font_size=fs3).next_to(line_3, UP, buff=0.1)
        line_4 = Line(plane.c2p(0,1), plane.c2p(np.pi,1), color=GREEN)
        text_4 = MathTex("\\Pi", color=GREEN, font_size=fs3).next_to(line_4, UP, buff=.1).shift(RIGHT*0.4)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I4.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("point")
            x,y,_ = plane.c2p(1.5*np.pi,-1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("line_1")
            self.play(Create(line_1), Write(text_1), run_time=1)

            self.wait_until_bookmark("squash")
            cursor.blinking = False
            cursor_updater = lambda m: m.move_to(plane.c2p(3*np.pi/(2*b.get_value()),-1))
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(3), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("line_2")
            self.play(Create(line_2), Write(text_2), run_time=1)

            self.wait_until_bookmark("clean")
            cursor.blinking=False
            self.play(FadeOut(line_1), FadeOut(line_2), FadeOut(text_1), FadeOut(text_2), b.animate.set_value(1), run_time=1)
            cursor.remove_updater(cursor_updater)
            cursor.blinking=True

            self.wait_until_bookmark("point_2")
            x,y,_ = plane.c2p(.5*np.pi,1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("line_3")
            self.play(Create(line_3), Write(text_3), run_time=1)

            self.wait_until_bookmark("stretch")
            cursor.blinking = False
            cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/(2*b.get_value()),1))
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(0.5), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("line_4")
            self.play(Create(line_4), Write(text_4), run_time=1)
            self.bring_to_front(line_3)

            self.wait_until_bookmark("clean_final")
            cursor.blinking=False
            self.play(FadeOut(line_3), FadeOut(line_4), FadeOut(text_3), FadeOut(text_4), b.animate.set_value(1), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("squash_final")
            cursor.blinking = False
            self.play(b.animate.set_value(3), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("stretch_final")
            cursor.blinking = False
            self.play(b.animate.set_value(0.5), run_time=1)
            cursor.blinking=True

        cursor.remove_updater(cursor_updater)
        x,y,_ = plane.c2p(0,0)
        cursor.blinking=False
        self.play(CursorMoveResize(cursor,x,y,0.2,0.2), b.animate.set_value(1), run_time=1)         
        cursor.blinking=True   

        self.wait(4)


class Func_7_4_I_4_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

        a = ValueTracker(1)
        b = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(b.get_value()*x), color=BLUE))

        line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
        line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

        functerm_1 = MathTex("f","(x)",  "=", "\\sin", "(", "b", "\\cdot x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        self.add(graph_blue_updated, functerm_1)

        line_1 = Line(plane.c2p(0,-1), plane.c2p(1.5*np.pi,-1), color=PURPLE)
        text_1 = MathTex("1.5\\Pi", color=PURPLE, font_size=fs3).next_to(line_1, DOWN, buff=0.1)
        line_2 = Line(plane.c2p(0,-1), plane.c2p(.5*np.pi,-1), color=GREEN)
        text_2 = MathTex("0.5\\Pi", color=GREEN, font_size=fs3).next_to(line_2, DOWN, buff=0.1)
        line_3 = Line(plane.c2p(0,1), plane.c2p(.5*np.pi,1), color=PURPLE)
        text_3 = MathTex("0.5\\Pi", color=PURPLE, font_size=fs3).next_to(line_3, UP, buff=0.1)
        line_4 = Line(plane.c2p(0,1), plane.c2p(np.pi,1), color=GREEN)
        text_4 = MathTex("\\Pi", color=GREEN, font_size=fs3).next_to(line_4, UP, buff=.1).shift(RIGHT*0.4)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I4.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("point")
            x,y,_ = plane.c2p(1.5*np.pi,-1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("line_1")
            self.play(Create(line_1), Write(text_1), run_time=1)

            self.wait_until_bookmark("squash")
            cursor.blinking = False
            cursor_updater = lambda m: m.move_to(plane.c2p(3*np.pi/(2*b.get_value()),-1))
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(3), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("line_2")
            self.play(Create(line_2), Write(text_2), run_time=1)

            self.wait_until_bookmark("clean")
            cursor.blinking=False
            self.play(FadeOut(line_1), FadeOut(line_2), FadeOut(text_1), FadeOut(text_2), b.animate.set_value(1), run_time=1)
            cursor.remove_updater(cursor_updater)
            cursor.blinking=True

            self.wait_until_bookmark("point_2")
            x,y,_ = plane.c2p(.5*np.pi,1)
            cursor.blinking = False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("line_3")
            self.play(Create(line_3), Write(text_3), run_time=1)

            self.wait_until_bookmark("stretch")
            cursor.blinking = False
            cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/(2*b.get_value()),1))
            cursor.add_updater(cursor_updater)
            self.play(b.animate.set_value(0.5), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("line_4")
            self.play(Create(line_4), Write(text_4), run_time=1)
            self.bring_to_front(line_3)

            self.wait_until_bookmark("clean_final")
            cursor.blinking=False
            self.play(FadeOut(line_3), FadeOut(line_4), FadeOut(text_3), FadeOut(text_4), b.animate.set_value(1), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("squash_final")
            cursor.blinking = False
            self.play(b.animate.set_value(3), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("stretch_final")
            cursor.blinking = False
            self.play(b.animate.set_value(0.5), run_time=1)
            cursor.blinking=True

        cursor.remove_updater(cursor_updater)
        x,y,_ = plane.c2p(0,0)
        cursor.blinking=False
        self.play(CursorMoveResize(cursor,x,y,0.2,0.2), b.animate.set_value(1), run_time=1)         
        cursor.blinking=True   

        self.wait(4)


#####################################
#####################################
class Func_7_4_I_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_7_4.I5.q.answer-options")),
            correctAnswerIndex=3,
            questionText=self.translate("Func_7_4.I5.q.question-text")
        )
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

        a = ValueTracker(1)
        b = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(b.get_value()*x), color=BLUE))

        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(3.2/qmark.get_width()).move_to([-5, 1, 0])

        functerm_1 = MathTex("f","(x)",  "=", "\\sin", "(", "b", "\\cdot x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        beq = MathTex("b", "=", "-1", color=c1t, font_size=fs1).next_to(functerm_1, DOWN, buff=0.5)
        self.add(graph_blue_updated, functerm_1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I5.q.voiceover")
        ) as tracker:

            self.wait_until_bookmark("qmark")
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)
            self.wait(1)
            self.play(qmark.animate.shift(5*RIGHT))

            self.wait_until_bookmark("b")
            cursor.blinking=False
            x,y,_ = beq[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(beq), run_time=.5)

            self.wait_until_bookmark("neg_one")
            x,y,_ = beq[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
            cursor.blinking=True
            
        self.wait(4)


class Func_7_4_I_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-2*np.pi, 2*np.pi, np.pi], [-1.2, 1.2, 1], x_ticks=[-2*np.pi, -np.pi, 0, np.pi, 2*np.pi], x_labels=["-2\\Pi", "-\\Pi", "0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(DOWN)
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

        a = ValueTracker(1)
        b = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(b.get_value()*x), color=BLUE))
        
        functerm_1 = MathTex("f","(x)",  "=", "\\sin", "(", "b", "\\cdot x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        beq = MathTex("b", "=", "-1", color=c1t, font_size=fs1).next_to(functerm_1, DOWN, buff=0.5)
        self.add(graph_blue_updated, functerm_1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I5.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("b")
            cursor.blinking=False
            x,y,_ = beq[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(beq), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("neg_one")
            cursor.blinking = False
            x,y,_ = beq[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("reflect")
            cursor.blinking = False
            self.play(CursorMarkAxis(cursor, plane, axis="y"), run_time=.3)
            self.play(b.animate.set_value(-1), run_time=1)
            self.wait(0.2)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveResize(cursor,x,y,0.2,0.2), run_time=0.4)
            cursor.blinking=True
            
        self.wait(4)


class Func_7_4_I_5_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-2*np.pi, 2*np.pi, np.pi], [-1.2, 1.2, 1], x_ticks=[-2*np.pi, -np.pi, 0, np.pi, 2*np.pi], x_labels=["-2\\Pi", "-\\Pi", "0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(DOWN)
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

        a = ValueTracker(1)
        b = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(b.get_value()*x), color=BLUE))
        
        functerm_1 = MathTex("f","(x)",  "=", "\\sin", "(", "b", "\\cdot x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        beq = MathTex("b", "=", "-1", color=c1t, font_size=fs1).next_to(functerm_1, DOWN, buff=0.5)
        self.add(graph_blue_updated, functerm_1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I5.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("b")
            cursor.blinking=False
            x,y,_ = beq[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(beq), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("neg_one")
            cursor.blinking = False
            x,y,_ = beq[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("reflect")
            cursor.blinking = False
            self.play(CursorMarkAxis(cursor, plane, axis="y"), run_time=.3)
            self.play(b.animate.set_value(-1), run_time=1)
            self.wait(0.2)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveResize(cursor,x,y,0.2,0.2), run_time=0.4)
            cursor.blinking=True
            
        self.wait(4)


class Func_7_4_I_5_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-2*np.pi, 2*np.pi, np.pi], [-1.2, 1.2, 1], x_ticks=[-2*np.pi, -np.pi, 0, np.pi, 2*np.pi], x_labels=["-2\\Pi", "-\\Pi", "0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(DOWN)
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

        a = ValueTracker(1)
        b = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(b.get_value()*x), color=BLUE))
        
        functerm_1 = MathTex("f","(x)",  "=", "\\sin", "(", "b", "\\cdot x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        beq = MathTex("b", "=", "-1", color=c1t, font_size=fs1).next_to(functerm_1, DOWN, buff=0.5)
        self.add(graph_blue_updated, functerm_1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I5.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("b")
            cursor.blinking=False
            x,y,_ = beq[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(beq), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("neg_one")
            cursor.blinking = False
            x,y,_ = beq[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("reflect")
            cursor.blinking = False
            self.play(CursorMarkAxis(cursor, plane, axis="y"), run_time=.3)
            self.play(b.animate.set_value(-1), run_time=1)
            self.wait(0.2)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveResize(cursor,x,y,0.2,0.2), run_time=0.4)
            cursor.blinking=True
            
        self.wait(4)


class Func_7_4_I_5_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.I1.q.title"))

        cords = self.add_cords([-2*np.pi, 2*np.pi, np.pi], [-1.2, 1.2, 1], x_ticks=[-2*np.pi, -np.pi, 0, np.pi, 2*np.pi], x_labels=["-2\\Pi", "-\\Pi", "0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(DOWN)
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

        a = ValueTracker(1)
        b = ValueTracker(1)
        graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*np.sin(b.get_value()*x), color=BLUE))
        
        functerm_1 = MathTex("f","(x)",  "=", "\\sin", "(", "b", "\\cdot x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        beq = MathTex("b", "=", "-1", color=c1t, font_size=fs1).next_to(functerm_1, DOWN, buff=0.5)
        self.add(graph_blue_updated, functerm_1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_7_4.I5.d.voiceover")
        ) as tracker:

            self.wait_until_bookmark("b")
            cursor.blinking=False
            x,y,_ = beq[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(beq), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("neg_one")
            cursor.blinking = False
            x,y,_ = beq[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
            cursor.blinking=True

            self.wait_until_bookmark("reflect")
            cursor.blinking = False
            self.play(CursorMarkAxis(cursor, plane, axis="y"), run_time=.3)
            self.play(b.animate.set_value(-1), run_time=1)
            self.wait(0.2)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveResize(cursor,x,y,0.2,0.2), run_time=0.4)
            cursor.blinking=True
            
        self.wait(4)


#####################################
#####################################
####### Practice Part ###############
#####################################
#####################################


#####################################
#####################################
######## General Qs #################
#####################################
#####################################

class SineCosineScalingQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

    @abstractmethod
    def construct(self):

        super().construct()
        self.add_mathgrid()
        
        title = self.add_title(self.translate("Func_7_4.SineCosineScalingQuestionScene.sinetitle") if self.use_sine else self.translate("Func_7_4.SineCosineScalingQuestionScene.cosinetitle"))

        cords = self.add_cords([-2*np.pi, 2*np.pi, np.pi], [-1.2, 1.2, 1], x_ticks=[-2*np.pi, -np.pi, 0, np.pi, 2*np.pi], x_labels=["-2\\Pi", "-\\Pi", "0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(DOWN)
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

        a = ValueTracker(1)
        b = ValueTracker(1)
        
        
        func_tex_string = "\\sin" if self.use_sine else "\\cos"
        func_speech_string = self.translate("Func_7_4.SineCosineScalingQuestionScene.sine") if self.use_sine else self.translate("Func_7_4.SineCosineScalingQuestionScene.cosine")
        func = lambda x: a.get_value()*np.sin(b.get_value()*x) if self.use_sine else a.get_value()*np.cos(b.get_value()*x)


        functerm = MathTex("f","(x)",  "=", func_tex_string, "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
        graph_blue_updated = always_redraw(lambda: plane.plot(func, color=BLUE))
        self.add(graph_blue_updated)

        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_7_4.SineCosineScalingQuestionScene.voiceover"))
        ) as tracker:
            
            self.wait_until_bookmark("f_intro")
            x,y,_ = functerm[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(functerm), run_time=.3)

            self.wait_until_bookmark("fx_intro")
            x,y,_ = functerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.4)

            self.wait_until_bookmark("sin_cos_intro")
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.6)

            self.wait_until_bookmark("x_intro")
            x,y,_ = functerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
            cursor.blinking=True


            if self.a_factor !=1:
                self.wait_until_bookmark("a")
                cursor.blinking=False
                x,y,_ = plane.c2p(self.x_start, func(self.x_start))
                self.play(CursorMoveTo(cursor,x,y), run_time=.5)
                cursor_updater = lambda m: m.move_to(plane.c2p(self.x_start, func(self.x_start)))
                cursor.add_updater(cursor_updater)
                self.add_scale_sound("up" if self.a_factor>1 else "down", duration=1)
                self.play(a.animate.set_value(self.a_factor), run_time=1)
                cursor.blinking=True
                cursor.remove_updater(cursor_updater)

            if self.b_factor !=1:
                self.wait_until_bookmark("b")
                cursor.blinking=False
                if self.a_factor==1:
                    x,y,_ = plane.c2p(self.x_start, func(self.x_start))
                    self.play(CursorMoveTo(cursor,x,y), run_time=.5)
                cursor_updater = lambda m: m.move_to(plane.c2p(self.x_start/b.get_value(), func(self.x_start/b.get_value())))
                cursor.add_updater(cursor_updater)
                self.add_scale_sound("up" if self.b_factor<1 else "down", duration=1)
                self.play(b.animate.set_value(self.b_factor), run_time=1)
                cursor.blinking=True
                cursor.remove_updater(cursor_updater)



class SineCosineScalingAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    @abstractmethod
    def construct(self):

        self.a_xplain = self.evaluate_string(self.translate("Func_7_4.SineCosineScalingAnswerScene.a_xplain"))if self.a_factor!=1 else ""
        self.b_xplain = self.evaluate_string(self.translate("Func_7_4.SineCosineScalingAnswerScene.b_xplain")) if self.b_factor!=1 else ""
        
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_7_4.SineCosineScalingAnswerScene.title_sine") if self.use_sine else self.translate("Func_7_4.SineCosineScalingAnswerScene.title_cosine"))

        cords = self.add_cords([-2*np.pi, 2*np.pi, np.pi], [-1.2, 1.2, 1], x_ticks=[-2*np.pi, -np.pi, 0, np.pi, 2*np.pi], x_labels=["-2\\Pi", "-\\Pi", "0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(DOWN)
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

        a = ValueTracker(1)
        b = ValueTracker(1)
        
        
        func_tex_string = "\\sin" if self.use_sine else "\\cos"
        func_speech_string = self.translate("Func_7_4.SineCosineScalingQuestionScene.sine") if self.use_sine else self.translate("Func_7_4.SineCosineScalingQuestionScene.cosine")
        func = lambda x: a.get_value()*np.sin(b.get_value()*x) if self.use_sine else a.get_value()*np.cos(b.get_value()*x)


        functerm = MathTex("f","(x)",  "=", "a", func_tex_string, "(", "b", "\\cdot x)", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        functerm_shifted_a = MathTex("f","(x)",  "=", str(self.a_factor), func_tex_string, "(", "b", "\\cdot x)", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        functerm_shifted_b = MathTex("f","(x)",  "=", str(self.a_factor), func_tex_string, "(", str(self.b_factor), "\\cdot x)", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        graph_blue_updated = always_redraw(lambda: plane.plot(func, color=BLUE))
        self.add(graph_blue_updated, functerm)

        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_7_4.SineCosineScalingAnswerScene.voiceover"))
        ) as tracker:
            
            self.wait_until_bookmark("f_intro")
            cursor.blinking=False
            x,y,_ = functerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("fx_intro")
            x,y,_ = functerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
            
            self.wait_until_bookmark("a_intro")
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("sincos_intro")
            x,y,_ = functerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("b_intro")
            x,y,_ = functerm[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
            
            self.wait_until_bookmark("x_intro")
            x,y,_ = functerm[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
            cursor.blinking=True

            if self.a_factor !=1:
                self.wait_until_bookmark("a")
                cursor.blinking=False
                x,y,_ = plane.c2p(self.x_start, func(self.x_start))
                self.play(CursorMoveTo(cursor,x,y), run_time=.5)
                cursor_updater = lambda m: m.move_to(plane.c2p(self.x_start, func(self.x_start)))
                cursor.add_updater(cursor_updater)
                self.add_scale_sound("up" if self.a_factor>1 else "down", duration=1)
                self.play(a.animate.set_value(self.a_factor), run_time=1)
                cursor.blinking=True
                cursor.remove_updater(cursor_updater)

                self.wait_until_bookmark("a_explained")
                cursor.blinking=False
                x,y,_ = functerm[3].get_center()+0.4*DOWN
                self.play(ReplacementTransform(functerm, functerm_shifted_a), CursorMoveTo(cursor,x,y), run_time=1)
                functerm = functerm_shifted_a
                cursor.blinking=True

            if self.b_factor !=1:

                self.wait_until_bookmark("b")
                cursor.blinking=False
                x,y,_ = plane.c2p(self.x_start, func(self.x_start))
                self.play(CursorMoveTo(cursor,x,y), run_time=.5)
                cursor_updater = lambda m: m.move_to(plane.c2p(self.x_start/b.get_value(), func(self.x_start/b.get_value())))
                cursor.add_updater(cursor_updater)
                self.add_scale_sound("up" if self.b_factor<1 else "down", duration=1)
                self.play(b.animate.set_value(self.b_factor), run_time=1)
                cursor.blinking=True
                cursor.remove_updater(cursor_updater)

                self.wait_until_bookmark("b_explained")
                cursor.blinking=False
                x,y,_ = functerm[6].get_center()+0.4*DOWN
                self.play(ReplacementTransform(functerm, functerm_shifted_b), CursorMoveTo(cursor,x,y), run_time=1)
                functerm = functerm_shifted_b
                cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = functerm[0].get_center()+0.4*DOWN
            if self.b_factor==1:
                self.play(ReplacementTransform(functerm, functerm_shifted_b), CursorMoveTo(cursor,x,y), run_time=.3)
            else:
                self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("fx")
            x,y,_ = functerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("a_term")
            x,y,_ = functerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
            
            self.wait_until_bookmark("sine_cosine")
            x,y,_ = functerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("b_term")
            x,y,_ = functerm[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("x")
            x,y,_ = functerm[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
            cursor.blinking=True


#####################################
#####################################
######## Specific Qs ################
#####################################
#####################################

class Func_7_4_P_2_q(SineCosineScalingQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$f(x)=2\sin(\\frac{1}{3}x)$", "$f(x)=\\frac{1}{2}\sin(3x)$", "$f(x)=2\sin(3x)$", "$f(x)=\\frac{1}{2}\sin(\\frac{1}{3}x)$"],
            correctAnswerIndex = 1,
            questionText=self.translate("Func_7_4.P2.q.question-text")
        )

    def construct(self):
    
        self.intro = self.translate("Func_7_4.P2.q.intro")
        self.use_sine = True

        self.a_factor = 2
        self.b_factor = 3

        self.x_start = (-3/2)*np.pi

        self.a_text = self.translate("Func_7_4.P2.q.a_text")
        self.b_text = self.translate("Func_7_4.P2.q.b_text")
        self.q_text = self.translate("Func_7_4.P2.q.q_text")

        super().construct()


class Func_7_4_P_2_a(SineCosineScalingAnswerScene):

    def construct(self):
    
        self.intro = self.translate("Func_7_4.P2.a.intro")
        self.use_sine = True

        self.a_factor = 2
        self.b_factor = 3

        self.x_start = (-3/2)*np.pi

        self.a_text = self.translate("Func_7_4.P2.a.a_text")
        self.b_text = self.translate("Func_7_4.P2.a.b_text")
        
        super().construct()


class Func_7_4_P_2_b(SineCosineScalingAnswerScene):

    def construct(self):
    
        self.intro = self.translate("Func_7_4.P2.a.intro")
        self.use_sine = True

        self.a_factor = 2
        self.b_factor = 3

        self.x_start = (-3/2)*np.pi

        self.a_text = self.translate("Func_7_4.P2.a.a_text")
        self.b_text = self.translate("Func_7_4.P2.a.b_text")
        
        super().construct()


class Func_7_4_P_2_c(SineCosineScalingAnswerScene):

    def construct(self):
    
        self.intro = self.translate("Func_7_4.P2.c.intro")
        self.use_sine = True

        self.a_factor = 2
        self.b_factor = 3

        self.x_start = (-3/2)*np.pi

        self.a_text = self.translate("Func_7_4.P2.a.a_text")
        self.b_text = self.translate("Func_7_4.P2.a.b_text")
        
        super().construct()


class Func_7_4_P_2_d(SineCosineScalingAnswerScene):

    def construct(self):
    
        self.intro = self.translate("Func_7_4.P2.a.intro")
        self.use_sine = True

        self.a_factor = 2
        self.b_factor = 3

        self.x_start = (-3/2)*np.pi

        self.a_text = self.translate("Func_7_4.P2.a.a_text")
        self.b_text = self.translate("Func_7_4.P2.a.b_text")
        
        super().construct()


#####################################
#####################################
class Func_7_4_P_3_q(SineCosineScalingQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$f(x)=2\cos(x)$", "$f(x)=\\frac{1}{2}\cos(x)$", "$f(x)=\cos(2x)$", "$f(x)=\cos(\\frac{1}{2}x)$"],
            correctAnswerIndex = 3,
            questionText=self.translate("Func_7_4.P3.q.question-text")
        )

    def construct(self):
    
        self.intro = self.translate("Func_7_4.P3.q.intro")
        self.use_sine = False

        self.a_factor = 1
        self.b_factor = 1/2

        self.x_start = np.pi

        self.a_text = """"""
        self.b_text = self.translate("Func_7_4.P3.q.b_text")
        self.q_text = self.translate("Func_7_4.P3.q.q_text")

        super().construct()


class Func_7_4_P_3_a(SineCosineScalingAnswerScene):

    def construct(self):
    
        self.intro = self.translate("Func_7_4.P3.a.intro")
        self.use_sine = True

        self.a_factor = 1
        self.b_factor = 1/2

        self.x_start = np.pi

        self.a_text = ""
        self.b_text = self.translate("Func_7_4.P3.a.b_text")
        
        super().construct()

class Func_7_4_P_3_b(SineCosineScalingAnswerScene):

    def construct(self):
    
        self.intro = self.translate("Func_7_4.P3.a.intro")
        self.use_sine = True

        self.a_factor = 1
        self.b_factor = 1/2

        self.x_start = np.pi

        self.a_text = ""
        self.b_text = self.translate("Func_7_4.P3.a.b_text")
        
        super().construct()

class Func_7_4_P_3_c(SineCosineScalingAnswerScene):

    def construct(self):
    
        self.intro = self.translate("Func_7_4.P3.a.intro")
        self.use_sine = True

        self.a_factor = 1
        self.b_factor = 1/2

        self.x_start = np.pi

        self.a_text = ""
        self.b_text = self.translate("Func_7_4.P3.a.b_text")
        
        super().construct()

class Func_7_4_P_3_d(SineCosineScalingAnswerScene):

    def construct(self):
    
        self.intro = self.translate("Func_7_4.P3.d.intro")
        self.use_sine = True

        self.a_factor = 1
        self.b_factor = 1/2

        self.x_start = np.pi

        self.a_text = ""
        self.b_text = self.translate("Func_7_4.P3.a.b_text")
        
        super().construct()



#####################################
#####################################
class Func_7_4_P_4_q(SineCosineScalingQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$f(x)=\\frac{1}{2}\sin(x)", "$f(x)=2\sin(x)$", "$f(x)=\sin(2x)$", "$f(x)=\sin(\\frac{1}{2}x)$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_7_4.P4.q.question-text")
        )

    def construct(self):
    
        self.intro = self.translate("Func_7_4.P4.q.intro")
        self.use_sine = True

        self.a_factor = 0.5
        self.b_factor = 1

        self.x_start = (-3/2)*np.pi

        self.a_text = self.translate("Func_7_4.P4.q.a_text")
        self.b_text = """"""
        self.q_text = self.translate("Func_7_4.P4.q.q_text")

        super().construct()


class Func_7_4_P_4_a(SineCosineScalingAnswerScene):

    def construct(self):
    
        self.intro = self.translate("Func_7_4.P4.a.intro")
        self.use_sine = True

        self.a_factor = 0.5
        self.b_factor = 1

        self.x_start = (-3/2)*np.pi

        self.a_text = self.translate("Func_7_4.P4.a.a_text")
        self.b_text = ""

        super().construct()

class Func_7_4_P_4_b(SineCosineScalingAnswerScene):

    def construct(self):
    
        self.intro = self.translate("Func_7_4.P4.b.intro")
        self.use_sine = True

        self.a_factor = 0.5
        self.b_factor = 1

        self.x_start = (-3/2)*np.pi

        self.a_text = self.translate("Func_7_4.P4.a.a_text")
        self.b_text = ""

        super().construct()

class Func_7_4_P_4_c(SineCosineScalingAnswerScene):

    def construct(self):
    
        self.intro = self.translate("Func_7_4.P4.b.intro")
        self.use_sine = True

        self.a_factor = 0.5
        self.b_factor = 1

        self.x_start = (-3/2)*np.pi

        self.a_text = self.translate("Func_7_4.P4.a.a_text")
        self.b_text = ""

        super().construct()

class Func_7_4_P_4_d(SineCosineScalingAnswerScene):

    def construct(self):
    
        self.intro = self.translate("Func_7_4.P4.b.intro")
        self.use_sine = True

        self.a_factor = 0.5
        self.b_factor = 1

        self.x_start = (-3/2)*np.pi

        self.a_text = self.translate("Func_7_4.P4.a.a_text")
        self.b_text = ""

        super().construct()

PROTOTYPES=[
    PagePrototypeVideo.from_scene(Func_7_4_I_1_q),
    PagePrototypeQuestion.from_scene(Func_7_4_I_1_q),
    PagePrototypeVideo.from_scene(Func_7_4_I_1_a),
    PagePrototypeVideo.from_scene(Func_7_4_I_1_b),
    PagePrototypeVideo.from_scene(Func_7_4_I_1_c),
    PagePrototypeVideo.from_scene(Func_7_4_I_1_d),
    PagePrototypeVideo.from_scene(Func_7_4_I_2),
    PagePrototypeVideo.from_scene(Func_7_4_P_1_q),
    PagePrototypeQuestion.from_scene(Func_7_4_P_1_q),
    PagePrototypeVideo.from_scene(Func_7_4_P_1_a),
    PagePrototypeVideo.from_scene(Func_7_4_P_1_b),
    PagePrototypeVideo.from_scene(Func_7_4_P_1_c),
    PagePrototypeVideo.from_scene(Func_7_4_P_1_d),
    PagePrototypeVideo.from_scene(Func_7_4_I_3_q),
    PagePrototypeQuestion.from_scene(Func_7_4_I_3_q),
    PagePrototypeVideo.from_scene(Func_7_4_I_3_a),
    PagePrototypeVideo.from_scene(Func_7_4_I_3_b),
    PagePrototypeVideo.from_scene(Func_7_4_I_3_c),
    PagePrototypeVideo.from_scene(Func_7_4_I_3_d),
    PagePrototypeVideo.from_scene(Func_7_4_I_4_q),
    PagePrototypeQuestion.from_scene(Func_7_4_I_4_q),
    PagePrototypeVideo.from_scene(Func_7_4_I_4_a),
    PagePrototypeVideo.from_scene(Func_7_4_I_4_b),
    PagePrototypeVideo.from_scene(Func_7_4_I_4_c),
    PagePrototypeVideo.from_scene(Func_7_4_I_4_d),
    PagePrototypeVideo.from_scene(Func_7_4_I_5_q),
    PagePrototypeQuestion.from_scene(Func_7_4_I_5_q),
    PagePrototypeVideo.from_scene(Func_7_4_I_5_a),
    PagePrototypeVideo.from_scene(Func_7_4_I_5_b),
    PagePrototypeVideo.from_scene(Func_7_4_I_5_c),
    PagePrototypeVideo.from_scene(Func_7_4_I_5_d),
    PagePrototypeVideo.from_scene(Func_7_4_P_2_q),
    PagePrototypeQuestion.from_scene(Func_7_4_P_2_q),
    PagePrototypeVideo.from_scene(Func_7_4_P_2_a),
    PagePrototypeVideo.from_scene(Func_7_4_P_2_b),
    PagePrototypeVideo.from_scene(Func_7_4_P_2_c),
    PagePrototypeVideo.from_scene(Func_7_4_P_2_d),
    PagePrototypeVideo.from_scene(Func_7_4_P_3_q),
    PagePrototypeQuestion.from_scene(Func_7_4_P_3_q),
    PagePrototypeVideo.from_scene(Func_7_4_P_3_a),
    PagePrototypeVideo.from_scene(Func_7_4_P_3_b),
    PagePrototypeVideo.from_scene(Func_7_4_P_3_c),
    PagePrototypeVideo.from_scene(Func_7_4_P_3_d),
    PagePrototypeVideo.from_scene(Func_7_4_P_4_q),
    PagePrototypeQuestion.from_scene(Func_7_4_P_4_q),
    PagePrototypeVideo.from_scene(Func_7_4_P_4_a),
    PagePrototypeVideo.from_scene(Func_7_4_P_4_b),
    PagePrototypeVideo.from_scene(Func_7_4_P_4_c),
    PagePrototypeVideo.from_scene(Func_7_4_P_4_d),
]
