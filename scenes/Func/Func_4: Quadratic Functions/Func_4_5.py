# 4_5: Forms of Quadratic Functions

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
TASK_Func_4_5_I_1_q = SophiaTaskDefinition(
    answerOptions = ["$f(x)=x^2-2$", "g(x)=x^2(x-1)", "h(x)=(x-2)(x+2)"],
    correctAnswerIndex = 1,
    questionText = "Which is not a quadratic function?"
)
class Func_4_5_I_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Quadratic Functions")
        
        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = lambda x: x**2
        g1 = plane.plot(f1, color=BLUE)

        f = MathTex("f","(x)", "=", "x^2", "-", "2", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        g = MathTex("g","(x)", "=", "x^2", "\\cdot", "(x-","1",")", color=c2t, font_size=fs2).next_to(f, DOWN, buff=0.2)
        h = MathTex("h","(x)", "=", "(x-","2",")", "\\cdot", "(x+","2",")", color=c3t, font_size=fs2).next_to(g, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text="""
                What can quadratic functions look like?
                And what do quadratic functions never look like?
                Let's start with these three functions:
                The first is <bookmark mark="f"/> f of <bookmark mark="fx"/>x equals <bookmark mark="fx2"/> x squared minus <bookmark mark="f2"/> 2.
                The second is <bookmark mark="g"/> g of <bookmark mark="gx"/>x equals <bookmark mark="gx2"/> x squared times open bracket
                <bookmark mark="gxb"/> x minus<bookmark mark="g1"/> one close bracket.
                And the third is <bookmark mark="h"/> h of x<bookmark mark="hx"/> equals open bracket <bookmark mark="hb1x"/>x minus <bookmark mark="hb12"/>two close bracket
                times open bracket <bookmark mark="hb2x"/> x plus <bookmark mark="hb22"/>two close bracket.
                Now which of the three is not a quadratic function?
                """
        ) as tracker:

            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.play(Create(g1))
            cursor.blinking=True

            self.wait_until_bookmark("f")
            x,y,_ = f[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(f), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("fx")
            x,y,_ = f[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("fx2")
            x,y,_ = f[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("f2")
            x,y,_ = f[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("g")
            cursor.blinking=False
            x,y,_ = g[0].get_center()+0.4*DOWN
            self.play(Write(g), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("gx")
            x,y,_ = g[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("gx2")
            x,y,_ = g[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("gxb")
            x,y,_ = g[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("g1")
            x,y,_ = g[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("h")
            cursor.blinking=False
            x,y,_ = h[0].get_center()+0.4*DOWN
            self.play(Write(h), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hx")
            x,y,_ = h[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hb1x")
            x,y,_ = h[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hb12")
            x,y,_ = h[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hb2x")
            x,y,_ = h[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hb22")
            x,y,_ = h[8].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Quadratic Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f = MathTex("f","(x)", "=", "x^2", "-", "2", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1)
        g = MathTex("g","(x)", "=", "x^2", "\\cdot", "(x-","1",")", color=c2t, font_size=fs2).next_to(f, DOWN, buff=0.4)
        a1 = MathTex("\\Downarrow", color=c3t, font_size=fs2).next_to(g, DOWN, buff=0.2)
        g2 = MathTex("g","(x)", "=", "x^3", "-", "x^2", color=c2t, font_size=fs2).next_to(a1, DOWN, buff=0.2)
        h = MathTex("h","(x)", "=", "(x-","2",")", "\\cdot", "(x+","2",")", color=c3t, font_size=fs2).next_to(g2, DOWN, buff=0.4)
        a2 = MathTex("\\Downarrow", color=c3t, font_size=fs2).next_to(h, DOWN, buff=0.2)
        h2 = MathTex("h","(x)", "=", "x^2", "-", "4", color=c3t, font_size=fs2).next_to(a2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's wrong.
                This question was about the structures of quadratic functions.
                The first function, <bookmark mark="f"/> f of <bookmark mark="fx"/>x equals <bookmark mark="fx2"/> x squared minus <bookmark mark="f2"/> 2
                is clearly a quadratic function. It is a unit parabola, shifted down by two.
                The second one, <bookmark mark="g"/> g of <bookmark mark="gx"/>x equals <bookmark mark="gx2"/> x squared times open bracket
                <bookmark mark="gxb"/> x minus<bookmark mark="g1"/> one close bracket is tricky. At first glance, you might think it's a quadratic function, because
                it has an x squared term. But it's not. It's a cubic function. If you multiply the x squared with the two elements in the bracket, <bookmark mark="m1"/>
                you get x to the power of three. So g is not a quadratic function.
                Finally, <bookmark mark="h"/> h of x<bookmark mark="hx"/> equals open bracket <bookmark mark="hb1x"/>x minus <bookmark mark="hb12"/>two close bracket
                times open bracket <bookmark mark="hb2x"/> x plus <bookmark mark="hb22"/>two close bracket is also tricky. Why? Because at first glance, you might be
                tempted to think that it's a linear function, because there doesn't seem to be an x squared term. But similar to g, if you multiply <bookmark mark="m2"/>
                the two brackets, you get x squared. So h is also a quadratic function.
                """
        ) as tracker:



            self.wait_until_bookmark("f")
            x,y,_ = f[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(f), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("fx")
            x,y,_ = f[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("fx2")
            x,y,_ = f[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("f2")
            x,y,_ = f[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("g")
            cursor.blinking=False
            x,y,_ = g[0].get_center()+0.4*DOWN
            self.play(Write(g), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("gx")
            x,y,_ = g[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("gx2")
            x,y,_ = g[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("gxb")
            x,y,_ = g[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("g1")
            x,y,_ = g[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("m1")
            cursor.blinking=False
            x,y,_ = g2.get_center()+0.4*DOWN
            self.play(Write(a1), Write(g2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("h")
            cursor.blinking=False
            x,y,_ = h[0].get_center()+0.4*DOWN
            self.play(Write(h), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hx")
            x,y,_ = h[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hb1x")
            x,y,_ = h[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hb12")
            x,y,_ = h[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hb2x")
            x,y,_ = h[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hb22")
            x,y,_ = h[8].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("m2")
            cursor.blinking=False
            x,y,_ = h2.get_center()+0.4*DOWN
            self.play(Write(a2), Write(h2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Quadratic Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f = MathTex("f","(x)", "=", "x^2", "-", "2", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1)
        g = MathTex("g","(x)", "=", "x^2", "\\cdot", "(x-","1",")", color=c2t, font_size=fs2).next_to(f, DOWN, buff=0.4)
        a1 = MathTex("\\Downarrow", color=c3t, font_size=fs2).next_to(g, DOWN, buff=0.2)
        g2 = MathTex("g","(x)", "=", "x^3", "-", "x^2", color=c2t, font_size=fs2).next_to(a1, DOWN, buff=0.2)
        h = MathTex("h","(x)", "=", "(x-","2",")", "\\cdot", "(x+","2",")", color=c3t, font_size=fs2).next_to(g2, DOWN, buff=0.4)
        a2 = MathTex("\\Downarrow", color=c3t, font_size=fs2).next_to(h, DOWN, buff=0.2)
        h2 = MathTex("h","(x)", "=", "x^2", "-", "4", color=c3t, font_size=fs2).next_to(a2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text="""
                You got it! Nice...
                This question was about the structures of quadratic functions.
                The first function, <bookmark mark="f"/> f of <bookmark mark="fx"/>x equals <bookmark mark="fx2"/> x squared minus <bookmark mark="f2"/> 2
                is clearly a quadratic function. It is a unit parabola, shifted down by two.
                The second one, <bookmark mark="g"/> g of <bookmark mark="gx"/>x equals <bookmark mark="gx2"/> x squared times open bracket
                <bookmark mark="gxb"/> x minus<bookmark mark="g1"/> one close bracket is tricky. At first glance, you might think it's a quadratic function, because
                it has an x squared term. But it's not. It's a cubic function. If you multiply the x squared with the two elements in the bracket, <bookmark mark="m1"/>
                you get x to the power of three. So g is not a quadratic function.
                Finally, <bookmark mark="h"/> h of x<bookmark mark="hx"/> equals open bracket <bookmark mark="hb1x"/>x minus <bookmark mark="hb12"/>two close bracket
                times open bracket <bookmark mark="hb2x"/> x plus <bookmark mark="hb22"/>two close bracket is also tricky. Why? Because at first glance, you might be
                tempted to think that it's a linear function, because there doesn't seem to be an x squared term. But similar to g, if you multiply <bookmark mark="m2"/>
                the two brackets, you get x squared. So h is also a quadratic function.
                """
        ) as tracker:



            self.wait_until_bookmark("f")
            x,y,_ = f[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(f), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("fx")
            x,y,_ = f[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("fx2")
            x,y,_ = f[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("f2")
            x,y,_ = f[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("g")
            cursor.blinking=False
            x,y,_ = g[0].get_center()+0.4*DOWN
            self.play(Write(g), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("gx")
            x,y,_ = g[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("gx2")
            x,y,_ = g[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("gxb")
            x,y,_ = g[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("g1")
            x,y,_ = g[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("m1")
            cursor.blinking=False
            x,y,_ = g2.get_center()+0.4*DOWN
            self.play(Write(a1), Write(g2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("h")
            cursor.blinking=False
            x,y,_ = h[0].get_center()+0.4*DOWN
            self.play(Write(h), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hx")
            x,y,_ = h[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hb1x")
            x,y,_ = h[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hb12")
            x,y,_ = h[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hb2x")
            x,y,_ = h[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hb22")
            x,y,_ = h[8].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("m2")
            cursor.blinking=False
            x,y,_ = h2.get_center()+0.4*DOWN
            self.play(Write(a2), Write(h2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Quadratic Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f = MathTex("f","(x)", "=", "x^2", "-", "2", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1)
        g = MathTex("g","(x)", "=", "x^2", "\\cdot", "(x-","1",")", color=c2t, font_size=fs2).next_to(f, DOWN, buff=0.4)
        a1 = MathTex("\\Downarrow", color=c3t, font_size=fs2).next_to(g, DOWN, buff=0.2)
        g2 = MathTex("g","(x)", "=", "x^3", "-", "x^2", color=c2t, font_size=fs2).next_to(a1, DOWN, buff=0.2)
        h = MathTex("h","(x)", "=", "(x-","2",")", "\\cdot", "(x+","2",")", color=c3t, font_size=fs2).next_to(g2, DOWN, buff=0.4)
        a2 = MathTex("\\Downarrow", color=c3t, font_size=fs2).next_to(h, DOWN, buff=0.2)
        h2 = MathTex("h","(x)", "=", "x^2", "-", "4", color=c3t, font_size=fs2).next_to(a2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's wrong.
                This question was about the structures of quadratic functions.
                The first function, <bookmark mark="f"/> f of <bookmark mark="fx"/>x equals <bookmark mark="fx2"/> x squared minus <bookmark mark="f2"/> 2
                is clearly a quadratic function. It is a unit parabola, shifted down by two.
                The second one, <bookmark mark="g"/> g of <bookmark mark="gx"/>x equals <bookmark mark="gx2"/> x squared times open bracket
                <bookmark mark="gxb"/> x minus<bookmark mark="g1"/> one close bracket is tricky. At first glance, you might think it's a quadratic function, because
                it has an x squared term. But it's not. It's a cubic function. If you multiply the x squared with the two elements in the bracket, <bookmark mark="m1"/>
                you get x to the power of three. So g is not a quadratic function.
                Finally, <bookmark mark="h"/> h of x<bookmark mark="hx"/> equals open bracket <bookmark mark="hb1x"/>x minus <bookmark mark="hb12"/>two close bracket
                times open bracket <bookmark mark="hb2x"/> x plus <bookmark mark="hb22"/>two close bracket is also tricky. Why? Because at first glance, you might be
                tempted to think that it's a linear function, because there doesn't seem to be an x squared term. But similar to g, if you multiply <bookmark mark="m2"/>
                the two brackets, you get x squared. So h is also a quadratic function.
                """
        ) as tracker:



            self.wait_until_bookmark("f")
            x,y,_ = f[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(f), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("fx")
            x,y,_ = f[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("fx2")
            x,y,_ = f[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("f2")
            x,y,_ = f[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("g")
            cursor.blinking=False
            x,y,_ = g[0].get_center()+0.4*DOWN
            self.play(Write(g), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("gx")
            x,y,_ = g[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("gx2")
            x,y,_ = g[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("gxb")
            x,y,_ = g[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("g1")
            x,y,_ = g[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("m1")
            cursor.blinking=False
            x,y,_ = g2.get_center()+0.4*DOWN
            self.play(Write(a1), Write(g2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("h")
            cursor.blinking=False
            x,y,_ = h[0].get_center()+0.4*DOWN
            self.play(Write(h), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hx")
            x,y,_ = h[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hb1x")
            x,y,_ = h[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hb12")
            x,y,_ = h[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hb2x")
            x,y,_ = h[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("hb22")
            x,y,_ = h[8].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("m2")
            cursor.blinking=False
            x,y,_ = h2.get_center()+0.4*DOWN
            self.play(Write(a2), Write(h2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
TASK_Func_4_5_I_2_q = SophiaTaskDefinition(
    answerOptions = ["We can easily determine the location of the vertex", "We can easily determine the location of the zeros", "We can easily determine the location of the y-intercept"],
    correctAnswerIndex = 0,
    questionText = "What is the advantage of the vertex form?"
)
class Func_4_5_I_2_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Vertex Form")
        
        #Create the coordinate system
        cords = self.add_cords([0,4, 1], [-5, 5, 1], x_ticks=[0,1,2,3,4],y_ticks=[-5,-3,-1,1,3,5]).shift(DOWN*0.6)
        plane = cords[0]

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        a = ValueTracker(1)
        f1 = lambda x: -2*(x-2)**2+3
        g1 = plane.plot(f1, color=BLUE, x_range=[0,4,0.0001])
        f1 = MathTex("f","(x)", "=", "-2","(x-", "2", ")^2", "+", "3", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)

        funcTerm = MathTex("f","(x)", "=","a","x^2", "+bx", "+", "c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)

        # Action Sequence
        with self.voiceover(
                text="""
                Why do we want to write quadratic functions in different forms? Isn't it enough to have them in the shape
                <bookmark mark="funcTerm"/> f of <bookmark mark="funcTermX"/>x equals <bookmark mark="funcTermAx2"/> a
                x squared plus <bookmark mark="funcTermB"/> b x <bookmark mark="funcTermC"/>plus c?
                Well, like always, the answer is: it depends! <bookmark mark="fOut"/>Sometimes, it's easier to understand the structure of a function
                if it's written in a different form. Let's look at an example: <bookmark mark="1f"/>f of <bookmark mark="1x"/>x equals <bookmark mark="1neg2"/> negative
                two times open bracket <bookmark mark="1x2"/>x minus<bookmark mark="1xM2"/> two close bracket squared plus
                <bookmark mark="13"/> three. This is a quadratic function. But it's not written in the form we just talked about.
                Instead, it's written in the so-called <bookmark mark="vertexForm"/>Vertex Form. Now look at the <bookmark mark="graph"/> graph of this function
                and try to tell me: What is the advantage of using the vertex form? I'll give you a hint: Think about the name of the form.
                """
        ) as tracker:
            
            self.wait_until_bookmark("funcTerm")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(Write(funcTerm), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("funcTermX")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("funcTermAx2")
            x,y,_ = (funcTerm[3].get_center()+funcTerm[4].get_center())/2+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("funcTermB")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("funcTermC")
            x,y,_ = funcTerm[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("fOut")
            self.play(Unwrite(funcTerm))

            self.wait_until_bookmark("1f")
            cursor.blinking = False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1), CursorMoveTo(cursor, x, y), run_time=0.2)
            
            self.wait_until_bookmark("1x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.1)

            self.wait_until_bookmark("1neg2")
            cursor.blinking=False
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("1x2")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            
            self.wait_until_bookmark("1xM2")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("13")
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("vertexForm")
            x,y,_ = title.get_center()+0.6*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True
                                                                        
            self.wait_until_bookmark("graph")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), Write(cords), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.play(Create(g1))
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Vertex Form")
        
        #Create the coordinate system
        cords = self.add_cords([0,4, 1], [-5, 5, 1], x_ticks=[0,1,2,3,4],y_ticks=[-5,-3,-1,1,3,5]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        a = ValueTracker(1)
        f1 = lambda x: -2*(x-2)**2+3
        g1 = plane.plot(f1, color=BLUE, x_range=[0,4,0.0001])
        f1 = MathTex("f","(x)", "=", "-2","(x-", "2", ")^2", "+", "3", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.2)
        f2 = MathTex("f","(2)", "=", "-2","(2-2)^2", "+", "3", "=3", color=c1t, font_size=fs2).scale(0.9).next_to(a, DOWN, buff=0.2)
        self.add(f1, g1)

        # Action Sequence
        with self.voiceover(
                text="""
                Yep, that's it. Unsurprisingly, the vertex form is called vertex form because it makes it easy to determine the location of the vertex.
                So, how do we find the vertex from the vertex form? First, remember that the <bookmark  mark="vertex"/>vertex is the point where
                the function reaches its minimum or maximum. Since the parabola we have here is facing downwards, the vertex is the highest point.
                Now look at the term of the function. It consists of two parts: The part that is <bookmark mark="square"/>squared, and the <bookmark mark="3"/>three that is added.
                Now, we want to find the value of <bookmark mark="x"/>x for which the value of f is the highest, and we want to find that highest value.
                Now look at the two parts again. The <bookmark mark="square2"/>squared part is multiplied with negative two, so we want it to be as small as possible.
                Since it's squared, it's always greater than or equal to zero, so the best we can do is zero. And we reach the zero, if we plug in two for x.
                Now all that is left is <bookmark mark="three"/> the second part, which only consists of a three. <bookmark mark="sol"/> That means, that the highest value of f is three.
                In summary, we found that the x value of the vertex is two, and that the y value of the vertex is three.
                We found this, because we started from the vertex form and then first, read off how to get<bookmark mark="square3"/> the squared term to zero, and then looked at
                the<bookmark mark="33"/> second part.
                """
        ) as tracker:
            
            self.wait_until_bookmark("vertex")
            x,y,_ = plane.c2p(2,3)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("square")
            cursor.blinking=False
            x,y,_ = (f1[3].get_center()+f1[3].get_center())/2+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("3")
            cursor.blinking=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("x")
            cursor.blinking=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("square2")
            cursor.blinking=False
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("three")
            cursor.blinking=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol")
            cursor.blinking=False
            x,y,_ = f2.get_center()+0.4*DOWN
            self.play(Write(a), Write(f2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("square3")
            cursor.blinking=False
            x,y,_ = f2[4].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("33")
            cursor.blinking=False
            x,y,_ = f2[6].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Vertex Form")
        
        #Create the coordinate system
        cords = self.add_cords([0,4, 1], [-5, 5, 1], x_ticks=[0,1,2,3,4],y_ticks=[-5,-3,-1,1,3,5]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        a = ValueTracker(1)
        f1 = lambda x: -2*(x-2)**2+3
        g1 = plane.plot(f1, color=BLUE, x_range=[0,4,0.0001])
        f1 = MathTex("f","(x)", "=", "-2","(x-", "2", ")^2", "+", "3", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.2)
        f2 = MathTex("f","(2)", "=", "-2","(2-2)^2", "+", "3", "=3", color=c1t, font_size=fs2).scale(0.9).next_to(a, DOWN, buff=0.2)
        self.add(f1, g1)

        # Action Sequence
        with self.voiceover(
                text="""
                Nope, that's wrong. Unsurprisingly, the vertex form is called vertex form because it makes it easy to determine the location of the vertex.
                So, how do we find the vertex from the vertex form? First, remember that the <bookmark  mark="vertex"/>vertex is the point where
                the function reaches its minimum or maximum. Since the parabola we have here is facing downwards, the vertex is the highest point.
                Now look at the term of the function. It consists of two parts: The part that is <bookmark mark="square"/>squared, and the <bookmark mark="3"/>three that is added.
                Now, we want to find the value of <bookmark mark="x"/>x for which the value of f is the highest, and we want to find that highest value.
                Now look at the two parts again. The <bookmark mark="square2"/>squared part is multiplied with negative two, so we want it to be as small as possible.
                Since it's squared, it's always greater than or equal to zero, so the best we can do is zero. And we reach the zero, if we plug in two for x.
                Now all that is left is <bookmark mark="three"/> the second part, which only consists of a three. <bookmark mark="sol"/> That means, that the highest value of f is three.
                In summary, we found that the x value of the vertex is two, and that the y value of the vertex is three.
                We found this, because we started from the vertex form and then first, read off how to get<bookmark mark="square3"/> the squared term to zero, and then looked at
                the<bookmark mark="33"/> second part.
                """
        ) as tracker:
            
            self.wait_until_bookmark("vertex")
            x,y,_ = plane.c2p(2,3)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("square")
            cursor.blinking=False
            x,y,_ = (f1[3].get_center()+f1[3].get_center())/2+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("3")
            cursor.blinking=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("x")
            cursor.blinking=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("square2")
            cursor.blinking=False
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("three")
            cursor.blinking=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol")
            cursor.blinking=False
            x,y,_ = f2.get_center()+0.4*DOWN
            self.play(Write(a), Write(f2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("square3")
            cursor.blinking=False
            x,y,_ = f2[4].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("33")
            cursor.blinking=False
            x,y,_ = f2[6].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Vertex Form")
        
        #Create the coordinate system
        cords = self.add_cords([0,4, 1], [-5, 5, 1], x_ticks=[0,1,2,3,4],y_ticks=[-5,-3,-1,1,3,5]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        a = ValueTracker(1)
        f1 = lambda x: -2*(x-2)**2+3
        g1 = plane.plot(f1, color=BLUE, x_range=[0,4,0.0001])
        f1 = MathTex("f","(x)", "=", "-2","(x-", "2", ")^2", "+", "3", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.2)
        f2 = MathTex("f","(2)", "=", "-2","(2-2)^2", "+", "3", "=3", color=c1t, font_size=fs2).scale(0.9).next_to(a, DOWN, buff=0.2)
        self.add(f1, g1)

        # Action Sequence
        with self.voiceover(
                text="""
                Nope, that's wrong. Unsurprisingly, the vertex form is called vertex form because it makes it easy to determine the location of the vertex.
                So, how do we find the vertex from the vertex form? First, remember that the <bookmark  mark="vertex"/>vertex is the point where
                the function reaches its minimum or maximum. Since the parabola we have here is facing downwards, the vertex is the highest point.
                Now look at the term of the function. It consists of two parts: The part that is <bookmark mark="square"/>squared, and the <bookmark mark="3"/>three that is added.
                Now, we want to find the value of <bookmark mark="x"/>x for which the value of f is the highest, and we want to find that highest value.
                Now look at the two parts again. The <bookmark mark="square2"/>squared part is multiplied with negative two, so we want it to be as small as possible.
                Since it's squared, it's always greater than or equal to zero, so the best we can do is zero. And we reach the zero, if we plug in two for x.
                Now all that is left is <bookmark mark="three"/> the second part, which only consists of a three. <bookmark mark="sol"/> That means, that the highest value of f is three.
                In summary, we found that the x value of the vertex is two, and that the y value of the vertex is three.
                We found this, because we started from the vertex form and then first, read off how to get<bookmark mark="square3"/> the squared term to zero, and then looked at
                the<bookmark mark="33"/> second part.
                """
        ) as tracker:
            
            self.wait_until_bookmark("vertex")
            x,y,_ = plane.c2p(2,3)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("square")
            cursor.blinking=False
            x,y,_ = (f1[3].get_center()+f1[3].get_center())/2+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("3")
            cursor.blinking=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("x")
            cursor.blinking=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("square2")
            cursor.blinking=False
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("three")
            cursor.blinking=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol")
            cursor.blinking=False
            x,y,_ = f2.get_center()+0.4*DOWN
            self.play(Write(a), Write(f2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("square3")
            cursor.blinking=False
            x,y,_ = f2[4].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("33")
            cursor.blinking=False
            x,y,_ = f2[6].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
TASK_Func_4_5_I_3_q = SophiaTaskDefinition(
    answerOptions = ["(-1,-2)", "(1,2)", "(1,-2)", "(-1,2)"],
    correctAnswerIndex = 0,
    questionText = "What are the coordinates of the vertex?"
)
class Func_4_5_I_3_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Vertex Form")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = lambda x: -2*(x-2)**2+3
        f1 = MathTex("f","(x)", "=", "(x+", "1", ")^2", "-", "2", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text="""
                Now your turn. Take the function <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x plus <bookmark mark="one"/> one close bracket squared
                <bookmark mark="two"/>minus two. Luckily for you, it's already in vertex form. Now what is
                the location of the vertex? What is the x value, that we need to plug in, and what is the 
                y value of the vertex?
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("one")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("two")
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Vertex Form")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = lambda x: -2*(x-2)**2+3
        f1 = MathTex("f","(x)", "=", "(x+", "1", ")^2", "-", "2", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1)
        bracket = VGroup(f1[3], f1[4], f1[5])
        f2 = MathTex("\\underbrace{(x+1)^2}_{\\geq0}", color=c1t, font_size=fs2).move_to(bracket)
        f2.shift(bracket.get_top()-f2.get_top())
        a1 = Tex("$\\Downarrow$\\,\\,", "\\,\\,x=-1", font_size=fs2, color=c1t).next_to(f1, DOWN, buff=0.8)
        f3 = MathTex("f(-1)=(-1+1)^2-2=-2", color=c1t, font_size=fs2).scale(0.9).next_to(a1, DOWN, buff=0.5)
        a2 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f3, DOWN, buff=0.5)
        f4 = Tex("Vertex: (-1,-2)", color=c1t, font_size=fs2).next_to(a2, DOWN, buff=0.5)

        f1.move_to(ORIGIN)
        # Action Sequence
        with self.voiceover(
                text="""
                That is correct! Nice work! 
                So our function is <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x plus <bookmark mark="one"/> one close bracket squared
                <bookmark mark="two"/>minus two.
                First, note that the parabola is facing up, so the vertex is the lowest point. <bookmark mark="moveUp"/>
                Now, we want to find the value of<bookmark mark="ofX"/> x for which the value of f is the lowest, and we want to find that lowest value.
                Again, look at the two parts of the function. The <bookmark mark="square"/>squared part is always greater than or equal to zero, so the best we can do is zero.
                And we reach the zero, <bookmark mark="a1"/>if we plug in negative one for x.
                Now all that is left is <bookmark mark="negTwo"/> the second part, which only consists of a negative two.
                <bookmark mark="sol"/> That means, that the lowest value of f is negative two.
                <bookmark mark="summary"/>In summary, we found that<bookmark mark="sum2"/> the x value of the vertex is negative one, and that the y value of the vertex is negative two.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("one")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("two")
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("moveUp")
            self.play(f1.animate.next_to(title, DOWN, buff=1))

            self.wait_until_bookmark("ofX")
            cursor.blinking=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("square")
            cursor.blinking=False
            x,y,_ = f2.get_center()+0.7*DOWN
            self.play(Write(f2), run_time=1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("a1")
            cursor.blinking=False
            x,y,_ = a1[1].get_center()+0.4*DOWN
            self.play(Write(a1), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("negTwo")
            cursor.blinking=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("sol")
            cursor.blinking=False
            x,y,_ = f3.get_center()+0.4*DOWN
            self.play(Write(f3), CursorMoveTo(cursor, x, y), run_time=0.6)
            cursor.blinking=True

            self.wait_until_bookmark("summary")
            cursor.blinking=False
            x,y,_ = a2.get_center()+0.4*RIGHT
            self.play(Write(a2), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("sum2")
            cursor.blinking=False
            x,y,_ = f4.get_center()+0.4*DOWN
            self.play(Write(f4), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Vertex Form")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = lambda x: -2*(x-2)**2+3
        f1 = MathTex("f","(x)", "=", "(x+", "1", ")^2", "-", "2", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1)
        bracket = VGroup(f1[3], f1[4], f1[5])
        f2 = MathTex("\\underbrace{(x+1)^2}_{\\geq0}", color=c1t, font_size=fs2).move_to(bracket)
        f2.shift(bracket.get_top()-f2.get_top())
        a1 = Tex("$\\Downarrow$\\,\\,", "\\,\\,x=-1", font_size=fs2, color=c1t).next_to(f1, DOWN, buff=0.8)
        f3 = MathTex("f(-1)=(-1+1)^2-2=-2", color=c1t, font_size=fs2).scale(0.9).next_to(a1, DOWN, buff=0.5)
        a2 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f3, DOWN, buff=0.5)
        f4 = Tex("Vertex: (-1,-2)", color=c1t, font_size=fs2).next_to(a2, DOWN, buff=0.5)

        f1.move_to(ORIGIN)
        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right. 
                So our function is <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x plus <bookmark mark="one"/> one close bracket squared
                <bookmark mark="two"/>minus two.
                First, note that the parabola is facing up, so the vertex is the lowest point. <bookmark mark="moveUp"/>
                Now, we want to find the value of<bookmark mark="ofX"/> x for which the value of f is the lowest, and we want to find that lowest value.
                Again, look at the two parts of the function. The <bookmark mark="square"/>squared part is always greater than or equal to zero, so the best we can do is zero.
                And we reach the zero, <bookmark mark="a1"/>if we plug in negative one for x.
                Now all that is left is <bookmark mark="negTwo"/> the second part, which only consists of a negative two.
                <bookmark mark="sol"/> That means, that the lowest value of f is negative two.
                <bookmark mark="summary"/>In summary, we found that<bookmark mark="sum2"/> the x value of the vertex is negative one, and that the y value of the vertex is negative two.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("one")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("two")
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("moveUp")
            self.play(f1.animate.next_to(title, DOWN, buff=1))

            self.wait_until_bookmark("ofX")
            cursor.blinking=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("square")
            cursor.blinking=False
            x,y,_ = f2.get_center()+0.7*DOWN
            self.play(Write(f2), run_time=1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("a1")
            cursor.blinking=False
            x,y,_ = a1[1].get_center()+0.4*DOWN
            self.play(Write(a1), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("negTwo")
            cursor.blinking=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("sol")
            cursor.blinking=False
            x,y,_ = f3.get_center()+0.4*DOWN
            self.play(Write(f3), CursorMoveTo(cursor, x, y), run_time=0.6)
            cursor.blinking=True

            self.wait_until_bookmark("summary")
            cursor.blinking=False
            x,y,_ = a2.get_center()+0.4*RIGHT
            self.play(Write(a2), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("sum2")
            cursor.blinking=False
            x,y,_ = f4.get_center()+0.4*DOWN
            self.play(Write(f4), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_3_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Vertex Form")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = lambda x: -2*(x-2)**2+3
        f1 = MathTex("f","(x)", "=", "(x+", "1", ")^2", "-", "2", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1)
        bracket = VGroup(f1[3], f1[4], f1[5])
        f2 = MathTex("\\underbrace{(x+1)^2}_{\\geq0}", color=c1t, font_size=fs2).move_to(bracket)
        f2.shift(bracket.get_top()-f2.get_top())
        a1 = Tex("$\\Downarrow$\\,\\,", "\\,\\,x=-1", font_size=fs2, color=c1t).next_to(f1, DOWN, buff=0.8)
        f3 = MathTex("f(-1)=(-1+1)^2-2=-2", color=c1t, font_size=fs2).scale(0.9).next_to(a1, DOWN, buff=0.5)
        a2 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f3, DOWN, buff=0.5)
        f4 = Tex("Vertex: (-1,-2)", color=c1t, font_size=fs2).next_to(a2, DOWN, buff=0.5)

        f1.move_to(ORIGIN)
        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right.
                So our function is <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x plus <bookmark mark="one"/> one close bracket squared
                <bookmark mark="two"/>minus two.
                First, note that the parabola is facing up, so the vertex is the lowest point. <bookmark mark="moveUp"/>
                Now, we want to find the value of<bookmark mark="ofX"/> x for which the value of f is the lowest, and we want to find that lowest value.
                Again, look at the two parts of the function. The <bookmark mark="square"/>squared part is always greater than or equal to zero, so the best we can do is zero.
                And we reach the zero, <bookmark mark="a1"/>if we plug in negative one for x.
                Now all that is left is <bookmark mark="negTwo"/> the second part, which only consists of a negative two.
                <bookmark mark="sol"/> That means, that the lowest value of f is negative two.
                <bookmark mark="summary"/>In summary, we found that<bookmark mark="sum2"/> the x value of the vertex is negative one, and that the y value of the vertex is negative two.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("one")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("two")
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("moveUp")
            self.play(f1.animate.next_to(title, DOWN, buff=1))

            self.wait_until_bookmark("ofX")
            cursor.blinking=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("square")
            cursor.blinking=False
            x,y,_ = f2.get_center()+0.7*DOWN
            self.play(Write(f2), run_time=1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("a1")
            cursor.blinking=False
            x,y,_ = a1[1].get_center()+0.4*DOWN
            self.play(Write(a1), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("negTwo")
            cursor.blinking=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("sol")
            cursor.blinking=False
            x,y,_ = f3.get_center()+0.4*DOWN
            self.play(Write(f3), CursorMoveTo(cursor, x, y), run_time=0.6)
            cursor.blinking=True

            self.wait_until_bookmark("summary")
            cursor.blinking=False
            x,y,_ = a2.get_center()+0.4*RIGHT
            self.play(Write(a2), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("sum2")
            cursor.blinking=False
            x,y,_ = f4.get_center()+0.4*DOWN
            self.play(Write(f4), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_3_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Vertex Form")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = lambda x: -2*(x-2)**2+3
        f1 = MathTex("f","(x)", "=", "(x+", "1", ")^2", "-", "2", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1)
        bracket = VGroup(f1[3], f1[4], f1[5])
        f2 = MathTex("\\underbrace{(x+1)^2}_{\\geq0}", color=c1t, font_size=fs2).move_to(bracket)
        f2.shift(bracket.get_top()-f2.get_top())
        a1 = Tex("$\\Downarrow$\\,\\,", "\\,\\,x=-1", font_size=fs2, color=c1t).next_to(f1, DOWN, buff=0.8)
        f3 = MathTex("f(-1)=(-1+1)^2-2=-2", color=c1t, font_size=fs2).scale(0.9).next_to(a1, DOWN, buff=0.5)
        a2 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f3, DOWN, buff=0.5)
        f4 = Tex("Vertex: (-1,-2)", color=c1t, font_size=fs2).next_to(a2, DOWN, buff=0.5)

        f1.move_to(ORIGIN)
        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right. 
                So our function is <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x plus <bookmark mark="one"/> one close bracket squared
                <bookmark mark="two"/>minus two.
                First, note that the parabola is facing up, so the vertex is the lowest point. <bookmark mark="moveUp"/>
                Now, we want to find the value of<bookmark mark="ofX"/> x for which the value of f is the lowest, and we want to find that lowest value.
                Again, look at the two parts of the function. The <bookmark mark="square"/>squared part is always greater than or equal to zero, so the best we can do is zero.
                And we reach the zero, <bookmark mark="a1"/>if we plug in negative one for x.
                Now all that is left is <bookmark mark="negTwo"/> the second part, which only consists of a negative two.
                <bookmark mark="sol"/> That means, that the lowest value of f is negative two.
                <bookmark mark="summary"/>In summary, we found that<bookmark mark="sum2"/> the x value of the vertex is negative one, and that the y value of the vertex is negative two.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("one")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("two")
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("moveUp")
            self.play(f1.animate.next_to(title, DOWN, buff=1))

            self.wait_until_bookmark("ofX")
            cursor.blinking=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("square")
            cursor.blinking=False
            x,y,_ = f2.get_center()+0.7*DOWN
            self.play(Write(f2), run_time=1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("a1")
            cursor.blinking=False
            x,y,_ = a1[1].get_center()+0.4*DOWN
            self.play(Write(a1), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("negTwo")
            cursor.blinking=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("sol")
            cursor.blinking=False
            x,y,_ = f3.get_center()+0.4*DOWN
            self.play(Write(f3), CursorMoveTo(cursor, x, y), run_time=0.6)
            cursor.blinking=True

            self.wait_until_bookmark("summary")
            cursor.blinking=False
            x,y,_ = a2.get_center()+0.4*RIGHT
            self.play(Write(a2), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("sum2")
            cursor.blinking=False
            x,y,_ = f4.get_center()+0.4*DOWN
            self.play(Write(f4), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)




#####################################
#####################################
TASK_Func_4_5_I_4_q = SophiaTaskDefinition(
    answerOptions = ["(a,c)", "(b,c)", "(a+b,c)", "(-b,c)"],
    correctAnswerIndex = 3,
    questionText = "What are the coordinates of the vertex?"
)
class Func_4_5_I_4_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Vertex Form")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = lambda x: -2*(x-2)**2+3
        f1 = MathTex("f","(x)", "=", "a\\cdot", "(x+", "b", ")^2", "+", "c", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text="""
                Ok, let's make our lives easy now.
                Consider a quadratic function in the vertex form: <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                <bookmark mark="a"/> "a" times open bracket <bookmark mark="x1"/>x plus <bookmark mark="b"/> b close bracket squared
                <bookmark mark="c"/>plus c.
                Let me tell you: Just by looking at this function, you can tell the coordinates of the vertex.
                What are they?
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[0]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(Write(f1[1]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(Write(f1[2]), Write(f1[3]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(Write(f1[4]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(Write(f1[5]), Write(f1[6]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("c")
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(Write(f1[-2]), Write(f1[-1]), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)



class Func_4_5_I_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Vertex Form")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "a\\cdot", "(x+", "b", ")^2", "+", "c", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1)
        bracket = VGroup(f1[4], f1[5], f1[6])
        f2 = MathTex("\\underbrace{(x+b)^2}_{\\geq0}", color=c1t, font_size=fs2).move_to(bracket)
        f2.shift(bracket.get_top()-f2.get_top())
        a1 = Tex("$\\Downarrow$\\,\\,", "\\,\\,x=-b", font_size=fs2, color=c1t).next_to(f1, DOWN, buff=0.8)
        f3 = MathTex("f(-b)=a\\cdot(-b+b)^2+c=c", color=c1t, font_size=fs2).scale(0.9).next_to(a1, DOWN, buff=0.5)
        a2 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f3, DOWN, buff=0.5)
        f4 = Tex("Vertex: (-b,c)", color=c1t, font_size=fs2).next_to(a2, DOWN, buff=0.5)

        f1.move_to(ORIGIN)
        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right. 
                So the general vertex form is <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                <bookmark mark="a"/> "a" times open bracket <bookmark mark="x1"/>x plus <bookmark mark="b"/> b close bracket squared
                <bookmark mark="c"/>plus c. 
                We don't know if the parabola is facing up or down, so we don't know if the vertex is the highest or lowest point.  <bookmark mark="moveUp"/>
                But that doesn't matter, since in both cases, we want to find the <bookmark mark="ofX"/>x value that makes the squared term be as small as possible.
                Again, look at the two parts of the function. The <bookmark mark="square"/>squared part is always greater than or equal to zero, so the best we can do is zero.
                And we reach the zero, <bookmark mark="a1"/>if we plug in negative b for x.
                Now all that is left is <bookmark mark="negTwo"/> the second part, which only consists of a constant c.
                <bookmark mark="sol"/> That means, that the extreme value of f is equal to c.
                <bookmark mark="summary"/>In summary, we found that<bookmark mark="sum2"/> the x value of the vertex is negative b, and that the y value of the vertex is equal to
                the constant c.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[0]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(Write(f1[1]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(Write(f1[2]), Write(f1[3]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(Write(f1[4]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(Write(f1[5]), Write(f1[6]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("c")
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(Write(f1[-2]), Write(f1[-1]), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("moveUp")
            self.play(f1.animate.next_to(title, DOWN, buff=1))

            self.wait_until_bookmark("ofX")
            cursor.blinking=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("square")
            cursor.blinking=False
            x,y,_ = f2.get_center()+0.7*DOWN
            self.play(Write(f2), run_time=1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("a1")
            cursor.blinking=False
            x,y,_ = a1[1].get_center()+0.4*DOWN
            self.play(Write(a1), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("negTwo")
            cursor.blinking=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("sol")
            cursor.blinking=False
            x,y,_ = f3.get_center()+0.4*DOWN
            self.play(Write(f3), CursorMoveTo(cursor, x, y), run_time=0.6)
            cursor.blinking=True

            self.wait_until_bookmark("summary")
            cursor.blinking=False
            x,y,_ = a2.get_center()+0.4*RIGHT
            self.play(Write(a2), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("sum2")
            cursor.blinking=False
            x,y,_ = f4.get_center()+0.4*DOWN
            self.play(Write(f4), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Vertex Form")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "a\\cdot", "(x+", "b", ")^2", "+", "c", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1)
        bracket = VGroup(f1[4], f1[5], f1[6])
        f2 = MathTex("\\underbrace{(x+b)^2}_{\\geq0}", color=c1t, font_size=fs2).move_to(bracket)
        f2.shift(bracket.get_top()-f2.get_top())
        a1 = Tex("$\\Downarrow$\\,\\,", "\\,\\,x=-b", font_size=fs2, color=c1t).next_to(f1, DOWN, buff=0.8)
        f3 = MathTex("f(-b)=a\\cdot(-b+b)^2+c=c", color=c1t, font_size=fs2).scale(0.9).next_to(a1, DOWN, buff=0.5)
        a2 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f3, DOWN, buff=0.5)
        f4 = Tex("Vertex: (-b,c)", color=c1t, font_size=fs2).next_to(a2, DOWN, buff=0.5)

        f1.move_to(ORIGIN)
        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right. 
                So the general vertex form is <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                <bookmark mark="a"/> "a" times open bracket <bookmark mark="x1"/>x plus <bookmark mark="b"/> b close bracket squared
                <bookmark mark="c"/>plus c. 
                We don't know if the parabola is facing up or down, so we don't know if the vertex is the highest or lowest point.  <bookmark mark="moveUp"/>
                But that doesn't matter, since in both cases, we want to find the <bookmark mark="ofX"/>x value that makes the squared term be as small as possible.
                Again, look at the two parts of the function. The <bookmark mark="square"/>squared part is always greater than or equal to zero, so the best we can do is zero.
                And we reach the zero, <bookmark mark="a1"/>if we plug in negative b for x.
                Now all that is left is <bookmark mark="negTwo"/> the second part, which only consists of a constant c.
                <bookmark mark="sol"/> That means, that the extreme value of f is equal to c.
                <bookmark mark="summary"/>In summary, we found that<bookmark mark="sum2"/> the x value of the vertex is negative b, and that the y value of the vertex is equal to
                the constant c.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[0]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(Write(f1[1]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(Write(f1[2]), Write(f1[3]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(Write(f1[4]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(Write(f1[5]), Write(f1[6]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("c")
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(Write(f1[-2]), Write(f1[-1]), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("moveUp")
            self.play(f1.animate.next_to(title, DOWN, buff=1))

            self.wait_until_bookmark("ofX")
            cursor.blinking=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("square")
            cursor.blinking=False
            x,y,_ = f2.get_center()+0.7*DOWN
            self.play(Write(f2), run_time=1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("a1")
            cursor.blinking=False
            x,y,_ = a1[1].get_center()+0.4*DOWN
            self.play(Write(a1), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("negTwo")
            cursor.blinking=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("sol")
            cursor.blinking=False
            x,y,_ = f3.get_center()+0.4*DOWN
            self.play(Write(f3), CursorMoveTo(cursor, x, y), run_time=0.6)
            cursor.blinking=True

            self.wait_until_bookmark("summary")
            cursor.blinking=False
            x,y,_ = a2.get_center()+0.4*RIGHT
            self.play(Write(a2), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("sum2")
            cursor.blinking=False
            x,y,_ = f4.get_center()+0.4*DOWN
            self.play(Write(f4), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_4_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Vertex Form")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "a\\cdot", "(x+", "b", ")^2", "+", "c", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1)
        bracket = VGroup(f1[4], f1[5], f1[6])
        f2 = MathTex("\\underbrace{(x+b)^2}_{\\geq0}", color=c1t, font_size=fs2).move_to(bracket)
        f2.shift(bracket.get_top()-f2.get_top())
        a1 = Tex("$\\Downarrow$\\,\\,", "\\,\\,x=-b", font_size=fs2, color=c1t).next_to(f1, DOWN, buff=0.8)
        f3 = MathTex("f(-b)=a\\cdot(-b+b)^2+c=c", color=c1t, font_size=fs2).scale(0.9).next_to(a1, DOWN, buff=0.5)
        a2 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f3, DOWN, buff=0.5)
        f4 = Tex("Vertex: (-b,c)", color=c1t, font_size=fs2).next_to(a2, DOWN, buff=0.5)

        f1.move_to(ORIGIN)
        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right. 
                So the general vertex form is <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                <bookmark mark="a"/> "a" times open bracket <bookmark mark="x1"/>x plus <bookmark mark="b"/> b close bracket squared
                <bookmark mark="c"/>plus c. 
                We don't know if the parabola is facing up or down, so we don't know if the vertex is the highest or lowest point.  <bookmark mark="moveUp"/>
                But that doesn't matter, since in both cases, we want to find the <bookmark mark="ofX"/>x value that makes the squared term be as small as possible.
                Again, look at the two parts of the function. The <bookmark mark="square"/>squared part is always greater than or equal to zero, so the best we can do is zero.
                And we reach the zero, <bookmark mark="a1"/>if we plug in negative b for x.
                Now all that is left is <bookmark mark="negTwo"/> the second part, which only consists of a constant c.
                <bookmark mark="sol"/> That means, that the extreme value of f is equal to c.
                <bookmark mark="summary"/>In summary, we found that<bookmark mark="sum2"/> the x value of the vertex is negative b, and that the y value of the vertex is equal to
                the constant c.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[0]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(Write(f1[1]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(Write(f1[2]), Write(f1[3]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(Write(f1[4]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(Write(f1[5]), Write(f1[6]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("c")
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(Write(f1[-2]), Write(f1[-1]), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("moveUp")
            self.play(f1.animate.next_to(title, DOWN, buff=1))

            self.wait_until_bookmark("ofX")
            cursor.blinking=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("square")
            cursor.blinking=False
            x,y,_ = f2.get_center()+0.7*DOWN
            self.play(Write(f2), run_time=1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("a1")
            cursor.blinking=False
            x,y,_ = a1[1].get_center()+0.4*DOWN
            self.play(Write(a1), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("negTwo")
            cursor.blinking=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("sol")
            cursor.blinking=False
            x,y,_ = f3.get_center()+0.4*DOWN
            self.play(Write(f3), CursorMoveTo(cursor, x, y), run_time=0.6)
            cursor.blinking=True

            self.wait_until_bookmark("summary")
            cursor.blinking=False
            x,y,_ = a2.get_center()+0.4*RIGHT
            self.play(Write(a2), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("sum2")
            cursor.blinking=False
            x,y,_ = f4.get_center()+0.4*DOWN
            self.play(Write(f4), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_4_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Vertex Form")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "a\\cdot", "(x+", "b", ")^2", "+", "c", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1)
        bracket = VGroup(f1[4], f1[5], f1[6])
        f2 = MathTex("\\underbrace{(x+b)^2}_{\\geq0}", color=c1t, font_size=fs2).move_to(bracket)
        f2.shift(bracket.get_top()-f2.get_top())
        a1 = Tex("$\\Downarrow$\\,\\,", "\\,\\,x=-b", font_size=fs2, color=c1t).next_to(f1, DOWN, buff=0.8)
        f3 = MathTex("f(-b)=a\\cdot(-b+b)^2+c=c", color=c1t, font_size=fs2).scale(0.9).next_to(a1, DOWN, buff=0.5)
        a2 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f3, DOWN, buff=0.5)
        f4 = Tex("Vertex: (-b,c)", color=c1t, font_size=fs2).next_to(a2, DOWN, buff=0.5)

        f1.move_to(ORIGIN)
        # Action Sequence
        with self.voiceover(
                text="""
                Correct, well done, well done. 
                So the general vertex form is <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                <bookmark mark="a"/> "a" times open bracket <bookmark mark="x1"/>x plus <bookmark mark="b"/> b close bracket squared
                <bookmark mark="c"/>plus c. 
                We don't know if the parabola is facing up or down, so we don't know if the vertex is the highest or lowest point.  <bookmark mark="moveUp"/>
                But that doesn't matter, since in both cases, we want to find the <bookmark mark="ofX"/>x value that makes the squared term be as small as possible.
                Again, look at the two parts of the function. The <bookmark mark="square"/>squared part is always greater than or equal to zero, so the best we can do is zero.
                And we reach the zero, <bookmark mark="a1"/>if we plug in negative b for x.
                Now all that is left is <bookmark mark="negTwo"/> the second part, which only consists of a constant c.
                <bookmark mark="sol"/> That means, that the extreme value of f is equal to c.
                <bookmark mark="summary"/>In summary, we found that<bookmark mark="sum2"/> the x value of the vertex is negative b, and that the y value of the vertex is equal to
                the constant c.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[0]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(Write(f1[1]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(Write(f1[2]), Write(f1[3]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(Write(f1[4]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(Write(f1[5]), Write(f1[6]), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("c")
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(Write(f1[-2]), Write(f1[-1]), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("moveUp")
            self.play(f1.animate.next_to(title, DOWN, buff=1))

            self.wait_until_bookmark("ofX")
            cursor.blinking=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("square")
            cursor.blinking=False
            x,y,_ = f2.get_center()+0.7*DOWN
            self.play(Write(f2), run_time=1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("a1")
            cursor.blinking=False
            x,y,_ = a1[1].get_center()+0.4*DOWN
            self.play(Write(a1), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("negTwo")
            cursor.blinking=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("sol")
            cursor.blinking=False
            x,y,_ = f3.get_center()+0.4*DOWN
            self.play(Write(f3), CursorMoveTo(cursor, x, y), run_time=0.6)
            cursor.blinking=True

            self.wait_until_bookmark("summary")
            cursor.blinking=False
            x,y,_ = a2.get_center()+0.4*RIGHT
            self.play(Write(a2), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("sum2")
            cursor.blinking=False
            x,y,_ = f4.get_center()+0.4*DOWN
            self.play(Write(f4), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
TASK_Func_4_5_I_5_q = SophiaTaskDefinition(
    answerOptions = ["We can easily determine the location of the vertex", "We can easily determine the location of the zeros", "We can easily determine the location of the y-intercept"],
    correctAnswerIndex = 1,
    questionText = "What is the advantage of the factored form?"
)
class Func_4_5_I_5_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Factored Form")

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x-", "2)", "\\cdot", "(x+", "1", ")", color=c1t, font_size=fs2)
        f = lambda x: (x-2)*(x+1)
        g = plane.plot(f, color=BLUE, x_range=[-2.2,2.2,0.001])

        # Action Sequence
        with self.voiceover(
                text="""
                New Video, new form of quadratic functions. Now we're looking at the factored form.
                Consider the following example: <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x minus <bookmark mark="2"/>2 close bracket times
                open bracket <bookmark mark="x2"/>x plus <bookmark mark="1"/>1 close bracket.
                <bookmark mark="cords"/> If you look at <bookmark mark="plot"/>the plot of this function,
                and compare it with the factored form of its term, can you think of what the advantage
                of the factored form might be?
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("2")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x2")
            x,y,_ = f1[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("1")
            x,y,_ = f1[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), f1.animate.next_to(cords, DOWN, buff=0.6))

            self.wait_until_bookmark("plot")
            cursor.blinking=False
            x,y,_ = g.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g.get_end())))
            self.play(Create(g))
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Factored Form")

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x-", "2)", "\\cdot", "(x+", "1", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        b1b = MathTex("\\underbrace{(x-2)}_{=0\\text{ if }x=2}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex("\\underbrace{(x+1)}_{=0\\text{ if }x=-1}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top())
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sol = Tex("Zeros at ", "$x=2$", " and ", "$x=-1$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        calcs = Group(f1, b1b, b2b, a, sol)

        f = lambda x: (x-2)*(x+1)
        g = plane.plot(f, color=BLUE, x_range=[-2.2,2.2,0.001])

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not what the factored form is good for.
                Let's go back to our example function. <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x minus <bookmark mark="2"/>2 close bracket times
                open bracket <bookmark mark="x2"/>x plus <bookmark mark="1"/>1 close bracket.
                Say we want to determine the zeros of that function. F is written as a product of two factors.
                The first is the <bookmark mark="b1"/> bracket x minus 2, and the second is the <bookmark mark="b2"/> bracket x plus 1.
                Now for the function to be zero, we need the product to be zero, which is the case if at least
                one of the factors is zero. The first factor is zero <bookmark mark="b1b"/>if x equals 2, an the second factor is zero
                <bookmark mark="b2b"/>if x equals negative 1.
                This means <bookmark mark="arrow"/> that the zeros of the function are at<bookmark mark="z1"/> x equals 2 and
                <bookmark mark="z2"/> at x equals negative 1.
                We can<bookmark mark="cords"/> also verify this graphically: When we look at the <bookmark mark="plot"/>plot of the function,
                we can see that one of the zeros is at<bookmark mark="zg1"/> x equals 2, and the other one is at<bookmark mark="zg2"/> x equals negative 1.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("2")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x2")
            x,y,_ = f1[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("1")
            x,y,_ = f1[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("b1")
            cursor.blinking=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("b1b")
            cursor.blinking=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("arrow")
            cursor.blinking=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("z1")
            cursor.blinking=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), calcs.animate.next_to(cords, DOWN, buff=0.6))

            self.wait_until_bookmark("plot")
            cursor.blinking=False
            x,y,_ = g.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g.get_end())))
            self.play(Create(g))
            cursor.blinking=True

            self.wait_until_bookmark("zg1")
            cursor.blinking=False
            x,y,_ = plane.c2p(2,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().clear_updaters().set_color(GREEN))

            self.wait_until_bookmark("zg2")
            x,y,_ = plane.c2p(-1,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().clear_updaters().set_color(GREEN))
            self.wait(0.5)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_5_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Factored Form")

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x-", "2)", "\\cdot", "(x+", "1", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        b1b = MathTex("\\underbrace{(x-2)}_{=0\\text{ if }x=2}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex("\\underbrace{(x+1)}_{=0\\text{ if }x=-1}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top())
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sol = Tex("Zeros at ", "$x=2$", " and ", "$x=-1$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        calcs = Group(f1, b1b, b2b, a, sol)

        f = lambda x: (x-2)*(x+1)
        g = plane.plot(f, color=BLUE, x_range=[-2.2,2.2,0.001])

        # Action Sequence
        with self.voiceover(
                text="""
                Yes, that's exactly what the factored form is good for.
                Let's go back to our example function. <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x minus <bookmark mark="2"/>2 close bracket times
                open bracket <bookmark mark="x2"/>x plus <bookmark mark="1"/>1 close bracket.
                Say we want to determine the zeros of that function. F is written as a product of two factors.
                The first is the <bookmark mark="b1"/> bracket x minus 2, and the second is the <bookmark mark="b2"/> bracket x plus 1.
                Now for the function to be zero, we need the product to be zero, which is the case if at least
                one of the factors is zero. The first factor is zero <bookmark mark="b1b"/>if x equals 2, an the second factor is zero
                <bookmark mark="b2b"/>if x equals negative 1.
                This means <bookmark mark="arrow"/> that the zeros of the function are at<bookmark mark="z1"/> x equals 2 and
                <bookmark mark="z2"/> at x equals negative 1.
                We can<bookmark mark="cords"/> also verify this graphically: When we look at the <bookmark mark="plot"/>plot of the function,
                we can see that one of the zeros is at<bookmark mark="zg1"/> x equals 2, and the other one is at<bookmark mark="zg2"/> x equals negative 1.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("2")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x2")
            x,y,_ = f1[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("1")
            x,y,_ = f1[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("b1")
            cursor.blinking=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("b1b")
            cursor.blinking=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("arrow")
            cursor.blinking=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("z1")
            cursor.blinking=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), calcs.animate.next_to(cords, DOWN, buff=0.6))

            self.wait_until_bookmark("plot")
            cursor.blinking=False
            x,y,_ = g.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g.get_end())))
            self.play(Create(g))
            cursor.blinking=True

            self.wait_until_bookmark("zg1")
            cursor.blinking=False
            x,y,_ = plane.c2p(2,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().clear_updaters().set_color(GREEN))

            self.wait_until_bookmark("zg2")
            x,y,_ = plane.c2p(-1,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().clear_updaters().set_color(GREEN))
            self.wait(0.5)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_5_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Factored Form")

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x-", "2)", "\\cdot", "(x+", "1", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        b1b = MathTex("\\underbrace{(x-2)}_{=0\\text{ if }x=2}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex("\\underbrace{(x+1)}_{=0\\text{ if }x=-1}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top())
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sol = Tex("Zeros at ", "$x=2$", " and ", "$x=-1$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        calcs = Group(f1, b1b, b2b, a, sol)

        f = lambda x: (x-2)*(x+1)
        g = plane.plot(f, color=BLUE, x_range=[-2.2,2.2,0.001])

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not what the factored form is good for.
                Let's go back to our example function. <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x minus <bookmark mark="2"/>2 close bracket times
                open bracket <bookmark mark="x2"/>x plus <bookmark mark="1"/>1 close bracket.
                Say we want to determine the zeros of that function. F is written as a product of two factors.
                The first is the <bookmark mark="b1"/> bracket x minus 2, and the second is the <bookmark mark="b2"/> bracket x plus 1.
                Now for the function to be zero, we need the product to be zero, which is the case if at least
                one of the factors is zero. The first factor is zero <bookmark mark="b1b"/>if x equals 2, an the second factor is zero
                <bookmark mark="b2b"/>if x equals negative 1.
                This means <bookmark mark="arrow"/> that the zeros of the function are at<bookmark mark="z1"/> x equals 2 and
                <bookmark mark="z2"/> at x equals negative 1.
                We can<bookmark mark="cords"/> also verify this graphically: When we look at the <bookmark mark="plot"/>plot of the function,
                we can see that one of the zeros is at<bookmark mark="zg1"/> x equals 2, and the other one is at<bookmark mark="zg2"/> x equals negative 1.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("2")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x2")
            x,y,_ = f1[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("1")
            x,y,_ = f1[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("b1")
            cursor.blinking=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("b1b")
            cursor.blinking=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("arrow")
            cursor.blinking=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("z1")
            cursor.blinking=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), calcs.animate.next_to(cords, DOWN, buff=0.6))

            self.wait_until_bookmark("plot")
            cursor.blinking=False
            x,y,_ = g.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g.get_end())))
            self.play(Create(g))
            cursor.blinking=True

            self.wait_until_bookmark("zg1")
            cursor.blinking=False
            x,y,_ = plane.c2p(2,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().clear_updaters().set_color(GREEN))

            self.wait_until_bookmark("zg2")
            x,y,_ = plane.c2p(-1,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().clear_updaters().set_color(GREEN))
            self.wait(0.5)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
TASK_Func_4_5_I_6_q = SophiaTaskDefinition(
    answerOptions = ["(-2,-3)", "(2,-3)", "(-2,3)", "(2,3)"],
    correctAnswerIndex = 2,
    questionText = "Where are the two zeros of $f(x)=(x+2)(x-3)$?"
)
class Func_4_5_I_6_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Factored Form")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x+", "2)", "\\cdot", "(x-", "3", ")", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text="""
                Look at this quadratic function in factored form <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x plus <bookmark mark="2"/>2 close bracket times
                open bracket <bookmark mark="x2"/>x minus <bookmark mark="3"/>3 close bracket.
                What are the zeroes of this function?
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("2")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("x2")
            x,y,_ = f1[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("3")
            x,y,_ = f1[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Factored Form")

        #Create the coordinate system
        cords = self.add_cords([-3,3, 1], [-10, 10, 2], x_ticks=[-3,-2,-1,1,2,3],y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
        plane = cords[0]

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True).shift(UP)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x+", "2)", "\\cdot", "(x-", "3", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        b1b = MathTex("\\underbrace{(x+2)}_{0\\text{ if }x=-2}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex("\\underbrace{(x-3)}_{0\\text{ if }x=3}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top())
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sol = Tex("Zeros at ", "$x=-2$", " and ", "$x=3$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        calcs = Group(f1, b1b, b2b, a, sol)

        f = lambda x: (x+2)*(x-3)
        g = plane.plot(f, color=BLUE, x_range=[-3.1,3.1,0.001])

        # Action Sequence
        with self.voiceover(
                text="""
                No, those are not the two zeros.
                So look at the function <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x plus <bookmark mark="2"/>2 close bracket times
                open bracket <bookmark mark="x2"/>x minus <bookmark mark="3"/>3 close bracket.
                Say we want to determine the zeros of that function. f is written as a product of two factors.
                The first is the <bookmark mark="b1"/> bracket x plus 2, and the second is the <bookmark mark="b2"/> bracket x minus 3.
                Now for the function to be zero, we need the product to be zero, which is the case if at least
                one of the factors is zero. The first factor is zero <bookmark mark="b1b"/>if x equals negative 2, an the second factor is zero
                <bookmark mark="b2b"/>if x equals 3.
                This means <bookmark mark="arrow"/> that the zeros of the function are at<bookmark mark="z1"/> x equals negative 2 and
                <bookmark mark="z2"/> at x equals 3.
                We can<bookmark mark="cords"/> also verify this graphically: When we look at the <bookmark mark="plot"/>plot of the function,
                we can see that one of the zeros is at<bookmark mark="zg1"/> x equals negative 2, and the other one is at<bookmark mark="zg2"/> x equals 3.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("2")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("x2")
            x,y,_ = f1[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("3")
            x,y,_ = f1[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("b1")
            cursor.blinking=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("b1b")
            cursor.blinking=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("arrow")
            cursor.blinking=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("z1")
            cursor.blinking=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), calcs.animate.next_to(cords, DOWN, buff=0.6))

            self.wait_until_bookmark("plot")
            cursor.blinking=False
            x,y,_ = g.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g.get_end())))
            self.play(Create(g))
            cursor.blinking=True

            self.wait_until_bookmark("zg1")
            cursor.blinking=False
            x,y,_ = plane.c2p(-2,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().clear_updaters().set_color(GREEN))

            self.wait_until_bookmark("zg2")
            x,y,_ = plane.c2p(3,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().clear_updaters().set_color(GREEN))
            self.wait(0.5)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_6_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Factored Form")

        #Create the coordinate system
        cords = self.add_cords([-3,3, 1], [-10, 10, 2], x_ticks=[-3,-2,-1,1,2,3],y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
        plane = cords[0]

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True).shift(UP)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x+", "2)", "\\cdot", "(x-", "3", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        b1b = MathTex("\\underbrace{(x+2)}_{0\\text{ if }x=-2}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex("\\underbrace{(x-3)}_{0\\text{ if }x=3}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top())
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sol = Tex("Zeros at ", "$x=-2$", " and ", "$x=3$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        calcs = Group(f1, b1b, b2b, a, sol)

        f = lambda x: (x+2)*(x-3)
        g = plane.plot(f, color=BLUE, x_range=[-3.1,3.1,0.001])

        # Action Sequence
        with self.voiceover(
                text="""
                No, those are not the two zeros.
                So look at the function <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x plus <bookmark mark="2"/>2 close bracket times
                open bracket <bookmark mark="x2"/>x minus <bookmark mark="3"/>3 close bracket.
                Say we want to determine the zeros of that function. f is written as a product of two factors.
                The first is the <bookmark mark="b1"/> bracket x plus 2, and the second is the <bookmark mark="b2"/> bracket x minus 3.
                Now for the function to be zero, we need the product to be zero, which is the case if at least
                one of the factors is zero. The first factor is zero <bookmark mark="b1b"/>if x equals negative 2, an the second factor is zero
                <bookmark mark="b2b"/>if x equals 3.
                This means <bookmark mark="arrow"/> that the zeros of the function are at<bookmark mark="z1"/> x equals negative 2 and
                <bookmark mark="z2"/> at x equals 3.
                We can<bookmark mark="cords"/> also verify this graphically: When we look at the <bookmark mark="plot"/>plot of the function,
                we can see that one of the zeros is at<bookmark mark="zg1"/> x equals negative 2, and the other one is at<bookmark mark="zg2"/> x equals 3.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("2")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("x2")
            x,y,_ = f1[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("3")
            x,y,_ = f1[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("b1")
            cursor.blinking=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("b1b")
            cursor.blinking=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("arrow")
            cursor.blinking=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("z1")
            cursor.blinking=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), calcs.animate.next_to(cords, DOWN, buff=0.6))

            self.wait_until_bookmark("plot")
            cursor.blinking=False
            x,y,_ = g.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g.get_end())))
            self.play(Create(g))
            cursor.blinking=True

            self.wait_until_bookmark("zg1")
            cursor.blinking=False
            x,y,_ = plane.c2p(-2,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().clear_updaters().set_color(GREEN))

            self.wait_until_bookmark("zg2")
            x,y,_ = plane.c2p(3,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().clear_updaters().set_color(GREEN))
            self.wait(0.5)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)



class Func_4_5_I_6_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Factored Form")

        #Create the coordinate system
        cords = self.add_cords([-3,3, 1], [-10, 10, 2], x_ticks=[-3,-2,-1,1,2,3],y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
        plane = cords[0]

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True).shift(UP)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x+", "2)", "\\cdot", "(x-", "3", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        b1b = MathTex("\\underbrace{(x+2)}_{0\\text{ if }x=-2}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex("\\underbrace{(x-3)}_{0\\text{ if }x=3}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top())
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sol = Tex("Zeros at ", "$x=-2$", " and ", "$x=3$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        calcs = Group(f1, b1b, b2b, a, sol)

        f = lambda x: (x+2)*(x-3)
        g = plane.plot(f, color=BLUE, x_range=[-3.1,3.1,0.001])

        # Action Sequence
        with self.voiceover(
                text="""
                Exactly, those are the two zeros.
                So look at the function <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x plus <bookmark mark="2"/>2 close bracket times
                open bracket <bookmark mark="x2"/>x minus <bookmark mark="3"/>3 close bracket.
                Say we want to determine the zeros of that function. f is written as a product of two factors.
                The first is the <bookmark mark="b1"/> bracket x plus 2, and the second is the <bookmark mark="b2"/> bracket x minus 3.
                Now for the function to be zero, we need the product to be zero, which is the case if at least
                one of the factors is zero. The first factor is zero <bookmark mark="b1b"/>if x equals negative 2, an the second factor is zero
                <bookmark mark="b2b"/>if x equals 3.
                This means <bookmark mark="arrow"/> that the zeros of the function are at<bookmark mark="z1"/> x equals negative 2 and
                <bookmark mark="z2"/> at x equals 3.
                We can<bookmark mark="cords"/> also verify this graphically: When we look at the <bookmark mark="plot"/>plot of the function,
                we can see that one of the zeros is at<bookmark mark="zg1"/> x equals negative 2, and the other one is at<bookmark mark="zg2"/> x equals 3.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("2")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("x2")
            x,y,_ = f1[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("3")
            x,y,_ = f1[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("b1")
            cursor.blinking=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("b1b")
            cursor.blinking=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("arrow")
            cursor.blinking=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("z1")
            cursor.blinking=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), calcs.animate.next_to(cords, DOWN, buff=0.6))

            self.wait_until_bookmark("plot")
            cursor.blinking=False
            x,y,_ = g.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g.get_end())))
            self.play(Create(g))
            cursor.blinking=True

            self.wait_until_bookmark("zg1")
            cursor.blinking=False
            x,y,_ = plane.c2p(-2,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().clear_updaters().set_color(GREEN))

            self.wait_until_bookmark("zg2")
            x,y,_ = plane.c2p(3,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().clear_updaters().set_color(GREEN))
            self.wait(0.5)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_6_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Factored Form")

        #Create the coordinate system
        cords = self.add_cords([-3,3, 1], [-10, 10, 2], x_ticks=[-3,-2,-1,1,2,3],y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
        plane = cords[0]

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True).shift(UP)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x+", "2)", "\\cdot", "(x-", "3", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        b1b = MathTex("\\underbrace{(x+2)}_{0\\text{ if }x=-2}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex("\\underbrace{(x-3)}_{0\\text{ if }x=3}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top())
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sol = Tex("Zeros at ", "$x=-2$", " and ", "$x=3$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        calcs = Group(f1, b1b, b2b, a, sol)

        f = lambda x: (x+2)*(x-3)
        g = plane.plot(f, color=BLUE, x_range=[-3.1,3.1,0.001])

        # Action Sequence
        with self.voiceover(
                text="""
                No, those are not the two zeros.
                So look at the function <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x plus <bookmark mark="2"/>2 close bracket times
                open bracket <bookmark mark="x2"/>x minus <bookmark mark="3"/>3 close bracket.
                Say we want to determine the zeros of that function. f is written as a product of two factors.
                The first is the <bookmark mark="b1"/> bracket x plus 2, and the second is the <bookmark mark="b2"/> bracket x minus 3.
                Now for the function to be zero, we need the product to be zero, which is the case if at least
                one of the factors is zero. The first factor is zero <bookmark mark="b1b"/>if x equals negative 2, an the second factor is zero
                <bookmark mark="b2b"/>if x equals 3.
                This means <bookmark mark="arrow"/> that the zeros of the function are at<bookmark mark="z1"/> x equals negative 2 and
                <bookmark mark="z2"/> at x equals 3.
                We can<bookmark mark="cords"/> also verify this graphically: When we look at the <bookmark mark="plot"/>plot of the function,
                we can see that one of the zeros is at<bookmark mark="zg1"/> x equals negative 2, and the other one is at<bookmark mark="zg2"/> x equals 3.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("2")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("x2")
            x,y,_ = f1[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("3")
            x,y,_ = f1[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("b1")
            cursor.blinking=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("b1b")
            cursor.blinking=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("arrow")
            cursor.blinking=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("z1")
            cursor.blinking=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), calcs.animate.next_to(cords, DOWN, buff=0.6))

            self.wait_until_bookmark("plot")
            cursor.blinking=False
            x,y,_ = g.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g.get_end())))
            self.play(Create(g))
            cursor.blinking=True

            self.wait_until_bookmark("zg1")
            cursor.blinking=False
            x,y,_ = plane.c2p(-2,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().clear_updaters().set_color(GREEN))

            self.wait_until_bookmark("zg2")
            x,y,_ = plane.c2p(3,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().clear_updaters().set_color(GREEN))
            self.wait(0.5)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

    
#####################################
#####################################
TASK_Func_4_5_I_7_q = SophiaTaskDefinition(
    answerOptions = ["(a,b)", "(0,b)", "(a,0)", "(-a,-b)"],
    correctAnswerIndex = 3,
    questionText = "Where are the two zeros of $f(x)=(x+a)(x+b)$?"
)
class Func_4_5_I_7_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Factored Form")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x+", "a)", "\\cdot", "(x+", "b", ")", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text="""
                Now look at the general case of the factored form: <bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x plus <bookmark mark="a"/>"a" close bracket times
                open bracket <bookmark mark="x2"/>x plus <bookmark mark="b"/>b close bracket.
                What are the zeroes of this function?
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("a")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("x2")
            x,y,_ = f1[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("b")
            x,y,_ = f1[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_7_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Factored Form")


        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True).shift(UP)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x+", "a)", "\\cdot", "(x+", "b", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        b1b = MathTex("\\underbrace{(x+a)}_{0\\text{ if }x=-a}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex("\\underbrace{(x+b)}_{0\\text{ if }x=-b}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top())
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sol = Tex("Zeros at ", "$x=-a$", " and ", "$x=-b$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text="""
                No, those are not the two zeros.
                So look at the function<bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x plus <bookmark mark="a"/>"a" close bracket times
                open bracket <bookmark mark="x2"/>x plus <bookmark mark="b"/>b close bracket.
                Say we want to determine the zeros of that function. f is written as a product of two factors.
                The first is the <bookmark mark="b1"/> bracket x plus "a", and the second is the <bookmark mark="b2"/> bracket x plus b.
                Now for the function to be zero, we need the product to be zero, which is the case if at least
                one of the factors is zero. The first factor is zero <bookmark mark="b1b"/>if x equals negative a, an the second factor is zero
                <bookmark mark="b2b"/>if x equals negative b.
                This means <bookmark mark="arrow"/> that the zeros of the function are at<bookmark mark="z1"/> x equals negative "a" and
                <bookmark mark="z2"/> at x equals negative b.
                Now you can easily read off the zeros from the factored form. Cool, right?
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("a")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("x2")
            x,y,_ = f1[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("b")
            x,y,_ = f1[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("b1")
            cursor.blinking=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("b1b")
            cursor.blinking=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("arrow")
            cursor.blinking=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("z1")
            cursor.blinking=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_7_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Factored Form")


        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True).shift(UP)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x+", "a)", "\\cdot", "(x+", "b", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        b1b = MathTex("\\underbrace{(x+a)}_{0\\text{ if }x=-a}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex("\\underbrace{(x+b)}_{0\\text{ if }x=-b}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top())
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sol = Tex("Zeros at ", "$x=-a$", " and ", "$x=-b$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text="""
                No, those are not the two zeros.
                So look at the function<bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x plus <bookmark mark="a"/>"a" close bracket times
                open bracket <bookmark mark="x2"/>x plus <bookmark mark="b"/>b close bracket.
                Say we want to determine the zeros of that function. f is written as a product of two factors.
                The first is the <bookmark mark="b1"/> bracket x plus "a", and the second is the <bookmark mark="b2"/> bracket x plus b.
                Now for the function to be zero, we need the product to be zero, which is the case if at least
                one of the factors is zero. The first factor is zero <bookmark mark="b1b"/>if x equals negative a, an the second factor is zero
                <bookmark mark="b2b"/>if x equals negative b.
                This means <bookmark mark="arrow"/> that the zeros of the function are at<bookmark mark="z1"/> x equals negative "a" and
                <bookmark mark="z2"/> at x equals negative b.
                Now you can easily read off the zeros from the factored form. Cool, right?
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("a")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("x2")
            x,y,_ = f1[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("b")
            x,y,_ = f1[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("b1")
            cursor.blinking=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("b1b")
            cursor.blinking=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("arrow")
            cursor.blinking=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("z1")
            cursor.blinking=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_7_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Factored Form")


        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True).shift(UP)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x+", "a)", "\\cdot", "(x+", "b", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        b1b = MathTex("\\underbrace{(x+a)}_{0\\text{ if }x=-a}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex("\\underbrace{(x+b)}_{0\\text{ if }x=-b}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top())
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sol = Tex("Zeros at ", "$x=-a$", " and ", "$x=-b$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text="""
                No, those are not the two zeros.
                So look at the function<bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x plus <bookmark mark="a"/>"a" close bracket times
                open bracket <bookmark mark="x2"/>x plus <bookmark mark="b"/>b close bracket.
                Say we want to determine the zeros of that function. f is written as a product of two factors.
                The first is the <bookmark mark="b1"/> bracket x plus "a", and the second is the <bookmark mark="b2"/> bracket x plus b.
                Now for the function to be zero, we need the product to be zero, which is the case if at least
                one of the factors is zero. The first factor is zero <bookmark mark="b1b"/>if x equals negative a, an the second factor is zero
                <bookmark mark="b2b"/>if x equals negative b.
                This means <bookmark mark="arrow"/> that the zeros of the function are at<bookmark mark="z1"/> x equals negative "a" and
                <bookmark mark="z2"/> at x equals negative b.
                Now you can easily read off the zeros from the factored form. Cool, right?
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("a")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("x2")
            x,y,_ = f1[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("b")
            x,y,_ = f1[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("b1")
            cursor.blinking=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("b1b")
            cursor.blinking=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("arrow")
            cursor.blinking=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("z1")
            cursor.blinking=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_7_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Factored Form")


        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True).shift(UP)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x+", "a)", "\\cdot", "(x+", "b", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        b1b = MathTex("\\underbrace{(x+a)}_{0\\text{ if }x=-a}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex("\\underbrace{(x+b)}_{0\\text{ if }x=-b}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top())
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sol = Tex("Zeros at ", "$x=-a$", " and ", "$x=-b$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text="""
                That is correct, great job!
                So look at the function<bookmark mark="f"/> f of <bookmark mark="x"/>x equals
                open bracket <bookmark mark="x1"/>x plus <bookmark mark="a"/>"a" close bracket times
                open bracket <bookmark mark="x2"/>x plus <bookmark mark="b"/>b close bracket.
                Say we want to determine the zeros of that function. f is written as a product of two factors.
                The first is the <bookmark mark="b1"/> bracket x plus "a", and the second is the <bookmark mark="b2"/> bracket x plus b.
                Now for the function to be zero, we need the product to be zero, which is the case if at least
                one of the factors is zero. The first factor is zero <bookmark mark="b1b"/>if x equals negative a, an the second factor is zero
                <bookmark mark="b2b"/>if x equals negative b.
                This means <bookmark mark="arrow"/> that the zeros of the function are at<bookmark mark="z1"/> x equals negative "a" and
                <bookmark mark="z2"/> at x equals negative b.
                Now you can easily read off the zeros from the factored form. Cool, right?
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("a")
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("x2")
            x,y,_ = f1[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("b")
            x,y,_ = f1[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("b1")
            cursor.blinking=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("b1b")
            cursor.blinking=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("arrow")
            cursor.blinking=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("z1")
            cursor.blinking=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
class Func_4_5_I_8(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Forms of Quadratic Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f1 = MathTex("f", "(x)", "=", "a", "x", "^2", "+", "b", "x", "+", "c", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1.6)
        f2 = MathTex("f", "(x)", "=", "a","(x+", "b",")^2", "+", "c", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.4)
        f3 = MathTex("f", "(x)", "=", "(x-", "a", ")", "\\cdot", "(x-", "b", ")", color=c1t, font_size=fs2).next_to(f2, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text="""
                Ok, quick recap of the forms of quadratic functions we have seen thus far.
                First, there is the standard form <bookmark mark="f1"/> f of <bookmark mark="x1"/>x equals
                <bookmark mark="a1"/>a times x squared <bookmark mark="b1"/>plus b times x <bookmark mark="c1"/>plus c.
                It is useful for quickly recognizing the coefficients of the x squared term, the x term and the constant.
                Then there is the vertex form <bookmark mark="f2"/> f of <bookmark mark="x2"/>x equals
                <bookmark mark="a2"/>a times open <bookmark mark="x21"/>bracket x <bookmark mark="b2"/>plus b close bracket squared <bookmark mark="c2"/>plus c.
                It is used, because you can easily read of the location of the vertex from it.
                And finally, there is the factored form <bookmark mark="f3"/> f of <bookmark mark="x3"/>x equals
                open <bookmark mark="x31"/>bracket x <bookmark mark="a3"/>minus a close bracket times
                open <bookmark mark="x32"/>bracket x <bookmark mark="b3"/>minus b close bracket. The factored form is useful,
                because it allows you to quickly read off the zeros of the function. So three different forms, three different
                sets of advantages and disadvantages.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f1")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x1")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("a1")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("b1")
            x,y,_ = f1[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("c1")
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("f2")
            cursor.blinking=False
            x,y,_ = f2[0].get_center()+0.4*DOWN
            self.play(Write(f2), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x2")
            x,y,_ = f2[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("a2")
            x,y,_ = f2[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("x21")
            x,y,_ = f2[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = f2[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("c2")
            x,y,_ = f2[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("f3")
            cursor.blinking=False
            x,y,_ = f3[0].get_center()+0.4*DOWN
            self.play(Write(f3), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("x3")
            x,y,_ = f3[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("a3")
            x,y,_ = f3[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("b3")
            x,y,_ = f3[7].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.4)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
##### Prototypes ####################
#####################################
#####################################
PROTOTYPES = [
    PagePrototypeVideo.from_scene(Func_4_5_I_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_4_5_I_1_q, Func_4_5_I_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_4_5_I_1_a),
    PagePrototypeVideo.from_scene(Func_4_5_I_1_b),
    PagePrototypeVideo.from_scene(Func_4_5_I_1_c),
    PagePrototypeVideo.from_scene(Func_4_5_I_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_4_5_I_2_q, Func_4_5_I_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_4_5_I_2_a),
    PagePrototypeVideo.from_scene(Func_4_5_I_2_b),
    PagePrototypeVideo.from_scene(Func_4_5_I_2_c),
    PagePrototypeVideo.from_scene(Func_4_5_I_3_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_4_5_I_3_q, Func_4_5_I_3_q.__name__),
    PagePrototypeVideo.from_scene(Func_4_5_I_3_a),
    PagePrototypeVideo.from_scene(Func_4_5_I_3_b),
    PagePrototypeVideo.from_scene(Func_4_5_I_3_c),
    PagePrototypeVideo.from_scene(Func_4_5_I_3_d),
    PagePrototypeVideo.from_scene(Func_4_5_I_4_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_4_5_I_4_q, Func_4_5_I_4_q.__name__),
    PagePrototypeVideo.from_scene(Func_4_5_I_4_a),
    PagePrototypeVideo.from_scene(Func_4_5_I_4_b),
    PagePrototypeVideo.from_scene(Func_4_5_I_4_c),
    PagePrototypeVideo.from_scene(Func_4_5_I_4_d),
    PagePrototypeVideo.from_scene(Func_4_5_I_5_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_4_5_I_5_q, Func_4_5_I_5_q.__name__),
    PagePrototypeVideo.from_scene(Func_4_5_I_5_a),
    PagePrototypeVideo.from_scene(Func_4_5_I_5_b),
    PagePrototypeVideo.from_scene(Func_4_5_I_5_c),
    PagePrototypeVideo.from_scene(Func_4_5_I_6_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_4_5_I_6_q, Func_4_5_I_6_q.__name__),
    PagePrototypeVideo.from_scene(Func_4_5_I_6_a),
    PagePrototypeVideo.from_scene(Func_4_5_I_6_b),
    PagePrototypeVideo.from_scene(Func_4_5_I_6_c),
    PagePrototypeVideo.from_scene(Func_4_5_I_6_d),
    PagePrototypeVideo.from_scene(Func_4_5_I_7_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_4_5_I_7_q, Func_4_5_I_7_q.__name__),
    PagePrototypeVideo.from_scene(Func_4_5_I_7_a),
    PagePrototypeVideo.from_scene(Func_4_5_I_7_b),
    PagePrototypeVideo.from_scene(Func_4_5_I_7_c),
    PagePrototypeVideo.from_scene(Func_4_5_I_7_d),
    PagePrototypeVideo.from_scene(Func_4_5_I_8),
]