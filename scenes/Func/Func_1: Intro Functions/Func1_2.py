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


# Function to create piecewise linear function based on given points
def create_piecewise_linear(points):
    def piecewise_linear(x):
        # Sort the points based on x-coordinate
        sorted_points = sorted(points, key=lambda p: p[0])

        # Find the closest two points for interpolation
        left_point, right_point = None, None
        for point in sorted_points:
            if x < point[0]:
                right_point = point
                break
            left_point = point

        # Extrapolate if x is outside the range of points
        if right_point is None:
            return sorted_points[-1][1]
        if left_point is None:
            return sorted_points[0][1]

        # Linear interpolation
        x1, y1 = left_point
        x2, y2 = right_point
        slope = (y2 - y1) / (x2 - x1)
        interpolated_value = y1 + slope * (x - x1)

        return interpolated_value

    return piecewise_linear


# Class for creating the animation scene
# Topic: Repetition - What is a Term?
class Func_1_2_I_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["Describing relationships between variables", "using terms"], "Functions do that too!"])
        self.add(note)

        apple = ImageMobject(assets_folder / "img" / "apple.png").scale(0.4).shift(UP*2+LEFT*1.2)

        # Add title to the scene
        self.add_title("Terms")

        term1 = MathTex("2x+3", color=c1t).shift(UP*1.5)
        term2 = MathTex("x^2-2", color=c1t).next_to(term1, DOWN)
        term3 = MathTex("x+3=7", color=c1t).next_to(term2, DOWN)
        left, right = term3.get_left()[0], term3.get_right()[0]
        top, bottom = term3.get_top()[1], term3.get_bottom()[1]
        strikeA = Line([left, bottom, 0], [right, top, 0], color=RED, stroke_width=5)
        strikeB = Line([left, top, 0], [right, bottom, 0], color=RED, stroke_width=5)
        appleCost = Tex(": $2$ Euro/Piece", color=c1t, font_size=fs2).next_to(apple, RIGHT).shift(DOWN*0.3+LEFT*0.4)

        explainers = format_text_group(["$x$: Number of apples", ["$\\rightarrow$ The term $2x$", "describes total cost"]], font_size=fs3)

        # Action Sequence
        with self.voiceover(
                text="""
                <prosody rate="110%">
                Quick reminder: Do you remember what a term is?
                
                A term is an expression that consists of numbers, variables, and operators.
                For example, <bookmark mark="term1"/> two times x plus three is a term,
                <bookmark mark="term2"/> or x squared minus two. <bookmark mark="term3"/>
                However, the expression x plus three equals seven is not a term, because it contains an equals sign.
                
                <bookmark mark="TermsUseful"/>
                Terms are useful because they can be used to describe relationships.
                <bookmark mark="unwriteTerms"/>
                For instance, if we buy <bookmark mark="apple"/> x apples for two euros each, we can
                <bookmark mark="appleCost"/> calculate the total cost using the term two times x.
                This assigns a cost to each value of x, which represents the quantity of purchased apples.
                We calculate this cost using two times x.
                <bookmark mark="funcs"/>
                
                Functions work in a similar way.
                Just like terms, functions assign a value of y to each value of x.
                </prosody>
                """
        ) as tracker:

            self.wait_until_bookmark("term1")
            self.play(Write(term1), run_time=1)

            self.wait_until_bookmark("term2")
            self.play(Write(term2), run_time=1)

            self.wait_until_bookmark("term3")
            self.play(Write(term3), run_time=1)
            self.wait(0.5)
            self.play(Write(strikeA), Write(strikeB), run_time=1)

            self.wait_until_bookmark("TermsUseful")
            note.change_colors([0])

            self.wait_until_bookmark("unwriteTerms")
            self.play(Unwrite(term1), Unwrite(term2), Unwrite(term3), Unwrite(strikeA), Unwrite(strikeB), run_time=1)
            
            self.wait_until_bookmark("apple")
            self.play(FadeIn(apple), run_time=1)
            self.play(Write(appleCost), run_time=1)

            self.wait_until_bookmark("appleCost")
            self.play(FadeIn(explainers), run_time=1)

            self.wait_until_bookmark("funcs")
            note.change_colors([0, 1])

        # Wait for 4 seconds at the end of animation
        self.wait(4)

# Class for creating the animation scene
# Topic: How do we get from a Term to a Function?
class Func_1_2_I_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=["Start with a term", "Substitute values from a set", "$\\rightarrow$ Get a function from a term"])
        self.add(note)

        # Add title to the scene
        self.add_title("From Term to Function")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                               x_labels=[-3, 0, 3], y_labels=[-6, 0, 6])
        plane = cords[0]
        redx = plane.x_axis.copy().set_color(RED).set_stroke(width=4)
        self.add(cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, blinking=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True

        self.add(cursor)

        func = MathTex("2x-2", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        func2 = MathTex("f(x)=2x-2", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        def f(x):
            return 2*x-2
        f_plotted = plane.plot(f, color=c3)

        # Action Sequence
        with self.voiceover(
                text="""
                <prosody rate="110%">
                So, now we're learning how to go from a term to a function.
                 <bookmark mark="term"/>
                Consider the term two times x minus two.
                
                First, we choose a set on which we want to examine the function.
                This set is called the domain. <bookmark mark="domain"/>
                For example, here we choose all values that lie <bookmark mark="xaxis"/> on the x-axis. So, all values between minus three and three.
                
                <bookmark mark="plot"/>
                Now we substitute each value of x into the term to get a value for y.
                We then plot this value on a coordinate plane.
                
                <bookmark mark="func"/>
                Connecting the points, we obtain a representation of a function, because the line assigns a point
                on the x-axis to a point on the y-axis.

                To get the y-value corresponding to an x-value, we can either substitute the x-value <bookmark mark="xTerm"/> into the term,
                <bookmark mark="xFunc"/> or we can locate the x-value on the x-axis and then read the y-value on the y-axis.
                
                In this case, since the term describes a function, we call it a function term.
                <bookmark mark="termToFunc"/>
                We also write it as f of x equals two times x minus two, so we put f of x equals in front of the term.
                </prosody>
                """
        ) as tracker:

            self.wait_until_bookmark("term")
            note.change_colors([0])
            self.play(Write(func), run_time=1)

            self.wait_until_bookmark("xaxis")
            self.play(Write(redx), run_time=3)

            self.wait_until_bookmark("plot")
            note.change_colors([0, 1])
            cursor.blinking = False
            x, y, _ = cursor.get_center()
            self.play(CursorMoveResize(cursor, x, y, 0.15, 0.15), run_time=0.5)
            for x in [-3, -2, -1, 0, 1, 2, 3]:
                self.play(cursor.animate.move_to(plane.c2p(x, f(x))), run_time=0.5)
                self.add(cursor.copy().set_opacity(0.5).set_color(c3))
                self.wait(0.5)
            self.play(CursorMoveResize(cursor, xo, yo, 0.2, 0.2), run_time=0.5)

            self.wait_until_bookmark("func")
            note.change_colors([1, 2])
            self.play(Write(f_plotted), run_time=3)

            self.wait_until_bookmark("xTerm")
            self.play(func.animate.scale(2), run_time=1)
            self.play(func.animate.scale(0.5), run_time=1)

            self.wait_until_bookmark("xFunc")
            xx, xy, _ = plane.c2p(2, 0)
            yx, yy, _ = plane.c2p(2, f(2))
            l = Line([xx, xy, 0], [yx, yy, 0], color=RED)
            self.play(CursorMoveResize(cursor, xx, xy, 0.2, 0.2), run_time=0.5)
            self.play(CursorMoveResize(cursor, yx, yy, 0.2, 0.2), run_time=0.5)
            self.play(Write(l), run_time=0.5)
            self.play(CursorMoveResize(cursor, xo, yo, 0.2, 0.2), run_time=0.5)

            self.wait_until_bookmark("termToFunc")
            self.play(TransformMatchingTex(func, func2), run_time=2)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)



# Class for creating the animation scene
# Topic: How do we get from a Term to a Function?
class Func_1_2_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):

        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["Function Term", "$\\rightarrow$ Term describes the function"], ["Function Graph", "$\\rightarrow$ Graph describes the function"]])
        self.add(note)

        # Add title to the scene
        self.add_title("Functions: Concepts")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                               x_labels=[-3, 0, 3], y_labels=[-6, 0, 6])
        plane = cords[0]
        redx = plane.x_axis.copy().set_color(RED).set_stroke(width=4)
        self.add(cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, blinking=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True

        self.add(cursor)

        func = MathTex("f(x)=x^2-3", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        def f(x):
            return x**2-3
        f_plotted = plane.plot(f, color=c3)

        # Action Sequence
        with self.voiceover(
                text="""
                <prosody rate="110%">
                Now, let's talk about some important concepts related to functions.
                 <bookmark mark="term"/>
                Let's start with the concept of the function term.
                -
                As we already know, the term of a function describes how we go from an x-value to a y-value.
                -
                That means, we plug each value of x into the term to obtain the corresponding y-value.
                
                The function term is typically written as "f of x equals", followed by the term. For example, here it is written as f of x equals x squared minus three.
                
                <bookmark mark="graph"/>
                
                The next concept is that of the graph of a function.
                
                The graph of a function describes how the function looks.
                To obtain a function's graph, we simply plot some points that we can calculate using the function term onto a coordinate plane.
                And because we don't have the time to plot an infinite number of points, we typically choose just a few points
                Then, we connect the points to obtain the graph. Sometimes, we need to draw many points to get an accurate graph, other times only a few points are enough.
                </prosody>
                """
        ) as tracker:
            
            self.wait_until_bookmark("term")
            note.change_colors([0])
            self.wait(1)
            self.play(Write(func), run_time=2)

            self.wait_until_bookmark("graph")
            note.change_colors([0,1])
            self.wait(1)
            self.play(Write(f_plotted), run_time=4)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


# Class for creating the animation scene
# Topic: How do we get from a Term to a Function?
class Func_1_2_I_4(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):

        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["Domain", "$\\rightarrow$ Set of values possible for x"], ["Range", "$\\rightarrow$ Set of values possible for y"]])
        self.add(note)

        # Add title to the scene
        self.add_title("Function - Concepts")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                               x_labels=[-3, 0, 3], y_labels=[-6, 0, 6])
        plane = cords[0]
        redx = plane.x_axis.copy().set_color(RED).set_stroke(width=4)
        y_min, y_max = plane.y_axis.n2p(-3)[1], plane.y_axis.n2p(6)[1]
        redy = Line([0, y_min, 0], [0, y_max, 0]).set_color(RED).set_stroke(width=4)
        self.add(cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, blinking=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True

        self.add(cursor)

        func = MathTex("f(x)=x^2-3", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        def f(x):
            return x**2-3
        f_plotted = plane.plot(f, color=c3)
        self.add(func, f_plotted)

        # Action Sequence
        with self.voiceover(
                text="""
                <prosody rate="110%">
                Two more important concepts related to functions: The domain and the range.
                
                <bookmark mark="def"/>
                The domain is the set of all values that we can substitute for x. - So, it's the set of all x-values that we can use for the function.
                <bookmark mark="showDef"/>
                -
                In this case, the domain is, for example, the interval which includes all values between minus three and three.
                <bookmark mark="val"/>
                
                The next concept is that of the range.
                -
                The range is the set of all values that we can obtain for y.
                <bookmark mark="showVal"/> 
                In this case, the range is, for example, the interval that includes all values between minus three and six.
                -
                Because we get the lowest value at x equals zero, which is minus three.
                And we get the highest value at x equals three, which is six. So, the range is the interval between minus three and six.
                </prosody>
                """
        ) as tracker:
            
            self.wait_until_bookmark("def")
            note.change_colors([0])
            
            self.wait_until_bookmark("showDef")
            self.play(Write(redx), run_time=2)
            
            self.wait_until_bookmark("val")
            note.change_colors([0,1])

            self.wait_until_bookmark("showVal")
            self.play(Write(redy), run_time=2)


        # Wait for 4 seconds at the end of animation
        self.wait(4)


############################################
############################################
##### Practice Part ########################
############################################
############################################


# Topic: How do we get from a Term to a function?
class FuncTermQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["Consider the term", f"${self.term}$"], ["Which graph describes","the corresponding function?"]])
        self.add(note)

        # Add title to the scene
        self.add_title("Term & Function")

        # Create the coordinate system
        plane = self.cords[0]
        self.add(self.cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, blinking=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex(self.term, color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        fs_plotted = [plane.plot(self.fs[0], color=c3), plane.plot(self.fs[1], color=c4), plane.plot(self.fs[2], color=c5)]
        self.add(func)

        # Action Sequence
        with self.voiceover(
                text=f"""
                Ok, so we're starting now with a function term and we want to find the corresponding graph.
                <bookmark mark="term"/>
                The term we want to find the graph for is {self.termInWords}.
                Now the question for you is this: <bookmark mark="findGraph"/>
                Which of the following graphs describes the function of the given term?
                <bookmark mark="blue"/> Is it the blue graph?
                <bookmark mark="orange"/> Or is it the orange graph?
                <bookmark mark="lila"/> Or is it the purple graph?
                -
                Remember how we can find the graph of a given function and tell me, which of the graphs belongs to the term!
                """
        ) as tracker:

            self.wait_until_bookmark("term")
            note.change_colors([0])

            self.wait_until_bookmark("findGraph")
            note.change_colors([0, 1])

            self.wait_until_bookmark("blue")
            self.play(Write(fs_plotted[0]), run_time=2)

            self.wait_until_bookmark("orange")
            self.play(Write(fs_plotted[1]), run_time=2)

            self.wait_until_bookmark("lila")
            self.play(Write(fs_plotted[2]), run_time=2)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


# Topic: How do we get from a Term to a function?
class FuncTermAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["Substitute values from the domain", "into the function term"],
                              ["Plot values in a coordinate system","and connect the points"]])
        self.add(note)

        # Add title to the scene
        self.add_title("Term & Function")

        # Create the coordinate system
        plane = self.cords[0]
        self.add(self.cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, blinking=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex(self.term, color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        fs_plotted = [plane.plot(self.fs[0], color=c3), plane.plot(self.fs[1], color=c4), plane.plot(self.fs[2], color=c5)]
        self.add(func)


        plugInTexts = ""
        for i in range(len(self.vals)):
            if i < 2:
                plugInTexts += f"""<bookmark mark="val{i+1}"/> The {nums_ordinal[i+1]} value we plug in is {get_num(self.vals[i])}, and the value of the function at this point is {get_num(self.fs[self.idx_correct](self.vals[i]))} -"""
            elif i < len(self.vals) - 1:
                plugInTexts += f"""<bookmark mark="val{i+1}"/> For the x-value {get_num(self.vals[i])}, we obtain the y-value {get_num(self.fs[self.idx_correct](self.vals[i]))}, """
            else:
                plugInTexts += f"""<bookmark mark="val{i+1}"/> and for the x-value {get_num(self.vals[i])}, we finally get the y-value {get_num(self.fs[self.idx_correct](self.vals[i]))}."""

        introText = ""
        if self.idx_selected == self.idx_correct:
            introText = "Great, that's correct!"
        else:
            introText = "Unfortunately, that's incorrect."

        # Action Sequence
        with self.voiceover(
                text=f"""
                {introText}
                We want to determine the function graph for the term {self.termInWords}.
                We proceed as follows:
                <bookmark mark="plugIn"/>
                We consider points from our domain one by one.
                Then, we plug these points into the term and obtain the corresponding function values.
                And then, we <bookmark mark="addPoints"/> plot these points in a coordinate system.
                So, let's turn to our example:
                {plugInTexts}
                
                Now, we connect the points we've plotted
                <bookmark mark="connect"/>
                and thus obtain the function graph.
                """
        ) as tracker:

            self.wait_until_bookmark("plugIn")
            note.change_colors([0])

            self.wait_until_bookmark("addPoints")
            note.change_colors([1])

            cursor.blinking = False
            for i in range(len(self.vals)):
                self.wait_until_bookmark(f"val{i+1}")
                self.play(cursor.animate.move_to(plane.c2p(self.vals[i], self.fs[self.idx_correct](self.vals[i]))), run_time=1)
                self.add(cursor.copy().set_color(c3))

            self.wait_until_bookmark("connect")
            self.play(Write(fs_plotted[self.idx_correct]), run_time=2)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


############################################
############################################
##### Exercises ############################
############################################
############################################



TASK_Func_1_2_P_1_1_q = SophiaTaskDefinition(
    answerOptions = ["The blue graph", "The orange graph", "The purple graph"],
    correctAnswerIndex = 0,
    questionText = "Which of these graphs describes the corresponding function?"
)

class Func_1_2_P_1_1_q(FuncTermQuestionScene):

    def construct(self):

        self.term = "f(x)=x^2-3"
        self.termInWords = "f of x is equal to x squared minus three"
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                        x_labels=[-3, 0, 3], y_labels=[-6, 0, 6])
        def f1(x):
            return x**2-3
        def f2(x):
            return x**2
        def f3(x):
            return 3-x**2
        self.fs = [f1, f2, f3]
        self.idx_correct = 0

        super().construct()

class Func_1_2_P_1_1_a(FuncTermAnswerScene):

    def construct(self):
        self.term = "f(x)=x^2-3"
        self.termInWords = "f of x equals x squared minus three"
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                        x_labels=[-3, 0, 3], y_labels=[-6, 0, 6])
        def f1(x):
            return x**2-3
        def f2(x):
            return x**2
        def f3(x):
            return 3-x**2
        self.fs = [f1, f2, f3]
        self.idx_correct = 0
        self.idx_selected = 0
        self.vals = [-3,-2,-1,0,1,2,3]

        super().construct()

class Func_1_2_P_1_1_b(FuncTermAnswerScene):

    def construct(self):
        self.term = "f(x)=x^2-3"
        self.termInWords = "f of x is equal to x squared minus three"
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                        x_labels=[-3, 0, 3], y_labels=[-6, 0, 6])
        def f1(x):
            return x**2-3
        def f2(x):
            return x**2
        def f3(x):
            return 3-x**2
        self.fs = [f1, f2, f3]
        self.idx_correct = 0
        self.idx_selected = 1
        self.vals = [-3,-2,-1,0,1,2,3]

        super().construct()

class Func_1_2_P_1_1_c(FuncTermAnswerScene):

    def construct(self):
        self.term = "f(x)=x^2-3"
        self.termInWords = "f of x is equal to x squared minus three"
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                        x_labels=[-3, 0, 3], y_labels=[-6, 0, 6])
        def f1(x):
            return x**2-3
        def f2(x):
            return x**2
        def f3(x):
            return 3-x**2
        self.fs = [f1, f2, f3]
        self.idx_correct = 0
        self.idx_selected = 2
        self.vals = [-3,-2,-1,0,1,2,3]

        super().construct()


#################################################
#################################################


TASK_Func_1_2_P_1_2_q = SophiaTaskDefinition(
    answerOptions = ["The blue graph", "The orange graph", "The purple graph"],
    correctAnswerIndex = 1,
    questionText = "Which of these graphs describes the corresponding function?"
)
class Func_1_2_P_1_2_q(FuncTermQuestionScene):
    def construct(self):
        self.term = "f(x)=x^3"
        self.termInWords = "f of x is equal to x cubed"
        self.cords = self.add_cords([-3, 3, 1], [-27, 27, 9], x_ticks=[-3, 0, 3], y_ticks=[-27, 0, 27],
                        x_labels=[-3, 0, 3], y_labels=[-27, 0, 27])
        def f1(x):
            return x**2
        def f2(x):
            return x**3
        def f3(x):
            return x+3
        self.fs = [f1, f2, f3]
        self.idx_correct = 1
        super().construct()

class Func_1_2_P_1_2_a(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=x^3"
        self.termInWords = "f of x is equal to x cubed"
        self.cords = self.add_cords([-3, 3, 1], [-27, 27, 9], x_ticks=[-3, 0, 3], y_ticks=[-27, 0, 27],
                        x_labels=[-3, 0, 3], y_labels=[-27, 0, 27])
        def f1(x):
            return x**2
        def f2(x):
            return x**3
        def f3(x):
            return x+3
        self.fs = [f1, f2, f3]
        self.idx_correct = 1
        self.idx_selected = 0
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()

class Func_1_2_P_1_2_b(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=x^3"
        self.termInWords = "f of x is equal to x cubed"
        self.cords = self.add_cords([-3, 3, 1], [-27, 27, 9], x_ticks=[-3, 0, 3], y_ticks=[-27, 0, 27],
                        x_labels=[-3, 0, 3], y_labels=[-27, 0, 27])
        def f1(x):
            return x**2
        def f2(x):
            return x**3
        def f3(x):
            return x+3
        self.fs = [f1, f2, f3]
        self.idx_correct = 1
        self.idx_selected = 1
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()

class Func_1_2_P_1_2_c(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=x^3"
        self.termInWords = "f of x is equal to x cubed"
        self.cords = self.add_cords([-3, 3, 1], [-27, 27, 9], x_ticks=[-3, 0, 3], y_ticks=[-27, 0, 27],
                        x_labels=[-3, 0, 3], y_labels=[-27, 0, 27])
        def f1(x):
            return x**2
        def f2(x):
            return x**3
        def f3(x):
            return x+3
        self.fs = [f1, f2, f3]
        self.idx_correct = 1
        self.idx_selected = 2
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()

#################################################
#################################################

TASK_Func_1_2_P_1_3_q = SophiaTaskDefinition(
    answerOptions = ["The blue graph", "The orange graph", "The purple graph"],
    correctAnswerIndex = 0,
    questionText = "Which of these graphs describes the corresponding function?"
)

class Func_1_2_P_1_3_q(FuncTermQuestionScene):
    def construct(self):
        self.term = "f(x)=2x^2 + 1"
        self.termInWords = "f of x equals two times x squared plus one"
        self.cords = self.add_cords([-2, 2, 1], [-6, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 10],
                        x_labels=[-2, 0, 2], y_labels=[-6, 0, 10])
        def f1(x):
            return 2*x**2 + 1
        def f2(x):
            return x**2
        def f3(x):
            return 2*x + 1
        self.fs = [f1, f2, f3]
        self.idx_correct = 0
        super().construct()

class Func_1_2_P_1_3_a(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=2x^2 + 1"
        self.termInWords = "f of x is equal to two times x squared plus one"
        self.cords = self.add_cords([-2, 2, 1], [-6, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 10],
                        x_labels=[-2, 0, 2], y_labels=[-6, 0, 10])
        def f1(x):
            return 2*x**2 + 1
        def f2(x):
            return x**2
        def f3(x):
            return 2*x + 1
        self.fs = [f1, f2, f3]
        self.idx_correct = 0
        self.idx_selected = 0
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()

class Func_1_2_P_1_3_b(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=2x^2 + 1"
        self.termInWords = "f of x is equal to two times x squared plus one"
        self.cords = self.add_cords([-2, 2, 1], [-6, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 10],
                        x_labels=[-2, 0, 2], y_labels=[-6, 0, 10])
        def f1(x):
            return 2*x**2 + 1
        def f2(x):
            return x**2
        def f3(x):
            return 2*x + 1
        self.fs = [f1, f2, f3]
        self.idx_correct = 0
        self.idx_selected = 1
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()

class Func_1_2_P_1_3_c(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=2x^2 + 1"
        self.termInWords = "f of x is equal to two times x squared plus one"
        self.cords = self.add_cords([-2, 2, 1], [-6, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 10],
                        x_labels=[-2, 0, 2], y_labels=[-6, 0, 10])
        def f1(x):
            return 2*x**2 + 1
        def f2(x):
            return x**2
        def f3(x):
            return 2*x + 1
        self.fs = [f1, f2, f3]
        self.idx_correct = 0
        self.idx_selected = 2
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()

#################################################
#################################################

TASK_Func_1_2_P_1_4_q = SophiaTaskDefinition(
    answerOptions = ["The blue graph", "The orange graph", "The purple graph"],
    correctAnswerIndex = 2,
    questionText = "Which of these graphs describes the corresponding function?"
)

class Func_1_2_P_1_4_q(FuncTermQuestionScene):
    def construct(self):
        self.term = "f(x)=3x^2 - x"
        self.termInWords = "f of x is equal to three times x squared minus x"
        self.cords = self.add_cords([-2, 2, 1], [-6, 18, 3], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 6, 12, 18],
                        x_labels=[-2, 0, 2], y_labels=[-6, 0, 6, 12, 18])
        def f3(x):
            return 3*x**2 - x
        def f2(x):
            return x**2
        def f1(x):
            return x - 3
        self.fs = [f1, f2, f3]
        self.idx_correct = 2
        super().construct()

class Func_1_2_P_1_4_a(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=3x^2 - x"
        self.termInWords = "f of x is equal to three times x squared minus x"
        self.cords = self.add_cords([-2, 2, 1], [-6, 18, 3], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 6, 12, 18],
                        x_labels=[-2, 0, 2], y_labels=[-6, 0, 6, 12, 18])
        def f3(x):
            return 3*x**2 - x
        def f2(x):
            return x**2
        def f1(x):
            return x - 3
        self.fs = [f1, f2, f3]
        self.idx_correct = 2
        self.idx_selected = 0
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()

class Func_1_2_P_1_4_b(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=3x^2 - x"
        self.termInWords = "f of x is equal to three times x squared minus x"
        self.cords = self.add_cords([-2, 2, 1], [-6, 18, 3], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 6, 12, 18],
                        x_labels=[-2, 0, 2], y_labels=[-6, 0, 6, 12, 18])
        def f3(x):
            return 3*x**2 - x
        def f2(x):
            return x**2
        def f1(x):
            return x - 3
        self.fs = [f1, f2, f3]
        self.idx_correct = 2
        self.idx_selected = 1
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()

class Func_1_2_P_1_4_c(FuncTermAnswerScene):
    def construct(self):
        self.term = "f(x)=3x^2 - x"
        self.termInWords = "f of x is equal to three times x squared minus x"
        self.cords = self.add_cords([-2, 2, 1], [-6, 18, 3], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 6, 12, 18],
                        x_labels=[-2, 0, 2], y_labels=[-6, 0, 6, 12, 18])
        def f3(x):
            return 3*x**2 - x
        def f2(x):
            return x**2
        def f1(x):
            return x - 3
        self.fs = [f1, f2, f3]
        self.idx_correct = 2
        self.idx_selected = 2
        self.vals = [-3,-2,-1,0,1,2,3]
        super().construct()


#################################################
#################################################
# New Exercise Type
#################################################
#################################################


# This class presents a function and then asks what
# the corresponding domain and what the corresponding
# range is. It's in German for now.
class FuncDefinitionsQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):

        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["Consider the function", f"${self.funcTex}$"], "What is the domain in this example?", "What is the range?"])
        self.add(note)

        # Add title to the scene
        self.add_title("Domain & Range")

        # Create the coordinate system
        plane = self.cords[0]
        self.add(self.cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, blinking=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex(self.funcTex, color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        f_plotted = plane.plot(self.f, color=c3)
        self.add(func)

        # Action Sequence
        with self.voiceover(
            text=f"""
            <prosody rate="110%">
            Alright. We're now looking at the <bookmark mark="Func"/> function {self.funcSpoken}.
            Specifically, we're examining it on the given coordinate system here.
            Now, here's the question for you:
            In this example, what is the <bookmark mark="domain"/> domain of this function?
            And, what is the <bookmark mark="range"/> range?
            </prosody>
            """
        ) as tracker:

            self.wait_until_bookmark("Func")
            note.change_colors([0])
            self.play(Write(f_plotted), run_time=2)

            self.wait_until_bookmark("domain")
            note.change_colors([0, 1])

            self.wait_until_bookmark("range")
            note.change_colors([2])

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class FuncDefinitionsAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):

        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        def get_num(x):
            if x < 0:
                return "Minus " + nums[abs(x)]
            else:
                return nums[x]

        # Create a notepad with texts
        note = Notepad(texts=[["Domain: Input x-values", f"$\\rightarrow[{self.domain[0]},{self.domain[1]}]$"],
                              ["Range: Output y-values", f"$\\rightarrow[{self.range[0]},{self.range[1]}]$"]])
        self.add(note)

        # Add title to the scene
        title = "Incorrect!"
        if self.isTrue:
            title = "Correct!"
        self.add_title("Domain & Range")

        # Create the coordinate system
        plane = self.cords[0]
        self.add(self.cords)

        redx = plane.x_axis.copy().set_color(RED).set_stroke(width=4)
        y_min, y_max = plane.y_axis.n2p(self.range[0])[1], plane.y_axis.n2p(self.range[1])[1]
        redy = Line([0, y_min, 0], [0, y_max, 0]).set_color(RED).set_stroke(width=4)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, blinking=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex(self.funcTex, color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        f_plotted = plane.plot(self.f, color=c3)
        self.add(func, f_plotted)

        intro = "Unfortunately, that's incorrect!"
        if self.isTrue:
            intro = "Great job, that's correct!"
        # Action Sequence
        with self.voiceover(
                text=f"""
                <prosody rate="110%">
                {intro}
                
                The domain is the set of all x-values we plug into the function.
                -
                In this example, we plug in all values on the x-axis, so all values from <bookmark mark="domain"/> {get_num(self.domain[0])} to {get_num(self.domain[1])}.
                
                This means, that that is also our domain.
                
                The range on the other hand is the set of all y-values we get from the function.
                
                We can simply read off the values we get on the y-axis.
                
                From the graph, we can see that we get all values from <bookmark mark="range"/> {get_num(self.range[0])} to {get_num(self.range[1])},
                so that's our range as well.
                </prosody>
                """
        ) as tracker:

            self.wait_until_bookmark("domain")
            note.change_colors([0])
            self.play(Write(redx), run_time=2)

            self.wait_until_bookmark("range")
            note.change_colors([0, 1])
            self.play(Write(redy), run_time=2)

        # Wait for 4 seconds at the end of animation
        self.wait(4)



#################################################
#################################################

TASK_Func_1_2_P_2_1_q = SophiaTaskDefinition(
    answerOptions = ["$D=[-3,3],\,W=[-3,6]$", "$D=[-3,6],\,W=[-3,6]$", "$D=[-3,3],\,W=[-3,3]$", "$D=[-3,6],\,W=[-3,3]$"],
    correctAnswerIndex = 0,
    questionText = "What are the domain D and range W?"
)

class Func_1_2_P_2_1_q(FuncDefinitionsQuestionScene):

    def construct(self):

        # Setting up the specific function
        self.funcTex = "f(x)=x^2-3"
        self.f = lambda x: x**2-3
        self.funcSpoken = "f of x equals x squared minus three"
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                               x_labels=[-3, 0, 3], y_labels=[-6, 0, 6])

        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_1_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-3"
        self.f = lambda x: x**2-3
        self.funcSpoken = "f of x equals x squared minus three"
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                               x_labels=[-3, 0, 3], y_labels=[-6, 0, 6])
        self.isTrue = True
        self.domain = [-3,3]
        self.range = [-3,6]
        super().construct()

class Func_1_2_P_2_1_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-3"
        self.f = lambda x: x**2-3
        self.funcSpoken = "f of x equals x squared minus three"
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                               x_labels=[-3, 0, 3], y_labels=[-6, 0, 6])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,6]
        super().construct()

class Func_1_2_P_2_1_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-3"
        self.f = lambda x: x**2-3
        self.funcSpoken = "f of x equals x squared minus three"
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                               x_labels=[-3, 0, 3], y_labels=[-6, 0, 6])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,6]
        super().construct()

class Func_1_2_P_2_1_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-3"
        self.f = lambda x: x**2-3
        self.funcSpoken = "f of x equals x squared minus three"
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                               x_labels=[-3, 0, 3], y_labels=[-6, 0, 6])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,6]
        super().construct()



#################################################
#################################################

TASK_Func_1_2_P_2_2_q = SophiaTaskDefinition(
    answerOptions = ["$D=[-10,6],\,W=[-2,2]$", "$D=[-1,2],\,W=[1,3]$", "$D=[-2,2],\,W=[-6,10]$", "$D=[-2,2],\,W=[-10,6]$"],
    correctAnswerIndex = 2,
    questionText = "What are the domain D and range W?"
)

class Func_1_2_P_2_2_q(FuncDefinitionsQuestionScene):

    def construct(self):
        # Setting up the specific function
        self.funcTex = "f(x)=x^3+2"
        self.f = lambda x: x**3+2
        self.funcSpoken = "f of x equals x cubed plus two"
        self.cords = self.add_cords([-2, 2, 1], [-8, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-8, 0, 10],
                               x_labels=[-2, 0, 2], y_labels=[-8, 0, 10])
        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_2_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^3+2"
        self.f = lambda x: x**3+2
        self.funcSpoken = "f of x equals x cubed plus two"
        self.cords = self.add_cords([-2, 2, 1], [-8, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-8, 0, 10],
                               x_labels=[-2, 0, 2], y_labels=[-8, 0, 10])
        self.isTrue = False
        self.domain = [-1,9]
        self.range = [-2,2]
        super().construct()

class Func_1_2_P_2_2_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^3+2"
        self.f = lambda x: x**3+2
        self.funcSpoken = "f of x equals x cubed plus two"
        self.cords = self.add_cords([-2, 2, 1], [-8, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-8, 0, 10],
                               x_labels=[-2, 0, 2], y_labels=[-8, 0, 10])
        self.isTrue = False
        self.domain = [-1,9]
        self.range = [-2,2]
        super().construct()

class Func_1_2_P_2_2_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^3+2"
        self.f = lambda x: x**3+2
        self.funcSpoken = "f of x equals x cubed plus two"
        self.cords = self.add_cords([-2, 2, 1], [-8, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-8, 0, 10],
                               x_labels=[-2, 0, 2], y_labels=[-8, 0, 10])
        self.isTrue = True
        self.domain = [-1,9]
        self.range = [-2,2]
        super().construct()

class Func_1_2_P_2_2_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^3+2"
        self.f = lambda x: x**3+2
        self.funcSpoken = "f of x equals x cubed plus two"
        self.cords = self.add_cords([-2, 2, 1], [-8, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-8, 0, 10],
                               x_labels=[-2, 0, 2], y_labels=[-8, 0, 10])
        self.isTrue = False
        self.domain = [-1,9]
        self.range = [-2,2]
        super().construct()

#################################################
#################################################

TASK_Func_1_2_P_2_3_q = SophiaTaskDefinition(
    answerOptions = ["$D=[-3,3],\,W=[-4,4]$", "$D=[-2,2],\,W=[-4,4]$", "$D=[-4,4],\,W=[-2,2]$", "$D=[-4,4],\,W=[-3,3]$"],
    correctAnswerIndex = 1,
    questionText = "What are the domain D and range W?"
)

class Func_1_2_P_2_3_q(FuncDefinitionsQuestionScene):

    def construct(self):
        # Setting up the specific function
        self.funcTex = "f(x)=2x"
        self.f = lambda x: 2*x
        self.funcSpoken = "f of x equals two times x"
        self.cords = self.add_cords([-2, 2, 1], [-4, 4, 1], x_ticks=[-2, 0, 2], y_ticks=[-4, 0, 4],
                               x_labels=[-2, 0, 2], y_labels=[-4, 0, 4])
        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_3_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=2x"
        self.f = lambda x: 2*x
        self.funcSpoken = "f of x equals two times x"
        self.cords = self.add_cords([-2, 2, 1], [-4, 4, 1], x_ticks=[-2, 0, 2], y_ticks=[-4, 0, 4],
                               x_labels=[-2, 0, 2], y_labels=[-4, 0, 4])
        self.isTrue = True  # Set to True for the correct answer
        self.domain = [-2,2]
        self.range = [-4,4]
        super().construct()

class Func_1_2_P_2_3_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=2x"
        self.f = lambda x: 2*x
        self.funcSpoken = "f of x equals two times x"
        self.cords = self.add_cords([-2, 2, 1], [-4, 4, 1], x_ticks=[-2, 0, 2], y_ticks=[-4, 0, 4],
                               x_labels=[-2, 0, 2], y_labels=[-4, 0, 4])
        self.isTrue = False
        self.domain = [-2,2]
        self.range = [-4,4]
        super().construct()

class Func_1_2_P_2_3_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=2x"
        self.f = lambda x: 2*x
        self.funcSpoken = "f of x equals two times x"
        self.cords = self.add_cords([-2, 2, 1], [-4, 4, 1], x_ticks=[-2, 0, 2], y_ticks=[-4, 0, 4],
                               x_labels=[-2, 0, 2], y_labels=[-4, 0, 4])
        self.isTrue = False
        self.domain = [-2,2]
        self.range = [-4,4]
        super().construct()

class Func_1_2_P_2_3_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=2x"
        self.f = lambda x: 2*x
        self.funcSpoken = "f of x equals two times x"
        self.cords = self.add_cords([-2, 2, 1], [-4, 4, 1], x_ticks=[-2, 0, 2], y_ticks=[-4, 0, 4],
                               x_labels=[-2, 0, 2], y_labels=[-4, 0, 4])
        self.isTrue = False
        self.domain = [-2,2]
        self.range = [-4,4]
        super().construct()


#################################################
#################################################

TASK_Func_1_2_P_2_4_q = SophiaTaskDefinition(
    answerOptions = ["$D=[-3,3],\,W=[-17,7]$", "$D=[-17,7],\,W=[-3,3]$", "$D=[-3,3],\,W=[-3,3]$", "$D=[-17,17],\,W=[-3,3]$"],
    correctAnswerIndex = 0,
    questionText = "What are the domain D and range W?"
)

class Func_1_2_P_2_4_q(FuncDefinitionsQuestionScene):

    def construct(self):
        # Setting up the specific function
        self.funcTex = "f(x)=4x-5"
        self.f = lambda x: 4*x - 5
        self.funcSpoken = "f of x equals four times x minus five"
        self.cords = self.add_cords([-3, 3, 1], [-12, 12, 4], x_ticks=[-3, 0, 3], y_ticks=[-12, 0, 12],
                               x_labels=[-3, 0, 3], y_labels=[-12, 0, 12])
        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_4_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=4x-5"
        self.f = lambda x: 4*x - 5
        self.funcSpoken = "f of x equals four times x minus five"
        self.cords = self.add_cords([-3, 3, 1], [-12, 12, 4], x_ticks=[-3, 0, 3], y_ticks=[-12, 0, 12],
                               x_labels=[-3, 0, 3], y_labels=[-12, 0, 12])
        self.isTrue = True  # Set to True for the correct answer
        self.domain = [-3,3]
        self.range = [-17,7]
        super().construct()

class Func_1_2_P_2_4_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=4x-5"
        self.f = lambda x: 4*x - 5
        self.funcSpoken = "f of x equals four times x minus five"
        self.cords = self.add_cords([-3, 3, 1], [-12, 12, 4], x_ticks=[-3, 0, 3], y_ticks=[-12, 0, 12],
                               x_labels=[-3, 0, 3], y_labels=[-12, 0, 12])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,3]
        super().construct()

class Func_1_2_P_2_4_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=4x-5"
        self.f = lambda x: 4*x - 5
        self.funcSpoken = "f of x equals four times x minus five"
        self.cords = self.add_cords([-3, 3, 1], [-12, 12, 4], x_ticks=[-3, 0, 3], y_ticks=[-12, 0, 12],
                               x_labels=[-3, 0, 3], y_labels=[-12, 0, 12])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,3]
        super().construct()

class Func_1_2_P_2_4_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=4x-5"
        self.f = lambda x: 4*x - 5
        self.funcSpoken = "f of x equals four times x minus five"
        self.cords = self.add_cords([-3, 3, 1], [-12, 12, 4], x_ticks=[-3, 0, 3], y_ticks=[-12, 0, 12],
                               x_labels=[-3, 0, 3], y_labels=[-12, 0, 12])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,3]
        super().construct()


#################################################
#################################################

TASK_Func_1_2_P_2_5_q = SophiaTaskDefinition(
    answerOptions = ["$D=[-3,3],\,W=[-10,10]$", "$D=[-10,10],\,W=[-4,4]$", "$D=[-3,10],\,W=[4,10]$", "$D=[-3,3],\,W=[-4,10]$"],
    correctAnswerIndex = 3,
    questionText = "What are the domain D and range W?"   
)

class Func_1_2_P_2_5_q(FuncDefinitionsQuestionScene):

    def construct(self):
        # Setting up the specific function
        self.funcTex = "f(x)=x^2+x-2"
        self.f = lambda x: x**2 + x - 2
        self.funcSpoken = "f of x equals x squared plus x minus two"
        self.cords = self.add_cords([-3, 3, 1], [-6, 10, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 10],
                               x_labels=[-3, 0, 3], y_labels=[-6, 0, 10])
        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_5_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2+x-2"
        self.f = lambda x: x**2 + x - 2
        self.funcSpoken = "f of x equals x squared plus x minus two"
        self.cords = self.add_cords([-3, 3, 1], [-6, 10, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 10],
                               x_labels=[-3, 0, 3], y_labels=[-6, 0, 10])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-10,10]
        super().construct()

class Func_1_2_P_2_5_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2+x-2"
        self.f = lambda x: x**2 + x - 2
        self.funcSpoken = "f of x equals x squared plus x minus two"
        self.cords = self.add_cords([-3, 3, 1], [-6, 10, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 10],
                               x_labels=[-3, 0, 3], y_labels=[-6, 0, 10])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,10]
        super().construct()

class Func_1_2_P_2_5_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2+x-2"
        self.f = lambda x: x**2 + x - 2
        self.funcSpoken = "f of x equals x squared plus x minus two"
        self.cords = self.add_cords([-3, 3, 1], [-6, 10, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 10],
                               x_labels=[-3, 0, 3], y_labels=[-6, 0, 10])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,10]
        super().construct()

class Func_1_2_P_2_5_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2+x-2"
        self.f = lambda x: x**2 + x - 2
        self.funcSpoken = "f of x equals x squared plus x minus two"
        self.cords = self.add_cords([-3, 3, 1], [-6, 10, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 10],
                               x_labels=[-3, 0, 3], y_labels=[-6, 0, 10])
        self.isTrue = True  # Set to True for the correct answer
        self.domain = [-3,3]
        self.range = [-4,10]
        super().construct()


#################################################
#################################################

TASK_Func_1_2_P_2_6_q = SophiaTaskDefinition(
    answerOptions = ["$D=[-2,3],\,W=[9,17]$", "$D=[-2,2],\,W=[-1,12]$", "$D=[-10,10],\,W=[9,17]$", "$D=[0,10],\,W=[-3,3]$"],
    correctAnswerIndex = 0,
    questionText = "What are the domain D and range W?"
)

class Func_1_2_P_2_6_q(FuncDefinitionsQuestionScene):

    def construct(self):
        # Setting up the specific function
        self.funcTex = "f(x)=3x^2-2x+1"
        self.f = lambda x: 3*x**2 - 2*x + 1
        self.funcSpoken = "f of x equals three times x squared minus two times x plus one"
        self.cords = self.add_cords([-2, 2, 1], [-2, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-2, 0, 10],
                               x_labels=[-2, 0, 2], y_labels=[-2, 0, 10])
        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_6_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=3x^2-2x+1"
        self.f = lambda x: 3*x**2 - 2*x + 1
        self.funcSpoken = "f of x equals three times x squared minus two times x plus one"
        self.cords = self.add_cords([-2, 2, 1], [-2, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-2, 0, 10],
                               x_labels=[-2, 0, 2], y_labels=[-2, 0, 10])
        self.isTrue = True  # Set to True for the correct answer
        self.domain = [-2,3]
        self.range = [9,17]
        super().construct()

class Func_1_2_P_2_6_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=3x^2-2x+1"
        self.f = lambda x: 3*x**2 - 2*x + 1
        self.funcSpoken = "f of x equals three times x squared minus two times x plus one"
        self.cords = self.add_cords([-2, 2, 1], [-2, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-2, 0, 10],
                               x_labels=[-2, 0, 2], y_labels=[-2, 0, 10])
        self.isTrue = False
        self.domain = [-2,3]
        self.range = [-1,12]
        super().construct()

class Func_1_2_P_2_6_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=3x^2-2x+1"
        self.f = lambda x: 3*x**2 - 2*x + 1
        self.funcSpoken = "f of x equals three times x squared minus two times x plus one"
        self.cords = self.add_cords([-2, 2, 1], [-2, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-2, 0, 10],
                               x_labels=[-2, 0, 2], y_labels=[-2, 0, 10])
        self.isTrue = False
        self.domain = [-2,3]
        self.range = [9,17]
        super().construct()

class Func_1_2_P_2_6_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=3x^2-2x+1"
        self.f = lambda x: 3*x**2 - 2*x + 1
        self.funcSpoken = "f of x equals three times x squared minus two times x plus one"
        self.cords = self.add_cords([-2, 2, 1], [-2, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-2, 0, 10],
                               x_labels=[-2, 0, 2], y_labels=[-2, 0, 10])
        self.isTrue = False
        self.domain = [-2,3]
        self.range = [-3,3]
        super().construct()







# Add the scene to prototypes
PROTOTYPES = [
    PagePrototypeVideo.from_scene(Func_1_2_I_1),
    PagePrototypeVideo.from_scene(Func_1_2_I_2),
    PagePrototypeVideo.from_scene(Func_1_2_I_3),
    PagePrototypeVideo.from_scene(Func_1_2_I_4),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_1_1_q, Func_1_2_P_1_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_1_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_1_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_1_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_1_2_q, Func_1_2_P_1_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_2_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_2_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_2_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_3_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_1_3_q, Func_1_2_P_1_3_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_3_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_3_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_3_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_4_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_1_4_q, Func_1_2_P_1_4_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_4_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_4_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_1_4_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_2_1_q, Func_1_2_P_2_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_1_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_1_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_1_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_1_d),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_2_2_q, Func_1_2_P_2_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_2_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_2_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_2_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_2_d),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_3_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_2_3_q, Func_1_2_P_2_3_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_3_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_3_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_3_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_3_d),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_4_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_2_4_q, Func_1_2_P_2_4_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_4_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_4_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_4_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_4_d),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_5_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_2_5_q, Func_1_2_P_2_5_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_5_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_5_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_5_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_5_d),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_6_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_2_6_q, Func_1_2_P_2_6_q.__name__),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_6_a),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_6_b),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_6_c),
    PagePrototypeVideo.from_scene(Func_1_2_P_2_6_d),
]