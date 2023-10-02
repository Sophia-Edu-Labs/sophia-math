# 3_3: Fractional Rational Functions: Shifting and Scaling

# Import necessary libraries and modules
from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
from sophialib.styles.sophiascene import (CursorMoveToCurved, CursorPositionTracker,
                                          CursorPositionTracking,
                                          CursorResizeDefault, SophiaScene, Cursor,
                                          assets_folder, avatars_folder,
                                          generated_avatars_folder, AltCursor,
                                          SophiaCursorScene, CursorMoveTo,
                                          CursorMoveResize, Notepad, CursorMarkAxis)
from sophialib.styles.styleconstants import *
from sophialib.styles.sophiaobjects import *
from manim import *
from PIL import Image
import numpy as np
from pathlib import Path
from sophialib.tasks.sophiataskdefinition import SophiaTaskDefinition

#####################################
#####################################
#### Instruction Part ###############
#####################################
#####################################


#This function takes an interval [a,b] and returns a lower and an upper bound c and d,
#such that f is between min and max in that range. This is achieved through sampling.
def get_valid_xrange(a,b,min,max,f):
    x = np.linspace(a,b,1000)
    y = f(x)
    valid_x = x[(y > min) & (y < max)]
    return [valid_x.min(), valid_x.max()]


#####################################
#####################################
class Func_3_3_I_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["Asymptotes are lines that a function","gets arbitrarily close to but never touches."], ["Singularities are points where", "the function is  undefined,"], ["A hyperbola is the curve describing the", "graph of a fractional rational function."]], buff=0.25, buff_inner=0.05)
        self.add(note)

        title = self.add_title("Fractional rational functions")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        f = MathTex("f(x)=\\tfrac{a}{x+b}+c", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text="""
                Before we start diving into a new topic, let's review some of the vocabulary related to
                <bookmark mark="cords"/>fractional rational functions. We've already covered what an <bookmark mark="note1"/>asymptote is:
                Asymptotes are lines that a function gets arbitrarily close to but never touches.
                
                There are vertical asymptotes, like the <bookmark mark="x"/>x-axis in this example,
                and there are horizontal asymptotes, like the <bookmark mark="y"/>y-axis in this example.
                
                <bookmark mark="singularities1"/>
                Then there are singularities, that is points where the function is not defined,
                because the denominator would be zero. In our example, the singularity is at <bookmark mark="singularities2"/>x equals zero.
                
                <bookmark mark="note2"/>
                Now, a new term: Hyperbola.
                
                A hyperbola is the graph of a fractional rational function. Hyperbolas are easily recognizable,
                because they have two branches, one on each side of the asymptotes.
                
                So in our example, the hyperbola is the graph consisting of <bookmark mark="leftCurve"/>the left curve 
                and <bookmark mark="rightCurve"/>the right curve.
                """
        ) as tracker:
            
            self.wait_until_bookmark("cords")
            self.play(Write(cords), Write(plotted_right), Write(plotted_left), Write(cursor))

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("x")
            cursor.blinking=False
            self.play(CursorMarkAxis(cursor, plane))

            self.wait_until_bookmark("y")
            self.play(CursorMarkAxis(cursor, plane, axis="y"))

            self.wait_until_bookmark("singularities1")
            note.change_colors([0,1])
            self.play(CursorMoveResize(cursor, xo, yo, 0.2, 0.2))
            cursor.blinking=True

            self.wait_until_bookmark("singularities2")
            cursor.blinking=False
            self.play(CursorMarkAxis(cursor, plane, axis="y"), run_time=0.5)
            self.wait(1)
            self.play(CursorMoveResize(cursor, xo, yo, 0.2, 0.2))
            cursor.blinking=True

            self.wait_until_bookmark("note2")
            note.change_colors([1,2])

            self.wait_until_bookmark("leftCurve")
            x,y,_ = plane.c2p(-1,-1)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("rightCurve")
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.wait(0.5)
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
TASK_Func_3_3_I_2_q = SophiaTaskDefinition(
    answerOptions=["It is stretched in y-Direction", "It is shifted in x-Direction", "It is squashed in y-Direction",  "It is shifted in y-Direction"],
    correctAnswerIndex=2,
    questionText="How does the graph change when it is multiplied with $a<1$?",
)
class Func_3_3_I_2_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["Consider function $f(x)=\\tfrac{1}{x}$", ["Scale the function by multilpying", "with factor $a\\rightarrow f(x)=\\tfrac a x$"], "How does the graph change when $a<1$?"], buff=0.25, buff_inner=0.05)
        self.add(note)

        title = self.add_title("Scaling the function")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        f0 = MathTex("f(x)=\\tfrac1x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        f1 = MathTex("f(x)=\\tfrac ax", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        f = MathTex("f(x)=\\tfrac{a}{x+b}+c", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text="""
                Look at <bookmark mark="graph"/> this graph.
                
                It's a hyperbola, and it shows the graph of the function <bookmark mark="f0"/>f of x equals one over x.
                
                Let's now explore how we can transform this function.
                <bookmark mark="note1"/>
                One thing we can do, is scale the function. If we multiply the function by a, we can write <bookmark mark="f1"/>f of x equals a over x.
                Then we are scaling the function by a factor of a.
                <bookmark mark="note2"/>
                But what does this change? Let's say that <bookmark mark="aLessOne"/>a is smaller than one. What happens to the function?

                """
        ) as tracker:
            
            self.wait_until_bookmark("graph")
            note.change_colors([0])
            self.play(Write(cords), Write(plotted_right), Write(plotted_left), Write(cursor))
            
            self.wait_until_bookmark("f0")
            self.play(Write(f0))

            self.wait_until_bookmark("note1")
            note.change_colors([0,1])

            self.wait_until_bookmark("f1")
            self.play(ReplacementTransform(f0, f1))

            self.wait_until_bookmark("note2")
            note.change_colors([1,2])

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["$a<1$", ["$\\rightarrow$ we multiply each","value by something$<1$"], "The graph is squashed in y-Direction"], buff=0.25, buff_inner=0.05)
        self.add(note)

        title = self.add_title("Scaling the function")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        f0 = MathTex("f(x)=\\tfrac1x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=2, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))

        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not it.
                
                So we're going from the function <bookmark mark="f1"/> f of x equals one over x to the function
                <bookmark mark="f2"/> f of x equals a over x, <bookmark mark="note1"/> where a is smaller than one.
                
                Since a is smaller than one, this we're means <bookmark mark="note2"/>multiplying one over x by a value that is smaller than one.
                
                That in turn, means that we're multiplying each value of the function by <bookmark mark="decimalNumber"/>something than one.
                <bookmark mark="note3"/>So we're kind of squashing the function in the y-direction.
                
                """
        ) as tracker:
            
            self.wait_until_bookmark("f1")
            self.play(Write(f0))

            self.wait_until_bookmark("f2")
            self.play(ReplacementTransform(f0, f1[0]))

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("decimalNumber")
            x,y,_ = plane.c2p(1,1)
            cursor.blinking=False
            self.play(Write(a_tex), Write(f1[1]), CursorMoveTo(cursor, x, y))
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.play(a.animate.set_value(0.1), run_time=10)

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["$a<1$", ["$\\rightarrow$ we multiply each","value by something$<1$"], "The graph is squashed in y-Direction"], buff=0.25, buff_inner=0.05)
        self.add(note)

        title = self.add_title("Scaling the function")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        f0 = MathTex("f(x)=\\tfrac1x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=2, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))

        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not it.
                
                So we're going from the function <bookmark mark="f1"/> f of x equals one over x to the function
                <bookmark mark="f2"/> f of x equals a over x, <bookmark mark="note1"/> where a is smaller than one.
                
                Since a is smaller than one, this we're means <bookmark mark="note2"/>multiplying one over x by a value that is smaller than one.
                
                That in turn, means that we're multiplying each value of the function by <bookmark mark="decimalNumber"/>something than one.
                <bookmark mark="note3"/>So we're kind of squashing the function in the y-direction.
                
                """
        ) as tracker:
            
            self.wait_until_bookmark("f1")
            self.play(Write(f0))

            self.wait_until_bookmark("f2")
            self.play(ReplacementTransform(f0, f1[0]))

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("decimalNumber")
            x,y,_ = plane.c2p(1,1)
            cursor.blinking=False
            self.play(Write(a_tex), Write(f1[1]), CursorMoveTo(cursor, x, y))
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.play(a.animate.set_value(0.1), run_time=10)

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["$a<1$", ["$\\rightarrow$ we multiply each","value by something$<1$"], "The graph is squashed in y-Direction"], buff=0.25, buff_inner=0.05)
        self.add(note)

        title = self.add_title("Scaling the function")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        f0 = MathTex("f(x)=\\tfrac1x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=2, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))

        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                You got it! Nice!
                
                So we're going from the function <bookmark mark="f1"/> f of x equals one over x to the function
                <bookmark mark="f2"/> f of x equals a over x, <bookmark mark="note1"/> where a is smaller than one.
                
                Since a is smaller than one, this we're means <bookmark mark="note2"/>multiplying one over x by a value that is smaller than one.
                
                That in turn, means that we're multiplying each value of the function by <bookmark mark="decimalNumber"/>something than one.
                <bookmark mark="note3"/>So we're kind of squashing the function in the y-direction.
                
                """
        ) as tracker:
            
            self.wait_until_bookmark("f1")
            self.play(Write(f0))

            self.wait_until_bookmark("f2")
            self.play(ReplacementTransform(f0, f1[0]))

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("decimalNumber")
            x,y,_ = plane.c2p(1,1)
            cursor.blinking=False
            self.play(Write(a_tex), Write(f1[1]), CursorMoveTo(cursor, x, y))
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.play(a.animate.set_value(0.1), run_time=10)

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["$a<1$", ["$\\rightarrow$ we multiply each","value by something$<1$"], "The graph is squashed in y-Direction"], buff=0.25, buff_inner=0.05)
        self.add(note)

        title = self.add_title("Scaling the function")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        f0 = MathTex("f(x)=\\tfrac1x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=2, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))

        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not it.
                
                So we're going from the function <bookmark mark="f1"/> f of x equals one over x to the function
                <bookmark mark="f2"/> f of x equals a over x, <bookmark mark="note1"/> where a is smaller than one.
                
                Since a is smaller than one, this we're means <bookmark mark="note2"/>multiplying one over x by a value that is smaller than one.
                
                That in turn, means that we're multiplying each value of the function by <bookmark mark="decimalNumber"/>something than one.
                <bookmark mark="note3"/>So we're kind of squashing the function in the y-direction.
                
                """
        ) as tracker:
            
            self.wait_until_bookmark("f1")
            self.play(Write(f0))

            self.wait_until_bookmark("f2")
            self.play(ReplacementTransform(f0, f1[0]))

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("decimalNumber")
            x,y,_ = plane.c2p(1,1)
            cursor.blinking=False
            self.play(Write(a_tex), Write(f1[1]), CursorMoveTo(cursor, x, y))
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.play(a.animate.set_value(0.1), run_time=10)

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
TASK_Func_3_3_I_3_q = SophiaTaskDefinition(
    answerOptions=["It is stretched in y-Direction", "It is squashed in y-Direction", "It is shifted in x-Direction", "It is flipped around the x-axis"],
    correctAnswerIndex=3,
    questionText="How does the graph change when it is multiplied with $a<0$?",
)
class Func_3_3_I_3_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["Consider $f(x)=\\tfrac ax$", ["$a<1\\Rightarrow$ f is squashed","$a>1\\Rightarrow$ f is stretched"], "What happens for $a=-1$?"], buff=0.25, buff_inner=0.05)
        self.add(note)

        title = self.add_title("Fractional rational functions")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=1, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))
        a_tex_neg1 = MathTex("-1", color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP)
        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Ok, so we're looking at <bookmark mark="f"/> f of x equals a over x and we can see <bookmark mark="moveCursor"/>
                that for <bookmark mark="smallA1"/>small a, the function is squashed in the y-direction.
                
                For <bookmark mark="largeA1"/>large values of a on the other hand, the function is stretched in the y-direction.
                
                This makes intuitive sense: We multiply with large values, so the function gets stretched,
                because both positive and negative values get larger.
                
                If we multiply with <bookmark mark="smallA2"/>small values, the function gets squashed, because both positive and negative
                values get smaller.
                
                <bookmark mark="resetA"/>Now, those were all positive values.
                What happens, if we plug in something negative for "a"? For example, what will happen if we set <bookmark mark="neg1"/>"a" to minus one?
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            note.change_colors([0])
            self.play(Write(f1), Write(a_tex))

            self.wait_until_bookmark("moveCursor")
            x,y,_ = plane.c2p(1,1)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y))

            self.wait_until_bookmark("smallA1")
            note.change_colors([0,1])
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.play(a.animate.set_value(0.1), run_time=5, rate_func=linear)

            self.wait_until_bookmark("largeA1")
            self.play(a.animate.set_value(3), run_time=5, rate_func=linear)

            self.wait_until_bookmark("smallA2")
            self.play(a.animate.set_value(0.1), run_time=2, rate_func=linear)

            self.wait_until_bookmark("resetA")
            note.change_colors([1,2])
            self.play(a.animate.set_value(1), run_time=1, rate_func=linear)
            cursor.clear_updaters()

            self.wait_until_bookmark("neg1")
            a_tex.clear_updaters()
            self.play(ReplacementTransform(a_tex, a_tex_neg1))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["Take any point on the graph of $f$", ["We multiply $f$ by $-1$","$\\Rightarrow$ point is flipped"], "$\\Rightarrow$ entire graph is flipped"], buff=0.25, buff_inner=0.05)
        self.add(note)

        title = self.add_title("Flipping the function")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        a1n1 = MathTex("f(x)=\\tfrac1x", "\\rightarrow", "f(x)=\\tfrac{-1}x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)

        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=1, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))
        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not it.
                <bookmark mark="note1"/>
                Take any point on the function, for example the point <bookmark mark="oneOne"/>1 1.
                Now if we go from <bookmark mark="a1"/>"a" equals one to <bookmark mark="a2"/>a equals negative one,
                <bookmark mark="note2"/>
                that's the same as multiplying the function by minus one.
                This means, that <bookmark mark="func1"/>each value of the function gets multiplied by negative one, <bookmark mark="func2"/> so the function gets flipped
                across the x-axis.
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("oneOne")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y))

            self.wait_until_bookmark("a1")
            self.play(Write(a1n1[0]), run_time=0.5)

            self.wait_until_bookmark("a2")
            self.play(Write(a1n1[1]), Write(a1n1[2]), run_time=0.5)

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("func1")
            self.play(ReplacementTransform(a1n1, f1), Write(a_tex))

            self.wait_until_bookmark("func2")
            note.change_colors([1,2])
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.play(a.animate.set_value(-1), run_time=3)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor, xo, yo), run_time=0.5)
            cursor.blinking=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["Take any point on the graph of $f$", ["We multiply $f$ by $-1$","$\\Rightarrow$ point is flipped"], "$\\Rightarrow$ entire graph is flipped"], buff=0.25, buff_inner=0.05)
        self.add(note)

        title = self.add_title("Flipping the function")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        a1n1 = MathTex("f(x)=\\tfrac1x", "\\rightarrow", "f(x)=\\tfrac{-1}x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)

        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=1, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))
        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not it.
                <bookmark mark="note1"/>
                Take any point on the function, for example the point <bookmark mark="oneOne"/>1 1.
                Now if we go from <bookmark mark="a1"/>"a" equals one to <bookmark mark="a2"/>a equals negative one,
                <bookmark mark="note2"/>
                that's the same as multiplying the function by minus one.
                This means, that <bookmark mark="func1"/>each value of the function gets multiplied by negative one, <bookmark mark="func2"/> so the function gets flipped
                across the x-axis.
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("oneOne")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y))

            self.wait_until_bookmark("a1")
            self.play(Write(a1n1[0]), run_time=0.5)

            self.wait_until_bookmark("a2")
            self.play(Write(a1n1[1]), Write(a1n1[2]), run_time=0.5)

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("func1")
            self.play(ReplacementTransform(a1n1, f1), Write(a_tex))

            self.wait_until_bookmark("func2")
            note.change_colors([1,2])
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.play(a.animate.set_value(-1), run_time=3)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor, xo, yo), run_time=0.5)
            cursor.blinking=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_3_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["Take any point on the graph of $f$", ["We multiply $f$ by $-1$","$\\Rightarrow$ point is flipped"], "$\\Rightarrow$ entire graph is flipped"], buff=0.25, buff_inner=0.05)
        self.add(note)

        title = self.add_title("Flipping the function")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        a1n1 = MathTex("f(x)=\\tfrac1x", "\\rightarrow", "f(x)=\\tfrac{-1}x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)

        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=1, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))
        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not it.
                <bookmark mark="note1"/>
                Take any point on the function, for example the point <bookmark mark="oneOne"/>1 1.
                Now if we go from <bookmark mark="a1"/>"a" equals one to <bookmark mark="a2"/>a equals negative one,
                <bookmark mark="note2"/>
                that's the same as multiplying the function by minus one.
                This means, that <bookmark mark="func1"/>each value of the function gets multiplied by negative one, <bookmark mark="func2"/> so the function gets flipped
                across the x-axis.
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("oneOne")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y))

            self.wait_until_bookmark("a1")
            self.play(Write(a1n1[0]), run_time=0.5)

            self.wait_until_bookmark("a2")
            self.play(Write(a1n1[1]), Write(a1n1[2]), run_time=0.5)

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("func1")
            self.play(ReplacementTransform(a1n1, f1), Write(a_tex))

            self.wait_until_bookmark("func2")
            note.change_colors([1,2])
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.play(a.animate.set_value(-1), run_time=3)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor, xo, yo), run_time=0.5)
            cursor.blinking=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_3_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["Take any point on the graph of $f$", ["We multiply $f$ by $-1$","$\\Rightarrow$ point is flipped"], "$\\Rightarrow$ entire graph is flipped"], buff=0.25, buff_inner=0.05)
        self.add(note)

        title = self.add_title("Flipping the function")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        a1n1 = MathTex("f(x)=\\tfrac1x", "\\rightarrow", "f(x)=\\tfrac{-1}x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)

        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=1, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))
        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Yes, that's right. Nice!
                <bookmark mark="note1"/>
                Take any point on the function, for example the point <bookmark mark="oneOne"/>1 1.
                Now if we go from <bookmark mark="a1"/>"a" equals one to <bookmark mark="a2"/>a equals negative one,
                <bookmark mark="note2"/>
                that's the same as multiplying the function by minus one.
                This means, that <bookmark mark="func1"/>each value of the function gets multiplied by negative one, <bookmark mark="func2"/> so the function gets flipped
                across the x-axis.
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("oneOne")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y))

            self.wait_until_bookmark("a1")
            self.play(Write(a1n1[0]), run_time=0.5)

            self.wait_until_bookmark("a2")
            self.play(Write(a1n1[1]), Write(a1n1[2]), run_time=0.5)

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("func1")
            self.play(ReplacementTransform(a1n1, f1), Write(a_tex))

            self.wait_until_bookmark("func2")
            note.change_colors([1,2])
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.play(a.animate.set_value(-1), run_time=3)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor, xo, yo), run_time=0.5)
            cursor.blinking=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)



#####################################
#####################################
class Func_3_3_I_4(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["Modify $f$ by varying $a$:","increase $a\\rightarrow f$ is stretched","decrease $a\\rightarrow f$ is squashed","$a$ negative $\\rightarrow f$ is flipped"], buff=0.1, buff_inner=0)
        self.add(note)

        title = self.add_title("Scaling the function")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        a1n1 = MathTex("f(x)=\\tfrac1x", "\\rightarrow", "f(x)=\\tfrac{-1}x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)

        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=1, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))
        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Ok, so now we've seen <bookmark mark="note1"/>what we can do to the function <bookmark mark="f"/>f of x equals a over x, when we vary the parameter <bookmark mark="a"/> "a":
                <bookmark mark="note2"/>If we <bookmark mark="increase"/> increase "a", the function gets stretched in the y-direction.
                <bookmark mark="note3"/>If we <bookmark mark="decrease"/> decrease "a", the function gets squashed in the y-direction.
                <bookmark mark="note4"/>And if we <bookmark mark="negate"/> make "a" negative, the function gets flipped across the x-axis.
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("f")
            self.play(Write(f1[0]))

            self.wait_until_bookmark("a")
            self.play(Write(f1[1]), Write(a_tex))
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("increase")
            self.play(a.animate.set_value(3), rate_func=linear)

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

            self.wait_until_bookmark("decrease")
            self.play(a.animate.set_value(0.1), rate_func=linear)

            self.wait_until_bookmark("note4")
            note.change_colors([2,3])

            self.wait_until_bookmark("negate")
            self.play(a.animate.set_value(-1), rate_func=linear)

        self.wait(4)

#####################################
#####################################
TASK_Func_3_3_I_5_q = SophiaTaskDefinition(
    answerOptions=["$f(x)=\\tfrac{a+1}x$", "$f(x)=\\tfrac{a-1}x$", "$f(x)=\\tfrac ax+1$", "$f(x)=\\tfrac ax-1$"],
    correctAnswerIndex=2,
    questionText="How do we modify the graph $f(x)=\\tfrac ax$ to shift it up by $1$?",
)

class Func_3_3_I_5_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["Function can be squashed, stretched,","or flipped by varying the factor $a$"],"Next: Shifting the function in y-direction", ["How do we modify $f$,","to shift it up by $1$?"]], buff=0.2, buff_inner=0)
        note.change_colors([0])
        self.add(note)

        title = self.add_title("Shifting the function up")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f(x)=\\tfrac ax", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        self.add(cords, plotted_right, plotted_left, cursor)

        self.add(f1)

        # Action Sequence
        with self.voiceover(
                text="""
                Now that we know <bookmark mark="resolve"/> how to squash, stretch and flip the function,
                let us do something new: <bookmark mark="note1"/>Shift the function in y-direction.
                That means either <bookmark mark="cursorBack"/> moving the function <bookmark mark="up"/> up,
                or it means moving the function <bookmark mark="down"/> down.
                <bookmark mark="note2"/>Now tell me: <bookmark mark="back"/> How do we modify the term f of x equals a over x,
                so that the function gets <bookmark mark="upOne"/>shifted up by one?
                """
        ) as tracker:

            self.wait_until_bookmark("note1")
            note.change_colors([0,1])
        
            self.wait_until_bookmark("cursorBack")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))

            self.wait_until_bookmark("up")
            self.play(c.animate.set_value(2), run_time=0.5)

            self.wait_until_bookmark("down")
            self.play(c.animate.set_value(-2), run_time=0.5)

            self.wait_until_bookmark("note2")
            note.change_colors([1,2])

            self.wait_until_bookmark("back")
            self.play(c.animate.set_value(0), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("upOne")
            cursor.blinking=False
            self.play(c.animate.set_value(1))


            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["We want to shift function up by one", "$\\Rightarrow$ shift every point up by one", ["Add $1$ to function", "$\\Rightarrow f(x)=\\tfrac ax+1$"]], buff=0.2, buff_inner=0.1)
        self.add(note)

        title = self.add_title("Shifting the function up")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "+", "1", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text="""
                No, not quite.
                <bookmark mark="note1"/>
                If we want to shift the function up by one,<bookmark mark="cursor"/> every point on the function needs to be <bookmark mark="upOne"/> shifted up by one.
                We shift an individual point up by one by simply adding one,<bookmark mark="note2"/> so to shift the entire function up,
                we need to add one to each value of the function. So the new function will be <bookmark mark="funcNew"/> f of <bookmark mark="x"/> x equals
                <bookmark mark="a"/>a over x <bookmark mark="plusOne"/>plus one. By adding one in the end here, we add one to each value of the function.
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("cursor")
            note.change_colors([0,1])
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("upOne")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.play(c.animate.set_value(1), run_time=2)
            cursor.clear_updaters()

            self.wait_until_bookmark("note2")
            note.change_colors([1,2])

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[1]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusOne")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_5_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["We want to shift function up by one", "$\\Rightarrow$ shift every point up by one", ["Add $1$ to function", "$\\Rightarrow f(x)=\\tfrac ax+1$"]], buff=0.2, buff_inner=0.1)
        self.add(note)

        title = self.add_title("Shifting the function up")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "+", "1", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text="""
                No, not quite.
                <bookmark mark="note1"/>
                If we want to shift the function up by one,<bookmark mark="cursor"/> every point on the function needs to be <bookmark mark="upOne"/> shifted up by one.
                We shift an individual point up by one by simply adding one,<bookmark mark="note2"/> so to shift the entire function up,
                we need to add one to each value of the function. So the new function will be <bookmark mark="funcNew"/> f of <bookmark mark="x"/> x equals
                <bookmark mark="a"/>a over x <bookmark mark="plusOne"/>plus one. By adding one in the end here, we add one to each value of the function.
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("cursor")
            note.change_colors([0,1])
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("upOne")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.play(c.animate.set_value(1), run_time=2)
            cursor.clear_updaters()

            self.wait_until_bookmark("note2")
            note.change_colors([1,2])

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[1]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusOne")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_3_I_5_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["We want to shift function up by one", "$\\Rightarrow$ shift every point up by one", ["Add $1$ to function", "$\\Rightarrow f(x)=\\tfrac ax+1$"]], buff=0.2, buff_inner=0.1)
        self.add(note)

        title = self.add_title("Shifting the function up")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "+", "1", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text="""
                Yep, that's right.
                <bookmark mark="note1"/>
                If we want to shift the function up by one,<bookmark mark="cursor"/> every point on the function needs to be <bookmark mark="upOne"/> shifted up by one.
                We shift an individual point up by one by simply adding one,<bookmark mark="note2"/> so to shift the entire function up,
                we need to add one to each value of the function. So the new function will be <bookmark mark="funcNew"/> f of <bookmark mark="x"/> x equals
                <bookmark mark="a"/>a over x <bookmark mark="plusOne"/>plus one. By adding one in the end here, we add one to each value of the function.
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("cursor")
            note.change_colors([0,1])
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("upOne")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.play(c.animate.set_value(1), run_time=2)
            cursor.clear_updaters()

            self.wait_until_bookmark("note2")
            note.change_colors([1,2])

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[1]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusOne")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_5_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["We want to shift function up by one", "$\\Rightarrow$ shift every point up by one", ["Add $1$ to function", "$\\Rightarrow f(x)=\\tfrac ax+1$"]], buff=0.2, buff_inner=0.1)
        self.add(note)

        title = self.add_title("Shifting the function up")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "+", "1", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text="""
                No, not quite.
                <bookmark mark="note1"/>
                If we want to shift the function up by one,<bookmark mark="cursor"/> every point on the function needs to be <bookmark mark="upOne"/> shifted up by one.
                We shift an individual point up by one by simply adding one,<bookmark mark="note2"/> so to shift the entire function up,
                we need to add one to each value of the function. So the new function will be <bookmark mark="funcNew"/> f of <bookmark mark="x"/> x equals
                <bookmark mark="a"/>a over x <bookmark mark="plusOne"/>plus one. By adding one in the end here, we add one to each value of the function.
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("cursor")
            note.change_colors([0,1])
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("upOne")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.play(c.animate.set_value(1), run_time=2)
            cursor.clear_updaters()

            self.wait_until_bookmark("note2")
            note.change_colors([1,2])

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[1]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusOne")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
TASK_Func_3_3_I_6_q = SophiaTaskDefinition(
    answerOptions=["$f(x)=\\tfrac{2a}x$", "$f(x)=\\tfrac{a-2}x$", "$f(x)=\\tfrac a{2x}$", "$f(x)=\\tfrac ax-2$"],
    correctAnswerIndex=3,
    questionText="How do we modify the graph $f(x)=\\tfrac ax$ to shift it down by $2$?",
)

class Func_3_3_I_6_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["Consider the function $f(x)=\\tfrac ax$", "We want to shift it down by $2$", "How does the term of the function change?"], buff=0.2, buff_inner=0)
        note.change_colors([0])
        self.add(note)

        title = self.add_title("Shifting the function down")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f", "(x)", "=", "\\tfrac ax", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        self.add(cords, plotted_right, plotted_left, cursor)

        self.add(f1)

        # Action Sequence
        with self.voiceover(
                text="""
                Ok, back with our favorite <bookmark mark="f"/>function f <bookmark mark="x"/>of x equals <bookmark mark="ax"/>
                a over x. <bookmark mark="note1"/> Now let us shift the function <bookmark mark="db2"/> down by two.
                <bookmark mark="note2"/>So tell me: <bookmark mark="back"/> How do we modify the term f of x equals a over x,
                to <bookmark mark="downTwo"/>shift the function down by two?
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("ax")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("note1")
            note.change_colors([0,1])
            x,y,_ = plane.c2p(1,1)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("db2")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.play(c.animate.set_value(-2), run_time=1.5)
            self.wait(1)
            self.play(c.animate.set_value(0), run_time=.5)
            cursor.blinking = True

            self.wait_until_bookmark("note2")
            note.change_colors([1,2])

            self.wait_until_bookmark("downTwo")
            cursor.blinking=False
            self.play(c.animate.set_value(-2))


            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_3_I_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["We want to shift function down by two", "$\\Rightarrow$ shift every point down by two", ["Subtract $1$ from function", "$\\Rightarrow f(x)=\\tfrac ax-2$"]], buff=0.2, buff_inner=0.1)
        self.add(note)

        title = self.add_title("Shifting the function down")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "-", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text="""
                No, not quite.
                <bookmark mark="note1"/>
                If we want to shift the function down by two,<bookmark mark="cursor"/> every point on the function needs to be <bookmark mark="upOne"/> shifted down by two.
                We shift an individual point down by two by simply subtracting two,<bookmark mark="note2"/> so to shift the entire function down,
                we need to subtract two from each value of the function. So the new function will be <bookmark mark="funcNew"/> f of <bookmark mark="x"/> x equals
                <bookmark mark="a"/>a over x <bookmark mark="plusOne"/>minus two. By subtracting two in the end here, we subtract two from each value of the function.
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("cursor")
            note.change_colors([0,1])
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("upOne")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.play(c.animate.set_value(1), run_time=2)
            cursor.clear_updaters()

            self.wait_until_bookmark("note2")
            note.change_colors([1,2])

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[1]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusOne")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_6_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["We want to shift function down by two", "$\\Rightarrow$ shift every point down by two", ["Subtract $1$ from function", "$\\Rightarrow f(x)=\\tfrac ax-2$"]], buff=0.2, buff_inner=0.1)
        self.add(note)

        title = self.add_title("Shifting the function down")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "-", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text="""
                No, not quite.
                <bookmark mark="note1"/>
                If we want to shift the function down by two,<bookmark mark="cursor"/> every point on the function needs to be <bookmark mark="upOne"/> shifted down by two.
                We shift an individual point down by two by simply subtracting two,<bookmark mark="note2"/> so to shift the entire function down,
                we need to subtract two from each value of the function. So the new function will be <bookmark mark="funcNew"/> f of <bookmark mark="x"/> x equals
                <bookmark mark="a"/>a over x <bookmark mark="plusOne"/>minus two. By subtracting two in the end here, we subtract two from each value of the function.
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("cursor")
            note.change_colors([0,1])
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("upOne")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.play(c.animate.set_value(1), run_time=2)
            cursor.clear_updaters()

            self.wait_until_bookmark("note2")
            note.change_colors([1,2])

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[1]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusOne")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_6_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["We want to shift function down by two", "$\\Rightarrow$ shift every point down by two", ["Subtract $1$ from function", "$\\Rightarrow f(x)=\\tfrac ax-2$"]], buff=0.2, buff_inner=0.1)
        self.add(note)

        title = self.add_title("Shifting the function down")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "-", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text="""
                No, not quite.
                <bookmark mark="note1"/>
                If we want to shift the function down by two,<bookmark mark="cursor"/> every point on the function needs to be <bookmark mark="upOne"/> shifted down by two.
                We shift an individual point down by two by simply subtracting two,<bookmark mark="note2"/> so to shift the entire function down,
                we need to subtract two from each value of the function. So the new function will be <bookmark mark="funcNew"/> f of <bookmark mark="x"/> x equals
                <bookmark mark="a"/>a over x <bookmark mark="plusOne"/>minus two. By subtracting two in the end here, we subtract two from each value of the function.
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("cursor")
            note.change_colors([0,1])
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("upOne")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.play(c.animate.set_value(1), run_time=2)
            cursor.clear_updaters()

            self.wait_until_bookmark("note2")
            note.change_colors([1,2])

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[1]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusOne")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_6_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["We want to shift function down by two", "$\\Rightarrow$ shift every point down by two", ["Subtract $1$ from function", "$\\Rightarrow f(x)=\\tfrac ax-2$"]], buff=0.2, buff_inner=0.1)
        self.add(note)

        title = self.add_title("Shifting the function down")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "-", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text="""
                Yes, that's it.
                <bookmark mark="note1"/>
                If we want to shift the function down by two,<bookmark mark="cursor"/> every point on the function needs to be <bookmark mark="upOne"/> shifted down by two.
                We shift an individual point down by two by simply subtracting two,<bookmark mark="note2"/> so to shift the entire function down,
                we need to subtract two from each value of the function. So the new function will be <bookmark mark="funcNew"/> f of <bookmark mark="x"/> x equals
                <bookmark mark="a"/>a over x <bookmark mark="plusOne"/>minus two. By subtracting two in the end here, we subtract two from each value of the function.
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("cursor")
            note.change_colors([0,1])
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("upOne")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.play(c.animate.set_value(1), run_time=2)
            cursor.clear_updaters()

            self.wait_until_bookmark("note2")
            note.change_colors([1,2])

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[1]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusOne")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
class Func_3_3_I_7(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["We're shifting hyperbolas along the y-axis", "Formalization as $f(x)=\\tfrac a x+c$", "$c>0\\Rightarrow$ shift up", "$c<0\\Rightarrow$ shift down",], buff=0.2, buff_inner=0.1)
        self.add(note)

        title = self.add_title("Shifting hyperbolas")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "+", "c", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text="""
                Ok, so let's formalize this a bit. <bookmark mark="note1"/>
                What we've been doing now is shifting the <bookmark mark="up1"/>hyperbola up and<bookmark mark="down1"/> down, so we shifted the function
                along <bookmark mark="y"/>the y-axis.
                <bookmark mark="backInPos"/>
                To shift it <bookmark mark="up2"/>up, we added a constant to the function, so that every point on the function was shifted up by that constant.
                And to shift it <bookmark mark="down2"/> down on the other hand, we subtracted a constant from the function, so that every point on the function
                was shifted down by that constant. <bookmark mark="note2"/> In general, we can now write the function as <bookmark mark="func"/> f of
                <bookmark mark="x"/> x equals <bookmark mark="ax"/> a over x plus <bookmark mark="c"/> c. Here, c is the constant that we add to the function.
                <bookmark mark="notePos"/>If c is positive, we <bookmark mark="resetCursorFinal"/>shift the function up, <bookmark mark="noteNeg"/>and if c is
                <bookmark mark="cNeg"/>negative, we shift the function down.<bookmark mark="resetC"/>
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            x,y,_ = plane.c2p(1,1)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))

            self.wait_until_bookmark("up1")
            self.play(c.animate.set_value(2), run_time=0.6)

            self.wait_until_bookmark("down1")
            self.play(c.animate.set_value(-2), run_time=0.5)
            self.wait(0.4)
            self.play(c.animate.set_value(0), run_time=0.5)
            cursor.clear_updaters()

            self.wait_until_bookmark("y")
            self.play(CursorMarkAxis(cursor, plane, axis='y'), run_time=0.5)

            self.wait_until_bookmark("backInPos")
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveResize(cursor, x, y, 0.2, 0.2), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))

            self.wait_until_bookmark("up2")
            self.play(c.animate.set_value(2), run_time=0.5)
            cursor.clear_updaters()
            cursor._setup_blinking()
            cursor.blinking=True

            self.wait_until_bookmark("down2")
            cursor.blinking=False
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.play(c.animate.set_value(-2), run_time=0.5)
            cursor.clear_updaters()
            cursor._setup_blinking()
            cursor.blinking=True

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])
            x,y,_ = plane.c2p(0,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), c.animate.set_value(0), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("func")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(f1[4]), Write(f1[5]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("ax")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("c")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("notePos")
            note.change_colors([1,2])

            self.wait_until_bookmark("resetCursorFinal")
            x,y,_ = plane.c2p(1,1)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.play(c.animate.set_value(2))

            self.wait_until_bookmark("noteNeg")
            note.change_colors([2,3])

            self.wait_until_bookmark("cNeg")
            self.play(c.animate.set_value(-2))

            self.wait_until_bookmark("resetC")
            cursor.clear_updaters()
            x,y,_ = plane.c2p(0,0)
            self.play(c.animate.set_value(0), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor._setup_blinking()
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
TASK_Func_3_3_I_8_q = SophiaTaskDefinition(
    answerOptions=["At $y=0$", "At $y=2$", "At $y=4$", "At $y=-4$"],
    correctAnswerIndex=1,
    questionText="Where is the horizontal asymptote of the shifted function?",
)
class Func_3_3_I_8_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["We're shifting hyperbolas up or down", "Shifted function: $f(x)=\\tfrac 1 x+2$", ["Where is the horizontal asymptote", "of the shifted function"],], buff=0.2, buff_inner=0.1)
        self.add(note)

        title = self.add_title("Shifting hyperbolas")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac1x", "+", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Ok, now let's say, <bookmark mark="setupCursor"/>we're shifting the <bookmark mark="up"/> function up <bookmark mark="down"/>or down.
                But if we do that, what happens to the horizontal asymptotes?
                So to make this more specific, let's take the example <bookmark mark="func"/> f of x equals one over x. <bookmark mark="note2"/>
                And let's shift it <bookmark mark="upByTwo"/>up by two, so the shifted function is <bookmark mark="funcNew"/> f of <bookmark mark="x"/>x equals <bookmark mark="one"/>one over x plus <bookmark mark="two"/>two.
                <bookmark mark="noteLast"/>Where is the horizontal asymptote of the shifted function?
                """
        ) as tracker:
            
            self.wait_until_bookmark("setupCursor")
            note.change_colors([0])
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("up")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.play(c.animate.set_value(2), run_time=0.5)

            self.wait_until_bookmark("down")
            self.play(c.animate.set_value(-2), run_time=0.5)
            self.wait(.5)
            self.play(c.animate.set_value(0), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("func")
            self.play(Write(f1[0]), Write(f1[1]), Write(f1[2]), Write(f1[3]), run_time=0.5)

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("upByTwo")
            cursor.blinking=False
            self.play(c.animate.set_value(2), run_time=0.5)

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            cursor.clear_updaters()
            cursor._setup_blinking()
            self.play(Write(f1[4]), Write(f1[5]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("one")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("two")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("noteLast")
            note.change_colors([1,2])


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_3_I_8_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["Asymptote: Line that function approaches,","but never reaches"], ["Function is shifted up by two", "$\\Rightarrow$ Asymptote is shifted up by two"], "Asymptote at $y=2$"], buff=0.2, buff_inner=0.1)
        self.add(note)

        title = self.add_title("Shifting hyperbolas")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        y_unit = (plane.c2p(0,1)-plane.c2p(0,0))

        aT1 = Line(plane.c2p(-4,0), plane.c2p(4,0), color=GREEN)



        f1 = MathTex("f","(x)", "=", "\\tfrac1x", "+", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text="""
                No, not quite...
                First, let us remind ourselves of the definition of an asymptote.
                <bookmark mark="asymptote"/>An asymptote is a line that the function approaches, but never reaches.
                We know that the asymptote of the original function is the <bookmark mark="as0"/>horizontal line at y equals zero.
                Now, let's look at the shifted function. <bookmark mark="note1"/>The shifted function <bookmark mark="func"/>is the function
                <bookmark mark="f"/>f of <bookmark mark="x"/> x equals <bookmark mark="oneOverX"/>one over x <bookmark mark="plusTwo"/>plus two, so it's <bookmark mark="shiftUp"/> the original function
                shifted up by two. <bookmark mark="note3"/>This means that the asymptote of the shifted function is <bookmark mark="cursorBack"/> the asymptote of
                the original function shifted up by two. This means, that the horizontal asymptote is at y equals two.
                """
        ) as tracker:
            
            self.wait_until_bookmark("asymptote")
            note.change_colors([0])

            self.wait_until_bookmark("as0")
            self.play(Write(aT1))

            self.wait_until_bookmark("note1")
            note.change_colors([0,1])

            self.wait_until_bookmark("func")
            cursor.blinking=False
            self.play(Write(f1[4]), Write(f1[5]), run_time=0.5)

            self.wait_until_bookmark("f")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("oneOverX")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusTwo")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("shiftUp")
            x,y,_ = plane.c2p(1,1)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.play(c.animate.set_value(2))
            cursor.clear_updaters()
            cursor._setup_blinking()
            cursor.blinking=True

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

            self.wait_until_bookmark("cursorBack")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(aT1.get_center()))
            self.play(aT1.animate.shift(2*y_unit))
            cursor.clear_updaters()
            cursor._setup_blinking()
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_3_I_8_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["Asymptote: Line that function approaches,","but never reaches"], ["Function is shifted up by two", "$\\Rightarrow$ Asymptote is shifted up by two"], "Asymptote at $y=2$"], buff=0.2, buff_inner=0.1)
        self.add(note)

        title = self.add_title("Shifting hyperbolas")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        y_unit = (plane.c2p(0,1)-plane.c2p(0,0))

        aT1 = Line(plane.c2p(-4,0), plane.c2p(4,0), color=GREEN)



        f1 = MathTex("f","(x)", "=", "\\tfrac1x", "+", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text="""
                Yep, that's it!
                First, let us remind ourselves of the definition of an asymptote.
                <bookmark mark="asymptote"/>An asymptote is a line that the function approaches, but never reaches.
                We know that the asymptote of the original function is the <bookmark mark="as0"/>horizontal line at y equals zero.
                Now, let's look at the shifted function. <bookmark mark="note1"/>The shifted function <bookmark mark="func"/>is the function
                <bookmark mark="f"/>f of <bookmark mark="x"/> x equals <bookmark mark="oneOverX"/>one over x <bookmark mark="plusTwo"/>plus two, so it's <bookmark mark="shiftUp"/> the original function
                shifted up by two. <bookmark mark="note3"/>This means that the asymptote of the shifted function is <bookmark mark="cursorBack"/> the asymptote of
                the original function shifted up by two. This means, that the horizontal asymptote is at y equals two.
                """
        ) as tracker:
            
            self.wait_until_bookmark("asymptote")
            note.change_colors([0])

            self.wait_until_bookmark("as0")
            self.play(Write(aT1))

            self.wait_until_bookmark("note1")
            note.change_colors([0,1])

            self.wait_until_bookmark("func")
            cursor.blinking=False
            self.play(Write(f1[4]), Write(f1[5]), run_time=0.5)

            self.wait_until_bookmark("f")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("oneOverX")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusTwo")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("shiftUp")
            x,y,_ = plane.c2p(1,1)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.play(c.animate.set_value(2))
            cursor.clear_updaters()
            cursor._setup_blinking()
            cursor.blinking=True

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

            self.wait_until_bookmark("cursorBack")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(aT1.get_center()))
            self.play(aT1.animate.shift(2*y_unit))
            cursor.clear_updaters()
            cursor._setup_blinking()
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_8_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["Asymptote: Line that function approaches,","but never reaches"], ["Function is shifted up by two", "$\\Rightarrow$ Asymptote is shifted up by two"], "Asymptote at $y=2$"], buff=0.2, buff_inner=0.1)
        self.add(note)

        title = self.add_title("Shifting hyperbolas")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        y_unit = (plane.c2p(0,1)-plane.c2p(0,0))

        aT1 = Line(plane.c2p(-4,0), plane.c2p(4,0), color=GREEN)



        f1 = MathTex("f","(x)", "=", "\\tfrac1x", "+", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text="""
                No, not quite...
                First, let us remind ourselves of the definition of an asymptote.
                <bookmark mark="asymptote"/>An asymptote is a line that the function approaches, but never reaches.
                We know that the asymptote of the original function is the <bookmark mark="as0"/>horizontal line at y equals zero.
                Now, let's look at the shifted function. <bookmark mark="note1"/>The shifted function <bookmark mark="func"/>is the function
                <bookmark mark="f"/>f of <bookmark mark="x"/> x equals <bookmark mark="oneOverX"/>one over x <bookmark mark="plusTwo"/>plus two, so it's <bookmark mark="shiftUp"/> the original function
                shifted up by two. <bookmark mark="note3"/>This means that the asymptote of the shifted function is <bookmark mark="cursorBack"/> the asymptote of
                the original function shifted up by two. This means, that the horizontal asymptote is at y equals two.
                """
        ) as tracker:
            
            self.wait_until_bookmark("asymptote")
            note.change_colors([0])

            self.wait_until_bookmark("as0")
            self.play(Write(aT1))

            self.wait_until_bookmark("note1")
            note.change_colors([0,1])

            self.wait_until_bookmark("func")
            cursor.blinking=False
            self.play(Write(f1[4]), Write(f1[5]), run_time=0.5)

            self.wait_until_bookmark("f")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("oneOverX")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusTwo")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("shiftUp")
            x,y,_ = plane.c2p(1,1)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.play(c.animate.set_value(2))
            cursor.clear_updaters()
            cursor._setup_blinking()
            cursor.blinking=True

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

            self.wait_until_bookmark("cursorBack")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(aT1.get_center()))
            self.play(aT1.animate.shift(2*y_unit))
            cursor.clear_updaters()
            cursor._setup_blinking()
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_3_I_8_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["Asymptote: Line that function approaches,","but never reaches"], ["Function is shifted up by two", "$\\Rightarrow$ Asymptote is shifted up by two"], "Asymptote at $y=2$"], buff=0.2, buff_inner=0.1)
        self.add(note)

        title = self.add_title("Shifting hyperbolas")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        y_unit = (plane.c2p(0,1)-plane.c2p(0,0))

        aT1 = Line(plane.c2p(-4,0), plane.c2p(4,0), color=GREEN)



        f1 = MathTex("f","(x)", "=", "\\tfrac1x", "+", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text="""
                No, not quite...
                First, let us remind ourselves of the definition of an asymptote.
                <bookmark mark="asymptote"/>An asymptote is a line that the function approaches, but never reaches.
                We know that the asymptote of the original function is the <bookmark mark="as0"/>horizontal line at y equals zero.
                Now, let's look at the shifted function. <bookmark mark="note1"/>The shifted function <bookmark mark="func"/>is the function
                <bookmark mark="f"/>f of <bookmark mark="x"/> x equals <bookmark mark="oneOverX"/>one over x <bookmark mark="plusTwo"/>plus two, so it's <bookmark mark="shiftUp"/> the original function
                shifted up by two. <bookmark mark="note3"/>This means that the asymptote of the shifted function is <bookmark mark="cursorBack"/> the asymptote of
                the original function shifted up by two. This means, that the horizontal asymptote is at y equals two.
                """
        ) as tracker:
            
            self.wait_until_bookmark("asymptote")
            note.change_colors([0])

            self.wait_until_bookmark("as0")
            self.play(Write(aT1))

            self.wait_until_bookmark("note1")
            note.change_colors([0,1])

            self.wait_until_bookmark("func")
            cursor.blinking=False
            self.play(Write(f1[4]), Write(f1[5]), run_time=0.5)

            self.wait_until_bookmark("f")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("oneOverX")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusTwo")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("shiftUp")
            x,y,_ = plane.c2p(1,1)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.play(c.animate.set_value(2))
            cursor.clear_updaters()
            cursor._setup_blinking()
            cursor.blinking=True

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

            self.wait_until_bookmark("cursorBack")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(aT1.get_center()))
            self.play(aT1.animate.shift(2*y_unit))
            cursor.clear_updaters()
            cursor._setup_blinking()
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
#### Practice Part ##################
#####################################
#####################################



#####################################
#####################################
### Question Templates ##############
#####################################
#####################################

#####################################
#####################################
### Actual Questions ################
#####################################
#####################################

PROTOTYPES = [
    PagePrototypeVideo.from_scene(Func_3_3_I_1),
    PagePrototypeVideo.from_scene(Func_3_3_I_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_3_3_I_2_q, Func_3_3_I_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_3_3_I_2_a),
    PagePrototypeVideo.from_scene(Func_3_3_I_2_b),
    PagePrototypeVideo.from_scene(Func_3_3_I_2_c),
    PagePrototypeVideo.from_scene(Func_3_3_I_2_d),
    PagePrototypeVideo.from_scene(Func_3_3_I_3_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_3_3_I_3_q, Func_3_3_I_3_q.__name__),
    PagePrototypeVideo.from_scene(Func_3_3_I_3_a),
    PagePrototypeVideo.from_scene(Func_3_3_I_3_b),
    PagePrototypeVideo.from_scene(Func_3_3_I_3_c),
    PagePrototypeVideo.from_scene(Func_3_3_I_3_d),
    PagePrototypeVideo.from_scene(Func_3_3_I_4),
    PagePrototypeVideo.from_scene(Func_3_3_I_5_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_3_3_I_5_q, Func_3_3_I_5_q.__name__),
    PagePrototypeVideo.from_scene(Func_3_3_I_5_a),
    PagePrototypeVideo.from_scene(Func_3_3_I_5_b),
    PagePrototypeVideo.from_scene(Func_3_3_I_5_c),
    PagePrototypeVideo.from_scene(Func_3_3_I_5_d),
    PagePrototypeVideo.from_scene(Func_3_3_I_6_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_3_3_I_6_q, Func_3_3_I_6_q.__name__),
    PagePrototypeVideo.from_scene(Func_3_3_I_6_a),
    PagePrototypeVideo.from_scene(Func_3_3_I_6_b),
    PagePrototypeVideo.from_scene(Func_3_3_I_6_c),
    PagePrototypeVideo.from_scene(Func_3_3_I_6_d),
    PagePrototypeVideo.from_scene(Func_3_3_I_7),
    PagePrototypeVideo.from_scene(Func_3_3_I_8_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_3_3_I_8_q, Func_3_3_I_8_q.__name__),
    PagePrototypeVideo.from_scene(Func_3_3_I_8_a),
    PagePrototypeVideo.from_scene(Func_3_3_I_8_b),
    PagePrototypeVideo.from_scene(Func_3_3_I_8_c),
    PagePrototypeVideo.from_scene(Func_3_3_I_8_d),
]