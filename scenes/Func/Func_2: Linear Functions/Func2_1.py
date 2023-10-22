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
import ast


#####################################
#####################################
class Func_2_1_I_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_2_1.I1.q.answer-options")),
            correctAnswerIndex = 2,
            questionText = self.translate("Func_2_1.I1.q.question-text") 
        )

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
        self.add_title(self.translate("Func_2_1.I1.title"))

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
                text=self.translate("Func_2_1.I1.voiceover")
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
        self.add_title(self.translate("Func_2_1.I1.title"))

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
                text=self.translate("Func_2_1.I1a.voiceover")
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
        self.add_title(self.translate("Func_2_1.I1.title"))

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
                text=self.translate("Func_2_1.I1b.voiceover")
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
        self.add_title(self.translate("Func_2_1.I1.title"))

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
                text=self.translate("Func_2_1.I1c.voiceover")
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
        self.add_title(self.translate("Func_2_1.I2.title"))

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
        e1 = Tex(self.translate("Func_2_1.I2.e1"), color=c1t, font_size=fs3)
        e2 = Tex(self.translate("Func_2_1.I2.e2"), color=c1t, font_size=fs3)
        e3 = Tex(self.translate("Func_2_1.I2.e3"), tex_environment="flushright", color=c1t, font_size=fs3)
        explanations = VGroup(e1, e2, e3).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(funcTex, DOWN, buff=.6)
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_1.I2.voiceover")
        ) as tracker:

            self.play(Write(cords))

            self.wait_until_bookmark("constant")
            self.play(Write(e1), run_time=.3)

            self.wait_until_bookmark("straight")
            self.play(Write(e2), run_time=.3)
            self.add_pencil_sound(1.5)
            self.play(Write(func1_plotted))

            self.wait_until_bookmark("term")
            self.play(Write(e3), run_time=.3)
            self.play(Write(funcTex))

        # Wait for 4 seconds at the end of animation
        self.wait(4)


#####################################
#####################################
class Func_2_1_I_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_2_1.I3.q.answer-options")),
            correctAnswerIndex = 0,
            questionText = self.translate("Func_2_1.I3.q.question-text") 
        )


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-3, 3, 1], x_ticks=[-3, -2, -1, 1, 2,3], y_ticks=[-3, -2, -1, 1, 2,3],).shift(DOWN)
        plane = cords[0]

        # Add title to the scene
        self.add_title(self.translate("Func_2_1.I3.title"))

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
                text=self.translate("Func_2_1.I3.voiceover")
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
        self.add_title(self.translate("Func_2_1.I3.title"))

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
                text=self.translate("Func_2_1.I3a.voiceover")
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
        self.add_title(self.translate("Func_2_1.I3.title"))

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
                text=self.translate("Func_2_1.I3c.voiceover")
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
        self.add_title(self.translate("Func_2_1.I3.title"))

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
                text=self.translate("Func_2_1.I3c.voiceover")
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

class Func_2_1_I_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=["$f(x)=2x^2-4$", "$g(x)=2x-4$", "$h(x)=2/x-4$"],
            correctAnswerIndex=1,
            questionText = self.translate("Func_2_1.I4.q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I4.title"))

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
                text=self.translate("Func_2_1.I4q.voiceover")
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
        title = self.add_title(self.translate("Func_2_1.I4.title"))

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
                text=self.translate("Func_2_1.I4a.voiceover")
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
        title = self.add_title(self.translate("Func_2_1.I4.title"))

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
                text=self.translate("Func_2_1.I4b.voiceover")
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
        title = self.add_title(self.translate("Func_2_1.I4.title"))

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
                text=self.translate("Func_2_1.I4a.voiceover")
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
class Func_2_1_I_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_2_1.I5.q.answer-options")),
            correctAnswerIndex=3,
            questionText = self.translate("Func_2_1.I5.q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I5.title"))

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
                text = self.translate("Func_2_1.I5q.voiceover")
        ) as tracker:

            self.wait_until_bookmark("f")
            cursor.idle = False
            self.play(Write(func))

            self.wait_until_bookmark("tf")
            x, y, _ = func[0].get_center() + DOWN * 0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("tx")
            x, y, _ = func[1].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("tax")
            x, y, _ = func[2].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("tb")
            x, y, _ = func[3].get_center() + DOWN * 0.4 + LEFT * 0.1
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("a")
            x, y, _ = func[2].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("b")
            x, y, _ = func[3].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("example")
            x, y, _ = func_2[0].get_center() + DOWN * 0.4
            self.play(TransformMatchingTex(func, func_2), CursorMoveTo(cursor, x, y))

            self.wait_until_bookmark("ex1")
            x, y, _ = func_2[1].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("ex2")
            x, y, _ = func_2[3].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("plot")
            x, y, _ = plane.c2p(0, 0)
            self.play(func_2.animate.shift(DOWN * 1.5), Write(cords), CursorMoveTo(cursor, x, y), Write(updated_f),
                      run_time=1)
            cursor.idle = True

            self.wait_until_bookmark("qmark")
            cursor.idle = False
            func_3 = Tex("$f(x)=ax$, $a>1$", color=c1t, font_size=fs2).next_to(cords, DOWN).move_to(func_2)
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
        title = self.add_title(self.translate("Func_2_1.I5.title"))

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
                text = self.translate("Func_2_1.I5a.voiceover")
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
        title = self.add_title(self.translate("Func_2_1.I5.title"))

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
                text = self.translate("Func_2_1.I5a.voiceover")
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
        title = self.add_title(self.translate("Func_2_1.I5.title"))

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
                text = self.translate("Func_2_1.I5a.voiceover")
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
        title = self.add_title(self.translate("Func_2_1.I5.title"))

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
                text = self.translate("Func_2_1.I5d.voiceover")
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
class Func_2_1_I_6_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_2_1.I6.q.answer-options")),
            correctAnswerIndex=0,
            questionText = self.translate("Func_2_1.I6.q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I6.title"))

        # Create the coordinate system
        cords = self.add_cords([-4, 4, 1], [-4, 4, 1], x_ticks=[-4, -2, 0, 2, 4], y_ticks=[-4, -2, 0, 2, 4])
        plane = cords[0]

        # Create and plot piecewise linear function
        func = MathTex("f", "(x)", "=ax+", "b", color=c1t, font_size=fs2).next_to(cords, DOWN).shift(UP * 1.5)
        func_2 = MathTex("f", "(x)", "=", "1\\cdot x", "+","b", color=c1t, font_size=fs2).next_to(cords, DOWN).shift(UP * 1.5)
        a, b = ValueTracker(1), ValueTracker(0)
        a_decimal = DecimalNumber(1, font_size=fs2, num_decimal_places=1).next_to(func, LEFT, buff=0.5)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value() * x + b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)

        a_high = Tex(self.translate("Func_2_1.I6.a_high"), color=c1t, font_size=fs3)
        a_low = Tex(self.translate("Func_2_1.I6.a_low"), color=c1t, font_size=fs3)
        a_high_low = VGroup(a_high, a_low).arrange(DOWN, buff=.4, aligned_edge=LEFT).next_to(func, DOWN, buff=.8)

        # Initialize a cursor
        cursor = AltCursor(idle=True)
        cursor.autoFadeBackground = True

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_1.I6q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(func))

            self.wait_until_bookmark("tf")
            cursor.idle=False
            x, y, _ = func[0].get_center() + DOWN * 0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("tx")
            x, y, _ = func[1].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("tax")
            x, y, _ = func[2].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("tb")
            x, y, _ = func[3].get_center() + DOWN * 0.4 + LEFT * 0.1
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("a")
            x, y, _ = func[2].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("a_high")
            x, y, _ = a_high.get_center() + DOWN * 0.4
            self.play(Write(a_high), CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("a_low")
            x, y, _ = a_low.get_center() + DOWN * 0.4
            self.play(Write(a_low), CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("b")
            cursor.idle=False
            x, y, _ = func[3].get_center() + DOWN * 0.4
            self.play(Unwrite(a_high_low), CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("example")
            x, y, _ = func_2[0].get_center() + DOWN * 0.4
            self.play(TransformMatchingTex(func, func_2), CursorMoveTo(cursor, x, y))

            self.wait_until_bookmark("ex1")
            x, y, _ = func_2[1].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("ex2")
            x, y, _ = func_2[3].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("plus_b_final")
            x, y, _ = func_2[-1].get_center() + DOWN * 0.4
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("plot")
            x, y, _ = plane.c2p(0, 0)
            self.play(func_2.animate.shift(DOWN * 1.5), Write(cords), CursorMoveTo(cursor, x, y), Write(updated_f), run_time=1)
            cursor.idle = True

            self.wait_until_bookmark("b_change")
            cursor.idle = False
            x, y, _ = func_2[-1].get_center() + DOWN * 0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.idle = True

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_2_1_I_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I6.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f","(x)","=","x", color=c1t, font_size=fs2)
        a, b = ValueTracker(1), ValueTracker(0)
        a_decimal = DecimalNumber(0, font_size=fs2, color=c1t, include_sign=True, num_decimal_places=1).next_to(func[-1], RIGHT, buff=0.1).add_updater(lambda d: d.set_value(b.get_value()))
        func_a_decimal = VGroup(func, a_decimal).arrange(RIGHT, buff=0.1).next_to(cords, DOWN)
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
        cursor.add_updater(lambda c: self.bring_to_front(cursor))
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_1.I6a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("ftransform")
            self.play(Write(a_decimal), run_time=1)

            self.wait_until_bookmark("x")
            x,y,_ = plane.c2p(0,0)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)

            self.wait_until_bookmark("fx")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(0, a.get_value()*0+b.get_value())))

            self.wait_until_bookmark("increaseB")
            duration = 2
            start = plane.c2p(0,0)
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            self.add(Updown_Arrow(start, color=c3, stroke_width=5, vert=True).add_updater(lambda m: m.put_start_and_end_on(start+[0,0,1], [x, cursor.get_y(),0])))
            self.play(b.animate.set_value(2), run_time=duration)
            cursor.idle=True

            self.wait_until_bookmark("decreaseB")
            cursor.idle=False
            duration = 2
            self.add_move_sound("backward", duration=duration, rate_func=smooth)
            self.play(b.animate.set_value(-2), run_time=2)
            cursor.idle=True

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_2_1_I_6_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I6.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f","(x)","=","x", color=c1t, font_size=fs2)
        a, b = ValueTracker(1), ValueTracker(0)
        a_decimal = DecimalNumber(0, font_size=fs2, color=c1t, include_sign=True, num_decimal_places=1).next_to(func[-1], RIGHT, buff=0.1).add_updater(lambda d: d.set_value(b.get_value()))
        func_a_decimal = VGroup(func, a_decimal).arrange(RIGHT, buff=0.1).next_to(cords, DOWN)
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
        cursor.add_updater(lambda c: self.bring_to_front(cursor))
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_1.I6b.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("ftransform")
            self.play(Write(a_decimal), run_time=1)

            self.wait_until_bookmark("x")
            x,y,_ = plane.c2p(0,0)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)

            self.wait_until_bookmark("fx")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(0, a.get_value()*0+b.get_value())))

            self.wait_until_bookmark("increaseB")
            duration = 2
            start = plane.c2p(0,0)
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            self.add(Updown_Arrow(start, color=c3, stroke_width=5, vert=True).add_updater(lambda m: m.put_start_and_end_on(start+[0,0,1], [x, cursor.get_y(),0])))
            self.play(b.animate.set_value(2), run_time=duration)
            cursor.idle=True

            self.wait_until_bookmark("decreaseB")
            cursor.idle=False
            duration = 2
            self.add_move_sound("backward", duration=duration, rate_func=smooth)
            self.play(b.animate.set_value(-2), run_time=2)
            cursor.idle=True

        # Wait for 4 seconds at the end of animation
        self.wait(4)



class Func_2_1_I_6_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I6.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f","(x)","=","x", color=c1t, font_size=fs2)
        a, b = ValueTracker(1), ValueTracker(0)
        a_decimal = DecimalNumber(0, font_size=fs2, color=c1t, include_sign=True, num_decimal_places=1).next_to(func[-1], RIGHT, buff=0.1).add_updater(lambda d: d.set_value(b.get_value()))
        func_a_decimal = VGroup(func, a_decimal).arrange(RIGHT, buff=0.1).next_to(cords, DOWN)
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
        cursor.add_updater(lambda c: self.bring_to_front(cursor))
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_1.I6b.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("ftransform")
            self.play(Write(a_decimal), run_time=1)

            self.wait_until_bookmark("x")
            x,y,_ = plane.c2p(0,0)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)

            self.wait_until_bookmark("fx")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(0, a.get_value()*0+b.get_value())))

            self.wait_until_bookmark("increaseB")
            duration = 2
            start = plane.c2p(0,0)
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            self.add(Updown_Arrow(start, color=c3, stroke_width=5, vert=True).add_updater(lambda m: m.put_start_and_end_on(start+[0,0,1], [x, cursor.get_y(),0])))
            self.play(b.animate.set_value(2), run_time=duration)
            cursor.idle=True

            self.wait_until_bookmark("decreaseB")
            cursor.idle=False
            duration = 2
            self.add_move_sound("backward", duration=duration, rate_func=smooth)
            self.play(b.animate.set_value(-2), run_time=2)
            cursor.idle=True

        # Wait for 4 seconds at the end of animation
        self.wait(4)



class Func_2_1_I_6_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I6.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f","(x)","=","x", color=c1t, font_size=fs2)
        a, b = ValueTracker(1), ValueTracker(0)
        a_decimal = DecimalNumber(0, font_size=fs2, color=c1t, include_sign=True, num_decimal_places=1).next_to(func[-1], RIGHT, buff=0.1).add_updater(lambda d: d.set_value(b.get_value()))
        func_a_decimal = VGroup(func, a_decimal).arrange(RIGHT, buff=0.1).next_to(cords, DOWN)
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
        cursor.add_updater(lambda c: self.bring_to_front(cursor))
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_1.I6b.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("ftransform")
            self.play(Write(a_decimal), run_time=1)

            self.wait_until_bookmark("x")
            x,y,_ = plane.c2p(0,0)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)

            self.wait_until_bookmark("fx")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.8)
            cursor.add_updater(lambda c: c.move_to(plane.c2p(0, a.get_value()*0+b.get_value())))

            self.wait_until_bookmark("increaseB")
            duration = 2
            start = plane.c2p(0,0)
            self.add_move_sound("forward", duration=duration, rate_func=smooth)
            self.add(Updown_Arrow(start, color=c3, stroke_width=5, vert=True).add_updater(lambda m: m.put_start_and_end_on(start+[0,0,1], [x, cursor.get_y(),0])))
            self.play(b.animate.set_value(2), run_time=duration)
            cursor.idle=True

            self.wait_until_bookmark("decreaseB")
            cursor.idle=False
            duration = 2
            self.add_move_sound("backward", duration=duration, rate_func=smooth)
            self.play(b.animate.set_value(-2), run_time=2)
            cursor.idle=True

        # Wait for 4 seconds at the end of animation
        self.wait(4)



#####################################
#####################################
class Func_2_1_I_7(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I7.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4])
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs2).next_to(cords, DOWN)
        a, b = ValueTracker(1), ValueTracker(0)


        # Create a notepad with texts 
        notes = VGroup(Tex(self.translate("Func_2_1.I7.note_1"), color=c1t, font_size=fs3, tex_environment="flushleft"), Tex(self.translate("Func_2_1.I7.note_2"), color=c1t, font_size=fs3, tex_environment="flushleft")).arrange(DOWN, buff=.4, aligned_edge=LEFT).next_to(func, DOWN, buff=.6)

        
        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)
        self.add(updated_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.add_updater(lambda c: self.bring_to_front(cursor))
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_1.I7.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("funcTerm")
            self.play(Write(func))

            self.wait_until_bookmark("a")
            x,y,_ = func[1].get_center()+DOWN*0.4
            cursor.idle=False
            self.play(Write(notes[0]), CursorMoveTo(cursor, x, y), run_time=0.8)

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
            x,y,_ = func[3].get_center()+DOWN*0.4
            cursor.clear_updaters()
            self.play(Write(notes[1]), CursorMoveTo(cursor, x, y), run_time=0.8)

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



#####################################
#####################################
class Func_2_1_I_8_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_2_1.I8.q.answer-options")),
            correctAnswerIndex=1,
            questionText = self.translate("Func_2_1.I8.q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I8.q.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4]).shift(DOWN)
        plane = cords[0]

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).next_to(title, DOWN, buff=1.5).shift(DOWN)
                
        a, b = ValueTracker(1), ValueTracker(2)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        # Sine function that is updated
        updated_f = always_redraw(redraw_f)

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.move_to(plane.c2p(0,0))
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_1.I8.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(func))

            self.wait_until_bookmark("cords")
            self.play(Write(cords), func.animate.move_to(cords.get_bottom()+0.5*DOWN), run_time=0.5)

            self.wait_until_bookmark("func")
            self.add_pencil_sound(1)
            self.play(Write(updated_f), run_time=1)

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

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I8.q.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs2).move_to(cords.get_bottom()+0.5*DOWN)
        func2 = MathTex("f","(0)","=","a\\cdot","0","+", "b", "=","b", color=c1t, font_size=fs2).move_to(cords.get_bottom()+0.5*DOWN)
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
                text=self.translate("Func_2_1.I8.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("plugInZero")
            cursor.idle=False
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
            x,y,_ = func2[-1].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("origin")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("yaxis")
            self.play(CursorMarkAxis(cursor, plane, axis='y'), run_time=0.5)

            self.wait_until_bookmark("f0")
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

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I8.q.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs2).move_to(cords.get_bottom()+0.5*DOWN)
        func2 = MathTex("f","(0)","=","a\\cdot","0","+", "b", "=","b", color=c1t, font_size=fs2).move_to(cords.get_bottom()+0.5*DOWN)
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
                text=self.translate("Func_2_1.I8.b.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("plugInZero")
            cursor.idle=False
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
            x,y,_ = func2[-1].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("origin")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("yaxis")
            self.play(CursorMarkAxis(cursor, plane, axis='y'), run_time=0.5)

            self.wait_until_bookmark("f0")
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

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I8.q.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs2).move_to(cords.get_bottom()+0.5*DOWN)
        func2 = MathTex("f","(0)","=","a\\cdot","0","+", "b", "=","b", color=c1t, font_size=fs2).move_to(cords.get_bottom()+0.5*DOWN)
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
                text = self.translate("Func_2_1.I8.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("plugInZero")
            cursor.idle=False
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
            x,y,_ = func2[-1].get_center()+DOWN*0.4
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("origin")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.4)

            self.wait_until_bookmark("yaxis")
            self.play(CursorMarkAxis(cursor, plane, axis='y'), run_time=0.5)

            self.wait_until_bookmark("f0")
            x,y,_ = plane.c2p(0,2)
            self.play(CursorMoveResize(cursor, x, y, 0.2, 0.2), run_time=0.4)

            self.wait_until_bookmark("beq2")
            self.play(ReplacementTransform(func2, sol), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)



#####################################
#####################################

class Func_2_1_I_9_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_2_1.I9.q.answer-options")),
            correctAnswerIndex = 3,
            questionText = self.translate("Func_2_1.I9.q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I9.q.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4]).shift(DOWN)
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
                text=self.translate("Func_2_1.I9.q.voiceover")
        ) as tracker:
            
            self.play(Write(cords), run_time=0.5)

            self.wait_until_bookmark("plot")
            self.play(Write(updated_f), run_time=0.5)

            self.wait_until_bookmark("func")
            self.play(Write(func), run_time=0.5)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_2_1_I_9_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I9.q.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5)
        func_0 = MathTex("f(0)=","a","\\cdot 0+", "b", "=b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5).scale(0.9)
        b_eq = MathTex("f(0)=2","\\Rightarrow b=2", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5).next_to(cords, DOWN, buff=0.5)
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
                text=self.translate("Func_2_1.I9.a.voiceover")
        ) as tracker:
            
            self.play(Write(cords), run_time=0.5)
            self.play(Write(updated_f), run_time=0.5)

            self.wait_until_bookmark("x0")
            x,y,_ = plane.c2p(0,0)
            cursor.idle=False
            self.play(TransformMatchingTex(func, func_0))
            self.play(CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("y0")
            cursor.idle=False
            x,y,_ = plane.c2p(0,2)
            self.play(CursorMoveTo(cursor, x,y),ReplacementTransform(func_0, b_eq[0]),  run_time=1)
            cursor.idle=True

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

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I9.q.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5)
        func_0 = MathTex("f(0)=","a","\\cdot 0+", "b", "=b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5).scale(0.9)
        b_eq = MathTex("f(0)=2","\\Rightarrow b=2", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5).next_to(cords, DOWN, buff=0.5)
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
                text=self.translate("Func_2_1.I9.a.voiceover")
        ) as tracker:
            
            self.play(Write(cords), run_time=0.5)
            self.play(Write(updated_f), run_time=0.5)

            self.wait_until_bookmark("x0")
            x,y,_ = plane.c2p(0,0)
            cursor.idle=False
            self.play(TransformMatchingTex(func, func_0))
            self.play(CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("y0")
            cursor.idle=False
            x,y,_ = plane.c2p(0,2)
            self.play(CursorMoveTo(cursor, x,y),ReplacementTransform(func_0, b_eq[0]),  run_time=1)
            cursor.idle=True

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

        # Add title to the scene
        title = self.add_title("Linear Function: Determine b")

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5)
        func_0 = MathTex("f(0)=","a","\\cdot 0+", "b", "=b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5).scale(0.9)
        b_eq = MathTex("f(0)=2","\\Rightarrow b=2", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5).next_to(cords, DOWN, buff=0.5)
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
                text=self.translate("Func_2_1.I9.a.voiceover")
        ) as tracker:
            
            self.play(Write(cords), run_time=0.5)
            self.play(Write(updated_f), run_time=0.5)

            self.wait_until_bookmark("x0")
            x,y,_ = plane.c2p(0,0)
            cursor.idle=False
            self.play(TransformMatchingTex(func, func_0))
            self.play(CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("y0")
            cursor.idle=False
            x,y,_ = plane.c2p(0,2)
            self.play(CursorMoveTo(cursor, x,y),ReplacementTransform(func_0, b_eq[0]),  run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("beq")
            self.play(Write(b_eq[1]), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_2_1_I_9_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I9.q.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4],
                               x_labels=[-3,-1,0,1,3], y_labels=[-4,-2,0,2,4])
        plane = cords[0]

        # Create and plot piecewise linear function
        func = MathTex("f(x)=","a","x+", "b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5)
        func_0 = MathTex("f(0)=","a","\\cdot 0+", "b", "=b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5).scale(0.9)
        b_eq = MathTex("f(0)=2","\\Rightarrow b=2", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.5).next_to(cords, DOWN, buff=0.5)
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
                text=self.translate("Func_2_1.I9.d.voiceover")
        ) as tracker:
            
            self.play(Write(cords), run_time=0.5)
            self.play(Write(updated_f), run_time=0.5)

            self.wait_until_bookmark("x0")
            x,y,_ = plane.c2p(0,0)
            cursor.idle=False
            self.play(TransformMatchingTex(func, func_0))
            self.play(CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("y0")
            cursor.idle=False
            x,y,_ = plane.c2p(0,2)
            self.play(CursorMoveTo(cursor, x,y),ReplacementTransform(func_0, b_eq[0]),  run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("beq")
            self.play(Write(b_eq[1]), run_time=1)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


#####################################
#####################################

class Func_2_1_I_10_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_2_1.I10.q.answer-options")),
            correctAnswerIndex=2,
            questionText = self.translate("Func_2_1.I10.q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I10.q.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-4, 4, 1], x_ticks=[-3,-1,0,1,3], y_ticks=[-4,-2,0,2,4])
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
                text=self.translate("Func_2_1.I10.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("graph")
            self.play(Write(updated_f))
            
            self.wait_until_bookmark("funcTerm")
            self.play(Write(func))

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_2_1_I_10_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        # note = Notepad(texts=[["a describes the slope","$a$ large$\\rightarrow$ function steep"], ["$b$ describes shift in y-direction", "$b>0\\rightarrow$ shift upwards"]], buff=0.2, buff_inner=0)
        # self.add(note)

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I10.q.title"))

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
                text=self.translate("Func_2_1.I10.a.voiceover")
        ) as tracker:
            
            # self.wait_until_bookmark("note1")
            # note.change_colors([0])

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
            # note.change_colors([0,1])

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
        # note = Notepad(texts=[["a describes the slope","$a$ large$\\rightarrow$ function steep"], ["$b$ describes shift in y-direction", "$b>0\\rightarrow$ shift upwards"]], buff=0.2, buff_inner=0)
        # self.add(note)

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I10.q.title"))

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
                text=self.translate("Func_2_1.I10.a.voiceover")
                
        ) as tracker:
            
            # self.wait_until_bookmark("note1")
            # note.change_colors([0])

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
            # note.change_colors([0,1])

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
        # note = Notepad(texts=[["a describes the slope","$a$ large$\\rightarrow$ function steep"], ["$b$ describes shift in y-direction", "$b>0\\rightarrow$ shift upwards"]], buff=0.2, buff_inner=0)
        # self.add(note)

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I10.q.title"))

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
                text=self.translate("Func_2_1.I10.c.voiceover")
        ) as tracker:
            
            # self.wait_until_bookmark("note1")
            # note.change_colors([0])

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
            # note.change_colors([0,1])

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
        # note = Notepad(texts=[["a describes the slope","$a$ large$\\rightarrow$ function steep"], ["$b$ describes shift in y-direction", "$b>0\\rightarrow$ shift upwards"]], buff=0.2, buff_inner=0)
        # self.add(note)

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_1.I10.q.title"))

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
                text=self.translate("Func_2_1.I10.a.voiceover")
        ) as tracker:
            
            # self.wait_until_bookmark("note1")
            # note.change_colors([0])

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
            # note.change_colors([0,1])

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



#####################################
#####################################
class Func_2_1_I_11(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        # note = Notepad(texts=[["We want to determine $a$","$\\rightarrow$We want to find the slope of a function"], "Create slope triangle to find slope"])
        # self.add(note)

        # Create the coordinate system
        cords = self.add_cords([-4,4, 1], [-8, 8, 2], x_ticks=[-4,-2,0,2,4], y_ticks=[-8,-4,0,4,8],
                               x_labels=[-4,-2,0,2,4], y_labels=[-8,-4,0,4,8])
        plane = cords[0]

        # Add title to the scene
        self.add_title(self.translate("Func_2_1.I11.title"))

        # Create and plot piecewise linear function
        func = lambda x: 2*x
        func_plotted = plane.plot(func, color=GREEN)

        # Initialize a cursor
        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        slopeTriangleText = Text(self.translate("Func_2_1.I11.slope_triangle_text"), color=c1).scale(0.8).next_to(cords, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_1.I11.voiceover")
        ) as tracker:
            
            # self.wait_until_bookmark("note1")
            # note.change_colors([0])

            # self.wait_until_bookmark("note2")
            # note.change_colors([0,1])
            
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
        # note = Notepad(texts=["$1.$Compute width of Triangle", "$2.$Compute height of Triangle", "3. Compute $a$ by dividing height by width"])
        # self.add(note)

        # Create the coordinate system
        cords = self.add_cords([-4,4, 2], [-8, 8, 2], x_ticks=[-4,-2,0,4], y_ticks=[-8,-4,0,4,8],
                               x_labels=[-4,-2,0,4], y_labels=[-8,-4,0,4,8])
        plane = cords[0]
        self.add(cords)

        # Add title to the scene
        self.add_title(self.translate("Func_2_1.I12.title"))

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

        height_str = f"{self.translate('Func_2_1.I12.height')}"
        width_str = f"{self.translate('Func_2_1.I12.width')}"

        aTerm = MathTex("a=", "{{", height_str, "}","\\over{", width_str, "}}","=\\frac42=2", color=BLACK).scale(0.7).next_to(plane, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_1.I12.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("hor")
            self.play(Write(horLine))

            self.wait_until_bookmark("dashed")
            self.play(Write(d1), Write(d2))

            self.wait_until_bookmark("width")
            self.play(Write(width))

            self.wait_until_bookmark("unDashed")
            self.play(Unwrite(d1), Unwrite(d2))

            self.wait_until_bookmark("vert")
            self.play(Write(vertLine), Unwrite(horLine))

            self.wait_until_bookmark("dashedh")
            self.play(Write(dh1), Write(dh2))

            self.wait_until_bookmark("height")
            self.play(Write(height))

            self.wait_until_bookmark("unDashedH")
            self.play(Unwrite(dh1), Unwrite(dh2), Unwrite(vertLine))

            self.wait_until_bookmark("slopeLine")
            self.play(Write(slopeLine))

        with self.voiceover(
                text=self.translate("Func_2_1.I12.voiceover2")
        ) as tracker:

            self.wait_until_bookmark("a")
            self.play(Write(aTerm[0]))

            self.wait_until_bookmark("height2")
            self.play(Write(aTerm[1]), Write(aTerm[2]), Write(aTerm[3]), run_time=0.5)

            self.wait_until_bookmark("width2")
            self.play(Write(aTerm[4]), Write(aTerm[5]), Write(aTerm[6]), run_time=0.5)

            self.wait_until_bookmark("final")
            self.play(Write(aTerm[-1]))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)






PROTOTYPES = [
    PagePrototypeVideo.from_scene(Func_2_1_I_1_q),
    PagePrototypeQuestion.from_scene(Func_2_1_I_1_q),
    PagePrototypeVideo.from_scene(Func_2_1_I_1_a),
    PagePrototypeVideo.from_scene(Func_2_1_I_1_b),
    PagePrototypeVideo.from_scene(Func_2_1_I_1_c),
    PagePrototypeVideo.from_scene(Func_2_1_I_2),
    PagePrototypeVideo.from_scene(Func_2_1_I_3_q),
    PagePrototypeQuestion.from_scene(Func_2_1_I_3_q),
    PagePrototypeVideo.from_scene(Func_2_1_I_3_a),
    PagePrototypeVideo.from_scene(Func_2_1_I_3_b),
    PagePrototypeVideo.from_scene(Func_2_1_I_3_c),
    PagePrototypeVideo.from_scene(Func_2_1_I_4_q),
    PagePrototypeQuestion.from_scene(Func_2_1_I_4_q),
    PagePrototypeVideo.from_scene(Func_2_1_I_4_a),
    PagePrototypeVideo.from_scene(Func_2_1_I_4_b),
    PagePrototypeVideo.from_scene(Func_2_1_I_4_c),
    PagePrototypeVideo.from_scene(Func_2_1_I_5_q),
    PagePrototypeQuestion.from_scene(Func_2_1_I_5_q),
    PagePrototypeVideo.from_scene(Func_2_1_I_5_a),
    PagePrototypeVideo.from_scene(Func_2_1_I_5_b),
    PagePrototypeVideo.from_scene(Func_2_1_I_5_c),
    PagePrototypeVideo.from_scene(Func_2_1_I_5_d),
    PagePrototypeVideo.from_scene(Func_2_1_I_6_q),
    PagePrototypeQuestion.from_scene(Func_2_1_I_6_q),
    PagePrototypeVideo.from_scene(Func_2_1_I_6_a),
    PagePrototypeVideo.from_scene(Func_2_1_I_6_b),
    PagePrototypeVideo.from_scene(Func_2_1_I_6_c),
    PagePrototypeVideo.from_scene(Func_2_1_I_6_d),
    PagePrototypeVideo.from_scene(Func_2_1_I_7),
    PagePrototypeVideo.from_scene(Func_2_1_I_8_q),
    PagePrototypeQuestion.from_scene(Func_2_1_I_8_q),
    PagePrototypeVideo.from_scene(Func_2_1_I_8_a),
    PagePrototypeVideo.from_scene(Func_2_1_I_8_b),
    PagePrototypeVideo.from_scene(Func_2_1_I_8_c),
    PagePrototypeVideo.from_scene(Func_2_1_I_9_q),
    PagePrototypeQuestion.from_scene(Func_2_1_I_9_q),
    PagePrototypeVideo.from_scene(Func_2_1_I_9_a),
    PagePrototypeVideo.from_scene(Func_2_1_I_9_b),
    PagePrototypeVideo.from_scene(Func_2_1_I_9_c),
    PagePrototypeVideo.from_scene(Func_2_1_I_10_q),
    PagePrototypeQuestion.from_scene(Func_2_1_I_10_q),
    PagePrototypeVideo.from_scene(Func_2_1_I_10_a),
    PagePrototypeVideo.from_scene(Func_2_1_I_10_b),
    PagePrototypeVideo.from_scene(Func_2_1_I_10_c),
    PagePrototypeVideo.from_scene(Func_2_1_I_10_d),
    PagePrototypeVideo.from_scene(Func_2_1_I_11),
    PagePrototypeVideo.from_scene(Func_2_1_I_12),
]