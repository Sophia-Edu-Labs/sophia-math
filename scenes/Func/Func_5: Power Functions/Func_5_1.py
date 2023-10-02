# 5_1: Power Functions: Intro, Term

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
class Func_5_1_I_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]

        func1 = MathTex("f", "(x)", "=",  "a","x^n", color=c1t, font_size=fs2)
        conds = VGroup(MathTex("a\\in\\mathbb{R}", color=c3t, font_size=fs3), MathTex("n\\in\\mathbb{Z}", color=c3t, font_size=fs3)).arrange(RIGHT, buff=0.3).next_to(func1, DOWN, buff=0.2)
        powerFunc = VGroup(func1, conds)
        
        funcn1 = MathTex("f", "(x)", "=",  "a","x", color=BLUE, font_size=fs2)
        funcn2 = MathTex("f", "(x)", "=",  "a","x^2", color=GREEN, font_size=fs2)
        funcn3 = MathTex("f", "(x)", "=",  "a","x^3", color=PURPLE, font_size=fs2)
        funcn4 = MathTex("f", "(x)", "=",  "a","x^4", color=ORANGE, font_size=fs2)

        f1 = lambda x: x
        f2 = lambda x: x**2
        f3 = lambda x: x**3
        f4 = lambda x: x**4

        g1 = plane.plot(f1, color=BLUE)
        g2 = plane.plot(f2, color=GREEN)
        g3 = plane.plot(f3, color=PURPLE, x_range=[-1.66,1.66, 0.001])
        g4 = plane.plot(f4, color=ORANGE)


        # Action Sequence
        with self.voiceover(
                text="""
                Let's jump into powerfunctions with the definition:
                A power function is a function of the form<bookmark mark="form"/> f of <bookmark mark="fx"/>x equals <bookmark mark="a"/> a
                times <bookmark mark="x"/>x to the power of n, where <bookmark mark="real"/>a is a real number and n is an <bookmark mark="int"/>integer.
                Now you've probably already seen at least two <bookmark mark="shiftDown"/> examples of power functions.
                If you choose <bookmark mark="n1"/> n equals 1, you get a linear function f of x equals a times x.
                If you choose <bookmark mark="n2"/> n equals 2, you get a quadratic function f of x equals a times x squared.
                If you choose <bookmark mark="n3"/> n equals 3, you get a cubic function f of x equals a times x cubed.
                Now for a bit of <bookmark mark="cleanUp"/> vocabulary. The value that is raised to a power is called the base.
                In our example, since we're dealing with x to the power of n, <bookmark mark="base"/>x is the base.
                The power to which the base is raised is called the exponent.
                In our example, since we're dealing with x to the power of <bookmark mark="exponent"/>n, n is the exponent.
                """
        ) as tracker:

            self.wait_until_bookmark("form")
            cursor.blinking=False
            x,y,_ = func1[0].get_center()+0.4*DOWN
            self.play(Write(func1), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("fx")
            x,y,_ = func1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("a")
            x,y,_ = func1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = func1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("real")
            x,y,_ = conds[0].get_center()+0.4*DOWN
            self.play(Write(conds), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("int")
            x,y,_ = conds[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("shiftDown")
            x,y,_ = plane.c2p(0,0)
            self.play(Write(cords), powerFunc.animate.next_to(cords, DOWN, buff=0.4), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("n1")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(Write(funcn1.next_to(powerFunc, DOWN, buff=0.2)), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g1))
            cursor.blinking=True

            self.wait_until_bookmark("n2")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(Write(funcn2.next_to(funcn1, DOWN, buff=0.2)), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.blinking=True

            self.wait_until_bookmark("n3")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(Write(funcn3.next_to(funcn2, DOWN, buff=0.2)), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g3))
            cursor.blinking=True

            self.wait_until_bookmark("cleanUp")
            self.play(Unwrite(g1), Unwrite(g2), Unwrite(g3), Unwrite(cords), powerFunc.animate.shift(UP*1.2))

            self.wait_until_bookmark("base")
            cursor.blinking=False
            b1 = Bubble(["x is the base"], width=1.8, height=0.6, start_point = func1[-1].get_center()+0.1*UP+0.2*LEFT, center=[-1,2.4,0], loc="b2")
            x,y,_ = func1[-1].get_center()+0.2*UP+0.1*LEFT
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(b1.get_end())))
            self.add_bubble_sound(1.5)
            self.play(Create(b1), Create(b1.text))
            cursor.blinking=True

            self.wait_until_bookmark("exponent")
            cursor.blinking=False
            b2 = Bubble(["n is the exponent"], width=2.2, height=0.5, start_point = func1[-1].get_center()+0.3*UP+0.1*RIGHT, center=[1,1.6,0], loc="b1")
            x,y,_ = func1[-1].get_center()+0.3*UP+0.1*RIGHT
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(b2.get_end())))
            self.add_bubble_sound(1.5)
            self.play(Create(b2), Create(b2.text))
            x,y,_ = func1.get_right()+0.5*RIGHT
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
TASK_Func_5_1_I_2_q = SophiaTaskDefinition(
    answerOptions = ["Base: $3$, Exponent: $4$", "Base: $y$, Exponent: $3$", "Base: $y$, Exponent: $4$", "Base: $4$, Exponent: $y$"],
    correctAnswerIndex = 2,
    questionText = "Considering the expression $3y^4$, which is the base, and which is the exponent?"
)
class Func_5_1_I_2_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]

        func1 = MathTex("3","y","^4", color=c1t, font_size=fs1)
        base = Tex("Base?", color=c3t, font_size=fs1)
        exponent = Tex("Exponent?", color=c3t, font_size=fs1)
        baseExponent = VGroup(base, exponent).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(func1, DOWN, buff=0.6)

        # Action Sequence
        with self.voiceover(
                text="""
                quick check to make sure you keep the definitions in mind.
                Look at the expression<bookmark mark="three"/> 3 times <bookmark mark="y"/>y to the power of <bookmark mark="4"/>4.
                In this example, what <bookmark mark="base"/>is the base, and <bookmark mark="exponent"/>what is the exponent.
                """
        ) as tracker:
            
            self.wait_until_bookmark("three")
            cursor.blinking=False
            x,y,_ = func1[0].get_center()+0.4*DOWN
            self.play(Write(func1), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("y")
            x,y,_ = func1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("4")
            x,y,_ = func1[2].get_center()+0.3*DOWN+0.1*RIGHT
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("base")
            cursor.blinking=False
            x,y,_ = base.get_left()+0.2*(LEFT)
            self.play(Write(base), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("exponent")
            x,y,_ = exponent.get_left()+0.2*LEFT
            self.play(Write(exponent), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.wait(1)
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_5_1_I_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True).shift(1.5*DOWN)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]

        func1 = MathTex("3","y","^4", color=c1t, font_size=fs1)
        self.add(func1)
        bubbleBase = Bubble(["y is the Base"], width=1.8, height=0.6, start_point = func1[1].get_center()+0.4*DOWN, center=[1,-2.4,0], loc="t2")
        bubbleExponent = Bubble(["4 is the Exponent"], width=2.2, height=0.5, start_point = func1[2].get_center()+0.2*UP, center=[-1,2.4,0], loc="b1")
        
        # Action Sequence
        with self.voiceover(
                text="""
                No, not quite.
                The base is whatever we raise to a power, so in this case, the base is <bookmark mark="y"/> y.
                The exponent is the power to which the base is raised, so in this case, the exponent is <bookmark mark="4"/> 4.
                """
        ) as tracker:
            
            self.wait_until_bookmark("y")
            cursor.blinking=False
            x,y,_ = func1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(bubbleBase.get_end())))
            self.add_bubble_sound(1.5)
            self.play(Create(bubbleBase), Create(bubbleBase.text))
            cursor.blinking=True

            self.wait_until_bookmark("4")
            cursor.blinking=False
            x,y,_ = func1[2].get_center()+0.2*UP
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(bubbleExponent.get_end())))
            self.add_bubble_sound(1.5)
            self.play(Create(bubbleExponent), Create(bubbleExponent.text))
            self.play(CursorMoveTo(cursor, 1,0))
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_5_1_I_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True).shift(1.5*DOWN)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]

        func1 = MathTex("3","y","^4", color=c1t, font_size=fs1)
        self.add(func1)
        bubbleBase = Bubble(["y is the Base"], width=1.8, height=0.6, start_point = func1[1].get_center()+0.4*DOWN, center=[1,-2.4,0], loc="t2")
        bubbleExponent = Bubble(["4 is the Exponent"], width=2.2, height=0.5, start_point = func1[2].get_center()+0.2*UP, center=[-1,2.4,0], loc="b1")
        
        # Action Sequence
        with self.voiceover(
                text="""
                No, not quite.
                The base is whatever we raise to a power, so in this case, the base is <bookmark mark="y"/> y.
                The exponent is the power to which the base is raised, so in this case, the exponent is <bookmark mark="4"/> 4.
                """
        ) as tracker:
            
            self.wait_until_bookmark("y")
            cursor.blinking=False
            x,y,_ = func1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(bubbleBase.get_end())))
            self.add_bubble_sound(1.5)
            self.play(Create(bubbleBase), Create(bubbleBase.text))
            cursor.blinking=True

            self.wait_until_bookmark("4")
            cursor.blinking=False
            x,y,_ = func1[2].get_center()+0.2*UP
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(bubbleExponent.get_end())))
            self.add_bubble_sound(1.5)
            self.play(Create(bubbleExponent), Create(bubbleExponent.text))
            self.play(CursorMoveTo(cursor, 1,0))
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_5_1_I_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True).shift(1.5*DOWN)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]

        func1 = MathTex("3","y","^4", color=c1t, font_size=fs1)
        self.add(func1)
        bubbleBase = Bubble(["y is the Base"], width=1.8, height=0.6, start_point = func1[1].get_center()+0.4*DOWN, center=[1,-2.4,0], loc="t2")
        bubbleExponent = Bubble(["4 is the Exponent"], width=2.2, height=0.5, start_point = func1[2].get_center()+0.2*UP, center=[-1,2.4,0], loc="b1")
        
        # Action Sequence
        with self.voiceover(
                text="""
                Yep, that's right.
                The base is whatever we raise to a power, so in this case, the base is <bookmark mark="y"/> y.
                The exponent is the power to which the base is raised, so in this case, the exponent is <bookmark mark="4"/> 4.
                """
        ) as tracker:
            
            self.wait_until_bookmark("y")
            cursor.blinking=False
            x,y,_ = func1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(bubbleBase.get_end())))
            self.add_bubble_sound(1.5)
            self.play(Create(bubbleBase), Create(bubbleBase.text))
            cursor.blinking=True

            self.wait_until_bookmark("4")
            cursor.blinking=False
            x,y,_ = func1[2].get_center()+0.2*UP
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(bubbleExponent.get_end())))
            self.add_bubble_sound(1.5)
            self.play(Create(bubbleExponent), Create(bubbleExponent.text))
            self.play(CursorMoveTo(cursor, 1,0))
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_5_1_I_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True).shift(1.5*DOWN)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]

        func1 = MathTex("3","y","^4", color=c1t, font_size=fs1)
        self.add(func1)
        bubbleBase = Bubble(["y is the Base"], width=1.8, height=0.6, start_point = func1[1].get_center()+0.4*DOWN, center=[1,-2.4,0], loc="t2")
        bubbleExponent = Bubble(["4 is the Exponent"], width=2.2, height=0.5, start_point = func1[2].get_center()+0.2*UP, center=[-1,2.4,0], loc="b1")
        
        # Action Sequence
        with self.voiceover(
                text="""
                No, not quite.
                The base is whatever we raise to a power, so in this case, the base is <bookmark mark="y"/> y.
                The exponent is the power to which the base is raised, so in this case, the exponent is <bookmark mark="4"/> 4.
                """
        ) as tracker:
            
            self.wait_until_bookmark("y")
            cursor.blinking=False
            x,y,_ = func1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(bubbleBase.get_end())))
            self.add_bubble_sound(1.5)
            self.play(Create(bubbleBase), Create(bubbleBase.text))
            cursor.blinking=True

            self.wait_until_bookmark("4")
            cursor.blinking=False
            x,y,_ = func1[2].get_center()+0.2*UP
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(bubbleExponent.get_end())))
            self.add_bubble_sound(1.5)
            self.play(Create(bubbleExponent), Create(bubbleExponent.text))
            self.play(CursorMoveTo(cursor, 1,0))
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
TASK_Func_5_1_I_3_q = SophiaTaskDefinition(
    answerOptions = ["Functions with an even degree are always positive, while functions with an odd degree can be negative.", "Functions with an even degree are always negative, while functions with an odd degree can be positive.", "Functions with an even degree are always positive, while functions with an odd degree can be positive or negative.", "Functions with an even degree are always negative, while functions with an odd degree can be positive or negative."],
    correctAnswerIndex = 0,
    questionText = "What's the difference between functions with an even degree and functions with an odd degree?"
)
class Func_5_1_I_3_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]

        func1 = MathTex("f", "(x)", "=",  "a","x^n", color=c1t, font_size=fs2)
        conds = VGroup(MathTex("a\\in\\mathbb{R}", color=c3t, font_size=fs3), MathTex("n\\in\\mathbb{Z}", color=c3t, font_size=fs3)).arrange(RIGHT, buff=0.3).next_to(func1, DOWN, buff=0.2)
        powerFunc = VGroup(func1, conds)
        
        funcn1 = MathTex("f", "(x)", "=",  "a","x", color=BLUE, font_size=fs2)
        funcn2 = MathTex("f", "(x)", "=",  "a","x^2", color=GREEN, font_size=fs2)
        funcn3 = MathTex("f", "(x)", "=",  "a","x^3", color=PURPLE, font_size=fs2)
        funcn4 = MathTex("f", "(x)", "=",  "a","x^4", color=ORANGE, font_size=fs2)

        f1 = lambda x: x
        f2 = lambda x: x**2
        f3 = lambda x: x**3
        f4 = lambda x: x**4

        g1 = plane.plot(f1, color=BLUE)
        g2 = plane.plot(f2, color=GREEN)
        g3 = plane.plot(f3, color=PURPLE, x_range=[-4**(1/3),4**(1/3), 0.01])
        g4 = plane.plot(f4, color=ORANGE,  x_range=[-2**0.5,2**0.5,0.01])



        # Action Sequence
        with self.voiceover(
                text="""
                Back to power functions with the general structure <bookmark mark="form"/> f of <bookmark mark="fx"/>x equals <bookmark mark="a"/> a
                times <bookmark mark="x"/>x to the power of n, and quick reminder, <bookmark mark="real"/>a is a real number and n is an <bookmark mark="int"/>integer.
                If we now take another look at the <bookmark mark="shiftDown"/> examples of power functions that we've seen, namely
                the <bookmark mark="n1"/>linear function f of x equals a times x n equals 1,
                the <bookmark mark="n2"/>quadratic function f of x equals a times x squared.
                and the <bookmark mark="n3"/>cubic function f of x equals a times x cubed...
                <bookmark mark="shift"/>
                We'll also add the <bookmark mark="n4"/> function f of x equals a times x to the power of 4, which is of degree four.
                Now here's a question for you: What is the main difference between functions with an even number of degree,
                like the quadratic function, and functions with an odd number of degree, like the cubic function?
                """
        ) as tracker:

            self.wait_until_bookmark("form")
            cursor.blinking=False
            x,y,_ = func1[0].get_center()+0.4*DOWN
            self.play(Write(func1), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("fx")
            x,y,_ = func1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("a")
            x,y,_ = func1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = func1[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("real")
            x,y,_ = conds[0].get_center()+0.4*DOWN
            self.play(Write(conds), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("int")
            x,y,_ = conds[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("shiftDown")
            x,y,_ = plane.c2p(0,0)
            self.play(Write(cords), powerFunc.animate.next_to(cords, DOWN, buff=0.4), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("n1")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(Write(funcn1.next_to(powerFunc, DOWN, buff=0.2)), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g1))
            cursor.blinking=True

            self.wait_until_bookmark("n2")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(Write(funcn2.next_to(funcn1, DOWN, buff=0.2)), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.blinking=True

            self.wait_until_bookmark("n3")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(Write(funcn3.next_to(funcn2, DOWN, buff=0.2)), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g3))
            cursor.blinking=True

            self.wait_until_bookmark("shift")
            self.play(funcn1.animate.shift(UP*0.4), funcn2.animate.shift(UP*0.45), funcn3.animate.shift(UP*0.5), Unwrite(conds))

            self.wait_until_bookmark("n4")
            cursor.blinking=False
            x,y,_ = g4.get_start()
            self.play(Write(funcn4.next_to(funcn3, DOWN, buff=0.15)), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g4.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g4))
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_5_1_I_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)
        
        funcn1 = MathTex("f", "(x)", "=",  "a","x", color=BLUE, font_size=fs2).next_to(plane, DOWN, buff=0.6)
        funcn3 = MathTex("f", "(x)", "=",  "a","x^3", color=PURPLE, font_size=fs2).next_to(funcn1, DOWN, buff=0.2)

        funcn2 = MathTex("f", "(x)", "=",  "a","x^2", color=GREEN, font_size=fs2).next_to(funcn3, DOWN, buff=0.6)
        funcn4 = MathTex("f", "(x)", "=",  "a","x^4", color=ORANGE, font_size=fs2).next_to(funcn2, DOWN, buff=0.2)

        f1 = lambda x: x
        f2 = lambda x: x**2
        f3 = lambda x: x**3
        f4 = lambda x: x**4

        g1 = plane.plot(f1, color=BLUE)
        g1c = g1.copy()
        g2 = plane.plot(f2, color=GREEN)
        g3 = plane.plot(f3, color=PURPLE, x_range=[-4**(1/3),4**(1/3), 0.01])
        g3c = g3.copy()
        g4 = plane.plot(f4, color=ORANGE,  x_range=[-2**0.5,2**0.5,0.01])



        # Action Sequence
        with self.voiceover(
                text="""
                Yes, well done!
                Let's first look at the two functions with an odd degree. That means that the exponent is an odd number, like in x, x cubed, x to the power of five and so on...
                First, we have  <bookmark mark="n1"/>the linear function f of x equals a times x, which is the same as a times x to the power of one. As you can see,
                the function values are negative for negative x values and positive for positive x values. So they are sometimes positive and sometimes negative.
                Next, there is the <bookmark mark="n3"/>cubic function f of x equals a times x cubed, so x to the power of three. Again, the function values are negative for negative x values and positive for positive x values.
                So they are sometimes positive and sometimes negative.
                Now, <bookmark mark="unWriteOdd"/>let's look at the two functions with an even degree. That means that the exponent is an even number, like in x squared, x to the power of four and so on...
                So first we have the <bookmark mark="n2"/>quadratic function f of x equals a times x squared. As you can see, the function values are always positive,
                both for positive and for negative x values. This is because if you multiply a negative number by itself, it always results in a positive number: Negative times negative is positive.
                And finally, there is the <bookmark mark="n4"/> function f of x equals a times x to the power of 4, which is of degree four. Again, the function values are always positive.
                So, <bookmark mark="unWriteEven"/>to sum up, functions with an <bookmark mark="even"/> even degree are always positive, while functions with an <bookmark mark="odd"/>odd degree can be positive or negative.
                """
        ) as tracker:

            self.wait_until_bookmark("n1")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(Write(funcn1), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g1))
            cursor.blinking=True

            self.wait_until_bookmark("n3")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(Write(funcn3), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g3))
            cursor.blinking=True

            self.wait_until_bookmark("unWriteOdd")
            self.play(Unwrite(g1), Unwrite(g3))

            self.wait_until_bookmark("n2")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(Write(funcn2), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.blinking=True

            self.wait_until_bookmark("n4")
            cursor.blinking=False
            x,y,_ = g4.get_start()
            self.play(Write(funcn4), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g4.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g4))
            cursor.blinking=True

            self.wait_until_bookmark("unWriteEven")
            self.play(Unwrite(g1), Unwrite(g3))

            self.wait_until_bookmark("odd")
            self.play(Unwrite(g2), Unwrite(g4), Write(g1c), Write(g3c), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_5_1_I_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)
        
        funcn1 = MathTex("f", "(x)", "=",  "a","x", color=BLUE, font_size=fs2).next_to(plane, DOWN, buff=0.6)
        funcn3 = MathTex("f", "(x)", "=",  "a","x^3", color=PURPLE, font_size=fs2).next_to(funcn1, DOWN, buff=0.2)

        funcn2 = MathTex("f", "(x)", "=",  "a","x^2", color=GREEN, font_size=fs2).next_to(funcn3, DOWN, buff=0.6)
        funcn4 = MathTex("f", "(x)", "=",  "a","x^4", color=ORANGE, font_size=fs2).next_to(funcn2, DOWN, buff=0.2)

        f1 = lambda x: x
        f2 = lambda x: x**2
        f3 = lambda x: x**3
        f4 = lambda x: x**4

        g1 = plane.plot(f1, color=BLUE)
        g1c = g1.copy()
        g2 = plane.plot(f2, color=GREEN)
        g3 = plane.plot(f3, color=PURPLE, x_range=[-4**(1/3),4**(1/3), 0.01])
        g3c = g3.copy()
        g4 = plane.plot(f4, color=ORANGE,  x_range=[-2**0.5,2**0.5,0.01])



        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right...
                Let's first look at the two functions with an odd degree. That means that the exponent is an odd number, like in x, x cubed, x to the power of five and so on...
                First, we have  <bookmark mark="n1"/>the linear function f of x equals a times x, which is the same as a times x to the power of one. As you can see,
                the function values are negative for negative x values and positive for positive x values. So they are sometimes positive and sometimes negative.
                Next, there is the <bookmark mark="n3"/>cubic function f of x equals a times x cubed, so x to the power of three. Again, the function values are negative for negative x values and positive for positive x values.
                So they are sometimes positive and sometimes negative.
                Now, <bookmark mark="unWriteOdd"/>let's look at the two functions with an even degree. That means that the exponent is an even number, like in x squared, x to the power of four and so on...
                So first we have the <bookmark mark="n2"/>quadratic function f of x equals a times x squared. As you can see, the function values are always positive,
                both for positive and for negative x values. This is because if you multiply a negative number by itself, it always results in a positive number: Negative times negative is positive.
                And finally, there is the <bookmark mark="n4"/> function f of x equals a times x to the power of 4, which is of degree four. Again, the function values are always positive.
                So, <bookmark mark="unWriteEven"/>to sum up, functions with an <bookmark mark="even"/> even degree are always positive, while functions with an <bookmark mark="odd"/>odd degree can be positive or negative.
                """
        ) as tracker:

            self.wait_until_bookmark("n1")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(Write(funcn1), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g1))
            cursor.blinking=True

            self.wait_until_bookmark("n3")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(Write(funcn3), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g3))
            cursor.blinking=True

            self.wait_until_bookmark("unWriteOdd")
            self.play(Unwrite(g1), Unwrite(g3))

            self.wait_until_bookmark("n2")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(Write(funcn2), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.blinking=True

            self.wait_until_bookmark("n4")
            cursor.blinking=False
            x,y,_ = g4.get_start()
            self.play(Write(funcn4), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g4.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g4))
            cursor.blinking=True

            self.wait_until_bookmark("unWriteEven")
            self.play(Unwrite(g1), Unwrite(g3))

            self.wait_until_bookmark("odd")
            self.play(Unwrite(g2), Unwrite(g4), Write(g1c), Write(g3c), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_5_1_I_3_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)
        
        funcn1 = MathTex("f", "(x)", "=",  "a","x", color=BLUE, font_size=fs2).next_to(plane, DOWN, buff=0.6)
        funcn3 = MathTex("f", "(x)", "=",  "a","x^3", color=PURPLE, font_size=fs2).next_to(funcn1, DOWN, buff=0.2)

        funcn2 = MathTex("f", "(x)", "=",  "a","x^2", color=GREEN, font_size=fs2).next_to(funcn3, DOWN, buff=0.6)
        funcn4 = MathTex("f", "(x)", "=",  "a","x^4", color=ORANGE, font_size=fs2).next_to(funcn2, DOWN, buff=0.2)

        f1 = lambda x: x
        f2 = lambda x: x**2
        f3 = lambda x: x**3
        f4 = lambda x: x**4

        g1 = plane.plot(f1, color=BLUE)
        g1c = g1.copy()
        g2 = plane.plot(f2, color=GREEN)
        g3 = plane.plot(f3, color=PURPLE, x_range=[-4**(1/3),4**(1/3), 0.01])
        g3c = g3.copy()
        g4 = plane.plot(f4, color=ORANGE,  x_range=[-2**0.5,2**0.5,0.01])



        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right...
                Let's first look at the two functions with an odd degree. That means that the exponent is an odd number, like in x, x cubed, x to the power of five and so on...
                First, we have  <bookmark mark="n1"/>the linear function f of x equals a times x, which is the same as a times x to the power of one. As you can see,
                the function values are negative for negative x values and positive for positive x values. So they are sometimes positive and sometimes negative.
                Next, there is the <bookmark mark="n3"/>cubic function f of x equals a times x cubed, so x to the power of three. Again, the function values are negative for negative x values and positive for positive x values.
                So they are sometimes positive and sometimes negative.
                Now, <bookmark mark="unWriteOdd"/>let's look at the two functions with an even degree. That means that the exponent is an even number, like in x squared, x to the power of four and so on...
                So first we have the <bookmark mark="n2"/>quadratic function f of x equals a times x squared. As you can see, the function values are always positive,
                both for positive and for negative x values. This is because if you multiply a negative number by itself, it always results in a positive number: Negative times negative is positive.
                And finally, there is the <bookmark mark="n4"/> function f of x equals a times x to the power of 4, which is of degree four. Again, the function values are always positive.
                So, <bookmark mark="unWriteEven"/>to sum up, functions with an <bookmark mark="even"/> even degree are always positive, while functions with an <bookmark mark="odd"/>odd degree can be positive or negative.
                """
        ) as tracker:

            self.wait_until_bookmark("n1")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(Write(funcn1), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g1))
            cursor.blinking=True

            self.wait_until_bookmark("n3")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(Write(funcn3), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g3))
            cursor.blinking=True

            self.wait_until_bookmark("unWriteOdd")
            self.play(Unwrite(g1), Unwrite(g3))

            self.wait_until_bookmark("n2")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(Write(funcn2), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.blinking=True

            self.wait_until_bookmark("n4")
            cursor.blinking=False
            x,y,_ = g4.get_start()
            self.play(Write(funcn4), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g4.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g4))
            cursor.blinking=True

            self.wait_until_bookmark("unWriteEven")
            self.play(Unwrite(g1), Unwrite(g3))

            self.wait_until_bookmark("odd")
            self.play(Unwrite(g2), Unwrite(g4), Write(g1c), Write(g3c), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_5_1_I_3_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)
        
        funcn1 = MathTex("f", "(x)", "=",  "a","x", color=BLUE, font_size=fs2).next_to(plane, DOWN, buff=0.6)
        funcn3 = MathTex("f", "(x)", "=",  "a","x^3", color=PURPLE, font_size=fs2).next_to(funcn1, DOWN, buff=0.2)

        funcn2 = MathTex("f", "(x)", "=",  "a","x^2", color=GREEN, font_size=fs2).next_to(funcn3, DOWN, buff=0.6)
        funcn4 = MathTex("f", "(x)", "=",  "a","x^4", color=ORANGE, font_size=fs2).next_to(funcn2, DOWN, buff=0.2)

        f1 = lambda x: x
        f2 = lambda x: x**2
        f3 = lambda x: x**3
        f4 = lambda x: x**4

        g1 = plane.plot(f1, color=BLUE)
        g1c = g1.copy()
        g2 = plane.plot(f2, color=GREEN)
        g3 = plane.plot(f3, color=PURPLE, x_range=[-4**(1/3),4**(1/3), 0.01])
        g3c = g3.copy()
        g4 = plane.plot(f4, color=ORANGE,  x_range=[-2**0.5,2**0.5,0.01])



        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right...
                Let's first look at the two functions with an odd degree. That means that the exponent is an odd number, like in x, x cubed, x to the power of five and so on...
                First, we have  <bookmark mark="n1"/>the linear function f of x equals a times x, which is the same as a times x to the power of one. As you can see,
                the function values are negative for negative x values and positive for positive x values. So they are sometimes positive and sometimes negative.
                Next, there is the <bookmark mark="n3"/>cubic function f of x equals a times x cubed, so x to the power of three. Again, the function values are negative for negative x values and positive for positive x values.
                So they are sometimes positive and sometimes negative.
                Now, <bookmark mark="unWriteOdd"/>let's look at the two functions with an even degree. That means that the exponent is an even number, like in x squared, x to the power of four and so on...
                So first we have the <bookmark mark="n2"/>quadratic function f of x equals a times x squared. As you can see, the function values are always positive,
                both for positive and for negative x values. This is because if you multiply a negative number by itself, it always results in a positive number: Negative times negative is positive.
                And finally, there is the <bookmark mark="n4"/> function f of x equals a times x to the power of 4, which is of degree four. Again, the function values are always positive.
                So, <bookmark mark="unWriteEven"/>to sum up, functions with an <bookmark mark="even"/> even degree are always positive, while functions with an <bookmark mark="odd"/>odd degree can be positive or negative.
                """
        ) as tracker:

            self.wait_until_bookmark("n1")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(Write(funcn1), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g1))
            cursor.blinking=True

            self.wait_until_bookmark("n3")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(Write(funcn3), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g3))
            cursor.blinking=True

            self.wait_until_bookmark("unWriteOdd")
            self.play(Unwrite(g1), Unwrite(g3))

            self.wait_until_bookmark("n2")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(Write(funcn2), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.blinking=True

            self.wait_until_bookmark("n4")
            cursor.blinking=False
            x,y,_ = g4.get_start()
            self.play(Write(funcn4), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g4.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g4))
            cursor.blinking=True

            self.wait_until_bookmark("unWriteEven")
            self.play(Unwrite(g1), Unwrite(g3))

            self.wait_until_bookmark("odd")
            self.play(Unwrite(g2), Unwrite(g4), Write(g1c), Write(g3c), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
TASK_Func_5_1_I_4_q = SophiaTaskDefinition(
    answerOptions = ["Blue: Odd, Orange: Even", "Blue: Even, Orange: Even", "Blue: Odd, Orange: Odd", "Blue: Even, Orange: Odd"],
    correctAnswerIndex = 3,
    questionText = "Do the blue and the orange function have an even or an odd degree?"
)
class Func_5_1_I_4_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        func1 = MathTex("f", "(x)", "=",  "a","x^n", color=c1t, font_size=fs2)
        conds = VGroup(MathTex("a\\in\\mathbb{R}", color=c3t, font_size=fs3), MathTex("n\\in\\mathbb{Z}", color=c3t, font_size=fs3)).arrange(RIGHT, buff=0.3).next_to(func1, DOWN, buff=0.2)
        powerFunc = VGroup(func1, conds)
        
        f2 = lambda x: -x**2
        f3 = lambda x: 0.5*x**3

        g2 = plane.plot(f2, color=BLUE)
        g3 = plane.plot(f3, color=ORANGE)

        # Action Sequence
        with self.voiceover(
                text="""
                Ok, here comes the next question:
                Look at the <bookmark mark="n2"/> blue function, and look at the <bookmark mark="n3"/> orange function.
                Do they each have an even degree, or an odd degree?
                """
        ) as tracker:


            self.wait_until_bookmark("n2")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.blinking=True

            self.wait_until_bookmark("n3")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g3))
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_5_1_I_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        func1 = MathTex("f", "(x)", "=",  "a","x^n", color=c1t, font_size=fs2)
        conds = VGroup(MathTex("a\\in\\mathbb{R}", color=c3t, font_size=fs3), MathTex("n\\in\\mathbb{Z}", color=c3t, font_size=fs3)).arrange(RIGHT, buff=0.3).next_to(func1, DOWN, buff=0.2)
        powerFunc = VGroup(func1, conds)
        
        f2 = lambda x: -x**2
        f3 = lambda x: 0.5*x**3

        g2 = plane.plot(f2, color=BLUE)
        g3 = plane.plot(f3, color=ORANGE)

        funcTerm2 = Tex("$-1$", "$\\cdot$","$x^2$", "$\\,\\,\\,\\,\\Rightarrow$ Even degree", color=BLUE, font_size=fs2).next_to(plane, DOWN, buff=0.6)
        funcTerm3 = Tex("$0.5$", "$\\cdot$","$x^3$", "$\\,\\,\\,\\,\\Rightarrow$ Odd degree", color=ORANGE, font_size=fs2).next_to(funcTerm2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right...
                The <bookmark mark="n2"/> blue function belongs to the <bookmark mark="blueTerm"/> Term negative one times <bookmark mark="x2"/>
                x squared. This means, that the<bookmark mark="degE"/> degree of the blue function is even, because it has degree two. But because it's multiplied by negative one,
                the function values are always negative, instead of always positive.
                The <bookmark mark="n3"/> orange function belongs to the <bookmark mark="orangeTerm"/> Term 0.5 times <bookmark mark="x3"/>
                x cubed. This means, that the <bookmark mark="degO"/>degree of the orange function is odd, because it has degree three.
                """
        ) as tracker:


            self.wait_until_bookmark("n2")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.blinking=True

            self.wait_until_bookmark("blueTerm")
            cursor.blinking=False
            x,y,_ = funcTerm2[0].get_center()+0.4*DOWN
            self.play(Write(funcTerm2), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("x2")
            x,y,_ = funcTerm2[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("degE")
            x,y,_ = funcTerm2[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("n3")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g3))
            cursor.blinking=True

            self.wait_until_bookmark("orangeTerm")
            cursor.blinking=False
            x,y,_ = funcTerm3[0].get_center()+0.4*DOWN
            self.play(Write(funcTerm3), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("x3")
            x,y,_ = funcTerm3[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            
            self.wait_until_bookmark("degO")
            x,y,_ = funcTerm3[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_5_1_I_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        func1 = MathTex("f", "(x)", "=",  "a","x^n", color=c1t, font_size=fs2)
        conds = VGroup(MathTex("a\\in\\mathbb{R}", color=c3t, font_size=fs3), MathTex("n\\in\\mathbb{Z}", color=c3t, font_size=fs3)).arrange(RIGHT, buff=0.3).next_to(func1, DOWN, buff=0.2)
        powerFunc = VGroup(func1, conds)
        
        f2 = lambda x: -x**2
        f3 = lambda x: 0.5*x**3

        g2 = plane.plot(f2, color=BLUE)
        g3 = plane.plot(f3, color=ORANGE)

        funcTerm2 = Tex("$-1$", "$\\cdot$","$x^2$", "$\\,\\,\\,\\,\\Rightarrow$ Even degree", color=BLUE, font_size=fs2).next_to(plane, DOWN, buff=0.6)
        funcTerm3 = Tex("$0.5$", "$\\cdot$","$x^3$", "$\\,\\,\\,\\,\\Rightarrow$ Odd degree", color=ORANGE, font_size=fs2).next_to(funcTerm2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right...
                The <bookmark mark="n2"/> blue function belongs to the <bookmark mark="blueTerm"/> Term negative one times <bookmark mark="x2"/>
                x squared. This means, that the<bookmark mark="degE"/> degree of the blue function is even, because it has degree two. But because it's multiplied by negative one,
                the function values are always negative, instead of always positive.
                The <bookmark mark="n3"/> orange function belongs to the <bookmark mark="orangeTerm"/> Term 0.5 times <bookmark mark="x3"/>
                x cubed. This means, that the <bookmark mark="degO"/>degree of the orange function is odd, because it has degree three.
                """
        ) as tracker:


            self.wait_until_bookmark("n2")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.blinking=True

            self.wait_until_bookmark("blueTerm")
            cursor.blinking=False
            x,y,_ = funcTerm2[0].get_center()+0.4*DOWN
            self.play(Write(funcTerm2), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("x2")
            x,y,_ = funcTerm2[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("degE")
            x,y,_ = funcTerm2[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("n3")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g3))
            cursor.blinking=True

            self.wait_until_bookmark("orangeTerm")
            cursor.blinking=False
            x,y,_ = funcTerm3[0].get_center()+0.4*DOWN
            self.play(Write(funcTerm3), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("x3")
            x,y,_ = funcTerm3[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            
            self.wait_until_bookmark("degO")
            x,y,_ = funcTerm3[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_5_1_I_4_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        func1 = MathTex("f", "(x)", "=",  "a","x^n", color=c1t, font_size=fs2)
        conds = VGroup(MathTex("a\\in\\mathbb{R}", color=c3t, font_size=fs3), MathTex("n\\in\\mathbb{Z}", color=c3t, font_size=fs3)).arrange(RIGHT, buff=0.3).next_to(func1, DOWN, buff=0.2)
        powerFunc = VGroup(func1, conds)
        
        f2 = lambda x: -x**2
        f3 = lambda x: 0.5*x**3

        g2 = plane.plot(f2, color=BLUE)
        g3 = plane.plot(f3, color=ORANGE)

        funcTerm2 = Tex("$-1$", "$\\cdot$","$x^2$", "$\\,\\,\\,\\,\\Rightarrow$ Even degree", color=BLUE, font_size=fs2).next_to(plane, DOWN, buff=0.6)
        funcTerm3 = Tex("$0.5$", "$\\cdot$","$x^3$", "$\\,\\,\\,\\,\\Rightarrow$ Odd degree", color=ORANGE, font_size=fs2).next_to(funcTerm2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right...
                The <bookmark mark="n2"/> blue function belongs to the <bookmark mark="blueTerm"/> Term negative one times <bookmark mark="x2"/>
                x squared. This means, that the<bookmark mark="degE"/> degree of the blue function is even, because it has degree two. But because it's multiplied by negative one,
                the function values are always negative, instead of always positive.
                The <bookmark mark="n3"/> orange function belongs to the <bookmark mark="orangeTerm"/> Term 0.5 times <bookmark mark="x3"/>
                x cubed. This means, that the <bookmark mark="degO"/>degree of the orange function is odd, because it has degree three.
                """
        ) as tracker:


            self.wait_until_bookmark("n2")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.blinking=True

            self.wait_until_bookmark("blueTerm")
            cursor.blinking=False
            x,y,_ = funcTerm2[0].get_center()+0.4*DOWN
            self.play(Write(funcTerm2), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("x2")
            x,y,_ = funcTerm2[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("degE")
            x,y,_ = funcTerm2[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("n3")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g3))
            cursor.blinking=True

            self.wait_until_bookmark("orangeTerm")
            cursor.blinking=False
            x,y,_ = funcTerm3[0].get_center()+0.4*DOWN
            self.play(Write(funcTerm3), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("x3")
            x,y,_ = funcTerm3[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            
            self.wait_until_bookmark("degO")
            x,y,_ = funcTerm3[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_5_1_I_4_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        func1 = MathTex("f", "(x)", "=",  "a","x^n", color=c1t, font_size=fs2)
        conds = VGroup(MathTex("a\\in\\mathbb{R}", color=c3t, font_size=fs3), MathTex("n\\in\\mathbb{Z}", color=c3t, font_size=fs3)).arrange(RIGHT, buff=0.3).next_to(func1, DOWN, buff=0.2)
        powerFunc = VGroup(func1, conds)
        
        f2 = lambda x: -x**2
        f3 = lambda x: 0.5*x**3

        g2 = plane.plot(f2, color=BLUE)
        g3 = plane.plot(f3, color=ORANGE)

        funcTerm2 = Tex("$-1$", "$\\cdot$","$x^2$", "$\\,\\,\\,\\,\\Rightarrow$ Even degree", color=BLUE, font_size=fs2).next_to(plane, DOWN, buff=0.6)
        funcTerm3 = Tex("$0.5$", "$\\cdot$","$x^3$", "$\\,\\,\\,\\,\\Rightarrow$ Odd degree", color=ORANGE, font_size=fs2).next_to(funcTerm2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text="""
                Yes, that's it!
                The <bookmark mark="n2"/> blue function belongs to the <bookmark mark="blueTerm"/> Term negative one times <bookmark mark="x2"/>
                x squared. This means, that the<bookmark mark="degE"/> degree of the blue function is even, because it has degree two. But because it's multiplied by negative one,
                the function values are always negative, instead of always positive.
                The <bookmark mark="n3"/> orange function belongs to the <bookmark mark="orangeTerm"/> Term 0.5 times <bookmark mark="x3"/>
                x cubed. This means, that the <bookmark mark="degO"/>degree of the orange function is odd, because it has degree three.
                """
        ) as tracker:


            self.wait_until_bookmark("n2")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.blinking=True

            self.wait_until_bookmark("blueTerm")
            cursor.blinking=False
            x,y,_ = funcTerm2[0].get_center()+0.4*DOWN
            self.play(Write(funcTerm2), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("x2")
            x,y,_ = funcTerm2[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("degE")
            x,y,_ = funcTerm2[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("n3")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g3))
            cursor.blinking=True

            self.wait_until_bookmark("orangeTerm")
            cursor.blinking=False
            x,y,_ = funcTerm3[0].get_center()+0.4*DOWN
            self.play(Write(funcTerm3), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("x3")
            x,y,_ = funcTerm3[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            
            self.wait_until_bookmark("degO")
            x,y,_ = funcTerm3[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_5_1_I_5(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-8, 8, 2], x_ticks=[-2,-1,1,2],y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        func1 = MathTex("f", "(x)", "=",  "a","x^n", color=c1t, font_size=fs2)
        conds = VGroup(MathTex("a\\in\\mathbb{R}", color=c3t, font_size=fs3), MathTex("n\\in\\mathbb{Z}", color=c3t, font_size=fs3)).arrange(RIGHT, buff=0.3).next_to(func1, DOWN, buff=0.2)
        powerFunc = VGroup(func1, conds)
        
        f2 = lambda x: x**2
        f3 = lambda x: x**3
        f4 = lambda x: -x**3

        g2 = plane.plot(f2, color=BLUE)
        g3 = plane.plot(f3, color=ORANGE)
        g3c = g3.copy()

        odd1 = Tex("Odd functions:", font_size=fs2, color=c1t)
        odd2 = Tex("$f(-x) = -f(x)$", font_size=fs2, color=c1t)
        odd3 = Tex("$\\Rightarrow$ Rotational", font_size=fs3, color=c1t)
        odd4 = Tex("symmetry around origin", font_size=fs3, color=c1t)
        odd = VGroup(odd1, odd2, odd3, odd4).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(plane, DOWN, buff=0.4)


        # Action Sequence
        with self.voiceover(
                text="""
                Now we've seen the difference between functions of even and odd degree: Functions of <bookmark mark="even"/>even degree
                are always positive or always negative, while functions of <bookmark mark="odd"/>odd degree can be both positive and negative.
                There is a cool way to visually describe this, by using symmetry.
                Let's start with <bookmark mark="odd2"/> odd functions. 
                Looking at the orange function, see how the function value of a number x is the same as the negative value of negative x?
                So for example, f of <bookmark mark="p1"/>one is one, and f of<bookmark mark="n1"/>negative one is negative one.
                So f of negative one is the same as negative f of one.
                Another example: The value of f at <bookmark mark="p2"/> two is two times two times two, which is eight, and the
                value of f at <bookmark mark="n2"/>negative two is  negative two times negative two times negative two, which is negative eight.
                So the rule that we can observe here is that <bookmark mark="odd3"/> f of negative x is equal to negative f of x.
                Graphically, this means that there is a <bookmark mark="rotate"/> rotational symmetry around the origin.
                If you <bookmark mark="rotate2"/> rotate the function around the origin by 180 degrees, you get the same function again.
                And since this is true for all functions of odd degrees, for example x to the power of five, we call all functions that have this property
                "odd functions".
                """
        ) as tracker:
            
            self.wait_until_bookmark("even")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.blinking=True

            self.wait_until_bookmark("odd")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(Unwrite(g2), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g3))
            cursor.blinking=True

            self.wait_until_bookmark("odd2")
            self.play(Write(odd1))

            self.wait_until_bookmark("p1")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("n1")
            x,y,_ = plane.c2p(-1,-1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("p2")
            cursor.blinking=False
            x,y,_ = plane.c2p(2,8)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("n2")
            x,y,_ = plane.c2p(-2,-8)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("odd3")
            self.play(Write(odd2))

            self.wait_until_bookmark("rotate")
            self.play(Write(odd3), Write(odd4), Rotate(g3, angle=PI, run_time=2))

            self.wait_until_bookmark("rotate2")
            self.play(Rotate(g3, angle=PI, run_time=2))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_5_1_I_6(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        func1 = MathTex("f", "(x)", "=",  "a","x^n", color=c1t, font_size=fs2)
        conds = VGroup(MathTex("a\\in\\mathbb{R}", color=c3t, font_size=fs3), MathTex("n\\in\\mathbb{Z}", color=c3t, font_size=fs3)).arrange(RIGHT, buff=0.3).next_to(func1, DOWN, buff=0.2)
        powerFunc = VGroup(func1, conds)
        
        f2 = lambda x: x**2
        f3 = lambda x: x**3
        f4 = lambda x: -x**3

        g2 = plane.plot(f2, color=BLUE)
        g3 = plane.plot(f3, color=ORANGE)
        g3c = g3.copy()

        even1 = Tex("Even functions:", font_size=fs2, color=c1t)
        even2 = Tex("$f(-x) = f(x)$", font_size=fs2, color=c1t)
        even3 = Tex("$\\Rightarrow$ symmetrical", font_size=fs3, color=c1t)
        even4 = Tex("around the y-axis", font_size=fs3, color=c1t)
        even = VGroup(even1, even2, even3, even4).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(plane, DOWN, buff=0.4)


        # Action Sequence
        with self.voiceover(
                text="""
                The symmetry of power functions with an <bookmark mark="even"/>even degree is this:
                <bookmark mark="even2"/>f of negative x is equal to f of x.
                So looking at the function f of x equals x squared for example, we see that <bookmark mark="p1"/>
                f of one is one, and <bookmark mark="n1"/>f of negative one is also one.
                Or that <bookmark mark="p2"/>f of two is four, and <bookmark mark="n2"/>f of negative two is also four.
                Graphically, this means that the function is <bookmark mark="sym1"/>symmetrical around the y-axis.
                This means, that we can <bookmark mark="sym2"/>reflect the function at the y-axis, and get the same function again.
                And since this is true for all functions of even degrees, for example x to the power of four, we call all functions that have this property
                "even functions".
                """
        ) as tracker:
            
            self.wait_until_bookmark("even")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), Write(even1), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.blinking=True

            self.wait_until_bookmark("even2")
            self.play(Write(even2))

            self.wait_until_bookmark("p1")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("n1")
            x,y,_ = plane.c2p(-1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("p2")
            cursor.blinking=False
            x,y,_ = plane.c2p(2,4)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("n2")
            x,y,_ = plane.c2p(-2,4)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sym1")
            cursor.blinking=False
            self.play(CursorMarkAxis(cursor, plane, axis='y'), Write(even3), Write(even4), Rotate(g2, angle=PI, axis=UP, run_time=2))

            self.wait_until_bookmark("sym2")
            self.play(Rotate(g2, angle=PI, axis=UP, run_time=2))
            self.wait(1)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveResize(cursor, x, y, 0.2, 0.2), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
class Func_5_1_I_7(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Even and Odd Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        func1 = MathTex("f", "(x)", "=",  "a","x^n", color=c1t, font_size=fs2)
        conds = VGroup(MathTex("a\\in\\mathbb{R}", color=c3t, font_size=fs3), MathTex("n\\in\\mathbb{Z}", color=c3t, font_size=fs3)).arrange(RIGHT, buff=0.3).next_to(func1, DOWN, buff=0.2)
        powerFunc = VGroup(func1, conds)
        
        f2 = lambda x: x**2
        f3 = lambda x: x**3
        f4 = lambda x: -x**3

        g2 = plane.plot(f2, color=BLUE)
        g3 = plane.plot(f3, color=ORANGE, x_range=[-4**(1/3),4**(1/3), 0.01])
        g3c = g3.copy()

        even1 = Tex("Even functions:", font_size=fs2, color=BLUE)
        even2 = Tex("$f(-x) = f(x)$", font_size=fs2, color=BLUE)
        odd1 = Tex("Odd functions:", font_size=fs2, color=ORANGE)
        odd2 = Tex("$f(-x) = -f(x)$", font_size=fs2, color=ORANGE)
        odd = VGroup(odd1, odd2)
        all = VGroup(even1, even2, odd1, odd2).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(plane, DOWN, buff=0.4)
        odd.shift(DOWN*0.2)
        


        # Action Sequence
        with self.voiceover(
                text="""
                Summary of even and odd functions:

                For <bookmark mark="even"/>even functions, it holds that <bookmark mark="even2"/>f of negative x is equal to f of x.
                Graphically, this means that the function is <bookmark mark="sym1"/>symmetrical around the y-axis.
                All power functions with an even degree, like x squared, x to the power of four and so on
                are even functions, but there are other examples of even functions.

                For <bookmark mark="odd"/>odd functions on the other hand, it holds that <bookmark mark="odd2"/>f of negative x is equal to negative f of x.
                Graphically, this means that the function is <bookmark mark="rotate"/>rotational symmetrical around the origin.
                All power functions with an odd degree, like x, x cubed and so on are odd functions, but there are other examples of odd functions as well.
                """
        ) as tracker:
            
            self.wait_until_bookmark("even")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), Write(even1), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.blinking=True

            self.wait_until_bookmark("even2")
            self.play(Write(even2))

            self.wait_until_bookmark("sym1")
            cursor.blinking=False
            self.play(CursorMarkAxis(cursor, plane, axis='y'), Rotate(g2, angle=PI, axis=UP, run_time=2))
            self.play(Rotate(g2, angle=PI, axis=UP, run_time=2))

            self.wait_until_bookmark("odd")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(Unwrite(g2), CursorMoveResize(cursor, x, y, 0.2, 0.2), Write(odd1), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g3))
            cursor.blinking=True

            self.wait_until_bookmark("odd2")
            self.play(Write(odd2))

            self.wait_until_bookmark("rotate")
            self.play(Rotate(g3, angle=PI, run_time=2))
            self.play(Rotate(g3, angle=PI, run_time=2))
            


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
#########Pratice Part ###############
#####################################
#####################################


#####################################
#####################################
######## General Q-Types ############
#####################################
#####################################

#####################################
#####################################
class EvenOddQuestionScene(SophiaCursorScene, metaclass = ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
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

        func1 = MathTex("f", "(x)", "=",  "a","x^n", color=c1t, font_size=fs2)
        conds = VGroup(MathTex("a\\in\\mathbb{R}", color=c3t, font_size=fs3), MathTex("n\\in\\mathbb{Z}", color=c3t, font_size=fs3)).arrange(RIGHT, buff=0.3).next_to(func1, DOWN, buff=0.2)
        powerFunc = VGroup(func1, conds)

        g2 = plane.plot(self.f2, color=self.c1[0])
        g3 = plane.plot(self.f3, color=self.c2[0])

        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.intro}
                Look at the <bookmark mark="n2"/> {self.c1[1]} function, and look at the <bookmark mark="n3"/> {self.c2[1]} function.
                Are they even functions, odd functions, or neither?
                """
        ) as tracker:


            self.wait_until_bookmark("n2")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.blinking=True

            self.wait_until_bookmark("n3")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g3))
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
class EvenOddAnswerScene(SophiaCursorScene, metaclass = ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Power Functions")

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
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

        testVals = np.array([0.8,1.332, 1.4135,12.41412])
        s1 = "even" if np.all(self.f2(testVals) == self.f2(-testVals)) else "odd" if np.all(self.f2(testVals) == -self.f2(-testVals)) else "neither even nor odd"
        s2 = "even" if np.all(self.f3(testVals) == self.f3(-testVals)) else "odd" if np.all(self.f3(testVals) == -self.f3(-testVals)) else "neither even nor odd"

        text1 = f"""The {self.c1[1]} function is neither even nor odd, because it's neither symmetric <bookmark mark="r11"/> around the origin, nor is it <bookmark mark="r12"/>symmetric around the y-axis."""
        text2 = f"""The {self.c2[1]} function is neither even nor odd, because it's neither symmetric <bookmark mark="r21"/> around the origin, nor is it <bookmark mark="r22"/>symmetric around the y-axis."""
        
        if s1 == "even":
            text1 = f"""The {self.c1[1]} function is even, because it is symmetric <bookmark mark="r12"/> around the y-axis."""
        elif s1 == "odd":
            text1 = f"""The {self.c1[1]} function is odd, because it is symmetric <bookmark mark="r11"/> around the origin."""

        if s2 == "even":
            text2 = f"""The {self.c2[1]} function is even, because it is symmetric <bookmark mark="r22"/> around the y-axis."""
        elif s2 == "odd":
            text2 = f"""The {self.c2[1]} function is odd, because it is symmetric <bookmark mark="r21"/> around the origin."""


        g2 = plane.plot(self.f2, color=self.c1[0])
        g3 = plane.plot(self.f3, color=self.c2[0])

        funcTerm2 = Tex("$-1$", "$\\cdot$","$x^2$", "$\\,\\,\\,\\,\\Rightarrow$ Even degree", color=BLUE, font_size=fs2).next_to(plane, DOWN, buff=0.6)
        funcTerm3 = Tex("$0.5$", "$\\cdot$","$x^3$", "$\\,\\,\\,\\,\\Rightarrow$ Odd degree", color=ORANGE, font_size=fs2).next_to(funcTerm2, DOWN, buff=0.2)

        r1 = VGroup(Tex(f"The {self.c1[1]} function is", color=self.c1[0], font_size=fs3), Tex(s1, color=self.c1[0], font_size=fs3)).arrange(DOWN, buff=0.2, aligned_edge=LEFT)
        r2 = VGroup(Tex(f"The {self.c2[1]} function is", color=self.c2[0], font_size=fs3), Tex(s2, color=self.c2[0], font_size=fs3)).arrange(DOWN, buff=0.2, aligned_edge=LEFT)
        r = VGroup(r1, r2).arrange(DOWN, buff=0.4, aligned_edge=LEFT).next_to(plane, DOWN, buff=0.6)

        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.intro}
                Let's first look at <bookmark mark="f1"/>the {self.c1[1]} function.
                {text1} <bookmark mark="unWrite"/>
                And now let's look at <bookmark mark="f2"/>the {self.c2[1]} function.
                {text2}
                So: The {self.c1[1]} function is <bookmark mark="r1"/>{s1}, and the {self.c2[1]} function is <bookmark mark="r2"/>{s2}.
                """
        ) as tracker:


            self.wait_until_bookmark("f1")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.blinking=True

            if not s1 == "even":
                self.wait_until_bookmark("r11")
                copy = g2.copy().set_color(GREY).set_stroke_width(1)
                self.bring_to_back(copy)
                self.add(copy)
                self.play(Rotate(g2, about_point=plane.c2p(0,0), angle=PI))
                self.wait(1.5)
                self.play(Rotate(g2, about_point=plane.c2p(0,0), angle=PI, run_time=0.3))
                self.remove(copy)

            if not s1 == "odd":
                self.wait_until_bookmark("r12")
                copy = g2.copy().set_color(GREY).set_stroke_width(1)
                self.bring_to_back(copy)
                self.add(copy)
                cursor.blinking=False
                self.play(CursorMarkAxis(cursor, plane, axis='y'), Rotate(g2, about_point=plane.c2p(0,0), angle=PI, axis=UP, run_time=1.5), run_time=0.5)
                self.wait(1.5)
                x,y,_ = plane.c2p(0,0)
                self.play(CursorMoveResize(cursor, x, y, 0.2, 0.2), Rotate(g2, about_point=plane.c2p(0,0), angle=PI, axis=UP), run_time=0.3)
                cursor.blinking=True
                self.remove(copy)

            self.wait_until_bookmark("unWrite")
            self.play(Unwrite(g2))

            self.wait_until_bookmark("f2")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g3))
            cursor.blinking=True

            if not s2 == "even":
                self.wait_until_bookmark("r21")
                copy = g3.copy().set_color(GREY).set_stroke_width(1)
                self.bring_to_back(copy)
                self.add(copy)
                self.play(Rotate(g3, about_point=plane.c2p(0,0), angle=PI))
                self.wait(1.5)
                self.play(Rotate(g3, about_point=plane.c2p(0,0), angle=PI, run_time=0.3))
                self.remove(copy)

            if not s2 == "odd":
                self.wait_until_bookmark("r22")
                copy = g3.copy().set_color(GREY).set_stroke_width(1)
                self.bring_to_back(copy)
                self.add(copy)
                cursor.blinking=False
                self.play(CursorMarkAxis(cursor, plane, axis='y'), Rotate(g3, about_point=plane.c2p(0,0), angle=PI, axis=UP, run_time=1.5), run_time=0.5)
                self.wait(1.5)
                x,y,_ = plane.c2p(0,0)
                self.play(CursorMoveResize(cursor, x, y, 0.2, 0.2), Rotate(g3, about_point=plane.c2p(0,0), angle=PI, axis=UP), run_time=0.3)
                cursor.blinking=True
                self.remove(copy)

            self.wait_until_bookmark("r1")
            cursor.blinking=False
            x,y,_ = r1.get_center()+0.6*DOWN
            self.play(Write(r1), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("r2")
            cursor.blinking=False
            x,y,_ = r2.get_center()+0.6*DOWN
            self.play(Write(r2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
######## Specific Questions #########
#####################################
#####################################

#####################################
#####################################
TASK_Func_5_1_P_1_q = SophiaTaskDefinition(
    answerOptions = ["Blue: Even, Orange: Neither", "Blue: Even, Orange: Even", "Blue: Odd, Orange: Neither", "Blue: Even, Orange: Odd"],
    correctAnswerIndex = 0,
    questionText = "Do the blue and the orange function have an even or an odd degree?"
)
class Func_5_1_P_1_q(EvenOddQuestionScene):

    def construct(self):

        self.intro = "Ok, let's practice the concept of even and odd functions:"
        self.c1 = [BLUE, "blue"]
        self.c2 = [ORANGE, "orange"]

        self.f2 = lambda x: x**2+1
        self.f3 = lambda x: 0.5*x**3+1

        super().construct()

class Func_5_1_P_1_a(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [BLUE, "blue"]
        self.c2 = [ORANGE, "orange"]

        self.f2 = lambda x: -x**2
        self.f3 = lambda x: 0.5*x**3+1

        self.intro = "Yep, that is correct!"

        super().construct()

class Func_5_1_P_1_b(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [BLUE, "blue"]
        self.c2 = [ORANGE, "orange"]

        self.f2 = lambda x: -x**2
        self.f3 = lambda x: 0.5*x**3+1

        self.intro = "No, that's not right..."

        super().construct()
    
class Func_5_1_P_1_c(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [BLUE, "blue"]
        self.c2 = [ORANGE, "orange"]

        self.f2 = lambda x: -x**2
        self.f3 = lambda x: 0.5*x**3+1

        self.intro = "No, that's not right..."

        super().construct()

class Func_5_1_P_1_d(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [BLUE, "blue"]
        self.c2 = [ORANGE, "orange"]

        self.f2 = lambda x: -x**2
        self.f3 = lambda x: 0.5*x**3+1

        self.intro = "No, that's not right..."

        super().construct()

#####################################
#####################################
TASK_Func_5_1_P_2_q = SophiaTaskDefinition(
    answerOptions = ["Purple: Even, Green: Neither", "Purple: Neither, Green: Odd", "Purple: Even, Green: Even", "Purple: Odd, Green: Neither"],
    correctAnswerIndex = 1,
    questionText = "Do the purple and the green function have an even or an odd degree?"
)
class Func_5_1_P_2_q(EvenOddQuestionScene):

    def construct(self):

        self.intro = "Two more examples:"
        self.c1 = [PURPLE, "purple"]
        self.c2 = [GREEN, "green"]

        self.f2 = lambda x: (x**2-2*x)/2
        self.f3 = lambda x: 2*x

        super().construct()

class Func_5_1_P_2_a(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [PURPLE, "purple"]
        self.c2 = [GREEN, "green"]

        self.f2 = lambda x: (x**2-2*x)/2
        self.f3 = lambda x: 2*x

        self.intro = "No, that's not it"

        super().construct()

class Func_5_1_P_2_b(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [PURPLE, "purple"]
        self.c2 = [GREEN, "green"]

        self.f2 = lambda x: (x**2-2*x)/2
        self.f3 = lambda x: 2*x

        self.intro = "Correct, well done!"

        super().construct()

class Func_5_1_P_2_c(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [PURPLE, "purple"]
        self.c2 = [GREEN, "green"]

        self.f2 = lambda x: (x**2-2*x)/2
        self.f3 = lambda x: 2*x

        self.intro = "No, that's not it"

        super().construct()

class Func_5_1_P_2_d(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [PURPLE, "purple"]
        self.c2 = [GREEN, "green"]

        self.f2 = lambda x: (x**2-2*x)/2
        self.f3 = lambda x: 2*x

        self.intro = "No, that's not it"

        super().construct()


#####################################
#####################################
TASK_Func_5_1_P_3_q = SophiaTaskDefinition(
    answerOptions = ["Red: Even, Yellow: Odd", "Red: Odd, Yellow: Even", "Red: Odd, Yellow: Neither", "Red: Even, Yellow: Neither"],
    correctAnswerIndex = 3,
    questionText = "Do the red and the yellow function have an even or an odd degree?"
)
class Func_5_1_P_3_q(EvenOddQuestionScene):

    def construct(self):

        self.intro = "Next set of examples:"
        self.c1 = [RED, "red"]
        self.c2 = [YELLOW, "yellow"]

        self.f2 = lambda x: (x**4)/2 - 1
        self.f3 = lambda x: x + 2

        super().construct()

class Func_5_1_P_3_a(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [RED, "red"]
        self.c2 = [YELLOW, "yellow"]

        self.f2 = lambda x: (x**4)/2 - 1
        self.f3 = lambda x: x + 2

        self.intro = "No, that's incorrect."

        super().construct()

class Func_5_1_P_3_b(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [RED, "red"]
        self.c2 = [YELLOW, "yellow"]

        self.f2 = lambda x: (x**4)/2 - 1
        self.f3 = lambda x: x + 2

        self.intro = "No, that's incorrect."

        super().construct()

class Func_5_1_P_3_c(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [RED, "red"]
        self.c2 = [YELLOW, "yellow"]

        self.f2 = lambda x: (x**4)/2 - 1
        self.f3 = lambda x: x + 2

        self.intro = "No, that's incorrect."

        super().construct()

class Func_5_1_P_3_d(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [RED, "red"]
        self.c2 = [YELLOW, "yellow"]

        self.f2 = lambda x: (x**4)/2 - 1
        self.f3 = lambda x: x + 2

        self.intro = "Yes, you're correct!"

        super().construct()

#####################################
#####################################
TASK_Func_5_1_P_4_q = SophiaTaskDefinition(
    answerOptions = ["PINK: Odd, Teal: Odd", "PINK: Even, Teal: Odd", "PINK: Odd, Teal: Even", "PINK: Even, Teal: Even"],
    correctAnswerIndex = 1,
    questionText = "Do the PINK and the teal function have an even or an odd degree?"
)
class Func_5_1_P_4_q(EvenOddQuestionScene):

    def construct(self):

        self.intro = "Last example for today:"
        self.c1 = [PINK, "PINK"]
        self.c2 = [TEAL, "teal"]

        self.f2 = lambda x: (x**4 + 2)/6
        self.f3 = lambda x: (x**3 + x)/2.5

        super().construct()

class Func_5_1_P_4_a(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [PINK, "PINK"]
        self.c2 = [TEAL, "teal"]

        self.f2 = lambda x: (x**4 + 2)/6
        self.f3 = lambda x: (x**3 + x)/2.5

        self.intro = "No, that's incorrect."

        super().construct()

class Func_5_1_P_4_b(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [PINK, "PINK"]
        self.c2 = [TEAL, "teal"]

        self.f2 = lambda x: (x**4 + 2)/6
        self.f3 = lambda x: (x**3 + x)/2.5

        self.intro = "Yes, you're correct!"

        super().construct()

class Func_5_1_P_4_c(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [PINK, "PINK"]
        self.c2 = [TEAL, "teal"]

        self.f2 = lambda x: (x**4 + 2)/6
        self.f3 = lambda x: (x**3 + x)/2.5

        self.intro = "No, that's incorrect."

        super().construct()

class Func_5_1_P_4_d(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [PINK, "PINK"]
        self.c2 = [TEAL, "teal"]

        self.f2 = lambda x: (x**4 + 2)/6
        self.f3 = lambda x: (x**3 + x)/2.5

        self.intro = "No, that's incorrect."

        super().construct()



PROTOTYPES=[
    PagePrototypeVideo.from_scene(Func_5_1_I_1),
    PagePrototypeVideo.from_scene(Func_5_1_I_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_5_1_I_2_q, Func_5_1_I_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_5_1_I_2_a),
    PagePrototypeVideo.from_scene(Func_5_1_I_2_b),
    PagePrototypeVideo.from_scene(Func_5_1_I_2_c),
    PagePrototypeVideo.from_scene(Func_5_1_I_2_d),
    PagePrototypeVideo.from_scene(Func_5_1_I_3_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_5_1_I_3_q, Func_5_1_I_3_q.__name__),
    PagePrototypeVideo.from_scene(Func_5_1_I_3_a),
    PagePrototypeVideo.from_scene(Func_5_1_I_3_b),
    PagePrototypeVideo.from_scene(Func_5_1_I_3_c),
    PagePrototypeVideo.from_scene(Func_5_1_I_3_d),
    PagePrototypeVideo.from_scene(Func_5_1_I_4_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_5_1_I_4_q, Func_5_1_I_4_q.__name__),
    PagePrototypeVideo.from_scene(Func_5_1_I_4_a),
    PagePrototypeVideo.from_scene(Func_5_1_I_4_b),
    PagePrototypeVideo.from_scene(Func_5_1_I_4_c),
    PagePrototypeVideo.from_scene(Func_5_1_I_4_d),
    PagePrototypeVideo.from_scene(Func_5_1_I_5),
    PagePrototypeVideo.from_scene(Func_5_1_I_6),
    PagePrototypeVideo.from_scene(Func_5_1_I_7),
    PagePrototypeVideo.from_scene(Func_5_1_P_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_5_1_P_1_q, Func_5_1_P_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_5_1_P_1_a),
    PagePrototypeVideo.from_scene(Func_5_1_P_1_b),
    PagePrototypeVideo.from_scene(Func_5_1_P_1_c),
    PagePrototypeVideo.from_scene(Func_5_1_P_1_d),
    PagePrototypeVideo.from_scene(Func_5_1_P_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_5_1_P_2_q, Func_5_1_P_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_5_1_P_2_a),
    PagePrototypeVideo.from_scene(Func_5_1_P_2_b),
    PagePrototypeVideo.from_scene(Func_5_1_P_2_c),
    PagePrototypeVideo.from_scene(Func_5_1_P_2_d),
    PagePrototypeVideo.from_scene(Func_5_1_P_3_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_5_1_P_3_q, Func_5_1_P_3_q.__name__),
    PagePrototypeVideo.from_scene(Func_5_1_P_3_a),
    PagePrototypeVideo.from_scene(Func_5_1_P_3_b),
    PagePrototypeVideo.from_scene(Func_5_1_P_3_c),
    PagePrototypeVideo.from_scene(Func_5_1_P_3_d),
    PagePrototypeVideo.from_scene(Func_5_1_P_4_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_5_1_P_4_q, Func_5_1_P_4_q.__name__),
    PagePrototypeVideo.from_scene(Func_5_1_P_4_a),
    PagePrototypeVideo.from_scene(Func_5_1_P_4_b),
    PagePrototypeVideo.from_scene(Func_5_1_P_4_c),
    PagePrototypeVideo.from_scene(Func_5_1_P_4_d),

]