# Import necessary libraries and modules
from abc import ABCMeta, abstractmethod
from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
from sophialib.styles.sophiascene import (CursorMoveToCurved, CursorPositionTracker,
                                          CursorPositionTracking,
                                          CursorResizeDefault, SophiaScene, Cursor,
                                          assets_folder, AltCursor,
                                          SophiaCursorScene, CursorMoveTo,
                                          CursorMoveResize, Notepad, format_text_group)
from sophialib.styles.styleconstants import *
from sophialib.styles.sophiaobjects import *
from manim import *
from PIL import Image
import numpy as np
from pathlib import Path
from sophialib.tasks.sophiataskdefinition import SophiaTaskDefinition

#####################################
#####################################

TASK_Func_1_3_I_1_q = SophiaTaskDefinition(
    answerOptions = ["$-1$", "$0$", "$1$", "$2$"],
    correctAnswerIndex = 2,
    questionText = "At which $x$ value is the zero crossing of the red function?"
)

class Func_1_3_I_1_q(SophiaCursorScene):
    def construct(self):
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, -1, 1, 3], y_ticks=[-6, -3, 3, 6],
                               x_labels=[-3, -1, 1, 3], y_labels=[-6, -3, 3, 6])
        plane = cords[0]
        self.add(cords)

        note = Notepad(texts=["Intersection with x-axis$\\rightarrow$Zero crossing", ["Where is the zero crossing", "of the red function?"]])
        self.add(note)

        self.add_title("Intersections")

        funcBlue = lambda x: 3 - x
        funcRed = lambda x: 2 * x - 2
        graphBlue = plane.plot(funcBlue, color=c3)
        graphRed = plane.plot(funcRed, color=c2)

        with self.voiceover(
            text=f"""
            So, now we are learning something new about functions: intersections with the axes.
            Remember, there are two axes: The <bookmark mark='axis_x'/> x-axis and the <bookmark mark='axis_y'/>
            y axis.
            
            First, we are interested in the intersection point of a function with the <bookmark mark='axis_x_2'/> x-axis. 
            This point is also called the "zero", or the "zero crossing", because the value of y is always zero there.
            
            Look at the <bookmark mark="funcBlue"/> blue function. The intersection point with the x-axis is at the position
            <bookmark mark="x1"/> x equals three. This means the zero crossing is three.
            
            Now look at the <bookmark mark="funcRed"/> red function.
            
            What is the value of x at the zero crossing of this function?
            """
        ) as tracker:
            self.wait_until_bookmark("axis_x")
            plane.x_axis.set_color(RED)

            self.wait_until_bookmark("axis_y")
            plane.y_axis.set_color(RED)
            plane.x_axis.set_color(c1)
            self.wait(1)
            plane.y_axis.set_color(c1)

            self.wait_until_bookmark("axis_x_2")
            plane.x_axis.set_color(RED)
            self.wait(1)
            plane.x_axis.set_color(c1)

            self.wait_until_bookmark("funcBlue")
            self.play(Write(graphBlue))

            self.wait_until_bookmark("x1")
            x1 = plane.x_axis.n2p(3)
            circ1 = Circle(radius=0.1, color=c3).move_to(x1)
            self.play(Write(circ1))

            self.wait_until_bookmark("funcRed")
            self.play(Write(graphRed))

        self.wait(4)

class Func_1_3_I_1_a(SophiaCursorScene):
    def construct(self):
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, -1, 1, 3], y_ticks=[-6, -3, 3, 6],
                               x_labels=[-3, -1, 1, 3], y_labels=[-6, -3, 3, 6])
        plane = cords[0]
        self.add(cords)

        note = Notepad(texts=["Zero crossing: Intersection with x-axis", ["$\\rightarrow$Zero crossing of the red function", "at $x=1$."]])
        self.add(note)

        self.add_title("Unfortunately Wrong!")

        funcRed = lambda x: 2 * x - 2
        graphRed = plane.plot(funcRed, color=c2)
        self.add(graphRed)

        with self.voiceover(
            text=f"""
            Unfortunately, that's not quite right! <bookmark mark="noteSwitch1"/>
            The zero crossing is the point where the graph <bookmark mark="axis_x"/> intersects the x-axis.
            
            As we can see from the graph, <bookmark mark="noteSwitch2"/>
            the zero of the red function, which is the point where the graph of the red function intersects
            the x-axis, is at the position <bookmark mark="x1"/> x equals one.
            """
        ) as tracker:
            self.wait_until_bookmark("noteSwitch1")
            note.change_colors([0])

            self.wait_until_bookmark("axis_x")
            plane.x_axis.set_color(RED)
            self.wait(1)
            plane.x_axis.set_color(c1)

            self.wait_until_bookmark("noteSwitch2")
            note.change_colors([0, 1])

            self.wait_until_bookmark("x1")
            circ = Circle(radius=0.1, color=c2).move_to(plane.x_axis.n2p(1))
            self.play(Write(circ))

        self.wait(4)

class Func_1_3_I_1_b(SophiaCursorScene):
    def construct(self):
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, -1, 1, 3], y_ticks=[-6, -3, 3, 6],
                               x_labels=[-3, -1, 1, 3], y_labels=[-6, -3, 3, 6])
        plane = cords[0]
        self.add(cords)

        note = Notepad(texts=["Zero crossing: Intersection with x-axis", ["$\\rightarrow$Zero crossing of the red function", "at $x=1$."]])
        self.add(note)

        self.add_title("Unfortunately Wrong!")

        funcRed = lambda x: 2 * x - 2
        graphRed = plane.plot(funcRed, color=c2)
        self.add(graphRed)

        with self.voiceover(
            text=f"""
            Unfortunately, that's not quite right! <bookmark mark="noteSwitch1"/>
            The zero crossing is the point where the graph <bookmark mark="axis_x"/> intersects the x-axis.
            
            As we can see from the graph, <bookmark mark="noteSwitch2"/>
            the zero of the red function, which is the point where the graph of the red function intersects
            the x-axis, is at the position <bookmark mark="x1"/> x equals one.
            """
        ) as tracker:
            self.wait_until_bookmark("noteSwitch1")
            note.change_colors([0])

            self.wait_until_bookmark("axis_x")
            plane.x_axis.set_color(RED)
            self.wait(1)
            plane.x_axis.set_color(c1)

            self.wait_until_bookmark("noteSwitch2")
            note.change_colors([0, 1])

            self.wait_until_bookmark("x1")
            circ = Circle(radius=0.1, color=c2).move_to(plane.x_axis.n2p(1))
            self.play(Write(circ))

        self.wait(4)

class Func_1_3_I_1_c(SophiaCursorScene):
    def construct(self):
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, -1, 1, 3], y_ticks=[-6, -3, 3, 6],
                               x_labels=[-3, -1, 1, 3], y_labels=[-6, -3, 3, 6])
        plane = cords[0]
        self.add(cords)

        note = Notepad(texts=["Zero crossing: Intersection with x-axis", ["$\\rightarrow$Zero crossing of the red function", "at $x=1$."]])
        self.add(note)

        self.add_title("Correct!")

        funcRed = lambda x: 2 * x - 2
        graphRed = plane.plot(funcRed, color=c2)
        self.add(graphRed)

        with self.voiceover(
            text=f"""
            That's correct!
            
            As we can see from the graph, <bookmark mark="noteSwitch"/>
            the zero of the red function is at the position <bookmark mark="x1"/> x equals one.
            
            Great job!
            """
        ) as tracker:
            self.wait_until_bookmark("noteSwitch")
            note.change_colors([1])

            self.wait_until_bookmark("x1")
            circ = Circle(radius=0.1, color=c2).move_to(plane.x_axis.n2p(1))
            self.play(Write(circ))

        self.wait(4)

class Func_1_3_I_1_d(SophiaCursorScene):
    def construct(self):
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, -1, 1, 3], y_ticks=[-6, -3, 3, 6],
                               x_labels=[-3, -1, 1, 3], y_labels=[-6, -3, 3, 6])
        plane = cords[0]
        self.add(cords)

        note = Notepad(texts=["Zero crossing: Intersection with x-axis", ["$\\rightarrow$Zero crossing of the red function", "at $x=1$."]])
        self.add(note)

        self.add_title("Unfortunately Wrong!")

        funcRed = lambda x: 2 * x - 2
        graphRed = plane.plot(funcRed, color=c2)
        self.add(graphRed)

        with self.voiceover(
            text=f"""
            Unfortunately, that's not quite right! <bookmark mark="noteSwitch1"/>
            The zero crossing is the point where the graph <bookmark mark="axis_x"/> intersects the x-axis.
            
            As we can see from the graph, <bookmark mark="noteSwitch2"/>
            the zero of the red function, which is the point where the graph of the red function intersects
            the x-axis, is at the position <bookmark mark="x1"/> x equals one.
            """
        ) as tracker:
            self.wait_until_bookmark("noteSwitch1")
            note.change_colors([0])

            self.wait_until_bookmark("axis_x")
            plane.x_axis.set_color(RED)
            self.wait(1)
            plane.x_axis.set_color(c1)

            self.wait_until_bookmark("noteSwitch2")
            note.change_colors([0, 1])

            self.wait_until_bookmark("x1")
            circ = Circle(radius=0.1, color=c2).move_to(plane.x_axis.n2p(1))
            self.play(Write(circ))

        self.wait(4)

#####################################
#####################################
class Func_1_3_I_2(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, -1, 1, 3], y_ticks=[-6, -3, 3, 6],
                               x_labels=[-3, -1, 1, 3], y_labels=[-6, -3, 3, 6])
        plane = cords[0]
        self.add(cords)

        note = Notepad(texts=["Straight lines usually have one zero crossing", ["Functions with curves can have", "multiple zero crossings"]])
        self.add(note)

        self.add_title("Intersections")
        funcPink = lambda x: 2
        funcBlue = lambda x: 3 - x
        funcRed = lambda x: 2 * x - 2
        funcPurple = lambda x: x**2 + 1
        funcGreen = lambda x: (x - 1) * (x + 1) -2
        graphBlue = plane.plot(funcBlue, color=c3)
        graphRed = plane.plot(funcRed, color=c2)
        graphPurple = plane.plot(funcPurple, color=PURPLE)
        graphGreen = plane.plot(funcGreen, color=GREEN)
        graphPink = plane.plot(funcPink, color=PINK)
        self.add(graphBlue, graphRed)

        with self.voiceover(
            text=f"""
            So, the red and blue functions were both straight lines.
            Straight lines always have exactly one zero crossing, unless they are parallel to the x-axis.
            
            <bookmark mark="funcPink"/> The pink function is parallel to the x-axis and therefore has no zero crossing.
            
            Now, consider <bookmark mark="funcPurple"/> the purple function.
            The function is curved and has no zero crossing.
            
            Or look at the <bookmark mark="funcGreen"/> green function.
            It's also curved, but it has two zero crossings.
            So, as we can see: Functions can have zero, - one, - or multiple zero crossings.
            """
        ) as tracker:
            
            self.wait_until_bookmark("funcPink")
            self.play( Unwrite(graphRed), Unwrite(graphBlue), run_time=0.5)
            self.play( Write(graphPink), run_time=1)

            self.wait_until_bookmark("funcPurple")
            self.play(Unwrite(graphPink), run_time=0.5)
            self.play(Write(graphPurple))

            self.wait_until_bookmark("funcGreen")
            self.play(Write(graphGreen))

        self.wait(4)


#####################################
#####################################
class Func_1_3_I_3(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2, 2], y_ticks=[-3, -1, 1, 3],
                               x_labels=[-2, 2], y_labels=[-3, -1, 1, 3])
        plane = cords[0]
        self.add(cords)

        note = Notepad(texts=["Finding Zero Crossings:", "1) Set function expression to zero", "2) Solve for $x$"])
        self.add(note)

        self.add_title("Determining Zero Crossings")

        funcBlue = lambda x: x - 1
        funcSquared = lambda x: (x - 1) * (x + 1)
        graphBlue = plane.plot(funcBlue, color=c3)
        graphGreen = plane.plot(funcSquared, color=GREEN)

        term0 = MathTex("f(x) = x - 1", color=c1t, font_size=fs1).next_to(plane, DOWN)
        term1 = MathTex("x - 1 = 0", color=c1t, font_size=fs1).move_to(term0)
        xval = MathTex("\\rightarrow x = 1", color=c1t, font_size=fs1).next_to(term1, DOWN)
        self.add(graphGreen)

        with self.voiceover(
            text=f"""
            So, the question now is: <bookmark mark="findZeros"/> How do I find the zero crossings of a function?
            
            We have already learned how to do this graphically.
            We simply look for all the points where the graph <bookmark mark="zeros"/> intersects the x-axis.
            Those are the points where the function value is equal to zero.
            
            The other way is: We set the function expression equal to zero and calculate the value of x.
            <bookmark mark="clear"/>
            For example, consider the function <bookmark mark="func"/> f of x equals x minus one.
            
            Then we follow two steps:
            <bookmark mark="findZero1"/> First, we set the function expression equal to zero. <bookmark mark="equal0"/>
            This gives us x minus one equals zero.
            <bookmark mark="findZero2"/> Then we solve the equation for x <bookmark mark="findX"/> and obtain x equals one.
            As we can also verify graphically, <bookmark mark="showZero"/> this is our zero crossing.
            """
        ) as tracker:
            self.wait_until_bookmark("findZeros")
            note.change_colors([0])

            self.wait_until_bookmark("zeros")
            circ1 = Circle(radius=0.1, color=GREEN).move_to(plane.c2p(1, 0))
            circ2 = Circle(radius=0.1, color=GREEN).move_to(plane.c2p(-1, 0))
            self.play(Write(circ2))
            self.wait(1)
            self.play(Write(circ1))

            self.wait_until_bookmark("clear")
            self.play(Unwrite(circ1), Unwrite(circ2), Unwrite(graphGreen), run_time=1)

            self.wait_until_bookmark("func")
            self.play(Write(graphBlue), Write(term0))

            self.wait_until_bookmark("findZero1")
            note.change_colors([0, 1])

            self.wait_until_bookmark("equal0")
            self.play(TransformMatchingTex(term0, term1))

            self.wait_until_bookmark("findZero2")
            note.change_colors([1, 2])

            self.wait_until_bookmark("findX")
            self.play(Write(xval))

            self.wait_until_bookmark("showZero")
            circ3 = Circle(radius=0.1, color=BLUE).move_to(plane.c2p(1, 0))
            self.play(Write(circ3))

        self.wait(4)


#####################################
#####################################
TASK_Func_1_3_I_4_q = SophiaTaskDefinition(
    answerOptions=["$-2,\\,2$", "$-1,\\,1$", "$1$", "$2$"],
    correctAnswerIndex=1,
    questionText="At which $x$ value is/are the zero crossing(s)?"
)

class Func_1_3_I_4_q(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["Consider the function", "$f(x)=x^2-1$"], ["Where is the zero crossing,", "or zero crossings?"]])
        self.add(note)

        self.add_title("Determine Zero Crossings")

        mic = ImageMobject(assets_folder / "img" / "mic.png").scale(0.8).move_to([-5, 1.6, 0])
        term0 = MathTex("f(x)=x^2-1", color=c1t, font_size=fs1).next_to(mic, DOWN).shift(RIGHT*5)

        with self.voiceover(
            text=f"""
            Now, it's your turn. <bookmark mark="mic"/> YOU are in charge now.
            We have the function <bookmark mark="func"/> f of x equals x squared minus one.
            
            <bookmark mark="ex"/>
            Calculate the zero crossings mathematically.
            Reminder: To do this, set the function equal to zero and solve for x.
            """
        ) as tracker:
            self.wait_until_bookmark("mic")
            self.play(mic.animate.shift(RIGHT*5), run_time=0.5)
            
            self.wait_until_bookmark("func")
            note.change_colors([0])
            self.play(Write(term0))

            self.wait_until_bookmark("ex")
            note.change_colors([0,1])

        self.wait(4)
    
class Func_1_3_I_4_a(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["1. Set function equal to $0$", "2. Solve for $x$", "$\\rightarrow$ Zero crossings at $x=-1$ and $x=1$"])
        self.add(note)

        cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3],
                               x_labels=[-2,2], y_labels=[-3,-1,1,3])
        plane = cords[0]
        self.add(cords)

        self.add_title("Determine Zero Crossings")

        funcBlue = lambda x: x**2-1
        graphBlue = plane.plot(funcBlue, color=c3)

        term0 = MathTex("f(x)=x^2-1", color=c1t, font_size=fs2).next_to(cords, DOWN)
        term1 = MathTex("x^2-1=0", color=c1t, font_size=fs2).next_to(cords, DOWN)
        xval = MathTex("x=-1,\\, x=1", color=c1t, font_size=fs2).next_to(term1, DOWN)

        self.add(term0)

        with self.voiceover(
            text=f"""
            That's unfortunately not correct.
            First, we <bookmark mark="note1"/> set the function's expression equal to zero.
            Then we have <bookmark mark="eq0"/> x squared minus one equals zero.
            After that, we <bookmark mark="solveX"/> solve for x, and we directly obtain two values for x: <bookmark mark="xeq"/> x equals minus one or x equals one.
            <bookmark mark="zeros"/> These are the two zero crossings of the function.
            When we look at the <bookmark mark="plot"/> graph of the function, we can confirm that the zero crossings are at <bookmark mark="visualZeros"/> x equals minus one and x equals one.
            """
        ) as tracker:
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("eq0")
            self.play(TransformMatchingTex(term0, term1))

            self.wait_until_bookmark("solveX")
            note.change_colors([0,1])

            self.wait_until_bookmark("xeq")
            self.play(Write(xval))

            self.wait_until_bookmark("zeros")
            note.change_colors([1,2])

            self.wait_until_bookmark("plot")
            self.play(Write(graphBlue))

            self.wait_until_bookmark("visualZeros")
            circ1 = Circle(radius=0.1, color=BLUE).move_to(plane.c2p(-1,0))
            circ2 = Circle(radius=0.1, color=BLUE).move_to(plane.c2p(1,0))
            self.play(Write(circ1))
            self.play(Write(circ2))

        self.wait(4)

class Func_1_3_I_4_b(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["1. Set function equal to $0$", "2. Solve for $x$", "$\\rightarrow$ Zero crossings at $x=-1$ and $x=1$"])
        self.add(note)

        cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3],
                               x_labels=[-2,2], y_labels=[-3,-1,1,3])
        plane = cords[0]
        self.add(cords)

        self.add_title("Determine Zero Crossings")

        funcBlue = lambda x: x**2-1
        graphBlue = plane.plot(funcBlue, color=c3)

        term0 = MathTex("f(x)=x^2-1", color=c1t, font_size=fs2).next_to(cords, DOWN)
        term1 = MathTex("x^2-1=0", color=c1t, font_size=fs2).next_to(cords, DOWN)
        xval = MathTex("x=-1,\\, x=1", color=c1t, font_size=fs2).next_to(term1, DOWN)

        self.add(term0)

        with self.voiceover(
            text=f"""
            Great, that's correct!
            First, we <bookmark mark="note1"/> set the function's expression equal to zero.
            Then we have <bookmark mark="eq0"/> x squared minus one equals zero.
            After that, we <bookmark mark="solveX"/> solve for x, and we directly obtain two values for x: <bookmark mark="xeq"/> x equals minus one or x equals one.
            <bookmark mark="zeros"/> These are the two zero crossings of the function.
            When we look at the <bookmark mark="plot"/> graph of the function, we can confirm that the zero crossings are at <bookmark mark="visualZeros"/> x equals minus one and x equals one.
            """
        ) as tracker:
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("eq0")
            self.play(TransformMatchingTex(term0, term1))

            self.wait_until_bookmark("solveX")
            note.change_colors([0,1])

            self.wait_until_bookmark("xeq")
            self.play(Write(xval))

            self.wait_until_bookmark("zeros")
            note.change_colors([1,2])

            self.wait_until_bookmark("plot")
            self.play(Write(graphBlue))

            self.wait_until_bookmark("visualZeros")
            circ1 = Circle(radius=0.1, color=BLUE).move_to(plane.c2p(-1,0))
            circ2 = Circle(radius=0.1, color=BLUE).move_to(plane.c2p(1,0))
            self.play(Write(circ1))
            self.play(Write(circ2))

        self.wait(4)

class Func_1_3_I_4_c(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["1. Set function equal to $0$", "2. Solve for $x$", "$\\rightarrow$ Zero crossings at $x=-1$ and $x=1$"])
        self.add(note)

        cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3],
                               x_labels=[-2,2], y_labels=[-3,-1,1,3])
        plane = cords[0]
        self.add(cords)

        self.add_title("Determine Zero Crossings")

        funcBlue = lambda x: x**2-1
        graphBlue = plane.plot(funcBlue, color=c3)

        term0 = MathTex("f(x)=x^2-1", color=c1t, font_size=fs2).next_to(cords, DOWN)
        term1 = MathTex("x^2-1=0", color=c1t, font_size=fs2).next_to(cords, DOWN)
        xval = MathTex("x=-1,\\, x=1", color=c1t, font_size=fs2).next_to(term1, DOWN)

        self.add(term0)

        with self.voiceover(
            text=f"""
            That's unfortunately not correct.
            First, we <bookmark mark="note1"/> set the function's expression equal to zero.
            Then we have <bookmark mark="eq0"/> x squared minus one equals zero.
            After that, we <bookmark mark="solveX"/> solve for x, and we directly obtain two values for x: <bookmark mark="xeq"/> x equals minus one or x equals one.
            <bookmark mark="zeros"/> These are the two zero crossings of the function.
            When we look at the <bookmark mark="plot"/> graph of the function, we can confirm that the zero crossings are at <bookmark mark="visualZeros"/> x equals minus one and x equals one.
            """
        ) as tracker:
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("eq0")
            self.play(TransformMatchingTex(term0, term1))

            self.wait_until_bookmark("solveX")
            note.change_colors([0,1])

            self.wait_until_bookmark("xeq")
            self.play(Write(xval))

            self.wait_until_bookmark("zeros")
            note.change_colors([1,2])

            self.wait_until_bookmark("plot")
            self.play(Write(graphBlue))

            self.wait_until_bookmark("visualZeros")
            circ1 = Circle(radius=0.1, color=BLUE).move_to(plane.c2p(-1,0))
            circ2 = Circle(radius=0.1, color=BLUE).move_to(plane.c2p(1,0))
            self.play(Write(circ1))
            self.play(Write(circ2))

        self.wait(4)

class Func_1_3_I_4_d(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["1. Set function equal to $0$", "2. Solve for $x$", "$\\rightarrow$ Zero crossings at $x=-1$ and $x=1$"])
        self.add(note)

        cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3],
                               x_labels=[-2,2], y_labels=[-3,-1,1,3])
        plane = cords[0]
        self.add(cords)

        self.add_title("Determine Zero Crossings")

        funcBlue = lambda x: x**2-1
        graphBlue = plane.plot(funcBlue, color=c3)

        term0 = MathTex("f(x)=x^2-1", color=c1t, font_size=fs2).next_to(cords, DOWN)
        term1 = MathTex("x^2-1=0", color=c1t, font_size=fs2).next_to(cords, DOWN)
        xval = MathTex("x=-1,\\, x=1", color=c1t, font_size=fs2).next_to(term1, DOWN)

        self.add(term0)

        with self.voiceover(
            text=f"""
            That's unfortunately not correct.
            First, we <bookmark mark="note1"/> set the function's expression equal to zero.
            Then we have <bookmark mark="eq0"/> x squared minus one equals zero.
            After that, we <bookmark mark="solveX"/> solve for x, and we directly obtain two values for x: <bookmark mark="xeq"/> x equals minus one or x equals one.
            <bookmark mark="zeros"/> These are the two zero crossings of the function.
            When we look at the <bookmark mark="plot"/> graph of the function, we can confirm that the zero crossings are at <bookmark mark="visualZeros"/> x equals minus one and x equals one.
            """
        ) as tracker:
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("eq0")
            self.play(TransformMatchingTex(term0, term1))

            self.wait_until_bookmark("solveX")
            note.change_colors([0,1])

            self.wait_until_bookmark("xeq")
            self.play(Write(xval))

            self.wait_until_bookmark("zeros")
            note.change_colors([1,2])

            self.wait_until_bookmark("plot")
            self.play(Write(graphBlue))

            self.wait_until_bookmark("visualZeros")
            circ1 = Circle(radius=0.1, color=BLUE).move_to(plane.c2p(-1,0))
            circ2 = Circle(radius=0.1, color=BLUE).move_to(plane.c2p(1,0))
            self.play(Write(circ1))
            self.play(Write(circ2))

        self.wait(4)


#####################################
#####################################
class Func_1_3_I_5(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["Intersection point with the y axis:", "a) Plug $x=0$ into the function expression", "b) Read the intersection point graphically."])
        self.add(note)

        cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3],
                               x_labels=[-2,2], y_labels=[-3,-1,1,3])
        plane = cords[0]
        self.add(cords)

        self.add_title("Intersection Point with y axis")

        funcBlue = lambda x: x**2-1
        graphBlue = plane.plot(funcBlue, color=c3)
        funcGreen = lambda x: x+2
        graphGreen = plane.plot(funcGreen, color=GREEN)

        termBlue = MathTex("f(x)=x^2-1", color=c1t, font_size=fs2).next_to(cords, DOWN)
        termBlue2 = MathTex("f(x)=x^2-1", color=c1t, font_size=fs2).next_to(cords, DOWN)
        termBlueZero = MathTex("f(0)=0^2-1=-1", color=c1t, font_size=fs2).next_to(cords, DOWN)
        termGreen = MathTex("g(x)=x+2", color=c1t, font_size=fs2).next_to(cords, DOWN)
        termGreen2 = MathTex("g(x)=x+2", color=c1t, font_size=fs2).next_to(cords, DOWN)
        termGreenZero = MathTex("g(0)=0+2=2", color=c1t, font_size=fs2).next_to(cords, DOWN)

        with self.voiceover(
            text=f"""
            Now, let's focus on the <bookmark mark="note1"/> intersection points with the y axis.
            We can find these easily: <bookmark mark="note2"/> We simply plug x equals zero into the function expression,
            and we get the y-value of our intersection point with the y axis.
            Alternatively, <bookmark mark="note3"/> we can read the intersection point directly from the graph. Let's look at two examples:
            First, the function <bookmark mark="blue1"/> f of x equals x squared minus one.
            Plugging in <bookmark mark="substitute"/> x equals zero gives us the value minus one, which is also the intersection point with the y axis.
            Alternatively, <bookmark mark="blue2"/> we can visually confirm this: The graph intersects the y axis at <bookmark mark="cross1"/> y equals minus one.
            
            The next example is the function <bookmark mark="green1"/> g of x equals x plus two.
            Plugging in <bookmark mark="subGreen"/> x equals zero gives us the value two, which is also the intersection point with the y axis.
            Again, we can <bookmark mark="green2"/> visually confirm this: The graph intersects the y axis at <bookmark mark="cross2"/> y equals two.
            """
        ) as tracker:
            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

            self.wait_until_bookmark("blue1")
            note.change_colors([2])
            self.play(Write(termBlue))

            self.wait_until_bookmark("substitute")
            self.play(ReplacementTransform(termBlue, termBlueZero))
            
            self.wait_until_bookmark("blue2")
            self.play(Write(graphBlue), ReplacementTransform(termBlueZero, termBlue2))

            self.wait_until_bookmark("cross1")
            circ = Circle(radius=0.1, color=BLUE).move_to(plane.c2p(0,-1))
            self.play(Write(circ))

            self.wait_until_bookmark("green1")
            self.play(TransformMatchingTex(termBlue2, termGreen), Unwrite(graphBlue), Unwrite(circ))

            self.wait_until_bookmark("subGreen")
            self.play(ReplacementTransform(termGreen, termGreenZero))

            self.wait_until_bookmark("green2")
            self.play(Write(graphGreen), ReplacementTransform(termGreenZero, termGreen2))

            self.wait_until_bookmark("cross2")
            circ = Circle(radius=0.1, color=GREEN).move_to(plane.c2p(0,2))
            self.play(Write(circ))

        self.wait(4)



#####################################
#####################################
### Practice Part
#####################################
#####################################

#####################################
#####################################

class xCrossingQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

    @abstractmethod
    def construct(self):
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["Consider the function", f"${self.funcTex}$"], ["Where is/are the zero crossing(s)?"]])
        note.change_colors([0])
        self.add(note)

        func = MathTex(self.funcTex, color=c1t, font_size=fs1).shift(UP)

        self.add_title("Intersection Point with Axes")

        with self.voiceover(
            text=f"""
            {self.intro}
            Consider the function <bookmark mark="writeFunc"/> {self.funcText}.
            <bookmark mark="zero"/>
            Where is the zero crossing of this function, or if there's more than one, where
            are the zero crossings?
            """
        ) as tracker:
            self.wait_until_bookmark("writeFunc")
            self.play(Write(func))

            self.wait_until_bookmark("zero")
            note.change_colors([0,1])

        self.wait(4)

class xCrossingAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    @abstractmethod
    def construct(self):
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["Consider the function", f"${self.funcTex}$"], "Set the function equal to $0$", "Solve for $x$"])
        self.add(note)

        func = MathTex(self.funcTex, color=c1t, font_size=fs1).shift(UP*2)
        setToZero = Tex("$\\rightarrow$ Set function equal to zero", color=RED, font_size=fs3).next_to(func, DOWN)
        func_Zeroed = MathTex(self.funcZero, color=c1t, font_size=fs1).next_to(setToZero, DOWN)
        solve = Tex("$\\rightarrow$ Solve for $x$", color=RED, font_size=fs3).next_to(func_Zeroed, DOWN)
        func_Zeros = MathTex(self.funcZeros, color=c1t, font_size=fs1).next_to(solve, DOWN)

        plane = self.cords[0]
        plot = plane.plot(self.func, color=BLUE)

        if self.isCorrect:
            self.add_title("Correct!")
        else:
            self.add_title("Not quite...")

        with self.voiceover(
            text=f"""
            {self.intro}
            So, we start with the function <bookmark mark="writeFunc"/> {self.funcText}.
            
            First, we <bookmark mark="setToZero1"/> set this function equal to zero, which gives us <bookmark mark="setToZero2"/> {self.ZeroText}.
            Then, <bookmark mark="solve1"/> we solve the equation for x, and <bookmark mark="solve2"/> we obtain {self.ZerosText}.
            
            We can also <bookmark mark="clear"/> graphically verify this solution.
            
            Here <bookmark mark="plot"/> you can see the graph of our function.
            And as you can see <bookmark mark="crossing"/>, the graph intersects the x-axis at {self.ZerosText}.
            """
        ) as tracker:
            self.wait_until_bookmark("writeFunc")
            note.change_colors([0])
            self.play(Write(func))

            self.wait_until_bookmark("setToZero1")
            note.change_colors([0,1])
            self.play(Write(setToZero), run_time=0.5)

            self.wait_until_bookmark("setToZero2")
            self.play(Write(func_Zeroed))

            self.wait_until_bookmark("solve1")
            note.change_colors([1,2])
            self.play(Write(solve), run_time=0.5)

            self.wait_until_bookmark("solve2")
            self.play(Write(func_Zeros))

            self.wait_until_bookmark("clear")
            note.change_colors([2])
            self.play(Unwrite(func), Unwrite(setToZero), Unwrite(func_Zeroed), Unwrite(solve), Unwrite(func_Zeros), run_time=0.5)

            self.wait_until_bookmark("plot")
            self.play(Write(self.cords), run_time=0.5)
            self.play(Write(plot))

            self.wait_until_bookmark("crossing")
            for x in self.zeros:
                self.play(Write(Circle(radius=0.1, color=BLUE).move_to(plane.coords_to_point(x,0))))
                self.wait(0.5)

        self.wait(4)

#####################################
#####################################
## Concrete Questions
#####################################
#####################################

TASK_Func_1_3_P_1_1_q = SophiaTaskDefinition(
    answerOptions = ["$-1", "$1$", "$-1,\\,0,\\,1$", "$-1,\\,1$"],
    correctAnswerIndex = 3,
    questionText = "What is/are the zero crossing(s) of the function $f(x)=x^2-1$?"
)

class Func_1_3_P_1_1_q(xCrossingQuestionScene):

    def construct(self):

        self.funcTex = "f(x)=x^2-1"
        self.func = lambda x: x**2-1
        self.funcText = "f of x equals x squared minus one"
        self.intro = "So, now let's practice with intersection points."

        super().construct()

class Func_1_3_P_1_1_a(xCrossingAnswerScene):
        
    def construct(self):
        self.funcTex = "f(x)=x^2-1"
        self.funcZero = "x^2-1=0"
        self.funcZeros = "x=-1,\\, x=1"
        self.func = lambda x: x**2-1
        self.funcText = "f of x equals x squared minus one"
        self.ZeroText = "x squared minus one equals zero"
        self.ZerosText = "x equals minus one and x equals one"
        self.intro = "Unfortunately, that's not quite right..."
        self.isCorrect = False
        self.zeros = [-1,1]
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3],
                               x_labels=[-2,2], y_labels=[-3,-1,1,3])
        
        super().construct()

class Func_1_3_P_1_1_b(xCrossingAnswerScene):
        
    def construct(self):
        self.funcTex = "f(x)=x^2-1"
        self.funcZero = "x^2-1=0"
        self.funcZeros = "x=-1,\\, x=1"
        self.func = lambda x: x**2-1
        self.funcText = "f of x equals x squared minus one"
        self.ZeroText = "x squared minus one equals zero"
        self.ZerosText = "x equals minus one and x equals one"
        self.intro = "Unfortunately, that's not quite right..."
        self.isCorrect = False
        self.zeros = [-1,1]
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3],
                               x_labels=[-2,2], y_labels=[-3,-1,1,3])
        
        super().construct()

class Func_1_3_P_1_1_c(xCrossingAnswerScene):
        
    def construct(self):
        self.funcTex = "f(x)=x^2-1"
        self.funcZero = "x^2-1=0"
        self.funcZeros = "x=-1,\\, x=1"
        self.func = lambda x: x**2-1
        self.funcText = "f of x equals x squared minus one"
        self.ZeroText = "x squared minus one equals zero"
        self.ZerosText = "x equals minus one and x equals one"
        self.intro = "Unfortunately, that's not quite right..."
        self.isCorrect = False
        self.zeros = [-1,1]
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3],
                               x_labels=[-2,2], y_labels=[-3,-1,1,3])
        
        super().construct()

class Func_1_3_P_1_1_d(xCrossingAnswerScene):
        
    def construct(self):
        self.funcTex = "f(x)=x^2-1"
        self.funcZero = "x^2-1=0"
        self.funcZeros = "x=-1,\\, x=1"
        self.func = lambda x: x**2-1
        self.funcText = "f of x equals x squared minus one"
        self.ZeroText = "x squared minus one equals zero"
        self.ZerosText = "x equals minus one and x equals one"
        self.intro = "That's correct, well done."
        self.isCorrect = True
        self.zeros = [-1,1]
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3],
                               x_labels=[-2,2], y_labels=[-3,-1,1,3])
        
        super().construct()




#####################################
#####################################

TASK_Func_1_3_P_1_2_q = SophiaTaskDefinition(
    answerOptions = ["$-2$", "$2$", "$-2,\\,2$", "$-2,\\,0,\\,2$"],
    correctAnswerIndex = 2,
    questionText = "What is/are the zero crossing(s) of the function $f(x)=x^2-4$?"
)

class Func_1_3_P_1_2_q(xCrossingQuestionScene):

    def construct(self):

        self.funcTex = "f(x)=x^2-4"
        self.func = lambda x: x**2-4
        self.funcText = "f of x equals x squared minus four"
        self.intro = "Let's try again with a different function."

        super().construct()

class Func_1_3_P_1_2_a(xCrossingAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-4"
        self.funcZero = "x^2-4=0"
        self.funcZeros = "x=-2,\\, x=2"
        self.func = lambda x: x**2-4
        self.funcText = "f of x equals x squared minus four"
        self.ZeroText = "x squared minus four equals zero"
        self.ZerosText = "x equals minus two and x equals two"
        self.intro = "Unfortunately, that's not quite right..."
        self.isCorrect = False
        self.zeros = [-2,2]
        self.cords = self.add_cords([-3, 3, 1], [-5, 5, 1], x_ticks=[-3,3], y_ticks=[-5,0,5],
                               x_labels=[-3,3], y_labels=[-5,0,5])
        
        super().construct()

class Func_1_3_P_1_2_b(xCrossingAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-4"
        self.funcZero = "x^2-4=0"
        self.funcZeros = "x=-2,\\, x=2"
        self.func = lambda x: x**2-4
        self.funcText = "f of x equals x squared minus four"
        self.ZeroText = "x squared minus four equals zero"
        self.ZerosText = "x equals minus two and x equals two"
        self.intro = "Unfortunately, that's not quite right..."
        self.isCorrect = False
        self.zeros = [-2,2]
        self.cords = self.add_cords([-3, 3, 1], [-5, 5, 1], x_ticks=[-3,3], y_ticks=[-5,0,5],
                               x_labels=[-3,3], y_labels=[-5,0,5])
        
        super().construct()

class Func_1_3_P_1_2_c(xCrossingAnswerScene):
        
    def construct(self):
        self.funcTex = "f(x)=x^2-4"
        self.funcZero = "x^2-4=0"
        self.funcZeros = "x=-2,\\, x=2"
        self.func = lambda x: x**2-4
        self.funcText = "f of x equals x squared minus four"
        self.ZeroText = "x squared minus four equals zero"
        self.ZerosText = "x equals minus two and x equals two"
        self.intro = "That's correct, well done."
        self.isCorrect = True
        self.zeros = [-2,2]
        self.cords = self.add_cords([-3, 3, 1], [-5, 5, 1], x_ticks=[-3,3], y_ticks=[-5,0,5],
                               x_labels=[-3,3], y_labels=[-5,0,5])
        
        super().construct()

class Func_1_3_P_1_2_d(xCrossingAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-4"
        self.funcZero = "x^2-4=0"
        self.funcZeros = "x=-2,\\, x=2"
        self.func = lambda x: x**2-4
        self.funcText = "f of x equals x squared minus four"
        self.ZeroText = "x squared minus four equals zero"
        self.ZerosText = "x equals minus two and x equals two"
        self.intro = "Unfortunately, that's not quite right..."
        self.isCorrect = False
        self.zeros = [-2,2]
        self.cords = self.add_cords([-3, 3, 1], [-5, 5, 1], x_ticks=[-3,3], y_ticks=[-5,0,5],
                               x_labels=[-3,3], y_labels=[-5,0,5])
        
        super().construct()


#####################################
#####################################
TASK_Func_1_3_P_1_3_q = SophiaTaskDefinition(
    answerOptions = ["$0$", "$2$", "$-2,\\,2$", "$-2,\\,0,\\,2$"],
    correctAnswerIndex = 0,
    questionText = "What is/are the zero crossing(s) of the function $f(x)=x^3$?"   
)

class Func_1_3_P_1_3_q(xCrossingQuestionScene):

    def construct(self):

        self.funcTex = "f(x)=x^3"
        self.func = lambda x: x**3
        self.funcText = "function f of x equals x cubed"
        self.intro = "Let's move on to a cubic function."

        super().construct()

class Func_1_3_P_1_3_a(xCrossingAnswerScene):
        
    def construct(self):
        self.funcTex = "f(x)=x^3"
        self.funcZero = "x^3=0"
        self.funcZeros = "x=0"
        self.func = lambda x: x**3
        self.funcText = "function f of x equals x cubed"
        self.ZeroText = "x cubed equals zero"
        self.ZerosText = "x equals zero"
        self.intro = "That's correct, well done."
        self.isCorrect = True
        self.zeros = [0]
        self.cords = self.add_cords([-3, 3, 1], [-8, 8, 1], x_ticks=[-3,0,3], y_ticks=[-8,0,8],
                               x_labels=[-3,0,3], y_labels=[-8,0,8])
        
        super().construct()

class Func_1_3_P_1_3_b(xCrossingAnswerScene):
        

    def construct(self):
        self.funcTex = "f(x)=x^3"
        self.funcZero = "x^3=0"
        self.funcZeros = "x=0"
        self.func = lambda x: x**3
        self.funcText = "function f of x equals x cubed"
        self.ZeroText = "x cubed equals zero"
        self.ZerosText = "x equals zero"
        self.intro = "Unfortunately, that's incorrect. Too bad."
        self.isCorrect = False
        self.zeros = [0]
        self.cords = self.add_cords([-3, 3, 1], [-8, 8, 1], x_ticks=[-3,0,3], y_ticks=[-8,0,8],
                               x_labels=[-3,0,3], y_labels=[-8,0,8])
        
        super().construct()

class Func_1_3_P_1_3_c(xCrossingAnswerScene):
        

    def construct(self):
        self.funcTex = "f(x)=x^3"
        self.funcZero = "x^3=0"
        self.funcZeros = "x=0"
        self.func = lambda x: x**3
        self.funcText = "function f of x equals x cubed"
        self.ZeroText = "x cubed equals zero"
        self.ZerosText = "x equals zero"
        self.intro = "Unfortunately, that's incorrect. Too bad."
        self.isCorrect = False
        self.zeros = [0]
        self.cords = self.add_cords([-3, 3, 1], [-8, 8, 1], x_ticks=[-3,0,3], y_ticks=[-8,0,8],
                               x_labels=[-3,0,3], y_labels=[-8,0,8])
        
        super().construct()

class Func_1_3_P_1_3_d(xCrossingAnswerScene):
        

    def construct(self):
        self.funcTex = "f(x)=x^3"
        self.funcZero = "x^3=0"
        self.funcZeros = "x=0"
        self.func = lambda x: x**3
        self.funcText = "function f of x equals x cubed"
        self.ZeroText = "x cubed equals zero"
        self.ZerosText = "x equals zero"
        self.intro = "Unfortunately, that's incorrect. Too bad."
        self.isCorrect = False
        self.zeros = [0]
        self.cords = self.add_cords([-3, 3, 1], [-8, 8, 1], x_ticks=[-3,0,3], y_ticks=[-8,0,8],
                               x_labels=[-3,0,3], y_labels=[-8,0,8])
        
        super().construct()

#####################################
#####################################
TASK_Func_1_3_P_1_4_q = SophiaTaskDefinition(
    answerOptions = ["$-1$", "$0$", "$-1,\\,0$", "$0,\\,1$"],
    correctAnswerIndex = 1,
    questionText = "What is/are the zero crossing(s) of the function $f(x)=x$?"   
)

class Func_1_3_P_1_4_q(xCrossingQuestionScene):

    def construct(self):

        self.funcTex = "f(x)=x"
        self.func = lambda x: x
        self.funcText = "function f of x equals x"
        self.intro = "And now we move on to the linear function."

        super().construct()

class Func_1_3_P_1_4_a(xCrossingAnswerScene):
        

    def construct(self):
        self.funcTex = "f(x)=x"
        self.funcZero = "x=0"
        self.funcZeros = "x=0"
        self.func = lambda x: x
        self.funcText = "function f of x equals x"
        self.ZeroText = "x equals zero"
        self.ZerosText = "x equals zero"
        self.intro = "Unfortunately, that's incorrect. Too bad."
        self.isCorrect = False
        self.zeros = [0]
        self.cords = self.add_cords([-3, 3, 1], [-3, 3, 1], x_ticks=[-3,0,3], y_ticks=[-3,0,3],
                               x_labels=[-3,0,3], y_labels=[-3,0,3])
        
        super().construct()

class Func_1_3_P_1_4_b(xCrossingAnswerScene):
        
    def construct(self):
        self.funcTex = "f(x)=x"
        self.funcZero = "x=0"
        self.funcZeros = "x=0"
        self.func = lambda x: x
        self.funcText = "function f of x equals x"
        self.ZeroText = "x equals zero"
        self.ZerosText = "x equals zero"
        self.intro = "That's correct, well done."
        self.isCorrect = True
        self.zeros = [0]
        self.cords = self.add_cords([-3, 3, 1], [-3, 3, 1], x_ticks=[-3,0,3], y_ticks=[-3,0,3],
                               x_labels=[-3,0,3], y_labels=[-3,0,3])
        
        super().construct()

class Func_1_3_P_1_4_c(xCrossingAnswerScene):
        

    def construct(self):
        self.funcTex = "f(x)=x"
        self.funcZero = "x=0"
        self.funcZeros = "x=0"
        self.func = lambda x: x
        self.funcText = "function f of x equals x"
        self.ZeroText = "x equals zero"
        self.ZerosText = "x equals zero"
        self.intro = "Unfortunately, that's incorrect. Too bad."
        self.isCorrect = False
        self.zeros = [0]
        self.cords = self.add_cords([-3, 3, 1], [-3, 3, 1], x_ticks=[-3,0,3], y_ticks=[-3,0,3],
                               x_labels=[-3,0,3], y_labels=[-3,0,3])
        
        super().construct()

class Func_1_3_P_1_4_d(xCrossingAnswerScene):
        

    def construct(self):
        self.funcTex = "f(x)=x"
        self.funcZero = "x=0"
        self.funcZeros = "x=0"
        self.func = lambda x: x
        self.funcText = "function f of x equals x"
        self.ZeroText = "x equals zero"
        self.ZerosText = "x equals zero"
        self.intro = "Unfortunately, that's incorrect. Too bad."
        self.isCorrect = False
        self.zeros = [0]
        self.cords = self.add_cords([-3, 3, 1], [-3, 3, 1], x_ticks=[-3,0,3], y_ticks=[-3,0,3],
                               x_labels=[-3,0,3], y_labels=[-3,0,3])
        
        super().construct()

#####################################
#####################################
TASK_Func_1_3_P_1_5_q = SophiaTaskDefinition(
    answerOptions = ["$-3$", "$3$", "$-3,\\,3$", "$-3,\\,0,\\,3$"],
    correctAnswerIndex = 2,
    questionText = "What is/are the zero crossing(s) of the function $f(x)=x^2-9$?"   
)

class Func_1_3_P_1_5_q(xCrossingQuestionScene):

    def construct(self):

        self.funcTex = "f(x)=x^2-9"
        self.func = lambda x: x**2-9
        self.funcText = "function f of x equals x squared minus nine"
        self.intro = "Let's try this with another function."

        super().construct()

class Func_1_3_P_1_5_a(xCrossingAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-9"
        self.funcZero = "x^2-9=0"
        self.funcZeros = "x=-3,\\, x=3"
        self.func = lambda x: x**2-9
        self.funcText = "function f of x equals x squared minus nine"
        self.ZeroText = "x squared minus nine equals zero"
        self.ZerosText = "x equals minus three and x equals three"
        self.intro = "Unfortunately, that's incorrect. Too bad."
        self.isCorrect = False
        self.zeros = [-3,3]
        self.cords = self.add_cords([-4, 4, 1], [-10, 10, 1], x_ticks=[-4,4], y_ticks=[-10,0,10],
                               x_labels=[-4,4], y_labels=[-10,0,10])
        
        super().construct()

class Func_1_3_P_1_5_b(xCrossingAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-9"
        self.funcZero = "x^2-9=0"
        self.funcZeros = "x=-3,\\, x=3"
        self.func = lambda x: x**2-9
        self.funcText = "function f of x equals x squared minus nine"
        self.ZeroText = "x squared minus nine equals zero"
        self.ZerosText = "x equals minus three and x equals three"
        self.intro = "Unfortunately, that's incorrect. Too bad."
        self.isCorrect = False
        self.zeros = [-3,3]
        self.cords = self.add_cords([-4, 4, 1], [-10, 10, 1], x_ticks=[-4,4], y_ticks=[-10,0,10],
                               x_labels=[-4,4], y_labels=[-10,0,10])
        
        super().construct()

class Func_1_3_P_1_5_c(xCrossingAnswerScene):
        
    def construct(self):
        self.funcTex = "f(x)=x^2-9"
        self.funcZero = "x^2-9=0"
        self.funcZeros = "x=-3,\\, x=3"
        self.func = lambda x: x**2-9
        self.funcText = "function f of x equals x squared minus nine"
        self.ZeroText = "x squared minus nine equals zero"
        self.ZerosText = "x equals minus three and x equals three"
        self.intro = "That's correct, well done."
        self.isCorrect = True
        self.zeros = [-3,3]
        self.cords = self.add_cords([-4, 4, 1], [-10, 10, 1], x_ticks=[-4,4], y_ticks=[-10,0,10],
                               x_labels=[-4,4], y_labels=[-10,0,10])
        
        super().construct()

class Func_1_3_P_1_5_d(xCrossingAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-9"
        self.funcZero = "x^2-9=0"
        self.funcZeros = "x=-3,\\, x=3"
        self.func = lambda x: x**2-9
        self.funcText = "function f of x equals x squared minus nine"
        self.ZeroText = "x squared minus nine equals zero"
        self.ZerosText = "x equals minus three and x equals three"
        self.intro = "Unfortunately, that's incorrect. Too bad."
        self.isCorrect = False
        self.zeros = [-3,3]
        self.cords = self.add_cords([-4, 4, 1], [-10, 10, 1], x_ticks=[-4,4], y_ticks=[-10,0,10],
                               x_labels=[-4,4], y_labels=[-10,0,10])
        
        super().construct()

#####################################
#####################################

TASK_Func_1_3_P_1_6_q = SophiaTaskDefinition(
    answerOptions = ["$-4$", "$4$", "$-4,\\,4$", "$-4,\\,0,\\,4$"],
    correctAnswerIndex = 2,
    questionText = "What is/are the zero crossing(s) of the function $f(x)=x^2-16$?"   
)

class Func_1_3_P_1_6_q(xCrossingQuestionScene):

    def construct(self):

        self.funcTex = "f(x)=x^2-16"
        self.func = lambda x: x**2-16
        self.funcText = "function f of x equals x squared minus sixteen"
        self.intro = "Let's consider another function."

        super().construct()

class Func_1_3_P_1_6_a(xCrossingAnswerScene):
        

    def construct(self):
        self.funcTex = "f(x)=x^2-16"
        self.funcZero = "x^2-16=0"
        self.funcZeros = "x=-4,\\, x=4"
        self.func = lambda x: x**2-16
        self.funcText = "function f of x equals x squared minus sixteen"
        self.ZeroText = "x squared minus sixteen equals zero"
        self.ZerosText = "x equals minus four and x equals four"
        self.intro = "Unfortunately, that's incorrect. Too bad."
        self.isCorrect = False
        self.zeros = [-4,4]
        self.cords = self.add_cords([-5, 5, 1], [-17, 17, 1], x_ticks=[-5,5], y_ticks=[-17,0,17],
                               x_labels=[-5,5], y_labels=[-17,0,17])
        
        super().construct()

class Func_1_3_P_1_6_b(xCrossingAnswerScene):
        

    def construct(self):
        self.funcTex = "f(x)=x^2-16"
        self.funcZero = "x^2-16=0"
        self.funcZeros = "x=-4,\\, x=4"
        self.func = lambda x: x**2-16
        self.funcText = "function f of x equals x squared minus sixteen"
        self.ZeroText = "x squared minus sixteen equals zero"
        self.ZerosText = "x equals minus four and x equals four"
        self.intro = "Unfortunately, that's incorrect. Too bad."
        self.isCorrect = False
        self.zeros = [-4,4]
        self.cords = self.add_cords([-5, 5, 1], [-17, 17, 1], x_ticks=[-5,5], y_ticks=[-17,0,17],
                               x_labels=[-5,5], y_labels=[-17,0,17])
        
        super().construct()

class Func_1_3_P_1_6_c(xCrossingAnswerScene):
        
    def construct(self):
        self.funcTex = "f(x)=x^2-16"
        self.funcZero = "x^2-16=0"
        self.funcZeros = "x=-4,\\, x=4"
        self.func = lambda x: x**2-16
        self.funcText = "function f of x equals x squared minus sixteen"
        self.ZeroText = "x squared minus sixteen equals zero"
        self.ZerosText = "x equals minus four and x equals four"
        self.intro = "That's correct, well done."
        self.isCorrect = True
        self.zeros = [-4,4]
        self.cords = self.add_cords([-5, 5, 1], [-17, 17, 1], x_ticks=[-5,5], y_ticks=[-17,0,17],
                               x_labels=[-5,5], y_labels=[-17,0,17])
        
        super().construct()

class Func_1_3_P_1_6_d(xCrossingAnswerScene):
        

    def construct(self):
        self.funcTex = "f(x)=x^2-16"
        self.funcZero = "x^2-16=0"
        self.funcZeros = "x=-4,\\, x=4"
        self.func = lambda x: x**2-16
        self.funcText = "function f of x equals x squared minus sixteen"
        self.ZeroText = "x squared minus sixteen equals zero"
        self.ZerosText = "x equals minus four and x equals four"
        self.intro = "Unfortunately, that's incorrect. Too bad."
        self.isCorrect = False
        self.zeros = [-4,4]
        self.cords = self.add_cords([-5, 5, 1], [-17, 17, 1], x_ticks=[-5,5], y_ticks=[-17,0,17],
                               x_labels=[-5,5], y_labels=[-17,0,17])
        
        super().construct()

#####################################
#####################################

TASK_Func_1_3_P_1_7_q = SophiaTaskDefinition(
    answerOptions = ["$-5$", "$5$", "$-5,\\,5$", "$-5,\\,0,\\,5$"],
    correctAnswerIndex = 2,
    questionText = "What is/are the zero crossing(s) of the function $f(x)=x^2-25$?"   
)

class Func_1_3_P_1_7_q(xCrossingQuestionScene):

    def construct(self):

        self.funcTex = "f(x)=x^2-25"
        self.func = lambda x: x**2-25
        self.funcText = "function f of x equals x squared minus twenty-five"
        self.intro = "Let's try another function."

        super().construct()

class Func_1_3_P_1_7_a(xCrossingAnswerScene):
        

    def construct(self):
        self.funcTex = "f(x)=x^2-25"
        self.funcZero = "x^2-25=0"
        self.funcZeros = "x=-5,\\, x=5"
        self.func = lambda x: x**2-25
        self.funcText = "function f of x equals x squared minus twenty-five"
        self.ZeroText = "x squared minus twenty-five equals zero"
        self.ZerosText = "x equals minus five and x equals five"
        self.intro = "Unfortunately, that's incorrect. Too bad."
        self.isCorrect = False
        self.zeros = [-5,5]
        self.cords = self.add_cords([-6, 6, 1], [-26, 26, 1], x_ticks=[-6,6], y_ticks=[-26,0,26],
                               x_labels=[-6,6], y_labels=[-26,0,26])
        
        super().construct()

class Func_1_3_P_1_7_b(xCrossingAnswerScene):
        

    def construct(self):
        self.funcTex = "f(x)=x^2-25"
        self.funcZero = "x^2-25=0"
        self.funcZeros = "x=-5,\\, x=5"
        self.func = lambda x: x**2-25
        self.funcText = "function f of x equals x squared minus twenty-five"
        self.ZeroText = "x squared minus twenty-five equals zero"
        self.ZerosText = "x equals minus five and x equals five"
        self.intro = "Unfortunately, that's incorrect. Too bad."
        self.isCorrect = False
        self.zeros = [-5,5]
        self.cords = self.add_cords([-6, 6, 1], [-26, 26, 1], x_ticks=[-6,6], y_ticks=[-26,0,26],
                               x_labels=[-6,6], y_labels=[-26,0,26])
        
        super().construct()

class Func_1_3_P_1_7_c(xCrossingAnswerScene):
        
    def construct(self):
        self.funcTex = "f(x)=x^2-25"
        self.funcZero = "x^2-25=0"
        self.funcZeros = "x=-5,\\, x=5"
        self.func = lambda x: x**2-25
        self.funcText = "function f of x equals x squared minus twenty-five"
        self.ZeroText = "x squared minus twenty-five equals zero"
        self.ZerosText = "x equals minus five and x equals five"
        self.intro = "That's correct, well done."
        self.isCorrect = True
        self.zeros = [-5,5]
        self.cords = self.add_cords([-6, 6, 1], [-26, 26, 1], x_ticks=[-6,6], y_ticks=[-26,0,26],
                               x_labels=[-6,6], y_labels=[-26,0,26])
        
        super().construct()

class Func_1_3_P_1_7_d(xCrossingAnswerScene):
        

    def construct(self):
        self.funcTex = "f(x)=x^2-25"
        self.funcZero = "x^2-25=0"
        self.funcZeros = "x=-5,\\, x=5"
        self.func = lambda x: x**2-25
        self.funcText = "function f of x equals x squared minus twenty-five"
        self.ZeroText = "x squared minus twenty-five equals zero"
        self.ZerosText = "x equals minus five and x equals five"
        self.intro = "Unfortunately, that's incorrect. Too bad."
        self.isCorrect = False
        self.zeros = [-5,5]
        self.cords = self.add_cords([-6, 6, 1], [-26, 26, 1], x_ticks=[-6,6], y_ticks=[-26,0,26],
                               x_labels=[-6,6], y_labels=[-26,0,26])
        
        super().construct()


#####################################
#####################################
# New Q-Type: Intersect Y-Axis
#####################################
#####################################

class yCrossingQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["Consider the function", f"${self.funcTex}$"], ["Where does the function", "cross the y-axis?"]])
        note.change_colors([0])
        self.add(note)

        func = MathTex(self.funcTex, color=c1t, font_size=fs1).shift(UP)

        # Add title to the scene
        self.add_title("Intersection with the y-Axis")


        # Initialize a cursor
        # cursor = AltCursor(stroke_width=0.0, blinking=True).shift(LEFT)
        # cursor.autoFadeBackground = True

        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.intro}
                Consider the function <bookmark mark="writeFunc"/> {self.funcText}.
                <bookmark mark="zero"/>
                Where is the intersection of the function with the y axis?
                """
        ) as tracker:
            
            self.wait_until_bookmark("writeFunc")
            self.play(Write(func))

            self.wait_until_bookmark("zero")
            note.change_colors([0,1])

        self.wait(4)

#####################################
#####################################
class yCrossingAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["Consider the function", f"${self.funcTex}$"], "Substitute $0$ into the function", "Result is intersection with the y-axis"])
        self.add(note)

        func = MathTex(self.funcTex, color=c1t, font_size=fs1).shift(UP*2)
        plugInZero = Tex("$\\rightarrow$ Substitute $x=0$", color=RED, font_size=fs2).next_to(func, DOWN)
        func_Zeroed = MathTex(self.funcZero, color=c1t, font_size=fs1).next_to(plugInZero, DOWN)

        # Create the coordinate system

        plane = self.cords[0]
        plot = plane.plot(self.func, color=BLUE)


        # Add title to the scene
        if self.isCorrect:
            self.add_title("Correct!")
        else:
            self.add_title("Not quite...")   
        


        # Initialize a cursor
        # cursor = AltCursor(stroke_width=0.0, blinking=True).shift(LEFT)
        # cursor.autoFadeBackground = True

        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.intro}
                So, we are considering the function <bookmark mark="writeFunc"/> {self.funcText}.
                To obtain the intersection point with the y axis <bookmark mark="setToZero1"/>,
                we simply plug x equals 0 into the function term.
                Then we get <bookmark mark="setToZero2"/> {self.ZeroText}. <bookmark mark="noteChange"/>
                And then we already have the y-value of the intersection point with the y-axis.
                
                Now, let's verify this using <bookmark mark="clear"/> the graph.
                Here's the graph of the function. <bookmark mark="plot"/>
                We can see that the intersection point with the y-axis <bookmark mark="ycirc"/>
                lies at  y equal to {self.y_cross_text}.
                """
        ) as tracker:
            
            self.wait_until_bookmark("writeFunc")
            note.change_colors([0])
            self.play(Write(func))

            self.wait_until_bookmark("setToZero1")
            note.change_colors([0,1])
            self.play(Write(plugInZero))

            self.wait_until_bookmark("setToZero2")
            self.play(Write(func_Zeroed))

            self.wait_until_bookmark("noteChange")
            note.change_colors([1,2])

            self.wait_until_bookmark("clear")
            self.play(Unwrite(plugInZero), Unwrite(func_Zeroed), Unwrite(func), run_time=0.5)

            self.wait_until_bookmark("plot")
            self.play(Write(self.cords), run_time=0.5)
            self.play(Write(plot))

            self.wait_until_bookmark("ycirc")
            self.play(Write(Circle(radius=0.1, color=BLUE).move_to(plane.coords_to_point(0,self.y_cross))))

        self.wait(4)



#####################################
#####################################
#Concrete Questions
#####################################
#####################################
TASK_Func_1_3_P_2_1_q = SophiaTaskDefinition(
    answerOptions = ["$0$", "$1$", "$-1$", "$2$"],
    correctAnswerIndex = 2,
    questionText = "Where does the function intersect the $y$-axis?"   
)

class Func_1_3_P_2_1_q(yCrossingQuestionScene):
    
    def construct(self):

        self.funcTex = "f(x)=x^2-1"
        self.func = lambda x: x**2-1
        self.funcText = "f of x equals x squared minus one"
        self.intro = "So, now we practice with intersections."
        super().construct()

class Func_1_3_P_2_1_a(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^2-1"
        self.funcZero = "f(0)=0^2-1=-1"
        self.func = lambda x: x**2-1
        self.funcText = "f of x equals x squared minus one"
        self.ZeroText = "f of zero equals zero squared minus one equals minus one"

        self.intro = "Unfortunately, that's incorrect."
        self.isCorrect = False
        self.y_cross = -1
        self.y_cross_text = "negative one"
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3],
                               x_labels=[-2,2], y_labels=[-3,-1,1,3])
        
        super().construct()


class Func_1_3_P_2_1_b(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^2-1"
        self.funcZero = "f(0)=0^2-1=-1"
        self.func = lambda x: x**2-1
        self.funcText = "f of x equals x squared minus one"
        self.ZeroText = "f of zero equals zero squared minus one equals minus one"

        self.intro = "Unfortunately, that's incorrect."
        self.isCorrect = False
        self.y_cross = -1
        self.y_cross_text = "negative one"
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3],
                               x_labels=[-2,2], y_labels=[-3,-1,1,3])
        
        super().construct()


class Func_1_3_P_2_1_c(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^2-1"
        self.funcZero = "f(0)=0^2-1=-1"
        self.func = lambda x: x**2-1
        self.funcText = "f of x equals x squared minus one"
        self.ZeroText = "f of zero equals zero squared minus one equals minus one"

        self.intro = "That's correct, well done."
        self.isCorrect = True
        self.y_cross = -1
        self.y_cross_text = "negative one"
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3],
                               x_labels=[-2,2], y_labels=[-3,-1,1,3])
        
        super().construct()

class Func_1_3_P_2_1_d(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^2-1"
        self.funcZero = "f(0)=0^2-1=-1"
        self.func = lambda x: x**2-1
        self.funcText = "f of x equals x squared minus one"
        self.ZeroText = "f of zero equals zero squared minus one equals minus one"

        self.intro = "Unfortunately, that's incorrect."
        self.isCorrect = False
        self.y_cross = -1
        self.y_cross_text = "negative one"
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3],
                               x_labels=[-2,2], y_labels=[-3,-1,1,3])
        
        super().construct()

#####################################
#####################################
TASK_Func_1_3_P_2_2_q = SophiaTaskDefinition(
    answerOptions = ["$0$", "$1$", "$-1$", "$2$"],
    correctAnswerIndex = 0,
    questionText = "Where does the function intersect the $y$-axis?"   
)

class Func_1_3_P_2_2_q(yCrossingQuestionScene):
    
    def construct(self):

        self.funcTex = "f(x)=x^2"
        self.func = lambda x: x**2
        self.funcText = "f of x equals x squared"
        self.intro = "Let's continue practicing with intersections."
        super().construct()

class Func_1_3_P_2_2_a(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^2"
        self.funcZero = "f(0)=0^2=0"
        self.func = lambda x: x**2
        self.funcText = "f of x equals x squared"
        self.ZeroText = "f of zero equals zero squared equals zero"

        self.intro = "That's correct, excellent job."
        self.isCorrect = True
        self.y_cross = 0
        self.y_cross_text = "zero"
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,0,1,3],
                               x_labels=[-2,2], y_labels=[-3,0,1,3])
        
        super().construct()

class Func_1_3_P_2_2_b(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^2"
        self.funcZero = "f(0)=0^2=0"
        self.func = lambda x: x**2
        self.funcText = "f of x equals x squared"
        self.ZeroText = "f of zero equals zero squared equals zero"

        self.intro = "Unfortunately, that's not correct."
        self.isCorrect = False
        self.y_cross = 0
        self.y_cross_text = "zero"
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,0,1,3],
                               x_labels=[-2,2], y_labels=[-3,0,1,3])
        
        super().construct()

class Func_1_3_P_2_2_c(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^2"
        self.funcZero = "f(0)=0^2=0"
        self.func = lambda x: x**2
        self.funcText = "f of x equals x squared"
        self.ZeroText = "f of zero equals zero squared equals zero"

        self.intro = "Unfortunately, that's not correct."
        self.isCorrect = False
        self.y_cross = 0
        self.y_cross_text = "zero"
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,0,1,3],
                               x_labels=[-2,2], y_labels=[-3,0,1,3])
        
        super().construct()

class Func_1_3_P_2_2_d(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^2"
        self.funcZero = "f(0)=0^2=0"
        self.func = lambda x: x**2
        self.funcText = "f of x equals x squared"
        self.ZeroText = "f of zero equals zero squared equals zero"

        self.intro = "Unfortunately, that's not correct."
        self.isCorrect = False
        self.y_cross = 0
        self.y_cross_text = "zero"
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,0,1,3],
                               x_labels=[-2,2], y_labels=[-3,0,1,3])
        
        super().construct()


#####################################
#####################################
#####################################
#####################################
TASK_Func_1_3_P_2_3_q = SophiaTaskDefinition(
    answerOptions = ["$0$", "$1$", "$-1$", "$2$"],
    correctAnswerIndex = 1,
    questionText = "Where does the function intersect the $y$-axis?"   
)

class Func_1_3_P_2_3_q(yCrossingQuestionScene):
    
    def construct(self):

        self.funcTex = "f(x)=x+1"
        self.func = lambda x: x+1
        self.funcText = "f of x equals x plus one"
        self.intro = "Let's keep going with intersections."
        super().construct()

class Func_1_3_P_2_3_a(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x+1"
        self.funcZero = "f(0)=0+1=1"
        self.func = lambda x: x+1
        self.funcText = "f of x equals x plus one"
        self.ZeroText = "f of zero equals zero plus one equals one"

        self.intro = "Unfortunately, that's incorrect."
        self.isCorrect = False
        self.y_cross = 1
        self.y_cross_text = "one"
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,1,3],
                               x_labels=[-2,2], y_labels=[-3,1,3])
        
        super().construct()

class Func_1_3_P_2_3_b(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x+1"
        self.funcZero = "f(0)=0+1=1"
        self.func = lambda x: x+1
        self.funcText = "f of x equals x plus one"
        self.ZeroText = "f of zero equals zero plus one equals one"

        self.intro = "Correct, well done."
        self.isCorrect = True
        self.y_cross = 1
        self.y_cross_text = "one"
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,1,3],
                               x_labels=[-2,2], y_labels=[-3,1,3])
        
        super().construct()

class Func_1_3_P_2_3_c(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x+1"
        self.funcZero = "f(0)=0+1=1"
        self.func = lambda x: x+1
        self.funcText = "f of x equals x plus one"
        self.ZeroText = "f of zero equals zero plus one equals one"

        self.intro = "Unfortunately, that's incorrect."
        self.isCorrect = False
        self.y_cross = 1
        self.y_cross_text = "one"
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,1,3],
                               x_labels=[-2,2], y_labels=[-3,1,3])
        
        super().construct()

class Func_1_3_P_2_3_d(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x+1"
        self.funcZero = "f(0)=0+1=1"
        self.func = lambda x: x+1
        self.funcText = "f of x equals x plus one"
        self.ZeroText = "f of zero equals zero plus one equals one"

        self.intro = "Unfortunately, that's incorrect."
        self.isCorrect = False
        self.y_cross = 1
        self.y_cross_text = "one"
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,1,3],
                               x_labels=[-2,2], y_labels=[-3,1,3])
        
        super().construct()

#####################################
#####################################
TASK_Func_1_3_P_2_4_q = SophiaTaskDefinition(
    answerOptions = ["$0$", "$1$", "$-1$", "$2$"],
    correctAnswerIndex = 3,
    questionText = "Where does the function intersect the $y$-axis?"   
)

class Func_1_3_P_2_4_q(yCrossingQuestionScene):
    
    def construct(self):

        self.funcTex = "f(x)=x^2+2"
        self.func = lambda x: x**2+2
        self.funcText = "f of x equals x squared plus two"
        self.intro = "Let's continue with intersections."
        super().construct()

class Func_1_3_P_2_4_a(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^2+2"
        self.funcZero = "f(0)=0^2+2=2"
        self.func = lambda x: x**2+2
        self.funcText = "f of x equals x squared plus two"
        self.ZeroText = "f of zero equals zero squared plus two equals two"

        self.intro = "Unfortunately, that's not correct."
        self.isCorrect = False
        self.y_cross = 2
        self.y_cross_text = "two"
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,2,3],
                               x_labels=[-2,2], y_labels=[-3,2,3])
        
        super().construct()

class Func_1_3_P_2_4_b(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^2+2"
        self.funcZero = "f(0)=0^2+2=2"
        self.func = lambda x: x**2+2
        self.funcText = "f of x equals x squared plus two"
        self.ZeroText = "f of zero equals zero squared plus two equals two"

        self.intro = "Unfortunately, that's not correct."
        self.isCorrect = False
        self.y_cross = 2
        self.y_cross_text = "two"
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,2,3],
                               x_labels=[-2,2], y_labels=[-3,2,3])
        
        super().construct()

class Func_1_3_P_2_4_c(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^2+2"
        self.funcZero = "f(0)=0^2+2=2"
        self.func = lambda x: x**2+2
        self.funcText = "f of x equals x squared plus two"
        self.ZeroText = "f of zero equals zero squared plus two equals two"

        self.intro = "Unfortunately, that's not correct."
        self.isCorrect = False
        self.y_cross = 2
        self.y_cross_text = "two"
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,2,3],
                               x_labels=[-2,2], y_labels=[-3,2,3])
        
        super().construct()

class Func_1_3_P_2_4_d(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^2+2"
        self.funcZero = "f(0)=0^2+2=2"
        self.func = lambda x: x**2+2
        self.funcText = "f of x equals x squared plus two"
        self.ZeroText = "f of zero equals zero squared plus two equals two"

        self.intro = "Very good, that's correct."
        self.isCorrect = True
        self.y_cross = 2
        self.y_cross_text = "two"
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,2,3],
                               x_labels=[-2,2], y_labels=[-3,2,3])
        
        super().construct()


#####################################
#####################################
TASK_Func_1_3_P_2_5_q = SophiaTaskDefinition(
    answerOptions = ["$0$", "$1$", "$-2$", "$3$"],
    correctAnswerIndex = 2,
    questionText = "Where does the function intersect the $y$-axis?"   
)

class Func_1_3_P_2_5_q(yCrossingQuestionScene):
    
    def construct(self):

        self.funcTex = "f(x)=x^3+x^2-2"
        self.func = lambda x: x**3 + x**2 - 2
        self.funcText = "f of x equals x cubed plus x squared minus two"
        self.intro = "Let's move on to more complex intersections."
        super().construct()

class Func_1_3_P_2_5_a(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^3+x^2-2"
        self.funcZero = "f(0)=0^3+0^2-2=-2"
        self.func = lambda x: x**3 + x**2 - 2
        self.funcText = "f of x equals x cubed plus x squared minus two"
        self.ZeroText = "f of zero equals zero cubed plus zero squared minus two equals minus two"

        self.intro = "Unfortunately, that's not correct."
        self.isCorrect = False
        self.y_cross = -2
        self.y_cross_text = "minus two"
        self.cords = self.add_cords([-2, 2, 1], [-10, 10, 2], x_ticks=[-2,2], y_ticks=[-6,-2,2,6],
                               x_labels=[-2,2], y_labels=[-6,-2,2,6])
        
        super().construct()

class Func_1_3_P_2_5_b(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^3+x^2-2"
        self.funcZero = "f(0)=0^3+0^2-2=-2"
        self.func = lambda x: x**3 + x**2 - 2
        self.funcText = "f of x equals x cubed plus x squared minus two"
        self.ZeroText = "f of zero equals zero cubed plus zero squared minus two equals minus two"

        self.intro = "Unfortunately, that's not correct."
        self.isCorrect = False
        self.y_cross = -2
        self.y_cross_text = "minus two"
        self.cords = self.add_cords([-2, 2, 1], [-10, 10, 2], x_ticks=[-2,2], y_ticks=[-6,-2,2,6],
                               x_labels=[-2,2], y_labels=[-6,-2,2,6])
        
        super().construct()

class Func_1_3_P_2_5_c(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^3+x^2-2"
        self.funcZero = "f(0)=0^3+0^2-2=-2"
        self.func = lambda x: x**3 + x**2 - 2
        self.funcText = "f of x equals x cubed plus x squared minus two"
        self.ZeroText = "f of zero equals zero cubed plus zero squared minus two equals minus two"

        self.intro = "That's correct, excellent!"
        self.isCorrect = True
        self.y_cross = -2
        self.y_cross_text = "minus two"
        self.cords = self.add_cords([-2, 2, 1], [-10, 10, 2], x_ticks=[-2,2], y_ticks=[-6,-2,2,6],
                               x_labels=[-2,2], y_labels=[-6,-2,2,6])
        
        super().construct()

class Func_1_3_P_2_5_d(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^3+x^2-2"
        self.funcZero = "f(0)=0^3+0^2-2=-2"
        self.func = lambda x: x**3 + x**2 - 2
        self.funcText = "f of x equals x cubed plus x squared minus two"
        self.ZeroText = "f of zero equals zero cubed plus zero squared minus two equals minus two"

        self.intro = "Unfortunately, that's not correct."
        self.isCorrect = False
        self.y_cross = -2
        self.y_cross_text = "minus two"
        self.cords = self.add_cords([-2, 2, 1], [-10, 10, 2], x_ticks=[-2,2], y_ticks=[-6,-2,2,6],
                               x_labels=[-2,2], y_labels=[-6,-2,2,6])
        
        super().construct()

#####################################
#####################################
TASK_Func_1_3_P_2_6_q = SophiaTaskDefinition(
    answerOptions = ["$-1$", "$1$", "$0$", "$2$"],
    correctAnswerIndex = 0,
    questionText = "Where does the function intersect the $y$-axis?"   
)

class Func_1_3_P_2_6_q(yCrossingQuestionScene):
    
    def construct(self):

        self.funcTex = "f(x)=x^4-1"
        self.func = lambda x: x**4 - 1
        self.funcText = "f of x equals x to the power of four minus one"
        self.intro = "Let's consider a more challenging function."
        super().construct()

class Func_1_3_P_2_6_a(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^4-1"
        self.funcZero = "f(0)=0^4-1=-1"
        self.func = lambda x: x**4 - 1
        self.funcText = "f of x equals x to the power of four minus one"
        self.ZeroText = "f of zero equals zero to the power of four minus one equals minus one"

        self.intro = "Absolutely correct, well done!"
        self.isCorrect = True
        self.y_cross = -1
        self.y_cross_text = "minus one"
        self.cords = self.add_cords([-2, 2, 1], [-16, 16,4], x_ticks=[-2,2], y_ticks=[-12,-4,4,12],
                               x_labels=[-2,2], y_labels=[-12,-4,4,12])
        
        super().construct()

class Func_1_3_P_2_6_b(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^4-1"
        self.funcZero = "f(0)=0^4-1=-1"
        self.func = lambda x: x**4 - 1
        self.funcText = "f of x equals x to the power of four minus one"
        self.ZeroText = "f of zero equals zero to the power of four minus one equals minus one"

        self.intro = "Unfortunately, that's not correct."
        self.isCorrect = False
        self.y_cross = -1
        self.y_cross_text = "minus one"
        self.cords = self.add_cords([-2, 2, 1], [-16, 16,4], x_ticks=[-2,2], y_ticks=[-12,-4,4,12],
                               x_labels=[-2,2], y_labels=[-12,-4,4,12])
        
        super().construct()

class Func_1_3_P_2_6_c(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^4-1"
        self.funcZero = "f(0)=0^4-1=-1"
        self.func = lambda x: x**4 - 1
        self.funcText = "f of x equals x to the power of four minus one"
        self.ZeroText = "f of zero equals zero to the power of four minus one equals minus one"

        self.intro = "Unfortunately, that's not correct."
        self.isCorrect = False
        self.y_cross = -1
        self.y_cross_text = "minus one"
        self.cords = self.add_cords([-2, 2, 1], [-16, 16,4], x_ticks=[-2,2], y_ticks=[-12,-4,4,12],
                               x_labels=[-2,2], y_labels=[-12,-4,4,12])
        
        super().construct()

class Func_1_3_P_2_6_d(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^4-1"
        self.funcZero = "f(0)=0^4-1=-1"
        self.func = lambda x: x**4 - 1
        self.funcText = "f of x equals x to the power of four minus one"
        self.ZeroText = "f of zero equals zero to the power of four minus one equals minus one"

        self.intro = "Unfortunately, that's not correct."
        self.isCorrect = False
        self.y_cross = -1
        self.y_cross_text = "minus one"
        self.cords = self.add_cords([-2, 2, 1], [-16, 16,4], x_ticks=[-2,2], y_ticks=[-12,-4,4,12],
                               x_labels=[-2,2], y_labels=[-12,-4,4,12])
        
        super().construct()

#####################################
#####################################
TASK_Func_1_3_P_2_7_q = SophiaTaskDefinition(
    answerOptions = ["$-1$", "$1$", "$2$", "$3$"],
    correctAnswerIndex = 1,
    questionText = "Where does the function intersect the $y$-axis?"   
)

class Func_1_3_P_2_7_q(yCrossingQuestionScene):
    
    def construct(self):

        self.funcTex = "f(x)=x^2+2x+1"
        self.func = lambda x: x**2 + 2*x + 1
        self.funcText = "f of x equals x squared plus two x plus one"
        self.intro = "Here's another complex function."
        super().construct()

class Func_1_3_P_2_7_a(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^2+2x+1"
        self.funcZero = "f(0)=0^2+2*0+1=1"
        self.func = lambda x: x**2 + 2*x + 1
        self.funcText = "f of x equals x squared plus two x plus one"
        self.ZeroText = "f of zero equals zero squared plus two times zero plus one equals one"

        self.intro = "Unfortunately, that's not correct."
        self.isCorrect = False
        self.y_cross = 1
        self.y_cross_text = "one"
        self.cords = self.add_cords([-2, 2, 1], [-4, 8, 2], x_ticks=[-2,2], y_ticks=[-2,2,6],
                               x_labels=[-2,2], y_labels=[-2,2,6])
        
        super().construct()

class Func_1_3_P_2_7_b(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^2+2x+1"
        self.funcZero = "f(0)=0^2+2*0+1=1"
        self.func = lambda x: x**2 + 2*x + 1
        self.funcText = "f of x equals x squared plus two x plus one"
        self.ZeroText = "f of zero equals zero squared plus two times zero plus one equals one"

        self.intro = "Exactly, that's correct."
        self.isCorrect = True
        self.y_cross = 1
        self.y_cross_text = "one"
        self.cords = self.add_cords([-2, 2, 1], [-4, 8, 2], x_ticks=[-2,2], y_ticks=[-2,2,6],
                               x_labels=[-2,2], y_labels=[-2,2,6])
        
        super().construct()

class Func_1_3_P_2_7_c(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^2+2x+1"
        self.funcZero = "f(0)=0^2+2*0+1=1"
        self.func = lambda x: x**2 + 2*x + 1
        self.funcText = "f of x equals x squared plus two x plus one"
        self.ZeroText = "f of zero equals zero squared plus two times zero plus one equals one"

        self.intro = "Unfortunately, that's not correct."
        self.isCorrect = False
        self.y_cross = 1
        self.y_cross_text = "one"
        self.cords = self.add_cords([-2, 2, 1], [-4, 8, 2], x_ticks=[-2,2], y_ticks=[-2,2,6],
                               x_labels=[-2,2], y_labels=[-2,2,6])
        
        super().construct()

class Func_1_3_P_2_7_d(yCrossingAnswerScene):

    def construct(self):

        self.funcTex = "f(x)=x^2+2x+1"
        self.funcZero = "f(0)=0^2+2*0+1=1"
        self.func = lambda x: x**2 + 2*x + 1
        self.funcText = "f of x equals x squared plus two x plus one"
        self.ZeroText = "f of zero equals zero squared plus two times zero plus one equals one"

        self.intro = "Unfortunately, that's not correct."
        self.isCorrect = False
        self.y_cross = 1
        self.y_cross_text = "one"
        self.cords = self.add_cords([-2, 2, 1], [-4, 8, 2], x_ticks=[-2,2], y_ticks=[-2,2,6],
                               x_labels=[-2,2], y_labels=[-2,2,6])
        
        super().construct()



PROTOTYPES = [
    PagePrototypeVideo.from_scene(Func_1_3_I_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_I_1_q, Func_1_3_I_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_3_I_1_a),
    PagePrototypeVideo.from_scene(Func_1_3_I_1_b),
    PagePrototypeVideo.from_scene(Func_1_3_I_1_c),
    PagePrototypeVideo.from_scene(Func_1_3_I_1_d),
    PagePrototypeVideo.from_scene(Func_1_3_I_2),
    PagePrototypeVideo.from_scene(Func_1_3_I_3),
    PagePrototypeVideo.from_scene(Func_1_3_I_4_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_I_4_q, Func_1_3_I_4_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_3_I_4_a),
    PagePrototypeVideo.from_scene(Func_1_3_I_4_b),
    PagePrototypeVideo.from_scene(Func_1_3_I_4_c),
    PagePrototypeVideo.from_scene(Func_1_3_I_4_d),
    PagePrototypeVideo.from_scene(Func_1_3_I_5),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_1_1_q, Func_1_3_P_1_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_1_a),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_1_b),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_1_c),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_1_d),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_1_2_q, Func_1_3_P_1_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_2_a),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_2_b),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_2_c),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_2_d),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_3_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_1_3_q, Func_1_3_P_1_3_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_3_a),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_3_b),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_3_c),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_3_d),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_4_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_1_4_q, Func_1_3_P_1_4_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_4_a),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_4_b),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_4_c),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_4_d),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_5_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_1_5_q, Func_1_3_P_1_5_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_5_a),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_5_b),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_5_c),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_5_d),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_6_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_1_6_q, Func_1_3_P_1_6_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_6_a),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_6_b),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_6_c),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_6_d),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_7_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_1_7_q, Func_1_3_P_1_7_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_7_a),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_7_b),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_7_c),
    PagePrototypeVideo.from_scene(Func_1_3_P_1_7_d),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_2_1_q, Func_1_3_P_2_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_1_a),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_1_b),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_1_c),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_1_d),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_2_2_q, Func_1_3_P_2_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_2_a),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_2_b),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_2_c),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_2_d),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_3_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_2_3_q, Func_1_3_P_2_3_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_3_a),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_3_b),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_3_c),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_3_d),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_4_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_2_4_q, Func_1_3_P_2_4_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_4_a),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_4_b),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_4_c),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_4_d),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_5_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_2_5_q, Func_1_3_P_2_5_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_5_a),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_5_b),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_5_c),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_5_d),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_6_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_2_6_q, Func_1_3_P_2_6_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_6_a),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_6_b),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_6_c),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_6_d),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_7_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_2_7_q, Func_1_3_P_2_7_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_7_a),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_7_b),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_7_c),
    PagePrototypeVideo.from_scene(Func_1_3_P_2_7_d),
]