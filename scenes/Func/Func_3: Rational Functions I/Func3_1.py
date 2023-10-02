    # 3_1: Fractional Rational Functions: Intro

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
class Func_3_1_I_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Functions")

        # Create a notepad with texts
        note = Notepad(texts=[["Function describes", "Fill level over time"], "$\\rightarrow$Which representation is correct?"])
        self.add(note)

        # Create the coordinate system
        cords = self.add_cords([-4,4, 1], [-3, 3, 1], x_ticks=[-4,-2,2,4],y_ticks=[-3,-2,-1,1,2,3])
        plane = cords[0]
        self.add(cords)

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])
        self.add(cords)

        func = lambda x: x/2
        func_plotted = plane.plot(func, color=RED)

        func_general = MathTex("f(x) = ax + b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.4)
        func_ex = MathTex("f(x) = 0.5x", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text="""
                Ok, so I'm now assuming you already know what a function is.
                If you don't, go back to the section on functions, and I'll be happy to explain it to you.
                
                Now, the type of functions we've mainly looked at were <bookmark mark="linear"/> linear functions.
                
                They have the form <bookmark mark="funcTerm"/> f of x equals "a" times x plus b, where a and b are constants.
                
                For example, the term of this function is <bookmark mark="thisFunc"/> f of x equals zero point five times x.
                
                We're multiplying "a", in this case zero point five by x, and a is positive, so the function increases when x increases,
                
                and it decreases, when x decreases.
                
                Now take a moment to think about this: What would happen, if instead of multiplying "a" by x, we would divide "a" by x?
                """
        ) as tracker:

            self.wait_until_bookmark("linear")
            self.play(Write(func_plotted))

            self.wait_until_bookmark("funcTerm")
            self.play(Write(func_general))

            self.wait_until_bookmark("thisFunc")
            self.play(ReplacementTransform(func_general, func_ex))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

    
#####################################
#####################################
class Func_3_1_I_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Functions")

        # Create a notepad with texts
        note = Notepad(texts=["Consider function $f(x)=\\tfrac1x$", "Plug in several values",["f decreases fast at first", "and then decreases more slowly"]], buff=0.3)
        self.add(note)

        # Create the coordinate system
        cords = self.add_cords([0,4, 1], [0, 4, 1], x_ticks=[1,2,3,4],y_ticks=[1,2,3,4])
        plane = cords[0]

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])

        func = lambda x: 1/x
        func_plotted = plane.plot(func, color=RED, x_range=[1/4, 4, 0.01], use_smoothing=False)

        func_general = MathTex("f(x) = \\tfrac ax", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.4)
        func_ex = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text="""
                So, we want to know what a function of the form <bookmark mark="funcA"/> f of x equals "a" divided by x looks like.
                
                As an example, let's look at the function f of x <bookmark mark="note1"/> equals <bookmark mark="funcG"/> one over x.
                
                And, let's start by looking at the positive values only.
                
                To learn more, <bookmark mark="cords"/> let's plug in some values.
                
                If we plug in one, <bookmark mark="plugIn1"/> we get one divided by one, which is one.
                
                If we plug in two, <bookmark mark="plugIn2"/> we get one divided by two, which is one half.
                
                If we plug in four, <bookmark mark="plugIn4"/> we get one divided by four, which is one quarter.
                
                And so on.
                
                Let's also plug in some values that are smaller than one:
                
                If we plug in <bookmark mark="plugInHalf"/> zero point five, we get one divided by zero point five, which is two,
                
                And if we plug in <bookmark mark="plugInQuarter"/> zero point two five, we get one divided by zero point two five, which is four.
                
                Now that we've plugged in some values, let's <bookmark mark="plot"/> connect them on the coordinate system and <bookmark mark="note3"/> see what the function looks like.
                
                As we can see, the function starts <bookmark mark="moveAlongFunc"/> with very high values for low x, and decreases as x gets larger.
                
                At first, it decreases very quickly, but then it decreases slower and slower.
                """
        ) as tracker:

            self.wait_until_bookmark("funcA")
            self.play(Write(func_general))

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("funcG")
            self.play(ReplacementTransform(func_general, func_ex))

            self.wait_until_bookmark("cords")
            self.play(Write(cords))
            self.add(cursor)
            note.change_colors([0,1])

            self.wait_until_bookmark("plugIn1")
            cursor.blinking = False
            x,y,_ = plane.c2p(1,1)
            circ1 = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circ1))

            self.wait_until_bookmark("plugIn2")
            x,y,_ = plane.c2p(2,0.5)
            circ2 = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circ2))

            self.wait_until_bookmark("plugIn4")
            x,y,_ = plane.c2p(4,0.25)
            circ4 = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y))
            self.play(Write(circ4))
            cursor.blinking=True

            self.wait_until_bookmark("plugInHalf")
            cursor.blinking=False
            x,y,_ = plane.c2p(0.5,2)
            circHalf = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circHalf))
            
            self.wait_until_bookmark("plugInQuarter")
            x,y,_ = plane.c2p(0.25,4)
            circQuarter = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circQuarter))
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("plot")
            self.play(Write(func_plotted), run_time=2.5)
            self.play(Unwrite(circ1), Unwrite(circ2), Unwrite(circ4), Unwrite(circHalf), Unwrite(circQuarter), run_time=0.5)

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])
            
            self.wait_until_bookmark("moveAlongFunc")
            x,y,_ = plane.c2p(0.25,4)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y),run_time=1)
            self.play(MoveAlongPath(cursor, func_plotted), run_time=9, rate_func=rate_functions.ease_out_sine)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

    
#####################################
#####################################
TASK_Func_3_1_I_3_q = SophiaTaskDefinition(
    answerOptions=["The result is $0$", "The result is $\infty$","The result is undefined", "The result is $1$"],
    correctAnswerIndex=2,
    questionText="What happens if we plug in $x=0$?"
)
class Func_3_1_I_3_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Functions")

        # Create a notepad with texts
        note = Notepad(texts=[["$x$ gets closer to zero","$\\rightarrow f(x)$ increases quickly"], ["$\\rightarrow$ What will happen,","     if we plug in $x=0$"]], buff=0.3)
        self.add(note)

        # Create the coordinate system
        func = lambda x: 1/x
        cordsOld = self.add_cords([0,4, 1], [0, 4, 1], x_ticks=[1,2,3,4],y_ticks=[1,2,3,4])
        planeOld = cordsOld[0]
        func_plotted_Old = planeOld.plot(func, color=RED, x_range=[1/4, 4, 0.01], use_smoothing=False).reverse_points()
        self.add(func_plotted_Old, cordsOld)


        cords = self.add_cords([0,1, 0.2], [0, 10, 2], x_ticks=[0.2*(x+1) for x in range(5)],y_ticks=[2,4,6,8,10], x_labels=[*[np.round(0.2*(x+1),1) for x in range(4)],'1'],)
        plane = cords[0]
        func_plotted = plane.plot(func, color=RED, x_range=[0.001, 1, 0.001], use_smoothing=False).reverse_points()

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])
        self.add(cursor)

        func_ex = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.4)
        self.add(func_ex)

        # Action Sequence
        with self.voiceover(
                text="""
                Ok, so <bookmark mark="closerTo0"/> we've seen that <bookmark mark="note1"/> as x gets closer to zero, the values for f of x get larger and larger.
                
                <bookmark mark="cordsAway"/> Now, let's take a closer look at the behavior of f for small values of x.
                
                We've already seen that <bookmark mark="f1"/> f of one is equal to one, that <bookmark mark="f2"/> f of one half is equal
                to 2, and that <bookmark mark="f4"/> f of one quarter is equal to 4.
                
                If we now plug in <bookmark mark="f10"/> f of one tenth, we get 10, and if we plug in <bookmark mark="f20"/> f of one twentieth,
                we get 20.
                
                This doesn't even fit on the screen anymore, but when you <bookmark mark="func"/> connect the points, you can see that the values are still getting larger, and that they're getting
                larger fast.
                
                So we know, that the value of f of x increases, as x gets closer to zero.
                
                Now, <bookmark mark="note2"/> what will happen, if we plug x equals zero into our function?
                """
        ) as tracker:
            
            self.wait_until_bookmark("closerTo0")
            cursor.blinking=False
            x,y,_ = planeOld.c2p(4,1/4)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(MoveAlongPath(cursor, func_plotted_Old), run_time=5)
            cursor.blinking=True

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("cordsAway")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,0)
            self.play(cordsOld.animate(run_time=0.5).shift(RIGHT*5), func_plotted_Old.animate(run_time=0.5).shift(RIGHT*5), Write(cords), CursorMoveTo(cursor,x,y))
            cursor.blinking=True

            self.wait_until_bookmark("f1")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            circ1 = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(circ1)

            self.wait_until_bookmark("f2")
            x,y,_ = plane.c2p(0.5,2)
            circHalf = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(circHalf)

            self.wait_until_bookmark("f4")
            x,y,_ = plane.c2p(0.25,4)
            circQuarter = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add(circQuarter)

            self.wait_until_bookmark("f10")
            x,y,_ = plane.c2p(0.1,10)
            circTenth = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circTenth))

            self.wait_until_bookmark("f20")
            x,y,_ = plane.c2p(0.05,20)
            circTwentieth = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=2)
            self.play(Write(circTwentieth))

            self.wait_until_bookmark("func")
            self.play(Write(func_plotted))
            self.play(Unwrite(circ1), Unwrite(circHalf), Unwrite(circQuarter), Unwrite(circTenth), Unwrite(circTwentieth))

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_1_I_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Watch out!")

        warningsign = ImageMobject(assets_folder / "img" / "warningsign.png").move_to([-5,1,0])
        warningsign = warningsign.scale(3.8/warningsign.get_width())

        # Create a notepad with texts
        note = Notepad(texts=[["Plug in $x=0$", "$\\rightarrow$We get $f(0)=\\frac10$"], ["It's not possible to divide by $0$","$\\rightarrow f(0)$ is undefined"]], buff=0.3)
        self.add(note)



        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        func = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs1)
        func_0 = MathTex("f(0) = \\tfrac 10", color=c1t, font_size=fs1)
        cross_0 = Cross(color=RED)
        zero = Group(func_0, cross_0)

        f = lambda x: 1/x
        cords = self.add_cords([0,4, 1], [0, 4, 1], x_ticks=[1,2,3,4],y_ticks=[1,2,3,4])
        plane = cords[0]
        func_plotted = plane.plot(f, color=RED, x_range=[1/4, 4, 0.01], use_smoothing=False).reverse_points()

        # Action Sequence
        with self.voiceover(
                text="""
                <bookmark mark="warning"/>
                Careful!!!
                
                Remember, our function is defined as <bookmark mark="func"/> f of x equals one over x.
                If we were to <bookmark mark="note1"/> plug x equals zero into our function, the expression would be
                <bookmark mark="f0"/> f of zero equals one over zero.
                
                But it's <bookmark mark="cross"/> not possible to divide by zero, so the result of one over zero is undefined.
                
                This means, that <bookmark mark="domain"/> we're not allowed to plug x equals zero into our function!
                
                So, just to recap: the function f of x equals one over x is defined for all x except zero.
                
                <bookmark mark="cords"/>
                As the values of x get closer to zero, the values of f of x get bigger and bigger.
                
                But we can't plug x equals zero into our function.
                
                The point x equals zero is also called a singularity.
                """
        ) as tracker:
            
            self.wait_until_bookmark("warning")
            self.play(warningsign.animate.shift(RIGHT*5), run_time=0.4)
            self.wait(0.8)
            self.play(warningsign.animate.shift(RIGHT*5), run_time=0.4)

            self.wait_until_bookmark("func")
            self.play(Write(func))

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("f0")
            self.play(ReplacementTransform(func, func_0))

            self.wait_until_bookmark("cross")
            note.change_colors([0,1])
            self.play(Write(cross_0), run_time=4)

            self.wait_until_bookmark("domain")
            self.play(zero.animate.shift(UP*1.5), run_time=0.5)
            warning1 = Tex("Only defined for values", color=c1t, font_size=fs2)
            warning2 = MathTex("x\\neq0", color=c1t, font_size=fs2).next_to(warning1, DOWN, buff=0.1)
            warning = VGroup(warning1, warning2).arrange(DOWN).next_to(zero, DOWN, buff=0.4)
            self.play(Write(warning), run_time=0.8)

            self.wait_until_bookmark("cords")
            anims = [Write(cords), warning1.animate.shift(DOWN*0.55), warning2.animate.shift(DOWN*0.35), zero.animate.shift(5*RIGHT)]
            self.play(*anims, run_time=1)
            self.play(Write(func_plotted, rate_func=rate_functions.ease_out_sine), run_time=9)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_1_I_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Watch out!")

        warningsign = ImageMobject(assets_folder / "img" / "warningsign.png").move_to([-5,1,0])
        warningsign = warningsign.scale(3.8/warningsign.get_width())

        # Create a notepad with texts
        note = Notepad(texts=[["Plug in $x=0$", "$\\rightarrow$We get $f(0)=\\frac10$"], ["It's not possible to divide by $0$","$\\rightarrow f(0)$ is undefined"]], buff=0.3)
        self.add(note)



        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        func = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs1)
        func_0 = MathTex("f(0) = \\tfrac 10", color=c1t, font_size=fs1)
        cross_0 = Cross(color=RED)
        zero = Group(func_0, cross_0)

        f = lambda x: 1/x
        cords = self.add_cords([0,4, 1], [0, 4, 1], x_ticks=[1,2,3,4],y_ticks=[1,2,3,4])
        plane = cords[0]
        func_plotted = plane.plot(f, color=RED, x_range=[1/4, 4, 0.01], use_smoothing=False).reverse_points()

        # Action Sequence
        with self.voiceover(
                text="""
                <bookmark mark="warning"/>
                Careful!!!
                
                Remember, our function is defined as <bookmark mark="func"/> f of x equals one over x.
                If we were to <bookmark mark="note1"/> plug x equals zero into our function, the expression would be
                <bookmark mark="f0"/> f of zero equals one over zero.
                
                But it's <bookmark mark="cross"/> not possible to divide by zero, so the result of one over zero is undefined.
                
                This means, that <bookmark mark="domain"/> we're not allowed to plug x equals zero into our function!
                
                So, just to recap: the function f of x equals one over x is defined for all x except zero.
                
                <bookmark mark="cords"/>
                As the values of x get closer to zero, the values of f of x get bigger and bigger.
                
                But we can't plug x equals zero into our function.
                
                The point x equals zero is also called a singularity.
                """
        ) as tracker:
            
            self.wait_until_bookmark("warning")
            self.play(warningsign.animate.shift(RIGHT*5), run_time=0.4)
            self.wait(0.8)
            self.play(warningsign.animate.shift(RIGHT*5), run_time=0.4)

            self.wait_until_bookmark("func")
            self.play(Write(func))

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("f0")
            self.play(ReplacementTransform(func, func_0))

            self.wait_until_bookmark("cross")
            note.change_colors([0,1])
            self.play(Write(cross_0), run_time=4)

            self.wait_until_bookmark("domain")
            self.play(zero.animate.shift(UP*1.5), run_time=0.5)
            warning1 = Tex("Only defined for values", color=c1t, font_size=fs2)
            warning2 = MathTex("x\\neq0", color=c1t, font_size=fs2).next_to(warning1, DOWN, buff=0.1)
            warning = VGroup(warning1, warning2).arrange(DOWN).next_to(zero, DOWN, buff=0.4)
            self.play(Write(warning), run_time=0.8)

            self.wait_until_bookmark("cords")
            anims = [Write(cords), warning1.animate.shift(DOWN*0.55), warning2.animate.shift(DOWN*0.35), zero.animate.shift(5*RIGHT)]
            self.play(*anims, run_time=1)
            self.play(Write(func_plotted, rate_func=rate_functions.ease_out_sine), run_time=9)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_1_I_3_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Watch out!")

        warningsign = ImageMobject(assets_folder / "img" / "warningsign.png").move_to([-5,1,0])
        warningsign = warningsign.scale(3.8/warningsign.get_width())

        # Create a notepad with texts
        note = Notepad(texts=[["Plug in $x=0$", "$\\rightarrow$We get $f(0)=\\frac10$"], ["It's not possible to divide by $0$","$\\rightarrow f(0)$ is undefined"]], buff=0.3)
        self.add(note)



        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        func = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs1)
        func_0 = MathTex("f(0) = \\tfrac 10", color=c1t, font_size=fs1)
        cross_0 = Cross(color=RED)
        zero = Group(func_0, cross_0)

        f = lambda x: 1/x
        cords = self.add_cords([0,4, 1], [0, 4, 1], x_ticks=[1,2,3,4],y_ticks=[1,2,3,4])
        plane = cords[0]
        func_plotted = plane.plot(f, color=RED, x_range=[1/4, 4, 0.01], use_smoothing=False).reverse_points()

        # Action Sequence
        with self.voiceover(
                text="""
                Yep, that's right. We have to be
                <bookmark mark="warning"/>
                careful here!
                
                Remember, our function is defined as <bookmark mark="func"/> f of x equals one over x.
                If we were to <bookmark mark="note1"/> plug x equals zero into our function, the expression would be
                <bookmark mark="f0"/> f of zero equals one over zero.
                
                But it's <bookmark mark="cross"/> not possible to divide by zero, so the result of one over zero is undefined.
                
                This means, that <bookmark mark="domain"/> we're not allowed to plug x equals zero into our function!
                
                So, just to recap: the function f of x equals one over x is defined for all x except zero.
                
                <bookmark mark="cords"/>
                As the values of x get closer to zero, the values of f of x get bigger and bigger.
                
                But we can't plug x equals zero into our function.
                
                The point x equals zero is also called a singularity.
                """
        ) as tracker:
            
            self.wait_until_bookmark("warning")
            self.play(warningsign.animate.shift(RIGHT*5), run_time=0.4)
            self.wait(0.8)
            self.play(warningsign.animate.shift(RIGHT*5), run_time=0.4)

            self.wait_until_bookmark("func")
            self.play(Write(func))

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("f0")
            self.play(ReplacementTransform(func, func_0))

            self.wait_until_bookmark("cross")
            note.change_colors([0,1])
            self.play(Write(cross_0), run_time=4)

            self.wait_until_bookmark("domain")
            self.play(zero.animate.shift(UP*1.5), run_time=0.5)
            warning1 = Tex("Only defined for values", color=c1t, font_size=fs2)
            warning2 = MathTex("x\\neq0", color=c1t, font_size=fs2).next_to(warning1, DOWN, buff=0.1)
            warning = VGroup(warning1, warning2).arrange(DOWN).next_to(zero, DOWN, buff=0.4)
            self.play(Write(warning), run_time=0.8)

            self.wait_until_bookmark("cords")
            anims = [Write(cords), warning1.animate.shift(DOWN*0.55), warning2.animate.shift(DOWN*0.35), zero.animate.shift(5*RIGHT)]
            self.play(*anims, run_time=1)
            self.play(Write(func_plotted, rate_func=rate_functions.ease_out_sine), run_time=9)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_1_I_3_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Watch out!")

        warningsign = ImageMobject(assets_folder / "img" / "warningsign.png").move_to([-5,1,0])
        warningsign = warningsign.scale(3.8/warningsign.get_width())

        # Create a notepad with texts
        note = Notepad(texts=[["Plug in $x=0$", "$\\rightarrow$We get $f(0)=\\frac10$"], ["It's not possible to divide by $0$","$\\rightarrow f(0)$ is undefined"]], buff=0.3)
        self.add(note)



        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        func = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs1)
        func_0 = MathTex("f(0) = \\tfrac 10", color=c1t, font_size=fs1)
        cross_0 = Cross(color=RED)
        zero = Group(func_0, cross_0)

        f = lambda x: 1/x
        cords = self.add_cords([0,4, 1], [0, 4, 1], x_ticks=[1,2,3,4],y_ticks=[1,2,3,4])
        plane = cords[0]
        func_plotted = plane.plot(f, color=RED, x_range=[1/4, 4, 0.01], use_smoothing=False).reverse_points()

        # Action Sequence
        with self.voiceover(
                text="""
                <bookmark mark="warning"/>
                Careful!!!
                
                Remember, our function is defined as <bookmark mark="func"/> f of x equals one over x.
                If we were to <bookmark mark="note1"/> plug x equals zero into our function, the expression would be
                <bookmark mark="f0"/> f of zero equals one over zero.
                
                But it's <bookmark mark="cross"/> not possible to divide by zero, so the result of one over zero is undefined.
                
                This means, that <bookmark mark="domain"/> we're not allowed to plug x equals zero into our function!
                
                So, just to recap: the function f of x equals one over x is defined for all x except zero.
                
                <bookmark mark="cords"/>
                As the values of x get closer to zero, the values of f of x get bigger and bigger.
                
                But we can't plug x equals zero into our function.
                
                The point x equals zero is also called a singularity.
                """
        ) as tracker:
            
            self.wait_until_bookmark("warning")
            self.play(warningsign.animate.shift(RIGHT*5), run_time=0.4)
            self.wait(0.8)
            self.play(warningsign.animate.shift(RIGHT*5), run_time=0.4)

            self.wait_until_bookmark("func")
            self.play(Write(func))

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("f0")
            self.play(ReplacementTransform(func, func_0))

            self.wait_until_bookmark("cross")
            note.change_colors([0,1])
            self.play(Write(cross_0), run_time=4)

            self.wait_until_bookmark("domain")
            self.play(zero.animate.shift(UP*1.5), run_time=0.5)
            warning1 = Tex("Only defined for values", color=c1t, font_size=fs2)
            warning2 = MathTex("x\\neq0", color=c1t, font_size=fs2).next_to(warning1, DOWN, buff=0.1)
            warning = VGroup(warning1, warning2).arrange(DOWN).next_to(zero, DOWN, buff=0.4)
            self.play(Write(warning), run_time=0.8)

            self.wait_until_bookmark("cords")
            anims = [Write(cords), warning1.animate.shift(DOWN*0.55), warning2.animate.shift(DOWN*0.35), zero.animate.shift(5*RIGHT)]
            self.play(*anims, run_time=1)
            self.play(Write(func_plotted, rate_func=rate_functions.ease_out_sine), run_time=9)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
TASK_Func_3_1_I_4_q = SophiaTaskDefinition(
    answerOptions=["$x=0$", "There is no singularity","$x=2$", "$x=-2$"],
    correctAnswerIndex=2,
    questionText="What is the point of the singularity of $g$?"
)
class Func_3_1_I_4_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Singularities")

        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        f = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs1)
        f0 = MathTex("f(0) = \\tfrac 10", color=c1t, font_size=fs1)
        f_f = f.copy()
        f1 = Tex("Not defined for $x=0$", color=c1t, font_size=fs2)
        f2 = Tex("$\\rightarrow$ Singularity at $x=0$", color=c1t, font_size=fs2)
        f12 = VGroup(f1, f2).arrange(DOWN, aligned_edge=RIGHT, buff=0.2).next_to(f, DOWN, buff=0.2)
        g = MathTex("g(x) = \\tfrac 2{x+2}", color=RED, font_size=fs1).shift(DOWN*0.6)

        # Action Sequence
        with self.voiceover(
                text="""
                Remember, for the <bookmark mark="f"/> function f of x equals one over x, <bookmark mark="f1"/> we're not allowed to plug x equals zero into our function.
                This is because we cannot divide by zero, and if we were to plug <bookmark mark="f0"/> x equals zero into our function, the expression would be one over zero.
                
                We called the point x equals <bookmark mark="f2"/> zero a singularity, because our function is undefined at this point.
                
                Now, <bookmark mark="shift"/> consider the function <bookmark mark="g"/> g of x equals two divided by x+2.
                
                Does it also have a singularity? That means: is there a point x for which the function g is undefined?
                
                And if such a point exists, what is it?
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(f))

            self.wait_until_bookmark("f1")
            self.play(Write(f1))

            self.wait_until_bookmark("f0")
            self.play(ReplacementTransform(f, f0))

            self.wait_until_bookmark("f2")
            self.play(Write(f2), ReplacementTransform(f0, f_f),run_time=0.6)

            self.wait_until_bookmark("shift")
            self.play(f_f.animate.shift(1.5*UP), f12.animate.shift(1.5*UP), run_time=0.6)

            self.wait_until_bookmark("g")
            self.play(Write(g), run_time=0.6)
            

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_1_I_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Singularities")

        cursor = AltCursor(blinking=False, stroke_width=0)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        
        S1 = Tex("Singularity at $x$", color=c1t, font_size=fs2).next_to(title, DOWN, buff=2)
        S2 = Tex("$\\Leftrightarrow$", color=c1t, font_size=fs2).next_to(S1, DOWN, buff=0.2)
        S3a = Tex("Plugging in $x$ leads to", color=c1t, font_size=fs2)
        S3b = Tex("division by zero", color=c1t, font_size=fs2)
        S3 = VGroup(S3a, S3b).arrange(DOWN, buff=0.1).next_to(S2, DOWN, buff=0.2)
        S = VGroup(S1, S2, S3)

        g = MathTex("g","(x)", "=", "\\tfrac 2{x+2}", color=c1t, font_size=fs1).next_to(title, DOWN, buff=2)

        step1 = MathTex("x+2", "=", "0", color=c1t, font_size=fs1).next_to(g, DOWN, buff=1.5)
        step2 = MathTex("\\Downarrow", color=c1t, font_size=fs1).next_to(step1, DOWN, buff=0.5)
        step3 = MathTex("x", "=", "-2", color=c1t, font_size=fs1).next_to(step2, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not quite right...
                
                There's a <bookmark mark="singularity"/> singularity at x, <bookmark mark="whenever"/> whenever plugging in x would lead to dividing by zero, which as we know is not allowed.
                
                So, <bookmark mark="out"/> looking at <bookmark mark="g"/> g of x equals two over x plus two, we can already suspect, <bookmark mark="cursor"/> that there will be a singularity,
                because <bookmark mark="denom1"/> we're dividing by a sum involving x.
                
                To now find the value of x, where <bookmark mark="c2g"/>  g has a singularity, we must find the value of x for which the denominator is zero.
                
                This means, finding the value for which <bookmark mark="step1"/> x plus two equals zero. Clearly, this value is <bookmark mark="step23"/> x equals negative two.
                
                <bookmark mark="moveUp"/>
                This is how we find out, that g <bookmark mark="final"/> has a singularity at x equals negative two.
                
                """
        ) as tracker:
            
            self.wait_until_bookmark("singularity")
            self.play(Write(S1), run_time=1)

            self.wait_until_bookmark("whenever")
            self.play(Write(S2), Write(S3a), Write(S3b), run_time=1)

            self.wait_until_bookmark("out")
            self.play(S.animate(run_time=0.5).shift(5*RIGHT))

            self.wait_until_bookmark("g")
            self.play(Write(g), run_time=1)

            self.wait_until_bookmark("cursor")
            self.play(Write(cursor))

            self.wait_until_bookmark("denom1")
            cursor.blinking=False
            x,y,_ = g[3].get_bottom()+0.3*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("c2g")
            cursor.blinking=False
            x,y,_ = g[0].get_bottom()+0.3*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("step1")
            cursor.blinking=False
            x,y,_ = step1[0].get_left()+0.4*LEFT
            self.play(Write(step1), CursorMoveTo(cursor,x,y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("step23")
            cursor.blinking=False
            x,y,_ = step3[0].get_left()+0.4*LEFT
            self.play(Write(step2), Write(step3), CursorMoveTo(cursor,x,y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("moveUp")
            self.play(g.animate.shift(UP/2), Unwrite(step1), Unwrite(step2), step3.animate.shift(2.8*UP), run_time=1)

            self.wait_until_bookmark("final")
            center = (g.get_center()+step3.get_center())/2
            explainer = Tex("has a singularity at", color=c1t, font_size=fs2).move_to(center)
            self.play(Write(explainer), run_time=1)
            

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_1_I_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Singularities")

        cursor = AltCursor(blinking=False, stroke_width=0)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        
        S1 = Tex("Singularity at $x$", color=c1t, font_size=fs2).next_to(title, DOWN, buff=2)
        S2 = Tex("$\\Leftrightarrow$", color=c1t, font_size=fs2).next_to(S1, DOWN, buff=0.2)
        S3a = Tex("Plugging in $x$ leads to", color=c1t, font_size=fs2)
        S3b = Tex("division by zero", color=c1t, font_size=fs2)
        S3 = VGroup(S3a, S3b).arrange(DOWN, buff=0.1).next_to(S2, DOWN, buff=0.2)
        S = VGroup(S1, S2, S3)

        g = MathTex("g","(x)", "=", "\\tfrac 2{x+2}", color=c1t, font_size=fs1).next_to(title, DOWN, buff=2)

        step1 = MathTex("x+2", "=", "0", color=c1t, font_size=fs1).next_to(g, DOWN, buff=1.5)
        step2 = MathTex("\\Downarrow", color=c1t, font_size=fs1).next_to(step1, DOWN, buff=0.5)
        step3 = MathTex("x", "=", "-2", color=c1t, font_size=fs1).next_to(step2, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not quite right...
                
                There's a <bookmark mark="singularity"/> singularity at x, <bookmark mark="whenever"/> whenever plugging in x would lead to dividing by zero, which as we know is not allowed.
                
                So, <bookmark mark="out"/> looking at <bookmark mark="g"/> g of x equals two over x plus two, we can already suspect, <bookmark mark="cursor"/> that there will be a singularity,
                because <bookmark mark="denom1"/> we're dividing by a sum involving x.
                
                To now find the value of x, where <bookmark mark="c2g"/>  g has a singularity, we must find the value of x for which the denominator is zero.
                
                This means, finding the value for which <bookmark mark="step1"/> x plus two equals zero. Clearly, this value is <bookmark mark="step23"/> x equals negative two.
                
                <bookmark mark="moveUp"/>
                This is how we find out, that g <bookmark mark="final"/> has a singularity at x equals negative two.
                
                """
        ) as tracker:
            
            self.wait_until_bookmark("singularity")
            self.play(Write(S1), run_time=1)

            self.wait_until_bookmark("whenever")
            self.play(Write(S2), Write(S3a), Write(S3b), run_time=1)

            self.wait_until_bookmark("out")
            self.play(S.animate(run_time=0.5).shift(5*RIGHT))

            self.wait_until_bookmark("g")
            self.play(Write(g), run_time=1)

            self.wait_until_bookmark("cursor")
            self.play(Write(cursor))

            self.wait_until_bookmark("denom1")
            cursor.blinking=False
            x,y,_ = g[3].get_bottom()+0.3*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("c2g")
            cursor.blinking=False
            x,y,_ = g[0].get_bottom()+0.3*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("step1")
            cursor.blinking=False
            x,y,_ = step1[0].get_left()+0.4*LEFT
            self.play(Write(step1), CursorMoveTo(cursor,x,y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("step23")
            cursor.blinking=False
            x,y,_ = step3[0].get_left()+0.4*LEFT
            self.play(Write(step2), Write(step3), CursorMoveTo(cursor,x,y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("moveUp")
            self.play(g.animate.shift(UP/2), Unwrite(step1), Unwrite(step2), step3.animate.shift(2.8*UP), run_time=1)

            self.wait_until_bookmark("final")
            center = (g.get_center()+step3.get_center())/2
            explainer = Tex("has a singularity at", color=c1t, font_size=fs2).move_to(center)
            self.play(Write(explainer), run_time=1)
            

        # Wait for 4 seconds at the end of the animation
        self.wait(4)



class Func_3_1_I_4_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Singularities")

        cursor = AltCursor(blinking=False, stroke_width=0)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        
        S1 = Tex("Singularity at $x$", color=c1t, font_size=fs2).next_to(title, DOWN, buff=2)
        S2 = Tex("$\\Leftrightarrow$", color=c1t, font_size=fs2).next_to(S1, DOWN, buff=0.2)
        S3a = Tex("Plugging in $x$ leads to", color=c1t, font_size=fs2)
        S3b = Tex("division by zero", color=c1t, font_size=fs2)
        S3 = VGroup(S3a, S3b).arrange(DOWN, buff=0.1).next_to(S2, DOWN, buff=0.2)
        S = VGroup(S1, S2, S3)

        g = MathTex("g","(x)", "=", "\\tfrac 2{x+2}", color=c1t, font_size=fs1).next_to(title, DOWN, buff=2)

        step1 = MathTex("x+2", "=", "0", color=c1t, font_size=fs1).next_to(g, DOWN, buff=1.5)
        step2 = MathTex("\\Downarrow", color=c1t, font_size=fs1).next_to(step1, DOWN, buff=0.5)
        step3 = MathTex("x", "=", "-2", color=c1t, font_size=fs1).next_to(step2, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not quite right...
                
                There's a <bookmark mark="singularity"/> singularity at x, <bookmark mark="whenever"/> whenever plugging in x would lead to dividing by zero, which as we know is not allowed.
                
                So, <bookmark mark="out"/> looking at <bookmark mark="g"/> g of x equals two over x plus two, we can already suspect, <bookmark mark="cursor"/> that there will be a singularity,
                because <bookmark mark="denom1"/> we're dividing by a sum involving x.
                
                To now find the value of x, where <bookmark mark="c2g"/>  g has a singularity, we must find the value of x for which the denominator is zero.
                
                This means, finding the value for which <bookmark mark="step1"/> x plus two equals zero. Clearly, this value is <bookmark mark="step23"/> x equals negative two.
                
                <bookmark mark="moveUp"/>
                This is how we find out, that g <bookmark mark="final"/> has a singularity at x equals negative two.
                
                """
        ) as tracker:
            
            self.wait_until_bookmark("singularity")
            self.play(Write(S1), run_time=1)

            self.wait_until_bookmark("whenever")
            self.play(Write(S2), Write(S3a), Write(S3b), run_time=1)

            self.wait_until_bookmark("out")
            self.play(S.animate(run_time=0.5).shift(5*RIGHT))

            self.wait_until_bookmark("g")
            self.play(Write(g), run_time=1)

            self.wait_until_bookmark("cursor")
            self.play(Write(cursor))

            self.wait_until_bookmark("denom1")
            cursor.blinking=False
            x,y,_ = g[3].get_bottom()+0.3*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("c2g")
            cursor.blinking=False
            x,y,_ = g[0].get_bottom()+0.3*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("step1")
            cursor.blinking=False
            x,y,_ = step1[0].get_left()+0.4*LEFT
            self.play(Write(step1), CursorMoveTo(cursor,x,y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("step23")
            cursor.blinking=False
            x,y,_ = step3[0].get_left()+0.4*LEFT
            self.play(Write(step2), Write(step3), CursorMoveTo(cursor,x,y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("moveUp")
            self.play(g.animate.shift(UP/2), Unwrite(step1), Unwrite(step2), step3.animate.shift(2.8*UP), run_time=1)

            self.wait_until_bookmark("final")
            center = (g.get_center()+step3.get_center())/2
            explainer = Tex("has a singularity at", color=c1t, font_size=fs2).move_to(center)
            self.play(Write(explainer), run_time=1)
            

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_1_I_4_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Singularities")

        cursor = AltCursor(blinking=False, stroke_width=0)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        
        S1 = Tex("Singularity at $x$", color=c1t, font_size=fs2).next_to(title, DOWN, buff=2)
        S2 = Tex("$\\Leftrightarrow$", color=c1t, font_size=fs2).next_to(S1, DOWN, buff=0.2)
        S3a = Tex("Plugging in $x$ leads to", color=c1t, font_size=fs2)
        S3b = Tex("division by zero", color=c1t, font_size=fs2)
        S3 = VGroup(S3a, S3b).arrange(DOWN, buff=0.1).next_to(S2, DOWN, buff=0.2)
        S = VGroup(S1, S2, S3)

        g = MathTex("g","(x)", "=", "\\tfrac 2{x+2}", color=c1t, font_size=fs1).next_to(title, DOWN, buff=2)

        step1 = MathTex("x+2", "=", "0", color=c1t, font_size=fs1).next_to(g, DOWN, buff=1.5)
        step2 = MathTex("\\Downarrow", color=c1t, font_size=fs1).next_to(step1, DOWN, buff=0.5)
        step3 = MathTex("x", "=", "-2", color=c1t, font_size=fs1).next_to(step2, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text="""
                Yep, you got it!
                There's a <bookmark mark="singularity"/> singularity at x, <bookmark mark="whenever"/> whenever plugging in x would lead to dividing by zero, which as we know is not allowed.
                
                So, <bookmark mark="out"/> looking at <bookmark mark="g"/> g of x equals two over x plus two, we can already suspect, <bookmark mark="cursor"/> that there will be a singularity,
                because <bookmark mark="denom1"/> we're dividing by a sum involving x.
                
                To now find the value of x, where <bookmark mark="c2g"/>  g has a singularity, we must find the value of x for which the denominator is zero.
                
                This means, finding the value for which <bookmark mark="step1"/> x plus two equals zero. Clearly, this value is <bookmark mark="step23"/> x equals negative two.
                
                <bookmark mark="moveUp"/>
                This is how we find out, that g <bookmark mark="final"/> has a singularity at x equals negative two.
                
                """
        ) as tracker:
            
            self.wait_until_bookmark("singularity")
            self.play(Write(S1), run_time=1)

            self.wait_until_bookmark("whenever")
            self.play(Write(S2), Write(S3a), Write(S3b), run_time=1)

            self.wait_until_bookmark("out")
            self.play(S.animate(run_time=0.5).shift(5*RIGHT))

            self.wait_until_bookmark("g")
            self.play(Write(g), run_time=1)

            self.wait_until_bookmark("cursor")
            self.play(Write(cursor))

            self.wait_until_bookmark("denom1")
            cursor.blinking=False
            x,y,_ = g[3].get_bottom()+0.3*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("c2g")
            cursor.blinking=False
            x,y,_ = g[0].get_bottom()+0.3*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("step1")
            cursor.blinking=False
            x,y,_ = step1[0].get_left()+0.4*LEFT
            self.play(Write(step1), CursorMoveTo(cursor,x,y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("step23")
            cursor.blinking=False
            x,y,_ = step3[0].get_left()+0.4*LEFT
            self.play(Write(step2), Write(step3), CursorMoveTo(cursor,x,y), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("moveUp")
            self.play(g.animate.shift(UP/2), Unwrite(step1), Unwrite(step2), step3.animate.shift(2.8*UP), run_time=1)

            self.wait_until_bookmark("final")
            center = (g.get_center()+step3.get_center())/2
            explainer = Tex("has a singularity at", color=c1t, font_size=fs2).move_to(center)
            self.play(Write(explainer), run_time=1)
            

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_3_1_I_5(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("1/x for large x")

       
        cords = self.add_cords([0,4, 1], [0, 4, 1], x_ticks=[1,2,3,4],y_ticks=[1,2,3,4])
        plane = cords[0]

        newCords = self.add_cords([0,100, 20], [0, 1, 1/4], x_ticks=[20,40,60,80],y_ticks=[0,0.25, 0.5, 0.75,1])
        newPlane = newCords[0]

        cursor = AltCursor(stroke_width=0.0, blinking=False)
        cursor.autoFadeBackground = True
        x,y,_ = plane.c2p(0,0)
        cursor.move_to([x,y,0])

        f = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs1)
        f1 = MathTex("f(1) = 1", color=c1t, font_size=fs1).move_to(1.5*DOWN)
        f2 = MathTex("f(2) = 0.5", color=c1t, font_size=fs1).move_to(f1)
        f10 = MathTex("f(10) = 0.1", color=c1t, font_size=fs1).move_to(f1)
        f50 = MathTex("f(50) = 0.02", color=c1t, font_size=fs1).move_to(f1)
        f100 = MathTex("f(100) = 0.01", color=c1t, font_size=fs1).move_to(f1)
        func = lambda x: 1/x
        f_plotted = plane.plot(func, color=RED, x_range=[1/4, 4, 0.01], use_smoothing=False).reverse_points()
        fNewPlotted = newPlane.plot(func, color=RED, x_range=[1, 100, 0.01], use_smoothing=False)

        circs = VGroup()


        # Action Sequence
        with self.voiceover(
                text="""
                Ok, now let's return to our function <bookmark mark="f"/>f of x equals one over x.
                
                We've already seen  what happens to this function, <bookmark mark="f0"/>when we plug in values that get closer and closer to zero:
                <bookmark mark="f1"/>the function gets larger and larger.
                
                Next, we want to see what happens to the function, if we plug in numbers that are much <bookmark mark="oldCords"/> larger than one.
                
                For this, let's <bookmark mark="newCords"/> look at values of x up to one hundred.
                
                So we've already plugged in the value  <bookmark mark="fOf1"/> f of one, which is one over one, so one.
                
                If we plug in the value two, we get <bookmark mark="fOf2"/> f of two equals one divided by two, which is one half, or zero point five.
                
                Next, let's plug in the value ten. We get <bookmark mark="fOf10"/> f of ten equals one divided by ten,
                which is one tenth, or zero point 1.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(f), run_time=1)

            self.wait_until_bookmark("f0")
            self.play(f.animate.shift(DOWN*1.5), run_time=1)
            self.play(Write(cords), run_time=1)

            self.wait_until_bookmark("f1")
            self.play(Write(f_plotted), run_time=12, rate_func=rate_functions.ease_out_sine)

            self.wait_until_bookmark("oldCords")
            self.play(cords.animate.shift(5*RIGHT), f_plotted.animate.shift(5*RIGHT), run_time=1)

            self.wait_until_bookmark("newCords")
            self.play(Write(newCords), Write(cursor), run_time=1)

            self.wait_until_bookmark("fOf1")
            x,y,_ = newPlane.c2p(1,1)
            fCopy = f.copy()
            self.play(CursorMoveTo(cursor, x, y), ReplacementTransform(f, f1), run_time=1)
            circ = Circle(radius=0.1, color=RED).move_to(cursor.get_center())
            circs.add(circ)
            self.play(Write(circ), run_time=1)
            # self.play(ReplacementTransform(f1, fCopy), run_time=1)
            f = fCopy

            self.wait_until_bookmark("fOf2")
            x,y,_ = newPlane.c2p(2,0.5)
            self.play(CursorMoveTo(cursor, x, y), ReplacementTransform(f1, f2), run_time=1)
            circ = Circle(radius=0.1, color=RED).move_to(cursor.get_center())
            circs.add(circ)
            self.play(Write(circ), run_time=1)
            # self.play(ReplacementTransform(f2, fCopy), run_time=1)
            # f = fCopy

            self.wait_until_bookmark("fOf10")
            x,y,_ = newPlane.c2p(10,0.1)
            self.play(CursorMoveTo(cursor, x, y), ReplacementTransform(f2, f10), run_time=1)
            circ = Circle(radius=0.1, color=RED).move_to(cursor.get_center())
            circs.add(circ)
            self.play(Write(circ), run_time=1)
            # self.play(ReplacementTransform(f10, fCopy), run_time=1)
            # f = fCopy


        with self.voiceover(
                text="""       
                Ok, now let's plug in the value x equals fifty. If we do that, we get <bookmark mark="fOf50"/>  f of fifty equals one divided by fifty,
                which is one fiftieth, or zero point zero two.
                
                And finally, we'll plug in the value one hundred. We get <bookmark mark="fOf100"/> f of one hundred equals one divided by one hundred,
                which is one hundredth, or zero point zero one.
                <bookmark mark="fEnd"/>
                
                Connecting the dots to see the graph of the function, <bookmark mark="plot"/> we can see that the function gets smaller and smaller,
                as we plug in x-values that get larger.
                """
            ) as tracker:

            self.wait_until_bookmark("fOf50")
            x,y,_ = newPlane.c2p(50,0.02)
            self.play(CursorMoveTo(cursor, x, y), ReplacementTransform(f10, f50), run_time=1)
            circ = Circle(radius=0.1, color=RED).move_to(cursor.get_center())
            circs.add(circ)
            self.play(Write(circ), run_time=1)
            # self.play(ReplacementTransform(f50, fCopy), run_time=1)
            # f = fCopy

            self.wait_until_bookmark("fOf100")
            x,y,_ = newPlane.c2p(100,0.01)
            self.play(CursorMoveTo(cursor, x, y), ReplacementTransform(f50, f100), run_time=1)
            circ = Circle(radius=0.1, color=RED).move_to(cursor.get_center())
            circs.add(circ)
            self.play(Write(circ), run_time=1)
            # self.play(ReplacementTransform(f100, fCopy), run_time=1)
            # f = fCopy

            self.wait_until_bookmark("fEnd")
            x,y,_ = newPlane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), ReplacementTransform(f100, fCopy), run_time=1)
            cursor.blinking=True
        
            self.wait_until_bookmark("plot")
            self.play(Write(fNewPlotted), Unwrite(circs, rate_func=rate_functions.ease_out_sine), run_time=3)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
TASK_Func_3_1_I_6_q = SophiaTaskDefinition(
    answerOptions=["Yes, $x=0.000001$", "Yes, $x=0.001$","No", "Yes, $x=0.00000001$"],
    correctAnswerIndex=2,
    questionText="Is there a positive number, that is smaller than the smallest value, that $f(x)$ can reach?"
)
class Func_3_1_I_6_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["$\\frac1x$ is positive for $x>0$", "f(x) gets smaller for large values of $x$", ["Is there a positive number, that is smaller than", "the smallest value $f(x)$ can have?"]], buff=0.28)
        self.add(note)

        self.add_title("1/x for large x")

        cords = self.add_cords([0,100, 20], [0, 1, 1/4], x_ticks=[20,40,60,80],y_ticks=[0,0.25, 0.5, 0.75,1])
        plane = cords[0]

        cursor = AltCursor(stroke_width=0.0, blinking=False)
        cursor.autoFadeBackground = True
        x,y,_ = plane.c2p(0,0)
        cursor.move_to([x,y,0])

        f = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs1)
        func = lambda x: 1/x
        f_plotted = plane.plot(func, color=RED, x_range=[1, 100, 0.01], use_smoothing=False)

        circs = VGroup()


        # Action Sequence
        with self.voiceover(
                text="""
                Ok, so we know, <bookmark mark="note1"/> that for the function <bookmark mark="f"/> f of x equals one divided by x, the values don't get <bookmark mark="cords"/> negative for larger x, because one divided by something positive is always positive.
                
                We've also seen, <bookmark mark="note2"/>that <bookmark mark="plot"/> the function values get closer and closer to zero, as we plug in larger and larger x-values.
                
                Now I have a question for you but it's a bit tricky: <bookmark mark="note3"/>Is there a positive number, that is smaller than the smallest value, that f of x can reach?
                
                I mean, is there a positive number, that is smaller than one divided by 100 and smaller than 1 over 1000 and smaller than 1 over ten thousand and so on?
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("f")
            self.play(Write(f), run_time=1)

            self.wait_until_bookmark("cords")
            self.play(Write(cords), f.animate.shift(DOWN*0.6), run_time=1)

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("plot")
            self.play(Write(f_plotted), run_time=12, rate_func=rate_functions.ease_out_sine)

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_1_I_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("$\\tfrac1x$ for large $x$", tex=True)

        cords = self.add_cords([0,100, 20], [0, 1, 1/4], x_ticks=[20,40,60,80],y_ticks=[0,0.25, 0.5, 0.75,1])
        plane = cords[0]

        cursor = AltCursor(stroke_width=0.0, blinking=False)
        cursor.autoFadeBackground = True
        x,y,_ = plane.c2p(0,0)
        cursor.move_to([x,y,0])

        f = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs2)
        t1a = Tex("which is smaller than", color=c1t, font_size=fs3).next_to(f, UP)
        t1b = Tex("There is no positive number $a$,", color=c1t, font_size=fs3).next_to(t1a, UP, buff=0.1)
        t2 = Tex("for large positive x.", color=c1t, font_size=fs3).next_to(f, DOWN)
        t1a = t1a.shift(LEFT*(t1a.get_left()[0]-t1b.get_left()[0]))
        t = VGroup(t1b, t1a, t2)
        t2 = t2.shift(LEFT*(t2.get_left()[0]-t1b.get_left()[0]))
        self.add(f)

        s1 = Tex("1. Choose a tiny number $a$", color=RED, font_size=fs3).next_to(f, UP)
        e1 = Tex("Example: $a=0.001$", color=BLUE, font_size=fs3).next_to(f,DOWN)

        s2 = Tex("2. Write $a$ as a fraction", color=RED, font_size=fs3).next_to(f, UP)
        s2 = s2.shift(LEFT*(s2.get_left()[0]-s1.get_left()[0]))
        e2 = Tex("Our example: $a=\\frac{1}{1000}$", color=BLUE, font_size=fs3).next_to(f,DOWN)

        s3 = Tex("3. Double the denominator", color=RED, font_size=fs3).next_to(f, UP)
        s3 = s3.shift(LEFT*(s3.get_left()[0]-s1.get_left()[0]))
        e3 = MathTex("\\hat a=\\frac{1}{2000}","=f(2000)","<a", color=BLUE, font_size=fs3).next_to(f,DOWN)

        pbc = Tex("Proof by contradiction", color=RED, font_size=fs3).next_to(title, DOWN, buff=0.4)

        func = lambda x: 1/x
        f_plotted = plane.plot(func, color=RED, x_range=[1, 100, 0.01], use_smoothing=False)

        t = t.shift(LEFT*5)

        # Action Sequence
        with self.voiceover(
                text="""
                Nope, that's not right. <bookmark mark="preach"/> There is no positive number that is smaller than the smallest value that f of x equals one over x can obtain.
                
                But why? I'll show you using a method that mathematicians call <bookmark mark="pbc"/>proof by contradiction.
                
                First, <bookmark mark="step1"/> think about a super super tiny positive number, and call that number "a".
                <bookmark mark="e1"/> For example, we could pick the number zero point zero zero one.
                
                Second<bookmark mark="step2"/>, write that number as a fraction.
                In our example,<bookmark mark="e2"/> we would write "a" as one over one hundred.
                
                Third<bookmark mark="step3"/>, take the fraction and double the denominator.
                In our example, <bookmark mark="e3"/>we would get "a" hat equal to one over two hundred.
                
                Now, <bookmark mark="meaning"/>let's think about what this means. <bookmark mark="meaningA"/>
                First, note that f of x is equal to that number, if we plug in the value of the doubled denominator for x
                
                <bookmark mark="meaningB"/>We can also see, that the number is a smaller number than "a".
                
                This means, that no matter which positive number we pick, we can always find a value of x, for which f of x is smaller than that number.
                
                """
        ) as tracker:
            
            self.wait_until_bookmark("preach")
            self.play(t.animate.shift(RIGHT*5))

            self.wait_until_bookmark("pbc")
            self.play(Write(pbc))

            self.wait_until_bookmark("step1")
            self.play(t.animate.shift(RIGHT*5), Write(s1), pbc.animate.set_color(BLACK))

            self.wait_until_bookmark("e1")
            self.play(Write(e1))

            self.wait_until_bookmark("step2")
            self.play(s1.animate.set_color(BLACK), s1.animate.next_to(pbc, DOWN, buff=0.2), e1.animate.shift(5*RIGHT), Write(s2))

            self.wait_until_bookmark("e2")
            self.play(Write(e2))

            self.wait_until_bookmark("step3")
            self.play(s2.animate.set_color(BLACK), s2.animate.next_to(s1, DOWN, buff=0.2), e2.animate.shift(5*RIGHT), Write(s3))

            self.wait_until_bookmark("e3")
            self.play(Write(e3[0]))

            self.wait_until_bookmark("meaning")
            self.play(s3.animate.next_to(s2, DOWN, buff=0.2), s3.animate.set_color(BLACK))

            self.wait_until_bookmark("meaningA")
            self.play(Write(e3[1]))

            self.wait_until_bookmark("meaningB")
            self.play(Write(e3[2]))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_1_I_6_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("$\\tfrac1x$ for large $x$", tex=True)

        cords = self.add_cords([0,100, 20], [0, 1, 1/4], x_ticks=[20,40,60,80],y_ticks=[0,0.25, 0.5, 0.75,1])
        plane = cords[0]

        cursor = AltCursor(stroke_width=0.0, blinking=False)
        cursor.autoFadeBackground = True
        x,y,_ = plane.c2p(0,0)
        cursor.move_to([x,y,0])

        f = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs2)
        t1a = Tex("which is smaller than", color=c1t, font_size=fs3).next_to(f, UP)
        t1b = Tex("There is no positive number $a$,", color=c1t, font_size=fs3).next_to(t1a, UP, buff=0.1)
        t2 = Tex("for large positive x.", color=c1t, font_size=fs3).next_to(f, DOWN)
        t1a = t1a.shift(LEFT*(t1a.get_left()[0]-t1b.get_left()[0]))
        t = VGroup(t1b, t1a, t2)
        t2 = t2.shift(LEFT*(t2.get_left()[0]-t1b.get_left()[0]))
        self.add(f)

        s1 = Tex("1. Choose a tiny number $a$", color=RED, font_size=fs3).next_to(f, UP)
        e1 = Tex("Example: $a=0.001$", color=BLUE, font_size=fs3).next_to(f,DOWN)

        s2 = Tex("2. Write $a$ as a fraction", color=RED, font_size=fs3).next_to(f, UP)
        s2 = s2.shift(LEFT*(s2.get_left()[0]-s1.get_left()[0]))
        e2 = Tex("Our example: $a=\\frac{1}{1000}$", color=BLUE, font_size=fs3).next_to(f,DOWN)

        s3 = Tex("3. Double the denominator", color=RED, font_size=fs3).next_to(f, UP)
        s3 = s3.shift(LEFT*(s3.get_left()[0]-s1.get_left()[0]))
        e3 = MathTex("\\hat a=\\frac{1}{2000}","=f(2000)","<a", color=BLUE, font_size=fs3).next_to(f,DOWN)

        pbc = Tex("Proof by contradiction", color=RED, font_size=fs3).next_to(title, DOWN, buff=0.4)

        func = lambda x: 1/x
        f_plotted = plane.plot(func, color=RED, x_range=[1, 100, 0.01], use_smoothing=False)

        t = t.shift(LEFT*5)

        # Action Sequence
        with self.voiceover(
                text="""
                Nope, that's not right. <bookmark mark="preach"/> There is no positive number that is smaller than the smallest value that f of x equals one over x can obtain.
                
                But why? I'll show you using a method that mathematicians call <bookmark mark="pbc"/>proof by contradiction.
                
                First, <bookmark mark="step1"/> think about a super super tiny positive number, and call that number "a".
                <bookmark mark="e1"/> For example, we could pick the number zero point zero zero one.
                
                Second<bookmark mark="step2"/>, write that number as a fraction.
                In our example,<bookmark mark="e2"/> we would write "a" as one over one hundred.
                
                Third<bookmark mark="step3"/>, take the fraction and double the denominator.
                In our example, <bookmark mark="e3"/>we would get "a" hat equal to one over two hundred.
                
                Now, <bookmark mark="meaning"/>let's think about what this means. <bookmark mark="meaningA"/>
                First, note that f of x is equal to that number, if we plug in the value of the doubled denominator for x
                
                <bookmark mark="meaningB"/>We can also see, that the number is a smaller number than "a".
                
                This means, that no matter which positive number we pick, we can always find a value of x, for which f of x is smaller than that number.
                
                """
        ) as tracker:
            
            self.wait_until_bookmark("preach")
            self.play(t.animate.shift(RIGHT*5))

            self.wait_until_bookmark("pbc")
            self.play(Write(pbc))

            self.wait_until_bookmark("step1")
            self.play(t.animate.shift(RIGHT*5), Write(s1), pbc.animate.set_color(BLACK))

            self.wait_until_bookmark("e1")
            self.play(Write(e1))

            self.wait_until_bookmark("step2")
            self.play(s1.animate.set_color(BLACK), s1.animate.next_to(pbc, DOWN, buff=0.2), e1.animate.shift(5*RIGHT), Write(s2))

            self.wait_until_bookmark("e2")
            self.play(Write(e2))

            self.wait_until_bookmark("step3")
            self.play(s2.animate.set_color(BLACK), s2.animate.next_to(s1, DOWN, buff=0.2), e2.animate.shift(5*RIGHT), Write(s3))

            self.wait_until_bookmark("e3")
            self.play(Write(e3[0]))

            self.wait_until_bookmark("meaning")
            self.play(s3.animate.next_to(s2, DOWN, buff=0.2), s3.animate.set_color(BLACK))

            self.wait_until_bookmark("meaningA")
            self.play(Write(e3[1]))

            self.wait_until_bookmark("meaningB")
            self.play(Write(e3[2]))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_1_I_6_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("$\\tfrac1x$ for large $x$", tex=True)

        cords = self.add_cords([0,100, 20], [0, 1, 1/4], x_ticks=[20,40,60,80],y_ticks=[0,0.25, 0.5, 0.75,1])
        plane = cords[0]

        cursor = AltCursor(stroke_width=0.0, blinking=False)
        cursor.autoFadeBackground = True
        x,y,_ = plane.c2p(0,0)
        cursor.move_to([x,y,0])

        f = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs2)
        t1a = Tex("which is smaller than", color=c1t, font_size=fs3).next_to(f, UP)
        t1b = Tex("There is no positive number $a$,", color=c1t, font_size=fs3).next_to(t1a, UP, buff=0.1)
        t2 = Tex("for large positive x.", color=c1t, font_size=fs3).next_to(f, DOWN)
        t1a = t1a.shift(LEFT*(t1a.get_left()[0]-t1b.get_left()[0]))
        t = VGroup(t1b, t1a, t2)
        t2 = t2.shift(LEFT*(t2.get_left()[0]-t1b.get_left()[0]))
        self.add(f)

        s1 = Tex("1. Choose a tiny number $a$", color=RED, font_size=fs3).next_to(f, UP)
        e1 = Tex("Example: $a=0.001$", color=BLUE, font_size=fs3).next_to(f,DOWN)

        s2 = Tex("2. Write $a$ as a fraction", color=RED, font_size=fs3).next_to(f, UP)
        s2 = s2.shift(LEFT*(s2.get_left()[0]-s1.get_left()[0]))
        e2 = Tex("Our example: $a=\\frac{1}{1000}$", color=BLUE, font_size=fs3).next_to(f,DOWN)

        s3 = Tex("3. Double the denominator", color=RED, font_size=fs3).next_to(f, UP)
        s3 = s3.shift(LEFT*(s3.get_left()[0]-s1.get_left()[0]))
        e3 = MathTex("\\hat a=\\frac{1}{2000}","=f(2000)","<a", color=BLUE, font_size=fs3).next_to(f,DOWN)

        pbc = Tex("Proof by contradiction", color=RED, font_size=fs3).next_to(title, DOWN, buff=0.4)

        func = lambda x: 1/x
        f_plotted = plane.plot(func, color=RED, x_range=[1, 100, 0.01], use_smoothing=False)

        t = t.shift(LEFT*5)

        # Action Sequence
        with self.voiceover(
                text="""
                Yep, that's correct. <bookmark mark="preach"/> There is no positive number that is smaller than the smallest value that f of x equals one over x can obtain.
                
                But why? I'll show you using a method that mathematicians call <bookmark mark="pbc"/>proof by contradiction.
                
                First, <bookmark mark="step1"/> think about a super super tiny positive number, and call that number "a".
                <bookmark mark="e1"/> For example, we could pick the number zero point zero zero one.
                
                Second<bookmark mark="step2"/>, write that number as a fraction.
                In our example,<bookmark mark="e2"/> we would write "a" as one over one hundred.
                
                Third<bookmark mark="step3"/>, take the fraction and double the denominator.
                In our example, <bookmark mark="e3"/>we would get "a" hat equal to one over two hundred.
                
                Now, <bookmark mark="meaning"/>let's think about what this means. <bookmark mark="meaningA"/>
                First, note that f of x is equal to that number, if we plug in the value of the doubled denominator for x
                
                <bookmark mark="meaningB"/>We can also see, that the number is a smaller number than "a".
                
                This means, that no matter which positive number we pick, we can always find a value of x, for which f of x is smaller than that number.
                
                """
        ) as tracker:
            
            self.wait_until_bookmark("preach")
            self.play(t.animate.shift(RIGHT*5))

            self.wait_until_bookmark("pbc")
            self.play(Write(pbc))

            self.wait_until_bookmark("step1")
            self.play(t.animate.shift(RIGHT*5), Write(s1), pbc.animate.set_color(BLACK))

            self.wait_until_bookmark("e1")
            self.play(Write(e1))

            self.wait_until_bookmark("step2")
            self.play(s1.animate.set_color(BLACK), s1.animate.next_to(pbc, DOWN, buff=0.2), e1.animate.shift(5*RIGHT), Write(s2))

            self.wait_until_bookmark("e2")
            self.play(Write(e2))

            self.wait_until_bookmark("step3")
            self.play(s2.animate.set_color(BLACK), s2.animate.next_to(s1, DOWN, buff=0.2), e2.animate.shift(5*RIGHT), Write(s3))

            self.wait_until_bookmark("e3")
            self.play(Write(e3[0]))

            self.wait_until_bookmark("meaning")
            self.play(s3.animate.next_to(s2, DOWN, buff=0.2), s3.animate.set_color(BLACK))

            self.wait_until_bookmark("meaningA")
            self.play(Write(e3[1]))

            self.wait_until_bookmark("meaningB")
            self.play(Write(e3[2]))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_1_I_6_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("$\\tfrac1x$ for large $x$", tex=True)

        cords = self.add_cords([0,100, 20], [0, 1, 1/4], x_ticks=[20,40,60,80],y_ticks=[0,0.25, 0.5, 0.75,1])
        plane = cords[0]

        cursor = AltCursor(stroke_width=0.0, blinking=False)
        cursor.autoFadeBackground = True
        x,y,_ = plane.c2p(0,0)
        cursor.move_to([x,y,0])

        f = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs2)
        t1a = Tex("which is smaller than", color=c1t, font_size=fs3).next_to(f, UP)
        t1b = Tex("There is no positive number $a$,", color=c1t, font_size=fs3).next_to(t1a, UP, buff=0.1)
        t2 = Tex("for large positive x.", color=c1t, font_size=fs3).next_to(f, DOWN)
        t1a = t1a.shift(LEFT*(t1a.get_left()[0]-t1b.get_left()[0]))
        t = VGroup(t1b, t1a, t2)
        t2 = t2.shift(LEFT*(t2.get_left()[0]-t1b.get_left()[0]))
        self.add(f)

        s1 = Tex("1. Choose a tiny number $a$", color=RED, font_size=fs3).next_to(f, UP)
        e1 = Tex("Example: $a=0.001$", color=BLUE, font_size=fs3).next_to(f,DOWN)

        s2 = Tex("2. Write $a$ as a fraction", color=RED, font_size=fs3).next_to(f, UP)
        s2 = s2.shift(LEFT*(s2.get_left()[0]-s1.get_left()[0]))
        e2 = Tex("Our example: $a=\\frac{1}{1000}$", color=BLUE, font_size=fs3).next_to(f,DOWN)

        s3 = Tex("3. Double the denominator", color=RED, font_size=fs3).next_to(f, UP)
        s3 = s3.shift(LEFT*(s3.get_left()[0]-s1.get_left()[0]))
        e3 = MathTex("\\hat a=\\frac{1}{2000}","=f(2000)","<a", color=BLUE, font_size=fs3).next_to(f,DOWN)

        pbc = Tex("Proof by contradiction", color=RED, font_size=fs3).next_to(title, DOWN, buff=0.4)

        func = lambda x: 1/x
        f_plotted = plane.plot(func, color=RED, x_range=[1, 100, 0.01], use_smoothing=False)

        t = t.shift(LEFT*5)

        # Action Sequence
        with self.voiceover(
                text="""
                Nope, that's not right. <bookmark mark="preach"/> There is no positive number that is smaller than the smallest value that f of x equals one over x can obtain.
                
                But why? I'll show you using a method that mathematicians call <bookmark mark="pbc"/>proof by contradiction.
                
                First, <bookmark mark="step1"/> think about a super super tiny positive number, and call that number "a".
                <bookmark mark="e1"/> For example, we could pick the number zero point zero zero one.
                
                Second<bookmark mark="step2"/>, write that number as a fraction.
                In our example,<bookmark mark="e2"/> we would write "a" as one over one hundred.
                
                Third<bookmark mark="step3"/>, take the fraction and double the denominator.
                In our example, <bookmark mark="e3"/>we would get "a" hat equal to one over two hundred.
                
                Now, <bookmark mark="meaning"/>let's think about what this means. <bookmark mark="meaningA"/>
                First, note that f of x is equal to that number, if we plug in the value of the doubled denominator for x
                
                <bookmark mark="meaningB"/>We can also see, that the number is a smaller number than "a".
                
                This means, that no matter which positive number we pick, we can always find a value of x, for which f of x is smaller than that number.
                
                """
        ) as tracker:
            
            self.wait_until_bookmark("preach")
            self.play(t.animate.shift(RIGHT*5))

            self.wait_until_bookmark("pbc")
            self.play(Write(pbc))

            self.wait_until_bookmark("step1")
            self.play(t.animate.shift(RIGHT*5), Write(s1), pbc.animate.set_color(BLACK))

            self.wait_until_bookmark("e1")
            self.play(Write(e1))

            self.wait_until_bookmark("step2")
            self.play(s1.animate.set_color(BLACK), s1.animate.next_to(pbc, DOWN, buff=0.2), e1.animate.shift(5*RIGHT), Write(s2))

            self.wait_until_bookmark("e2")
            self.play(Write(e2))

            self.wait_until_bookmark("step3")
            self.play(s2.animate.set_color(BLACK), s2.animate.next_to(s1, DOWN, buff=0.2), e2.animate.shift(5*RIGHT), Write(s3))

            self.wait_until_bookmark("e3")
            self.play(Write(e3[0]))

            self.wait_until_bookmark("meaning")
            self.play(s3.animate.next_to(s2, DOWN, buff=0.2), s3.animate.set_color(BLACK))

            self.wait_until_bookmark("meaningA")
            self.play(Write(e3[1]))

            self.wait_until_bookmark("meaningB")
            self.play(Write(e3[2]))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_3_1_I_7(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["$x>0\\Rightarrow f(x)>0$", "Shape of f(x)", "Singularities"], buff=0.28)
        self.add(note)

        title = self.add_title("Rational Functions")

        cords = self.add_cords([0,4, 1], [0, 4, 1], x_ticks=[1,2,3,4],y_ticks=[1,2,3,4])
        plane = cords[0]

        func = lambda x: 1/x
        plotted_right = plane.plot(func, color=RED, x_range=[1, 4, 0.01], use_smoothing=False)
        plotted_left = plane.plot(func, color=RED, x_range=[0.25, 1, 0.01], use_smoothing=False).reverse_points()

        cursor = AltCursor(stroke_width=0.0, blinking=False)
        cursor.autoFadeBackground = True
        x,y,_ = plane.c2p(0,0)
        cursor.move_to([x,y,0])

        f = Tex("$f(x) = \\tfrac 1x$","$>0$", color=c1t, font_size=fs1)
        cond = Tex("for $x\\geq0$", color=c3t, font_size=fs2)
        Group(f,cond).arrange(DOWN, buff=0.05, aligned_edge=LEFT).shift(DOWN*0.4)

        xsmall = Tex("$x$ small", " $\\Rightarrow$ ", "$f(x)$ large", color=RED, font_size=fs2).next_to(title, DOWN, buff=1)
        xlarge = Tex("$x$ large", " $\\Rightarrow$ ", "$f(x)$ small", color=RED, font_size=fs2).next_to(xsmall, DOWN, buff=0.4)
        sL = VGroup(xsmall, xlarge)

        S1 = Tex("Singularity at $x$", color=c1t, font_size=fs2).next_to(title, DOWN, buff=2)
        S2 = Tex("$\\Leftrightarrow$", color=c1t, font_size=fs2).next_to(S1, DOWN, buff=0.2)
        S3a = Tex("Plugging in $x$ leads to", color=c1t, font_size=fs2)
        S3b = Tex("division by zero", color=c1t, font_size=fs2)
        S = VGroup(S1, S2, S3a, S3b).arrange(DOWN, buff=0.2).next_to(title, DOWN, buff=1)

        # Action Sequence
        with self.voiceover(
                text="""
                Ok, let's recap what we have learned so far about functions where we divide something by x.
                Again, let's stick to our example <bookmark mark="f"/> f of x equals one over x, and let's
                also <bookmark mark="cond"/> restrict ourselves to numbers that aren't negative.
                
                <bookmark mark="note1"/>
                First, we know that <bookmark mark="fPos"/>f of x is positive for all positive values of x.
                
                <bookmark mark="note2"/>
                Then, we also learned how the function behaves for<bookmark mark="smallLarge"/> very small and very large values of x:
                If x gets very large, we divide one by a very large number, <bookmark mark="xlarge"/>and the result gets very small.
                
                If on the other hand x gets very small, we divide one by a very small number, <bookmark mark="xsmall"/>and the result gets very large.
                
                If we combine these two insights, we can <bookmark mark="cords"/> determine what the graph looks like:
                <bookmark mark="graph"/> Starting from one, the graph gets smaller and smaller, as we move to the right.
                <bookmark mark="left"/> When moving to the left on the other hand, the graph increases rapidly, as we get closer to zero.                
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(f[0]))

            self.wait_until_bookmark("cond")
            self.play(Write(cond))

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("fPos")
            note.change_colors([0,1])
            f[1].set_color(RED)
            self.play(Write(f[1]))

            self.wait_until_bookmark("smallLarge")
            f[1].set_color(c1t)
            self.play(Write(xsmall[0]), Write(xlarge[0]))

            self.wait_until_bookmark("xlarge")
            xsmall[0].set_color(c1t)
            xlarge[0].set_color(c1t)
            self.play(Write(xlarge[1]), Write(xlarge[2]))

            self.wait_until_bookmark("xsmall")
            xlarge[1].set_color(c1t)
            xlarge[2].set_color(c1t)
            self.play(Write(xsmall[1]), Write(xsmall[2]))

            self.wait_until_bookmark("cords")
            xsmall[1].set_color(c1t)
            xsmall[2].set_color(c1t)
            self.play(Write(cords), cond.animate.shift(5*RIGHT), sL.animate.shift(5*RIGHT), Unwrite(f[1]), f[0].animate.shift(0.6*DOWN+f[0].get_center()[0]*LEFT), Write(cursor))

            self.wait_until_bookmark("graph")
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(plotted_right), MoveAlongPath(cursor, plotted_right), run_time=5)

            self.wait_until_bookmark("left")
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(plotted_left), MoveAlongPath(cursor, plotted_left), run_time=5)

        with self.voiceover(text=
            """
                <bookmark mark="note3"/>
                We also learned about <bookmark mark="out"/> singularities: As x gets closer to zero, the value of f of x gets really large.
                But <bookmark mark="sing"/>we can't actually plug in zero, because that would mean dividing by zero, which is not allowed.
                This is why we call <bookmark mark="singDef"/> zero a singularity of the function.
            """
            ) as tracker:

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

            self.wait_until_bookmark("out")
            self.play(Unwrite(cursor), cords.animate.shift(5*RIGHT), sL.animate.shift(5*RIGHT), plotted_left.animate.shift(5*RIGHT), plotted_right.animate.shift(5*RIGHT))

            self.wait_until_bookmark("sing")
            self.play(Write(S3a), Write(S3b))

            self.wait_until_bookmark("singDef")
            self.play(Write(S1), Write(S2))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
TASK_Func_3_1_I_8_q = SophiaTaskDefinition(
    answerOptions=["x close to zero -> large negative values,\n x far from zero -> small negative values", 
                   "x close to zero -> large negative values,\n x far from zero -> small positive values", 
                   "x close to zero -> small negative values,\n x far from zero -> large negative values", 
                   "x close to zero -> small negative values,\n x far from zero -> large positive values", ],
    correctAnswerIndex=0,
    questionText="How does f behave for negative values of x?"
)
class Func_3_1_I_8_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["Positive x:", "$x$ small $\\Rightarrow f(x)$ large", "$x$ large $\\Rightarrow f(x)$ small"], ["How does $f$ behave for","negative values of $x$?"]], buff=0.28)
        self.add(note)

        title = self.add_title("$\\frac1x$ for negative $x$", tex=True)

        cords = self.add_cords([-4,0, 1], [-4,0, 1], x_ticks=[-1,-2,-3,-4],y_ticks=[-1,-2,-3,-4])
        plane = cords[0]

        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2/qmark.get_width()).move_to([-5, 1, 0])

        f = Tex("$f(x) = \\tfrac 1x$","$>0$", color=c1t, font_size=fs2).shift(0.2*DOWN)
        cond = Tex("for $x<0$", color=c3t, font_size=fs3)
        Group(f,cond).arrange(DOWN, buff=0.05, aligned_edge=LEFT).shift(DOWN*0.4)

        # Action Sequence
        with self.voiceover(
                text="""
                Now, let's think about <bookmark mark="neg"/> the negative values of x.
                <bookmark mark="note1"/>
                Remember, for positive x the function was very high for small x and got smaller for larger x.
                
                <bookmark mark="cords"/>Now, <bookmark mark="note2"/>how <bookmark mark="Q"/>does f behave for small negative values of x?
                
                And how does it behave for large negative values of x?
                
                """
        ) as tracker:
            
            self.wait_until_bookmark("neg")
            self.play(Write(f[0]), Write(cond))

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("cords")
            self.play(Write(cords))

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("Q")
            self.play(qmark.animate.shift(5*RIGHT))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_1_I_8_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("$\\frac1x$ for negative $x$", tex=True)

        # Create a notepad with texts
        note = Notepad(texts=["Consider $f(x)=\\tfrac1x$ for negative x", "Plug in several values",["f(x) close to zero first", "and then decreases rapidly as $x\\rightarrow0$"]], buff=0.3)
        self.add(note)

        # Create the coordinate system
        cords = self.add_cords([-4, 0, 1], [-4, 0, 1], x_ticks=[-1,-2,-3,-4],y_ticks=[-1,-2,-3,-4])
        plane = cords[0]

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])

        func = lambda x: 1/x
        func_plotted = plane.plot(func, color=RED, x_range=[-4, -1/4, 0.01], use_smoothing=False)


        f = Tex("$f(x) = \\tfrac 1x$", color=c1t, font_size=fs2).shift(0.2*DOWN)
        cond = Tex("for $x<0$", color=c3t, font_size=fs3)
        Group(f,cond).arrange(DOWN, buff=0.05, aligned_edge=LEFT).shift(DOWN*0.6)

        # Action Sequence
        with self.voiceover(
                text="""
                Yes, that's correct!
                So, we want to know what the function <bookmark mark="f"/> f of x equals one over x looks like
                for <bookmark mark="cond"/> negative values of x.
                
                Like we did for positive values of x, let's analyze the function by <bookmark mark="cords"/> plugging in some values.
                
                If we plug in negative one, <bookmark mark="plugIn1"/> we get one divided by negative one, which is negative one.
                
                If we plug in negative two, <bookmark mark="plugIn2"/> we get one divided by negative two, which is negative one half.
                
                If we plug in negative four, <bookmark mark="plugIn4"/> we get one divided by negative four, which is negative one quarter.
                
                And so on.
                
                """
        ) as tracker:

            self.wait_until_bookmark("f")
            note.change_colors([0])
            self.play(Write(f))

            self.wait_until_bookmark("cond")
            self.play(Write(cond))

            self.wait_until_bookmark("cords")
            note.change_colors([0,1])
            self.play(Write(cords))
            self.add(cursor)

            self.wait_until_bookmark("plugIn1")
            cursor.blinking = False
            x,y,_ = plane.c2p(-1,-1)
            circ1 = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circ1))

            self.wait_until_bookmark("plugIn2")
            x,y,_ = plane.c2p(-2,-0.5)
            circ2 = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circ2))

            self.wait_until_bookmark("plugIn4")
            x,y,_ = plane.c2p(-4,-0.25)
            circ4 = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y))
            self.play(Write(circ4))
            cursor.blinking=True

        with self.voiceover(
                text="""
                Let's also plug in some values that are larger than negative one:
                
                If we plug in <bookmark mark="plugInHalf"/> negative zero point five, we get one divided by negative zero point five, which is negative two,
                
                And if we plug in <bookmark mark="plugInQuarter"/> negative zero point two five, we get one divided by negative zero point two five, which is negative four.
                
                Now that we've plugged in some values, let's <bookmark mark="plot"/> connect them on the coordinate system and see what the function looks like.
                
                As we can see, <bookmark mark="note"/> the function starts <bookmark mark="moveAlongFunc"/> with values close to zero for low x, and  then decreases as x gets larger.
                
                At first, it decreases very slowly, but then it decreases faster and faster...
                """
        )as tracker:
        
            self.wait_until_bookmark("plugInHalf")
            cursor.blinking=False
            x,y,_ = plane.c2p(-0.5,-2)
            circHalf = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circHalf))
            
            self.wait_until_bookmark("plugInQuarter")
            x,y,_ = plane.c2p(-0.25,-4)
            circQuarter = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circQuarter))
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("plot")
            self.play(Write(func_plotted), run_time=2.5)
            self.play(Unwrite(circ1), Unwrite(circ2), Unwrite(circ4), Unwrite(circHalf), Unwrite(circQuarter), run_time=0.5)

            self.wait_until_bookmark("note")
            note.change_colors([1,2])

            self.wait_until_bookmark("moveAlongFunc")
            x,y,_ = plane.c2p(-4, -1/4)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y),run_time=1)
            self.play(MoveAlongPath(cursor, func_plotted), run_time=12, rate_func=rate_functions.ease_out_sine)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_1_I_8_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("$\\frac1x$ for negative $x$", tex=True)

        # Create a notepad with texts
        note = Notepad(texts=["Consider $f(x)=\\tfrac1x$ for negative x", "Plug in several values",["f(x) close to zero first", "and then decreases rapidly as $x\\rightarrow0$"]], buff=0.3)
        self.add(note)

        # Create the coordinate system
        cords = self.add_cords([-4, 0, 1], [-4, 0, 1], x_ticks=[-1,-2,-3,-4],y_ticks=[-1,-2,-3,-4])
        plane = cords[0]

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])

        func = lambda x: 1/x
        func_plotted = plane.plot(func, color=RED, x_range=[-4, -1/4, 0.01], use_smoothing=False)


        f = Tex("$f(x) = \\tfrac 1x$", color=c1t, font_size=fs2).shift(0.2*DOWN)
        cond = Tex("for $x<0$", color=c3t, font_size=fs3)
        Group(f,cond).arrange(DOWN, buff=0.05, aligned_edge=LEFT).shift(DOWN*0.6)

        # Action Sequence
        with self.voiceover(
                text="""
                Mhm, that's not right!
                So, we want to know what the function <bookmark mark="f"/> f of x equals one over x looks like
                for <bookmark mark="cond"/> negative values of x.
                
                Like we did for positive values of x, let's analyze the function by <bookmark mark="cords"/> plugging in some values.
                
                If we plug in negative one, <bookmark mark="plugIn1"/> we get one divided by negative one, which is negative one.
                
                If we plug in negative two, <bookmark mark="plugIn2"/> we get one divided by negative two, which is negative one half.
                
                If we plug in negative four, <bookmark mark="plugIn4"/> we get one divided by negative four, which is negative one quarter.
                
                And so on.
                
                """
        ) as tracker:

            self.wait_until_bookmark("f")
            note.change_colors([0])
            self.play(Write(f))

            self.wait_until_bookmark("cond")
            self.play(Write(cond))

            self.wait_until_bookmark("cords")
            note.change_colors([0,1])
            self.play(Write(cords))
            self.add(cursor)

            self.wait_until_bookmark("plugIn1")
            cursor.blinking = False
            x,y,_ = plane.c2p(-1,-1)
            circ1 = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circ1))

            self.wait_until_bookmark("plugIn2")
            x,y,_ = plane.c2p(-2,-0.5)
            circ2 = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circ2))

            self.wait_until_bookmark("plugIn4")
            x,y,_ = plane.c2p(-4,-0.25)
            circ4 = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y))
            self.play(Write(circ4))
            cursor.blinking=True

        with self.voiceover(
                text="""
                Let's also plug in some values that are larger than negative one:
                
                If we plug in <bookmark mark="plugInHalf"/> negative zero point five, we get one divided by negative zero point five, which is negative two,
                
                And if we plug in <bookmark mark="plugInQuarter"/> negative zero point two five, we get one divided by negative zero point two five, which is negative four.
                
                Now that we've plugged in some values, let's <bookmark mark="plot"/> connect them on the coordinate system and see what the function looks like.
                
                As we can see, <bookmark mark="note"/> the function starts <bookmark mark="moveAlongFunc"/> with values close to zero for low x, and  then decreases as x gets larger.
                
                At first, it decreases very slowly, but then it decreases faster and faster...
                """
        )as tracker:
        
            self.wait_until_bookmark("plugInHalf")
            cursor.blinking=False
            x,y,_ = plane.c2p(-0.5,-2)
            circHalf = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circHalf))
            
            self.wait_until_bookmark("plugInQuarter")
            x,y,_ = plane.c2p(-0.25,-4)
            circQuarter = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circQuarter))
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("plot")
            self.play(Write(func_plotted), run_time=2.5)
            self.play(Unwrite(circ1), Unwrite(circ2), Unwrite(circ4), Unwrite(circHalf), Unwrite(circQuarter), run_time=0.5)

            self.wait_until_bookmark("note")
            note.change_colors([1,2])

            self.wait_until_bookmark("moveAlongFunc")
            x,y,_ = plane.c2p(-4, -1/4)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y),run_time=1)
            self.play(MoveAlongPath(cursor, func_plotted), run_time=12, rate_func=rate_functions.ease_out_sine)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_1_I_8_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("$\\frac1x$ for negative $x$", tex=True)

        # Create a notepad with texts
        note = Notepad(texts=["Consider $f(x)=\\tfrac1x$ for negative x", "Plug in several values",["f(x) close to zero first", "and then decreases rapidly as $x\\rightarrow0$"]], buff=0.3)
        self.add(note)

        # Create the coordinate system
        cords = self.add_cords([-4, 0, 1], [-4, 0, 1], x_ticks=[-1,-2,-3,-4],y_ticks=[-1,-2,-3,-4])
        plane = cords[0]

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])

        func = lambda x: 1/x
        func_plotted = plane.plot(func, color=RED, x_range=[-4, -1/4, 0.01], use_smoothing=False)


        f = Tex("$f(x) = \\tfrac 1x$", color=c1t, font_size=fs2).shift(0.2*DOWN)
        cond = Tex("for $x<0$", color=c3t, font_size=fs3)
        Group(f,cond).arrange(DOWN, buff=0.05, aligned_edge=LEFT).shift(DOWN*0.6)

        # Action Sequence
        with self.voiceover(
                text="""
                Mhm, that's not right!
                So, we want to know what the function <bookmark mark="f"/> f of x equals one over x looks like
                for <bookmark mark="cond"/> negative values of x.
                
                Like we did for positive values of x, let's analyze the function by <bookmark mark="cords"/> plugging in some values.
                
                If we plug in negative one, <bookmark mark="plugIn1"/> we get one divided by negative one, which is negative one.
                
                If we plug in negative two, <bookmark mark="plugIn2"/> we get one divided by negative two, which is negative one half.
                
                If we plug in negative four, <bookmark mark="plugIn4"/> we get one divided by negative four, which is negative one quarter.
                
                And so on.
                
                """
        ) as tracker:

            self.wait_until_bookmark("f")
            note.change_colors([0])
            self.play(Write(f))

            self.wait_until_bookmark("cond")
            self.play(Write(cond))

            self.wait_until_bookmark("cords")
            note.change_colors([0,1])
            self.play(Write(cords))
            self.add(cursor)

            self.wait_until_bookmark("plugIn1")
            cursor.blinking = False
            x,y,_ = plane.c2p(-1,-1)
            circ1 = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circ1))

            self.wait_until_bookmark("plugIn2")
            x,y,_ = plane.c2p(-2,-0.5)
            circ2 = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circ2))

            self.wait_until_bookmark("plugIn4")
            x,y,_ = plane.c2p(-4,-0.25)
            circ4 = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y))
            self.play(Write(circ4))
            cursor.blinking=True

        with self.voiceover(
                text="""
                Let's also plug in some values that are larger than negative one:
                
                If we plug in <bookmark mark="plugInHalf"/> negative zero point five, we get one divided by negative zero point five, which is negative two,
                
                And if we plug in <bookmark mark="plugInQuarter"/> negative zero point two five, we get one divided by negative zero point two five, which is negative four.
                
                Now that we've plugged in some values, let's <bookmark mark="plot"/> connect them on the coordinate system and see what the function looks like.
                
                As we can see, <bookmark mark="note"/> the function starts <bookmark mark="moveAlongFunc"/> with values close to zero for low x, and  then decreases as x gets larger.
                
                At first, it decreases very slowly, but then it decreases faster and faster...
                """
        )as tracker:
        
            self.wait_until_bookmark("plugInHalf")
            cursor.blinking=False
            x,y,_ = plane.c2p(-0.5,-2)
            circHalf = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circHalf))
            
            self.wait_until_bookmark("plugInQuarter")
            x,y,_ = plane.c2p(-0.25,-4)
            circQuarter = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circQuarter))
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("plot")
            self.play(Write(func_plotted), run_time=2.5)
            self.play(Unwrite(circ1), Unwrite(circ2), Unwrite(circ4), Unwrite(circHalf), Unwrite(circQuarter), run_time=0.5)

            self.wait_until_bookmark("note")
            note.change_colors([1,2])

            self.wait_until_bookmark("moveAlongFunc")
            x,y,_ = plane.c2p(-4, -1/4)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y),run_time=1)
            self.play(MoveAlongPath(cursor, func_plotted), run_time=12, rate_func=rate_functions.ease_out_sine)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_1_I_8_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("$\\frac1x$ for negative $x$", tex=True)

        # Create a notepad with texts
        note = Notepad(texts=["Consider $f(x)=\\tfrac1x$ for negative x", "Plug in several values",["f(x) close to zero first", "and then decreases rapidly as $x\\rightarrow0$"]], buff=0.3)
        self.add(note)

        # Create the coordinate system
        cords = self.add_cords([-4, 0, 1], [-4, 0, 1], x_ticks=[-1,-2,-3,-4],y_ticks=[-1,-2,-3,-4])
        plane = cords[0]

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])

        func = lambda x: 1/x
        func_plotted = plane.plot(func, color=RED, x_range=[-4, -1/4, 0.01], use_smoothing=False)


        f = Tex("$f(x) = \\tfrac 1x$", color=c1t, font_size=fs2).shift(0.2*DOWN)
        cond = Tex("for $x<0$", color=c3t, font_size=fs3)
        Group(f,cond).arrange(DOWN, buff=0.05, aligned_edge=LEFT).shift(DOWN*0.6)

        # Action Sequence
        with self.voiceover(
                text="""
                Mhm, that's not right!
                So, we want to know what the function <bookmark mark="f"/> f of x equals one over x looks like
                for <bookmark mark="cond"/> negative values of x.
                
                Like we did for positive values of x, let's analyze the function by <bookmark mark="cords"/> plugging in some values.
                
                If we plug in negative one, <bookmark mark="plugIn1"/> we get one divided by negative one, which is negative one.
                
                If we plug in negative two, <bookmark mark="plugIn2"/> we get one divided by negative two, which is negative one half.
                
                If we plug in negative four, <bookmark mark="plugIn4"/> we get one divided by negative four, which is negative one quarter.
                
                And so on.
                
                """
        ) as tracker:

            self.wait_until_bookmark("f")
            note.change_colors([0])
            self.play(Write(f))

            self.wait_until_bookmark("cond")
            self.play(Write(cond))

            self.wait_until_bookmark("cords")
            note.change_colors([0,1])
            self.play(Write(cords))
            self.add(cursor)

            self.wait_until_bookmark("plugIn1")
            cursor.blinking = False
            x,y,_ = plane.c2p(-1,-1)
            circ1 = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circ1))

            self.wait_until_bookmark("plugIn2")
            x,y,_ = plane.c2p(-2,-0.5)
            circ2 = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circ2))

            self.wait_until_bookmark("plugIn4")
            x,y,_ = plane.c2p(-4,-0.25)
            circ4 = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y))
            self.play(Write(circ4))
            cursor.blinking=True

        with self.voiceover(
                text="""
                Let's also plug in some values that are larger than negative one:
                
                If we plug in <bookmark mark="plugInHalf"/> negative zero point five, we get one divided by negative zero point five, which is negative two,
                
                And if we plug in <bookmark mark="plugInQuarter"/> negative zero point two five, we get one divided by negative zero point two five, which is negative four.
                
                Now that we've plugged in some values, let's <bookmark mark="plot"/> connect them on the coordinate system and see what the function looks like.
                
                As we can see, <bookmark mark="note"/> the function starts <bookmark mark="moveAlongFunc"/> with values close to zero for low x, and  then decreases as x gets larger.
                
                At first, it decreases very slowly, but then it decreases faster and faster...
                """
        )as tracker:
        
            self.wait_until_bookmark("plugInHalf")
            cursor.blinking=False
            x,y,_ = plane.c2p(-0.5,-2)
            circHalf = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circHalf))
            
            self.wait_until_bookmark("plugInQuarter")
            x,y,_ = plane.c2p(-0.25,-4)
            circQuarter = Circle(radius=0.1, color=RED).move_to([x,y,0])
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(circQuarter))
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("plot")
            self.play(Write(func_plotted), run_time=2.5)
            self.play(Unwrite(circ1), Unwrite(circ2), Unwrite(circ4), Unwrite(circHalf), Unwrite(circQuarter), run_time=0.5)

            self.wait_until_bookmark("note")
            note.change_colors([1,2])

            self.wait_until_bookmark("moveAlongFunc")
            x,y,_ = plane.c2p(-4, -1/4)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y),run_time=1)
            self.play(MoveAlongPath(cursor, func_plotted), run_time=12, rate_func=rate_functions.ease_out_sine)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
class Func_3_1_I_9(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["Consider our function $f(x)=\\tfrac1x$", "for positive and negative $x$"], ["Function forms two rounded edges","around x- and y-axis"]], buff=0.28)
        self.add(note)

        title = self.add_title("Rational Functions")

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]
        x_ax = plane.x_axis.copy().set_color(RED)
        y_ax = plane.y_axis.copy().set_color(RED)

        func = lambda x: 1/x
        plotted_right = plane.plot(func, color=BLUE, x_range=[0.25, 4, 0.01], use_smoothing=False).reverse_points()
        plotted_left = plane.plot(func, color=BLUE, x_range=[-4, -0.25, 0.01], use_smoothing=False)

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        f = MathTex("f(x)=\\tfrac{1}{x}", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)


        # Action Sequence
        with self.voiceover(
                text="""
                Well, now that we've analyzed the function <bookmark mark="f"/> f of x equals one over x for positive and for negative
                values of x, let's now get a good look <bookmark mark="cords"/> at the function itself.
                
                Let's first look at negative values of x<bookmark mark="fNeg"/>.
                
                So as we just saw, for large negative values of x, the function is slightly below zero, <bookmark mark="moveNeg"/>but as
                the values of x get closer and closer to zero, the function values decrease very quickly.
                
                Now, let's turn to positive x values.<bookmark mark="fPos"/>
                
                <bookmark mark="xLarge"/>For large values of x, the function values
                are very small but positive. <bookmark mark="movePos"/>As the x values get closer to zero on the other hand,
                the function values seem to explode, getting larger and larger very fast.
                
                Now, this is what the entire function f of x equals one over x looks like.
                
                <bookmark mark="note"/>
                See how the function is structured around a cross
                formed by the <bookmark mark="x"/> x axis and the <bookmark mark="y"/> y axis?
                
                It seems to consist of two rounded corners, one on the <bookmark mark="tR"/> top right of that cross,
                and one on the <bookmark mark="bL"/> bottom left of that cross.
                
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            note.change_colors([0])
            self.play(Write(f))
            
            self.wait_until_bookmark("cords")
            self.play(Write(cords))
            self.add(cursor)
            
            self.wait_until_bookmark("fNeg")
            x,y,_ = plane.c2p(-4, -0.25)
            cursor.blinking=False
            self.play(Write(plotted_left))
            self.play(CursorMoveTo(cursor,x,y))
            cursor.blinking=True

            self.wait_until_bookmark("moveNeg")
            cursor.blinking=False
            self.play(MoveAlongPath(cursor, plotted_left), run_time=6, rate_func=rate_functions.ease_out_sine)
            cursor.blinking=True
            
            self.wait_until_bookmark("fPos")
            x,y,_ = plane.c2p(4, 0.25)
            self.play(Write(plotted_right))

            self.wait_until_bookmark("xLarge")
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y))
            cursor.blinking=True

            self.wait_until_bookmark("movePos")
            cursor.blinking=False
            self.play(MoveAlongPath(cursor, plotted_right), run_time=8, rate_func=rate_functions.ease_out_sine)
            self.wait(0.2)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("note")
            note.change_colors([0,1])

            self.wait_until_bookmark("x")
            self.play(Write(x_ax), run_time=0.7)

            self.wait_until_bookmark("y")
            self.play(Write(y_ax), run_time=0.7)

            self.wait_until_bookmark("tR")
            x,y,_ = plane.c2p(2,2)
            cursor.blinking=False
            self.play(CursorMoveResize(cursor,x,y, 1.2, 1.2), run_time=0.5)

            self.wait_until_bookmark("bL")
            x,y,_ = plane.c2p(-2,-2)
            self.play(CursorMoveResize(cursor,x,y, 1.2, 1.2), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
PROTOTYPES = [
    PagePrototypeVideo.from_scene(Func_3_1_I_1),
    PagePrototypeVideo.from_scene(Func_3_1_I_2),
    PagePrototypeVideo.from_scene(Func_3_1_I_3_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_3_1_I_3_q, Func_3_1_I_3_q.__name__),
    PagePrototypeVideo.from_scene(Func_3_1_I_3_a),
    PagePrototypeVideo.from_scene(Func_3_1_I_3_b),
    PagePrototypeVideo.from_scene(Func_3_1_I_3_c),
    PagePrototypeVideo.from_scene(Func_3_1_I_3_d),
    PagePrototypeVideo.from_scene(Func_3_1_I_4_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_3_1_I_4_q, Func_3_1_I_4_q.__name__),
    PagePrototypeVideo.from_scene(Func_3_1_I_4_a),
    PagePrototypeVideo.from_scene(Func_3_1_I_4_b),
    PagePrototypeVideo.from_scene(Func_3_1_I_4_c),
    PagePrototypeVideo.from_scene(Func_3_1_I_4_d),
    PagePrototypeVideo.from_scene(Func_3_1_I_5),
    PagePrototypeVideo.from_scene(Func_3_1_I_6_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_3_1_I_6_q, Func_3_1_I_6_q.__name__),
    PagePrototypeVideo.from_scene(Func_3_1_I_6_a),
    PagePrototypeVideo.from_scene(Func_3_1_I_6_b),
    PagePrototypeVideo.from_scene(Func_3_1_I_6_c),
    PagePrototypeVideo.from_scene(Func_3_1_I_6_d),
    PagePrototypeVideo.from_scene(Func_3_1_I_7),
    PagePrototypeVideo.from_scene(Func_3_1_I_8_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_3_1_I_8_q, Func_3_1_I_8_q.__name__),
    PagePrototypeVideo.from_scene(Func_3_1_I_8_a),
    PagePrototypeVideo.from_scene(Func_3_1_I_8_b),
    PagePrototypeVideo.from_scene(Func_3_1_I_8_c),
    PagePrototypeVideo.from_scene(Func_3_1_I_8_d),
    PagePrototypeVideo.from_scene(Func_3_1_I_9),
]