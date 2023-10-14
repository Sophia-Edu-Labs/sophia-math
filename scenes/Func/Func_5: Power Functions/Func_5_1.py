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
import ast


#####################################
#####################################
class Func_5_1_I_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
                text=self.translate("Func_5_1.I1.voiceover")
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
class Func_5_1_I_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_5_1.I2.q.answer-options")),
            correctAnswerIndex=2,
            questionText=self.translate("Func_5_1.I2.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
                text = self.translate("Func_5_1.I2.q.voiceover")
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

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
        bbase, bexponent = self.translate("Func_5_1.I2.a.bbase"), self.translate("Func_5_1.I2.a.bexponent")
        bubbleBase = Bubble([bbase], width=1.8, height=0.6, start_point = func1[1].get_center()+0.4*DOWN, center=[1,-2.4,0], loc="t2")
        bubbleExponent = Bubble([bexponent], width=2.2, height=0.5, start_point = func1[2].get_center()+0.2*UP, center=[-1,2.4,0], loc="b1")
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_5_1.I2.a.voiceover")
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

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
        bbase, bexponent = self.translate("Func_5_1.I2.a.bbase"), self.translate("Func_5_1.I2.a.bexponent")
        bubbleBase = Bubble([bbase], width=1.8, height=0.6, start_point = func1[1].get_center()+0.4*DOWN, center=[1,-2.4,0], loc="t2")
        bubbleExponent = Bubble([bexponent], width=2.2, height=0.5, start_point = func1[2].get_center()+0.2*UP, center=[-1,2.4,0], loc="b1")
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_5_1.I2.a.voiceover")
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

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
        bbase, bexponent = self.translate("Func_5_1.I2.a.bbase"), self.translate("Func_5_1.I2.a.bexponent")
        bubbleBase = Bubble([bbase], width=1.8, height=0.6, start_point = func1[1].get_center()+0.4*DOWN, center=[1,-2.4,0], loc="t2")
        bubbleExponent = Bubble([bexponent], width=2.2, height=0.5, start_point = func1[2].get_center()+0.2*UP, center=[-1,2.4,0], loc="b1")
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_5_1.I2.c.voiceover")
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

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
        bbase, bexponent = self.translate("Func_5_1.I2.a.bbase"), self.translate("Func_5_1.I2.a.bexponent")
        bubbleBase = Bubble([bbase], width=1.8, height=0.6, start_point = func1[1].get_center()+0.4*DOWN, center=[1,-2.4,0], loc="t2")
        bubbleExponent = Bubble([bexponent], width=2.2, height=0.5, start_point = func1[2].get_center()+0.2*UP, center=[-1,2.4,0], loc="b1")
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_5_1.I2.a.voiceover")
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
class Func_5_1_I_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_5_1.I3.q.answer-options")),
            correctAnswerIndex=0,
            questionText=self.translate("Func_5_1.I3.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
                text=self.translate("Func_5_1.I3.q.voiceover")
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

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
                text=self.translate("Func_5_1.I3.a.voiceover")
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

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
                text=self.translate("Func_5_1.I3.b.voiceover")
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

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
            text=self.translate("Func_5_1.I3.b.voiceover")
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

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
                text=self.translate("Func_5_1.I3.b.voiceover")
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
class Func_5_1_I_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_5_1.I4.q.answer-options")),
            correctAnswerIndex=3,
            questionText=self.translate("Func_5_1.I4.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
                text=self.translate("Func_5_1.I4.q.voiceover")
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

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
                text=self.translate("Func_5_1.I4.a.voiceover")
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

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
                text=self.translate("Func_5_1.I4.a.voiceover")
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

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
                text=self.translate("Func_5_1.I4.a.voiceover")
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

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
                text=self.translate("Func_5_1.I4.d.voiceover")
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

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
                text=self.translate("Func_5_1.I5.q.voiceover")
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

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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

        even1 = Tex(self.translate("Func_5_1.I6.q.even1"), font_size=fs2, color=c1t)
        even2 = Tex("$f(-x) = f(x)$", font_size=fs2, color=c1t)
        even3 = Tex(self.translate("Func_5_1.I6.q.even2"), font_size=fs3, color=c1t)
        even4 = Tex(self.translate("Func_5_1.I6.q.even3"), font_size=fs3, color=c1t)
        even = VGroup(even1, even2, even3, even4).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(plane, DOWN, buff=0.4)


        # Action Sequence
        with self.voiceover(
                text = self.translate("Func_5_1.I6.q.voiceover")
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

        self.add_title(self.translate("Func_5_1.I7.title"))

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

        even1 = Tex(self.translate("Func_5_1.I7.even"), font_size=fs2, color=BLUE)
        even2 = Tex("$f(-x) = f(x)$", font_size=fs2, color=BLUE)
        odd1 = Tex(self.translate("Func_5_1.I7.odd"), font_size=fs2, color=ORANGE)
        odd2 = Tex("$f(-x) = -f(x)$", font_size=fs2, color=ORANGE)
        odd = VGroup(odd1, odd2)
        all = VGroup(even1, even2, odd1, odd2).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(plane, DOWN, buff=0.4)
        odd.shift(DOWN*0.2)
        


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_5_1.I7.voiceover")
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

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
                text=self.evaluate_string(self.translate("Func_5_1.EvenOddQuestionScene.voiceover"))
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

        self.add_title(self.translate("Func_5_1.I1.q.title"))

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
        even, odd, neither = self.translate("Func_5_1.EvenOddAnswerScene.even"), self.translate("Func_5_1.EvenOddAnswerScene.odd"), self.translate("Func_5_1.EvenOddAnswerScene.neither")
        s1 = even if np.all(self.f2(testVals) == self.f2(-testVals)) else odd if np.all(self.f2(testVals) == -self.f2(-testVals)) else neither
        s2 = even if np.all(self.f3(testVals) == self.f3(-testVals)) else odd if np.all(self.f3(testVals) == -self.f3(-testVals)) else neither

        text1 = self.evaluate_string(self.translate("Func_5_1.EvenOddAnswerScene.text1"))
        text2 = self.evaluate_string(self.translate("Func_5_1.EvenOddAnswerScene.text2"))
        
        if s1 == "even":
            text1 = self.translate("Func_5_1.EvenOddAnswerScene.text1_even")
        elif s1 == "odd":
            text1 = self.translate("Func_5_1.EvenOddAnswerScene.text1_odd")

        if s2 == "even":
            text2 = self.translate("Func_5_1.EvenOddAnswerScene.text2_even")
        elif s2 == "odd":
            text2 = self.translate("Func_5_1.EvenOddAnswerScene.text2_odd")


        g2 = plane.plot(self.f2, color=self.c1[0])
        g3 = plane.plot(self.f3, color=self.c2[0])


        funcTerm2 = Tex("$-1$", "$\\cdot$","$x^2$", self.translate("Func_5_1.EvenOddAnswerScene.funcTerm2"), color=BLUE, font_size=fs2).next_to(plane, DOWN, buff=0.6)
        funcTerm3 = Tex("$0.5$", "$\\cdot$","$x^3$", self.translate("Func_5_1.EvenOddAnswerScene.funcTerm3"), color=ORANGE, font_size=fs2).next_to(funcTerm2, DOWN, buff=0.2)

        r1 = VGroup(Tex(self.evaluate_string(self.translate("Func_5_1.EvenOddAnswerScene.r1")), color=self.c1[0], font_size=fs3), Tex(s1, color=self.c1[0], font_size=fs3)).arrange(DOWN, buff=0.2, aligned_edge=LEFT)
        r2 = VGroup(Tex(self.evaluate_string(self.translate("Func_5_1.EvenOddAnswerScene.r2")), color=self.c2[0], font_size=fs3), Tex(s2, color=self.c2[0], font_size=fs3)).arrange(DOWN, buff=0.2, aligned_edge=LEFT)
        r = VGroup(r1, r2).arrange(DOWN, buff=0.4, aligned_edge=LEFT).next_to(plane, DOWN, buff=0.6)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_5_1.EvenOddAnswerScene.voiceover")
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
class Func_5_1_P_1_q(EvenOddQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_5_1.P1.q.answer-options")),
            correctAnswerIndex=0,
            questionText=self.translate("Func_5_1.P1.q.question-text")
        )

    def construct(self):

        self.intro = self.translate("Func_5_1.P1.q.intro")
        self.c1 = [BLUE, self.translate("Func_5_1.P1.q.c1")]
        self.c2 = [ORANGE, self.translate("Func_5_1.P1.q.c2")]

        self.f2 = lambda x: x**2+1
        self.f3 = lambda x: 0.5*x**3+1

        super().construct()

class Func_5_1_P_1_a(EvenOddAnswerScene):

    def construct(self):
        
        self.c1 = [BLUE, self.translate("Func_5_1.P1.q.c1")]
        self.c2 = [ORANGE, self.translate("Func_5_1.P1.q.c2")]

        self.f2 = lambda x: -x**2
        self.f3 = lambda x: 0.5*x**3+1

        self.intro = self.translate("Func_5_1.P1.a.intro")

        super().construct()

class Func_5_1_P_1_b(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [BLUE, self.translate("Func_5_1.P1.q.c1")]
        self.c2 = [ORANGE, self.translate("Func_5_1.P1.q.c2")]

        self.f2 = lambda x: -x**2
        self.f3 = lambda x: 0.5*x**3+1

        self.intro = self.translate("Func_5_1.P1.b.intro")

        super().construct()
    
class Func_5_1_P_1_c(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [BLUE, self.translate("Func_5_1.P1.q.c1")]
        self.c2 = [ORANGE, self.translate("Func_5_1.P1.q.c2")]

        self.f2 = lambda x: -x**2
        self.f3 = lambda x: 0.5*x**3+1

        self.intro = self.translate("Func_5_1.P1.b.intro")

        super().construct()

class Func_5_1_P_1_d(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [BLUE, self.translate("Func_5_1.P1.q.c1")]
        self.c2 = [ORANGE, self.translate("Func_5_1.P1.q.c2")]

        self.f2 = lambda x: -x**2
        self.f3 = lambda x: 0.5*x**3+1

        self.intro = self.translate("Func_5_1.P1.b.intro")

        super().construct()

#####################################
#####################################
class Func_5_1_P_2_q(EvenOddQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_5_1.P2.q.answer-options")),
            correctAnswerIndex=1,
            questionText=self.translate("Func_5_1.P2.q.question-text")
        )

    def construct(self):

        self.intro = self.translate("Func_5_1.P2.q.intro")
        self.c1 = [PURPLE, self.translate("Func_5_1.P2.q.c1")]
        self.c2 = [GREEN, self.translate("Func_5_1.P2.q.c2")]

        self.f2 = lambda x: (x**2-2*x)/2
        self.f3 = lambda x: 2*x

        super().construct()

class Func_5_1_P_2_a(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [PURPLE, self.translate("Func_5_1.P2.q.c1")]
        self.c2 = [GREEN, self.translate("Func_5_1.P2.q.c2")]

        self.f2 = lambda x: (x**2-2*x)/2
        self.f3 = lambda x: 2*x

        self.intro = self.translate("Func_5_1.P2.a.intro")

        super().construct()

class Func_5_1_P_2_b(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [PURPLE, self.translate("Func_5_1.P2.q.c1")]
        self.c2 = [GREEN, self.translate("Func_5_1.P2.q.c2")]

        self.f2 = lambda x: (x**2-2*x)/2
        self.f3 = lambda x: 2*x

        self.intro = self.translate("Func_5_1.P2.b.intro")

        super().construct()

class Func_5_1_P_2_c(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [PURPLE, self.translate("Func_5_1.P2.q.c1")]
        self.c2 = [GREEN, self.translate("Func_5_1.P2.q.c2")]

        self.f2 = lambda x: (x**2-2*x)/2
        self.f3 = lambda x: 2*x

        self.intro = self.translate("Func_5_1.P2.a.intro")

        super().construct()

class Func_5_1_P_2_d(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [PURPLE, self.translate("Func_5_1.P2.q.c1")]
        self.c2 = [GREEN, self.translate("Func_5_1.P2.q.c2")]

        self.f2 = lambda x: (x**2-2*x)/2
        self.f3 = lambda x: 2*x

        self.intro = self.translate("Func_5_1.P2.a.intro")

        super().construct()


#####################################
#####################################
class Func_5_1_P_3_q(EvenOddQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_5_1.P3.q.answer-options")),
            correctAnswerIndex=3,
            questionText=self.translate("Func_5_1.P3.q.question-text")
        )

    def construct(self):

        self.intro = self.translate("Func_5_1.P3.q.intro")
        self.c1 = [RED, self.translate("Func_5_1.P3.q.c1")]
        self.c2 = [YELLOW, self.translate("Func_5_1.P3.q.c2")]

        self.f2 = lambda x: (x**4)/2 - 1
        self.f3 = lambda x: x + 2

        super().construct()

class Func_5_1_P_3_a(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [RED, self.translate("Func_5_1.P3.q.c1")]
        self.c2 = [YELLOW, self.translate("Func_5_1.P3.q.c2")]

        self.f2 = lambda x: (x**4)/2 - 1
        self.f3 = lambda x: x + 2

        self.intro = self.translate("Func_5_1.P3.a.intro")
        super().construct()

class Func_5_1_P_3_b(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [RED, self.translate("Func_5_1.P3.q.c1")]
        self.c2 = [YELLOW, self.translate("Func_5_1.P3.q.c2")]

        self.f2 = lambda x: (x**4)/2 - 1
        self.f3 = lambda x: x + 2

        self.intro = self.translate("Func_5_1.P3.a.intro")

        super().construct()

class Func_5_1_P_3_c(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [RED, self.translate("Func_5_1.P3.q.c1")]
        self.c2 = [YELLOW, self.translate("Func_5_1.P3.q.c2")]

        self.f2 = lambda x: (x**4)/2 - 1
        self.f3 = lambda x: x + 2

        self.intro = self.translate("Func_5_1.P3.a.intro")

        super().construct()

class Func_5_1_P_3_d(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [RED, self.translate("Func_5_1.P3.q.c1")]
        self.c2 = [YELLOW, self.translate("Func_5_1.P3.q.c2")]

        self.f2 = lambda x: (x**4)/2 - 1
        self.f3 = lambda x: x + 2

        self.intro = self.translate("Func_5_1.P3.d.intro")

        super().construct()

#####################################
#####################################
class Func_5_1_P_4_q(EvenOddQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_5_1.P4.q.answer-options")),
            correctAnswerIndex=1,
            questionText=self.translate("Func_5_1.P4.q.question-text")
        )

    def construct(self):

        self.intro = self.translate("Func_5_1.P4.q.intro")
        self.c1 = [PINK, self.translate("Func_5_1.P4.q.c1")]
        self.c2 = [TEAL, self.translate("Func_5_1.P4.q.c2")]

        self.f2 = lambda x: (x**4 + 2)/6
        self.f3 = lambda x: (x**3 + x)/2.5

        super().construct()

class Func_5_1_P_4_a(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [PINK, self.translate("Func_5_1.P4.q.c1")]
        self.c2 = [TEAL, self.translate("Func_5_1.P4.q.c2")]

        self.f2 = lambda x: (x**4 + 2)/6
        self.f3 = lambda x: (x**3 + x)/2.5

        self.intro = self.translate("Func_5_1.P4.a.intro")

        super().construct()

class Func_5_1_P_4_b(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [PINK, self.translate("Func_5_1.P4.q.c1")]
        self.c2 = [TEAL, self.translate("Func_5_1.P4.q.c2")]

        self.f2 = lambda x: (x**4 + 2)/6
        self.f3 = lambda x: (x**3 + x)/2.5

        self.intro = self.translate("Func_5_1.P4.b.intro")

        super().construct()

class Func_5_1_P_4_c(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [PINK, self.translate("Func_5_1.P4.q.c1")]
        self.c2 = [TEAL, self.translate("Func_5_1.P4.q.c2")]

        self.f2 = lambda x: (x**4 + 2)/6
        self.f3 = lambda x: (x**3 + x)/2.5

        self.intro = self.translate("Func_5_1.P4.a.intro")

        super().construct()

class Func_5_1_P_4_d(EvenOddAnswerScene):

    def construct(self):

        self.c1 = [PINK, self.translate("Func_5_1.P4.q.c1")]
        self.c2 = [TEAL, self.translate("Func_5_1.P4.q.c2")]

        self.f2 = lambda x: (x**4 + 2)/6
        self.f3 = lambda x: (x**3 + x)/2.5

        self.intro = self.translate("Func_5_1.P4.a.intro")

        super().construct()



PROTOTYPES=[
    PagePrototypeVideo.from_scene(Func_5_1_I_1),
    PagePrototypeVideo.from_scene(Func_5_1_I_2_q),
    PagePrototypeQuestion.from_scene(Func_5_1_I_2_q),
    PagePrototypeVideo.from_scene(Func_5_1_I_2_a),
    PagePrototypeVideo.from_scene(Func_5_1_I_2_b),
    PagePrototypeVideo.from_scene(Func_5_1_I_2_c),
    PagePrototypeVideo.from_scene(Func_5_1_I_2_d),
    PagePrototypeVideo.from_scene(Func_5_1_I_3_q),
    PagePrototypeQuestion.from_scene(Func_5_1_I_3_q),
    PagePrototypeVideo.from_scene(Func_5_1_I_3_a),
    PagePrototypeVideo.from_scene(Func_5_1_I_3_b),
    PagePrototypeVideo.from_scene(Func_5_1_I_3_c),
    PagePrototypeVideo.from_scene(Func_5_1_I_3_d),
    PagePrototypeVideo.from_scene(Func_5_1_I_4_q),
    PagePrototypeQuestion.from_scene(Func_5_1_I_4_q),
    PagePrototypeVideo.from_scene(Func_5_1_I_4_a),
    PagePrototypeVideo.from_scene(Func_5_1_I_4_b),
    PagePrototypeVideo.from_scene(Func_5_1_I_4_c),
    PagePrototypeVideo.from_scene(Func_5_1_I_4_d),
    PagePrototypeVideo.from_scene(Func_5_1_I_5),
    PagePrototypeVideo.from_scene(Func_5_1_I_6),
    PagePrototypeVideo.from_scene(Func_5_1_I_7),
    PagePrototypeVideo.from_scene(Func_5_1_P_1_q),
    PagePrototypeQuestion.from_scene(Func_5_1_P_1_q),
    PagePrototypeVideo.from_scene(Func_5_1_P_1_a),
    PagePrototypeVideo.from_scene(Func_5_1_P_1_b),
    PagePrototypeVideo.from_scene(Func_5_1_P_1_c),
    PagePrototypeVideo.from_scene(Func_5_1_P_1_d),
    PagePrototypeVideo.from_scene(Func_5_1_P_2_q),
    PagePrototypeQuestion.from_scene(Func_5_1_P_2_q),
    PagePrototypeVideo.from_scene(Func_5_1_P_2_a),
    PagePrototypeVideo.from_scene(Func_5_1_P_2_b),
    PagePrototypeVideo.from_scene(Func_5_1_P_2_c),
    PagePrototypeVideo.from_scene(Func_5_1_P_2_d),
    PagePrototypeVideo.from_scene(Func_5_1_P_3_q),
    PagePrototypeQuestion.from_scene(Func_5_1_P_3_q),
    PagePrototypeVideo.from_scene(Func_5_1_P_3_a),
    PagePrototypeVideo.from_scene(Func_5_1_P_3_b),
    PagePrototypeVideo.from_scene(Func_5_1_P_3_c),
    PagePrototypeVideo.from_scene(Func_5_1_P_3_d),
    PagePrototypeVideo.from_scene(Func_5_1_P_4_q),
    PagePrototypeQuestion.from_scene(Func_5_1_P_4_q),
    PagePrototypeVideo.from_scene(Func_5_1_P_4_a),
    PagePrototypeVideo.from_scene(Func_5_1_P_4_b),
    PagePrototypeVideo.from_scene(Func_5_1_P_4_c),
    PagePrototypeVideo.from_scene(Func_5_1_P_4_d),

]