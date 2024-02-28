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
import ast


#####################################
#####################################
class Func_4_5_I_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$f(x)=x^2-2$", "g(x)=x^2(x-1)", "h(x)=(x-2)(x+2)"],
            correctAnswerIndex = 1,
            questionText=self.translate("Func_4_5.I1.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I1.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = lambda x: x**2
        g1 = plane.plot(f1, color=BLUE)

        f = MathTex("f","(x)", "=", "x^2", "-", "2", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        g = MathTex("g","(x)", "=", "x^2", "\\cdot", "(x-","1",")", color=c2t, font_size=fs2).next_to(f, DOWN, buff=0.2)
        h = MathTex("h","(x)", "=", "(x-","2",")", "\\cdot", "(x+","2",")", color=c3t, font_size=fs2).next_to(g, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_5.I1.q.voiceover")
        ) as tracker:

            cursor.idle=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.play(Create(g1))
            cursor.idle=True

            self.wait_until_bookmark("f")
            x,y,_ = f[0].get_center()+0.4*DOWN
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("g")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("h")
            cursor.idle=False
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
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I1.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
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
                text=self.translate("General.incorrect_2")+self.translate("Func_4_5.I1.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("f")
            x,y,_ = f[0].get_center()+0.4*DOWN
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("g")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("m1")
            cursor.idle=False
            x,y,_ = g2.get_center()+0.4*DOWN
            self.play(Write(a1), Write(g2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("h")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("m2")
            cursor.idle=False
            x,y,_ = h2.get_center()+0.4*DOWN
            self.play(Write(a2), Write(h2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I1.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)

        cursor.add_updater(lambda m: self.bring_to_front(cursor))
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
                text=self.translate("General.correct_2")+self.translate("Func_4_5.I1.a.voiceover")
        ) as tracker:



            self.wait_until_bookmark("f")
            x,y,_ = f[0].get_center()+0.4*DOWN
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("g")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("m1")
            cursor.idle=False
            x,y,_ = g2.get_center()+0.4*DOWN
            self.play(Write(a1), Write(g2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("h")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("m2")
            cursor.idle=False
            x,y,_ = h2.get_center()+0.4*DOWN
            self.play(Write(a2), Write(h2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I1.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)

        cursor.add_updater(lambda m: self.bring_to_front(cursor))
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
                text=self.translate("General.incorrect_2")+self.translate("Func_4_5.I1.a.voiceover")
        ) as tracker:



            self.wait_until_bookmark("f")
            x,y,_ = f[0].get_center()+0.4*DOWN
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("g")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("m1")
            cursor.idle=False
            x,y,_ = g2.get_center()+0.4*DOWN
            self.play(Write(a1), Write(g2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("h")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("m2")
            cursor.idle=False
            x,y,_ = h2.get_center()+0.4*DOWN
            self.play(Write(a2), Write(h2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
class Func_4_5_I_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_4_5.I2.q.answer-options")),
            correctAnswerIndex=0,
            questionText=self.translate("Func_4_5.I2.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_4_5.I2.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([0,4, 1], [-5, 5, 1], x_ticks=[0,1,2,3,4],y_ticks=[-5,-3,-1,1,3,5]).shift(DOWN*0.6)
        plane = cords[0]

        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        a = ValueTracker(1)
        f1 = lambda x: -2*(x-2)**2+3
        g1 = plane.plot(f1, color=BLUE, x_range=[0,4,0.0001])
        f1 = MathTex("f","(x)", "=", "-2","(x-", "2", ")^2", "+", "3", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)

        funcTerm = MathTex("f","(x)", "=","a","x^2", "+bx", "+", "c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_5.I2.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("funcTerm")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("fOut")
            self.play(Unwrite(funcTerm))

            self.wait_until_bookmark("1f")
            cursor.idle = False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1), CursorMoveTo(cursor, x, y), run_time=0.2)
            
            self.wait_until_bookmark("1x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.1)

            self.wait_until_bookmark("1neg2")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("vertexForm")
            x,y,_ = title.get_center()+0.6*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True
                                                                        
            self.wait_until_bookmark("graph")
            cursor.idle=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), Write(cords), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.play(Create(g1))
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I2.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([0,4, 1], [-5, 5, 1], x_ticks=[0,1,2,3,4],y_ticks=[-5,-3,-1,1,3,5]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
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
                text=self.translate("General.correct_4")+self.translate("Func_4_5.I2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("vertex")
            x,y,_ = plane.c2p(2,3)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("square")
            cursor.idle=False
            x,y,_ = (f1[3].get_center()+f1[3].get_center())/2+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("3")
            cursor.idle=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("x")
            cursor.idle=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("square2")
            cursor.idle=False
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("three")
            cursor.idle=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("sol")
            cursor.idle=False
            x,y,_ = f2.get_center()+0.4*DOWN
            self.play(Write(a), Write(f2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("square3")
            cursor.idle=False
            x,y,_ = f2[4].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("33")
            cursor.idle=False
            x,y,_ = f2[6].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I2.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([0,4, 1], [-5, 5, 1], x_ticks=[0,1,2,3,4],y_ticks=[-5,-3,-1,1,3,5]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
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
                text=self.translate("General.incorrect_4")+self.translate("Func_4_5.I2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("vertex")
            x,y,_ = plane.c2p(2,3)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("square")
            cursor.idle=False
            x,y,_ = (f1[3].get_center()+f1[3].get_center())/2+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("3")
            cursor.idle=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("x")
            cursor.idle=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("square2")
            cursor.idle=False
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("three")
            cursor.idle=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("sol")
            cursor.idle=False
            x,y,_ = f2.get_center()+0.4*DOWN
            self.play(Write(a), Write(f2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("square3")
            cursor.idle=False
            x,y,_ = f2[4].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("33")
            cursor.idle=False
            x,y,_ = f2[6].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I2.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([0,4, 1], [-5, 5, 1], x_ticks=[0,1,2,3,4],y_ticks=[-5,-3,-1,1,3,5]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
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
                text=self.translate("General.incorrect_4")+self.translate("Func_4_5.I2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("vertex")
            x,y,_ = plane.c2p(2,3)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("square")
            cursor.idle=False
            x,y,_ = (f1[3].get_center()+f1[3].get_center())/2+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("3")
            cursor.idle=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("x")
            cursor.idle=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("square2")
            cursor.idle=False
            x,y,_ = f1[4].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("three")
            cursor.idle=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("sol")
            cursor.idle=False
            x,y,_ = f2.get_center()+0.4*DOWN
            self.play(Write(a), Write(f2), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("square3")
            cursor.idle=False
            x,y,_ = f2[4].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("33")
            cursor.idle=False
            x,y,_ = f2[6].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_4_5_I_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["(-1,-2)", "(1,2)", "(1,-2)", "(-1,2)"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_4_5.I3.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I2.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = lambda x: -2*(x-2)**2+3
        f1 = MathTex("f","(x)", "=", "(x+", "1", ")^2", "-", "2", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_5.I3.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I2.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
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
                text=self.translate("General.correct_6")+self.translate("Func_4_5.I3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("moveUp")
            self.play(f1.animate.next_to(title, DOWN, buff=1))

            self.wait_until_bookmark("ofX")
            cursor.idle=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("square")
            cursor.idle=False
            x,y,_ = f2.get_center()+0.7*DOWN
            self.play(Write(f2), run_time=1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("a1")
            cursor.idle=False
            x,y,_ = a1[1].get_center()+0.4*DOWN
            self.play(Write(a1), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("negTwo")
            cursor.idle=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("sol")
            cursor.idle=False
            x,y,_ = f3.get_center()+0.4*DOWN
            self.play(Write(f3), CursorMoveTo(cursor, x, y), run_time=0.6)
            cursor.idle=True

            self.wait_until_bookmark("summary")
            cursor.idle=False
            x,y,_ = a2.get_center()+0.4*RIGHT
            self.play(Write(a2), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("sum2")
            cursor.idle=False
            x,y,_ = f4.get_center()+0.4*DOWN
            self.play(Write(f4), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I2.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
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
                text=self.translate("General.incorrect_6")+self.translate("Func_4_5.I3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("moveUp")
            self.play(f1.animate.next_to(title, DOWN, buff=1))

            self.wait_until_bookmark("ofX")
            cursor.idle=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("square")
            cursor.idle=False
            x,y,_ = f2.get_center()+0.7*DOWN
            self.play(Write(f2), run_time=1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("a1")
            cursor.idle=False
            x,y,_ = a1[1].get_center()+0.4*DOWN
            self.play(Write(a1), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("negTwo")
            cursor.idle=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("sol")
            cursor.idle=False
            x,y,_ = f3.get_center()+0.4*DOWN
            self.play(Write(f3), CursorMoveTo(cursor, x, y), run_time=0.6)
            cursor.idle=True

            self.wait_until_bookmark("summary")
            cursor.idle=False
            x,y,_ = a2.get_center()+0.4*RIGHT
            self.play(Write(a2), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("sum2")
            cursor.idle=False
            x,y,_ = f4.get_center()+0.4*DOWN
            self.play(Write(f4), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_3_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I2.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
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
                text=self.translate("General.incorrect_6")+self.translate("Func_4_5.I3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("moveUp")
            self.play(f1.animate.next_to(title, DOWN, buff=1))

            self.wait_until_bookmark("ofX")
            cursor.idle=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("square")
            cursor.idle=False
            x,y,_ = f2.get_center()+0.7*DOWN
            self.play(Write(f2), run_time=1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("a1")
            cursor.idle=False
            x,y,_ = a1[1].get_center()+0.4*DOWN
            self.play(Write(a1), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("negTwo")
            cursor.idle=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("sol")
            cursor.idle=False
            x,y,_ = f3.get_center()+0.4*DOWN
            self.play(Write(f3), CursorMoveTo(cursor, x, y), run_time=0.6)
            cursor.idle=True

            self.wait_until_bookmark("summary")
            cursor.idle=False
            x,y,_ = a2.get_center()+0.4*RIGHT
            self.play(Write(a2), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("sum2")
            cursor.idle=False
            x,y,_ = f4.get_center()+0.4*DOWN
            self.play(Write(f4), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_3_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I2.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
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
                text=self.translate("General.incorrect_6")+self.translate("Func_4_5.I3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("moveUp")
            self.play(f1.animate.next_to(title, DOWN, buff=1))

            self.wait_until_bookmark("ofX")
            cursor.idle=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("square")
            cursor.idle=False
            x,y,_ = f2.get_center()+0.7*DOWN
            self.play(Write(f2), run_time=1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("a1")
            cursor.idle=False
            x,y,_ = a1[1].get_center()+0.4*DOWN
            self.play(Write(a1), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("negTwo")
            cursor.idle=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("sol")
            cursor.idle=False
            x,y,_ = f3.get_center()+0.4*DOWN
            self.play(Write(f3), CursorMoveTo(cursor, x, y), run_time=0.6)
            cursor.idle=True

            self.wait_until_bookmark("summary")
            cursor.idle=False
            x,y,_ = a2.get_center()+0.4*RIGHT
            self.play(Write(a2), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("sum2")
            cursor.idle=False
            x,y,_ = f4.get_center()+0.4*DOWN
            self.play(Write(f4), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)




#####################################
#####################################
class Func_4_5_I_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["(a,c)", "(b,c)", "(a+b,c)", "(-b,c)"],
            correctAnswerIndex = 3,
            questionText=self.translate("Func_4_5.I4.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I2.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = lambda x: -2*(x-2)**2+3
        f1 = MathTex("f","(x)", "=", "a\\cdot", "(x+", "b", ")^2", "+", "c", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_5.I4.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)



class Func_4_5_I_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I2.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "a\\cdot", "(x+", "b", ")^2", "+", "c", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1)
        bracket = VGroup(f1[4], f1[5], f1[6])
        f2 = MathTex("\\underbrace{(x+b)^2}_{\\geq0}", color=c1t, font_size=fs2).move_to(bracket)
        f2.shift(bracket.get_top()-f2.get_top())
        a1 = Tex("$\\Downarrow$\\,\\,", "\\,\\,x=-b", font_size=fs2, color=c1t).next_to(f1, DOWN, buff=0.8)
        f3 = MathTex("f(-b)=a\\cdot(-b+b)^2+c=c", color=c1t, font_size=fs2).scale(0.9).next_to(a1, DOWN, buff=0.5)
        a2 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f3, DOWN, buff=0.5)
        vertex = self.translate("Func_4_5.I4.d.vertex")
        f4 = Tex(f"{vertex} (-b,c)", color=c1t, font_size=fs2).next_to(a2, DOWN, buff=0.5)

        f1.move_to(ORIGIN)
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_4_5.I4.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("moveUp")
            self.play(f1.animate.next_to(title, DOWN, buff=1))

            self.wait_until_bookmark("ofX")
            cursor.idle=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("square")
            cursor.idle=False
            x,y,_ = f2.get_center()+0.7*DOWN
            self.play(Write(f2), run_time=1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("a1")
            cursor.idle=False
            x,y,_ = a1[1].get_center()+0.4*DOWN
            self.play(Write(a1), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("negTwo")
            cursor.idle=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("sol")
            cursor.idle=False
            x,y,_ = f3.get_center()+0.4*DOWN
            self.play(Write(f3), CursorMoveTo(cursor, x, y), run_time=0.6)
            cursor.idle=True

            self.wait_until_bookmark("summary")
            cursor.idle=False
            x,y,_ = a2.get_center()+0.4*RIGHT
            self.play(Write(a2), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("sum2")
            cursor.idle=False
            x,y,_ = f4.get_center()+0.4*DOWN
            self.play(Write(f4), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I2.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "a\\cdot", "(x+", "b", ")^2", "+", "c", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1)
        bracket = VGroup(f1[4], f1[5], f1[6])
        f2 = MathTex("\\underbrace{(x+b)^2}_{\\geq0}", color=c1t, font_size=fs2).move_to(bracket)
        f2.shift(bracket.get_top()-f2.get_top())
        a1 = Tex("$\\Downarrow$\\,\\,", "\\,\\,x=-b", font_size=fs2, color=c1t).next_to(f1, DOWN, buff=0.8)
        f3 = MathTex("f(-b)=a\\cdot(-b+b)^2+c=c", color=c1t, font_size=fs2).scale(0.9).next_to(a1, DOWN, buff=0.5)
        a2 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f3, DOWN, buff=0.5)
        vertex = self.translate("Func_4_5.I4.d.vertex")
        f4 = Tex(f"{vertex} (-b,c)", color=c1t, font_size=fs2).next_to(a2, DOWN, buff=0.5)

        f1.move_to(ORIGIN)
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_4_5.I4.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("moveUp")
            self.play(f1.animate.next_to(title, DOWN, buff=1))

            self.wait_until_bookmark("ofX")
            cursor.idle=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("square")
            cursor.idle=False
            x,y,_ = f2.get_center()+0.7*DOWN
            self.play(Write(f2), run_time=1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("a1")
            cursor.idle=False
            x,y,_ = a1[1].get_center()+0.4*DOWN
            self.play(Write(a1), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("negTwo")
            cursor.idle=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("sol")
            cursor.idle=False
            x,y,_ = f3.get_center()+0.4*DOWN
            self.play(Write(f3), CursorMoveTo(cursor, x, y), run_time=0.6)
            cursor.idle=True

            self.wait_until_bookmark("summary")
            cursor.idle=False
            x,y,_ = a2.get_center()+0.4*RIGHT
            self.play(Write(a2), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("sum2")
            cursor.idle=False
            x,y,_ = f4.get_center()+0.4*DOWN
            self.play(Write(f4), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_4_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I2.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "a\\cdot", "(x+", "b", ")^2", "+", "c", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1)
        bracket = VGroup(f1[4], f1[5], f1[6])
        f2 = MathTex("\\underbrace{(x+b)^2}_{\\geq0}", color=c1t, font_size=fs2).move_to(bracket)
        f2.shift(bracket.get_top()-f2.get_top())
        a1 = Tex("$\\Downarrow$\\,\\,", "\\,\\,x=-b", font_size=fs2, color=c1t).next_to(f1, DOWN, buff=0.8)
        f3 = MathTex("f(-b)=a\\cdot(-b+b)^2+c=c", color=c1t, font_size=fs2).scale(0.9).next_to(a1, DOWN, buff=0.5)
        a2 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f3, DOWN, buff=0.5)
        vertex = self.translate("Func_4_5.I4.d.vertex")
        f4 = Tex(f"{vertex} (-b,c)", color=c1t, font_size=fs2).next_to(a2, DOWN, buff=0.5)

        f1.move_to(ORIGIN)
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_4_5.I4.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("moveUp")
            self.play(f1.animate.next_to(title, DOWN, buff=1))

            self.wait_until_bookmark("ofX")
            cursor.idle=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("square")
            cursor.idle=False
            x,y,_ = f2.get_center()+0.7*DOWN
            self.play(Write(f2), run_time=1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("a1")
            cursor.idle=False
            x,y,_ = a1[1].get_center()+0.4*DOWN
            self.play(Write(a1), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("negTwo")
            cursor.idle=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("sol")
            cursor.idle=False
            x,y,_ = f3.get_center()+0.4*DOWN
            self.play(Write(f3), CursorMoveTo(cursor, x, y), run_time=0.6)
            cursor.idle=True

            self.wait_until_bookmark("summary")
            cursor.idle=False
            x,y,_ = a2.get_center()+0.4*RIGHT
            self.play(Write(a2), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("sum2")
            cursor.idle=False
            x,y,_ = f4.get_center()+0.4*DOWN
            self.play(Write(f4), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_4_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I2.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "a\\cdot", "(x+", "b", ")^2", "+", "c", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1)
        bracket = VGroup(f1[4], f1[5], f1[6])
        f2 = MathTex("\\underbrace{(x+b)^2}_{\\geq0}", color=c1t, font_size=fs2).move_to(bracket)
        f2.shift(bracket.get_top()-f2.get_top())
        a1 = Tex("$\\Downarrow$\\,\\,", "\\,\\,x=-b", font_size=fs2, color=c1t).next_to(f1, DOWN, buff=0.8)
        f3 = MathTex("f(-b)=a\\cdot(-b+b)^2+c=c", color=c1t, font_size=fs2).scale(0.9).next_to(a1, DOWN, buff=0.5)
        a2 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f3, DOWN, buff=0.5)
        vertex = self.translate("Func_4_5.I4.d.vertex")
        f4 = Tex(f"{vertex} (-b,c)", color=c1t, font_size=fs2).next_to(a2, DOWN, buff=0.5)

        f1.move_to(ORIGIN)
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_4_5.I4.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("moveUp")
            self.play(f1.animate.next_to(title, DOWN, buff=1))

            self.wait_until_bookmark("ofX")
            cursor.idle=False
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("square")
            cursor.idle=False
            x,y,_ = f2.get_center()+0.7*DOWN
            self.play(Write(f2), run_time=1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("a1")
            cursor.idle=False
            x,y,_ = a1[1].get_center()+0.4*DOWN
            self.play(Write(a1), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("negTwo")
            cursor.idle=False
            x,y,_ = f1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("sol")
            cursor.idle=False
            x,y,_ = f3.get_center()+0.4*DOWN
            self.play(Write(f3), CursorMoveTo(cursor, x, y), run_time=0.6)
            cursor.idle=True

            self.wait_until_bookmark("summary")
            cursor.idle=False
            x,y,_ = a2.get_center()+0.4*RIGHT
            self.play(Write(a2), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("sum2")
            cursor.idle=False
            x,y,_ = f4.get_center()+0.4*DOWN
            self.play(Write(f4), CursorMoveTo(cursor, x, y), run_time=0.2)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
class Func_4_5_I_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_4_5.I5.q.answer-options")),
            correctAnswerIndex=1,
            questionText=self.translate("Func_4_5.I5.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I5.q.title"))

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x-", "2)", "\\cdot", "(x+", "1", ")", color=c1t, font_size=fs2)
        f = lambda x: (x-2)*(x+1)
        g = plane.plot(f, color=BLUE, x_range=[-2.2,2.2,0.001])

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_5.I5.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), f1.animate.next_to(cords, DOWN, buff=0.6))

            self.wait_until_bookmark("plot")
            cursor.idle=False
            x,y,_ = g.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g.get_end())))
            self.play(Create(g))
            cursor.idle=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_4_5.I5.q.title"))

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x-", "2)", "\\cdot", "(x+", "1", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        if_statement = self.translate("Func_4_5.I5.a.if_statement")
        b1b = MathTex(f"\\underbrace{{(x-2)}}_{{=0\\text{{ {if_statement} }}x=2}}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex(f"\\underbrace{{(x+1)}}_{{=0\\text{{ {if_statement} }}x=-1}}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top())
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sol1a, sol1b = self.translate("Func_4_5.I5.a.sol1a"), self.translate("Func_4_5.I5.a.sol1b")
        sol = Tex(sol1a, "$x=2$", sol1b, "$x=-1$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        calcs = Group(f1, b1b, b2b, a, sol)

        f = lambda x: (x-2)*(x+1)
        g = plane.plot(f, color=BLUE, x_range=[-2.2,2.2,0.001])

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_5.I5.a.voiceintro")+self.translate("Func_4_5.I5.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("b1")
            cursor.idle=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("b1b")
            cursor.idle=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("arrow")
            cursor.idle=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("z1")
            cursor.idle=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), calcs.animate.next_to(cords, DOWN, buff=0.6))

            self.wait_until_bookmark("plot")
            cursor.idle=False
            x,y,_ = g.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g.get_end())))
            self.play(Create(g))
            cursor.idle=True

            self.wait_until_bookmark("zg1")
            cursor.idle=False
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
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_5_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I5.q.title"))

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x-", "2)", "\\cdot", "(x+", "1", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        if_statement = self.translate("Func_4_5.I5.a.if_statement")
        b1b = MathTex(f"\\underbrace{{(x-2)}}_{{=0\\text{{ {if_statement} }}x=2}}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex(f"\\underbrace{{(x+1)}}_{{=0\\text{{ {if_statement} }}x=-1}}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top())
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sol1a, sol1b = self.translate("Func_4_5.I5.a.sol1a"), self.translate("Func_4_5.I5.a.sol1b")
        sol = Tex(sol1a, "$x=2$", sol1b, "$x=-1$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        calcs = Group(f1, b1b, b2b, a, sol)

        f = lambda x: (x-2)*(x+1)
        g = plane.plot(f, color=BLUE, x_range=[-2.2,2.2,0.001])

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_5.I5.b.voiceintro")+self.translate("Func_4_5.I5.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("b1")
            cursor.idle=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("b1b")
            cursor.idle=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("arrow")
            cursor.idle=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("z1")
            cursor.idle=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), calcs.animate.next_to(cords, DOWN, buff=0.6))

            self.wait_until_bookmark("plot")
            cursor.idle=False
            x,y,_ = g.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g.get_end())))
            self.play(Create(g))
            cursor.idle=True

            self.wait_until_bookmark("zg1")
            cursor.idle=False
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
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_5_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I5.q.title"))

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x-", "2)", "\\cdot", "(x+", "1", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        if_statement = self.translate("Func_4_5.I5.a.if_statement")
        b1b = MathTex(f"\\underbrace{{(x-2)}}_{{=0\\text{{ {if_statement} }}x=2}}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex(f"\\underbrace{{(x+1)}}_{{=0\\text{{ {if_statement} }}x=-1}}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top())
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sol1a, sol1b = self.translate("Func_4_5.I5.a.sol1a"), self.translate("Func_4_5.I5.a.sol1b")
        sol = Tex(sol1a, "$x=2$", sol1b, "$x=-1$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        calcs = Group(f1, b1b, b2b, a, sol)

        f = lambda x: (x-2)*(x+1)
        g = plane.plot(f, color=BLUE, x_range=[-2.2,2.2,0.001])

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_5.I5.a.voiceintro")+self.translate("Func_4_5.I5.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("b1")
            cursor.idle=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("b1b")
            cursor.idle=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("arrow")
            cursor.idle=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("z1")
            cursor.idle=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), calcs.animate.next_to(cords, DOWN, buff=0.6))

            self.wait_until_bookmark("plot")
            cursor.idle=False
            x,y,_ = g.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g.get_end())))
            self.play(Create(g))
            cursor.idle=True

            self.wait_until_bookmark("zg1")
            cursor.idle=False
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
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_4_5_I_6_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["(-2,-3)", "(2,-3)", "(-2,3)", "(2,3)"],
            correctAnswerIndex = 2,
            questionText=self.translate("Func_4_5.I6.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I5.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x+", "2)", "\\cdot", "(x-", "3", ")", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_5.I6.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_5_I_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I5.q.title"))

        #Create the coordinate system
        cords = self.add_cords([-3,3, 1], [-10, 10, 2], x_ticks=[-3,-2,-1,1,2,3],y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
        plane = cords[0]

        cursor = AltCursor(stroke_width=0.0, idle=True).shift(UP)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
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
        sola, solb = self.translate("Func_4_5.I6.a.sol1a"), self.translate("Func_4_5.I6.a.sol1b")
        sol = Tex(sola, "$x=-2$", solb, "$x=3$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        calcs = Group(f1, b1b, b2b, a, sol)

        f = lambda x: (x+2)*(x-3)
        g = plane.plot(f, color=BLUE, x_range=[-3.1,3.1,0.001])

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_4_5.I6.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("b1")
            cursor.idle=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("b1b")
            cursor.idle=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("arrow")
            cursor.idle=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("z1")
            cursor.idle=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), calcs.animate.next_to(cords, DOWN, buff=0.6))

            self.wait_until_bookmark("plot")
            cursor.idle=False
            x,y,_ = g.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g.get_end())))
            self.play(Create(g))
            cursor.idle=True

            self.wait_until_bookmark("zg1")
            cursor.idle=False
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
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_6_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I5.q.title"))

        #Create the coordinate system
        cords = self.add_cords([-3,3, 1], [-10, 10, 2], x_ticks=[-3,-2,-1,1,2,3],y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
        plane = cords[0]

        cursor = AltCursor(stroke_width=0.0, idle=True).shift(UP)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
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
        sola, solb = self.translate("Func_4_5.I6.a.sol1a"), self.translate("Func_4_5.I6.a.sol1b")
        sol = Tex(sola, "$x=-2$", solb, "$x=3$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        calcs = Group(f1, b1b, b2b, a, sol)

        f = lambda x: (x+2)*(x-3)
        g = plane.plot(f, color=BLUE, x_range=[-3.1,3.1,0.001])

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_4_5.I6.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("b1")
            cursor.idle=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("b1b")
            cursor.idle=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("arrow")
            cursor.idle=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("z1")
            cursor.idle=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), calcs.animate.next_to(cords, DOWN, buff=0.6))

            self.wait_until_bookmark("plot")
            cursor.idle=False
            x,y,_ = g.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g.get_end())))
            self.play(Create(g))
            cursor.idle=True

            self.wait_until_bookmark("zg1")
            cursor.idle=False
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
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)



class Func_4_5_I_6_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I5.q.title"))

        #Create the coordinate system
        cords = self.add_cords([-3,3, 1], [-10, 10, 2], x_ticks=[-3,-2,-1,1,2,3],y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
        plane = cords[0]

        cursor = AltCursor(stroke_width=0.0, idle=True).shift(UP)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
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
        sola, solb = self.translate("Func_4_5.I6.a.sol1a"), self.translate("Func_4_5.I6.a.sol1b")
        sol = Tex(sola, "$x=-2$", solb, "$x=3$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        calcs = Group(f1, b1b, b2b, a, sol)

        f = lambda x: (x+2)*(x-3)
        g = plane.plot(f, color=BLUE, x_range=[-3.1,3.1,0.001])

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_1")+self.translate("Func_4_5.I6.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("b1")
            cursor.idle=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("b1b")
            cursor.idle=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("arrow")
            cursor.idle=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("z1")
            cursor.idle=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), calcs.animate.next_to(cords, DOWN, buff=0.6))

            self.wait_until_bookmark("plot")
            cursor.idle=False
            x,y,_ = g.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g.get_end())))
            self.play(Create(g))
            cursor.idle=True

            self.wait_until_bookmark("zg1")
            cursor.idle=False
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
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_6_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I5.q.title"))

        #Create the coordinate system
        cords = self.add_cords([-3,3, 1], [-10, 10, 2], x_ticks=[-3,-2,-1,1,2,3],y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
        plane = cords[0]

        cursor = AltCursor(stroke_width=0.0, idle=True).shift(UP)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
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
        sola, solb = self.translate("Func_4_5.I6.a.sol1a"), self.translate("Func_4_5.I6.a.sol1b")
        sol = Tex(sola, "$x=-2$", solb, "$x=3$", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        calcs = Group(f1, b1b, b2b, a, sol)

        f = lambda x: (x+2)*(x-3)
        g = plane.plot(f, color=BLUE, x_range=[-3.1,3.1,0.001])

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_4_5.I6.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("b1")
            cursor.idle=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("b1b")
            cursor.idle=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("arrow")
            cursor.idle=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("z1")
            cursor.idle=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), calcs.animate.next_to(cords, DOWN, buff=0.6))

            self.wait_until_bookmark("plot")
            cursor.idle=False
            x,y,_ = g.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g.get_end())))
            self.play(Create(g))
            cursor.idle=True

            self.wait_until_bookmark("zg1")
            cursor.idle=False
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
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

    
#####################################
#####################################
class Func_4_5_I_7_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["(a,b)", "(0,b)", "(a,0)", "(-a,-b)"],
            correctAnswerIndex = 3,
            questionText=self.translate("Func_4_5.I7.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I5.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x+", "a)", "\\cdot", "(x+", "b", ")", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_5.I7.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_7_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I5.q.title"))


        cursor = AltCursor(stroke_width=0.0, idle=True).shift(UP)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x+", "a)", "\\cdot", "(x+", "b", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        if_string = self.translate("GENERAL.IF")
        b1b = MathTex("\\underbrace{(x+a)}_{0\\text{ "+if_string+" }x=-a}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex("\\underbrace{(x+b)}_{0\\text{ "+if_string+" }x=-b}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top()).shift(0.4*DOWN)
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sola, solb = self.translate("Func_4_5.I6.a.sol1a"), self.translate("Func_4_5.I6.a.sol1b")
        sol = Tex(sola, " $x=-a$ ", solb, " $x=-b $", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6")+self.translate("Func_4_5.I7.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("b1")
            cursor.idle=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("b1b")
            cursor.idle=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("arrow")
            cursor.idle=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("z1")
            cursor.idle=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_7_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I5.q.title"))


        cursor = AltCursor(stroke_width=0.0, idle=True).shift(UP)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x+", "a)", "\\cdot", "(x+", "b", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        if_string = self.translate("GENERAL.IF")
        b1b = MathTex("\\underbrace{(x+a)}_{0\\text{ "+if_string+" }x=-a}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex("\\underbrace{(x+b)}_{0\\text{ "+if_string+" }x=-b}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top()).shift(0.4*DOWN)
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sola, solb = self.translate("Func_4_5.I6.a.sol1a"), self.translate("Func_4_5.I6.a.sol1b")
        sol = Tex(sola, " $x=-a$ ", solb, " $x=-b $", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6")+self.translate("Func_4_5.I7.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("b1")
            cursor.idle=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("b1b")
            cursor.idle=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("arrow")
            cursor.idle=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("z1")
            cursor.idle=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_7_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I5.q.title"))


        cursor = AltCursor(stroke_width=0.0, idle=True).shift(UP)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x+", "a)", "\\cdot", "(x+", "b", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        if_string = self.translate("GENERAL.IF")
        b1b = MathTex("\\underbrace{(x+a)}_{0\\text{ "+if_string+" }x=-a}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex("\\underbrace{(x+b)}_{0\\text{ "+if_string+" }x=-b}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top()).shift(0.4*DOWN)
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sola, solb = self.translate("Func_4_5.I6.a.sol1a"), self.translate("Func_4_5.I6.a.sol1b")
        sol = Tex(sola, " $x=-a$ ", solb, " $x=-b $", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6")+self.translate("Func_4_5.I7.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("b1")
            cursor.idle=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("b1b")
            cursor.idle=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("arrow")
            cursor.idle=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("z1")
            cursor.idle=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_5_I_7_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_5.I5.q.title"))


        cursor = AltCursor(stroke_width=0.0, idle=True).shift(UP)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = MathTex("f","(x)", "=", "(x+", "a)", "\\cdot", "(x+", "b", ")", color=c1t, font_size=fs2)
        self.add(f1)
        b1 = VGroup(f1[3], f1[4])
        b2 = VGroup(f1[-3], f1[-2], f1[-1])
        if_string = self.translate("GENERAL.IF")
        b1b = MathTex("\\underbrace{(x+a)}_{0\\text{ "+if_string+" }x=-a}", color=c1t, font_size=fs2).move_to(b1)
        b2b = MathTex("\\underbrace{(x+b)}_{0\\text{ "+if_string+" }x=-b}", color=c1t, font_size=fs2).move_to(b2)
        b1b.shift(b1.get_top()-b1b.get_top())
        b2b.shift(b2.get_top()-b2b.get_top()).shift(0.4*DOWN)
        a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.6)
        sola, solb = self.translate("Func_4_5.I6.a.sol1a"), self.translate("Func_4_5.I6.a.sol1b")
        sol = Tex(sola, " $x=-a$ ", solb, " $x=-b $", color=c1t, font_size=fs3).next_to(a, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_6")+self.translate("Func_4_5.I7.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("b1")
            cursor.idle=False
            x,y,_ = b1.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2")
            x,y,_ = b2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("b1b")
            cursor.idle=False
            x,y,_ = b1b.get_center()+0.6*DOWN
            self.play(Write(b1b), CursorMoveTo(cursor, x, y), run_time=0.2)

            self.wait_until_bookmark("b2b")
            x,y,_ = b2b.get_center()+0.6*DOWN
            self.play(Write(b2b), CursorMoveToCurved(cursor, x, y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("arrow")
            cursor.idle=False
            x,y,_ = a.get_center()+0.4*RIGHT
            self.play(Write(a), CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("z1")
            cursor.idle=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("z2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)
            cursor.idle=True

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
        title = self.add_title(self.translate("Func_4_5.I8.q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        f1 = MathTex("f", "(x)", "=", "a", "x", "^2", "+", "b", "x", "+", "c", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1.6)
        f2 = MathTex("f", "(x)", "=", "a","(x+", "b",")^2", "+", "c", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.4)
        f3 = MathTex("f", "(x)", "=", "(x-", "a", ")", "\\cdot", "(x-", "b", ")", color=c1t, font_size=fs2).next_to(f2, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_5.I8.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f1")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("f2")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("f3")
            cursor.idle=False
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
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
##### Prototypes ####################
#####################################
#####################################
PROTOTYPES = [
    PagePrototypeVideo.from_scene(Func_4_5_I_1_q),
    PagePrototypeQuestion.from_scene(Func_4_5_I_1_q),
    PagePrototypeVideo.from_scene(Func_4_5_I_1_a),
    PagePrototypeVideo.from_scene(Func_4_5_I_1_b),
    PagePrototypeVideo.from_scene(Func_4_5_I_1_c),
    PagePrototypeVideo.from_scene(Func_4_5_I_2_q),
    PagePrototypeQuestion.from_scene(Func_4_5_I_2_q),
    PagePrototypeVideo.from_scene(Func_4_5_I_2_a),
    PagePrototypeVideo.from_scene(Func_4_5_I_2_b),
    PagePrototypeVideo.from_scene(Func_4_5_I_2_c),
    PagePrototypeVideo.from_scene(Func_4_5_I_3_q),
    PagePrototypeQuestion.from_scene(Func_4_5_I_3_q),
    PagePrototypeVideo.from_scene(Func_4_5_I_3_a),
    PagePrototypeVideo.from_scene(Func_4_5_I_3_b),
    PagePrototypeVideo.from_scene(Func_4_5_I_3_c),
    PagePrototypeVideo.from_scene(Func_4_5_I_3_d),
    PagePrototypeVideo.from_scene(Func_4_5_I_4_q),
    PagePrototypeQuestion.from_scene(Func_4_5_I_4_q),
    PagePrototypeVideo.from_scene(Func_4_5_I_4_a),
    PagePrototypeVideo.from_scene(Func_4_5_I_4_b),
    PagePrototypeVideo.from_scene(Func_4_5_I_4_c),
    PagePrototypeVideo.from_scene(Func_4_5_I_4_d),
    PagePrototypeVideo.from_scene(Func_4_5_I_5_q),
    PagePrototypeQuestion.from_scene(Func_4_5_I_5_q),
    PagePrototypeVideo.from_scene(Func_4_5_I_5_a),
    PagePrototypeVideo.from_scene(Func_4_5_I_5_b),
    PagePrototypeVideo.from_scene(Func_4_5_I_5_c),
    PagePrototypeVideo.from_scene(Func_4_5_I_6_q),
    PagePrototypeQuestion.from_scene(Func_4_5_I_6_q),
    PagePrototypeVideo.from_scene(Func_4_5_I_6_a),
    PagePrototypeVideo.from_scene(Func_4_5_I_6_b),
    PagePrototypeVideo.from_scene(Func_4_5_I_6_c),
    PagePrototypeVideo.from_scene(Func_4_5_I_6_d),
    PagePrototypeVideo.from_scene(Func_4_5_I_7_q),
    PagePrototypeQuestion.from_scene(Func_4_5_I_7_q),
    PagePrototypeVideo.from_scene(Func_4_5_I_7_a),
    PagePrototypeVideo.from_scene(Func_4_5_I_7_b),
    PagePrototypeVideo.from_scene(Func_4_5_I_7_c),
    PagePrototypeVideo.from_scene(Func_4_5_I_7_d),
    PagePrototypeVideo.from_scene(Func_4_5_I_8),
]