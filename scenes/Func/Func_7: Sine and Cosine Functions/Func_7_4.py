# 7_4: Trigonometric Functions: Scaling

# Import necessary libraries and modules
from abc import ABCMeta, abstractmethod
from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
from sophialib.styles.sophiascene import (CursorMoveToCurved, CursorPositionTracker,
                                          CursorPositionTracking,
                                          CursorResizeDefault, SophiaScene, Cursor,
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
TASK_Func_7_4_I_1_q = SophiaTaskDefinition(
    answerOptions = ["Add $2$: $f(x)=\sin(x)+2$", "Multiply by $2$: $f(x)=2\sin(x)$", "Multiply by $\tfrac{1}{2}$: $f(x)=\tfrac{1}{2}\sin(x)$", "Add $\tfrac{1}{2}$: $f(x)=\sin(x)-\tfrac{1}{2}$"],
    correctAnswerIndex = 1,
    questionText = "How do we change the function $f(x)=\sin(x)$, so that its values reach from $-2$ to $2$?"
)
class Func_7_4_I_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine \& Cosine: Scaling")

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
                text="""
                This is a graph of the sine function.
                The values of the sine function range<bookmark mark="neg_1"/> from negative <bookmark mark="pos_1"/>one to one.

                Now we want to change the function, so that its values <bookmark mark="neg_2"/>range from negative
                <bookmark mark="pos_2"/>two to two.

                How do we change the <bookmark mark="f"/> term f <bookmark mark="fx"/> of x<bookmark mark="sin"/> equals sine
                <bookmark mark="x"/> of x, so that the values of the function range from negative
                two to two?
                """
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
        title = self.add_title("Sine \& Cosine: Scaling")

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
                text="""
                No, that's not quite right.
                We want the values of the function to range from negative two to two, instead of from negative one to one.
                This means, that wherever the function<bookmark mark="row_1_a"/> has a value of one, we want it
                <bookmark mark="row_1_b"/>to have a value of two instead.

                And wherever the function<bookmark mark="row_2_a"/> has a value of negative one, we want it <bookmark mark="row_2_b"/>
                to have a value of negative two instead.

                Clearly, we can achieve this by <bookmark mark="transform_term"/> multiplying the function by two.
                If we do that, <bookmark mark="stretch_func"/> the function will be stretched vertically by a factor of two.
                And that's exactly what we want.
                """
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
        title = self.add_title("Sine \& Cosine: Scaling")

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
                text="""
                Yep, that's it!
                We want the values of the function to range from negative two to two, instead of from negative one to one.
                This means, that wherever the function<bookmark mark="row_1_a"/> has a value of one, we want it
                <bookmark mark="row_1_b"/>to have a value of two instead.

                And wherever the function<bookmark mark="row_2_a"/> has a value of negative one, we want it <bookmark mark="row_2_b"/>
                to have a value of negative two instead.

                Clearly, we can achieve this by <bookmark mark="transform_term"/> multiplying the function by two.
                If we do that, <bookmark mark="stretch_func"/> the function will be stretched vertically by a factor of two.
                And that's exactly what we want.
                """
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
        title = self.add_title("Sine \& Cosine: Scaling")

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
                text="""
                No, that's not quite right.
                We want the values of the function to range from negative two to two, instead of from negative one to one.
                This means, that wherever the function<bookmark mark="row_1_a"/> has a value of one, we want it
                <bookmark mark="row_1_b"/>to have a value of two instead.

                And wherever the function<bookmark mark="row_2_a"/> has a value of negative one, we want it <bookmark mark="row_2_b"/>
                to have a value of negative two instead.

                Clearly, we can achieve this by <bookmark mark="transform_term"/> multiplying the function by two.
                If we do that, <bookmark mark="stretch_func"/> the function will be stretched vertically by a factor of two.
                And that's exactly what we want.
                """
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
        title = self.add_title("Sine \& Cosine: Scaling")

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
                text="""
                No, that's not quite right.
                We want the values of the function to range from negative two to two, instead of from negative one to one.
                This means, that wherever the function<bookmark mark="row_1_a"/> has a value of one, we want it
                <bookmark mark="row_1_b"/>to have a value of two instead.

                And wherever the function<bookmark mark="row_2_a"/> has a value of negative one, we want it <bookmark mark="row_2_b"/>
                to have a value of negative two instead.

                Clearly, we can achieve this by <bookmark mark="transform_term"/> multiplying the function by two.
                If we do that, <bookmark mark="stretch_func"/> the function will be stretched vertically by a factor of two.
                And that's exactly what we want.
                """
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
        title = self.add_title("Sine \& Cosine: Scaling")

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
                text="""
                In general, we can scale the sine function <bookmark mark="y_axis"/> in y-direction by simply
                multiplying the entire function <bookmark mark="scale_a"/> by a constant factor a.<bookmark mark="move_cursor"/>
                If <bookmark mark="a_1"/>a is greater than one, the function will be stretched vertically.
                And if <bookmark mark="a_2"/>a is less than one, the function will be compressed vertically.
                We can also reflect the function at the x-axis by <bookmark mark="a_3"/>choosing a negative value for a.
                """
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
TASK_Func_7_4_P_1_q = SophiaTaskDefinition(
    answerOptions = ["$a=2$", "$a=\tfrac{1}{2}$", "$a=-2$", "$a=-\tfrac{1}{2}$"],
    correctAnswerIndex = 2,
    questionText = "What value do we choose for $a$, to stretch the function vertically by a factor of two and reflect it at the x-axis?",
)
class Func_7_4_P_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine \& Cosine: Scaling")

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
                text="""
                Here's the sine <bookmark mark="f"/> function f <bookmark mark="fx"/> of x <bookmark mark="a"/>
                equals a <bookmark mark="sin"/> times sine <bookmark mark="x"/> of x.
                Now <bookmark mark="move_cursor"/>say we want to stretch the function <bookmark mark="a_1"/>by a factor of two,
                and <bookmark mark="a_2"/>reflect it at the x-axis.

                What <bookmark mark="a_mark"/>value of a do we need to choose, to make this happen?
                """
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
        title = self.add_title("Sine \& Cosine: Scaling")

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
                text="""
                No, that's not it. So we start with the <bookmark mark="f"/> function f
                <bookmark mark="fx"/> of x <bookmark mark="a"/> equals a <bookmark mark="sin"/>
                times sine <bookmark mark="x"/> of x.
                Now to <bookmark mark="move_cursor_1"/>stretch the function <bookmark mark="a_1"/>by a factor of two,
                we <bookmark mark="a_term_1"/>multiply the function by a factor of a equals two.

                <bookmark mark="move_cursor_2"/>Next, to <bookmark mark="a_2"/>reflect the function at the x-axis,
                we multiply the entire function by negative one, which means <bookmark mark="a_term_2"/>choosing
                a value of "a" equals negative two.

                So the answer is "a" equals negative two.
                """
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
        title = self.add_title("Sine \& Cosine: Scaling")

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
                text="""
                No, that's not it. So we start with the <bookmark mark="f"/> function f
                <bookmark mark="fx"/> of x <bookmark mark="a"/> equals a <bookmark mark="sin"/>
                times sine <bookmark mark="x"/> of x.
                Now to <bookmark mark="move_cursor_1"/>stretch the function <bookmark mark="a_1"/>by a factor of two,
                we <bookmark mark="a_term_1"/>multiply the function by a factor of a equals two.

                <bookmark mark="move_cursor_2"/>Next, to <bookmark mark="a_2"/>reflect the function at the x-axis,
                we multiply the entire function by negative one, which means <bookmark mark="a_term_2"/>choosing
                a value of "a" equals negative two.

                So the answer is "a" equals negative two.
                """
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
        title = self.add_title("Sine \& Cosine: Scaling")

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
                text="""
                Yep, that's right. So we start with the <bookmark mark="f"/> function f
                <bookmark mark="fx"/> of x <bookmark mark="a"/> equals a <bookmark mark="sin"/>
                times sine <bookmark mark="x"/> of x.
                Now to <bookmark mark="move_cursor_1"/>stretch the function <bookmark mark="a_1"/>by a factor of two,
                we <bookmark mark="a_term_1"/>multiply the function by a factor of a equals two.

                <bookmark mark="move_cursor_2"/>Next, to <bookmark mark="a_2"/>reflect the function at the x-axis,
                we multiply the entire function by negative one, which means <bookmark mark="a_term_2"/>choosing
                a value of "a" equals negative two.

                So the answer is "a" equals negative two.
                """
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
        title = self.add_title("Sine \& Cosine: Scaling")

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
                text="""
                No, that's not it. So we start with the <bookmark mark="f"/> function f
                <bookmark mark="fx"/> of x <bookmark mark="a"/> equals a <bookmark mark="sin"/>
                times sine <bookmark mark="x"/> of x.
                Now to <bookmark mark="move_cursor_1"/>stretch the function <bookmark mark="a_1"/>by a factor of two,
                we <bookmark mark="a_term_1"/>multiply the function by a factor of a equals two.

                <bookmark mark="move_cursor_2"/>Next, to <bookmark mark="a_2"/>reflect the function at the x-axis,
                we multiply the entire function by negative one, which means <bookmark mark="a_term_2"/>choosing
                a value of "a" equals negative two.

                So the answer is "a" equals negative two.
                """
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
TASK_Func_7_4_I_3_q = SophiaTaskDefinition(
    answerOptions = ["Add $b$ to $x$: $f(x)=\sin(x+b)$", "Multiply $f$ by $b$: $f(x)=b\sin(x)$", "Add $b$ to $f$: $f(x)=\sin(x)+b$", "Multiply x by $b$: $f(x)=\sin(bx)$"],
    correctAnswerIndex = 3,
    questionText = "How do we change the function $f(x)=\sin(x)$, so that it is scaled in x-Direction?"
)
class Func_7_4_I_3_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine \& Cosine: Scaling")

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
                text="""
                <bookmark mark="start"/>
                We can scale the sine function <bookmark mark="y_axis"/> in y-direction by simply
                multiplying the entire function by a <bookmark mark="scale_a"/>constant factor a.
                <bookmark mark="move_cursor"/>


                Now, what if we want to scale the <bookmark mark="x_axis"/> function in x-direction?
                How do we change the <bookmark mark="f"/> function term f <bookmark mark="fx"/> of x <bookmark mark="sin"/>equals
                sine <bookmark mark="x"/> of x, so that <bookmark mark="scale_b"/>f is scaled in x-direction?
                
                """
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
        title = self.add_title("Sine \& Cosine: Scaling")

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
                text="""
                That's not correct.
                
                <bookmark mark="scale_b"/>We can scale the sine function in x-direction by simply
                multiplying the value of x by a <bookmark mark="term_1"/>constant factor b.

                This way we scale all the values we plug in for x, which means we scale the entire
                <bookmark mark="x_axis"/>function in x-direction.
                """
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
        title = self.add_title("Sine \& Cosine: Scaling")

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
                text="""
                That's not correct.
                
                <bookmark mark="scale_b"/>We can scale the sine function in x-direction by simply
                multiplying the value of x by a <bookmark mark="term_1"/>constant factor b.

                This way we scale all the values we plug in for x, which means we scale the entire
                <bookmark mark="x_axis"/>function in x-direction.
                """
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
        title = self.add_title("Sine \& Cosine: Scaling")

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
                text="""
                That's not correct.
                
                <bookmark mark="scale_b"/>We can scale the sine function in x-direction by simply
                multiplying the value of x by a <bookmark mark="term_1"/>constant factor b.

                This way we scale all the values we plug in for x, which means we scale the entire
                <bookmark mark="x_axis"/>function in x-direction.
                """
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
        title = self.add_title("Sine \& Cosine: Scaling")

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
                text="""
                Yep, that's right. Nice job.
                
                <bookmark mark="scale_b"/>We can scale the sine function in x-direction by simply
                multiplying the value of x by a <bookmark mark="term_1"/>constant factor b.

                This way we scale all the values we plug in for x, which means we scale the entire
                <bookmark mark="x_axis"/>function in x-direction.
                """
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
TASK_Func_7_4_I_4_q = SophiaTaskDefinition(
    answerOptions = ["Add $b$ to $x$: $f(x)=\sin(x+b)$", "Multiply $f$ by $b$: $f(x)=b\sin(x)$", "Add $b$ to $f$: $f(x)=\sin(x)+b$", "Multiply x by $b$: $f(x)=\sin(bx)$"],
    correctAnswerIndex = 3,
    questionText = "What values of $b$?"
)
class Func_7_4_I_4_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Sine \& Cosine: Scaling")

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
                text="""
                Looking at the function <bookmark mark="f"/> term f <bookmark mark="fx"/> of x <bookmark mark="sin"/>equals
                sine <bookmark mark="b_1"/> of <bookmark mark="x"/> b times x, what values of
                b <bookmark mark="stretch"/>would  stretch the function in x-direction?

                And which values of <bookmark mark ="compress"/>b would squash the function
                in x direction?
                """
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




# PROTOTYPES=[
#     PagePrototypeVideo.from_scene(Func_7_3_I_1_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_7_3_I_1_q, Func_7_3_I_1_q.__name__),
#     PagePrototypeVideo.from_scene(Func_7_3_I_1_a),
#     PagePrototypeVideo.from_scene(Func_7_3_I_1_b),
#     PagePrototypeVideo.from_scene(Func_7_3_I_2_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_7_3_I_2_q, Func_7_3_I_2_q.__name__),
#     PagePrototypeVideo.from_scene(Func_7_3_I_2_a),
#     PagePrototypeVideo.from_scene(Func_7_3_I_2_b),
#     PagePrototypeVideo.from_scene(Func_7_3_I_2_c),
#     PagePrototypeVideo.from_scene(Func_7_3_I_2_d),
#     PagePrototypeVideo.from_scene(Func_7_3_I_3),
#     PagePrototypeVideo.from_scene(Func_7_3_I_4),
#     PagePrototypeVideo.from_scene(Func_7_3_I_4),
#     PagePrototypeVideo.from_scene(Func_7_3_P_1_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_7_3_P_1_q, Func_7_3_P_1_q.__name__),
#     PagePrototypeVideo.from_scene(Func_7_3_P_1_a),
#     PagePrototypeVideo.from_scene(Func_7_3_P_1_b),
#     PagePrototypeVideo.from_scene(Func_7_3_P_1_c),
#     PagePrototypeVideo.from_scene(Func_7_3_P_1_d),
#     PagePrototypeVideo.from_scene(Func_7_3_P_2_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_7_3_P_2_q, Func_7_3_P_2_q.__name__),
#     PagePrototypeVideo.from_scene(Func_7_3_P_2_a),
#     PagePrototypeVideo.from_scene(Func_7_3_P_2_b),
#     PagePrototypeVideo.from_scene(Func_7_3_P_2_c),
#     PagePrototypeVideo.from_scene(Func_7_3_P_2_d),
#     PagePrototypeVideo.from_scene(Func_7_3_P_3_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_7_3_P_3_q, Func_7_3_P_3_q.__name__),
#     PagePrototypeVideo.from_scene(Func_7_3_P_3_a),
#     PagePrototypeVideo.from_scene(Func_7_3_P_3_b),
#     PagePrototypeVideo.from_scene(Func_7_3_P_3_c),
#     PagePrototypeVideo.from_scene(Func_7_3_P_3_d),
#     PagePrototypeVideo.from_scene(Func_7_3_P_4_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_7_3_P_4_q, Func_7_3_P_4_q.__name__),
#     PagePrototypeVideo.from_scene(Func_7_3_P_4_a),
#     PagePrototypeVideo.from_scene(Func_7_3_P_4_b),
#     PagePrototypeVideo.from_scene(Func_7_3_P_4_c),
#     PagePrototypeVideo.from_scene(Func_7_3_P_4_d),
# ]
