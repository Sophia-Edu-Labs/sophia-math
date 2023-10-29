# 4_1: Quadratic Functions: Intro, Term
# To-Do Here: add practice part, add recognizing non-standard squared fct. termsb

# Import necessary libraries and modules
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
class Func_4_1_I_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=["$f(x) = x^2 - 1$", "$g(x) = 0.5x^2 - x - 1$", "$h(x) = x^3 - x^2 + 1$"],
            correctAnswerIndex=2,
            questionText=self.translate("Func_4_1.I1.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_4_1.I1.q.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        func_general = MathTex("f(x) = ax^2 + bx +c", color=c1t, font_size=fs1).shift(UP)

        func1 = MathTex("f(x) = x^2 - 1", color=c1t, font_size=fs2)
        func2 = MathTex("g(x) = 0.5x^2 - x - 1", color=c1t, font_size=fs2)
        func3 = MathTex("h(x)", " = x^3 - x^2 + 1", color=c1t, font_size=fs2)
        funcs = VGroup(func1, func2, func3).arrange(DOWN, buff=0.5, aligned_edge=LEFT)
        start_point = func3[0].get_center()+0.4*DOWN
        b = Bubble(ast.literal_eval(self.translate("Func_4_1.I1.q.bubble")), width=4, height=1.2, start_point = start_point, center=[0,-2.6,0], loc="t1")
        

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_1.I1.q.voiceover")
        ) as tracker:

            self.wait_until_bookmark("f")
            cursor.idle=False
            x,y,_ = func1[0].get_left()+0.2*LEFT
            self.play(Write(func1), CursorMoveTo(cursor, x, y), run_time=.5)
            cursor.idle=True

            self.wait_until_bookmark("g")
            cursor.idle=False
            x,y,_ = func2[0].get_left()+0.2*LEFT
            self.play(Write(func2), CursorMoveTo(cursor, x, y), run_time=.5)
            cursor.idle=True
            
            self.wait_until_bookmark("h")
            cursor.idle=False
            x,y,_ = func3[0].get_left()+0.2*LEFT
            self.play(Write(func3), CursorMoveTo(cursor, x, y), run_time=.5)
            cursor.idle=True

            self.wait_until_bookmark("moveCursor")
            x,y,_ = start_point
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("bubble")
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.add_bubble_sound(1.5)
            self.play(Create(b), Create(b.text))
            cursor.idle=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_1_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_4_1.I1.q.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        allowed = MathTex("x^2\\,\\,", "x\\,\\,\\,\\,", "1", color=GREEN).next_to(title, DOWN, buff=0.5)

        func_general = MathTex("f(x) = ax^2 + bx +c", color=c1t, font_size=fs1).shift(UP)

        func1 = MathTex("f(x) = x^2 - 1", color=c1t, font_size=fs2)
        func2 = MathTex("g(x) = 0.5x^2 - x - 1", color=c1t, font_size=fs2)
        func3 = MathTex("h(x)", " =" ,"x^3","- x^2 + 1", color=c1t, font_size=fs2)
        funcs = VGroup(func1, func2, func3).arrange(DOWN, buff=0.5, aligned_edge=LEFT)
        start_point = func3[2].get_center()+0.4*DOWN
        b = Bubble(ast.literal_eval(self.translate("Func_4_1.I1.a.bubble")), width=4, height=1.2, start_point = start_point, center=[0,-2.6,0], loc="t1")
        
        funcWrong = MathTex("f(x) = x^2 - 1", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_4_1.I1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("funcWrong")
            cursor.idle=False
            x,y,_ = funcWrong[0].get_left()+0.2*LEFT
            self.play(Write(funcWrong), CursorMoveTo(cursor, x, y), run_time=.5)
            cursor.idle=True

            self.wait_until_bookmark("funcWrong2")
            self.play(Unwrite(funcWrong))

            self.wait_until_bookmark("a1")
            cursor.idle=False
            x,y,_ = allowed[0].get_center()+0.5*DOWN+0.1*LEFT
            self.play(CursorMoveTo(cursor, x,y ), Write(allowed[0]), run_time=0.5)

            self.wait_until_bookmark("a2")
            x,y,_ = allowed[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), Write(allowed[1]), run_time=0.5)

            self.wait_until_bookmark("a3")
            x,y,_ = allowed[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), Write(allowed[2]), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("f")
            cursor.idle=False
            x,y,_ = func1[0].get_left()+0.2*LEFT
            self.play(Write(func1), CursorMoveTo(cursor, x, y))
            cursor.idle=True

            self.wait_until_bookmark("g")
            cursor.idle=False
            x,y,_ = func2[0].get_left()+0.2*LEFT
            self.play(Write(func2), CursorMoveTo(cursor, x, y))
            cursor.idle=True
            
            self.wait_until_bookmark("h")
            cursor.idle=False
            x,y,_ = func3[0].get_left()+0.2*LEFT
            self.play(Write(func3), CursorMoveTo(cursor, x, y))
            cursor.idle=True

            self.wait_until_bookmark("xcubed")
            cursor.idle=False
            x,y,_ = start_point
            self.play(CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("bubble")    
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.play(Create(b), Create(b.text))
            cursor.idle=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_1_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_4_1.I1.q.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        allowed = MathTex("x^2\\,\\,", "x\\,\\,\\,\\,", "1", color=GREEN).next_to(title, DOWN, buff=0.5)

        func_general = MathTex("f(x) = ax^2 + bx +c", color=c1t, font_size=fs1).shift(UP)

        func1 = MathTex("f(x) = x^2 - 1", color=c1t, font_size=fs2)
        func2 = MathTex("g(x) = 0.5x^2 - x - 1", color=c1t, font_size=fs2)
        func3 = MathTex("h(x)", " =" ,"x^3","- x^2 + 1", color=c1t, font_size=fs2)
        funcs = VGroup(func1, func2, func3).arrange(DOWN, buff=0.5, aligned_edge=LEFT)
        start_point = func3[2].get_center()+0.4*DOWN
        b = Bubble(["h is not a quadratic function", "because it contains $x^3$"], width=4, height=1.2, start_point = start_point, center=[0,-2.6,0], loc="t1")
        
        funcWrong = MathTex("g(x) = 0.5x^2 - x - 1", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_1.I1.b.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("funcWrong")
            cursor.idle=False
            x,y,_ = funcWrong[0].get_left()+0.2*LEFT
            self.play(Write(funcWrong), CursorMoveTo(cursor, x, y))
            cursor.idle=True

            self.wait_until_bookmark("funcWrong2")
            self.play(Unwrite(funcWrong))

            self.wait_until_bookmark("a1")
            cursor.idle=False
            x,y,_ = allowed[0].get_center()+0.5*DOWN+0.1*LEFT
            self.play(CursorMoveTo(cursor, x,y ), Write(allowed[0]), run_time=0.5)

            self.wait_until_bookmark("a2")
            x,y,_ = allowed[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), Write(allowed[1]), run_time=0.5)

            self.wait_until_bookmark("a3")
            x,y,_ = allowed[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), Write(allowed[2]), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("f")
            cursor.idle=False
            x,y,_ = func1[0].get_left()+0.2*LEFT
            self.play(Write(func1), CursorMoveTo(cursor, x, y))
            cursor.idle=True

            self.wait_until_bookmark("g")
            cursor.idle=False
            x,y,_ = func2[0].get_left()+0.2*LEFT
            self.play(Write(func2), CursorMoveTo(cursor, x, y))
            cursor.idle=True
            
            self.wait_until_bookmark("h")
            cursor.idle=False
            x,y,_ = func3[0].get_left()+0.2*LEFT
            self.play(Write(func3), CursorMoveTo(cursor, x, y))
            cursor.idle=True

            self.wait_until_bookmark("xcubed")
            cursor.idle=False
            x,y,_ = start_point
            self.play(CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("bubble")    
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.play(Create(b), Create(b.text))
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_1_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_4_1.I1.q.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        allowed = MathTex("x^2", "\\,\\,\\,\\,\\,x", "\\,\\,\\,\\,\\,c", color=GREEN).scale(1.4).next_to(title, DOWN, buff=0.5)


        func1 = MathTex("f(x) = x^2 - 1", color=c1t, font_size=fs2)
        func2 = MathTex("g(x) = 0.5x^2 - x - 1", color=c1t, font_size=fs2)
        func3 = MathTex("h(x)", " =" ,"x^3","- x^2 + 1", color=c1t, font_size=fs2)
        funcs = VGroup(func1, func2, func3).arrange(DOWN, buff=0.5, aligned_edge=LEFT)
        start_point = func3[2].get_center()+0.4*DOWN
        b = Bubble(["h is not a quadratic function", "because it contains $x^3$"], width=4, height=1.2, start_point = start_point, center=[0,-2.6,0], loc="t1")
        
        funcWrong = MathTex("h(x)", " =" ,"x^3","- x^2 + 1", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_1.I1.c.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("funcWrong")
            cursor.idle=False
            x,y,_ = funcWrong[0].get_left()+0.2*LEFT
            self.play(Write(funcWrong), CursorMoveTo(cursor, x, y))
            cursor.idle=True

            self.wait_until_bookmark("funcWrong2")
            self.play(Unwrite(funcWrong))

            self.wait_until_bookmark("a1")
            cursor.idle=False
            x,y,_ = allowed[0].get_center()+0.5*DOWN+0.1*LEFT
            self.play(CursorMoveTo(cursor, x,y ), Write(allowed[0]), run_time=0.5)

            self.wait_until_bookmark("a2")
            x,y,_ = allowed[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), Write(allowed[1]), run_time=0.5)

            self.wait_until_bookmark("a3")
            x,y,_ = allowed[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), Write(allowed[2]), run_time=0.5)
            cursor.idle=True
            
            self.wait_until_bookmark("f")
            cursor.idle=False
            x,y,_ = func1[0].get_left()+0.2*LEFT
            self.play(Write(func1), CursorMoveTo(cursor, x, y))
            cursor.idle=True

            self.wait_until_bookmark("g")
            cursor.idle=False
            x,y,_ = func2[0].get_left()+0.2*LEFT
            self.play(Write(func2), CursorMoveTo(cursor, x, y))
            cursor.idle=True
            
            self.wait_until_bookmark("h")
            cursor.idle=False
            x,y,_ = func3[0].get_left()+0.2*LEFT
            self.play(Write(func3), CursorMoveTo(cursor, x, y))
            cursor.idle=True

            self.wait_until_bookmark("xcubed")
            cursor.idle=False
            x,y,_ = start_point
            self.play(CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("bubble")    
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.play(Create(b), Create(b.text))
            cursor.idle=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_4_1_I_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_4_1.I2.q.answer-options")),
            correctAnswerIndex=1,
            questionText=self.translate("Func_4_1.I2.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_4_1.I2.q.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*1.4)
        plane = cords[0]

        f1 = lambda x: 2*x**2
        f2= lambda x: 0.5*x**3
        f3 = lambda x: -2*x**2

        g1 = plane.plot(f1, color=BLUE, x_range=[-2**0.5,2**0.5, 0.001])
        g2 = plane.plot(f2, color=PURPLE)
        g3 = plane.plot(f3, color=GREEN, x_range=[-2**0.5,2**0.5, 0.001])

        
        tQ = Tex(self.translate("Func_4_1.I2.q.tQ"), color=GREEN, font_size=fs3).next_to(cords, DOWN, buff=1)
        fQ = Tex(self.translate("Func_4_1.I2.q.fQ"), color=RED, font_size=fs3).next_to(tQ, DOWN, buff=0.2)
        

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_1.I2.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("cords")
            self.play(Create(cords))

            self.wait_until_bookmark("two")
            self.play(Write(tQ))

            self.wait_until_bookmark("one")
            self.play(Write(fQ))

            self.wait_until_bookmark("blue")
            cursor.idle=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g1.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g1), run_time=0.8)
            cursor.idle=True

            self.wait_until_bookmark("purple")
            cursor.idle=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g2.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g2), run_time=0.8)
            cursor.idle=True

            self.wait_until_bookmark("green")
            cursor.idle=False
            x,y,_ = g3.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g3.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g3), run_time=0.8)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_1_I_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_4_1.I2.q.title"))

        cursor = AltCursor()
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*1.4)
        plane = cords[0]
        self.add(cords)

        f1 = lambda x: 2*x**2
        f2= lambda x: 0.5*x**3
        f3 = lambda x: -2*x**2

        g1 = plane.plot(f1, color=BLUE, x_range=[-2**0.5,2**0.5, 0.001])
        g2 = plane.plot(f2, color=PURPLE)
        g3 = plane.plot(f3, color=GREEN, x_range=[-2**0.5,2**0.5, 0.001])

        start_point = g2.get_start()+0.2*DOWN
        b = Bubble(ast.literal_eval(self.translate("Func_4_1.I2.a.bubble")), width=4, height=1.2, start_point = start_point, center=[0,-2.6,0], loc="t1")
        
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_4_1.I2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("blue")
            cursor.idle=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g1.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g1), run_time=0.8)
            cursor.idle=True

            self.wait_until_bookmark("purple")
            cursor.idle=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g2.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g2), run_time=0.8)
            cursor.idle=True

            self.wait_until_bookmark("green")
            cursor.idle=False
            x,y,_ = g3.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g3.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g3), run_time=0.8)
            cursor.idle=True

            self.wait_until_bookmark("Unwrite")
            self.play(Unwrite(g1), Unwrite(g3))

            self.wait_until_bookmark("right")
            cursor.idle=False
            x,y,_ = g2.get_end()
            self.play(CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("left")
            cursor.idle=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("bubble")
            cursor.idle=False
            x,y,_ = g2.get_start()+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.play(Create(b), Create(b.text))
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_1_I_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_4_1.I2.q.title"))

        cursor = AltCursor()
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*1.4)
        plane = cords[0]
        self.add(cords)

        f1 = lambda x: 2*x**2
        f2= lambda x: 0.5*x**3
        f3 = lambda x: -2*x**2

        g1 = plane.plot(f1, color=BLUE, x_range=[-2**0.5,2**0.5, 0.001])
        g2 = plane.plot(f2, color=PURPLE)
        g3 = plane.plot(f3, color=GREEN, x_range=[-2**0.5,2**0.5, 0.001])

        start_point = g2.get_start()+0.2*DOWN
        b = Bubble(ast.literal_eval(self.translate("Func_4_1.I2.a.bubble")), width=4, height=1.2, start_point = start_point, center=[0,-2.6,0], loc="t1")
        
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_4")+self.translate("Func_4_1.I2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("blue")
            cursor.idle=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g1.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g1), run_time=0.8)
            cursor.idle=True

            self.wait_until_bookmark("purple")
            cursor.idle=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g2.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g2), run_time=0.8)
            cursor.idle=True

            self.wait_until_bookmark("green")
            cursor.idle=False
            x,y,_ = g3.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g3.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g3), run_time=0.8)
            cursor.idle=True

            self.wait_until_bookmark("Unwrite")
            self.play(Unwrite(g1), Unwrite(g3))

            self.wait_until_bookmark("right")
            cursor.idle=False
            x,y,_ = g2.get_end()
            self.play(CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("left")
            cursor.idle=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("bubble")
            cursor.idle=False
            x,y,_ = g2.get_start()+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.play(Create(b), Create(b.text))
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_1_I_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_4_1.I2.q.title"))

        cursor = AltCursor()
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*1.4)
        plane = cords[0]
        self.add(cords)

        f1 = lambda x: 2*x**2
        f2= lambda x: 0.5*x**3
        f3 = lambda x: -2*x**2

        g1 = plane.plot(f1, color=BLUE, x_range=[-2**0.5,2**0.5, 0.001])
        g2 = plane.plot(f2, color=PURPLE)
        g3 = plane.plot(f3, color=GREEN, x_range=[-2**0.5,2**0.5, 0.001])

        start_point = g2.get_start()+0.2*DOWN
        b = Bubble(ast.literal_eval(self.translate("Func_4_1.I2.a.bubble")), width=4, height=1.2, start_point = start_point, center=[0,-2.6,0], loc="t1")
        
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_4_1.I2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("blue")
            cursor.idle=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g1.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g1), run_time=0.8)
            cursor.idle=True

            self.wait_until_bookmark("purple")
            cursor.idle=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g2.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g2), run_time=0.8)
            cursor.idle=True

            self.wait_until_bookmark("green")
            cursor.idle=False
            x,y,_ = g3.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g3.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g3), run_time=0.8)
            cursor.idle=True

            self.wait_until_bookmark("Unwrite")
            self.play(Unwrite(g1), Unwrite(g3))

            self.wait_until_bookmark("right")
            cursor.idle=False
            x,y,_ = g2.get_end()
            self.play(CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("left")
            cursor.idle=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("bubble")
            cursor.idle=False
            x,y,_ = g2.get_start()+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.play(Create(b), Create(b.text))
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_4_1_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        title = self.add_title(self.translate("Func_4_1.I3.title"))

        func_general = MathTex("f","(x)", "=", "ax^2", "+bx+","c", color=c1t, font_size=fs2).next_to(title, DOWN, buff=0.5)
        aNotZero = MathTex("a", "\\neq", "0", color=c1t, font_size=fs2).next_to(func_general, DOWN, buff=0.2)

        f = MathTex("f","(x)", "=", "x^2", "-1", color=c1t, font_size=fs2).next_to(aNotZero, DOWN, buff=1)
        f[3].set_color(BLUE)
        f[4].set_color(PURPLE)
        fExplained = MathTex("\\Rightarrow", "\\, a=1,","\\,b=0,", "\\, c=-1", color=c1t, font_size=fs2).next_to(f, DOWN, buff=0.2)
        fExplained[1].set_color(BLUE)
        fExplained[3].set_color(PURPLE)
        g = MathTex("g","(x)", "=", "0.5x^3", "-2x", color=c1t, font_size=fs2).next_to(fExplained, DOWN, buff=0.5)

        startpoint = g[3].get_center()+0.4*DOWN
        b = Bubble(ast.literal_eval(self.translate("Func_4_1.I3.bubble")), width=3, height=1, start_point = startpoint, center=[0,-2.4,0], loc="t1")
        

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_1.I3.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("func_general")
            cursor.idle=False
            x,y,_ = func_general[0].get_center()+0.4*DOWN
            self.play(Write(func_general), CursorMoveTo(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = func_general[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("ax")
            x,y,_ = func_general[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("bx")
            x,y,_ = func_general[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("c")
            x,y,_ = func_general[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("aa")
            cursor.idle=False
            c2 = cursor.copy()._start_fading(1)
            self.play(c2.animate.move_to(func_general[3].get_center()+0.4*DOWN), run_time=0.3)

            self.wait_until_bookmark("bb")
            c3 = cursor.copy()._start_fading(1)
            self.play(c3.animate.move_to(func_general[4].get_center()+0.4*DOWN), run_time=0.3)

            self.wait_until_bookmark("cc")
            c4 = cursor.copy()._start_fading(2)
            self.play(c4.animate.scale(3))
            cursor.idle=True

            self.wait_until_bookmark("aNot0")
            cursor.idle=False
            x,y,_ = aNotZero.get_center()+0.4*DOWN
            self.play(Write(aNotZero), CursorMoveTo(cursor, x,y ), run_time=0.8)
            cursor

            self.wait_until_bookmark("f")
            cursor.idle=False
            x,y,_ = f[0].get_center()+0.4*LEFT
            self.play(Write(f), CursorMoveTo(cursor, x,y ), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("fExplained")
            cursor.idle=False
            x,y,_ = fExplained[1].get_center()+0.4*DOWN
            self.play(Write(fExplained), CursorMoveTo(cursor, x,y ), run_time=1)
            
            self.wait_until_bookmark("eb")
            x,y,_ = fExplained[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("ec")
            x,y,_ = fExplained[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("g")
            cursor.idle=False
            x,y,_ = g[0].get_center()+0.4*LEFT
            self.play(Write(g), CursorMoveTo(cursor, x,y ), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("gnot")
            self.play(g.animate.set_color(RED))

            self.wait_until_bookmark("cube")
            cursor.idle=False
            x,y,_ = g[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("bubble")
            cursor.idle=False
            x,y,_ = startpoint
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.play(Create(b), Create(b.text))
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_4_1_I_4(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_4_1.I4.title"))

        cursor = AltCursor(idle=True)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*1.4)
        plane = cords[0]
        self.add(cords)

        f1 = lambda x: -2*x**2+4
        f2= lambda x: x**2-x-4
        f3 = lambda x: -2*x**2

        g1 = plane.plot(f1, color=BLUE, x_range=[-1.8,1.8, 0.001])
        g2 = plane.plot(f2, color=PURPLE)
        g3 = plane.plot(f3, color=GREEN, x_range=[-2**0.5,2**0.5, 0.001])

        tQ = Tex(self.translate("Func_4_1.I4.tQ"), color=GREEN, font_size=fs2).next_to(cords, DOWN, buff=1)
        fQ = Tex(self.translate("Func_4_1.I4.fQ"), color=RED, font_size=fs2).next_to(tQ, DOWN, buff=0.2)
        

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_1.I4.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("plot")
            cursor.idle=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g1.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            cursor.idle=True
            self.play(Create(g1), run_time=0.8)

            self.wait_until_bookmark("purple")
            cursor.idle=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g2.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            cursor.idle=True
            self.play(Create(g2), run_time=0.8)

            self.wait_until_bookmark("blueVertex")
            cursor.idle=False
            x,y,_ = plane.c2p(0,4)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("max")
            cursor.idle=False
            x,y,_ = plane.c2p(0,4)+0.2*UP
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            
            bMax = Bubble(ast.literal_eval(self.translate("Func_4_1.I4.bMax")), width=2.2, height=0.8, start_point = plane.c2p(0,4)+0.2*UP, center=[-0.6,2.4,0], loc="b2")
            self.add_bubble_sound(1.5)
            bUpdater = lambda m: m.move_to(bMax.get_end())
            cursor.add_updater(bUpdater)
            self.play(Create(bMax), Create(bMax.text))
            cursor.remove_updater(bUpdater)
            cursor.idle=True

            self.wait_until_bookmark("purpleVertex")
            cursor.idle=False
            x,y,_ = plane.c2p(0.5,-4.25)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("min")
            cursor.idle=False
            x,y,_ = plane.c2p(0.5,-4.25)+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            bMin = Bubble(ast.literal_eval(self.translate("Func_4_1.I4.bMin")), width=2.2, height=0.8, start_point = plane.c2p(0.5,-4.25)+0.2*DOWN, center=[0.6,-2.6,0], loc="t2")
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(bMin.get_end()))
            self.play(Create(bMin), Create(bMin.text))
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_4_1_I_5(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_4_1.I5.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-2, 2, 1], x_ticks=[-2,-1,1,2],y_ticks=[-2,-1,1,2]).shift(DOWN)
        plane = cords[0]

        f1 = lambda x: x**2
        
        posLine = Line(plane.c2p(2.5,0), plane.c2p(2.5,2), color=GREEN, stroke_width=6)
        posTex = MathTex("\\geq0", color=GREEN, font_size=fs3).next_to(posLine, RIGHT, buff=0.1)

        symLine = Line(plane.c2p(0,-2), plane.c2p(0,2), color=PURPLE, stroke_width=6)
        symTex = MathTex("f(-x)","=", "f(x)", color=BLUE, font_size=fs2).next_to(symLine, UP, buff=0.4)

        g1 = plane.plot(f1, color=BLUE, x_range=[-2**0.5,2**0.5, 0.001])

        startpoint = plane.c2p(-0.5,-0.5)
        b = Bubble(ast.literal_eval(self.translate("Func_4_1.I5.b")), width=3, height=1, start_point = startpoint, center=[0,-1.7,0], loc="t1")
        
        funcTerm = MathTex("f","(x)", "=", "x^2", color=c1t, font_size=fs2).next_to(b, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_1.I5.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("cords")
            self.play(Create(cords), run_time=1)

            self.wait_until_bookmark("unit")
            cursor.idle=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(0.8)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g1.get_end()))._start_fading(1))
            self.play(Create(g1), run_time=0.8)
            cursor.idle=True

            self.wait_until_bookmark("funcTerm")
            cursor.idle=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(Write(funcTerm), CursorMoveTo(cursor, x,y ), run_time=0.4)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("xsquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("origin")
            cursor.idle=False
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("vertexBubble")
            cursor.idle=False
            x,y,_ = startpoint
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_bubble_sound(1.5)
            bUpdater = lambda m: m.move_to(b.get_end())
            cursor.add_updater(bUpdater)
            self.play(Create(b), Create(b.text))
            cursor.remove_updater(bUpdater)
            cursor.idle=True

            self.wait_until_bookmark("posLine")
            cursor.idle=False
            x,y,_ = posLine.get_bottom()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(posLine.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(posLine), run_time=0.8)
            cursor.idle=True

            self.wait_until_bookmark("geq0")
            cursor.idle=False
            x,y,_ = posTex.get_center()+0.4*DOWN
            self.play(Write(posTex), CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("symLine")
            cursor.idle=False
            x,y,_ = symLine.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(symLine.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(symLine), run_time=0.8)
            cursor.idle=True

            self.wait_until_bookmark("symTex")
            cursor.idle=False
            x,y,_ = symTex[0].get_center()+0.4*DOWN
            self.play(Write(symTex), CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("sym2")
            cursor.idle=False
            x,y,_ = symTex[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)
            cursor.idle=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
# class Func_4_1_I_5(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title(self.translate("Func_4_1.I5.title"))

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, idle=True)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         cursor.add_updater(lambda m: self.bring_to_front(cursor))
#         self.add(cursor)

#         #Create the coordinate system
#         cords = self.add_cords([-2,2, 1], [-2, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-2,2,4]).shift(DOWN)
#         plane = cords[0]

#         f1 = lambda x: x**2
        
#         posLine = Line(plane.c2p(2.5,0), plane.c2p(2.5,4), color=GREEN, stroke_width=6)
#         posTex = MathTex("\\geq0", color=GREEN, font_size=fs3).next_to(posLine, RIGHT, buff=0.1)

#         symLine = Line(plane.c2p(0,-2), plane.c2p(0,4), color=PURPLE, stroke_width=6)
#         symTex = MathTex("f(-x)","=", "f(x)", color=BLUE, font_size=fs2).next_to(symLine, UP, buff=0.4)

#         g1 = plane.plot(f1, color=BLUE)

#         startpoint = plane.c2p(-0.5,-0.5)
#         b = Bubble(["Unit Parabola:", "Vertex at the origin"], width=3, height=1, start_point = startpoint, center=[0,-1.7,0], loc="t1")
        
#         funcTerm = MathTex("f","(x)", "=", "x^2", color=c1t, font_size=fs2).next_to(b, DOWN, buff=0.5)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Now for a special kind of parabola, the <bookmark mark="cords"/>unit parabola.
#                 The <bookmark mark="unit"/>unit parabola is the parabola that is created by the function <bookmark mark="funcTerm"/>
#                 f of <bookmark mark="x"/>x equals <bookmark mark="xsquared"/>x squared.
#                 It allows us to study the properties of parabolas and helps us
#                 recognize other quadratic functions.
#                 The unit parabola is <bookmark mark="origin"/> shaped like a U and has <bookmark mark="vertexBubble"/> its vertex at the origin.
#                 The unit parabola has two special properties.
#                 First, it is <bookmark mark="posLine"/> always above or on the x-axis. This means,
#                 that <bookmark mark="geq0"/>the function value is always greater or equal to zero.
#                 Second, it is <bookmark mark="symLine"/> symmetric to the y-axis. This means, that the function value
#                 at <bookmark mark="symTex"/> minus x is the same as the <bookmark mark="sym2"/>function value at x.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("cords")
#             self.play(Create(cords), run_time=1)

#             self.wait_until_bookmark("unit")
#             cursor.idle=False
#             x,y,_ = g1.get_start()
#             self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
#             self.add_pencil_sound(0.8)
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(g1.get_end()))._start_fading(1))
#             self.play(Create(g1), run_time=0.8)
#             cursor.idle=True

#             self.wait_until_bookmark("funcTerm")
#             cursor.idle=False
#             x,y,_ = funcTerm[0].get_center()+0.4*DOWN
#             self.play(Write(funcTerm), CursorMoveTo(cursor, x,y ), run_time=0.4)

#             self.wait_until_bookmark("x")
#             x,y,_ = funcTerm[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

#             self.wait_until_bookmark("xsquared")
#             x,y,_ = funcTerm[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)
#             cursor.idle=True

#             self.wait_until_bookmark("origin")
#             cursor.idle=False
#             x,y,_ = plane.c2p(0,0)
#             self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
#             cursor.idle=True

#             self.wait_until_bookmark("vertexBubble")
#             cursor.idle=False
#             x,y,_ = startpoint
#             self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
#             self.add_bubble_sound(1.5)
#             bUpdater = lambda m: m.move_to(b.get_end())
#             cursor.add_updater(bUpdater)
#             self.play(Create(b), Create(b.text))
#             cursor.remove_updater(bUpdater)
#             cursor.idle=True

#             self.wait_until_bookmark("posLine")
#             cursor.idle=False
#             x,y,_ = posLine.get_bottom()
#             self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(posLine.get_end()))._start_fading(1))
#             self.add_pencil_sound(0.8)
#             self.play(Create(posLine), run_time=0.8)
#             cursor.idle=True

#             self.wait_until_bookmark("geq0")
#             cursor.idle=False
#             x,y,_ = posTex.get_center()+0.4*DOWN
#             self.play(Write(posTex), CursorMoveTo(cursor, x,y ), run_time=0.4)
#             cursor.idle=True

#             self.wait_until_bookmark("symLine")
#             cursor.idle=False
#             x,y,_ = symLine.get_start()
#             self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(symLine.get_end()))._start_fading(1))
#             self.add_pencil_sound(0.8)
#             self.play(Create(symLine), run_time=0.8)
#             cursor.idle=True

#             self.wait_until_bookmark("symTex")
#             cursor.idle=False
#             x,y,_ = symTex[0].get_center()+0.4*DOWN
#             self.play(Write(symTex), CursorMoveTo(cursor, x,y ), run_time=0.4)
#             cursor.idle=True

#             self.wait_until_bookmark("sym2")
#             cursor.idle=False
#             x,y,_ = symTex[2].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)
#             cursor.idle=True
            
#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)

#####################################
#####################################
class Func_4_1_I_6_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_4_1.I6.q.answer-options")),
            correctAnswerIndex=3,
            questionText=self.translate("Func_4_1.I6.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_1.I6.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[-2/a.get_value(), 2/a.get_value(), 0.001]))
        funcTerm = MathTex("f","(x)", "=", "ax^2", "+bx", "+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_1.I6.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("term")
            cursor.idle=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(Write(funcTerm), CursorMoveTo(cursor, x,y ), run_time=0.4)
            
            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("xsquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("bx")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("c")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("aa")
            cursor.idle=False
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("bb")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.2)

            self.wait_until_bookmark("cc")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.2)

            self.wait_until_bookmark("graph")
            cursor.idle=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g1.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g1), run_time=0.8)
            cursor.idle=True

            self.wait_until_bookmark("aaa")
            cursor.idle=False
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("increaseA")
            cursor.idle=False
            cc = cursor.copy()._start_fading(1)
            self.play(cc.animate.scale(3))
            cursor.idle=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_1_I_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_1.I6.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[max(-2,-2**(1/a.get_value())), min(2,2**(1/a.get_value())), 0.001]))
        self.add(g1)
        a_increase_decrease = ast.literal_eval(self.translate("Func_4_1.I6.a.increase-decrease"))
        funcTerm = MathTex("f","(x)", "=", "\\,a\\,","x^2", "+bx", "+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
        aIncreased = Tex(a_increase_decrease[0], "$\\,\\,\\Rightarrow\\,\\,$", a_increase_decrease[1], color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
        aDecreased = Tex(a_increase_decrease[2], "$\\,\\,\\Rightarrow\\,\\,$", a_increase_decrease[3], color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
        self.add(funcTerm)
        aTracked = DecimalNumber(1, color=c1t, num_decimal_places=1).move_to(funcTerm[3]).add_updater(lambda m: m.set_value(a.get_value())).shift(0.08*LEFT)
        aTracked.scale(2*funcTerm[3].get_width()/aTracked.get_width())
        aTracked.shift((funcTerm[3].get_bottom()[1]-aTracked.get_bottom()[1])*UP)
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_4_1.I6.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("a")
            cursor.idle=False
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("a1")
            self.play(Unwrite(funcTerm[3]), Write(aTracked), run_time=1)

            self.wait_until_bookmark("a2")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            funcDater = lambda m: m.move_to(plane.c2p(1,f1(1)))
            cursor.add_updater(funcDater)
            self.play(a.animate.set_value(3), run_time=4)
            cursor.idle=True

            self.wait_until_bookmark("decreaseA")
            cursor.idle=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(a.animate(run_time=6).set_value(0.2), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("largeA")
            cursor.idle=False
            cursor.remove_updater(funcDater)
            x,y,_ = aIncreased.get_left()+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), a.animate.set_value(1), run_time=0.3)
            self.play(Write(aIncreased), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("smallA")
            cursor.idle=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_1_I_6_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_1.I6.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[max(-2,-2**(1/a.get_value())), min(2,2**(1/a.get_value())), 0.001]))
        self.add(g1)
        a_increase_decrease = ast.literal_eval(self.translate("Func_4_1.I6.a.increase-decrease"))
        funcTerm = MathTex("f","(x)", "=", "\\,a\\,","x^2", "+bx", "+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
        aIncreased = Tex(a_increase_decrease[0], "$\\,\\,\\Rightarrow\\,\\,$", a_increase_decrease[1], color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
        aDecreased = Tex(a_increase_decrease[2], "$\\,\\,\\Rightarrow\\,\\,$", a_increase_decrease[3], color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
        self.add(funcTerm)
        aTracked = DecimalNumber(1, color=c1t, num_decimal_places=1).move_to(funcTerm[3]).add_updater(lambda m: m.set_value(a.get_value())).shift(0.08*LEFT)
        aTracked.scale(2*funcTerm[3].get_width()/aTracked.get_width())
        aTracked.shift((funcTerm[3].get_bottom()[1]-aTracked.get_bottom()[1])*UP)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_4_1.I6.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("a")
            cursor.idle=False
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("a1")
            self.play(Unwrite(funcTerm[3]), Write(aTracked), run_time=1)

            self.wait_until_bookmark("a2")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            funcDater = lambda m: m.move_to(plane.c2p(1,f1(1)))
            cursor.add_updater(funcDater)
            self.play(a.animate.set_value(3), run_time=4)
            cursor.idle=True

            self.wait_until_bookmark("decreaseA")
            cursor.idle=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(a.animate(run_time=6).set_value(0.2), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("largeA")
            cursor.idle=False
            cursor.remove_updater(funcDater)
            x,y,_ = aIncreased.get_left()+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), a.animate.set_value(1), run_time=0.3)
            self.play(Write(aIncreased), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("smallA")
            cursor.idle=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_1_I_6_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_1.I6.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[max(-2,-2**(1/a.get_value())), min(2,2**(1/a.get_value())), 0.001]))
        self.add(g1)
        a_increase_decrease = ast.literal_eval(self.translate("Func_4_1.I6.a.increase-decrease"))
        funcTerm = MathTex("f","(x)", "=", "\\,a\\,","x^2", "+bx", "+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
        aIncreased = Tex(a_increase_decrease[0], "$\\,\\,\\Rightarrow\\,\\,$", a_increase_decrease[1], color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
        aDecreased = Tex(a_increase_decrease[2], "$\\,\\,\\Rightarrow\\,\\,$", a_increase_decrease[3], color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
        self.add(funcTerm)
        aTracked = DecimalNumber(1, color=c1t, num_decimal_places=1).move_to(funcTerm[3]).add_updater(lambda m: m.set_value(a.get_value())).shift(0.08*LEFT)
        aTracked.scale(2*funcTerm[3].get_width()/aTracked.get_width())
        aTracked.shift((funcTerm[3].get_bottom()[1]-aTracked.get_bottom()[1])*UP)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_4_1.I6.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("a")
            cursor.idle=False
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("a1")
            self.play(Unwrite(funcTerm[3]), Write(aTracked), run_time=1)

            self.wait_until_bookmark("a2")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            funcDater = lambda m: m.move_to(plane.c2p(1,f1(1)))
            cursor.add_updater(funcDater)
            self.play(a.animate.set_value(3), run_time=4)
            cursor.idle=True

            self.wait_until_bookmark("decreaseA")
            cursor.idle=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(a.animate(run_time=6).set_value(0.2), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("largeA")
            cursor.idle=False
            cursor.remove_updater(funcDater)
            x,y,_ = aIncreased.get_left()+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), a.animate.set_value(1), run_time=0.3)
            self.play(Write(aIncreased), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("smallA")
            cursor.idle=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_1_I_6_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_1.I6.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[max(-2,-2**(1/a.get_value())), min(2,2**(1/a.get_value())), 0.001]))
        self.add(g1)
        a_increase_decrease = ast.literal_eval(self.translate("Func_4_1.I6.a.increase-decrease"))
        funcTerm = MathTex("f","(x)", "=", "\\,a\\,","x^2", "+bx", "+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
        aIncreased = Tex(a_increase_decrease[0], "$\\,\\,\\Rightarrow\\,\\,$", a_increase_decrease[1], color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
        aDecreased = Tex(a_increase_decrease[2], "$\\,\\,\\Rightarrow\\,\\,$", a_increase_decrease[3], color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
        self.add(funcTerm)
        aTracked = DecimalNumber(1, color=c1t, num_decimal_places=1).move_to(funcTerm[3]).add_updater(lambda m: m.set_value(a.get_value())).shift(0.08*LEFT)
        aTracked.scale(2*funcTerm[3].get_width()/aTracked.get_width())
        aTracked.shift((funcTerm[3].get_bottom()[1]-aTracked.get_bottom()[1])*UP)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_4")+self.translate("Func_4_1.I6.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("a")
            cursor.idle=False
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("a1")
            self.play(Unwrite(funcTerm[3]), Write(aTracked), run_time=1)

            self.wait_until_bookmark("a2")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            funcDater = lambda m: m.move_to(plane.c2p(1,f1(1)))
            cursor.add_updater(funcDater)
            self.play(a.animate.set_value(3), run_time=4)
            cursor.idle=True

            self.wait_until_bookmark("decreaseA")
            cursor.idle=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(a.animate(run_time=6).set_value(0.2), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("largeA")
            cursor.idle=False
            cursor.remove_updater(funcDater)
            x,y,_ = aIncreased.get_left()+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), a.animate.set_value(1), run_time=0.3)
            self.play(Write(aIncreased), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("smallA")
            cursor.idle=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################

class Func_4_1_I_7_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_4_1.I7.q.answer-options")),
            correctAnswerIndex=0,
            questionText=self.translate("Func_4_1.I7.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_1.I7.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[-2/a.get_value(), 2/a.get_value(), 0.001]))
        funcTerm = MathTex("f","(x)", "=", "ax^2", "+bx", "+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_1.I7.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("plot")
            x,y,_ = g1.get_start()
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g1))
            
            self.wait_until_bookmark("term")
            cursor.idle=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(Write(funcTerm), CursorMoveTo(cursor, x,y ), run_time=0.4)
            
            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("xsquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("bx")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("c")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("bbb")
            cursor.idle=False
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("increaseB")
            cursor.idle=False
            cc = cursor.copy()._start_fading(1)
            self.play(cc.animate.scale(3))
            cursor.idle=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_1_I_7_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_1.I7.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([-3,3, 1], [-10, 10, 4], x_ticks=[-3,-1,1,3],y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE))
        self.add(g1)
        tl, tr = self.translate("Func_4_1.I7.a.tl"), self.translate("Func_4_1.I7.a.tr")
        funcTerm = MathTex("f","(x)", "=", "a","x^2", "\\,\\,+b\\,\\,", "x+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
        aIncreased = Tex("$b>0$", "$\\,\\,\\Rightarrow\\,\\,$", tl, color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
        aDecreased = Tex("$b<0$", "$\\,\\,\\Rightarrow\\,\\,$", tr, color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
        self.add(funcTerm)
        aTracked = DecimalNumber(0, color=c1t, num_decimal_places=1, include_sign=True).move_to(funcTerm[5]).add_updater(lambda m: m.set_value(b.get_value())).shift(0.08*LEFT)
        aTracked.scale(4*funcTerm[3].get_width()/aTracked.get_width())
        aTracked.shift((funcTerm[3].get_bottom()[1]-aTracked.get_bottom()[1])*UP)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_4_1.I7.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("b")
            cursor.idle=False
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("b1")
            self.play(Unwrite(funcTerm[5]), Write(aTracked), run_time=1)

            self.wait_until_bookmark("b2")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            funcDater = lambda m: m.move_to(plane.c2p(1,f1(1)))
            cursor.add_updater(funcDater)
            self.play(b.animate.set_value(2), run_time=4)
            cursor.idle=True

            self.wait_until_bookmark("decreaseB")
            cursor.idle=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(b.animate(run_time=6).set_value(-2), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("posB")
            cursor.idle=False
            cursor.remove_updater(funcDater)
            x,y,_ = aIncreased.get_left()+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), b.animate.set_value(0), run_time=0.3)
            self.play(Write(aIncreased), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("negB")
            cursor.idle=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_1_I_7_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_1.I7.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([-3,3, 1], [-10, 10, 4], x_ticks=[-3,-1,1,3],y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE))
        self.add(g1)
        tl, tr = self.translate("Func_4_1.I7.a.tl"), self.translate("Func_4_1.I7.a.tr")
        funcTerm = MathTex("f","(x)", "=", "a","x^2", "\\,\\,+b\\,\\,", "x+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
        aIncreased = Tex("$b>0$", "$\\,\\,\\Rightarrow\\,\\,$", tl, color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
        aDecreased = Tex("$b<0$", "$\\,\\,\\Rightarrow\\,\\,$", tr, color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
        self.add(funcTerm)
        aTracked = DecimalNumber(0, color=c1t, num_decimal_places=1, include_sign=True).move_to(funcTerm[5]).add_updater(lambda m: m.set_value(b.get_value())).shift(0.08*LEFT)
        aTracked.scale(4*funcTerm[3].get_width()/aTracked.get_width())
        aTracked.shift((funcTerm[3].get_bottom()[1]-aTracked.get_bottom()[1])*UP)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_4_1.I7.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("b")
            cursor.idle=False
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("b1")
            self.play(Unwrite(funcTerm[5]), Write(aTracked), run_time=1)

            self.wait_until_bookmark("b2")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            funcDater = lambda m: m.move_to(plane.c2p(1,f1(1)))
            cursor.add_updater(funcDater)
            self.play(b.animate.set_value(2), run_time=4)
            cursor.idle=True

            self.wait_until_bookmark("decreaseB")
            cursor.idle=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(b.animate(run_time=6).set_value(-2), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("posB")
            cursor.idle=False
            cursor.remove_updater(funcDater)
            x,y,_ = aIncreased.get_left()+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), b.animate.set_value(0), run_time=0.3)
            self.play(Write(aIncreased), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("negB")
            cursor.idle=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_1_I_7_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_1.I7.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([-3,3, 1], [-10, 10, 4], x_ticks=[-3,-1,1,3],y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE))
        self.add(g1)
        tl, tr = self.translate("Func_4_1.I7.a.tl"), self.translate("Func_4_1.I7.a.tr")
        funcTerm = MathTex("f","(x)", "=", "a","x^2", "\\,\\,+b\\,\\,", "x+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
        aIncreased = Tex("$b>0$", "$\\,\\,\\Rightarrow\\,\\,$", tl, color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
        aDecreased = Tex("$b<0$", "$\\,\\,\\Rightarrow\\,\\,$", tr, color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
        self.add(funcTerm)
        aTracked = DecimalNumber(0, color=c1t, num_decimal_places=1, include_sign=True).move_to(funcTerm[5]).add_updater(lambda m: m.set_value(b.get_value())).shift(0.08*LEFT)
        aTracked.scale(4*funcTerm[3].get_width()/aTracked.get_width())
        aTracked.shift((funcTerm[3].get_bottom()[1]-aTracked.get_bottom()[1])*UP)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_4_1.I7.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("b")
            cursor.idle=False
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("b1")
            self.play(Unwrite(funcTerm[5]), Write(aTracked), run_time=1)

            self.wait_until_bookmark("b2")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            funcDater = lambda m: m.move_to(plane.c2p(1,f1(1)))
            cursor.add_updater(funcDater)
            self.play(b.animate.set_value(2), run_time=4)
            cursor.idle=True

            self.wait_until_bookmark("decreaseB")
            cursor.idle=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(b.animate(run_time=6).set_value(-2), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("posB")
            cursor.idle=False
            cursor.remove_updater(funcDater)
            x,y,_ = aIncreased.get_left()+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), b.animate.set_value(0), run_time=0.3)
            self.play(Write(aIncreased), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("negB")
            cursor.idle=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_1_I_7_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_4_1.I7.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([-3,3, 1], [-10, 10, 4], x_ticks=[-3,-1,1,3],y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))
        self.add(cursor)

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE))
        self.add(g1)
        tl, tr = self.translate("Func_4_1.I7.a.tl"), self.translate("Func_4_1.I7.a.tr")
        funcTerm = MathTex("f","(x)", "=", "a","x^2", "\\,\\,+b\\,\\,", "x+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
        aIncreased = Tex("$b>0$", "$\\,\\,\\Rightarrow\\,\\,$", tl, color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
        aDecreased = Tex("$b<0$", "$\\,\\,\\Rightarrow\\,\\,$", tr, color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
        self.add(funcTerm)
        aTracked = DecimalNumber(0, color=c1t, num_decimal_places=1, include_sign=True).move_to(funcTerm[5]).add_updater(lambda m: m.set_value(b.get_value())).shift(0.08*LEFT)
        aTracked.scale(4*funcTerm[3].get_width()/aTracked.get_width())
        aTracked.shift((funcTerm[3].get_bottom()[1]-aTracked.get_bottom()[1])*UP)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_4_1.I7.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("b")
            cursor.idle=False
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.idle=True

            self.wait_until_bookmark("b1")
            self.play(Unwrite(funcTerm[5]), Write(aTracked), run_time=1)

            self.wait_until_bookmark("b2")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            funcDater = lambda m: m.move_to(plane.c2p(1,f1(1)))
            cursor.add_updater(funcDater)
            self.play(b.animate.set_value(2), run_time=4)
            cursor.idle=True

            self.wait_until_bookmark("decreaseB")
            cursor.idle=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(b.animate(run_time=6).set_value(-2), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("posB")
            cursor.idle=False
            cursor.remove_updater(funcDater)
            x,y,_ = aIncreased.get_left()+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), b.animate.set_value(0), run_time=0.3)
            self.play(Write(aIncreased), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("negB")
            cursor.idle=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
# TASK_Func_4_1_I_8_q = SophiaTaskDefinition(
#     answerOptions = ["The graph is shifted down", "The graph is shifted up", "The graph is flipped along the x-axis", "The graph is flipped along the x-axis"],
#     correctAnswerIndex = 0,
#     questionText = "What happens, if we increase the value of $c$?"
# )
# class Func_4_1_I_8_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Function Term")
        
#         #Create the coordinate system
#         cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
#         plane = cords[0]
#         self.add(cords)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         x,y,_ = plane.c2p(0,0)
#         cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
#         cursor.autoFadeBackground = False
#         cursor.add_updater(cursor_sound_updater)
#         cursor.add_updater(lambda m: self.bring_to_front(cursor))
#         self.add(cursor)

#         a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
#         f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
#         g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[-2/a.get_value(), 2/a.get_value(), 0.001]))
#         funcTerm = MathTex("f","(x)", "=", "ax^2", "+bx", "+","c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Now we're almost done analyzing the <bookmark mark="plot"/>quadratic function with the form <bookmark mark="term"/>f of
#                 <bookmark mark="x"/>x equals <bookmark mark="xsquared"/>"a" x squared plus <bookmark mark="bx"/>b x plus <bookmark mark="c"/>c.
#                 The last parameter, we still need to analyze is <bookmark mark="ccc"/>c. What happens to the graph, if we<bookmark mark="increaseC"/> increase c?
#                 How will it change?
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("plot")
#             x,y,_ = g1.get_start()
#             cursor.idle=False
#             self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
#             self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
#             self.add_pencil_sound(1.5)
#             self.play(Create(g1))
            
#             self.wait_until_bookmark("term")
#             cursor.idle=False
#             x,y,_ = funcTerm[0].get_center()+0.4*DOWN
#             self.play(Write(funcTerm), CursorMoveTo(cursor, x,y ), run_time=0.4)
            
#             self.wait_until_bookmark("x")
#             x,y,_ = funcTerm[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.2)

#             self.wait_until_bookmark("xsquared")
#             x,y,_ = funcTerm[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.2)

#             self.wait_until_bookmark("bx")
#             x,y,_ = funcTerm[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.2)

#             self.wait_until_bookmark("c")
#             x,y,_ = funcTerm[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.2)
#             cursor.idle=True

#             self.wait_until_bookmark("increaseC")
#             cursor.idle=False
#             cc = cursor.copy()._start_fading(1)
#             self.play(cc.animate.scale(3))
#             cursor.idle=True
            
#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)

# class Func_4_1_I_8_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Function Term")
        
#         #Create the coordinate system
#         cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
#         plane = cords[0]
#         self.add(cords)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         x,y,_ = plane.c2p(0,0)
#         cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
#         cursor.autoFadeBackground = False
#         cursor.add_updater(cursor_sound_updater)
#         cursor.add_updater(lambda m: self.bring_to_front(cursor))
#         self.add(cursor)

#         a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
#         f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
#         g1 = always_redraw(lambda: plane.plot(f1, color=BLUE))
#         self.add(g1)
#         funcTerm = MathTex("f","(x)", "=", "a","x^2", "+bx", "\\,\\,+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
#         aIncreased = Tex("$c>0$", "$\\,\\,\\Rightarrow\\,\\,$", "graph is shifted up", color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
#         aDecreased = Tex("$c<0$", "$\\,\\,\\Rightarrow\\,\\,$", "graph is shifted down", color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
#         self.add(funcTerm)
#         aTracked = DecimalNumber(0, color=c1t, num_decimal_places=1, include_sign=True).move_to(funcTerm[-1]).add_updater(lambda m: m.set_value(c.get_value())).shift(0.08*LEFT)
#         aTracked.scale(1.4*funcTerm[-1].get_width()/aTracked.get_width())
#         aTracked.shift((funcTerm[-1].get_bottom()[1]-aTracked.get_bottom()[1])*UP)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 That's correct, nicely done!
#                 We can see that in the term of the function, the parameter <bookmark mark="c"/>c is added to the function. Let's look at the effects it has on the graph.
#                 We'll start with <bookmark mark="c1"/> the value of c equals 0 and <bookmark mark="c2"/> increase it. As you can see, the graph moves up.
#                 So, if we increase the value of c, the graph is shifted up. If we <bookmark mark="decreaseC"/> decrease c on the other hand,
#                 so that it's negative, the graph is shifted down. So quick summary: <bookmark mark="posC"/>positive c, graph is shifted up,
#                 <bookmark mark="negC"/>negative c, graph is shifted down.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("c")
#             cursor.idle=False
#             x,y,_ = funcTerm[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
#             cursor.idle=True

#             self.wait_until_bookmark("c1")
#             self.play(Unwrite(funcTerm[-1]), Write(aTracked), run_time=1)

#             self.wait_until_bookmark("c2")
#             cursor.idle=False
#             x,y,_ = plane.c2p(0,0)
#             self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
#             funcDater = lambda m: m.move_to(plane.c2p(0,f1(0)))
#             cursor.add_updater(funcDater)
#             self.play(c.animate.set_value(2), run_time=4)
#             cursor.idle=True

#             self.wait_until_bookmark("decreaseC")
#             cursor.idle=False
#             x,y,_ = aDecreased.get_left()+0.2*LEFT
#             self.play(c.animate(run_time=6).set_value(-2), CursorMoveTo(cursor, x, y), run_time=1)
#             cursor.idle=True

#             self.wait_until_bookmark("posC")
#             cursor.idle=False
#             cursor.remove_updater(funcDater)
#             x,y,_ = aIncreased.get_left()+0.2*LEFT
#             self.play(CursorMoveTo(cursor, x, y), c.animate.set_value(0), run_time=0.3)
#             self.play(Write(aIncreased), run_time=1)
#             cursor.idle=True

#             self.wait_until_bookmark("negC")
#             cursor.idle=False
#             x,y,_ = aDecreased.get_left()+0.2*LEFT
#             self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
#             cursor.idle=True

#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)

#####################################
#####################################
###### Practice Part ################
#####################################
#####################################

#####################################
#####################################
#### General Functions ##############
#####################################
#####################################

PROTOTYPES = [
    PagePrototypeVideo.from_scene(Func_4_1_I_1_q),
    PagePrototypeQuestion.from_scene(Func_4_1_I_1_q),
    PagePrototypeVideo.from_scene(Func_4_1_I_1_a),
    PagePrototypeVideo.from_scene(Func_4_1_I_1_b),
    PagePrototypeVideo.from_scene(Func_4_1_I_1_c),
    PagePrototypeVideo.from_scene(Func_4_1_I_2_q),
    PagePrototypeQuestion.from_scene(Func_4_1_I_2_q),
    PagePrototypeVideo.from_scene(Func_4_1_I_2_a),
    PagePrototypeVideo.from_scene(Func_4_1_I_2_b),
    PagePrototypeVideo.from_scene(Func_4_1_I_2_c),
    PagePrototypeVideo.from_scene(Func_4_1_I_3),
    PagePrototypeVideo.from_scene(Func_4_1_I_4),
    PagePrototypeVideo.from_scene(Func_4_1_I_5),
    PagePrototypeVideo.from_scene(Func_4_1_I_6_q),
    PagePrototypeQuestion.from_scene(Func_4_1_I_6_q),
    PagePrototypeVideo.from_scene(Func_4_1_I_6_a),
    PagePrototypeVideo.from_scene(Func_4_1_I_6_b),
    PagePrototypeVideo.from_scene(Func_4_1_I_6_c),
    PagePrototypeVideo.from_scene(Func_4_1_I_6_d),
    PagePrototypeVideo.from_scene(Func_4_1_I_7_q),
    PagePrototypeQuestion.from_scene(Func_4_1_I_7_q),
    PagePrototypeVideo.from_scene(Func_4_1_I_7_a),
    PagePrototypeVideo.from_scene(Func_4_1_I_7_b),
    PagePrototypeVideo.from_scene(Func_4_1_I_7_c),
    PagePrototypeVideo.from_scene(Func_4_1_I_7_d),

]
    # PagePrototypeVideo.from_scene(Func_4_1_I_8_q),
    # PagePrototypeQuestion.from_task_definition(TASK_Func_4_1_I_8_q, Func_4_1_I_8_q.__name__),
    # PagePrototypeVideo.from_scene(Func_4_1_I_8_a),
