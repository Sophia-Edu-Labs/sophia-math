# 2_1: Linear Functions Intro, Graph to Term

# Import necessary libraries and modules
from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
from sophialib.styles.sophiascene import *
from sophialib.styles.styleconstants import *
from sophialib.styles.sophiaobjects import *
from manim import *
from PIL import Image
import numpy as np
from pathlib import Path
from sophialib.tasks.sophiataskdefinition import SophiaTaskDefinition


#####################################
#####################################
TASK_Func_2_1_I_1_q = SophiaTaskDefinition(
    answerOptions = ["The red function", "The blue function", "The green function"],
    correctAnswerIndex = 2,
    questionText = "Which function describes the fill level over time?"
)
class Func_2_1_I_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Load and position images
        lemonade = ImageMobject(assets_folder / "img" / "lemonade.png")
        lemonade = lemonade.scale(3.5/lemonade.get_width()).move_to([-5.2, 1, 0])

        # Create the coordinate system
        cords = self.add_cords([0, 30, 6], [0, 180, 30], x_ticks=[6, 12, 18, 24], y_ticks=[60, 120, 180]).shift(DOWN)
        plane = cords[0]

        # Add title to the scene
        self.add_title("Linear Functions")

        # Create and plot piecewise linear function
        func1 = lambda x: x**2/5
        func_2 = lambda x: 180/(30**0.5) * x**0.5
        func3 = lambda x: 6 * x

        func1_plotted = plane.plot(func1, color=RED)
        Func_2_plotted = plane.plot(func_2, color=BLUE)
        func3_plotted = plane.plot(func3, color=GREEN)

        # Initialize a cursor
        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])

        # Action Sequence
        with self.voiceover(
                text="""
                We're now going to learn about a specific type of functions: - Linear Functions.
                <break time="1s"/>
                Let's start with an example. Suppose we want to enjoy <bookmark mark="lemonade"/> a cold sweet drink.
                We go to the drink dispenser and pour at a steady rate.
                This means that the glass is filled at a constant speed. <bookmark mark="cords"/>
                <break time="1s"/>
                If we plot time on  <bookmark mark="xaxis"/>the x-axis and the fill amount on <bookmark mark="yaxis"/>the y-axis ,
                then we get a function that assigns the fill amount to each point in time.
                <break time="1s"/>
                What does this function look like if the filling speed is constant?
                <break time="1s"/>
                Does it look like the red function? <bookmark mark="red"/>
                <break time="1s"/>
                Or does it look like the blue function? <bookmark mark="blue"/>
                <break time="1s"/>
                Or does it look like the green function? <bookmark mark="green"/>
                """
        ) as tracker:

            self.wait_until_bookmark("lemonade")
            self.add_shift_sound(1.5)
            self.play(lemonade.animate.shift(5*RIGHT))

            self.wait_until_bookmark("cords")
            self.add_shift_sound(1.5)
            self.play(Write(cords), Write(cursor), lemonade.animate.shift(5*RIGHT))

            self.wait_until_bookmark("xaxis")
            cursor.idle = False
            self.play(CursorMarkAxis(cursor, plane, "x"), run_time=1)

            self.wait_until_bookmark("yaxis")
            self.play(CursorMarkAxis(cursor, plane, "y"), run_time=1)
            self.wait(1)
            self.play(CursorMoveResize(cursor, xo, yo, 0.2, 0.2), run_time=.4)
            cursor.idle = True

            self.wait_until_bookmark("red")
            cursor.idle=False
            self.add(cursor.copy()._start_fading(2).add_updater(lambda c: c.move_to(func1_plotted.get_end())))
            self.add_pencil_sound(1)
            self.play(Write(func1_plotted), run_time=1)

            self.wait_until_bookmark("blue")
            self.add(cursor.copy()._start_fading(2).add_updater(lambda c: c.move_to(Func_2_plotted.get_end())))
            self.add_pencil_sound(1)
            self.play(Write(Func_2_plotted), run_time=1)

            self.wait_until_bookmark("green")
            self.add(cursor.copy()._start_fading(2).add_updater(lambda c: c.move_to(func3_plotted.get_end())))
            self.add_pencil_sound(1)
            self.play(Write(func3_plotted), run_time=1)
            cursor.idle=True

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_2_1_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([0, 30, 6], [0, 180, 30], x_ticks=[6, 12, 18, 24], y_ticks=[60, 120, 180]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        # Add title to the scene
        self.add_title("Linear Functions")

        # Create and plot piecewise linear function
        func = lambda x: 6 * x
        func_plotted = plane.plot(func, color=GREEN)

        # Create and plot piecewise linear function
        funcR = lambda x: x**2/5
        funcB = lambda x: 180/(30**0.5) * x**0.5

        funcR_plotted = plane.plot(funcR, color=RED)
        funcB_plotted = plane.plot(funcB, color=BLUE)

        # Initialize a cursor
        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=False)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not correct - It's actually the <bookmark mark="green"/> green function.
                But why does it have to be the green function?
                Let's consider the time period between <bookmark mark="sec12"/> second twelve and second <bookmark mark="sec18"/> eighteen.
                The <bookmark mark="dashed"/> dashed lines show us how much is in the glass at each of the two time points.
                And the red line on the x-axis tells us the time between the two points. We can move the red line <bookmark mark="triangle"/>
                upwards to create a <bookmark mark="slopeTriangle"/> so-called slope triangle.
                The right, vertical side of the slope triangle indicates how much the function has changed, and the bottom,
                horizontal side indicates how much time has elapsed.
                Since we are pouring the drink uniformly, the filling rate is constant.
                When we construct a slope triangle and consider the same time between two points, that is, the width is the same,
                then the height, which is the fill amount, must also be the same. <bookmark mark="moreTriangles"/>
                As we can see, this works for the green function.

                However, if we look at <bookmark mark="moreFunctions"/> the red and blue functions, we see that this does not work.
                If we draw a slope triangle <bookmark mark="redTriangle"/> on the red function and move it, we can see that the slope is not constant.
                This means that the filling rate is not constant.
                The same applies to the blue function. <bookmark mark="blueTriangle"/>, if we construct a slope triangle there,
                and then move it, we can see that the slope is not constant there either.
                
                <bookmark mark="end"/> This means: Only the green function can be the correct solution.
                """
        ) as tracker:

            self.wait_until_bookmark("green")
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda c: c.move_to(func_plotted.get_end())))
            self.play(Write(func_plotted))

            self.wait_until_bookmark("sec12")
            cursor.idle = False
            x12, y12, _ = plane.x_axis.n2p(12)
            self.play(CursorMoveResize(cursor, x12, y12, 0.2, 0.2))

            self.wait_until_bookmark("sec18")
            x15, y15, _ = plane.x_axis.n2p(15)
            self.play(CursorMoveResize(cursor, x15, y15, 2*(x15-x12), 0.1))

            self.wait_until_bookmark("dashed")
            x18, y18, _ = plane.x_axis.n2p(18)
            d1 = DashedLine(start=[x12, y12, 0], end=[x12, plane.y_axis.n2p(func(12))[1], 0], color=BLACK)
            d2 = DashedLine(start=[x18, y18, 0], end=[x18, plane.y_axis.n2p(func(18))[1], 0], color=BLACK)
            self.play(Write(d1), Write(d2))
            circ1 = Circle(radius=0.1, stroke_width=2, color=BLACK).move_to([x12, plane.y_axis.n2p(func(12))[1], 0])
            circ2 = Circle(radius=0.1, stroke_width=2, color=BLACK).move_to([x18, plane.y_axis.n2p(func(18))[1], 0])
            self.play(Write(circ1), Write(circ2))

            self.wait_until_bookmark("triangle")
            self.play(CursorMoveResize(cursor, x15, plane.y_axis.n2p(func(12))[1], 2*(x15-x12), 0.1))

            self.wait_until_bookmark("slopeTriangle")
            tri = Polygon([x12, plane.y_axis.n2p(func(12))[1], 0], [x18, plane.y_axis.n2p(func(12))[1], 0], [x18, plane.y_axis.n2p(func(18))[1], 0], color=GREEN)
            self.play(Write(tri), Unwrite(d1), Unwrite(d2), Unwrite(circ1), Unwrite(circ2), CursorMoveResize(cursor, xo, yo, 0.2, 0.2))
            cursor.idle = True

            self.wait_until_bookmark("moreTriangles")
            unit = plane.c2p(18, func(18)) - plane.c2p(12, func(12))
            tri2, tri3 = tri.copy().shift(unit), tri.copy().shift(-1*unit)
            self.play(Write(tri2), Write(tri3))

            self.wait_until_bookmark("moreFunctions")
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda c: c.move_to(funcR_plotted.get_end())))
            self.add(cursor.copy()._start_fading(2).add_updater(lambda c: c.move_to(funcB_plotted.get_end())))
            self.play(Unwrite(tri), Unwrite(tri2), Unwrite(tri3), Write(funcR_plotted), Write(funcB_plotted))

            self.wait_until_bookmark("redTriangle")
            triRed = Polygon([x12, plane.y_axis.n2p(funcR(12))[1], 0], [x18, plane.y_axis.n2p(funcR(12))[1], 0], [x18, plane.y_axis.n2p(funcR(18))[1], 0], color=RED)
            self.play(Write(triRed))
            unitRed = plane.c2p(18, funcR(18)) - plane.c2p(12, funcR(12))
            triRed2, triRed3 = triRed.copy().shift(unitRed), triRed.copy().shift(-1*unitRed)
            self.play(Write(triRed2), Write(triRed3))

            self.wait_until_bookmark("blueTriangle")
            triBlue = Polygon([x12, plane.y_axis.n2p(funcB(12))[1], 0], [x18, plane.y_axis.n2p(funcB(12))[1], 0], [x18, plane.y_axis.n2p(funcB(18))[1], 0], color=BLUE)
            self.play(Write(triBlue))
            unitBlue = plane.c2p(18, funcB(18)) - plane.c2p(12, funcB(12))
            triBlue2, triBlue3 = triBlue.copy().shift(unitBlue), triBlue.copy().shift(-1*unitBlue)
            self.play(Write(triBlue2), Write(triBlue3))

            self.wait_until_bookmark("end")
            self.play(Unwrite(triRed), Unwrite(triRed2), Unwrite(triRed3), Unwrite(triBlue), Unwrite(triBlue2), Unwrite(triBlue3), Unwrite(funcR_plotted), Unwrite(funcB_plotted))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_2_1_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([0, 30, 6], [0, 180, 30], x_ticks=[6, 12, 18, 24], y_ticks=[60, 120, 180]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        # Add title to the scene
        self.add_title("Linear Functions")

        # Create and plot piecewise linear function
        func = lambda x: 6 * x
        func_plotted = plane.plot(func, color=GREEN)

        # Create and plot piecewise linear function
        funcR = lambda x: x**2/5
        funcB = lambda x: 180/(30**0.5) * x**0.5

        funcR_plotted = plane.plot(funcR, color=RED)
        funcB_plotted = plane.plot(funcB, color=BLUE)

        # Initialize a cursor
        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=False)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not correct - It's actually the <bookmark mark="green"/> green function.
                But why does it have to be the green function?
                Let's consider the time period between <bookmark mark="sec12"/> second twelve and second <bookmark mark="sec18"/> eighteen.
                The <bookmark mark="dashed"/> dashed lines show us how much is in the glass at each of the two time points.
                And the red line on the x-axis tells us the time between the two points. We can move the red line <bookmark mark="triangle"/>
                upwards to create a <bookmark mark="slopeTriangle"/> so-called slope triangle.
                The right, vertical side of the slope triangle indicates how much the function has changed, and the bottom,
                horizontal side indicates how much time has elapsed.
                Since we are pouring the drink uniformly, the filling rate is constant.
                When we construct a slope triangle and consider the same time between two points, that is, the width is the same,
                then the height, which is the fill amount, must also be the same. <bookmark mark="moreTriangles"/>
                As we can see, this works for the green function.

                However, if we look at <bookmark mark="moreFunctions"/> the red and blue functions, we see that this does not work.
                If we draw a slope triangle <bookmark mark="redTriangle"/> on the red function and move it, we can see that the slope is not constant.
                This means that the filling rate is not constant.
                The same applies to the blue function. <bookmark mark="blueTriangle"/>, if we construct a slope triangle there,
                and then move it, we can see that the slope is not constant there either.
                
                <bookmark mark="end"/> This means: Only the green function can be the correct solution.
                """
        ) as tracker:

            self.wait_until_bookmark("green")
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda c: c.move_to(func_plotted.get_end())))
            self.play(Write(func_plotted))

            self.wait_until_bookmark("sec12")
            cursor.idle = False
            x12, y12, _ = plane.x_axis.n2p(12)
            self.play(CursorMoveResize(cursor, x12, y12, 0.2, 0.2))

            self.wait_until_bookmark("sec18")
            x15, y15, _ = plane.x_axis.n2p(15)
            self.play(CursorMoveResize(cursor, x15, y15, 2*(x15-x12), 0.1))

            self.wait_until_bookmark("dashed")
            x18, y18, _ = plane.x_axis.n2p(18)
            d1 = DashedLine(start=[x12, y12, 0], end=[x12, plane.y_axis.n2p(func(12))[1], 0], color=BLACK)
            d2 = DashedLine(start=[x18, y18, 0], end=[x18, plane.y_axis.n2p(func(18))[1], 0], color=BLACK)
            self.play(Write(d1), Write(d2))
            circ1 = Circle(radius=0.1, stroke_width=2, color=BLACK).move_to([x12, plane.y_axis.n2p(func(12))[1], 0])
            circ2 = Circle(radius=0.1, stroke_width=2, color=BLACK).move_to([x18, plane.y_axis.n2p(func(18))[1], 0])
            self.play(Write(circ1), Write(circ2))

            self.wait_until_bookmark("triangle")
            self.play(CursorMoveResize(cursor, x15, plane.y_axis.n2p(func(12))[1], 2*(x15-x12), 0.1))

            self.wait_until_bookmark("slopeTriangle")
            tri = Polygon([x12, plane.y_axis.n2p(func(12))[1], 0], [x18, plane.y_axis.n2p(func(12))[1], 0], [x18, plane.y_axis.n2p(func(18))[1], 0], color=GREEN)
            self.play(Write(tri), Unwrite(d1), Unwrite(d2), Unwrite(circ1), Unwrite(circ2), CursorMoveResize(cursor, xo, yo, 0.2, 0.2))
            cursor.idle = True

            self.wait_until_bookmark("moreTriangles")
            unit = plane.c2p(18, func(18)) - plane.c2p(12, func(12))
            tri2, tri3 = tri.copy().shift(unit), tri.copy().shift(-1*unit)
            self.play(Write(tri2), Write(tri3))

            self.wait_until_bookmark("moreFunctions")
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda c: c.move_to(funcR_plotted.get_end())))
            self.add(cursor.copy()._start_fading(2).add_updater(lambda c: c.move_to(funcB_plotted.get_end())))
            self.play(Unwrite(tri), Unwrite(tri2), Unwrite(tri3), Write(funcR_plotted), Write(funcB_plotted))

            self.wait_until_bookmark("redTriangle")
            triRed = Polygon([x12, plane.y_axis.n2p(funcR(12))[1], 0], [x18, plane.y_axis.n2p(funcR(12))[1], 0], [x18, plane.y_axis.n2p(funcR(18))[1], 0], color=RED)
            self.play(Write(triRed))
            unitRed = plane.c2p(18, funcR(18)) - plane.c2p(12, funcR(12))
            triRed2, triRed3 = triRed.copy().shift(unitRed), triRed.copy().shift(-1*unitRed)
            self.play(Write(triRed2), Write(triRed3))

            self.wait_until_bookmark("blueTriangle")
            triBlue = Polygon([x12, plane.y_axis.n2p(funcB(12))[1], 0], [x18, plane.y_axis.n2p(funcB(12))[1], 0], [x18, plane.y_axis.n2p(funcB(18))[1], 0], color=BLUE)
            self.play(Write(triBlue))
            unitBlue = plane.c2p(18, funcB(18)) - plane.c2p(12, funcB(12))
            triBlue2, triBlue3 = triBlue.copy().shift(unitBlue), triBlue.copy().shift(-1*unitBlue)
            self.play(Write(triBlue2), Write(triBlue3))

            self.wait_until_bookmark("end")
            self.play(Unwrite(triRed), Unwrite(triRed2), Unwrite(triRed3), Unwrite(triBlue), Unwrite(triBlue2), Unwrite(triBlue3), Unwrite(funcR_plotted), Unwrite(funcB_plotted))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)



class Func_2_1_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([0, 30, 6], [0, 180, 30], x_ticks=[6, 12, 18, 24], y_ticks=[60, 120, 180]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        # Add title to the scene
        self.add_title("Linear Functions")

        # Create and plot piecewise linear function
        func = lambda x: 6 * x
        func_plotted = plane.plot(func, color=GREEN)

        # Create and plot piecewise linear function
        funcR = lambda x: x**2/5
        funcB = lambda x: 180/(30**0.5) * x**0.5

        funcR_plotted = plane.plot(funcR, color=RED)
        funcB_plotted = plane.plot(funcB, color=BLUE)

        # Initialize a cursor
        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=False)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                That's correct, well done! - It's the <bookmark mark="green"/> green function.
                But why does it have to be the green function?
                Let's consider the time period between <bookmark mark="sec12"/> second twelve and second <bookmark mark="sec18"/> eighteen.
                The <bookmark mark="dashed"/> dashed lines show us how much is in the glass at each of the two time points.
                And the red line on the x-axis tells us the time between the two points. We can move the red line <bookmark mark="triangle"/>
                upwards to create a <bookmark mark="slopeTriangle"/> so-called slope triangle.
                The right, vertical side of the slope triangle indicates how much the function has changed, and the bottom,
                horizontal side indicates how much time has elapsed.
                Since we are pouring the drink uniformly, the filling rate is constant.
                When we construct a slope triangle and consider the same time between two points, that is, the width is the same,
                then the height, which is the fill amount, must also be the same. <bookmark mark="moreTriangles"/>
                As we can see, this works for the green function.

                However, if we look at <bookmark mark="moreFunctions"/> the red and blue functions, we see that this does not work.
                If we draw a slope triangle <bookmark mark="redTriangle"/> on the red function and move it, we can see that the slope is not constant.
                This means that the filling rate is not constant.
                The same applies to the blue function. <bookmark mark="blueTriangle"/>, if we construct a slope triangle there,
                and then move it, we can see that the slope is not constant there either.
                
                <bookmark mark="end"/> This means: Only the green function can be the correct solution.
                """
        ) as tracker:

            self.wait_until_bookmark("green")
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda c: c.move_to(func_plotted.get_end())))
            self.play(Write(func_plotted))

            self.wait_until_bookmark("sec12")
            cursor.idle = False
            x12, y12, _ = plane.x_axis.n2p(12)
            self.play(CursorMoveResize(cursor, x12, y12, 0.2, 0.2))

            self.wait_until_bookmark("sec18")
            x15, y15, _ = plane.x_axis.n2p(15)
            self.play(CursorMoveResize(cursor, x15, y15, 2*(x15-x12), 0.1))

            self.wait_until_bookmark("dashed")
            x18, y18, _ = plane.x_axis.n2p(18)
            d1 = DashedLine(start=[x12, y12, 0], end=[x12, plane.y_axis.n2p(func(12))[1], 0], color=BLACK)
            d2 = DashedLine(start=[x18, y18, 0], end=[x18, plane.y_axis.n2p(func(18))[1], 0], color=BLACK)
            self.play(Write(d1), Write(d2))
            circ1 = Circle(radius=0.1, stroke_width=2, color=BLACK).move_to([x12, plane.y_axis.n2p(func(12))[1], 0])
            circ2 = Circle(radius=0.1, stroke_width=2, color=BLACK).move_to([x18, plane.y_axis.n2p(func(18))[1], 0])
            self.play(Write(circ1), Write(circ2))

            self.wait_until_bookmark("triangle")
            self.play(CursorMoveResize(cursor, x15, plane.y_axis.n2p(func(12))[1], 2*(x15-x12), 0.1))

            self.wait_until_bookmark("slopeTriangle")
            tri = Polygon([x12, plane.y_axis.n2p(func(12))[1], 0], [x18, plane.y_axis.n2p(func(12))[1], 0], [x18, plane.y_axis.n2p(func(18))[1], 0], color=GREEN)
            self.play(Write(tri), Unwrite(d1), Unwrite(d2), Unwrite(circ1), Unwrite(circ2), CursorMoveResize(cursor, xo, yo, 0.2, 0.2))
            cursor.idle = True

            self.wait_until_bookmark("moreTriangles")
            unit = plane.c2p(18, func(18)) - plane.c2p(12, func(12))
            tri2, tri3 = tri.copy().shift(unit), tri.copy().shift(-1*unit)
            self.play(Write(tri2), Write(tri3))

            self.wait_until_bookmark("moreFunctions")
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda c: c.move_to(funcR_plotted.get_end())))
            self.add(cursor.copy()._start_fading(2).add_updater(lambda c: c.move_to(funcB_plotted.get_end())))
            self.play(Unwrite(tri), Unwrite(tri2), Unwrite(tri3), Write(funcR_plotted), Write(funcB_plotted))

            self.wait_until_bookmark("redTriangle")
            triRed = Polygon([x12, plane.y_axis.n2p(funcR(12))[1], 0], [x18, plane.y_axis.n2p(funcR(12))[1], 0], [x18, plane.y_axis.n2p(funcR(18))[1], 0], color=RED)
            self.play(Write(triRed))
            unitRed = plane.c2p(18, funcR(18)) - plane.c2p(12, funcR(12))
            triRed2, triRed3 = triRed.copy().shift(unitRed), triRed.copy().shift(-1*unitRed)
            self.play(Write(triRed2), Write(triRed3))

            self.wait_until_bookmark("blueTriangle")
            triBlue = Polygon([x12, plane.y_axis.n2p(funcB(12))[1], 0], [x18, plane.y_axis.n2p(funcB(12))[1], 0], [x18, plane.y_axis.n2p(funcB(18))[1], 0], color=BLUE)
            self.play(Write(triBlue))
            unitBlue = plane.c2p(18, funcB(18)) - plane.c2p(12, funcB(12))
            triBlue2, triBlue3 = triBlue.copy().shift(unitBlue), triBlue.copy().shift(-1*unitBlue)
            self.play(Write(triBlue2), Write(triBlue3))

            self.wait_until_bookmark("end")
            self.play(Unwrite(triRed), Unwrite(triRed2), Unwrite(triRed3), Unwrite(triBlue), Unwrite(triBlue2), Unwrite(triBlue3), Unwrite(funcR_plotted), Unwrite(funcB_plotted))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)




#####################################
#####################################
class Func_2_1_I_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-3, 3, 1], x_ticks=[-3, -2, -1, 1, 2,3], y_ticks=[-3, -2, -1, 1, 2,3],).shift(DOWN*.2)
        plane = cords[0]

        # Add title to the scene
        self.add_title("Linear Functions")

        # Create and plot piecewise linear function
        func1 = lambda x:  2/3*x + 1
        func_2 = lambda x: -x**+2

        func1_plotted = plane.plot(func1, color=RED)
        Func_2_plotted = plane.plot(func_2, color=BLUE)

        funcTex = MathTex("f(x)=ax+b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=.6)

        # Initialize a cursor
        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])
        self.add(cursor)
        e1 = Tex("1. The slope is constant", color=c1t, font_size=fs3)
        e2 = Tex("2. The graph is a straight line", color=c1t, font_size=fs3)
        e3 = Tex("3. The function has the form\\\\$f(x)=ax+b$", tex_environment="flushright", color=c1t, font_size=fs3)
        explanations = VGroup(e1, e2, e3).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(funcTex, DOWN, buff=.6)
        
        # Action Sequence
        with self.voiceover(
                text="""
                Let's formally define: What is a linear function?
                <break time="0.5s"/>
                There are three ways to explain it.
                <bookmark mark="constant"/> First: A linear function is a function with a constant slope.
                We just discussed that. That means, and this is the second way to explain linear 
                functions, <bookmark mark="straight"/> the graph is a straight line.
                <break time="0.5s"/>
                Both of these conditions are met when the function has the form <bookmark mark="term"/>
                f of x equals "a" times "x" plus "b", where we can plug in any number for "a" and "b". That's the third
                way to define linear functions.
                """
        ) as tracker:

            self.play(Write(cords))

            self.wait_until_bookmark("constant")
            self.play(Write(e1), run_time=.3)

            self.wait_until_bookmark("straight")
            self.play(Write(e2), run_time=.3)
            self.play(Write(func1_plotted))

            self.wait_until_bookmark("term")
            self.play(Write(e3), run_time=.3)
            self.play(Write(funcTex))

        # Wait for 4 seconds at the end of animation
        self.wait(4)


#####################################
#####################################
TASK_Func_2_1_I_3_q = SophiaTaskDefinition(
    answerOptions=["The green function", "The purple function", "The orange function"],
    correctAnswerIndex=0,
    questionText="Which of the three is a linear function?"
)

class Func_2_1_I_3_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-3, 3, 1], x_ticks=[-3, -2, -1, 1, 2,3], y_ticks=[-3, -2, -1, 1, 2,3],).shift(DOWN)
        plane = cords[0]

        # Add title to the scene
        self.add_title("Linear Functions")

        # Create and plot piecewise linear function
        func1 = lambda x: 2/3*x + 1
        func_2 = lambda x: -x + 2
        func3 = lambda x: 0.5*x - 1
        func4 = lambda x: -0.5*x + 1 + x**2/5
        func5 = lambda x: -0.5*x**2+2

        func1_plotted = plane.plot(func1, color=RED)
        Func_2_plotted = plane.plot(func_2, color=BLUE)
        func3_plotted = plane.plot(func3, color=GREEN)
        func4_plotted = plane.plot(func4, color=ORANGE)
        func5_plotted = plane.plot(func5, color=PURPLE)

        # Initialize a cursor
        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Ok, so the red function was a linear function.
                It has a constant slope, so its graph is a straight line.
                <break time="1s"/>
                <bookmark mark="blue"/> the blue function is also a linear function.
                Because it also has a constant slope, and its graph is also a straight line.
                <break time="1.5s"/>
                Now, consider <bookmark mark="green"/> the green, <bookmark mark="purple"/>the purple,
                and <bookmark mark="orange"/>the orange functions.<break time="1.5s"/>
                Only one of these three functions is a linear function.
                <break time="0.5s"/>
                Which one is it?
                """
        ) as tracker:

            self.play(Write(cords))
            self.add_pencil_sound(1)
            self.play(Write(func1_plotted), run_time=1)

            self.wait_until_bookmark("blue")
            self.add_pencil_sound(1)
            self.play(Write(Func_2_plotted), run_time=1)

            self.wait_until_bookmark("green")
            self.add_pencil_sound(1)
            self.play(Write(func3_plotted), Unwrite(func1_plotted), Unwrite(Func_2_plotted), run_time=1)

            self.wait_until_bookmark("purple")
            self.add_pencil_sound(1)
            self.play(Write(func5_plotted), run_time=1)

            self.wait_until_bookmark("orange")
            self.add_pencil_sound(1)
            self.play(Write(func4_plotted), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)



class Func_2_1_I_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-3, 3, 1], x_ticks=[-3, -2, -1, 1, 2,3], y_ticks=[-3, -2, -1, 1, 2,3],).shift(DOWN)
        plane = cords[0]

        # Add title to the scene
        self.add_title("Linear Functions")

        # Create and plot piecewise linear function
        func3 = lambda x: 0.5*x - 1
        func4 = lambda x: -0.5*x + 1 + x**2/5
        func5 = lambda x: -0.5*x**2+2

        func3_plotted = plane.plot(func3, color=GREEN)
        func4_plotted = plane.plot(func4, color=ORANGE)
        func5_plotted = plane.plot(func5, color=PURPLE)

        # Initialize a cursor
        cursor = AltCursor()

        # Action Sequence
        with self.voiceover(
                text="""
                That's correct: Only <bookmark mark="green"/> the green function is a linear function.
                It has a constant slope, so its graph is a straight line.
                <break time="1s"/>
                The <bookmark mark="purple"/> purple and <bookmark mark="orange"/> orange functions
                are not linear functions because their graphs are not straight lines, and their slopes
                are not constant.
                """
        ) as tracker:

            self.play(Write(cords))

            self.wait_until_bookmark("green")
            self.add_pencil_sound(1)
            self.play(Create(func3_plotted), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("purple")
            self.add_pencil_sound(1)
            self.play(Create(func5_plotted), run_time=1)

            self.wait_until_bookmark("orange")
            self.add_pencil_sound(1)
            self.play(Create(func4_plotted), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_2_1_I_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-3, 3, 1], x_ticks=[-3, -2, -1, 1, 2,3], y_ticks=[-3, -2, -1, 1, 2,3],).shift(DOWN)
        plane = cords[0]

        # Add title to the scene
        self.add_title("Linear Functions")

        # Create and plot piecewise linear function
        func3 = lambda x: 0.5*x - 1
        func4 = lambda x: -0.5*x + 1 + x**2/5
        func5 = lambda x: -0.5*x**2+2

        func3_plotted = plane.plot(func3, color=GREEN)
        func4_plotted = plane.plot(func4, color=ORANGE)
        func5_plotted = plane.plot(func5, color=PURPLE)

        # Initialize a cursor
        cursor = AltCursor()

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right: Only <bookmark mark="green"/> the green function is a linear function.
                It has a constant slope, so its graph is a straight line.
                <break time="1s"/>
                The <bookmark mark="purple"/> purple and <bookmark mark="orange"/> orange functions
                are not linear functions because their graphs are not straight lines, and their slopes
                are not constant.
                """
        ) as tracker:

            self.play(Write(cords))

            self.wait_until_bookmark("green")
            self.add_pencil_sound(1)
            self.play(Create(func3_plotted), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("purple")
            self.add_pencil_sound(1)
            self.play(Create(func5_plotted), run_time=1)

            self.wait_until_bookmark("orange")
            self.add_pencil_sound(1)
            self.play(Create(func4_plotted), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_2_1_I_3_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-3, 3, 1], x_ticks=[-3, -2, -1, 1, 2,3], y_ticks=[-3, -2, -1, 1, 2,3],).shift(DOWN)
        plane = cords[0]

        # Add title to the scene
        self.add_title("Linear Functions")

        # Create and plot piecewise linear function
        func3 = lambda x: 0.5*x - 1
        func4 = lambda x: -0.5*x + 1 + x**2/5
        func5 = lambda x: -0.5*x**2+2

        func3_plotted = plane.plot(func3, color=GREEN)
        func4_plotted = plane.plot(func4, color=ORANGE)
        func5_plotted = plane.plot(func5, color=PURPLE)

        # Initialize a cursor
        cursor = AltCursor()

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right: Only <bookmark mark="green"/> the green function is a linear function.
                It has a constant slope, so its graph is a straight line.
                <break time="1s"/>
                The <bookmark mark="purple"/> purple and <bookmark mark="orange"/> orange functions
                are not linear functions because their graphs are not straight lines, and their slopes
                are not constant.
                """
        ) as tracker:

            self.play(Write(cords))

            self.wait_until_bookmark("green")
            self.add_pencil_sound(1)
            self.play(Create(func3_plotted), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("purple")
            self.add_pencil_sound(1)
            self.play(Create(func5_plotted), run_time=1)

            self.wait_until_bookmark("orange")
            self.add_pencil_sound(1)
            self.play(Create(func4_plotted), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
TASK_Func_2_1_I_4_q = SophiaTaskDefinition(
    answerOptions=["$f(x)=2x^2-4$", "$g(x)=2x-4$", "$h(x)=2/x-4$"],
    correctAnswerIndex=1,
    questionText="Which of the functions is linear?"
)

# Class for creating the animation scene
class Func_2_1_I_4_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title("Linear Functions")

        # Create and plot piecewise linear function
        func1 = MathTex("f(x)=2x^2-4", color=c1t, font_size=fs1)
        func_2 = MathTex("g(x)=2x-4", color=c1t, font_size=fs1)
        func3 = MathTex("h(x)=2/x-4", color=c1t, font_size=fs1)
        funcs = VGroup(func1, func_2, func3).arrange(DOWN, buff=.6, aligned_edge=LEFT)

        cords = self.add_cords([-3, 3, 1], [-3, 3, 1], x_ticks=[-3, -2, -1, 1, 2,3], y_ticks=[-3, -2, -1, 1, 2,3],).shift(DOWN)
        plane = cords[0]
        func = lambda x: x/2-1
        plot = plane.plot(func, color=BLUE)
        xo,yo,_ = plane.c2p(0,0)

        # Initialize a cursor
        cursor = AltCursor(x=xo, y=yo)
        cursor.add_updater(lambda m, dt: self.bring_to_front(cursor))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                So, now we have seen what a linear function is by looking at the functions graph.
                <break time="0.5s"/>
                But we can <bookmark mark="unplot"/>also recognize whether a function is linear based on its terms.
                Now I will show you three functions. <bookmark mark="note2"/> Which of them is linear?
                <break time="1s"/>
                Is it the <bookmark mark="f"/> function f of x equals two x squared minus four?
                <break time="1s"/>
                Or the <bookmark mark="g"/> function g of x equals two x minus four?
                <break time="1s"/>
                Or the <bookmark mark="h"/> function h of x equals two over x minus four?
                """
        ) as tracker:
            
            self.play(Write(cords))
            x,y,_ = plot.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda c: c.move_to(plot.get_end())))
            self.add_pencil_sound(1)
            cursor.idle=True
            self.play(Create(plot), run_time=1)
            
            self.wait_until_bookmark("unplot")
            self.play(Unwrite(cords), Unwrite(plot), run_time=1)

            self.wait_until_bookmark("f")
            cursor.idle=False
            x, y, _ = func1.get_left() + LEFT * 0.2
            self.play(Write(func1), CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("g")
            x, y, _ = func_2.get_left() + LEFT * 0.2
            self.play(Write(func_2), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("h")
            x, y, _ = func3.get_left() + LEFT * 0.2
            self.play(Write(func3), CursorMoveTo(cursor, x, y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_2_1_I_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title("Linear Functions")

        # Create and plot piecewise linear function
        func1 = MathTex("f(x)=2x^2-4", color=c1t, font_size=fs1)
        func_2 = MathTex("g(x)=2x-4", color=c1t, font_size=fs1)
        func3 = MathTex("h(x)=2/x-4", color=c1t, font_size=fs1)
        self.add(VGroup(func1, func_2, func3).arrange(DOWN, buff=.6, aligned_edge=LEFT))

        # Initialize a cursor
        cursor = AltCursor(idle=True)
        cursor.autoFadeBackground = True
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right.
                <break time="0.5s"/> But which one is linear?
                Let's go through the functions one by one:
                <break time="0.5s"/>
                <bookmark mark="f"/> The function f of x equals two x squared minus four is <bookmark mark="not1"/> not linear
                because the exponent of x is not equal to one.
                Specifically, functions that contain x squared, x cubed, or similar terms are not linear!
                <break time="0.5s"/>
                <bookmark mark="g"/> The function g of x equals two x minus four is <bookmark mark="yes"/> linear!
                It only contains x and simple numbers. It has the structure "a" times x plus b, and in this case, a is two and b is minus four.
                <break time="0.5s"/>
                <bookmark mark="h"/> The function h of x equals two over x minus four is <bookmark mark="not2"/> not linear
                because it involves dividing by x. If there's division by x, the function is not linear!
                """
        ) as tracker:

            self.wait_until_bookmark("f")
            cursor.idle = False
            x, y, _ = func1.get_left() + LEFT * 0.2
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("not1")
            self.play(func1.animate.set_color(RED), run_time=.3)

            self.wait_until_bookmark("g")
            x, y, _ = func_2.get_left() + LEFT * 0.2
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("yes")
            self.play(func_2.animate.set_color(GREEN), run_time=.3)

            self.wait_until_bookmark("h")
            x, y, _ = func3.get_left() + LEFT * 0.2
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("not2")
            self.play(func3.animate.set_color(RED), run_time=.3)

        self.wait(4)



class Func_2_1_I_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title("Linear Functions")

        # Create and plot piecewise linear function
        func1 = MathTex("f(x)=2x^2-4", color=c1t, font_size=fs1)
        func_2 = MathTex("g(x)=2x-4", color=c1t, font_size=fs1)
        func3 = MathTex("h(x)=2/x-4", color=c1t, font_size=fs1)
        self.add(VGroup(func1, func_2, func3).arrange(DOWN, buff=.6, aligned_edge=LEFT))

        # Initialize a cursor
        cursor = AltCursor(idle=True)
        cursor.autoFadeBackground = True
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                That's right, well done.
                <break time="0.5s"/> But which one is linear?
                Let's go through the functions one by one:
                <break time="0.5s"/>
                <bookmark mark="f"/> The function f of x equals two x squared minus four is <bookmark mark="not1"/> not linear
                because the exponent of x is not equal to one.
                Specifically, functions that contain x squared, x cubed, or similar terms are not linear!
                <break time="0.5s"/>
                <bookmark mark="g"/> The function g of x equals two x minus four is <bookmark mark="yes"/> linear!
                It only contains x and simple numbers. It has the structure "a" times x plus b, and in this case, a is two and b is minus four.
                <break time="0.5s"/>
                <bookmark mark="h"/> The function h of x equals two over x minus four is <bookmark mark="not2"/> not linear
                because it involves dividing by x. If there's division by x, the function is not linear!
                """
        ) as tracker:

            self.wait_until_bookmark("f")
            cursor.idle = False
            x, y, _ = func1.get_left() + LEFT * 0.2
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("not1")
            self.play(func1.animate.set_color(RED), run_time=.3)

            self.wait_until_bookmark("g")
            x, y, _ = func_2.get_left() + LEFT * 0.2
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("yes")
            self.play(func_2.animate.set_color(GREEN), run_time=.3)

            self.wait_until_bookmark("h")
            x, y, _ = func3.get_left() + LEFT * 0.2
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("not2")
            self.play(func3.animate.set_color(RED), run_time=.3)

        self.wait(4)
        

class Func_2_1_I_4_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title("Linear Functions")

        # Create and plot piecewise linear function
        func1 = MathTex("f(x)=2x^2-4", color=c1t, font_size=fs1)
        func_2 = MathTex("g(x)=2x-4", color=c1t, font_size=fs1)
        func3 = MathTex("h(x)=2/x-4", color=c1t, font_size=fs1)
        self.add(VGroup(func1, func_2, func3).arrange(DOWN, buff=.6, aligned_edge=LEFT))

        # Initialize a cursor
        cursor = AltCursor(idle=True)
        cursor.autoFadeBackground = True
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right.
                <break time="0.5s"/> But which one is linear?
                Let's go through the functions one by one:
                <break time="0.5s"/>
                <bookmark mark="f"/> The function f of x equals two x squared minus four is <bookmark mark="not1"/> not linear
                because the exponent of x is not equal to one.
                Specifically, functions that contain x squared, x cubed, or similar terms are not linear!
                <break time="0.5s"/>
                <bookmark mark="g"/> The function g of x equals two x minus four is <bookmark mark="yes"/> linear!
                It only contains x and simple numbers. It has the structure "a" times x plus b, and in this case, a is two and b is minus four.
                <break time="0.5s"/>
                <bookmark mark="h"/> The function h of x equals two over x minus four is <bookmark mark="not2"/> not linear
                because it involves dividing by x. If there's division by x, the function is not linear!
                """
        ) as tracker:

            self.wait_until_bookmark("f")
            cursor.idle = False
            x, y, _ = func1.get_left() + LEFT * 0.2
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("not1")
            self.play(func1.animate.set_color(RED), run_time=.3)

            self.wait_until_bookmark("g")
            x, y, _ = func_2.get_left() + LEFT * 0.2
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("yes")
            self.play(func_2.animate.set_color(GREEN), run_time=.3)

            self.wait_until_bookmark("h")
            x, y, _ = func3.get_left() + LEFT * 0.2
            self.play(CursorMoveTo(cursor, x, y), run_time=.3)

            self.wait_until_bookmark("not2")
            self.play(func3.animate.set_color(RED), run_time=.3)

        self.wait(4)




#####################################
#####################################
TASK_Func_2_1_I_5_q = SophiaTaskDefinition(
    answerOptions=["The line moves upwards", "The line moves downwards", "The line becomes flatter", "The line becomes steeper"],
    correctAnswerIndex=3,
    questionText="What happens when we choose $a>1$?"
)

class Func_2_1_I_5_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title("Focus on Function Term")

        # Create the coordinate system
        cords = self.add_cords([-4, 4, 1], [-4, 4, 1], x_ticks=[-4, -2, 0, 2, 4], y_ticks=[-4, -2, 0, 2, 4]).shift(DOWN*.6)
        plane = cords[0]

        # Create and plot piecewise linear function
        func = MathTex("f", "(x)", "=ax+", "b", color=c1t, font_size=fs2).next_to(cords, DOWN).shift(UP * 1.5)
        func_2 = MathTex("f", "(x)", "=", "x", color=c1t, font_size=fs2).next_to(cords, DOWN).shift(UP * 1.5)
        a, b = ValueTracker(1), ValueTracker(0)
        a_decimal = DecimalNumber(1, font_size=fs2, num_decimal_places=1).next_to(func, LEFT, buff=0.5)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value() * x + b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                So, let's take a closer look at the function term of linear functions.
                The <bookmark mark="f"/> general term for linear functions <bookmark mark="tf"/> 
                is f <bookmark mark="tx"/>of x<bookmark mark="tax"/> equals
                "a" times x <bookmark mark="tb"/>plus b.
                <break time="0.5s"/>
                What role does the <bookmark mark="a"/>value of "a" play, and what role does the <bookmark mark="b"/>value of b play?
                To find out, let's consider a specific example,
                <bookmark mark="example"/>namely the <bookmark mark="ef"/>function f <bookmark mark="ex1"/>of x <bookmark mark="ex2"/>equals x,
                which means "a" is equal to 1 and b is 0. The function <bookmark mark="plot"/>looks like this.
                <break time="0.5s"/>
                Now, what happens when we change the value of "a"?<bookmark mark="qmark"/>
                <break time="0.5s"/>
                Specifically, what happens when we substitute a value greater than 1 for "a"?
                """
        ) as tracker:

            self.wait_until_bookmark("f")
            cursor.idle = False
            self.play(Write(func))

            self.wait_until_bookmark("tf")
            x, y, _ = func.submobjects[0].get_center() + DOWN * 0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("tx")
            x, y, _ = func.submobjects[1].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("tax")
            x, y, _ = func.submobjects[2].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("tb")
            x, y, _ = func.submobjects[3].get_center() + DOWN * 0.4 + LEFT * 0.1
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("a")
            x, y, _ = func.submobjects[2].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("b")
            x, y, _ = func.submobjects[3].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("example")
            x, y, _ = func_2.submobjects[0].get_center() + DOWN * 0.4
            self.play(TransformMatchingTex(func, func_2), CursorMoveTo(cursor, x, y))

            self.wait_until_bookmark("ex1")
            x, y, _ = func_2.submobjects[1].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("ex2")
            x, y, _ = func_2.submobjects[3].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("plot")
            x, y, _ = plane.c2p(0, 0)
            self.play(func_2.animate.shift(DOWN * 1.5), Write(cords), CursorMoveTo(cursor, x, y), Write(updated_f),
                      run_time=1)
            cursor.idle = True

            self.wait_until_bookmark("qmark")
            cursor.idle = False
            func_3 = Tex("$f(x)=ax$, $a>1$", color=c1t, font_size=fs2).next_to(cords, DOWN).shift(UP * 1.5)
            self.play(Transform(func_2, func_3), run_time=1)
            self.draw_qmark(cursor, DOWN*2.6, run_time=3)

        # Wait for 4 seconds at the end of animation
        self.wait(4)



class Func_2_1_I_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title("Focus on Function Term")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3, -1, 0, 1, 3], y_ticks=[-4, -2, 0, 2, 4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f", "(x)", "=", "x", color=c1t, font_size=fs2).next_to(cords, DOWN)
        func_2 = MathTex("f", "(x)", "=", "\\,\\,\\,\\,\\,\\,\\,\\,\\,", "\\cdot x", color=c1t, font_size=fs2).next_to(cords, DOWN)
        a, b = ValueTracker(1), ValueTracker(0)
        a_decimal = DecimalNumber(1, font_size=fs2, color=c1t, num_decimal_places=1).next_to(func_2[2], RIGHT, buff=0.1).add_updater(lambda d: d.set_value(a.get_value()))
        self.add(func)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value() * x + b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)
        self.add(updated_f)

        # Initialize a cursor
        cursor = AltCursor()
        cursor.move_to(plane.c2p(0, 0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right.
                We can write the function f of x equals x as <bookmark mark="ftransform"/> f of x equals one times x.
                Let's consider an example, at the point <bookmark mark="x"/>x equals one.
                The value of the function f of x is also <bookmark mark="fx"/>equal to one.
                If we increase the value of "a", let's say to two, <bookmark mark="increaseA"/>the value
                of f of x also increases, and the function becomes steeper.
                This is because we multiply every value of the function by a number greater than one, so they all increase.
                """
        ) as tracker:

            self.wait_until_bookmark("ftransform")
            self.play(TransformMatchingTex(func, func_2), Write(a_decimal), run_time=1)

            self.wait_until_bookmark("x")
            cursor.idle = False
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)

            self.wait_until_bookmark("fx")
            x, y, _ = plane.c2p(1, 1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(1, a.get_value() * 1 + b.get_value())))

            self.wait_until_bookmark("increaseA")
            duration = 2
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            self.play(a.animate.set_value(2), run_time=duration)

        # Wait for 4 seconds at the end of animation
        self.wait(4)



class Func_2_1_I_5_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title("Focus on Function Term")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3, -1, 0, 1, 3], y_ticks=[-4, -2, 0, 2, 4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f", "(x)", "=", "x", color=c1t, font_size=fs2).next_to(cords, DOWN)
        func_2 = MathTex("f", "(x)", "=", "\\,\\,\\,\\,\\,\\,\\,\\,\\,", "\\cdot x", color=c1t, font_size=fs2).next_to(cords, DOWN)
        a, b = ValueTracker(1), ValueTracker(0)
        a_decimal = DecimalNumber(1, font_size=fs2, color=c1t, num_decimal_places=1).next_to(func_2[2], RIGHT, buff=0.1).add_updater(lambda d: d.set_value(a.get_value()))
        self.add(func)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value() * x + b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)
        self.add(updated_f)

        # Initialize a cursor
        cursor = AltCursor()
        cursor.move_to(plane.c2p(0, 0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right.
                We can write the function f of x equals x as <bookmark mark="ftransform"/> f of x equals one times x.
                Let's consider an example, at the point <bookmark mark="x"/>x equals one.
                The value of the function f of x is also <bookmark mark="fx"/>equal to one.
                If we increase the value of "a", let's say to two, <bookmark mark="increaseA"/>the value
                of f of x also increases, and the function becomes steeper.
                This is because we multiply every value of the function by a number greater than one, so they all increase.
                """
        ) as tracker:

            self.wait_until_bookmark("ftransform")
            self.play(TransformMatchingTex(func, func_2), Write(a_decimal), run_time=1)

            self.wait_until_bookmark("x")
            cursor.idle = False
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)

            self.wait_until_bookmark("fx")
            x, y, _ = plane.c2p(1, 1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(1, a.get_value() * 1 + b.get_value())))

            self.wait_until_bookmark("increaseA")
            duration = 2
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            self.play(a.animate.set_value(2), run_time=duration)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_2_1_I_5_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title("Focus on Function Term")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3, -1, 0, 1, 3], y_ticks=[-4, -2, 0, 2, 4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f", "(x)", "=", "x", color=c1t, font_size=fs2).next_to(cords, DOWN)
        func_2 = MathTex("f", "(x)", "=", "\\,\\,\\,\\,\\,\\,\\,\\,\\,", "\\cdot x", color=c1t, font_size=fs2).next_to(cords, DOWN)
        a, b = ValueTracker(1), ValueTracker(0)
        a_decimal = DecimalNumber(1, font_size=fs2, color=c1t, num_decimal_places=1).next_to(func_2[2], RIGHT, buff=0.1).add_updater(lambda d: d.set_value(a.get_value()))
        self.add(func)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value() * x + b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)
        self.add(updated_f)

        # Initialize a cursor
        cursor = AltCursor()
        cursor.move_to(plane.c2p(0, 0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right.
                We can write the function f of x equals x as <bookmark mark="ftransform"/> f of x equals one times x.
                Let's consider an example, at the point <bookmark mark="x"/>x equals one.
                The value of the function f of x is also <bookmark mark="fx"/>equal to one.
                If we increase the value of "a", let's say to two, <bookmark mark="increaseA"/>the value
                of f of x also increases, and the function becomes steeper.
                This is because we multiply every value of the function by a number greater than one, so they all increase.
                """
        ) as tracker:

            self.wait_until_bookmark("ftransform")
            self.play(TransformMatchingTex(func, func_2), Write(a_decimal), run_time=1)

            self.wait_until_bookmark("x")
            cursor.idle = False
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)

            self.wait_until_bookmark("fx")
            x, y, _ = plane.c2p(1, 1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(1, a.get_value() * 1 + b.get_value())))

            self.wait_until_bookmark("increaseA")
            duration = 2
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            self.play(a.animate.set_value(2), run_time=duration)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_2_1_I_5_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title("Focus on Function Term")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3, -1, 0, 1, 3], y_ticks=[-4, -2, 0, 2, 4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f", "(x)", "=", "x", color=c1t, font_size=fs2).next_to(cords, DOWN)
        func_2 = MathTex("f", "(x)", "=", "\\,\\,\\,\\,\\,\\,\\,\\,\\,", "\\cdot x", color=c1t, font_size=fs2).next_to(cords, DOWN)
        a, b = ValueTracker(1), ValueTracker(0)
        a_decimal = DecimalNumber(1, font_size=fs2, color=c1t, num_decimal_places=1).next_to(func_2[2], RIGHT, buff=0.1).add_updater(lambda d: d.set_value(a.get_value()))
        self.add(func)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value() * x + b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)
        self.add(updated_f)

        # Initialize a cursor
        cursor = AltCursor()
        cursor.move_to(plane.c2p(0, 0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                That's right, well done!
                We can write the function f of x equals x as <bookmark mark="ftransform"/> f of x equals one times x.
                Let's consider an example, at the point <bookmark mark="x"/>x equals one.
                The value of the function f of x is also <bookmark mark="fx"/>equal to one.
                If we increase the value of "a", let's say to two, <bookmark mark="increaseA"/>the value
                of f of x also increases, and the function becomes steeper.
                This is because we multiply every value of the function by a number greater than one, so they all increase.
                """
        ) as tracker:

            self.wait_until_bookmark("ftransform")
            self.play(TransformMatchingTex(func, func_2), Write(a_decimal), run_time=1)

            self.wait_until_bookmark("x")
            cursor.idle = False
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)

            self.wait_until_bookmark("fx")
            x, y, _ = plane.c2p(1, 1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(1, a.get_value() * 1 + b.get_value())))

            self.wait_until_bookmark("increaseA")
            duration = 2
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            self.play(a.animate.set_value(2), run_time=duration)

        # Wait for 4 seconds at the end of animation
        self.wait(4)




#####################################
#####################################
TASK_Func_2_1_I_6_q = SophiaTaskDefinition(
    answerOptions=["The line is shifted upwards", "The line is shifted downwards", "The line becomes flatter", "The line becomes steeper"],
    correctAnswerIndex=0,
    questionText="What happens when we choose $b>0$?"
)

class Func_2_1_I_6_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title("Focus on Function Term")

        # Create the coordinate system
        cords = self.add_cords([-4, 4, 1], [-4, 4, 1], x_ticks=[-4, -2, 0, 2, 4], y_ticks=[-4, -2, 0, 2, 4])
        plane = cords[0]

        # Create and plot piecewise linear function
        func = MathTex("f", "(x)", "=ax+", "b", color=c1t, font_size=fs2).next_to(cords, DOWN).shift(UP * 1.5)
        func_2 = MathTex("f", "(x)", "=", "x", color=c1t, font_size=fs2).next_to(cords, DOWN).shift(UP * 1.5)
        a, b = ValueTracker(1), ValueTracker(0)
        a_decimal = DecimalNumber(1, font_size=fs2, num_decimal_places=1).next_to(func, LEFT, buff=0.5)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value() * x + b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True

        # Action Sequence
        with self.voiceover(
                text="""
                Let's take another look at the function term of linear functions.
                We're again looking at the general form of linear <bookmark mark="f"/> functions,
                which <bookmark mark="tf"/>is f <bookmark mark="tx"/>of x<bookmark mark="tax"/> equals "a" times x
                <bookmark mark="tb"/>plus b. <break time="0.5s"/>
                As we have seen earlier, the value <bookmark mark="a"/> of "a" determines the slope of the line.
                <break time="0.5s"/><bookmark mark="ahigh"/>
                High values of "a" mean that the line becomes steeper.
                <break time="0.5s"/><bookmark mark="alow"/>
                On the other hand, low values of "a" mean that the line becomes flatter.
                <break time="0.5s"/>
                Now, the only question left is: What role does the value <bookmark mark="b"/> of b play?
                To find out, let's look at our example again,
                that is <bookmark mark="example"/> the function <bookmark mark="ef"/> f of <bookmark mark="ex1"/> x equals <bookmark mark="ex2"/> x,
                So, a is one again, and b is zero again. The function looks like <bookmark mark="plot"/>
                this.
                <break time="0.5s"/>
                Now, what happens if we change the value of b?
                <break time="0.5s"/>
                For example: What happens when we set a value for b that is greater than zero?
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(func))

            self.wait_until_bookmark("tf")
            x, y, _ = func.submobjects[0].get_center() + DOWN * 0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("tx")
            x, y, _ = func.submobjects[1].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("tax")
            x, y, _ = func.submobjects[2].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("tb")
            x, y, _ = func.submobjects[3].get_center() + DOWN * 0.4 + LEFT * 0.1
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("a")
            x, y, _ = func.submobjects[2].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("b")
            x, y, _ = func.submobjects[3].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("example")
            x, y, _ = func_2.submobjects[0].get_center() + DOWN * 0.4
            self.play(TransformMatchingTex(func, func_2), CursorMoveTo(cursor, x, y))

            self.wait_until_bookmark("ex1")
            x, y, _ = func_2.submobjects[1].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("ex2")
            x, y, _ = func_2.submobjects[3].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("plot")
            x, y, _ = plane.c2p(0, 0)
            self.play(func_2.animate.shift(DOWN * 1.5), Write(cords), CursorMoveTo(cursor, x, y), Write(updated_f), run_time=1)
            cursor.idle = True

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_2_1_I_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["Consider linear function:", "$f(x)=ax+b=x+0$"], ["Increasing $b$", "$\\rightarrow$ Function shifted upwards"], ["Decreasing $b$","$\\rightarrow$ Function shifted downwards"]], buff=0.2, buff_inner=0.05)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Focus on Function Term")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f","(x)","=","x", color=c1t, font_size=fs2).next_to(cords, DOWN)
        a, b = ValueTracker(1), ValueTracker(0)
        a_decimal = DecimalNumber(0, font_size=fs2, color=c1t, include_sign=True, num_decimal_places=1).next_to(func[-1], RIGHT, buff=0.1).add_updater(lambda d: d.set_value(b.get_value()))
        self.add(func)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)
        self.add(updated_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Hey great, that's correct!
                
                We can write the function f of x equals x as <bookmark mark="ftransform"/> f of x equals x plus zero.
                Now let's consider the point <bookmark mark="x"/> x equals zero as an example.
                The value of the function f of x is also <bookmark mark="fx"/> equals zero at this point.
                <bookmark mark="note01"/> If we increase b, let's say to two, <bookmark mark="increaseB"/> the value of f of x will increase everywhere, and the function will be shifted upwards.
                
                On the other hand, it's similar in reverse: <bookmark mark="note12"/> If we decrease a <bookmark mark="decreaseB"/>, the function will be shifted downwards.
                Here you can see what happens when we set a to minus two.
                """
        ) as tracker:
            
            self.wait_until_bookmark("ftransform")
            note.change_colors([0])
            self.play(Write(a_decimal), run_time=1)

            self.wait_until_bookmark("x")
            x,y,_ = plane.c2p(0,0)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)

            self.wait_until_bookmark("fx")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(0, a.get_value()*0+b.get_value())))

            self.wait_until_bookmark("note01")
            note.change_colors([0,1])

            self.wait_until_bookmark("increaseB")
            duration = 2
            start = plane.c2p(0,0)
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            self.add(Updown_Arrow(start, color=c3, stroke_width=5, vert=True).add_updater(lambda m: m.put_start_and_end_on(start+0.0000000001*DOWN, [x, cursor.get_y(),0])))
            self.play(b.animate.set_value(2), run_time=duration)

            self.wait_until_bookmark("note12")
            note.change_colors([1,2])

            self.wait_until_bookmark("decreaseB")
            duration = 2
            self.add_move_sound("backward", duration=duration, rate_func=smooth)
            self.play(b.animate.set_value(-2), run_time=2)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_2_1_I_6_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["Consider linear function:", "$f(x)=ax+b=x+0$"], ["Increasing $b$", "$\\rightarrow$ Function shifted upwards"], ["Decreasing $b$","$\\rightarrow$ Function shifted downwards"]], buff=0.2, buff_inner=0.05)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Focus on Function Term")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f","(x)","=","x", color=c1t, font_size=fs2).next_to(cords, DOWN)
        a, b = ValueTracker(1), ValueTracker(0)
        a_decimal = DecimalNumber(0, font_size=fs2, color=c1t, include_sign=True, num_decimal_places=1).next_to(func[-1], RIGHT, buff=0.1).add_updater(lambda d: d.set_value(b.get_value()))
        self.add(func)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)
        self.add(updated_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Oh, too bad, that's unfortunately incorrect.
                
                We can write the function f of x equals x as <bookmark mark="ftransform"/> f of x equals x plus zero.
                Now let's consider the point <bookmark mark="x"/> x equals zero as an example.
                The value of the function f of x is also <bookmark mark="fx"/> equals zero at this point.
                <bookmark mark="note01"/> If we increase b, let's say to two, <bookmark mark="increaseB"/> the value of f of x will increase everywhere, and the function will be shifted upwards.
                
                On the other hand, it's similar in reverse: <bookmark mark="note12"/> If we decrease a <bookmark mark="decreaseB"/>, the function will be shifted downwards.
                Here you can see what happens when we set a to minus two.
                """
        ) as tracker:
            
            self.wait_until_bookmark("ftransform")
            note.change_colors([0])
            self.play(Write(a_decimal), run_time=1)

            self.wait_until_bookmark("x")
            x,y,_ = plane.c2p(0,0)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)

            self.wait_until_bookmark("fx")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(0, a.get_value()*0+b.get_value())))

            self.wait_until_bookmark("note01")
            note.change_colors([0,1])

            self.wait_until_bookmark("increaseB")
            duration = 2
            start = plane.c2p(0,0)
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            self.add(Updown_Arrow(start, color=c3, stroke_width=5, vert=True).add_updater(lambda m: m.put_start_and_end_on(start+0.0000000001*DOWN, [x, cursor.get_y(),0])))
            self.play(b.animate.set_value(2), run_time=duration)

            self.wait_until_bookmark("note12")
            note.change_colors([1,2])

            self.wait_until_bookmark("decreaseB")
            duration = 2
            self.add_move_sound("backward", duration=duration, rate_func=smooth)
            self.play(b.animate.set_value(-2), run_time=2)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_2_1_I_6_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["Consider linear function:", "$f(x)=ax+b=x+0$"], ["Increasing $b$", "$\\rightarrow$ Function shifted upwards"], ["Decreasing $b$","$\\rightarrow$ Function shifted downwards"]], buff=0.2, buff_inner=0.05)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Focus on Function Term")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f","(x)","=","x", color=c1t, font_size=fs2).next_to(cords, DOWN)
        a, b = ValueTracker(1), ValueTracker(0)
        a_decimal = DecimalNumber(0, font_size=fs2, color=c1t, include_sign=True, num_decimal_places=1).next_to(func[-1], RIGHT, buff=0.1).add_updater(lambda d: d.set_value(b.get_value()))
        self.add(func)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)
        self.add(updated_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Oh, too bad, that's unfortunately incorrect.
                
                We can write the function f of x equals x as <bookmark mark="ftransform"/> f of x equals x plus zero.
                Now let's consider the point <bookmark mark="x"/> x equals zero as an example.
                The value of the function f of x is also <bookmark mark="fx"/> equals zero at this point.
                <bookmark mark="note01"/> If we increase b, let's say to two, <bookmark mark="increaseB"/> the value of f of x will increase everywhere, and the function will be shifted upwards.
                
                On the other hand, it's similar in reverse: <bookmark mark="note12"/> If we decrease a <bookmark mark="decreaseB"/>, the function will be shifted downwards.
                Here you can see what happens when we set a to minus two.
                """
        ) as tracker:
            
            self.wait_until_bookmark("ftransform")
            note.change_colors([0])
            self.play(Write(a_decimal), run_time=1)

            self.wait_until_bookmark("x")
            x,y,_ = plane.c2p(0,0)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)

            self.wait_until_bookmark("fx")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(0, a.get_value()*0+b.get_value())))

            self.wait_until_bookmark("note01")
            note.change_colors([0,1])

            self.wait_until_bookmark("increaseB")
            duration = 2
            start = plane.c2p(0,0)
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            self.add(Updown_Arrow(start, color=c3, stroke_width=5, vert=True).add_updater(lambda m: m.put_start_and_end_on(start+0.0000000001*DOWN, [x, cursor.get_y(),0])))
            self.play(b.animate.set_value(2), run_time=duration)

            self.wait_until_bookmark("note12")
            note.change_colors([1,2])

            self.wait_until_bookmark("decreaseB")
            duration = 2
            self.add_move_sound("backward", duration=duration, rate_func=smooth)
            self.play(b.animate.set_value(-2), run_time=2)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_2_1_I_6_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["Consider linear function:", "$f(x)=ax+b=x+0$"], ["Increasing $b$", "$\\rightarrow$ Function shifted upwards"], ["Decreasing $b$","$\\rightarrow$ Function shifted downwards"]], buff=0.2, buff_inner=0.05)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Focus on Function Term")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f","(x)","=","x", color=c1t, font_size=fs2).next_to(cords, DOWN)
        a, b = ValueTracker(1), ValueTracker(0)
        a_decimal = DecimalNumber(0, font_size=fs2, color=c1t, include_sign=True, num_decimal_places=1).next_to(func[-1], RIGHT, buff=0.1).add_updater(lambda d: d.set_value(b.get_value()))
        self.add(func)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)
        self.add(updated_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Oh, too bad, that's unfortunately incorrect.
                
                We can write the function f of x equals x as <bookmark mark="ftransform"/> f of x equals x plus zero.
                Now let's consider the point <bookmark mark="x"/> x equals zero as an example.
                The value of the function f of x is also <bookmark mark="fx"/> equals zero at this point.
                <bookmark mark="note01"/> If we increase b, let's say to two, <bookmark mark="increaseB"/> the value of f of x will increase everywhere, and the function will be shifted upwards.
                
                On the other hand, it's similar in reverse: <bookmark mark="note12"/> If we decrease a <bookmark mark="decreaseB"/>, the function will be shifted downwards.
                Here you can see what happens when we set a to minus two.
                """
        ) as tracker:
            
            self.wait_until_bookmark("ftransform")
            note.change_colors([0])
            self.play(Write(a_decimal), run_time=1)

            self.wait_until_bookmark("x")
            x,y,_ = plane.c2p(0,0)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)

            self.wait_until_bookmark("fx")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(0, a.get_value()*0+b.get_value())))

            self.wait_until_bookmark("note01")
            note.change_colors([0,1])

            self.wait_until_bookmark("increaseB")
            duration = 2
            start = plane.c2p(0,0)
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            self.add(Updown_Arrow(start, color=c3, stroke_width=5, vert=True).add_updater(lambda m: m.put_start_and_end_on(start+0.0000000001*DOWN, [x, cursor.get_y(),0])))
            self.play(b.animate.set_value(2), run_time=duration)

            self.wait_until_bookmark("note12")
            note.change_colors([1,2])

            self.wait_until_bookmark("decreaseB")
            duration = 2
            self.add_move_sound("backward", duration=duration, rate_func=smooth)
            self.play(b.animate.set_value(-2), run_time=2)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_2_1_I_7(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["General expression for a linear function:", "$f(x)=ax+b$"], ["$a$ determines the slope", "$a>1$ $\\rightarrow$ Function steeper"], ["$b$ determines the shift","$b>0$ $\\rightarrow$ Shift upwards"]], buff=0.2, buff_inner=0)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Note: Function Term")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs2).next_to(cords, DOWN)
        a, b = ValueTracker(1), ValueTracker(0)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)
        self.add(updated_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                So, let's review again:
                
                The general expression for a linear function is <bookmark mark="funcTerm"/> f of x equals "a" times x plus b.
                
                The value <bookmark mark="a"/> of a determines the slope here: <bookmark mark="goToOne"/>
                With a high value of a, <bookmark mark="ahigh"/> the function becomes steeper, -
                <bookmark mark="alow"/> with a low value of a, it becomes flatter. <bookmark mark="reset"/>
                
                On the other hand, the value <bookmark mark="b"/> of b determines the shift upwards and downwards. <bookmark mark="goToZero"/>
                With a high value of b <bookmark mark="bhigh"/>, the function is shifted upwards, -
                <bookmark mark="blow"/> with a low value of b, it is shifted downwards.
                """
        ) as tracker:
            
            self.wait_until_bookmark("funcTerm")
            note.change_colors([0])
            self.play(Write(func))

            self.wait_until_bookmark("a")
            note.change_colors([0,1])
            x,y,_ = func[1].get_center()+DOWN*0.4
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)

            self.wait_until_bookmark("goToOne")
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(1, a.get_value()*1+b.get_value())))

            self.wait_until_bookmark("ahigh")
            duration = 1
            self.add_scale_sound("up", duration=duration, rate_func=smooth)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(1, a.get_value()*1+b.get_value())))
            self.play(a.animate.set_value(2), run_time=duration)

            self.wait_until_bookmark("alow")
            self.add_scale_sound("down", duration=duration, rate_func=smooth)
            self.play(a.animate.set_value(0.5), run_time=duration)

            self.wait_until_bookmark("reset")
            self.play(a.animate.set_value(1), run_time=0.4)

            self.wait_until_bookmark("b")
            note.change_colors([1,2])
            x,y,_ = func[3].get_center()+DOWN*0.4
            cursor.clear_updaters()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)

            self.wait_until_bookmark("goToZero")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(0, a.get_value()*0+b.get_value())))

            self.wait_until_bookmark("bhigh")
            start = plane.c2p(0,0)
            duration = 1
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            self.add(Updown_Arrow(start, color=c3, stroke_width=5, vert=True).add_updater(lambda m: m.put_start_and_end_on(start+0.0000000001*DOWN, [x, cursor.get_y(),0])))
            self.play(b.animate.set_value(2), run_time=duration)

            self.wait_until_bookmark("blow")
            self.add_move_sound("backward", duration=duration, rate_func=smooth)
            self.play(b.animate.set_value(-2), run_time=duration)
            self.wait(2)
            self.play(b.animate.set_value(0), run_time=0.5)
            

        # Wait for 4 seconds at the end of animation
        self.wait(4)


TASK_Func_2_1_I_8_q = SophiaTaskDefinition(
    answerOptions = ["We can directly read $a$: $f(0)=a$", "We can directly read $b$: $f(0)=b$", "We can directly read $a+b$: $f(0)=a+b"],
    correctAnswerIndex = 1,
    questionText = "What happens when we substitute $x=0$ into the function $f(x)=ax+b$?"
)

class Func_2_1_I_8_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["General expression for a linear function:", "$f(x)=ax+b$"], ["How do we determine the function term", "when the graph is given?"], "What happens when we substitute $0$?"], buff=0.2, buff_inner=0)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Note: Function Term")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).next_to(title, DOWN, buff=1.5)
                
        a, b = ValueTracker(1), ValueTracker(2)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                So, now we know: A linear function always has the form <bookmark mark="f"/> f of x equals "a" times x plus b.
                
                Let's say <bookmark mark="cords"/> we have a function, <bookmark mark="func"/> that looks like this.
                
                How do we determine the term of the function?
                
                <bookmark mark="cursor"/>
                We need to know two values to determine <bookmark mark="cursorA"/> the function: a <bookmark mark="cursorB"/> and b.
                
                So, let's start by figuring out how to find <bookmark mark="circleB"/> b.
                
                There's a simple trick for that. Let's substitute <bookmark mark="plugInZero"/> zero into the function term.
                <bookmark mark="q"/> What happens?
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            note.change_colors([0])
            self.play(Write(func))

            self.wait_until_bookmark("cords")
            self.play(Write(cords), func.animate.move_to(cords.get_bottom()+0.5*DOWN), run_time=0.5)

            self.wait_until_bookmark("func")
            self.play(Write(updated_f), run_time=1)
            note.change_colors([0,1])

            self.wait_until_bookmark("cursor")
            self.wait_until_bookmark("cursorA")
            cursor.idle=False
            x,y,_ = func[1].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)

            self.wait_until_bookmark("cursorB")
            x,y,_ = func[3].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)

            self.wait_until_bookmark("circleB")
            x2, y2 = x-0.4, y+0.8
            self.play(CursorMoveToCurved(cursor, x, y2, path_arc=PI), run_time=0.4, rate_func=linear)
            self.play(CursorMoveToCurved(cursor, x, y, path_arc=PI), run_time=0.4, rate_func=linear)

            self.wait_until_bookmark("plugInZero")
            note.change_colors([1,2])
            func0 = MathTex("f(","0",")=","?", color=c1t, font_size=fs1).move_to(func)
            self.play(ReplacementTransform(func, func0), run_time=0.5)
            x,y,_ = func0[1].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("q")
            x,y,_ = func0[3].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_2_1_I_8_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=["We substitute $x=0$", "The function value is equal to b: $f(0)=b$", "So, $b=2$"], buff=0.2, buff_inner=0)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Note: Function Term")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).move_to(cords.get_bottom()+0.5*DOWN)
        func2 = MathTex("f","(0)","=","a","0","+", "b", "=","b", color=c1t, font_size=fs1).move_to(cords.get_bottom()+0.5*DOWN)
        func2_a = func2[:-1]
        func2_b = func2[-1]
        sol = MathTex("\\rightarrow b=2", color=c1t, font_size=fs1).move_to(cords.get_bottom()+0.5*DOWN)
                
        a, b = ValueTracker(1), ValueTracker(2)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)
        self.add(updated_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Hmm, unfortunately not. We substitute <bookmark mark="plugInZero"/> zero into the function term and get f
                of zero equals <bookmark mark="a"/> "a" times <bookmark mark="times0"/> zero  <bookmark mark="plusb"/>
                plus b. <bookmark mark="b"/> That is <bookmark mark="eqb"/> equal to b.
                
                Graphically, this means: We can determine b by looking at the value of the function at <bookmark mark="origin"/> x equals zero.
                
                We find this out by looking at where the graph <bookmark mark="yaxis"/> intersects the y-axis.
                
                In this case, it does so at <bookmark mark="f0"/> y equals two.
                
                Therefore, <bookmark mark="beq2"/> b is equal to two.
                """
        ) as tracker:
            
            self.wait_until_bookmark("plugInZero")
            cursor.idle=False
            note.change_colors([0])
            x,y,_ = func2[1].get_center()+DOWN*0.4
            self.play(ReplacementTransform(func, func2_a), run_time=0.5)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("a")
            x,y,_ = func2[3].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("times0")
            x,y,_ = func2[4].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("plusb")
            x,y,_ = func2[6].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("b")
            self.play(Write(func2_b), run_time=0.5)

            self.wait_until_bookmark("eqb")
            note.change_colors([0,1])
            x,y,_ = func2[-1].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("origin")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("yaxis")
            self.play(CursorMarkAxis(cursor, plane, axis='y'), run_time=0.5)

            self.wait_until_bookmark("f0")
            note.change_colors([1,2])
            x,y,_ = plane.c2p(0,2)
            self.play(CursorMoveResize(cursor, x, y, 0.2, 0.2), run_time=0.4)

            self.wait_until_bookmark("beq2")
            self.play(ReplacementTransform(func2, sol), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_2_1_I_8_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=["We substitute $x=0$", "The function value is equal to b: $f(0)=b$", "So, $b=2$"], buff=0.2, buff_inner=0)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Note: Function Term")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).move_to(cords.get_bottom()+0.5*DOWN)
        func2 = MathTex("f","(0)","=","a","0","+", "b", "=","b", color=c1t, font_size=fs1).move_to(cords.get_bottom()+0.5*DOWN)
        func2_a = func2[:-1]
        func2_b = func2[-1]
        sol = MathTex("\\rightarrow b=2", color=c1t, font_size=fs1).move_to(cords.get_bottom()+0.5*DOWN)
                
        a, b = ValueTracker(1), ValueTracker(2)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)
        self.add(updated_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Exactly right. We substitute <bookmark mark="plugInZero"/> zero into the function term and get f
                of zero equals <bookmark mark="a"/> "a" times <bookmark mark="times0"/> zero  <bookmark mark="plusb"/>
                plus b. <bookmark mark="b"/> That is <bookmark mark="eqb"/> equal to b.
                
                Graphically, this means: We can determine b by looking at the value of the function at <bookmark mark="origin"/> x equals zero.
                
                We find this out by looking at where the graph <bookmark mark="yaxis"/> intersects the y-axis.
                
                In this case, it does so at <bookmark mark="f0"/> y equals two.
                
                Therefore, <bookmark mark="beq2"/> b is equal to two.
                """
        ) as tracker:
            
            self.wait_until_bookmark("plugInZero")
            cursor.idle=False
            note.change_colors([0])
            x,y,_ = func2[1].get_center()+DOWN*0.4
            self.play(ReplacementTransform(func, func2_a), run_time=0.5)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("a")
            x,y,_ = func2[3].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("times0")
            x,y,_ = func2[4].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("plusb")
            x,y,_ = func2[6].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("b")
            self.play(Write(func2_b), run_time=0.5)

            self.wait_until_bookmark("eqb")
            note.change_colors([0,1])
            x,y,_ = func2[-1].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("origin")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("yaxis")
            self.play(CursorMarkAxis(cursor, plane, axis='y'), run_time=0.5)

            self.wait_until_bookmark("f0")
            note.change_colors([1,2])
            x,y,_ = plane.c2p(0,2)
            self.play(CursorMoveResize(cursor, x, y, 0.2, 0.2), run_time=0.4)

            self.wait_until_bookmark("beq2")
            self.play(ReplacementTransform(func2, sol), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_2_1_I_8_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=["We substitute $x=0$", "The function value is equal to b: $f(0)=b$", "So, $b=2$"], buff=0.2, buff_inner=0)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Note: Function Term")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).move_to(cords.get_bottom()+0.5*DOWN)
        func2 = MathTex("f","(0)","=","a","0","+", "b", "=","b", color=c1t, font_size=fs1).move_to(cords.get_bottom()+0.5*DOWN)
        func2_a = func2[:-1]
        func2_b = func2[-1]
        sol = MathTex("\\rightarrow b=2", color=c1t, font_size=fs1).move_to(cords.get_bottom()+0.5*DOWN)
                
        a, b = ValueTracker(1), ValueTracker(2)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)
        self.add(updated_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Hmm, unfortunately not. We substitute <bookmark mark="plugInZero"/> zero into the function term and get f
                of zero equals <bookmark mark="a"/> "a" times <bookmark mark="times0"/> zero  <bookmark mark="plusb"/>
                plus b. <bookmark mark="b"/> That is <bookmark mark="eqb"/> equal to b.
                
                Graphically, this means: We can determine b by looking at the value of the function at <bookmark mark="origin"/> x equals zero.
                
                We find this out by looking at where the graph <bookmark mark="yaxis"/> intersects the y-axis.
                
                In this case, it does so at <bookmark mark="f0"/> y equals two.
                
                Therefore, <bookmark mark="beq2"/> b is equal to two.
                """
        ) as tracker:
            
            self.wait_until_bookmark("plugInZero")
            cursor.idle=False
            note.change_colors([0])
            x,y,_ = func2[1].get_center()+DOWN*0.4
            self.play(ReplacementTransform(func, func2_a), run_time=0.5)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("a")
            x,y,_ = func2[3].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("times0")
            x,y,_ = func2[4].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("plusb")
            x,y,_ = func2[6].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("b")
            self.play(Write(func2_b), run_time=0.5)

            self.wait_until_bookmark("eqb")
            note.change_colors([0,1])
            x,y,_ = func2[-1].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("origin")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("yaxis")
            self.play(CursorMarkAxis(cursor, plane, axis='y'), run_time=0.5)

            self.wait_until_bookmark("f0")
            note.change_colors([1,2])
            x,y,_ = plane.c2p(0,2)
            self.play(CursorMoveResize(cursor, x, y, 0.2, 0.2), run_time=0.4)

            self.wait_until_bookmark("beq2")
            self.play(ReplacementTransform(func2, sol), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


TASK_Func_2_1_I_9_q = SophiaTaskDefinition(
    answerOptions = ["We can directly read $a$: $f(0)=a$", "We can directly read $b$: $f(0)=b$", "We can directly read $a+b$: $f(0)=a+b"],
    correctAnswerIndex = 1,
    questionText = "What happens when we substitute $x=0$ into the function $f(x)=ax+b$?"
)

class Func_2_1_I_9_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=["Consider the displayed function", ["General expression for a linear function:", "$f(x)=ax+b$"], "What is the value of $b$?"], buff=0.2, buff_inner=0)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Linear Function: Determine b")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5)
        a, b = ValueTracker(1), ValueTracker(2)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Here we now see <bookmark mark="plot"/> another linear function.
                
                <bookmark mark="note2"/>
                If the function is described by <bookmark mark="func"/> f of x equals "a" times x plus b, -
                <bookmark mark="lastNote"/>
                what is the value of b?
                """
        ) as tracker:
            
            self.play(Write(cords), run_time=0.5)

            self.wait_until_bookmark("plot")
            note.change_colors([0])
            self.play(Write(updated_f), run_time=0.5)

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("func")
            self.play(Write(func), run_time=0.5)

            self.wait_until_bookmark("lastNote")
            note.change_colors([1,2])

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_2_1_I_9_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=["We know: $b=f(0)$","$\\rightarrow$ Substitute $x=0$ into the function $f$.", ["We get: $f(0)=2$","$\\rightarrow b=2$"]], buff=0.2, buff_inner=0)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Linear Function: Determine b")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5)
        func_0 = MathTex("f(0)=","a","\\cdot 0+", "b", "=b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5).scale(0.9)
        b_eq = MathTex("f(0)=2","\\rightarrow b=2", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5).next_to(cords, DOWN, buff=0.5)
        self.add(func)
                
        a, b = ValueTracker(1), ValueTracker(2)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,-5.5))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Mhm, not quite.
                
                We know that <bookmark mark="note1"/> the value of b is equal to the value of f at the point <bookmark mark="x0"/> x equals zero.
                
                So we read from the graph, <bookmark mark="note2"/> what the value of the function is at the point x equals zero.
                
                <bookmark mark="note3"/>
                In this case, f of zero equals two <bookmark mark="y0"/>.
                
                Therefore, <bookmark mark="beq"/> b is equal to two.
                """
        ) as tracker:
            
            self.play(Write(cords), run_time=0.5)
            self.play(Write(updated_f), run_time=0.5)

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("x0")
            x,y,_ = plane.c2p(0,0)
            cursor.idle=False
            self.play(TransformMatchingTex(func, func_0))
            self.play(CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("y0")
            cursor.idle=False
            x,y,_ = plane.c2p(0,2)
            self.play(CursorMoveTo(cursor, x,y),ReplacementTransform(func_0, b_eq[0]),  run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

            self.wait_until_bookmark("beq")
            self.play(Write(b_eq[1]), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_2_1_I_9_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=["We know: $b=f(0)$","$\\rightarrow$ Substitute $x=0$ into the function $f$.", ["We get: $f(0)=2$","$\\rightarrow b=2$"]], buff=0.2, buff_inner=0)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Linear Function: Determine b")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5)
        func_0 = MathTex("f(0)=","a","\\cdot 0+", "b", "=b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5).scale(0.9)
        b_eq = MathTex("f(0)=2","\\rightarrow b=2", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5).next_to(cords, DOWN, buff=0.5)
        self.add(func)
                
        a, b = ValueTracker(1), ValueTracker(2)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,-5.5))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Yep, exactly.
                
                We know that <bookmark mark="note1"/> the value of b is equal to the value of f at the point <bookmark mark="x0"/> x equals zero.
                
                So we read from the graph, <bookmark mark="note2"/> what the value of the function is at the point x equals zero.
                
                <bookmark mark="note3"/>
                In this case, f of zero equals two <bookmark mark="y0"/>.
                
                Therefore, <bookmark mark="beq"/> b is equal to two.
                """
        ) as tracker:
            
            self.play(Write(cords), run_time=0.5)
            self.play(Write(updated_f), run_time=0.5)

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("x0")
            x,y,_ = plane.c2p(0,0)
            cursor.idle=False
            self.play(TransformMatchingTex(func, func_0))
            self.play(CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("y0")
            cursor.idle=False
            x,y,_ = plane.c2p(0,2)
            self.play(CursorMoveTo(cursor, x,y),ReplacementTransform(func_0, b_eq[0]),  run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

            self.wait_until_bookmark("beq")
            self.play(Write(b_eq[1]), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)



class Func_2_1_I_9_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=["We know: $b=f(0)$","$\\rightarrow$ Substitute $x=0$ into the function $f$.", ["We get: $f(0)=2$","$\\rightarrow b=2$"]], buff=0.2, buff_inner=0)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Linear Function: Determine b")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5)
        func_0 = MathTex("f(0)=","a","\\cdot 0+", "b", "=b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5).scale(0.9)
        b_eq = MathTex("f(0)=2","\\rightarrow b=2", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5).next_to(cords, DOWN, buff=0.5)
        self.add(func)
                
        a, b = ValueTracker(1), ValueTracker(2)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,-5.5))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Mhm, not quite.
                
                We know that <bookmark mark="note1"/> the value of b is equal to the value of f at the point <bookmark mark="x0"/> x equals zero.
                
                So we read from the graph, <bookmark mark="note2"/> what the value of the function is at the point x equals zero.
                
                <bookmark mark="note3"/>
                In this case, f of zero equals two <bookmark mark="y0"/>.
                
                Therefore, <bookmark mark="beq"/> b is equal to two.
                """
        ) as tracker:
            
            self.play(Write(cords), run_time=0.5)
            self.play(Write(updated_f), run_time=0.5)

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("x0")
            x,y,_ = plane.c2p(0,0)
            cursor.idle=False
            self.play(TransformMatchingTex(func, func_0))
            self.play(CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("y0")
            cursor.idle=False
            x,y,_ = plane.c2p(0,2)
            self.play(CursorMoveTo(cursor, x,y),ReplacementTransform(func_0, b_eq[0]),  run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

            self.wait_until_bookmark("beq")
            self.play(Write(b_eq[1]), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

TASK_Func_2_1_I_10_q = SophiaTaskDefinition(
    answerOptions = ["a: Shift in x-Direction, b: Shift in y-Direction", "a: Shift in y-Direction, b: Shift in x-Direction", "a: Slope of the function, b: Shift in y-Direction", "a: Slope of the function, b: Shift in x-Direction"],
    correctAnswerIndex = 2,
    questionText = "What aspects of the function do $a$ and $b$ describe?"
)

class Func_2_1_I_10_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["Given the graph of a function","We want to determine it's term"], "We can find $b$ by plugging in $x=0$", "Remember: What do $a$ and $b$ describe?"], buff=0.2, buff_inner=0)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Role of a and b")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5)
                
        a, b = ValueTracker(1), ValueTracker(0)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,0))
        # self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Ok, so we wanted <bookmark mark="note1"/> to find out how we determine the term of a function,
                when we are given <bookmark mark="graph"/> the graph of that function.
                And we also know that the term of a linear function f of x has <bookmark mark="funcTerm"/> the structure f of x is equal to "a" times x plus b.
                
                aaaand, <bookmark mark="note2"/> we just learned, how to determine "b": We simply plug in zero for x, and the value of f of zero is equal to the value of b.
                
                Now, how do we obtain "a"?
                
                Before we figure that out: <bookmark mark="note3"/> Let's think back to what "a" and "b" actually describe.
                Do you remember, what aspect of the graph "a" and "b" describe?
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])


            
            self.wait_until_bookmark("graph")
            self.play(Write(updated_f))
            
            self.wait_until_bookmark("funcTerm")
            self.play(Write(func))

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_2_1_I_10_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["a describes the slope","$a$ large$\\rightarrow$ function steep"], ["$b$ describes shift in y-direction", "$b>0\\rightarrow$ shift upwards"]], buff=0.2, buff_inner=0)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Not quite...")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5)
        self.add(func)
                
        a, b = ValueTracker(1), ValueTracker(0)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)
        self.add(updated_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Mhmmm, that's not quite right!
                
                <bookmark mark="note1"/>
                "a" describes the slope of the function. <bookmark mark="cursorA"/> Remember: <bookmark mark="aH"/> high values of "a" mean a steep slope, <bookmark mark="aL"/> low values of "a" mean a flat slope. <bookmark mark="a1"/>
                
                "b" describes the shift of the function in y-Direction. Remember: <bookmark mark="bH"/> positive values of "b" lead to an upwards shift, <bookmark mark="bL"/> negative values of "b" lead to a downwards shift. <bookmark mark="b1"/>
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("cursorA")
            x, y, _ = plane.c2p(1, 1)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(1, a.get_value() * 1 + b.get_value())))

            self.wait_until_bookmark("aH")
            duration = 1
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            self.play(a.animate.set_value(2), run_time=duration)

            self.wait_until_bookmark("aL")
            duration = 1
            self.add_move_sound("backward", duration=duration, rate_func=smooth)
            self.play(a.animate.set_value(0.5), run_time=duration)

            self.wait_until_bookmark("a1")
            self.play(a.animate.set_value(1), run_time=0.5)
            cursor.clear_updaters()
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(0, a.get_value()*0+b.get_value())))
            note.change_colors([0,1])

            self.wait_until_bookmark("bH")
            duration = 1
            start = plane.c2p(0,0)
            x = start[0]
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            arr = Updown_Arrow(start, color=c3, stroke_width=5, vert=True).add_updater(lambda m: m.put_start_and_end_on(start+0.0000000001*DOWN, [x, cursor.get_y(),0]))
            self.add(arr)
            print(arr.get_center())
            self.play(b.animate.set_value(2), run_time=duration)

            self.wait_until_bookmark("bL")
            duration = 1
            self.add_move_sound("backward", duration=duration, rate_func=smooth)
            self.play(b.animate.set_value(-2), run_time=2)

            self.wait_until_bookmark("b1")
            self.play(b.animate.set_value(0), run_time=0.5)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_2_1_I_10_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["a describes the slope","$a$ large$\\rightarrow$ function steep"], ["$b$ describes shift in y-direction", "$b>0\\rightarrow$ shift upwards"]], buff=0.2, buff_inner=0)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Not quite...")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5)
        self.add(func)
                
        a, b = ValueTracker(1), ValueTracker(0)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)
        self.add(updated_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Mhmmm, that's not quite right!
                
                <bookmark mark="note1"/>
                "a" describes the slope of the function. <bookmark mark="cursorA"/> Remember: <bookmark mark="aH"/> high values of "a" mean a steep slope, <bookmark mark="aL"/> low values of "a" mean a flat slope. <bookmark mark="a1"/>
                
                "b" describes the shift of the function in y-Direction. Remember: <bookmark mark="bH"/> positive values of "b" lead to an upwards shift, <bookmark mark="bL"/> negative values of "b" lead to a downwards shift. <bookmark mark="b1"/>
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("cursorA")
            x, y, _ = plane.c2p(1, 1)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(1, a.get_value() * 1 + b.get_value())))

            self.wait_until_bookmark("aH")
            duration = 1
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            self.play(a.animate.set_value(2), run_time=duration)

            self.wait_until_bookmark("aL")
            duration = 1
            self.add_move_sound("backward", duration=duration, rate_func=smooth)
            self.play(a.animate.set_value(0.5), run_time=duration)

            self.wait_until_bookmark("a1")
            self.play(a.animate.set_value(1), run_time=0.5)
            cursor.clear_updaters()
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(0, a.get_value()*0+b.get_value())))
            note.change_colors([0,1])

            self.wait_until_bookmark("bH")
            duration = 1
            start = plane.c2p(0,0)
            x = start[0]
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            arr = Updown_Arrow(start, color=c3, stroke_width=5, vert=True).add_updater(lambda m: m.put_start_and_end_on(start+0.0000000001*DOWN, [x, cursor.get_y(),0]))
            self.add(arr)
            print(arr.get_center())
            self.play(b.animate.set_value(2), run_time=duration)

            self.wait_until_bookmark("bL")
            duration = 1
            self.add_move_sound("backward", duration=duration, rate_func=smooth)
            self.play(b.animate.set_value(-2), run_time=2)

            self.wait_until_bookmark("b1")
            self.play(b.animate.set_value(0), run_time=0.5)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_2_1_I_10_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["a describes the slope","$a$ large$\\rightarrow$ function steep"], ["$b$ describes shift in y-direction", "$b>0\\rightarrow$ shift upwards"]], buff=0.2, buff_inner=0)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Correct!")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5)
        self.add(func)
                
        a, b = ValueTracker(1), ValueTracker(0)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)
        self.add(updated_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Great job, that's exactly right!!!
                
                <bookmark mark="note1"/>
                "a" describes the slope of the function. <bookmark mark="cursorA"/> Remember: <bookmark mark="aH"/> high values of "a" mean a steep slope, <bookmark mark="aL"/> low values of "a" mean a flat slope. <bookmark mark="a1"/>
                
                "b" describes the shift of the function in y-Direction. Remember: <bookmark mark="bH"/> positive values of "b" lead to an upwards shift, <bookmark mark="bL"/> negative values of "b" lead to a downwards shift. <bookmark mark="b1"/>
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("cursorA")
            x, y, _ = plane.c2p(1, 1)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(1, a.get_value() * 1 + b.get_value())))

            self.wait_until_bookmark("aH")
            duration = 1
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            self.play(a.animate.set_value(2), run_time=duration)

            self.wait_until_bookmark("aL")
            duration = 1
            self.add_move_sound("backward", duration=duration, rate_func=smooth)
            self.play(a.animate.set_value(0.5), run_time=duration)

            self.wait_until_bookmark("a1")
            self.play(a.animate.set_value(1), run_time=0.5)
            cursor.clear_updaters()
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(0, a.get_value()*0+b.get_value())))
            note.change_colors([0,1])

            self.wait_until_bookmark("bH")
            duration = 1
            start = plane.c2p(0,0)
            x = start[0]
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            arr = Updown_Arrow(start, color=c3, stroke_width=5, vert=True).add_updater(lambda m: m.put_start_and_end_on(start+0.0000000001*DOWN, [x, cursor.get_y(),0]))
            self.add(arr)
            print(arr.get_center())
            self.play(b.animate.set_value(2), run_time=duration)

            self.wait_until_bookmark("bL")
            duration = 1
            self.add_move_sound("backward", duration=duration, rate_func=smooth)
            self.play(b.animate.set_value(-2), run_time=2)

            self.wait_until_bookmark("b1")
            self.play(b.animate.set_value(0), run_time=0.5)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_2_1_I_10_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["a describes the slope","$a$ large$\\rightarrow$ function steep"], ["$b$ describes shift in y-direction", "$b>0\\rightarrow$ shift upwards"]], buff=0.2, buff_inner=0)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Not quite...")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5)
        self.add(func)
                
        a, b = ValueTracker(1), ValueTracker(0)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)
        self.add(updated_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
                Mhmmm, that's not quite right!
                
                <bookmark mark="note1"/>
                "a" describes the slope of the function. <bookmark mark="cursorA"/> Remember: <bookmark mark="aH"/> high values of "a" mean a steep slope, <bookmark mark="aL"/> low values of "a" mean a flat slope. <bookmark mark="a1"/>
                
                "b" describes the shift of the function in y-Direction. Remember: <bookmark mark="bH"/> positive values of "b" lead to an upwards shift, <bookmark mark="bL"/> negative values of "b" lead to a downwards shift. <bookmark mark="b1"/>
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("cursorA")
            x, y, _ = plane.c2p(1, 1)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(1, a.get_value() * 1 + b.get_value())))

            self.wait_until_bookmark("aH")
            duration = 1
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            self.play(a.animate.set_value(2), run_time=duration)

            self.wait_until_bookmark("aL")
            duration = 1
            self.add_move_sound("backward", duration=duration, rate_func=smooth)
            self.play(a.animate.set_value(0.5), run_time=duration)

            self.wait_until_bookmark("a1")
            self.play(a.animate.set_value(1), run_time=0.5)
            cursor.clear_updaters()
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(0, a.get_value()*0+b.get_value())))
            note.change_colors([0,1])

            self.wait_until_bookmark("bH")
            duration = 1
            start = plane.c2p(0,0)
            x = start[0]
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            arr = Updown_Arrow(start, color=c3, stroke_width=5, vert=True).add_updater(lambda m: m.put_start_and_end_on(start+0.0000000001*DOWN, [x, cursor.get_y(),0]))
            self.add(arr)
            print(arr.get_center())
            self.play(b.animate.set_value(2), run_time=duration)

            self.wait_until_bookmark("bL")
            duration = 1
            self.add_move_sound("backward", duration=duration, rate_func=smooth)
            self.play(b.animate.set_value(-2), run_time=2)

            self.wait_until_bookmark("b1")
            self.play(b.animate.set_value(0), run_time=0.5)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_2_1_I_11(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=[["We want to determine $a$","$\\rightarrow$We want to find the slope of a function"], "Create slope triangle to find slope"])
        self.add(note)

        # Create the coordinate system
        cords = self.add_cords([-4,4, 1], [-8, 8, 2], x_ticks=[-4,-2,0,2,4], y_ticks=[-8,-4,0,4,8],
                               x_labels=[-4,-2,0,2,4], y_labels=[-8,-4,0,4,8])
        plane = cords[0]

        # Add title to the scene
        self.add_title("Slope of a linear function")

        # Create and plot piecewise linear function
        func = lambda x: 2*x
        func_plotted = plane.plot(func, color=GREEN)

        # Initialize a cursor
        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        slopeTriangleText = Text("Slope Triangle", color=c1).scale(0.8).next_to(cords, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text="""
                Ok, so we now <bookmark mark="note1"/> want to determine "a" from the graph of a function.
                
                As we just saw, that means we want to determine the slope of the function.
                
                In order to do that, we are revisiting a tool from earlier: <bookmark mark="note2"/> the slope triangle.
                
                <bookmark mark="writeCords"/>
                
                Consider this linear function and look at the line between the <bookmark mark="sec1"/> point x equals 1 and the point <bookmark mark="sec3"/> x equals 3.
                
                Just like earlier, we are drawing <bookmark mark="dashed"/> a vertical line from these points to the graph of the function.
                
                These lines intersect the graph at the values of <bookmark mark="circ1"/> f of one and <bookmark mark="circ2"/> f of three.
                
                We can shift <bookmark mark="triangle"/> the line between the two points up, to the lower of the two function values and connect it to
                the higher of the two values using a vertical line <bookmark mark="slopeTriangle"/> to form a triangle.
                
                This triangle is called <bookmark mark="highlight"/> the slope triangle.
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])
            
            self.wait_until_bookmark("writeCords")
            self.play(Write(cords), run_time=0.5)
            self.play(Write(func_plotted), run_time=0.5)
            self.add(cursor)

            self.wait_until_bookmark("sec1")
            cursor.idle = False
            x1, y1, _ = plane.x_axis.n2p(1)
            self.play(CursorMoveResize(cursor, x1, y1, 0.2, 0.2))

            self.wait_until_bookmark("sec3")
            x2, y2, _ = plane.x_axis.n2p(2)
            self.play(CursorMoveResize(cursor, x2, y2, 2*(x2-x1), 0.1))

            self.wait_until_bookmark("dashed")
            x3, y3, _ = plane.x_axis.n2p(3)
            d1 = DashedLine(start=[x1, y1, 0], end=[x1, plane.y_axis.n2p(func(1))[1], 0], color=BLACK)
            d2 = DashedLine(start=[x3, y3, 0], end=[x3, plane.y_axis.n2p(func(3))[1], 0], color=BLACK)
            self.play(Write(d1), Write(d2), run_time=3)

            self.wait_until_bookmark("circ1")
            circ1 = Circle(radius=0.1, stroke_width=2, color=BLACK).move_to([x1, plane.y_axis.n2p(func(1))[1], 0])
            self.play(Write(circ1))
            
            self.wait_until_bookmark("circ2")
            circ2 = Circle(radius=0.1, stroke_width=2, color=BLACK).move_to([x3, plane.y_axis.n2p(func(3))[1], 0])
            self.play(Write(circ2))

            self.wait_until_bookmark("triangle")
            self.play(CursorMoveResize(cursor, x2, plane.y_axis.n2p(func(1))[1], 2*(x2-x1), 0.1), run_time=2.5)

            self.wait_until_bookmark("slopeTriangle")
            tri = Polygon([x1, plane.y_axis.n2p(func(1))[1], 0], [x3, plane.y_axis.n2p(func(1))[1], 0], [x3, plane.y_axis.n2p(func(3))[1], 0], color=GREEN)
            self.play(Write(tri), Unwrite(d1), Unwrite(d2), Unwrite(circ1), Unwrite(circ2), CursorMoveResize(cursor, xo, yo, 0.2, 0.2))
            cursor.idle = True

            self.wait_until_bookmark("highlight")
            self.play(tri.animate(run_time=2.5).set_color(RED), Write(slopeTriangleText))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_2_1_I_12(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=["$1.$Compute width of Triangle", "$2.$Compute height of Triangle", "3. Compute $a$ by dividing height by width"])
        self.add(note)

        # Create the coordinate system
        cords = self.add_cords([-4,4, 2], [-8, 8, 2], x_ticks=[-4,-2,0,4], y_ticks=[-8,-4,0,4,8],
                               x_labels=[-4,-2,0,4], y_labels=[-8,-4,0,4,8])
        plane = cords[0]
        self.add(cords)

        # Add title to the scene
        self.add_title("Slope Triangle")

        # Create and plot piecewise linear function
        func = lambda x: 2*x+1
        func_plotted = plane.plot(func, color=GREEN)
        self.add(func_plotted)

        # Initialize a cursor
        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])
        self.add(cursor)

        x1, y1, _ = plane.x_axis.n2p(1)
        x2, y2, _ = plane.x_axis.n2p(2)
        x3, y3, _ = plane.x_axis.n2p(3)
        Left, Right, Top = [x1, plane.y_axis.n2p(func(1))[1], 0], [x3, plane.y_axis.n2p(func(1))[1], 0], [x3, plane.y_axis.n2p(func(3))[1], 0]
        horLine = Line(start = Left, end = Right, color=BLUE)
        vertLine = Line(start = Right, end = Top, color=BLUE)
        width = MathTex("2", color=c1t, font_size=fs3).next_to(horLine, DOWN, buff=0.1)
        height = MathTex("4", color=c1t, font_size=fs3).next_to(vertLine, RIGHT, buff=0.1)
        slopeLine = Line(start = Left, end = Top, color=BLUE)
        tri = Polygon(Left, Right, Top, color=RED)
        self.add(tri)

        d1 = DashedLine(start=[x1, y1, 0], end=Left, color=BLACK)
        d2 = DashedLine(start=[x3, y3, 0], end=Right, color=BLACK)

        shift = plane.x_axis.n2p(0)-plane.x_axis.n2p(3)
        dh1 = DashedLine(start=Right, end=Right+shift, color=BLACK)
        dh2 = DashedLine(start=Top, end=Top+shift, color=BLACK)

        aTerm = MathTex("a=", "{{height}","\\over{width}}","=\\frac42=2", color=BLACK).scale(0.7).next_to(plane, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text="""
                Trust me, it's really important to understand the slope triangle well.
                
                For that reason, let's analyze it step by step.
                
                First, let's look at <bookmark mark="hor"/> the horizontal line.
                -
                As we can see, it describes the width of the triangle.
                
                If we connect the endpoints of that part of the triangle to the x-axis
                <bookmark mark="dashed"/> using vertical lines, we can then read off
                the width of the triangle from the x-axis. In this case,
                <bookmark mark="width"/> the width is 2. <bookmark mark="unDashed"/>
                
                Next, let's look at <bookmark mark="vert"/> the vertical line.
                
                The vertical line describes the height of the triangle.
                
                If we connect the endpoints of that part of the triangle to the y-axis,
                <bookmark mark="dashedh"/> using horizontal lines, we can then read off
                the height of the triangle, similar to how we've read of the width earlier.
                In this example, <bookmark mark="height"/> the height is 4. <bookmark mark="unDashedH"/>
                
                Finally, and most importantly, we want to know what the slope of the triangle is.
                
                The slope is also described by the <bookmark mark="slopeLine"/> third line, which is at an angle.
                """
        ) as tracker:
            
            self.wait_until_bookmark("hor")
            self.play(Write(horLine))

            self.wait_until_bookmark("dashed")
            self.play(Write(d1), Write(d2))
            note.change_colors([0])

            self.wait_until_bookmark("width")
            self.play(Write(width))

            self.wait_until_bookmark("unDashed")
            self.play(Unwrite(d1), Unwrite(d2))

            self.wait_until_bookmark("vert")
            self.play(Write(vertLine), Unwrite(horLine))

            self.wait_until_bookmark("dashedh")
            self.play(Write(dh1), Write(dh2))
            note.change_colors([0,1])

            self.wait_until_bookmark("height")
            self.play(Write(height))

            self.wait_until_bookmark("unDashedH")
            self.play(Unwrite(dh1), Unwrite(dh2), Unwrite(vertLine))

            self.wait_until_bookmark("slopeLine")
            self.play(Write(slopeLine))

        with self.voiceover(
                text="""
                But how do we compute the slope? And by computing the slope, we also mean: how do we <bookmark mark="a"/>
                compute "a"?
                
                We compute the slope by dividing the <bookmark mark="height2"/> height of the triangle
                by the <bookmark mark="width2"/> triangle's width.
                
                In this case, it means dividing <bookmark mark="final"/> 4 by 2, which is 2.
                
                This means, that "a" is also 2.
                
                Great, we just learned how to use the slope triangle to compute the slope of a function:
                
                We compute the height and the width of the triangle, and then obtain the slope by dividing
                the height by the width.
                """
        ) as tracker:

            self.wait_until_bookmark("a")
            self.play(Write(aTerm[0]))

            self.wait_until_bookmark("height2")
            note.change_colors([1,2])
            self.play(Write(aTerm[1]), run_time=0.5)

            self.wait_until_bookmark("width2")
            self.play(Write(aTerm[2]), run_time=0.5)

            self.wait_until_bookmark("final")
            self.play(Write(aTerm[3]))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)






# PROTOTYPES = [
#     PagePrototypeVideo.from_scene(Func_2_1_I_1_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_2_1_I_1_q, Func_2_1_I_1_q.__name__),
#     PagePrototypeVideo.from_scene(Func_2_1_I_1_a),
#     PagePrototypeVideo.from_scene(Func_2_1_I_1_b),
#     PagePrototypeVideo.from_scene(Func_2_1_I_1_c),
#     PagePrototypeVideo.from_scene(Func_2_1_I_2),
#     PagePrototypeVideo.from_scene(Func_2_1_I_3_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_2_1_I_3_q, Func_2_1_I_3_q.__name__),
#     PagePrototypeVideo.from_scene(Func_2_1_I_3_a),
#     PagePrototypeVideo.from_scene(Func_2_1_I_3_b),
#     PagePrototypeVideo.from_scene(Func_2_1_I_3_c),
#     PagePrototypeVideo.from_scene(Func_2_1_I_4_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_2_1_I_3_q, Func_2_1_I_4_q.__name__),
#     PagePrototypeVideo.from_scene(Func_2_1_I_4_a),
#     PagePrototypeVideo.from_scene(Func_2_1_I_4_b),
#     PagePrototypeVideo.from_scene(Func_2_1_I_4_c),
#     PagePrototypeVideo.from_scene(Func_2_1_I_5_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_2_1_I_5_q, Func_2_1_I_5_q.__name__),
#     PagePrototypeVideo.from_scene(Func_2_1_I_5_a),
#     PagePrototypeVideo.from_scene(Func_2_1_I_5_b),
#     PagePrototypeVideo.from_scene(Func_2_1_I_5_c),
#     PagePrototypeVideo.from_scene(Func_2_1_I_5_d),
#     PagePrototypeVideo.from_scene(Func_2_1_I_6_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_2_1_I_6_q, Func_2_1_I_6_q.__name__),
#     PagePrototypeVideo.from_scene(Func_2_1_I_6_a),
#     PagePrototypeVideo.from_scene(Func_2_1_I_6_b),
#     PagePrototypeVideo.from_scene(Func_2_1_I_6_c),
#     PagePrototypeVideo.from_scene(Func_2_1_I_6_d),
#     PagePrototypeVideo.from_scene(Func_2_1_I_7),
#     PagePrototypeVideo.from_scene(Func_2_1_I_8_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_2_1_I_8_q, Func_2_1_I_8_q.__name__),
#     PagePrototypeVideo.from_scene(Func_2_1_I_8_a),
#     PagePrototypeVideo.from_scene(Func_2_1_I_8_b),
#     PagePrototypeVideo.from_scene(Func_2_1_I_8_c),
#     PagePrototypeVideo.from_scene(Func_2_1_I_9_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_2_1_I_9_q, Func_2_1_I_9_q.__name__),
#     PagePrototypeVideo.from_scene(Func_2_1_I_9_a),
#     PagePrototypeVideo.from_scene(Func_2_1_I_9_b),
#     PagePrototypeVideo.from_scene(Func_2_1_I_9_c),
#     PagePrototypeVideo.from_scene(Func_2_1_I_10_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_2_1_I_10_q, Func_2_1_I_10_q.__name__),
#     PagePrototypeVideo.from_scene(Func_2_1_I_10_a),
#     PagePrototypeVideo.from_scene(Func_2_1_I_10_b),
#     PagePrototypeVideo.from_scene(Func_2_1_I_10_c),
#     PagePrototypeVideo.from_scene(Func_2_1_I_10_d),
#     PagePrototypeVideo.from_scene(Func_2_1_I_11),
#     PagePrototypeVideo.from_scene(Func_2_1_I_12),
# ]