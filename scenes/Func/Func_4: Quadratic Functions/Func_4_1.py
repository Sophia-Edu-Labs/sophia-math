# 4_1: Quadratic Functions: Intro, Term
# To-Do Here: add practice part, add recognizing non-standard squared fct. termsb

# Import necessary libraries and modules
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
TASK_Func_4_1_I_1_q = SophiaTaskDefinition(
    answerOptions = ["$f(x) = x^2 - 1$", "$g(x) = 0.5x^2 - x - 1$", "$h(x) = x^3 - x^2 + 1$"],
    correctAnswerIndex = 2,
    questionText = "Which is not a quadratic function?"
)

class Func_4_1_I_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Quadratic Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        func_general = MathTex("f(x) = ax^2 + bx +c", color=c1t, font_size=fs1).shift(UP)

        func1 = MathTex("f(x) = x^2 - 1", color=c1t, font_size=fs2)
        func2 = MathTex("g(x) = 0.5x^2 - x - 1", color=c1t, font_size=fs2)
        func3 = MathTex("h(x)", " = x^3 - x^2 + 1", color=c1t, font_size=fs2)
        funcs = VGroup(func1, func2, func3).arrange(DOWN, buff=0.5, aligned_edge=LEFT)
        start_point = func3[0].get_center()+0.4*DOWN
        b = Bubble(["One of these", "is not a quadratic function!"], width=4, height=1.2, start_point = start_point, center=[0,-2.6,0], loc="t1")
        

        # Action Sequence
        with self.voiceover(
                text="""
                So apparently, we're now supposed to learn about quadratic functions.
                In order to do that, I think it doesn't hurt to find out, what exactly a quadratic function is.
                So, let's start by looking at three examples.
                The first example is <bookmark mark="f"/>f of x equals x squared minus one.
                The second example is <bookmark mark="g"/>g of x equals 0.5 times x squared minus x minus one.
                And the third example is <bookmark mark="h"/>h of x equals x cubed minus x squared plus one.
                Out of these three examples, 
                two are quadratic functions, <bookmark mark="moveCursor"/>and <bookmark mark="bubble"/> one is not a quadratic function. Which one is it?
                """
        ) as tracker:

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = func1[0].get_left()+0.2*LEFT
            self.play(Write(func1), CursorMoveTo(cursor, x, y))
            cursor.blinking=True

            self.wait_until_bookmark("g")
            cursor.blinking=False
            x,y,_ = func2[0].get_left()+0.2*LEFT
            self.play(Write(func2), CursorMoveTo(cursor, x, y))
            cursor.blinking=True
            
            self.wait_until_bookmark("h")
            cursor.blinking=False
            x,y,_ = func3[0].get_left()+0.2*LEFT
            self.play(Write(func3), CursorMoveTo(cursor, x, y))
            cursor.blinking=True

            self.wait_until_bookmark("moveCursor")
            x,y,_ = start_point
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("bubble")
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.add_bubble_sound(1.5)
            self.play(Create(b), Create(b.text))
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_1_I_1_a(SophiaCursorScene):

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
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        allowed = VGroup(MathTex("x^2", color=GREEN), MathTex("x", color=GREEN), MathTex("1", color=GREEN)).arrange(RIGHT, buff=0.2).next_to(title, DOWN, buff=0.5)

        func_general = MathTex("f(x) = ax^2 + bx +c", color=c1t, font_size=fs1).shift(UP)

        func1 = MathTex("f(x) = x^2 - 1", color=c1t, font_size=fs2)
        func2 = MathTex("g(x) = 0.5x^2 - x - 1", color=c1t, font_size=fs2)
        func3 = MathTex("h(x)", " =" ,"x^3","- x^2 + 1", color=c1t, font_size=fs2)
        funcs = VGroup(func1, func2, func3).arrange(DOWN, buff=0.5, aligned_edge=LEFT)
        start_point = func3[2].get_center()+0.4*DOWN
        b = Bubble(["h is not a quadratic function", "because it contains $x^3$"], width=4, height=1.2, start_point = start_point, center=[0,-2.6,0], loc="t1")
        
        funcWrong = MathTex("f(x) = x^2 - 1", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not correct. <bookmark mark="funcWrong"/> f of x equals x squared minus one is indeed a quadratic function,
                because it only contains a quadratic term and a constant. <bookmark mark="funcWrong2"/>
                So a quadratic function is only allowed to have an <bookmark mark="a1"/>x squared term, an <bookmark mark="a2"/>x term and a <bookmark mark="a3"/>constant term.
                That means, that <bookmark mark="f"/>f of x equals x squared minus one is a quadratic function, because it has an x squared term and a constant term.
                Likewise, <bookmark mark="g"/>g of  x is also a quadratic function, because it has an x squared term, an x term and a constant term.
                Finally, <bookmark mark="h"/>h is not a quadratic function, <bookmark mark="xcubed"/> because it has an x cubed term. <bookmark mark="bubble"/>
                """
        ) as tracker:
            
            self.wait_until_bookmark("funcWrong")
            cursor.blinking=False
            x,y,_ = funcWrong[0].get_left()+0.2*LEFT
            self.play(Write(funcWrong), CursorMoveTo(cursor, x, y))
            cursor.blinking=True

            self.wait_until_bookmark("funcWrong2")
            self.play(Unwrite(funcWrong))

            self.wait_until_bookmark("a1")
            cursor.blinking=False
            x,y,_ = allowed[0].get_center()+0.5*DOWN+0.1*LEFT
            self.play(CursorMoveTo(cursor, x,y ), Write(allowed[0]), run_time=0.5)

            self.wait_until_bookmark("a2")
            x,y,_ = allowed[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), Write(allowed[1]), run_time=0.5)

            self.wait_until_bookmark("a3")
            x,y,_ = allowed[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), Write(allowed[2]), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = func1[0].get_left()+0.2*LEFT
            self.play(Write(func1), CursorMoveTo(cursor, x, y))
            cursor.blinking=True

            self.wait_until_bookmark("g")
            cursor.blinking=False
            x,y,_ = func2[0].get_left()+0.2*LEFT
            self.play(Write(func2), CursorMoveTo(cursor, x, y))
            cursor.blinking=True
            
            self.wait_until_bookmark("h")
            cursor.blinking=False
            x,y,_ = func3[0].get_left()+0.2*LEFT
            self.play(Write(func3), CursorMoveTo(cursor, x, y))
            cursor.blinking=True

            self.wait_until_bookmark("xcubed")
            cursor.blinking=False
            x,y,_ = start_point
            self.play(CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("bubble")    
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.play(Create(b), Create(b.text))
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_1_I_1_b(SophiaCursorScene):

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
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        allowed = VGroup(MathTex("x^2", color=GREEN), MathTex("x", color=GREEN), MathTex("1", color=GREEN)).arrange(RIGHT, buff=0.2).next_to(title, DOWN, buff=0.5)

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
                text="""
                No, that's not correct. <bookmark mark="funcWrong"/> g of x equals zero point five x squared minus x minus one is indeed a quadratic function,
                because it only contains a quadratic term, an x term and a constant term.<bookmark mark="funcWrong2"/>
                So a quadratic function is only allowed to have an <bookmark mark="a1"/>x squared term, an <bookmark mark="a2"/>x term and a <bookmark mark="a3"/>constant term.
                That means, that <bookmark mark="f"/>f of x equals x squared minus one is a quadratic function, because it has an x squared term and a constant term.
                Likewise, <bookmark mark="g"/>g of  x is also a quadratic function, because it has an x squared term, an x term and a constant term.
                Finally, <bookmark mark="h"/>h is not a quadratic function, <bookmark mark="xcubed"/> because it has an x cubed term. <bookmark mark="bubble"/>
                """
        ) as tracker:
            
            self.wait_until_bookmark("funcWrong")
            cursor.blinking=False
            x,y,_ = funcWrong[0].get_left()+0.2*LEFT
            self.play(Write(funcWrong), CursorMoveTo(cursor, x, y))
            cursor.blinking=True

            self.wait_until_bookmark("funcWrong2")
            self.play(Unwrite(funcWrong))

            self.wait_until_bookmark("a1")
            cursor.blinking=False
            x,y,_ = allowed[0].get_center()+0.5*DOWN+0.1*LEFT
            self.play(CursorMoveTo(cursor, x,y ), Write(allowed[0]), run_time=0.5)

            self.wait_until_bookmark("a2")
            x,y,_ = allowed[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), Write(allowed[1]), run_time=0.5)

            self.wait_until_bookmark("a3")
            x,y,_ = allowed[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), Write(allowed[2]), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = func1[0].get_left()+0.2*LEFT
            self.play(Write(func1), CursorMoveTo(cursor, x, y))
            cursor.blinking=True

            self.wait_until_bookmark("g")
            cursor.blinking=False
            x,y,_ = func2[0].get_left()+0.2*LEFT
            self.play(Write(func2), CursorMoveTo(cursor, x, y))
            cursor.blinking=True
            
            self.wait_until_bookmark("h")
            cursor.blinking=False
            x,y,_ = func3[0].get_left()+0.2*LEFT
            self.play(Write(func3), CursorMoveTo(cursor, x, y))
            cursor.blinking=True

            self.wait_until_bookmark("xcubed")
            cursor.blinking=False
            x,y,_ = start_point
            self.play(CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("bubble")    
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.play(Create(b), Create(b.text))
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_1_I_1_c(SophiaCursorScene):

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
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
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
                text="""
                Yep, that's right. <bookmark mark="funcWrong"/> h of x equals x cubed minus x squared plus one is not a quadratic function,
                because it contains x cubed.<bookmark mark="funcWrong2"/>
                So a quadratic function is only allowed to have an <bookmark mark="a1"/>x squared term, an <bookmark mark="a2"/>x term and a <bookmark mark="a3"/>constant term.
                That means, that <bookmark mark="f"/>f of x equals x squared minus one is a quadratic function, because it has an x squared term and a constant term.
                Likewise, <bookmark mark="g"/>g of  x is also a quadratic function, because it has an x squared term, an x term and a constant term.
                Finally, <bookmark mark="h"/>h is not a quadratic function, <bookmark mark="xcubed"/> because it has an x cubed term. <bookmark mark="bubble"/>
                """
        ) as tracker:
            
            self.wait_until_bookmark("funcWrong")
            cursor.blinking=False
            x,y,_ = funcWrong[0].get_left()+0.2*LEFT
            self.play(Write(funcWrong), CursorMoveTo(cursor, x, y))
            cursor.blinking=True

            self.wait_until_bookmark("funcWrong2")
            self.play(Unwrite(funcWrong))

            self.wait_until_bookmark("a1")
            cursor.blinking=False
            x,y,_ = allowed[0].get_center()+0.5*DOWN+0.1*LEFT
            self.play(CursorMoveTo(cursor, x,y ), Write(allowed[0]), run_time=0.5)

            self.wait_until_bookmark("a2")
            x,y,_ = allowed[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), Write(allowed[1]), run_time=0.5)

            self.wait_until_bookmark("a3")
            x,y,_ = allowed[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), Write(allowed[2]), run_time=0.5)
            cursor.blinking=True
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = func1[0].get_left()+0.2*LEFT
            self.play(Write(func1), CursorMoveTo(cursor, x, y))
            cursor.blinking=True

            self.wait_until_bookmark("g")
            cursor.blinking=False
            x,y,_ = func2[0].get_left()+0.2*LEFT
            self.play(Write(func2), CursorMoveTo(cursor, x, y))
            cursor.blinking=True
            
            self.wait_until_bookmark("h")
            cursor.blinking=False
            x,y,_ = func3[0].get_left()+0.2*LEFT
            self.play(Write(func3), CursorMoveTo(cursor, x, y))
            cursor.blinking=True

            self.wait_until_bookmark("xcubed")
            cursor.blinking=False
            x,y,_ = start_point
            self.play(CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("bubble")    
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.play(Create(b), Create(b.text))
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
TASK_Func_4_1_I_2_q = SophiaTaskDefinition(
    answerOptions = ["The blue graph", "The purple graph", "The green graph"],
    correctAnswerIndex = 1,
    questionText = "Which of the graphs does not correspond to a quadratic function?"
)
class Func_4_1_I_2_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Quadratic Graphs")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
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

        tQ = Tex("Two graphs are quadratic", color=GREEN, font_size=fs2).next_to(cords, DOWN, buff=1)
        fQ = Tex("One is not", color=RED, font_size=fs2).next_to(tQ, DOWN, buff=0.2)
        

        # Action Sequence
        with self.voiceover(
                text="""
                I really like graphs, so now let's look at the graphs of quadratic functions.
                Again, I have prepared three examples of <bookmark mark="cords"/> graphs.
                And again, <bookmark mark="two"/>two of them are graphs of quadratic functions, and <bookmark mark="one"/>one is not a graph of a quadratic function.
                Which one is not a graph of a quadratic function?
                Is it <bookmark mark="blue"/>the blue graph?
                Is it <bookmark mark="purple"/>the purple graph?
                Or is it <bookmark mark="green"/>the green graph?
                """
        ) as tracker:
            
            self.wait_until_bookmark("cords")
            self.play(Create(cords))

            self.wait_until_bookmark("two")
            self.play(Write(tQ))

            self.wait_until_bookmark("one")
            self.play(Write(fQ))

            self.wait_until_bookmark("blue")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g1.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g1), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("purple")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g2.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g2), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("green")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g3.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g3), run_time=0.8)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_1_I_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Quadratic Graphs")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
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
        b = Bubble(["ends point in opposite directions", "$\\Rightarrow$ purple graph not quadratic"], width=4, height=1.2, start_point = start_point, center=[0,-2.6,0], loc="t1")
        

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right.
                Quadratic graphs are always shaped like a U or an upside down U.
                This means, that the <bookmark mark="blue"/>blue graph is a quadratic graph, because it is shaped like a U.
                The <bookmark mark="purple"/>purple graph is not a quadratic graph, because it's not shaped like a U.
                And the <bookmark mark="green"/>green graph is a quadratic graph again, because it is shaped like a U.
                <bookmark mark="Unwrite"/>Another good way of recognizing that the purple graph is not a quadratic graph,
                is by checking where the two ends are pointing. The right end <bookmark mark="right"/>of the purple graph
                is pointing up, while the left end <bookmark mark="left"/> is pointing down.
                Since the <bookmark mark="bubble"/>two ends are pointing in different directions, the purple graph is not a quadratic graph.
                """
        ) as tracker:
            
            self.wait_until_bookmark("blue")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g1.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g1), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("purple")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g2.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g2), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("green")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g3.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g3), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("Unwrite")
            self.play(Unwrite(g1), Unwrite(g3))

            self.wait_until_bookmark("right")
            cursor.blinking=False
            x,y,_ = g2.get_end()
            self.play(CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("left")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("bubble")
            cursor.blinking=False
            x,y,_ = g2.get_start()+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.play(Create(b), Create(b.text))
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_1_I_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Quadratic Graphs")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
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
        b = Bubble(["ends point in opposite directions", "$\\Rightarrow$ purple graph not quadratic"], width=4, height=1.2, start_point = start_point, center=[0,-2.6,0], loc="t1")
        

        # Action Sequence
        with self.voiceover(
                text="""
                Yep, you got it.
                Quadratic graphs are always shaped like a U or an upside down U.
                This means, that the <bookmark mark="blue"/>blue graph is a quadratic graph, because it is shaped like a U.
                The <bookmark mark="purple"/>purple graph is not a quadratic graph, because it's not shaped like a U.
                And the <bookmark mark="green"/>green graph is a quadratic graph again, because it is shaped like a U.
                <bookmark mark="Unwrite"/>Another good way of recognizing that the purple graph is not a quadratic graph,
                is by checking where the two ends are pointing. The right end <bookmark mark="right"/>of the purple graph
                is pointing up, while the left end <bookmark mark="left"/> is pointing down.
                Since the <bookmark mark="bubble"/>two ends are pointing in different directions, the purple graph is not a quadratic graph.
                """
        ) as tracker:
            
            self.wait_until_bookmark("blue")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g1.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g1), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("purple")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g2.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g2), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("green")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g3.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g3), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("Unwrite")
            self.play(Unwrite(g1), Unwrite(g3))

            self.wait_until_bookmark("right")
            cursor.blinking=False
            x,y,_ = g2.get_end()
            self.play(CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("left")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("bubble")
            cursor.blinking=False
            x,y,_ = g2.get_start()+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.play(Create(b), Create(b.text))
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_1_I_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Quadratic Graphs")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
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
        b = Bubble(["ends point in opposite directions", "$\\Rightarrow$ purple graph not quadratic"], width=4, height=1.2, start_point = start_point, center=[0,-2.6,0], loc="t1")
        

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right.
                Quadratic graphs are always shaped like a U or an upside down U.
                This means, that the <bookmark mark="blue"/>blue graph is a quadratic graph, because it is shaped like a U.
                The <bookmark mark="purple"/>purple graph is not a quadratic graph, because it's not shaped like a U.
                And the <bookmark mark="green"/>green graph is a quadratic graph again, because it is shaped like a U.
                <bookmark mark="Unwrite"/>Another good way of recognizing that the purple graph is not a quadratic graph,
                is by checking where the two ends are pointing. The right end <bookmark mark="right"/>of the purple graph
                is pointing up, while the left end <bookmark mark="left"/> is pointing down.
                Since the <bookmark mark="bubble"/>two ends are pointing in different directions, the purple graph is not a quadratic graph.
                """
        ) as tracker:
            
            self.wait_until_bookmark("blue")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g1.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g1), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("purple")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g2.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g2), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("green")
            cursor.blinking=False
            x,y,_ = g3.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g3.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g3), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("Unwrite")
            self.play(Unwrite(g1), Unwrite(g3))

            self.wait_until_bookmark("right")
            cursor.blinking=False
            x,y,_ = g2.get_end()
            self.play(CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("left")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("bubble")
            cursor.blinking=False
            x,y,_ = g2.get_start()+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.play(Create(b), Create(b.text))
            cursor.blinking=True

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
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        title = self.add_title("Quadratic Functions")

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
        b = Bubble(["$\\Rightarrow$ not quadratic", "because of $x^3$"], width=3, height=1, start_point = startpoint, center=[0,-2.4,0], loc="t1")
        

        # Action Sequence
        with self.voiceover(
                text="""
                Now, let's formally define quadratic functions.
                A quadratic function is a function of the form <bookmark mark="func_general"/> f of <bookmark mark="x"/>x equals <bookmark mark="ax"/>a
                x squared plus <bookmark mark="bx"/>b x plus <bookmark mark="c"/>c.
                We call <bookmark mark="aa"/>a, <bookmark mark="bb"/>b and <bookmark mark="cc"/>c the coefficients of the quadratic function.
                They can be any real numbers, the only restriction is that a <bookmark mark="aNot0"/> cannot be zero.
                So, for example, <bookmark mark="f"/> f of x equals x squared minus one is a quadratic function with<bookmark mark="fExplained"/>
                a equals one, <bookmark mark="eb"/>b equals zero and <bookmark mark="ec"/>c equals minus one.
                A counterexample, so an example that is not a quadratic function is <bookmark mark="g"/> g of x equals 0.5 x cubed minus two x.
                g is <bookmark mark="gnot"/>not a quadratic function, because it contains an <bookmark mark="cube"/>x cubed term.
                <bookmark mark="bubble"/>This is not allowed for quadratic functions.
                """
        ) as tracker:
            
            self.wait_until_bookmark("func_general")
            cursor.blinking=False
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
            cursor.blinking=True

            self.wait_until_bookmark("aa")
            cursor.blinking=False
            c2 = cursor.copy()._start_fading(1)
            self.play(c2.animate.move_to(func_general[3].get_center()+0.4*DOWN), run_time=0.3)

            self.wait_until_bookmark("bb")
            c3 = cursor.copy()._start_fading(1)
            self.play(c3.animate.move_to(func_general[4].get_center()+0.4*DOWN), run_time=0.3)

            self.wait_until_bookmark("cc")
            c4 = cursor.copy()._start_fading(2)
            self.play(c4.animate.scale(3))
            cursor.blinking=True

            self.wait_until_bookmark("aNot0")
            cursor.blinking=False
            x,y,_ = aNotZero.get_center()+0.4*DOWN
            self.play(Write(aNotZero), CursorMoveTo(cursor, x,y ), run_time=0.8)
            cursor

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f[0].get_center()+0.4*LEFT
            self.play(Write(f), CursorMoveTo(cursor, x,y ), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("fExplained")
            cursor.blinking=False
            x,y,_ = fExplained[1].get_center()+0.4*DOWN
            self.play(Write(fExplained), CursorMoveTo(cursor, x,y ), run_time=1)
            
            self.wait_until_bookmark("eb")
            x,y,_ = fExplained[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("ec")
            x,y,_ = fExplained[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("g")
            cursor.blinking=False
            x,y,_ = g[0].get_center()+0.4*LEFT
            self.play(Write(g), CursorMoveTo(cursor, x,y ), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("gnot")
            self.play(g.animate.set_color(RED))

            self.wait_until_bookmark("cube")
            cursor.blinking=False
            x,y,_ = g[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("bubble")
            cursor.blinking=False
            x,y,_ = startpoint
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.play(Create(b), Create(b.text))
            cursor.blinking=True

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

        self.add_title("Parabolas")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
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

        tQ = Tex("Two graphs are quadratic", color=GREEN, font_size=fs2).next_to(cords, DOWN, buff=1)
        fQ = Tex("One is not", color=RED, font_size=fs2).next_to(tQ, DOWN, buff=0.2)
        

        # Action Sequence
        with self.voiceover(
                text="""
                The graph of a quadratic function is called a parabola.
                Parabolas always have the <bookmark mark="plot"/>shape of a curve, like in our example a curve that looks like an upside down U.
                They can also have the shape of a slightly tilted U, like the <bookmark mark="purple"/> purple graph.
                The point where the parabola turns is called the vertex.
                The vertex of the <bookmark mark="blueVertex"/> blue graph is at the top of the parabola.
                It is called a <bookmark mark="max"/> maximum, because the function value is the highest at this point.
                The vertex<bookmark mark="purpleVertex"/> of the purple graph is at the bottom of the parabola.
                It is called a <bookmark mark="min"/> minimum, because the function value is the lowest at this point.
                """
        ) as tracker:
            
            self.wait_until_bookmark("plot")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g1.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            cursor.blinking=True
            self.play(Create(g1), run_time=0.8)

            self.wait_until_bookmark("purple")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g2.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            cursor.blinking=True
            self.play(Create(g2), run_time=0.8)

            self.wait_until_bookmark("blueVertex")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,4)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("max")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,4)+0.2*UP
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            bMax = Bubble(["This vertex", "is a maximum"], width=2.2, height=0.8, start_point = plane.c2p(0,4)+0.2*UP, center=[-0.6,2.4,0], loc="b2")
            self.add_bubble_sound(1.5)
            bUpdater = lambda m: m.move_to(bMax.get_end())
            cursor.add_updater(bUpdater)
            self.play(Create(bMax), Create(bMax.text))
            cursor.remove_updater(bUpdater)
            cursor.blinking=True

            self.wait_until_bookmark("purpleVertex")
            cursor.blinking=False
            x,y,_ = plane.c2p(0.5,-4.25)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("min")
            cursor.blinking=False
            x,y,_ = plane.c2p(0.5,-4.25)+0.2*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            bMin = Bubble(["This vertex", "is a minimum"], width=2.2, height=0.8, start_point = plane.c2p(0.5,-4.25)+0.2*DOWN, center=[0.6,-2.6,0], loc="t2")
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(bMin.get_end()))
            self.play(Create(bMin), Create(bMin.text))
            cursor.blinking=True

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

        self.add_title("Unit Parabola")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-2, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-2,2,4]).shift(DOWN)
        plane = cords[0]

        f1 = lambda x: x**2
        
        posLine = Line(plane.c2p(2.5,0), plane.c2p(2.5,4), color=GREEN, stroke_width=6)
        posTex = MathTex("\\geq0", color=GREEN, font_size=fs3).next_to(posLine, RIGHT, buff=0.1)

        symLine = Line(plane.c2p(0,-2), plane.c2p(0,4), color=PURPLE, stroke_width=6)
        symTex = MathTex("f(-x)","=", "f(x)", color=BLUE, font_size=fs2).next_to(symLine, UP, buff=0.4)

        g1 = plane.plot(f1, color=BLUE)

        startpoint = plane.c2p(-0.5,-0.5)
        b = Bubble(["Unit Parabola:", "Vertex at the origin"], width=3, height=1, start_point = startpoint, center=[0,-1.7,0], loc="t1")
        
        funcTerm = MathTex("f","(x)", "=", "x^2", color=c1t, font_size=fs2).next_to(b, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text="""
                Now for a special kind of parabola, the <bookmark mark="cords"/>unit parabola.
                The <bookmark mark="unit"/>unit parabola is the parabola that is created by the function <bookmark mark="funcTerm"/>
                f of <bookmark mark="x"/>x equals <bookmark mark="xsquared"/>x squared.
                It allows us to study the properties of parabolas and helps us
                recognize other quadratic functions.
                The unit parabola is <bookmark mark="origin"/> shaped like a U and has <bookmark mark="vertexBubble"/> its vertex at the origin.
                The unit parabola has two special properties.
                First, it is <bookmark mark="posLine"/> always above or on the x-axis. This means,
                that <bookmark mark="geq0"/>the function value is always greater or equal to zero.
                Second, it is <bookmark mark="symLine"/> symmetric to the y-axis. This means, that the function value
                at <bookmark mark="symTex"/> minus x is the same as the <bookmark mark="sym2"/>function value at x.
                """
        ) as tracker:
            
            self.wait_until_bookmark("cords")
            self.play(Create(cords), run_time=1)

            self.wait_until_bookmark("unit")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(0.8)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g1.get_end()))._start_fading(1))
            self.play(Create(g1), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("funcTerm")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(Write(funcTerm), CursorMoveTo(cursor, x,y ), run_time=0.4)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("xsquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("origin")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("vertexBubble")
            cursor.blinking=False
            x,y,_ = startpoint
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_bubble_sound(1.5)
            bUpdater = lambda m: m.move_to(b.get_end())
            cursor.add_updater(bUpdater)
            self.play(Create(b), Create(b.text))
            cursor.remove_updater(bUpdater)
            cursor.blinking=True

            self.wait_until_bookmark("posLine")
            cursor.blinking=False
            x,y,_ = posLine.get_bottom()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(posLine.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(posLine), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("geq0")
            cursor.blinking=False
            x,y,_ = posTex.get_center()+0.4*DOWN
            self.play(Write(posTex), CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("symLine")
            cursor.blinking=False
            x,y,_ = symLine.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(symLine.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(symLine), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("symTex")
            cursor.blinking=False
            x,y,_ = symTex[0].get_center()+0.4*DOWN
            self.play(Write(symTex), CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("sym2")
            cursor.blinking=False
            x,y,_ = symTex[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)
            cursor.blinking=True
            
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

        self.add_title("Unit Parabola")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-2, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-2,2,4]).shift(DOWN)
        plane = cords[0]

        f1 = lambda x: x**2
        
        posLine = Line(plane.c2p(2.5,0), plane.c2p(2.5,4), color=GREEN, stroke_width=6)
        posTex = MathTex("\\geq0", color=GREEN, font_size=fs3).next_to(posLine, RIGHT, buff=0.1)

        symLine = Line(plane.c2p(0,-2), plane.c2p(0,4), color=PURPLE, stroke_width=6)
        symTex = MathTex("f(-x)","=", "f(x)", color=BLUE, font_size=fs2).next_to(symLine, UP, buff=0.4)

        g1 = plane.plot(f1, color=BLUE)

        startpoint = plane.c2p(-0.5,-0.5)
        b = Bubble(["Unit Parabola:", "Vertex at the origin"], width=3, height=1, start_point = startpoint, center=[0,-1.7,0], loc="t1")
        
        funcTerm = MathTex("f","(x)", "=", "x^2", color=c1t, font_size=fs2).next_to(b, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text="""
                Now for a special kind of parabola, the <bookmark mark="cords"/>unit parabola.
                The <bookmark mark="unit"/>unit parabola is the parabola that is created by the function <bookmark mark="funcTerm"/>
                f of <bookmark mark="x"/>x equals <bookmark mark="xsquared"/>x squared.
                It allows us to study the properties of parabolas and helps us
                recognize other quadratic functions.
                The unit parabola is <bookmark mark="origin"/> shaped like a U and has <bookmark mark="vertexBubble"/> its vertex at the origin.
                The unit parabola has two special properties.
                First, it is <bookmark mark="posLine"/> always above or on the x-axis. This means,
                that <bookmark mark="geq0"/>the function value is always greater or equal to zero.
                Second, it is <bookmark mark="symLine"/> symmetric to the y-axis. This means, that the function value
                at <bookmark mark="symTex"/> minus x is the same as the <bookmark mark="sym2"/>function value at x.
                """
        ) as tracker:
            
            self.wait_until_bookmark("cords")
            self.play(Create(cords), run_time=1)

            self.wait_until_bookmark("unit")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(0.8)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g1.get_end()))._start_fading(1))
            self.play(Create(g1), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("funcTerm")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(Write(funcTerm), CursorMoveTo(cursor, x,y ), run_time=0.4)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("xsquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("origin")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("vertexBubble")
            cursor.blinking=False
            x,y,_ = startpoint
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_bubble_sound(1.5)
            bUpdater = lambda m: m.move_to(b.get_end())
            cursor.add_updater(bUpdater)
            self.play(Create(b), Create(b.text))
            cursor.remove_updater(bUpdater)
            cursor.blinking=True

            self.wait_until_bookmark("posLine")
            cursor.blinking=False
            x,y,_ = posLine.get_bottom()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(posLine.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(posLine), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("geq0")
            cursor.blinking=False
            x,y,_ = posTex.get_center()+0.4*DOWN
            self.play(Write(posTex), CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("symLine")
            cursor.blinking=False
            x,y,_ = symLine.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(symLine.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(symLine), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("symTex")
            cursor.blinking=False
            x,y,_ = symTex[0].get_center()+0.4*DOWN
            self.play(Write(symTex), CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("sym2")
            cursor.blinking=False
            x,y,_ = symTex[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)
            cursor.blinking=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
TASK_Func_4_1_I_6_q = SophiaTaskDefinition(
    answerOptions = ["The graph moves up", "The graph moves down", "The graph gets flatter", "The graph gets steeper"],
    correctAnswerIndex = 3,
    questionText = "What happens, if we increase the value of $a$?"
)
class Func_4_1_I_6_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Function Term")
        
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

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[-2/a.get_value(), 2/a.get_value(), 0.001]))
        funcTerm = MathTex("f","(x)", "=", "ax^2", "+bx", "+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text="""
                Ok, let's go back to the term of quadratic functions.
                As we've seen before, the term of a quadratic function has the form <bookmark mark="term"/>f of
                <bookmark mark="x"/>x equals <bookmark mark="xsquared"/>a x squared plus <bookmark mark="bx"/>b x plus <bookmark mark="c"/>c.
                But what do the <bookmark mark="aa"/>parameters a, <bookmark mark="bb"/>b and <bookmark mark="cc"/>c mean for the <bookmark mark='graph' />graph of the function?
                Let's start with the parameter <bookmark mark="aaa"/>a, what happens if we<bookmark mark="increaseA"/> increase a?
                """
        ) as tracker:
            
            self.wait_until_bookmark("term")
            cursor.blinking=False
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
            cursor.blinking=True

            self.wait_until_bookmark("aa")
            cursor.blinking=False
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)

            self.wait_until_bookmark("bb")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.2)

            self.wait_until_bookmark("cc")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.2)

            self.wait_until_bookmark("graph")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(g1.get_end()))._start_fading(1))
            self.add_pencil_sound(0.8)
            self.play(Create(g1), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("aaa")
            cursor.blinking=False
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("increaseA")
            cursor.blinking=False
            cc = cursor.copy()._start_fading(1)
            self.play(cc.animate.scale(3))
            cursor.blinking=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_1_I_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Function Term")
        
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

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[max(-2,-2**(1/a.get_value())), min(2,2**(1/a.get_value())), 0.001]))
        self.add(g1)
        funcTerm = MathTex("f","(x)", "=", "\\,a\\,","x^2", "+bx", "+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
        aIncreased = Tex("Large a", "$\\,\\,\\Rightarrow\\,\\,$", "steep graph", color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
        aDecreased = Tex("Small a", "$\\,\\,\\Rightarrow\\,\\,$", "flat graph", color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
        self.add(funcTerm)
        aTracked = DecimalNumber(1, color=c1t, num_decimal_places=1).move_to(funcTerm[3]).add_updater(lambda m: m.set_value(a.get_value())).shift(0.08*LEFT)
        aTracked.scale(2*funcTerm[3].get_width()/aTracked.get_width())
        aTracked.shift((funcTerm[3].get_bottom()[1]-aTracked.get_bottom()[1])*UP)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not quite right.
                Note that in the term of the function, the parameter <bookmark mark="a"/>a is multiplied with x squared. Let's see what that implies.
                We'll start with <bookmark mark="a1"/> the value of a equals 1 and <bookmark mark="a2"/> slowly start
                increasing it. As you can see, the graph gets steeper and steeper.
                So, if we increase the value of a, the graph <bookmark mark="a4"/> gets steeper. If we <bookmark mark="decreaseA"/> decrease a on the other hand,
                the graph gets flatter. So quick summary: <bookmark mark="largeA"/>large a, steep graph, <bookmark mark="smallA"/>small a, flat graph.
                """
        ) as tracker:
            
            self.wait_until_bookmark("a")
            cursor.blinking=False
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("a1")
            self.play(Unwrite(funcTerm[3]), Write(aTracked), run_time=1)

            self.wait_until_bookmark("a2")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            funcDater = lambda m: m.move_to(plane.c2p(1,f1(1)))
            cursor.add_updater(funcDater)
            self.play(a.animate.set_value(3), run_time=4)
            cursor.blinking=True

            self.wait_until_bookmark("decreaseA")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(a.animate(run_time=6).set_value(0.2), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("largeA")
            cursor.blinking=False
            cursor.remove_updater(funcDater)
            x,y,_ = aIncreased.get_left()+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), a.animate.set_value(1), run_time=0.3)
            self.play(Write(aIncreased), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("smallA")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_1_I_6_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Function Term")
        
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

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[max(-2,-2**(1/a.get_value())), min(2,2**(1/a.get_value())), 0.001]))
        self.add(g1)
        funcTerm = MathTex("f","(x)", "=", "\\,a\\,","x^2", "+bx", "+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
        aIncreased = Tex("Large a", "$\\,\\,\\Rightarrow\\,\\,$", "steep graph", color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
        aDecreased = Tex("Small a", "$\\,\\,\\Rightarrow\\,\\,$", "flat graph", color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
        self.add(funcTerm)
        aTracked = DecimalNumber(1, color=c1t, num_decimal_places=1).move_to(funcTerm[3]).add_updater(lambda m: m.set_value(a.get_value())).shift(0.08*LEFT)
        aTracked.scale(2*funcTerm[3].get_width()/aTracked.get_width())
        aTracked.shift((funcTerm[3].get_bottom()[1]-aTracked.get_bottom()[1])*UP)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not quite right.
                Note that in the term of the function, the parameter <bookmark mark="a"/>a is multiplied with x squared. Let's see what that implies.
                We'll start with <bookmark mark="a1"/> the value of a equals 1 and <bookmark mark="a2"/> slowly start
                increasing it. As you can see, the graph gets steeper and steeper.
                So, if we increase the value of a, the graph <bookmark mark="a4"/> gets steeper. If we <bookmark mark="decreaseA"/> decrease a on the other hand,
                the graph gets flatter. So quick summary: <bookmark mark="largeA"/>large a, steep graph, <bookmark mark="smallA"/>small a, flat graph.
                """
        ) as tracker:
            
            self.wait_until_bookmark("a")
            cursor.blinking=False
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("a1")
            self.play(Unwrite(funcTerm[3]), Write(aTracked), run_time=1)

            self.wait_until_bookmark("a2")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            funcDater = lambda m: m.move_to(plane.c2p(1,f1(1)))
            cursor.add_updater(funcDater)
            self.play(a.animate.set_value(3), run_time=4)
            cursor.blinking=True

            self.wait_until_bookmark("decreaseA")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(a.animate(run_time=6).set_value(0.2), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("largeA")
            cursor.blinking=False
            cursor.remove_updater(funcDater)
            x,y,_ = aIncreased.get_left()+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), a.animate.set_value(1), run_time=0.3)
            self.play(Write(aIncreased), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("smallA")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_1_I_6_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Function Term")
        
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

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[max(-2,-2**(1/a.get_value())), min(2,2**(1/a.get_value())), 0.001]))
        self.add(g1)
        funcTerm = MathTex("f","(x)", "=", "\\,a\\,","x^2", "+bx", "+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
        aIncreased = Tex("Large a", "$\\,\\,\\Rightarrow\\,\\,$", "steep graph", color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
        aDecreased = Tex("Small a", "$\\,\\,\\Rightarrow\\,\\,$", "flat graph", color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
        self.add(funcTerm)
        aTracked = DecimalNumber(1, color=c1t, num_decimal_places=1).move_to(funcTerm[3]).add_updater(lambda m: m.set_value(a.get_value())).shift(0.08*LEFT)
        aTracked.scale(2*funcTerm[3].get_width()/aTracked.get_width())
        aTracked.shift((funcTerm[3].get_bottom()[1]-aTracked.get_bottom()[1])*UP)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not quite right.
                Note that in the term of the function, the parameter <bookmark mark="a"/>a is multiplied with x squared. Let's see what that implies.
                We'll start with <bookmark mark="a1"/> the value of a equals 1 and <bookmark mark="a2"/> slowly start
                increasing it. As you can see, the graph gets steeper and steeper.
                So, if we increase the value of a, the graph <bookmark mark="a4"/> gets steeper. If we <bookmark mark="decreaseA"/> decrease a on the other hand,
                the graph gets flatter. So quick summary: <bookmark mark="largeA"/>large a, steep graph, <bookmark mark="smallA"/>small a, flat graph.
                """
        ) as tracker:
            
            self.wait_until_bookmark("a")
            cursor.blinking=False
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("a1")
            self.play(Unwrite(funcTerm[3]), Write(aTracked), run_time=1)

            self.wait_until_bookmark("a2")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            funcDater = lambda m: m.move_to(plane.c2p(1,f1(1)))
            cursor.add_updater(funcDater)
            self.play(a.animate.set_value(3), run_time=4)
            cursor.blinking=True

            self.wait_until_bookmark("decreaseA")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(a.animate(run_time=6).set_value(0.2), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("largeA")
            cursor.blinking=False
            cursor.remove_updater(funcDater)
            x,y,_ = aIncreased.get_left()+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), a.animate.set_value(1), run_time=0.3)
            self.play(Write(aIncreased), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("smallA")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_1_I_6_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Function Term")
        
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

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[max(-2,-2**(1/a.get_value())), min(2,2**(1/a.get_value())), 0.001]))
        self.add(g1)
        funcTerm = MathTex("f","(x)", "=", "\\,a\\,","x^2", "+bx", "+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
        aIncreased = Tex("Large a", "$\\,\\,\\Rightarrow\\,\\,$", "steep graph", color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
        aDecreased = Tex("Small a", "$\\,\\,\\Rightarrow\\,\\,$", "flat graph", color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
        self.add(funcTerm)
        aTracked = DecimalNumber(1, color=c1t, num_decimal_places=1).move_to(funcTerm[3]).add_updater(lambda m: m.set_value(a.get_value())).shift(0.08*LEFT)
        aTracked.scale(2*funcTerm[3].get_width()/aTracked.get_width())
        aTracked.shift((funcTerm[3].get_bottom()[1]-aTracked.get_bottom()[1])*UP)

        # Action Sequence
        with self.voiceover(
                text="""
                Yep, that's it.
                Note that in the term of the function, the parameter <bookmark mark="a"/>a is multiplied with x squared. Let's see what that implies.
                We'll start with <bookmark mark="a1"/> the value of a equals 1 and <bookmark mark="a2"/> slowly start
                increasing it. As you can see, the graph gets steeper and steeper.
                So, if we increase the value of a, the graph <bookmark mark="a4"/> gets steeper. If we <bookmark mark="decreaseA"/> decrease a on the other hand,
                the graph gets flatter. So quick summary: <bookmark mark="largeA"/>large a, steep graph, <bookmark mark="smallA"/>small a, flat graph.
                """
        ) as tracker:
            
            self.wait_until_bookmark("a")
            cursor.blinking=False
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("a1")
            self.play(Unwrite(funcTerm[3]), Write(aTracked), run_time=1)

            self.wait_until_bookmark("a2")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            funcDater = lambda m: m.move_to(plane.c2p(1,f1(1)))
            cursor.add_updater(funcDater)
            self.play(a.animate.set_value(3), run_time=4)
            cursor.blinking=True

            self.wait_until_bookmark("decreaseA")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(a.animate(run_time=6).set_value(0.2), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("largeA")
            cursor.blinking=False
            cursor.remove_updater(funcDater)
            x,y,_ = aIncreased.get_left()+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), a.animate.set_value(1), run_time=0.3)
            self.play(Write(aIncreased), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("smallA")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
TASK_Func_4_1_I_7_q = SophiaTaskDefinition(
    answerOptions = ["The graph gets tilted left", "The graph gets tilted right", "The graph is shifted up", "The graph is shifted down"],
    correctAnswerIndex = 0,
    questionText = "What happens, if we increase the value of $b$?"
)
class Func_4_1_I_7_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Function Term")
        
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

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[-2/a.get_value(), 2/a.get_value(), 0.001]))
        funcTerm = MathTex("f","(x)", "=", "ax^2", "+bx", "+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text="""
                Ok, so we're still looking at a <bookmark mark="plot"/> quadratic function with the form <bookmark mark="term"/>f of
                <bookmark mark="x"/>x equals <bookmark mark="xsquared"/>"a" x squared plus <bookmark mark="bx"/>b x plus <bookmark mark="c"/>c.
                Now, let's analyze the parameter <bookmark mark="bbb"/>b. What happens to the graph, if we<bookmark mark="increaseB"/> increase b?
                How will it change?
                """
        ) as tracker:
            
            self.wait_until_bookmark("plot")
            x,y,_ = g1.get_start()
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g1))
            
            self.wait_until_bookmark("term")
            cursor.blinking=False
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
            cursor.blinking=True

            self.wait_until_bookmark("bbb")
            cursor.blinking=False
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("increaseB")
            cursor.blinking=False
            cc = cursor.copy()._start_fading(1)
            self.play(cc.animate.scale(3))
            cursor.blinking=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_1_I_7_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Function Term")
        
        #Create the coordinate system
        cords = self.add_cords([-3,3, 1], [-10, 10, 4], x_ticks=[-3,-1,1,3],y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
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

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE))
        self.add(g1)
        funcTerm = MathTex("f","(x)", "=", "a","x^2", "\\,\\,+b\\,\\,", "x+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
        aIncreased = Tex("$b>0$", "$\\,\\,\\Rightarrow\\,\\,$", "graph is tilted left", color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
        aDecreased = Tex("$b<0$", "$\\,\\,\\Rightarrow\\,\\,$", "graph is tilted right", color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
        self.add(funcTerm)
        aTracked = DecimalNumber(0, color=c1t, num_decimal_places=1, include_sign=True).move_to(funcTerm[5]).add_updater(lambda m: m.set_value(b.get_value())).shift(0.08*LEFT)
        aTracked.scale(4*funcTerm[3].get_width()/aTracked.get_width())
        aTracked.shift((funcTerm[3].get_bottom()[1]-aTracked.get_bottom()[1])*UP)

        # Action Sequence
        with self.voiceover(
                text="""
                That's correct, nicely done!
                We can see that in the term of the function, the parameter <bookmark mark="b"/>b is multiplied with x. Let's look at the effects it has on the graph.
                We'll start with <bookmark mark="b1"/> the value of b equals 0 and <bookmark mark="b2"/> slowly start
                increasing it. As you can see, the graph gets higher on the right, and lower on the left.
                So, if we increase the value of b, the graph gets tilted to the left. If we <bookmark mark="decreaseB"/> decrease b on the other hand,
                so that it's negative, the graph gets tilted to the right. So quick summary: <bookmark mark="posB"/>positive b, graph is tilted left,
                <bookmark mark="negB"/>negative b, graph is tilted right.
                """
        ) as tracker:
            
            self.wait_until_bookmark("b")
            cursor.blinking=False
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("b1")
            self.play(Unwrite(funcTerm[5]), Write(aTracked), run_time=1)

            self.wait_until_bookmark("b2")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            funcDater = lambda m: m.move_to(plane.c2p(1,f1(1)))
            cursor.add_updater(funcDater)
            self.play(b.animate.set_value(2), run_time=4)
            cursor.blinking=True

            self.wait_until_bookmark("decreaseB")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(b.animate(run_time=6).set_value(-2), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("posB")
            cursor.blinking=False
            cursor.remove_updater(funcDater)
            x,y,_ = aIncreased.get_left()+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), b.animate.set_value(0), run_time=0.3)
            self.play(Write(aIncreased), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("negB")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_1_I_7_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Function Term")
        
        #Create the coordinate system
        cords = self.add_cords([-3,3, 1], [-10, 10, 4], x_ticks=[-3,-1,1,3],y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
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

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE))
        self.add(g1)
        funcTerm = MathTex("f","(x)", "=", "a","x^2", "\\,\\,+b\\,\\,", "x+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
        aIncreased = Tex("$b>0$", "$\\,\\,\\Rightarrow\\,\\,$", "graph is tilted left", color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
        aDecreased = Tex("$b<0$", "$\\,\\,\\Rightarrow\\,\\,$", "graph is tilted right", color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
        self.add(funcTerm)
        aTracked = DecimalNumber(0, color=c1t, num_decimal_places=1, include_sign=True).move_to(funcTerm[5]).add_updater(lambda m: m.set_value(b.get_value())).shift(0.08*LEFT)
        aTracked.scale(4*funcTerm[3].get_width()/aTracked.get_width())
        aTracked.shift((funcTerm[3].get_bottom()[1]-aTracked.get_bottom()[1])*UP)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not quite right.
                We can see that in the term of the function, the parameter <bookmark mark="b"/>b is multiplied with x. Let's look at the effects it has on the graph.
                We'll start with <bookmark mark="b1"/> the value of b equals 0 and <bookmark mark="b2"/> slowly start
                increasing it. As you can see, the graph gets higher on the right, and lower on the left.
                So, if we increase the value of b, the graph gets tilted to the left. If we <bookmark mark="decreaseB"/> decrease b on the other hand,
                so that it's negative, the graph gets tilted to the right. So quick summary: <bookmark mark="posB"/>positive b, graph is tilted left,
                <bookmark mark="negB"/>negative b, graph is tilted right.
                """
        ) as tracker:
            
            self.wait_until_bookmark("b")
            cursor.blinking=False
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("b1")
            self.play(Unwrite(funcTerm[5]), Write(aTracked), run_time=1)

            self.wait_until_bookmark("b2")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            funcDater = lambda m: m.move_to(plane.c2p(1,f1(1)))
            cursor.add_updater(funcDater)
            self.play(b.animate.set_value(2), run_time=4)
            cursor.blinking=True

            self.wait_until_bookmark("decreaseB")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(b.animate(run_time=6).set_value(-2), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("posB")
            cursor.blinking=False
            cursor.remove_updater(funcDater)
            x,y,_ = aIncreased.get_left()+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), b.animate.set_value(0), run_time=0.3)
            self.play(Write(aIncreased), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("negB")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_1_I_7_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Function Term")
        
        #Create the coordinate system
        cords = self.add_cords([-3,3, 1], [-10, 10, 4], x_ticks=[-3,-1,1,3],y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
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

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE))
        self.add(g1)
        funcTerm = MathTex("f","(x)", "=", "a","x^2", "\\,\\,+b\\,\\,", "x+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
        aIncreased = Tex("$b>0$", "$\\,\\,\\Rightarrow\\,\\,$", "graph is tilted left", color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
        aDecreased = Tex("$b<0$", "$\\,\\,\\Rightarrow\\,\\,$", "graph is tilted right", color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
        self.add(funcTerm)
        aTracked = DecimalNumber(0, color=c1t, num_decimal_places=1, include_sign=True).move_to(funcTerm[5]).add_updater(lambda m: m.set_value(b.get_value())).shift(0.08*LEFT)
        aTracked.scale(4*funcTerm[3].get_width()/aTracked.get_width())
        aTracked.shift((funcTerm[3].get_bottom()[1]-aTracked.get_bottom()[1])*UP)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not quite right.
                We can see that in the term of the function, the parameter <bookmark mark="b"/>b is multiplied with x. Let's look at the effects it has on the graph.
                We'll start with <bookmark mark="b1"/> the value of b equals 0 and <bookmark mark="b2"/> slowly start
                increasing it. As you can see, the graph gets higher on the right, and lower on the left.
                So, if we increase the value of b, the graph gets tilted to the left. If we <bookmark mark="decreaseB"/> decrease b on the other hand,
                so that it's negative, the graph gets tilted to the right. So quick summary: <bookmark mark="posB"/>positive b, graph is tilted left,
                <bookmark mark="negB"/>negative b, graph is tilted right.
                """
        ) as tracker:
            
            self.wait_until_bookmark("b")
            cursor.blinking=False
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("b1")
            self.play(Unwrite(funcTerm[5]), Write(aTracked), run_time=1)

            self.wait_until_bookmark("b2")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            funcDater = lambda m: m.move_to(plane.c2p(1,f1(1)))
            cursor.add_updater(funcDater)
            self.play(b.animate.set_value(2), run_time=4)
            cursor.blinking=True

            self.wait_until_bookmark("decreaseB")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(b.animate(run_time=6).set_value(-2), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("posB")
            cursor.blinking=False
            cursor.remove_updater(funcDater)
            x,y,_ = aIncreased.get_left()+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), b.animate.set_value(0), run_time=0.3)
            self.play(Write(aIncreased), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("negB")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_1_I_7_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Function Term")
        
        #Create the coordinate system
        cords = self.add_cords([-3,3, 1], [-10, 10, 4], x_ticks=[-3,-1,1,3],y_ticks=[-8,-4,4,8]).shift(DOWN*0.6)
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

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE))
        self.add(g1)
        funcTerm = MathTex("f","(x)", "=", "a","x^2", "\\,\\,+b\\,\\,", "x+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
        aIncreased = Tex("$b>0$", "$\\,\\,\\Rightarrow\\,\\,$", "graph is tilted left", color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
        aDecreased = Tex("$b<0$", "$\\,\\,\\Rightarrow\\,\\,$", "graph is tilted right", color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
        self.add(funcTerm)
        aTracked = DecimalNumber(0, color=c1t, num_decimal_places=1, include_sign=True).move_to(funcTerm[5]).add_updater(lambda m: m.set_value(b.get_value())).shift(0.08*LEFT)
        aTracked.scale(4*funcTerm[3].get_width()/aTracked.get_width())
        aTracked.shift((funcTerm[3].get_bottom()[1]-aTracked.get_bottom()[1])*UP)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not quite right.
                We can see that in the term of the function, the parameter <bookmark mark="b"/>b is multiplied with x. Let's look at the effects it has on the graph.
                We'll start with <bookmark mark="b1"/> the value of b equals 0 and <bookmark mark="b2"/> slowly start
                increasing it. As you can see, the graph gets higher on the right, and lower on the left.
                So, if we increase the value of b, the graph gets tilted to the left. If we <bookmark mark="decreaseB"/> decrease b on the other hand,
                so that it's negative, the graph gets tilted to the right. So quick summary: <bookmark mark="posB"/>positive b, graph is tilted left,
                <bookmark mark="negB"/>negative b, graph is tilted right.
                """
        ) as tracker:
            
            self.wait_until_bookmark("b")
            cursor.blinking=False
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("b1")
            self.play(Unwrite(funcTerm[5]), Write(aTracked), run_time=1)

            self.wait_until_bookmark("b2")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            funcDater = lambda m: m.move_to(plane.c2p(1,f1(1)))
            cursor.add_updater(funcDater)
            self.play(b.animate.set_value(2), run_time=4)
            cursor.blinking=True

            self.wait_until_bookmark("decreaseB")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(b.animate(run_time=6).set_value(-2), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("posB")
            cursor.blinking=False
            cursor.remove_updater(funcDater)
            x,y,_ = aIncreased.get_left()+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), b.animate.set_value(0), run_time=0.3)
            self.play(Write(aIncreased), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("negB")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
TASK_Func_4_1_I_8_q = SophiaTaskDefinition(
    answerOptions = ["The graph is shifted down", "The graph is shifted up", "The graph is flipped along the x-axis", "The graph is flipped along the x-axis"],
    correctAnswerIndex = 0,
    questionText = "What happens, if we increase the value of $c$?"
)
class Func_4_1_I_8_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Function Term")
        
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

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[-2/a.get_value(), 2/a.get_value(), 0.001]))
        funcTerm = MathTex("f","(x)", "=", "ax^2", "+bx", "+","c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text="""
                Now we're almost done analyzing the <bookmark mark="plot"/>quadratic function with the form <bookmark mark="term"/>f of
                <bookmark mark="x"/>x equals <bookmark mark="xsquared"/>"a" x squared plus <bookmark mark="bx"/>b x plus <bookmark mark="c"/>c.
                The last parameter, we still need to analyze is <bookmark mark="ccc"/>c. What happens to the graph, if we<bookmark mark="increaseC"/> increase c?
                How will it change?
                """
        ) as tracker:
            
            self.wait_until_bookmark("plot")
            x,y,_ = g1.get_start()
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g1))
            
            self.wait_until_bookmark("term")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(Write(funcTerm), CursorMoveTo(cursor, x,y ), run_time=0.4)
            
            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.2)

            self.wait_until_bookmark("xsquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.2)

            self.wait_until_bookmark("bx")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.2)

            self.wait_until_bookmark("c")
            x,y,_ = funcTerm[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y ), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("increaseC")
            cursor.blinking=False
            cc = cursor.copy()._start_fading(1)
            self.play(cc.animate.scale(3))
            cursor.blinking=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_1_I_8_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Function Term")
        
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

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)
        f1 = lambda x: a.get_value()*x**2+b.get_value()*x+c.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE))
        self.add(g1)
        funcTerm = MathTex("f","(x)", "=", "a","x^2", "+bx", "\\,\\,+c", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.5)
        aIncreased = Tex("$c>0$", "$\\,\\,\\Rightarrow\\,\\,$", "graph is shifted up", color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=1)
        aDecreased = Tex("$c<0$", "$\\,\\,\\Rightarrow\\,\\,$", "graph is shifted down", color=c1t, font_size=fs3).next_to(aIncreased, DOWN, buff=0.2)
        self.add(funcTerm)
        aTracked = DecimalNumber(0, color=c1t, num_decimal_places=1, include_sign=True).move_to(funcTerm[-1]).add_updater(lambda m: m.set_value(c.get_value())).shift(0.08*LEFT)
        aTracked.scale(1.4*funcTerm[-1].get_width()/aTracked.get_width())
        aTracked.shift((funcTerm[-1].get_bottom()[1]-aTracked.get_bottom()[1])*UP)

        # Action Sequence
        with self.voiceover(
                text="""
                That's correct, nicely done!
                We can see that in the term of the function, the parameter <bookmark mark="c"/>c is added to the function. Let's look at the effects it has on the graph.
                We'll start with <bookmark mark="c1"/> the value of c equals 0 and <bookmark mark="c2"/> increase it. As you can see, the graph moves up.
                So, if we increase the value of c, the graph is shifted up. If we <bookmark mark="decreaseC"/> decrease c on the other hand,
                so that it's negative, the graph is shifted down. So quick summary: <bookmark mark="posC"/>positive c, graph is shifted up,
                <bookmark mark="negC"/>negative c, graph is shifted down.
                """
        ) as tracker:
            
            self.wait_until_bookmark("c")
            cursor.blinking=False
            x,y,_ = funcTerm[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y ), run_time=0.4)
            cursor.blinking=True

            self.wait_until_bookmark("c1")
            self.play(Unwrite(funcTerm[-1]), Write(aTracked), run_time=1)

            self.wait_until_bookmark("c2")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            funcDater = lambda m: m.move_to(plane.c2p(0,f1(0)))
            cursor.add_updater(funcDater)
            self.play(c.animate.set_value(2), run_time=4)
            cursor.blinking=True

            self.wait_until_bookmark("decreaseC")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(c.animate(run_time=6).set_value(-2), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("posC")
            cursor.blinking=False
            cursor.remove_updater(funcDater)
            x,y,_ = aIncreased.get_left()+0.2*LEFT
            self.play(CursorMoveTo(cursor, x, y), c.animate.set_value(0), run_time=0.3)
            self.play(Write(aIncreased), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("negC")
            cursor.blinking=False
            x,y,_ = aDecreased.get_left()+0.2*LEFT
            self.play(Write(aDecreased), CursorMoveTo(cursor, x, y), run_time=1)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

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
    PagePrototypeQuestion.from_task_definition(TASK_Func_4_1_I_1_q, Func_4_1_I_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_4_1_I_1_a),
    PagePrototypeVideo.from_scene(Func_4_1_I_1_b),
    PagePrototypeVideo.from_scene(Func_4_1_I_1_c),
    PagePrototypeVideo.from_scene(Func_4_1_I_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_4_1_I_2_q, Func_4_1_I_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_4_1_I_2_a),
    PagePrototypeVideo.from_scene(Func_4_1_I_2_b),
    PagePrototypeVideo.from_scene(Func_4_1_I_2_c),
    PagePrototypeVideo.from_scene(Func_4_1_I_3),
    PagePrototypeVideo.from_scene(Func_4_1_I_4),
    PagePrototypeVideo.from_scene(Func_4_1_I_5),
    PagePrototypeVideo.from_scene(Func_4_1_I_6_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_4_1_I_6_q, Func_4_1_I_6_q.__name__),
    PagePrototypeVideo.from_scene(Func_4_1_I_6_a),
    PagePrototypeVideo.from_scene(Func_4_1_I_6_b),
    PagePrototypeVideo.from_scene(Func_4_1_I_6_c),
    PagePrototypeVideo.from_scene(Func_4_1_I_6_d),
    PagePrototypeVideo.from_scene(Func_4_1_I_7_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_4_1_I_7_q, Func_4_1_I_7_q.__name__),
    PagePrototypeVideo.from_scene(Func_4_1_I_7_a),
    PagePrototypeVideo.from_scene(Func_4_1_I_7_b),
    PagePrototypeVideo.from_scene(Func_4_1_I_7_c),
    PagePrototypeVideo.from_scene(Func_4_1_I_7_d),
    PagePrototypeVideo.from_scene(Func_4_1_I_8_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_4_1_I_8_q, Func_4_1_I_8_q.__name__),
    PagePrototypeVideo.from_scene(Func_4_1_I_8_a),

]