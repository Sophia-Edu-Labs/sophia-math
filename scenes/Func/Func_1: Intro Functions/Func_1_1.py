# Import necessary libraries and modules
from abc import ABCMeta, abstractmethod
from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
from sophialib.styles.sophiascene import *
from sophialib.styles.styleconstants import *
from sophialib.styles.sophiaobjects import *
from manim import *
from PIL import Image
import numpy as np
from pathlib import Path
from sophialib.tasks.sophiataskdefinition import SophiaTaskDefinition

##################################################################

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


#####################################
#####################################

class Func_1_1_I_1_q(SophiaCursorScene, SophiaQuestionInfo):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [self.translate("Func_1_1.1I1q.question.the-blue-representation"), self.translate("Func_1_1.1I1q.question.the-red-representation")],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_1.1I1q.question.which-representation-describes-a-realistic-temperature-trend") 
        )


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Load and position images
        picnic = ImageMobject(assets_folder / "img" / "picnic.png")
        picnic = picnic.scale(3.5/picnic.get_width()).move_to([-5.2, 1, 0])
        wetter = ImageMobject(assets_folder / "img" / "weatherreport.png")
        wetter = wetter.scale(3.5/wetter.get_width()).move_to([-5, 1, 0])
        q = ImageMobject(assets_folder / "img" / "qmark.png")
        q = q.scale(2.5/q.get_width()).move_to([-5.2, 1, 0])

        # Create a notepad with texts

        # Create the coordinate system
        cords = self.add_cords([6, 24, 3], [5, 25, 5], x_ticks=[6, 12, 18, 24], y_ticks=[10, 15, 20, 25], axisLabelX=self.translate("Func_1_1.1I1q.main.time"), axisLabelY=self.translate("Func_1_1.1I1q.main.temperature")).shift(DOWN*1.4)
        plane = cords[0]
        # self.add(cords)

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I1q.main.title"))

        # Create and plot piecewise linear function
        func = create_piecewise_linear([[6, 9], [8, 12], [10, 17], [12, 19], [14, 22], [16, 18], [18, 13], [20, 11], [22, 8], [24, 7]])
        func_plotted = plane.plot(func, color=BLUE)
        func_plotted_wrong = plane.plot(func, color=RED).rotate(90 * DEGREES)

        # Initialize a cursor
        xo, yo, _ = plane.x_axis.n2p(6)
        cursor = AltCursor(stroke_width=0.0)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])
        cursor.add_updater(lambda m, dt: self.bring_to_front(cursor))


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_1.1I1q.main.voiceover")
        ) as tracker:
            
            self.add_shift_sound(0.5)
            self.play(q.animate.shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("qOut")
            self.add_shift_sound(0.5)
            self.play(q.animate.shift(RIGHT*5), run_time=0.5)

            # Animate the picnic image moving to the right.
            self.wait_until_bookmark("picnicIn")
            self.add_shift_sound(0.5)
            self.play(picnic.animate.shift(RIGHT*5), run_time=0.5)

            # Animate the wetter image moving to the right.
            self.wait_until_bookmark("WetterIn")
            self.add_shift_sound(0.5)
            self.play(wetter.animate.shift(RIGHT*5), picnic.animate.shift(RIGHT*5), run_time=0.5)

            # Change note colors to highlight first Block and animate wetter image moving out while writing cords.
            self.wait_until_bookmark("CordsInWetterOut")
            self.add_shift_sound(0.5)
            self.play(wetter.animate(run_time=0.5).shift(RIGHT*5), Write(cords), run_time=0.8)
            cursor.idle = True

            # Highlight the x-axis using the cursor
            self.wait_until_bookmark("ShowXAxis")
            cursor.idle = False
            self.add_move_sound("forward", duration = 0.5, target_volume=0.1)
            self.play(CursorMoveResize(cursor, plane.x_axis.n2p(15)[0], yo, 2.6, 0.3), run_time=0.5)

            # Highlight the y-axis using the cursor
            self.wait_until_bookmark("ShowYAxis")
            self.add_move_sound("forward", duration = 0.5, target_volume=0.1)
            self.play(CursorMoveResize(cursor, xo, plane.y_axis.n2p(15)[1], 0.3, 2.6), run_time=0.5)

            # Reset the cursor size and position after "ResetCursor1" bookmark.
            self.wait_until_bookmark("ResetCursor1")
            self.add_move_sound("backward", duration = 0.5, target_volume=0.1)
            self.play(CursorMoveResize(cursor, xo, yo, 0.2, 0.2), run_time=0.5)
            cursor.idle=True

            # Draw the blue function plot after "BlueFuncIn" bookmark.
            self.wait_until_bookmark("BlueFuncIn")
            cursor.idle = False
            x,y,_ = func_plotted.get_start()
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(func_plotted.get_end()))._start_fading(1.5))
            self.add_pencil_sound(1)
            cursor.set_opacity(c_bg_opacity)
            self.play(Create(func_plotted), run_time=1)

            # Draw the red function plot (incorrect one) after "RedFuncIn" bookmark.
            self.wait_until_bookmark("RedFuncIn")
            x,y,_ = func_plotted_wrong.get_start()
            cursor.set_opacity(c_fg_opacity)
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(func_plotted_wrong.get_end()))._start_fading(1.5))
            self.add_pencil_sound(1)
            cursor.idle=True
            self.play(Create(func_plotted_wrong), run_time=1)


        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_1_1_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        # Create the coordinate system
        cords = self.add_cords([6, 24, 3], [5, 25, 5], x_ticks=[6, 12, 18], y_ticks=[10, 15, 20, 25], axisLabelX=self.translate("Func_1_1.1I1a.main.x-axis"), axisLabelY=self.translate("Func_1_1.1I1a.main.y-axis")).shift(DOWN*1.4)
        plane = cords[0]


        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I1q.main.title"))

        # Create and plot piecewise linear function
        func = create_piecewise_linear([[6, 9], [8, 12], [10, 17], [12, 19], [14, 22], [16, 18], [18, 13], [20, 11], [22, 8], [24, 7]])
        func_plotted = plane.plot(func, color=BLUE)
        func_plotted_wrong = plane.plot(func, color=RED).rotate(90 * DEGREES)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(6,9)
        cursor = AltCursor(stroke_width=0.0)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])
        cursor.add_updater(lambda m, dt: self.bring_to_front(cursor))

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_1.1I1_correct.main.voiceover")
        ) as tracker:
            
            # Animate the coordinate system being created
            self.play(Write(cords), run_time=0.5)
            self.add(cursor)

            # Draw the blue function plot after "BlueFuncIn" bookmark.
            self.wait_until_bookmark("BlueFuncIn")
            self.add_pencil_sound(1.5)
            cursor.idle=False
            c2 = cursor.copy().add_updater(lambda m: m.move_to(func_plotted.get_end()))._start_fading(1.5)
            self.add(c2)
            self.play(Write(func_plotted))

            # Follow the function with the cursor
            self.wait_until_bookmark("MoveAlongFunc")
            self.play(MoveAlongPath(cursor, func_plotted), run_time=14, rate_func=linear)
            cursor.idle=True

            # Draw the red function plot (incorrect one) after "RedFuncIn" bookmark.
            self.wait_until_bookmark("RedFuncIn")
            self.play(Unwrite(func_plotted))
            self.wait(0.2)
            self.add_pencil_sound(1.5)
            self.play(Write(func_plotted_wrong))

            self.wait_until_bookmark("notRed")
            x1, y1, _ = plane.c2p(14, 5)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x1, y1), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("VertLine")
            l = Line([x1, y1, 0], [x1, y1 + 2.4, 0], stroke_width=1.5, color=BLACK)
            self.add_pencil_sound(3)
            self.play(Write(l), run_time=3)

            self.wait_until_bookmark("intersect1")
            x1, y1, _ = plane.c2p(14, 8)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x1, y1), run_time=0.5)

            self.wait_until_bookmark("intersect2")
            x1, y1, _ = plane.c2p(14, 16.5)
            self.play(CursorMoveTo(cursor, x1, y1), run_time=0.5)
            self.wait(.5)
            cursor.idle = True

            self.play(Unwrite(func_plotted_wrong), Unwrite(l), run_time=0.5)
            func_plotted = plane.plot(func, color=BLUE)
            func_plotted_wrong = plane.plot(func, color=RED).rotate(90 * DEGREES)

            self.wait_until_bookmark("blueRecap")
            cursor.idle=False
            self.add_pencil_sound(0.5)
            self.play(Write(func_plotted), CursorMoveTo(cursor,0,1), run_time=0.5)
            b = Bubble(texts = [self.translate("Func_1_1.1I1a.bubble_1a"), self.translate("Func_1_1.1I1a.bubble_1b")], center=np.array([0,2.3, 0]), start_point=np.array([0,1,0]), width=2.5, height = 0.8)
            self.wait(0.2)
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.play(Create(b), Create(b.text))
            cursor.idle=True
            cursor.remove_updater(lambda m: m.move_to(b.get_end()))

            self.wait_until_bookmark("redRecap")
            cursor.idle=False
            self.add_pencil_sound(0.5)
            self.play(Write(func_plotted_wrong), CursorMoveTo(cursor,-.2,-1), run_time=0.5)
            b = Bubble(texts = [self.translate("Func_1_1.1I1a.bubble_2a"), self.translate("Func_1_1.1I1a.bubble_2b")], center=np.array([-.5,-2.5, 0]), start_point=np.array([-.2,-1,0]), loc="t1", width=2.8, height=0.8)
            self.add_bubble_sound(1.5)
            cursor.add_updater(lambda m: m.move_to(b.get_end()))
            self.play(Create(b), Create(b.text))
            cursor.remove_updater(lambda m: m.move_to(b.get_end()))
            cursor.idle=True


        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_1_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([6, 24, 3], [5, 25, 5], x_ticks=[6, 12, 18], y_ticks=[10, 15, 20, 25], axisLabelX=self.translate("Func_1_1.1I1a.main.x-axis"), axisLabelY=self.translate("Func_1_1.1I1a.main.y-axis")).shift(DOWN*1.4)
        plane = cords[0]

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I1q.main.title"))

        # Create and plot piecewise linear function
        func = create_piecewise_linear([[6, 9], [8, 12], [10, 17], [12, 19], [14, 22], [16, 18], [18, 13], [20, 11], [22, 8], [24, 7]])
        func_plotted = plane.plot(func, color=BLUE)
        func_plotted_wrong = plane.plot(func, color=RED).rotate(90 * DEGREES)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(6,9)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.autoFadeBackground = True
        cursor.add_updater(lambda m, dt: self.bring_to_front(cursor))

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_1.1I1b.main.voiceover")
        ) as tracker:
            
            # Animate the coordinate system being created
            self.play(Write(cords), run_time=0.5)
            self.add(cursor)

            # Draw the red function plot (incorrect one) after "RedFuncIn" bookmark.
            self.wait_until_bookmark("RedFuncIn")
            self.add_pencil_sound(1.5)
            self.play(Write(func_plotted_wrong))

            self.wait_until_bookmark("notRed")
            x1, y1, _ = plane.c2p(14, 5)
            cursor.idle = False
            self.play(CursorMoveTo(cursor, x1, y1), run_time=0.5)

            self.wait_until_bookmark("VertLine")
            l = Line([x1, y1, 0], [x1, y1 + 2.4, 0], stroke_width=1.5, color=BLACK)
            self.add_pencil_sound(3)
            self.play(Write(l), run_time=3)

            self.wait_until_bookmark("intersect1")
            x1, y1, _ = plane.c2p(14, 8)
            self.play(CursorMoveTo(cursor, x1, y1), run_time=0.5)

            self.wait_until_bookmark("intersect2")
            x1, y1, _ = plane.c2p(14, 16.5)
            self.play(CursorMoveTo(cursor, x1, y1), run_time=0.5)
            self.wait(2)
            cursor.idle = True

            # Draw the blue function plot after "BlueFuncIn" bookmark.
            self.wait_until_bookmark("BlueFuncIn")
            cursor.idle=False
            self.add_pencil_sound(1.5)
            self.play(Unwrite(func_plotted_wrong), Unwrite(l), Write(func_plotted), CursorMoveTo(cursor, xo, yo))

            # Follow the func with the cursor
            self.wait_until_bookmark("MoveAlongFunc")
            self.play(MoveAlongPath(cursor, func_plotted), run_time=13, rate_func=linear)
            cursor.idle=True

        # Wait for 4 seconds at the end of animation
        self.wait(4)

#####################################
#####################################
class Func_1_1_I_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        cords = self.add_cords([6, 24, 3], [5, 25, 5], x_ticks=[6, 12, 18, 24], y_ticks=[10, 15, 20, 25],
                               axisLabelX=self.translate("Func_1_1.1I1a.main.x-axis"), axisLabelY=self.translate("Func_1_1.1I1a.main.y-axis")).shift(DOWN*.6)
        plane = cords[0]

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I2.main.title"))

        # Create and plot piecewise linear function
        func = create_piecewise_linear([[6, 9], [8, 12], [10, 17], [12, 19], [14, 22], [16, 18], [18, 13], [20, 11], [22, 8], [24, 7]])
        func_plotted = plane.plot(func, color=BLUE)
        func_plotted_wrong = plane.plot(func, color=RED).rotate(90 * DEGREES)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(6,9)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.autoFadeBackground = True
        cursor.add_updater(lambda m, dt: self.bring_to_front(cursor))

        xToY = MathTex("x", "\,\,\,\\rightarrow\,\,\,", "y", color=c1t).next_to(cords, DOWN, buff=0.5)

        attention = ImageMobject(assets_folder / "img" / "warningsign.png").shift([-5,-2.8,0])
        attention =  attention.scale(2.6/attention.get_height())
        self.add(attention)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_1.1I2.main.voiceover")
        ) as tracker:
            
            # Animate the coordinate system being created
            self.play(Write(cords), run_time=0.5)
            self.add(cursor)

            # Draw the blue function plot after "BlueFuncIn" bookmark.
            self.wait_until_bookmark("BlueFuncIn")
            self.add_pencil_sound(1.5)
            self.play(Write(func_plotted))
            
            self.wait_until_bookmark("map1")
            self.play(Write(xToY[2]), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("map2")
            self.play(Write(xToY[0]), Write(xToY[1]), run_time=0.5)

            self.wait_until_bookmark("MoveAlongFunc")
            cursor.idle=False
            self.play(MoveAlongPath(cursor, func_plotted), run_time=12, rate_func=linear)
            self.wait(1)
            cursor.idle=True

            # Follow the func with the cursor
            self.wait_until_bookmark("RedFuncIn")
            self.add_pencil_sound(1.5)
            self.play(Write(func_plotted_wrong), Unwrite(func_plotted))

            self.wait_until_bookmark("VertLine")
            x1, y1, _ = plane.c2p(14, 5)
            l = Line([x1, y1, 0], [x1, y1 + 2.4, 0], stroke_width=1.5, color=BLACK)
            self.add_pencil_sound(3)
            self.play(Write(l), run_time=3)

            self.wait_until_bookmark("Memorize")
            self.add_shift_sound(0.5)
            self.play(attention.animate.shift(RIGHT*5), run_time=0.5)
            self.wait(0.5)
            cursor.idle=False

            self.wait_until_bookmark("aY")
            x,y,_ = xToY[2].get_center()+0.4*DOWN
            self.add_shift_sound(0.5)
            self.play(CursorMoveTo(cursor,x,y), attention.animate.shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("aX")
            x,y,_ = xToY[0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            
        # Wait for 4 seconds at the end of animation
        self.wait(4)


#####################################
#####################################
class Func_1_1_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([-2,2,1], [0, 4, 1], x_ticks=[-2,2], x_labels=[-2,2], y_ticks=[2,4], y_labels=[2,4]).shift(.6*DOWN)
        plane = cords[0]

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I3.main.title"))

        # Create and plot piecewise linear function
        def f(x):
            return x**2
        func_plotted = plane.plot(f, color=ORANGE)
        func_plotted2 = plane.plot(f, color=ORANGE)
        func_plotted_wrong = plane.plot(f, color=GREEN).rotate(90 * DEGREES)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.autoFadeBackground = True
        cursor.add_updater(lambda m, dt: self.bring_to_front(cursor))

        xToY = MathTex("x", "\,\,\,\\rightarrow\,\,\,", "y", color=c1t).next_to(cords, DOWN, buff=0.5)
        func_def = Tex(self.translate("Func_1_1.1I3.main.func_def"), color=c3t, font_size=fs3, tex_environment="flushleft").next_to(xToY, DOWN, buff=.7)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_1.1I3.main.voiceover")
        ) as tracker:
            
            # Animate the coordinate system being created
            self.play(Write(cords), run_time=0.5)
            self.add(cursor)

            self.wait_until_bookmark("Memorize")
            self.play(Create(func_def), run_time=.5)

            self.wait_until_bookmark("map1")
            self.play(Write(xToY[2]), run_time=0.5)

            self.wait_until_bookmark("map2")
            self.play(Write(xToY[0]), Write(xToY[1]), run_time=0.5)

            # Draw the blue function plot after "BlueFuncIn" bookmark.
            self.wait_until_bookmark("OrangeFuncIn")
            self.add_pencil_sound(1.5)
            self.play(Write(func_plotted))

            self.wait_until_bookmark("orangeX")
            cursor.idle=False
            x,y,_ = xToY[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("orangeY")
            x,y,_ = xToY[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("MoveAlongFunc")
            xs, ys, _ = plane.c2p(-2, 4)
            self.play(CursorMoveTo(cursor, xs, ys), run_time=.5)
            self.play(MoveAlongPath(cursor, func_plotted), run_time=3.5, rate_func=linear)
            self.wait(1)
            cursor.idle=True

            # Follow the func with the cursor
            self.wait_until_bookmark("GreenFuncIn")
            self.add_pencil_sound(1.5)
            self.play(Write(func_plotted_wrong), Unwrite(func_plotted))
            x1, y1, _ = plane.c2p(0, 0)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x1, y1), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("VertLine")
            l = Line([x1, y1, 0], [x1, y1 + 2.4, 0], stroke_width=3, color=RED)
            self.add_pencil_sound(2)
            self.play(Write(l), run_time=2)
            cx1, cy1, _ = plane.c2p(0, 0.6)
            cx2, cy2, _ = plane.c2p(0, 3.35)
            circ1, circ2 = Circle(radius=0.1, color=RED).move_to([cx1, cy1, 0]), Circle(radius=0.1, color=RED).move_to([cx2, cy2, 0])
            self.play(Write(circ1), Write(circ2), run_time=2)

            self.wait_until_bookmark("TrueFct")
            self.play(Unwrite(l), Unwrite(circ1), Unwrite(circ2), Unwrite(func_plotted_wrong), Write(func_plotted2), run_time=0.8)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, xs, ys), run_time=0.5)
            self.play(MoveAlongPath(cursor, func_plotted2), run_time=5, rate_func=linear)
            cursor.idle=True

        # Wait for 4 seconds at the end of animation
        self.wait(4)


#####################################
#####################################
class Func_1_1_I_3_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [self.translate("Func_1_1.1I31q.question-greenline"), self.translate("Func_1_1.1I31q.question-blueline"), self.translate("Func_1_1.1I31q.question-pinkline")],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_1.1I31q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([-2,2,1], [-2,2,1], x_ticks=[-2,2], y_ticks=[-2,2]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        sine_1 = plane.plot(lambda x: 2*np.sin(1.5*x), color=BLUE).rotate(90 * DEGREES)
        sine_2 = plane.plot(lambda x: np.sin(1.5*x-1)-1, color=GREEN_E)
        line_not_sine = Line(plane.c2p(1,-2), plane.c2p(1,2), color=PINK)

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I3.main.title"))
        # Initialize a cursor
        xo, yo, _ = plane.c2p(0,0)
        cursor = AltCursor(idle=True)
        cursor.add_updater(lambda m, dt: self.bring_to_front(cursor))

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_1.1I31q.voiceover")
        ) as tracker:

            self.wait_until_bookmark("blue")
            self.add_pencil_sound(1.5)
            self.play(Write(sine_1))

            self.wait_until_bookmark("green")
            self.add_pencil_sound(1.5)
            self.play(Write(sine_2))

            self.wait_until_bookmark("pink")
            self.add_pencil_sound(1.5)
            self.play(Write(line_not_sine))

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_1_1_I_3_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([-2,2,1], [-2,2,1], x_ticks=[-2,2], y_ticks=[-2,2]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        sine_1 = plane.plot(lambda x: 2*np.sin(1.5*x), color=BLUE).rotate(90 * DEGREES)
        sine_2 = plane.plot(lambda x: np.sin(1.5*x-1)-1, color=GREEN_E)
        line_not_sine = Line(plane.c2p(1,-2), plane.c2p(1,2), color=PINK)

        self.add(sine_1, sine_2, line_not_sine)

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I3.main.title"))
        # Initialize a cursor
        xo, yo, _ = plane.c2p(0,0)
        cursor = AltCursor(idle=True)
        cursor.add_updater(lambda m, dt: self.bring_to_front(cursor))

        dl = DashedLine(plane.c2p(-1,-2), plane.c2p(-1,2), color=c1t, stroke_width=2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_1_1.1I31a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("green")
            cursor.idle=False
            x,y,_ = sine_2.get_start()
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            cc = cursor.copy()
            cursor.idle=True
            self.play(MoveAlongPath(cc, sine_2), run_time=6, rate_func=linear)
            cc._start_fading(2)

            self.wait_until_bookmark("neg_ex")
            self.add_pencil_sound(1.5)
            self.play(Create(dl))
            self.wait(1)
            self.play(Unwrite(dl))


        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_1_I_3_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([-2,2,1], [-2,2,1], x_ticks=[-2,2], y_ticks=[-2,2]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        sine_1 = plane.plot(lambda x: 2*np.sin(1.5*x), color=BLUE).rotate(90 * DEGREES)
        sine_2 = plane.plot(lambda x: np.sin(1.5*x-1)-1, color=GREEN_E)
        line_not_sine = Line(plane.c2p(1,-2), plane.c2p(1,2), color=PINK)

        self.add(sine_1, sine_2, line_not_sine)

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I3.main.title"))
        # Initialize a cursor
        xo, yo, _ = plane.c2p(0,0)
        cursor = AltCursor(idle=True)
        cursor.add_updater(lambda m, dt: self.bring_to_front(cursor))

        dl = DashedLine(plane.c2p(-1,-2), plane.c2p(-1,2), color=c1t, stroke_width=2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_1_1.1I31a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("green")
            cursor.idle=False
            x,y,_ = sine_2.get_start()
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            cc = cursor.copy()
            cursor.idle=True
            self.play(MoveAlongPath(cc, sine_2), run_time=6, rate_func=linear)
            cc._start_fading(2)

            self.wait_until_bookmark("neg_ex")
            self.add_pencil_sound(1.5)
            self.play(Create(dl))
            self.wait(1)
            self.play(Unwrite(dl))


        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_1_I_3_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([-2,2,1], [-2,2,1], x_ticks=[-2,2], y_ticks=[-2,2]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        sine_1 = plane.plot(lambda x: 2*np.sin(1.5*x), color=BLUE).rotate(90 * DEGREES)
        sine_2 = plane.plot(lambda x: np.sin(1.5*x-1)-1, color=GREEN_E)
        line_not_sine = Line(plane.c2p(1,-2), plane.c2p(1,2), color=PINK)

        self.add(sine_1, sine_2, line_not_sine)

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I3.main.title"))
        # Initialize a cursor
        xo, yo, _ = plane.c2p(0,0)
        cursor = AltCursor(idle=True)
        cursor.add_updater(lambda m, dt: self.bring_to_front(cursor))

        dl = DashedLine(plane.c2p(-1,-2), plane.c2p(-1,2), color=c1t, stroke_width=2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_1_1.1I31a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("green")
            cursor.idle=False
            x,y,_ = sine_2.get_start()
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            cc = cursor.copy()
            cursor.idle=True
            self.play(MoveAlongPath(cc, sine_2), run_time=6, rate_func=linear)
            cc._start_fading(2)

            self.wait_until_bookmark("neg_ex")
            self.add_pencil_sound(1.5)
            self.play(Create(dl))
            self.wait(1)
            self.play(Unwrite(dl))


        # Wait for 4 seconds at the end of animation
        self.wait(4)



    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([-2,2,1], [-2,2,1], x_ticks=[-2,2], y_ticks=[-2,2]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        sine_1 = plane.plot(lambda x: 2*np.sin(1.5*x), color=BLUE).rotate(90 * DEGREES)
        sine_2 = plane.plot(lambda x: np.sin(1.5*x-1)-1, color=GREEN_E)
        line_not_sine = Line(plane.c2p(1,-2), plane.c2p(1,2), color=PINK)

        self.add(sine_1, sine_2, line_not_sine)

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I3.main.title"))
        # Initialize a cursor
        xo, yo, _ = plane.c2p(0,0)
        cursor = AltCursor(idle=True)
        cursor.add_updater(lambda m, dt: self.bring_to_front(cursor))

        dl = DashedLine(plane.c2p(-1,-2), plane.c2p(-1,2), color=c1t, stroke_width=2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_1.1I31a.voiceover")+self.translate("General.incorrect_3")
        ) as tracker:

            self.wait_until_bookmark("green")
            cursor.idle=False
            x,y,_ = sine_2.get_start()
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            cc = cursor.copy()
            cursor.idle=True
            self.play(MoveAlongPath(cc, sine_2), run_time=6, rate_func=linear)
            cc._start_fading(2)

            self.wait_until_bookmark("neg_ex")
            self.add_pencil_sound(1.5)
            self.play(Create(dl))
            self.wait(1)
            self.play(Unwrite(dl))


        # Wait for 4 seconds at the end of animation
        self.wait(4)

#####################################
#####################################
class Func_1_1_I_3_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [self.translate("Func_1_1.1I32q.question-orangeline"), self.translate("Func_1_1.1I32q.question-blueline"), self.translate("Func_1_1.1I32q.question-greenline"), self.translate("Func_1_1.1I32q.question-noline")],
            correctAnswerIndex = 3,
            questionText = self.translate("Func_1_1.1I32q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([-2,2,1], [-2,2,1], x_ticks=[-2,2], y_ticks=[-2,2]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        func_1 = plane.plot(lambda x: 1, color=ORANGE)
        func_2 = plane.plot(lambda x: abs(x), color=PURE_BLUE)
        func_3 = VGroup(Line(plane.c2p(-2,-1.5), plane.c2p(0,-1.5), color=GREEN_D), Line(plane.c2p(0,1.5), plane.c2p(2,1.5), color=GREEN_D))

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I3.main.title"))
        # Initialize a cursor
        xo, yo, _ = plane.c2p(0,0)
        cursor = AltCursor(idle=True)
        cursor.add_updater(lambda m, dt: self.bring_to_front(cursor))

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_1.1I32q.voiceover")
        ) as tracker:

            self.wait_until_bookmark("orange")
            self.add_pencil_sound(1.5)
            self.play(Write(func_1))

            self.wait_until_bookmark("blue")
            self.add_pencil_sound(1.5)
            self.play(Write(func_2))

            self.wait_until_bookmark("green")
            self.add_pencil_sound(1.5)
            self.play(Write(func_3))

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_1_1_I_3_2_a(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([-2,2,1], [-2,2,1], x_ticks=[-2,2], y_ticks=[-2,2]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        func_1 = plane.plot(lambda x: 1, color=ORANGE)
        func_2 = plane.plot(lambda x: abs(x), color=PURE_BLUE)
        func_3 = VGroup(Line(plane.c2p(-2,-1.5), plane.c2p(0,-1.5), color=GREEN_D), Line(plane.c2p(0,1.5), plane.c2p(2,1.5), color=GREEN_D))

        self.add(func_1, func_2, func_3)

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I3.main.title"))
        # Initialize a cursor
        xo, yo, _ = plane.c2p(0,0)
        c = AltCursor()
        c.add_updater(lambda m, dt: self.bring_to_front(c))

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_1_1.1I32a.voiceover")
        ) as tracker:

            x,y,_ = func_1.get_start()
            self.play(CursorMoveTo(c,x,y), run_time=.3)
            self.play(MoveAlongPath(c, func_1), run_time=4, rate_func=linear)
            
            x,y,_ = func_2.get_start()
            self.play(CursorMoveTo(c,x,y), run_time=.3)
            self.play(MoveAlongPath(c, func_2), run_time=4, rate_func=linear)

            x,y,_ = func_3[0].get_start()
            self.play(CursorMoveTo(c,x,y), run_time=.3)
            self.play(MoveAlongPath(c, func_3[0]), run_time=2, rate_func=linear)
            self.play(MoveAlongPath(c, func_3[1]), run_time=2, rate_func=linear)
            c.idle=True

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_1_I_3_2_b(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([-2,2,1], [-2,2,1], x_ticks=[-2,2], y_ticks=[-2,2]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        func_1 = plane.plot(lambda x: 1, color=ORANGE)
        func_2 = plane.plot(lambda x: abs(x), color=PURE_BLUE)
        func_3 = VGroup(Line(plane.c2p(-2,-1.5), plane.c2p(0,-1.5), color=GREEN_D), Line(plane.c2p(0,1.5), plane.c2p(2,1.5), color=GREEN_D))

        self.add(func_1, func_2, func_3)

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I3.main.title"))
        # Initialize a cursor
        xo, yo, _ = plane.c2p(0,0)
        c = AltCursor()
        c.add_updater(lambda m, dt: self.bring_to_front(c))

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_1_1.1I32a.voiceover")
        ) as tracker:

            x,y,_ = func_1.get_start()
            self.play(CursorMoveTo(c,x,y), run_time=.3)
            self.play(MoveAlongPath(c, func_1), run_time=4, rate_func=linear)
            
            x,y,_ = func_2.get_start()
            self.play(CursorMoveTo(c,x,y), run_time=.3)
            self.play(MoveAlongPath(c, func_2), run_time=4, rate_func=linear)

            x,y,_ = func_3[0].get_start()
            self.play(CursorMoveTo(c,x,y), run_time=.3)
            self.play(MoveAlongPath(c, func_3[0]), run_time=2, rate_func=linear)
            self.play(MoveAlongPath(c, func_3[1]), run_time=2, rate_func=linear)
            c.idle=True

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_1_I_3_2_c(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([-2,2,1], [-2,2,1], x_ticks=[-2,2], y_ticks=[-2,2]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        func_1 = plane.plot(lambda x: 1, color=ORANGE)
        func_2 = plane.plot(lambda x: abs(x), color=PURE_BLUE)
        func_3 = VGroup(Line(plane.c2p(-2,-1.5), plane.c2p(0,-1.5), color=GREEN_D), Line(plane.c2p(0,1.5), plane.c2p(2,1.5), color=GREEN_D))

        self.add(func_1, func_2, func_3)

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I3.main.title"))
        # Initialize a cursor
        xo, yo, _ = plane.c2p(0,0)
        c = AltCursor()
        c.add_updater(lambda m, dt: self.bring_to_front(c))

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_1_1.1I32a.voiceover")
        ) as tracker:

            x,y,_ = func_1.get_start()
            self.play(CursorMoveTo(c,x,y), run_time=.3)
            self.play(MoveAlongPath(c, func_1), run_time=4, rate_func=linear)
            
            x,y,_ = func_2.get_start()
            self.play(CursorMoveTo(c,x,y), run_time=.3)
            self.play(MoveAlongPath(c, func_2), run_time=4, rate_func=linear)

            x,y,_ = func_3[0].get_start()
            self.play(CursorMoveTo(c,x,y), run_time=.3)
            self.play(MoveAlongPath(c, func_3[0]), run_time=2, rate_func=linear)
            self.play(MoveAlongPath(c, func_3[1]), run_time=2, rate_func=linear)
            c.idle=True

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_1_I_3_2_d(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([-2,2,1], [-2,2,1], x_ticks=[-2,2], y_ticks=[-2,2]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        func_1 = plane.plot(lambda x: 1, color=ORANGE)
        func_2 = plane.plot(lambda x: abs(x), color=PURE_BLUE)
        func_3 = VGroup(Line(plane.c2p(-2,-1.5), plane.c2p(0,-1.5), color=GREEN_D), Line(plane.c2p(0,1.5), plane.c2p(2,1.5), color=GREEN_D))

        self.add(func_1, func_2, func_3)

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I3.main.title"))
        # Initialize a cursor
        xo, yo, _ = plane.c2p(0,0)
        c = AltCursor()
        c.add_updater(lambda m, dt: self.bring_to_front(c))

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_1_1.1I32a.voiceover")
        ) as tracker:

            x,y,_ = func_1.get_start()
            self.play(CursorMoveTo(c,x,y), run_time=.3)
            self.play(MoveAlongPath(c, func_1), run_time=4, rate_func=linear)
            
            x,y,_ = func_2.get_start()
            self.play(CursorMoveTo(c,x,y), run_time=.3)
            self.play(MoveAlongPath(c, func_2), run_time=4, rate_func=linear)

            x,y,_ = func_3[0].get_start()
            self.play(CursorMoveTo(c,x,y), run_time=.3)
            self.play(MoveAlongPath(c, func_3[0]), run_time=2, rate_func=linear)
            self.play(MoveAlongPath(c, func_3[1]), run_time=2, rate_func=linear)
            c.idle=True

        # Wait for 4 seconds at the end of animation
        self.wait(4)


#####################################
#####################################
class Func_1_1_I_3_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([-2,2,1], [-2, 2, 1], x_ticks=[-2,2], y_ticks=[-2,2]).shift(DOWN)
        plane = cords[0]

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I3.main.title"))

        giraffe = ImageMobject(assets_folder / "img" / "giraffe_thumbs.png")
        giraffe = giraffe.scale(4/giraffe.get_width()).move_to([-5, 0, 0])

        # Create and plot piecewise linear function
        f = lambda x: x**3-1.5*x
        func_plotted = plane.plot(f, color=GREEN_D, x_range=[-1.65,1.65,0.01])
        func_plotted_wrong = plane.plot(f, color=RED, x_range=[-1.65,1.65,0.01]).rotate(90 * DEGREES)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0,0)
        cursor = AltCursor(idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m, dt: self.bring_to_front(cursor))

        xToY = MathTex("x", "\,\,\,\\rightarrow\,\,\,", "y", color=c1t).next_to(cords, DOWN, buff=0.5)
        func_def = Tex(self.translate("Func_1_1.1I3.main.func_def"), color=c3t, font_size=fs3, tex_environment="flushleft").next_to(xToY, DOWN, buff=.7)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_1.1I33.main.voiceover")
        ) as tracker:
            
            # Animate the coordinate system being created
            self.play(Write(cords), run_time=0.5)
            self.add(cursor)

            self.wait_until_bookmark("Memorize")
            self.play(Create(func_def), run_time=.5)

            self.wait_until_bookmark("map1")
            self.play(Write(xToY[2]), run_time=0.5)

            self.wait_until_bookmark("map2")
            self.play(Write(xToY[0]), Write(xToY[1]), run_time=0.5)

            # Draw the blue function plot after "BlueFuncIn" bookmark.
            self.wait_until_bookmark("GreenFuncIn")
            self.add_pencil_sound(1.5)
            self.play(Write(func_plotted))

            self.wait_until_bookmark("orangeX")
            cursor.idle=False
            x,y,_ = xToY[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("orangeY")
            x,y,_ = xToY[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            # Follow the func with the cursor
            self.wait_until_bookmark("RedFuncIn")
            self.add_pencil_sound(1.5)
            self.play(Write(func_plotted_wrong))
            x1, y1, _ = plane.c2p(0, 0)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x1, y1), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("giraffe_in")
            self.add_shift_sound(0.5)
            self.play(FadeOut(func_plotted_wrong), FadeOut(cords), FadeOut(xToY), FadeOut(func_def), FadeOut(func_plotted), FadeOut(cursor), giraffe.animate.shift(RIGHT*5), run_time=0.5)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


################################################################################################
#####################################
#####################################
class Func_1_1_I_4_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [self.translate("Func_1_1.1I41q.question-greenline"), self.translate("Func_1_1.1I41q.question-blueline"), self.translate("Func_1_1.1I41q.question-pinkline")],
            correctAnswerIndex = 1,
            questionText = self.translate("Func_1_1.1I41q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([0,4,1], [0, 16, 4], x_ticks=[1,2,3,4], y_ticks=[4,8,12,16]).shift(DOWN)
        plane = cords[0]

        xvals = [str(i+1) for i in range(4)]
        yvals = ["12", "16", "10", "16"]

        xlabel = self.translate("Func_1_1.1I41q.xlabel")
        ylabel = self.translate("Func_1_1.1I41q.ylabel")

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I3.main.title"))

        t = Table([[str(val) for val in xvals], [str(val) for val in yvals]],
                    color=BLACK, line_config={"color":BLACK}, element_to_mobject_config={"color":BLACK},
                    row_labels=[Text(xlabel, color=BLACK, font_size = fs1), Text(ylabel, color=BLACK, font_size = fs1)])
        t = t.scale(3.3/t.get_width()).next_to(plane, DOWN, buff=0.35)

        rows = t.get_columns()
        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines(), rows[0], rows[1])

        cords_blue = [[1,16], [2,10], [3,16], [4,12]]
        cords_green = [[1,12], [2,16], [3,10], [4,16]]
        cords_pink = [[1,10], [2,16], [3,12], [4,16]]

        circs_blue = VGroup(*[Dot(plane.c2p(*cords_blue[i]), color=BLUE) for i in range(4)])
        circs_green = VGroup(*[Dot(plane.c2p(*cords_green[i]), color=GREEN) for i in range(4)])
        circs_pink = VGroup(*[Dot(plane.c2p(*cords_pink[i]), color=PINK) for i in range(4)])


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_1.1I41q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("table_in")
            self.play(Write(t_structure))

            self.wait_until_bookmark("day_2")
            self.play(Write(rows[2]))

            self.wait_until_bookmark("day_3")
            self.play(Write(rows[3]))

            self.wait_until_bookmark("day_4")
            self.play(Write(rows[4]))

            self.wait_until_bookmark("cords_in")
            self.play(Write(cords))

            self.wait_until_bookmark("blue")
            self.play(Write(circs_blue))

            self.wait_until_bookmark("green")
            self.play(Write(circs_green))

            self.wait_until_bookmark("pink")
            self.play(Write(circs_pink))

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_1_1_I_4_1_a(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([0,4,1], [0, 16, 4], x_ticks=[1,2,3,4], y_ticks=[4,8,12,16]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        xvals = [str(i+1) for i in range(4)]
        xvals_int = [i+1 for i in range(4)]
        yvals = ["12", "16", "10", "16"]
        yvals_int = [12, 16, 10, 16]

        xlabel = self.translate("Func_1_1.1I41q.xlabel")
        ylabel = self.translate("Func_1_1.1I41q.ylabel")

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I3.main.title"))

        t = Table([[str(val) for val in xvals], [str(val) for val in yvals]],
                    color=BLACK, line_config={"color":BLACK}, element_to_mobject_config={"color":BLACK},
                    row_labels=[Text(xlabel, color=BLACK, font_size = fs1), Text(ylabel, color=BLACK, font_size = fs1)])
        t = t.scale(3.3/t.get_width()).next_to(plane, DOWN, buff=1)

        self.add(t)

        cords_blue = [[1,16], [2,10], [3,16], [4,12]]
        cords_green = [[1,12], [2,16], [3,10], [4,16]]
        cords_pink = [[1,10], [2,12], [3,12], [4,10]]

        func_green = create_piecewise_linear(list(zip(xvals_int, yvals_int)))
        func_green_plotted = plane.plot(func_green, color=GREEN)

        circs_blue = VGroup(*[Dot(plane.c2p(*cords_blue[i]), color=BLUE) for i in range(4)])
        circs_green = VGroup(*[Dot(plane.c2p(*cords_green[i]), color=GREEN) for i in range(4)])
        circs_pink = VGroup(*[Dot(plane.c2p(*cords_pink[i]), color=PINK) for i in range(4)])
        self.add(circs_blue, circs_green, circs_pink)


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_1_1.1I41a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("day_1")
            self.play(circs_green[0].animate.scale(2), run_time=0.3)
            self.wait(0.5)
            self.play(circs_green[0].animate.scale(0.5), run_time=0.3)

            self.wait_until_bookmark("day_2")
            self.play(circs_green[1].animate.scale(2), run_time=0.3)
            self.wait(0.5)
            self.play(circs_green[1].animate.scale(0.5), run_time=0.3)

            self.wait_until_bookmark("day_3")
            self.play(circs_green[2].animate.scale(2), run_time=0.3)
            self.wait(0.5)
            self.play(circs_green[2].animate.scale(0.5), run_time=0.3)

            self.wait_until_bookmark("day_4")
            self.play(circs_green[3].animate.scale(2), run_time=0.3)
            self.wait(0.5)
            self.play(circs_green[3].animate.scale(0.5), run_time=0.3)

            self.wait_until_bookmark("colors_out")
            self.play(FadeOut(circs_blue), FadeOut(circs_pink))

            self.wait_until_bookmark("draw_line")
            self.add_pencil_sound(1.5)
            self.play(Write(func_green_plotted))

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_1_I_4_1_b(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([0,4,1], [0, 16, 4], x_ticks=[1,2,3,4], y_ticks=[4,8,12,16]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        xvals = [str(i+1) for i in range(4)]
        xvals_int = [i+1 for i in range(4)]
        yvals = ["12", "16", "10", "16"]
        yvals_int = [12, 16, 10, 16]

        xlabel = self.translate("Func_1_1.1I41q.xlabel")
        ylabel = self.translate("Func_1_1.1I41q.ylabel")

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I3.main.title"))

        t = Table([[str(val) for val in xvals], [str(val) for val in yvals]],
                    color=BLACK, line_config={"color":BLACK}, element_to_mobject_config={"color":BLACK},
                    row_labels=[Text(xlabel, color=BLACK, font_size = fs1), Text(ylabel, color=BLACK, font_size = fs1)])
        t = t.scale(3.3/t.get_width()).next_to(plane, DOWN, buff=1)

        self.add(t)

        cords_blue = [[1,16], [2,10], [3,16], [4,12]]
        cords_green = [[1,12], [2,16], [3,10], [4,16]]
        cords_pink = [[1,10], [2,12], [3,12], [4,10]]

        func_green = create_piecewise_linear(list(zip(xvals_int, yvals_int)))
        func_green_plotted = plane.plot(func_green, color=GREEN)

        circs_blue = VGroup(*[Dot(plane.c2p(*cords_blue[i]), color=BLUE) for i in range(4)])
        circs_green = VGroup(*[Dot(plane.c2p(*cords_green[i]), color=GREEN) for i in range(4)])
        circs_pink = VGroup(*[Dot(plane.c2p(*cords_pink[i]), color=PINK) for i in range(4)])
        self.add(circs_blue, circs_green, circs_pink)


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_1_1.1I41a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("day_1")
            self.play(circs_green[0].animate.scale(2), run_time=0.3)
            self.wait(0.5)
            self.play(circs_green[0].animate.scale(0.5), run_time=0.3)

            self.wait_until_bookmark("day_2")
            self.play(circs_green[1].animate.scale(2), run_time=0.3)
            self.wait(0.5)
            self.play(circs_green[1].animate.scale(0.5), run_time=0.3)

            self.wait_until_bookmark("day_3")
            self.play(circs_green[2].animate.scale(2), run_time=0.3)
            self.wait(0.5)
            self.play(circs_green[2].animate.scale(0.5), run_time=0.3)

            self.wait_until_bookmark("day_4")
            self.play(circs_green[3].animate.scale(2), run_time=0.3)
            self.wait(0.5)
            self.play(circs_green[3].animate.scale(0.5), run_time=0.3)

            self.wait_until_bookmark("colors_out")
            self.play(FadeOut(circs_blue), FadeOut(circs_pink))

            self.wait_until_bookmark("draw_line")
            self.add_pencil_sound(1.5)
            self.play(Write(func_green_plotted))

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_1_1_I_4_1_c(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([0,4,1], [0, 16, 4], x_ticks=[1,2,3,4], y_ticks=[4,8,12,16]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        xvals = [str(i+1) for i in range(4)]
        xvals_int = [i+1 for i in range(4)]
        yvals = ["12", "16", "10", "16"]
        yvals_int = [12, 16, 10, 16]

        xlabel = self.translate("Func_1_1.1I41q.xlabel")
        ylabel = self.translate("Func_1_1.1I41q.ylabel")

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I3.main.title"))

        t = Table([[str(val) for val in xvals], [str(val) for val in yvals]],
                    color=BLACK, line_config={"color":BLACK}, element_to_mobject_config={"color":BLACK},
                    row_labels=[Text(xlabel, color=BLACK, font_size = fs1), Text(ylabel, color=BLACK, font_size = fs1)])
        t = t.scale(3.3/t.get_width()).next_to(plane, DOWN, buff=1)

        self.add(t)

        cords_blue = [[1,16], [2,10], [3,16], [4,12]]
        cords_green = [[1,12], [2,16], [3,10], [4,16]]
        cords_pink = [[1,10], [2,12], [3,12], [4,10]]

        func_green = create_piecewise_linear(list(zip(xvals_int, yvals_int)))
        func_green_plotted = plane.plot(func_green, color=GREEN)

        circs_blue = VGroup(*[Dot(plane.c2p(*cords_blue[i]), color=BLUE) for i in range(4)])
        circs_green = VGroup(*[Dot(plane.c2p(*cords_green[i]), color=GREEN) for i in range(4)])
        circs_pink = VGroup(*[Dot(plane.c2p(*cords_pink[i]), color=PINK) for i in range(4)])
        self.add(circs_blue, circs_green, circs_pink)


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_1_1.1I41a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("day_1")
            self.play(circs_green[0].animate.scale(2), run_time=0.3)
            self.wait(0.5)
            self.play(circs_green[0].animate.scale(0.5), run_time=0.3)

            self.wait_until_bookmark("day_2")
            self.play(circs_green[1].animate.scale(2), run_time=0.3)
            self.wait(0.5)
            self.play(circs_green[1].animate.scale(0.5), run_time=0.3)

            self.wait_until_bookmark("day_3")
            self.play(circs_green[2].animate.scale(2), run_time=0.3)
            self.wait(0.5)
            self.play(circs_green[2].animate.scale(0.5), run_time=0.3)

            self.wait_until_bookmark("day_4")
            self.play(circs_green[3].animate.scale(2), run_time=0.3)
            self.wait(0.5)
            self.play(circs_green[3].animate.scale(0.5), run_time=0.3)

            self.wait_until_bookmark("colors_out")
            self.play(FadeOut(circs_blue), FadeOut(circs_pink))

            self.wait_until_bookmark("draw_line")
            self.add_pencil_sound(1.5)
            self.play(Write(func_green_plotted))

        # Wait for 4 seconds at the end of animation
        self.wait(4)


################################
########## Practice Part #######
class ValueTableQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):

        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        plane = self.cords[0]

        # Add title to the scene
        self.add_title(self.title)

        # Create and plot piecewise linear function
        f1 = create_piecewise_linear(list(zip(self.xvals, self.yvals[0])))
        f2 = create_piecewise_linear(list(zip(self.xvals, self.yvals[1])))
        f3 = create_piecewise_linear(list(zip(self.xvals, self.yvals[2])))
        func_plotted1 = plane.plot(f1, color=ORANGE)
        func_plotted2 = plane.plot(f2, color=BLUE)
        func_plotted3 = plane.plot(f3, color=GREEN)

        tab = Table([[str(val) for val in self.xvals], [str(val) for val in self.yvals[self.correcty]]],
                    color=BLACK, line_config={"color":BLACK}, element_to_mobject_config={"color":BLACK},
                    row_labels=[Text(self.labels[0], color=BLACK, font_size = fs1), Text(self.labels[1], color=BLACK, font_size = fs1)])
        tab = tab.scale(3.3/tab.get_width()).next_to(plane, DOWN, buff=1)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(*self.cursorStart)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.autoFadeBackground = True

        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_1_1.ValueTableQuestionScene.voiceover"))
        ) as tracker:
            
            # Highlight first Text
            self.wait_until_bookmark("action")
            self.add_shift_sound(0.5)
            self.play(self.introImg.animate.shift(5*RIGHT), run_time=0.5)

            # Animate the coordinate system being created
            self.wait_until_bookmark("values")
            self.play(Write(tab))

            # Show the orange function
            self.wait_until_bookmark("orange")
            self.add_shift_sound(0.5)
            self.play(self.introImg.animate.shift(5*RIGHT), Write(self.cords), run_time=0.5)
            self.add_pencil_sound(1.5)
            self.play(Write(func_plotted1))

            # Show the blue function
            self.wait_until_bookmark("blue")
            self.add_pencil_sound(1.5)
            self.play(Write(func_plotted2))

            # Show the green function
            self.wait_until_bookmark("green")
            self.add_pencil_sound(1.5)
            self.play(Write(func_plotted3))

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class ValueTableSolutionScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):


        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        plane = self.cords[0]

        # Add title to the scene
        self.add_title(self.title)

        # Create and plot piecewise linear function
        f1 = create_piecewise_linear(list(zip(self.xvals, self.yvals[0])))
        f2 = create_piecewise_linear(list(zip(self.xvals, self.yvals[1])))
        f3 = create_piecewise_linear(list(zip(self.xvals, self.yvals[2])))
        fcorrect = create_piecewise_linear(list(zip(self.xvals, self.yvals[self.correcty])))
        func_plotted1 = plane.plot(f1, color=ORANGE)
        func_plotted2 = plane.plot(f2, color=BLUE)
        func_plotted3 = plane.plot(f3, color=GREEN)
        func_plotted_correct = plane.plot(fcorrect, color=RED)


        self.colors = [self.translate("Func_1_1.ValueTableSolutionScene.color-1"), self.translate("Func_1_1.ValueTableSolutionScene.color-2"), self.translate("Func_1_1.ValueTableSolutionScene.color-3")]
        funcs = [func_plotted1, func_plotted2, func_plotted3]

        tab = Table([[str(val) for val in self.xvals], [str(val) for val in self.yvals[self.correcty]]],
                    color=BLACK, line_config={"color":BLACK}, element_to_mobject_config={"color":BLACK},
                    row_labels=[Text(self.labels[0], color=BLACK, font_size = fs1), Text(self.labels[1], color=BLACK, font_size = fs1)])
        tab = tab.scale(3.3/tab.get_width()).next_to(plane, DOWN, buff=1)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(*self.cursorStart)
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])
        first_bit = self.evaluate_string(self.translate("Func_1_1.ValueTableSolutionScene.first_bit"))
        if self.idx_selected == self.correcty:
            first_bit = self.evaluate_string(self.translate("Func_1_1.ValueTableSolutionScene.first_bit_correct"))

        col_highlights = [SurroundingRectangle(col, color=PURE_BLUE, corner_radius=.1, buff=.2) for col in tab.get_columns()]

        x_0, y_0, _ = plane.c2p(0,0)
        lines = VGroup(DashedLine(LEFT, RIGHT, color=GREY).add_updater(lambda m: m.put_start_and_end_on([x_0,cursor.get_y(),-1], cursor.get_center())), DashedLine(LEFT, RIGHT, color=GREY).add_updater(lambda m: m.put_start_and_end_on([cursor.get_x(), y_0,-1], cursor.get_center())))

        self.first_bit = first_bit
        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_1_1.ValueTableSolutionScene.voiceover"))
        ) as tracker:
            
            # Create the Coordinate System
            self.play(Write(self.cords), Write(tab))

            # Highlight first Text
            self.wait_until_bookmark("Func")
            self.add_pencil_sound(1.5)
            self.play(Write(funcs[self.idx_selected]))
            self.add(cursor)

            # Highlight x-Axis
            self.wait_until_bookmark("xaxis")
            cursor.idle=False
            self.play(CursorMarkAxis(cursor, plane, 'x'), run_time=0.5)

            # Highlight y-Axis
            self.wait_until_bookmark("yaxis")
            self.play(CursorMarkAxis(cursor, plane, 'y'), run_time=0.5)

            self.wait_until_bookmark("val1")
            self.add(lines)
            x,y,_ = plane.c2p(self.xvals[0], self.yvals[self.correcty][0])
            self.play(CursorMoveResize(cursor, x, y), run_time=0.3)
            self.play(Write(col_highlights[1]))
            self.add(Circle(color=RED, radius=0.1).move_to(cursor))

            for val_idx in range(1,5):
                # Highlight first Value
                self.wait_until_bookmark("val"+str(val_idx+1))
                x,y,_ = plane.c2p(self.xvals[val_idx], self.yvals[self.correcty][val_idx])
                self.play(CursorMoveTo(cursor, x, y), ReplacementTransform(col_highlights[val_idx], col_highlights[val_idx+1]),  run_time=0.3)
                self.add(Circle(color=RED, radius=0.1).move_to(cursor))
            cursor.idle=True

            # Create the function
            self.wait_until_bookmark("TrueFunc")
            self.play(Unwrite(col_highlights[-1]))

        # Wait for 4 seconds at the end of animation
        self.wait(4)


#############################################
#               Hike Question               #
class Func_1_1_P_1_q(ValueTableQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [self.translate("Func_1_1.P_color-1"), self.translate("Func_1_1.P_color-2"), self.translate("Func_1_1.P_color-3")],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_1.P_question-1") 
        )

    def construct(self):
        self.intro=self.translate("Func_1_1.P_intro")
        self.xvals = [0,1,2,3,4]
        self.yvals = [[4,1,0,1,4],[2,0,1,1,3],[1,3,4,1,2]]
        self.cords = self.add_cords([0,4,1], [0, 4, 1], x_ticks=[0,2,4], x_labels=[0,2,4], y_ticks=[2,4], y_labels=[2,4], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_title")
        self.cursorStart = [0,0]
        self.correcty = 0
        self.introImg = ImageMobject(assets_folder / "img" / "matterhorn.png")
        self.introImg = self.introImg.scale(7/self.introImg.get_width()).move_to([-5, 1, 0])
        self.labels=[self.translate("Func_1_1.P_x"), self.translate("Func_1_1.P_y")]
        super().construct()


class Func_1_1_P_1_a(ValueTableSolutionScene):

    def construct(self):

        self.correcty = 0
        self.idx_selected = 0
        self.xvals = [0,1,2,3,4]
        self.yvals = [[4,1,0,1,4],[2,0,1,1,3],[1,3,4,1,2]]
        self.cords = self.add_cords([0,4,1], [0, 4, 1], x_ticks=[0,2,4], x_labels=[0,2,4], y_ticks=[2,4], y_labels=[2,4], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_title")
        self.cursorStart = [0,0]
        self.labels=[self.translate("Func_1_1.P_x"), self.translate("Func_1_1.P_y")]
        self.Textlabels = [self.translate("Func_1_1.P_x_text"), self.translate("Func_1_1.P_y_text"),]

        super().construct()

class Func_1_1_P_1_b(ValueTableSolutionScene):

    def construct(self):

        self.correcty = 0
        self.title = self.translate("Func_1_1.P_title")
        self.idx_selected = 1
        self.xvals = [0,1,2,3,4]
        self.yvals = [[4,1,0,1,4],[2,0,1,1,3],[1,3,4,1,2]]
        self.cords = self.add_cords([0,4,1], [0, 4, 1], x_ticks=[0,2,4], x_labels=[0,2,4], y_ticks=[2,4], y_labels=[2,4], height=2).shift(0.4*DOWN)
        self.cursorStart = [0,0]
        self.labels=[self.translate("Func_1_1.P_x"), self.translate("Func_1_1.P_y")]
        self.Textlabels = [self.translate("Func_1_1.P_x_text"), self.translate("Func_1_1.P_y_text"),]

        super().construct()

class Func_1_1_P_1_c(ValueTableSolutionScene):

    def construct(self):

        self.correcty = 0
        self.title = self.translate("Func_1_1.P_title")
        self.idx_selected = 2
        self.xvals = [0,1,2,3,4]
        self.yvals = [[4,1,0,1,4],[2,0,1,1,3],[1,3,4,1,2]]
        self.cords = self.add_cords([0,4,1], [0, 4, 1], x_ticks=[0,2,4], x_labels=[0,2,4], y_ticks=[2,4], y_labels=[2,4], height=2).shift(0.4*DOWN)
        self.cursorStart = [0,0]
        self.labels=[self.translate("Func_1_1.P_x"), self.translate("Func_1_1.P_y")]
        self.Textlabels = [self.translate("Func_1_1.P_x_text"), self.translate("Func_1_1.P_y_text"),]

        super().construct()


#############################################
#               Rain Question               #
class Func_1_1_P_2_q(ValueTableQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [self.translate("Func_1_1.P_color-1"), self.translate("Func_1_1.P_color-2"), self.translate("Func_1_1.P_color-3")],
            correctAnswerIndex = 2,
            questionText = self.translate("Func_1_1.P_question-1") 
        )

    def construct(self):
        self.intro = self.translate("Func_1_1.P_2_intro")
        self.xvals = [1,2,3,4,5]
        self.yvals = [[10, 20, 30, 40, 20], [30, 10, 40, 20, 30], [20, 30, 10, 40, 30]]
        self.cords = self.add_cords([1,5,1], [0, 40, 10], x_ticks=[1,3,5], x_labels=[1,3,5], y_ticks=[10,20,30,40], y_labels=[10,20,30,40], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_2_title")
        self.cursorStart = [1,0]
        self.correcty = 2
        self.introImg = ImageMobject(assets_folder / "img" / "rain.png").scale(0.35).move_to([-5, 1, 0])
        self.labels = [self.translate("Func_1_1.P_2_x"), self.translate("Func_1_1.P_2_y")]
        super().construct()

class Func_1_1_P_2_a(ValueTableSolutionScene):

    def construct(self):

        self.correcty = 2
        self.idx_selected = 0
        self.xvals = [1,2,3,4,5]
        self.yvals = [[10, 20, 30, 40, 20], [30, 10, 40, 20, 30], [20, 30, 10, 40, 30]]
        self.cords = self.add_cords([1,5,1], [0, 40, 10], x_ticks=[1,3,5], x_labels=[1,3,5], y_ticks=[10,20,30,40], y_labels=[10,20,30,40], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_2_title")
        self.cursorStart = [1,0]
        self.Textlabels = [self.translate("Func_1_1.P_2_x_text"), self.translate("Func_1_1.P_2_y_text")]
        self.labels = [self.translate("Func_1_1.P_2_x"), self.translate("Func_1_1.P_2_y")]

        super().construct()

class Func_1_1_P_2_b(ValueTableSolutionScene):

    def construct(self):

        self.correcty = 2
        self.idx_selected = 1
        self.xvals = [1,2,3,4,5]
        self.yvals = [[10, 20, 30, 40, 20], [30, 10, 40, 20, 30], [20, 30, 10, 40, 30]]
        self.cords = self.add_cords([1,5,1], [0, 40, 10], x_ticks=[1,3,5], x_labels=[1,3,5], y_ticks=[10,20,30,40], y_labels=[10,20,30,40], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_2_title")
        self.cursorStart = [1,0]
        self.Textlabels = [self.translate("Func_1_1.P_2_x_text"), self.translate("Func_1_1.P_2_y_text")]
        self.labels = [self.translate("Func_1_1.P_2_x"), self.translate("Func_1_1.P_2_y")]

        super().construct()

class Func_1_1_P_2_c(ValueTableSolutionScene):

    def construct(self):

        self.correcty = 2
        self.idx_selected = 2
        self.xvals = [1,2,3,4,5]
        self.yvals = [[10, 20, 30, 40, 20], [30, 10, 40, 20, 30], [20, 30, 10, 40, 30]]
        self.cords = self.add_cords([1,5,1], [0, 40, 10], x_ticks=[1,3,5], x_labels=[1,3,5], y_ticks=[10,20,30,40], y_labels=[10,20,30,40], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_2_title")
        self.cursorStart = [1,0]
        self.Textlabels = [self.translate("Func_1_1.P_2_x_text"), self.translate("Func_1_1.P_2_y_text")]
        self.labels = [self.translate("Func_1_1.P_2_x"), self.translate("Func_1_1.P_2_y")]

        super().construct()


#############################################
#               Snow Question               #
class Func_1_1_P_3_q(ValueTableQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [self.translate("Func_1_1.P_color-1"), self.translate("Func_1_1.P_color-2"), self.translate("Func_1_1.P_color-3")],
            correctAnswerIndex = 1,
            questionText = self.translate("Func_1_1.P_question-1") 
        )

    def construct(self):
        self.intro = self.translate("Func_1_1.P_3_intro")
        self.xvals = [1, 2, 3, 4, 5]
        self.yvals = [[5, 10, 15, 10, 5], [10, 5, 15, 10, 15], [10, 15, 5, 15, 10]]
        self.cords = self.add_cords([1, 5, 1], [0, 15, 5], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[5, 10, 15], y_labels=[5, 10, 15], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_3_title")
        self.cursorStart = [1, 0]
        self.correcty = 1
        self.introImg = ImageMobject(assets_folder / "img" / "snow.png")
        self.introImg = self.introImg.scale(2.5/self.introImg.get_width()).move_to([-5, 1, 0])
        self.labels = [self.translate("Func_1_1.P_3_x"), self.translate("Func_1_1.P_3_y")]
        super().construct()

class Func_1_1_P_3_a(ValueTableSolutionScene):

    def construct(self):
        self.correcty = 1
        self.idx_selected = 0
        self.xvals = [1, 2, 3, 4, 5]
        self.yvals = [[5, 10, 15, 10, 5], [10, 5, 15, 10, 15], [10, 15, 5, 15, 10]]
        self.cords = self.add_cords([1, 5, 1], [0, 15, 5], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[5, 10, 15], y_labels=[5, 10, 15], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_3_title")
        self.cursorStart = [1, 0]
        self.correcty = 1
        self.introImg = ImageMobject(assets_folder / "img" / "snow.png")
        self.introImg = self.introImg.scale(2.5/self.introImg.get_width()).move_to([-5, 1, 0])
        self.labels = [self.translate("Func_1_1.P_3_x"), self.translate("Func_1_1.P_3_y")]
        self.Textlabels = [self.translate("Func_1_1.P_3_x_text"), self.translate("Func_1_1.P_3_y_text")]
        super().construct()

class Func_1_1_P_3_b(ValueTableSolutionScene):

    def construct(self):
        self.correcty = 1
        self.idx_selected = 1
        self.xvals = [1, 2, 3, 4, 5]
        self.yvals = [[5, 10, 15, 10, 5], [10, 5, 15, 10, 15], [10, 15, 5, 15, 10]]
        self.cords = self.add_cords([1, 5, 1], [0, 15, 5], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[5, 10, 15], y_labels=[5, 10, 15], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_3_title")
        self.cursorStart = [1, 0]
        self.correcty = 1
        self.introImg = ImageMobject(assets_folder / "img" / "snow.png")
        self.introImg = self.introImg.scale(2.5/self.introImg.get_width()).move_to([-5, 1, 0])
        self.labels = [self.translate("Func_1_1.P_3_x"), self.translate("Func_1_1.P_3_y")]
        self.Textlabels = [self.translate("Func_1_1.P_3_x_text"), self.translate("Func_1_1.P_3_y_text")]

        super().construct()

class Func_1_1_P_3_c(ValueTableSolutionScene):

    def construct(self):
        self.correcty = 1
        self.idx_selected = 2
        self.xvals = [1, 2, 3, 4, 5]
        self.yvals = [[5, 10, 15, 10, 5], [10, 5, 15, 10, 15], [10, 15, 5, 15, 10]]
        self.cords = self.add_cords([1, 5, 1], [0, 15, 5], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[5, 10, 15], y_labels=[5, 10, 15], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_3_title")
        self.cursorStart = [1, 0]
        self.correcty = 1
        self.introImg = ImageMobject(assets_folder / "img" / "snow.png")
        self.introImg = self.introImg.scale(2.5/self.introImg.get_width()).move_to([-5, 1, 0])
        self.labels = [self.translate("Func_1_1.P_3_x"), self.translate("Func_1_1.P_3_y")]
        self.Textlabels = [self.translate("Func_1_1.P_3_x_text"), self.translate("Func_1_1.P_3_y_text")]

        super().construct()


#############################################
#                  Outro                    #
class Func_1_1_I_4_2(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create the coordinate system
        cords = self.add_cords([0,4,1], [0, 10, 4], x_ticks=[1,2,3,4], y_ticks=[4,8]).shift(DOWN)
        plane = cords[0]

        xvals_int = [i for i in range(5)]
        yvals_int = [8, 4, 5, 7, 3]
        xvals, yvals = [str(x) for x in xvals_int], [str(y) for y in yvals_int]
        xlabel = "x"
        ylabel = "y"

        # Add title to the scene
        self.add_title(self.translate("Func_1_1.1I3.main.title"))

        t = Table([[str(val) for val in xvals], [str(val) for val in yvals]],
                    color=BLACK, line_config={"color":BLACK}, element_to_mobject_config={"color":BLACK},
                    row_labels=[Text(xlabel, color=BLACK, font_size = fs1), Text(ylabel, color=BLACK, font_size = fs1)])
        t = t.scale(3.3/t.get_width()).next_to(plane, DOWN, buff=1)

        func_green = create_piecewise_linear(list(zip(xvals_int, yvals_int)))
        func_green_plotted = plane.plot(func_green, color=GREEN)

        lion = ImageMobject(assets_folder / "img" / "lion_thumbs.png").move_to([-5, 0, 0])
        lion = lion.scale(3/lion.get_width())


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_1.1I42.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("table_in")
            self.play(Write(t))

            self.wait_until_bookmark("plot_in")
            self.play(Write(cords), run_time=0.3)
            self.add_pencil_sound(1.5)
            self.play(Write(func_green_plotted))

            self.wait_until_bookmark("lion_in")
            self.add_shift_sound(0.5)
            self.play(FadeOut(t), FadeOut(cords), FadeOut(func_green_plotted), lion.animate.shift(5*RIGHT), run_time=0.5)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


#############################################
#           Sunshine Hours Question         #
class Func_1_1_P_4_q(ValueTableQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [self.translate("Func_1_1.P_color-1"), self.translate("Func_1_1.P_color-2"), self.translate("Func_1_1.P_color-3")],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_1.P_question-1") 
        )

    def construct(self):
        self.intro = self.translate("Func_1_1.P_4_intro")
        self.xvals = [1, 2, 3, 4, 5]
        self.yvals = [[12, 10, 11, 12, 10], [10, 12, 10, 11, 12], [11, 12, 10, 12, 11]]
        self.cords = self.add_cords([1, 5, 1], [10, 12, 1], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[10, 11, 12], y_labels=[10, 11, 12], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_4_title")
        self.cursorStart = [1, 0]
        self.correcty = 0
        self.introImg = ImageMobject(assets_folder / "img" / "sun.png")
        self.introImg = self.introImg.scale(3/self.introImg.get_width()).move_to([-5, 1, 0])
        self.labels = [self.translate("Func_1_1.P_4_x"), self.translate("Func_1_1.P_4_y")]
        super().construct()

class Func_1_1_P_4_a(ValueTableSolutionScene):

    def construct(self):

        self.xvals = [1, 2, 3, 4, 5]
        self.yvals = [[12, 10, 11, 12, 10], [10, 12, 10, 11, 12], [11, 12, 10, 12, 11]]
        self.cords = self.add_cords([1, 5, 1], [10, 12, 1], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[10, 11, 12], y_labels=[10, 11, 12], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_4_title")
        self.cursorStart = [1, 10]
        self.correcty = 0
        self.idx_selected=0
        self.labels = [self.translate("Func_1_1.P_4_x"), self.translate("Func_1_1.P_4_y")]
        self.Textlabels = [self.translate("Func_1_1.P_4_x_text"), self.translate("Func_1_1.P_4_y_text")]
        super().construct()

class Func_1_1_P_4_b(ValueTableSolutionScene):

    def construct(self):

        self.xvals = [1, 2, 3, 4, 5]
        self.yvals = [[12, 10, 11, 12, 10], [10, 12, 10, 11, 12], [11, 12, 10, 12, 11]]
        self.cords = self.add_cords([1, 5, 1], [10, 12, 1], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[10, 11, 12], y_labels=[10, 11, 12], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_4_title")
        self.cursorStart = [1, 10]
        self.correcty = 0
        self.idx_selected=1
        self.labels = [self.translate("Func_1_1.P_4_x"), self.translate("Func_1_1.P_4_y")]
        self.Textlabels = [self.translate("Func_1_1.P_4_x_text"), self.translate("Func_1_1.P_4_y_text")]

        super().construct()

class Func_1_1_P_4_c(ValueTableSolutionScene):

    def construct(self):

        self.xvals = [1, 2, 3, 4, 5]
        self.yvals = [[12, 10, 11, 12, 10], [10, 12, 10, 11, 12], [11, 12, 10, 12, 11]]
        self.cords = self.add_cords([1, 5, 1], [10, 12, 1], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[10, 11, 12], y_labels=[10, 11, 12], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_4_title")
        self.cursorStart = [1, 10]
        self.correcty = 0
        self.idx_selected=2
        self.labels = [self.translate("Func_1_1.P_4_x"), self.translate("Func_1_1.P_4_y")]
        self.Textlabels = [self.translate("Func_1_1.P_4_x_text"), self.translate("Func_1_1.P_4_y_text")]

        super().construct()


#############################################
#           Wind Speed Question             #
class Func_1_1_P_5_q(ValueTableQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [self.translate("Func_1_1.P_color-1"), self.translate("Func_1_1.P_color-2"), self.translate("Func_1_1.P_color-3")],
            correctAnswerIndex = 2,
            questionText = self.translate("Func_1_1.P_question-1") 
        )

    def construct(self):
        self.intro = self.translate("Func_1_1.P_5_intro")
        self.xvals = [1, 2, 3, 4, 5, 6]
        self.yvals = [[20, 30, 40, 50, 40, 30], [30, 20, 50, 40, 30, 50], [30, 40, 20, 50, 40, 30]]
        self.cords = self.add_cords([1, 6, 1], [0, 50, 10], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[20, 30, 40, 50], y_labels=[20, 30, 40, 50], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_5_title")
        self.cursorStart = [1, 20]
        self.correcty = 2
        self.introImg = ImageMobject(assets_folder / "img" / "wind.png").scale(0.35).move_to([-5, 1, 0])
        self.labels = self.translate("Func_1_1.P_5_labels")
        super().construct()

class Func_1_1_P_5_a(ValueTableSolutionScene):

    def construct(self):
        self.xvals = [1, 2, 3, 4, 5, 6]
        self.yvals = [[20, 30, 40, 50, 40, 30], [30, 20, 50, 40, 30, 50], [30, 40, 20, 50, 40, 30]]
        self.cords = self.add_cords([1, 6, 1], [0, 50, 10], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[20, 30, 40, 50], y_labels=[20, 30, 40, 50], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_5_title")
        self.cursorStart = [1, 20]
        self.correcty = 2
        self.idx_selected=0
        self.labels = self.translate("Func_1_1.P_5_labels")
        self.Textlabels = self.translate("Func_1_1.P_5_textlabels")
        super().construct()

class Func_1_1_P_5_b(ValueTableSolutionScene):

    def construct(self):
        self.xvals = [1, 2, 3, 4, 5, 6]
        self.yvals = [[20, 30, 40, 50, 40, 30], [30, 20, 50, 40, 30, 50], [30, 40, 20, 50, 40, 30]]
        self.cords = self.add_cords([1, 6, 1], [0, 50, 10], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[20, 30, 40, 50], y_labels=[20, 30, 40, 50], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_5_title")
        self.cursorStart = [1, 20]
        self.correcty = 2
        self.idx_selected=1
        self.labels = self.translate("Func_1_1.P_5_labels")
        self.Textlabels = self.translate("Func_1_1.P_5_textlabels")
        super().construct()

class Func_1_1_P_5_c(ValueTableSolutionScene):

    def construct(self):
        self.xvals = [1, 2, 3, 4, 5, 6]
        self.yvals = [[20, 30, 40, 50, 40, 30], [30, 20, 50, 40, 30, 50], [30, 40, 20, 50, 40, 30]]
        self.cords = self.add_cords([1, 6, 1], [0, 50, 10], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[20, 30, 40, 50], y_labels=[20, 30, 40, 50], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_5_title")
        self.cursorStart = [1, 20]
        self.correcty = 2
        self.idx_selected=2
        self.labels = self.translate("Func_1_1.P_5_labels")
        self.Textlabels = self.translate("Func_1_1.P_5_textlabels")
        super().construct()

#############################################
#            Temperature Question           #
class Func_1_1_P_6_q(ValueTableQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [self.translate("Func_1_1.P_color-1"), self.translate("Func_1_1.P_color-2"), self.translate("Func_1_1.P_color-3")],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_1.P_question-1") 
        )

    def construct(self):
        self.intro = self.translate("Func_1_1.P_6_intro")
        self.xvals = [1, 2, 3, 4, 5]
        self.yvals = [[10, 15, 12, 14, 13], [15, 10, 14, 13, 15], [13, 14, 10, 15, 14]]
        self.cords = self.add_cords([1, 5, 1], [10, 15, 1], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[10, 12, 14], y_labels=[10, 12, 14], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_6_title")
        self.cursorStart = [1, 10]
        self.correcty = 0
        self.introImg = ImageMobject(assets_folder / "img" / "spring.png").scale(0.35).move_to([-5, -0.3, 0])
        self.labels = self.translate("Func_1_1.P_6_labels")
        super().construct()

class Func_1_1_P_6_a(ValueTableSolutionScene):

    def construct(self):
        self.xvals = [1, 2, 3, 4, 5]
        self.yvals = [[10, 15, 12, 14, 13], [15, 10, 14, 13, 15], [13, 14, 10, 15, 14]]
        self.cords = self.add_cords([1, 5, 1], [10, 15, 1], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[10, 12, 14], y_labels=[10, 12, 14], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_6_title")
        self.cursorStart = [1, 10]
        self.correcty = 0
        self.idx_selected = 0
        self.labels = self.translate("Func_1_1.P_6_labels")
        self.Textlabels = self.translate("Func_1_1.P_6_textlabels")
        super().construct()

class Func_1_1_P_6_b(ValueTableSolutionScene):

    def construct(self):
        self.xvals = [1, 2, 3, 4, 5]
        self.yvals = [[10, 15, 12, 14, 13], [15, 10, 14, 13, 15], [13, 14, 10, 15, 14]]
        self.cords = self.add_cords([1, 5, 1], [10, 15, 1], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[10, 12, 14], y_labels=[10, 12, 14], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_6_title")
        self.cursorStart = [1, 10]
        self.correcty = 0
        self.idx_selected = 1
        self.labels = self.translate("Func_1_1.P_6_labels")
        self.Textlabels = self.translate("Func_1_1.P_6_textlabels")
        super().construct()

class Func_1_1_P_6_c(ValueTableSolutionScene):

    def construct(self):
        self.xvals = [1, 2, 3, 4, 5]
        self.yvals = [[10, 15, 12, 14, 13], [15, 10, 14, 13, 15], [13, 14, 10, 15, 14]]
        self.cords = self.add_cords([1, 5, 1], [10, 15, 1], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[10, 12, 14], y_labels=[10, 12, 14], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_6_title")
        self.cursorStart = [1, 10]
        self.correcty = 0
        self.idx_selected = 2
        self.labels = self.translate("Func_1_1.P_6_labels")
        self.Textlabels = self.translate("Func_1_1.P_6_textlabels")
        super().construct()

#############################################
#             Humidity Question             #
class Func_1_1_P_7_q(ValueTableQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [self.translate("Func_1_1.P_color-1"), self.translate("Func_1_1.P_color-2"), self.translate("Func_1_1.P_color-3")],
            correctAnswerIndex = 1,
            questionText = self.translate("Func_1_1.P_question-1") 
        )

    def construct(self):
        self.intro = self.translate("Func_1_1.P_7_intro")
        self.xvals = [1, 2, 3, 4, 5, 6]
        self.yvals = [[70, 75, 80, 85, 80, 75], [75, 70, 85, 80, 75, 85], [75, 80, 70, 85, 80, 75]]
        self.cords = self.add_cords([1, 6, 1], [70, 90, 10], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[70, 75, 80, 85], y_labels=[70, 75, 80, 85], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_7_title")
        self.cursorStart = [1, 0]
        self.correcty = 1
        self.introImg = ImageMobject(assets_folder / "img" / "palmtree.png").scale(0.15).move_to([-5, 1.9, 0])
        self.labels = self.translate("Func_1_1.P_7_labels")
        super().construct()

class Func_1_1_P_7_a(ValueTableSolutionScene):

    def construct(self):
        self.xvals = [1, 2, 3, 4, 5, 6]
        self.yvals = [[70, 75, 80, 85, 80, 75], [75, 70, 85, 80, 75, 85], [75, 80, 70, 85, 80, 75]]
        self.cords = self.add_cords([1, 6, 1], [70, 90, 10], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[70, 75, 80, 85], y_labels=[70, 75, 80, 85], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_7_title")
        self.cursorStart = [1, 0]
        self.correcty = 1
        self.idx_selected = 0
        self.labels = self.translate("Func_1_1.P_7_labels")
        self.Textlabels = self.translate("Func_1_1.P_7_textlabels")
        super().construct()

class Func_1_1_P_7_b(ValueTableSolutionScene):

    def construct(self):
        self.xvals = [1, 2, 3, 4, 5, 6]
        self.yvals = [[70, 75, 80, 85, 80, 75], [75, 70, 85, 80, 75, 85], [75, 80, 70, 85, 80, 75]]
        self.cords = self.add_cords([1, 6, 1], [70, 90, 10], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[70, 75, 80, 85], y_labels=[70, 75, 80, 85], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_7_title")
        self.cursorStart = [1, 0]
        self.correcty = 1
        self.idx_selected = 1
        self.labels = self.translate("Func_1_1.P_7_labels")
        self.Textlabels = self.translate("Func_1_1.P_7_textlabels")
        super().construct()

class Func_1_1_P_7_c(ValueTableSolutionScene):

    def construct(self):
        self.xvals = [1, 2, 3, 4, 5, 6]
        self.yvals = [[70, 75, 80, 85, 80, 75], [75, 70, 85, 80, 75, 85], [75, 80, 70, 85, 80, 75]]
        self.cords = self.add_cords([1, 6, 1], [70, 90, 10], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[70, 75, 80, 85], y_labels=[70, 75, 80, 85], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_7_title")
        self.cursorStart = [1, 0]
        self.correcty = 1
        self.idx_selected = 2
        self.labels = self.translate("Func_1_1.P_7_labels")
        self.Textlabels = self.translate("Func_1_1.P_7_textlabels")
        super().construct()

#############################################
#             Apple Picking Question        #
class Func_1_1_P_8_q(ValueTableQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = [self.translate("Func_1_1.P_color-1"), self.translate("Func_1_1.P_color-2"), self.translate("Func_1_1.P_color-3")],
            correctAnswerIndex = 1,
            questionText = self.translate("Func_1_1.P_question-1") 
        )


    def construct(self):
        self.intro = self.translate("Func_1_1.P_8_intro")
        self.xvals = [1, 2, 3, 4, 5]
        self.yvals = [[15, 30, 20, 25, 18], [20, 15, 25, 18, 30], [25, 20, 15, 30, 18]]
        self.cords = self.add_cords([1, 5, 1], [0, 30, 5], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[10, 20, 30], y_labels=[10, 20, 30], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_8_title")
        self.cursorStart = [1, 0]
        self.correcty = 1
        self.introImg = ImageMobject(assets_folder / "img" / "apple.png").scale(0.5).move_to([-5, 1, 0])
        self.labels = self.translate("Func_1_1.P_8_labels")
        super().construct()

class Func_1_1_P_8_a(ValueTableSolutionScene):

    def construct(self):
        self.xvals = [1, 2, 3, 4, 5]
        self.yvals = [[15, 30, 20, 25, 18], [20, 15, 25, 18, 30], [25, 20, 15, 30, 18]]
        self.cords = self.add_cords([1, 5, 1], [0, 30, 5], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[10, 20, 30], y_labels=[10, 20, 30], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_8_title")
        self.cursorStart = [1, 0]
        self.correcty = 1
        self.idx_selected = 0
        self.labels = self.translate("Func_1_1.P_8_labels")
        self.Textlabels = self.translate("Func_1_1.P_8_textlabels")
        super().construct()

class Func_1_1_P_8_b(ValueTableSolutionScene):

    def construct(self):
        self.xvals = [1, 2, 3, 4, 5]
        self.yvals = [[15, 30, 20, 25, 18], [20, 15, 25, 18, 30], [25, 20, 15, 30, 18]]
        self.cords = self.add_cords([1, 5, 1], [0, 30, 5], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[10, 20, 30], y_labels=[10, 20, 30], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_8_title")
        self.cursorStart = [1, 0]
        self.correcty = 1
        self.idx_selected = 1
        self.labels = self.translate("Func_1_1.P_8_labels")
        self.Textlabels = self.translate("Func_1_1.P_8_textlabels")
        super().construct()

class Func_1_1_P_8_c(ValueTableSolutionScene):

    def construct(self):
        self.xvals = [1, 2, 3, 4, 5]
        self.yvals = [[15, 30, 20, 25, 18], [20, 15, 25, 18, 30], [25, 20, 15, 30, 18]]
        self.cords = self.add_cords([1, 5, 1], [0, 30, 5], x_ticks=[1, 3, 5], x_labels=[1, 3, 5], y_ticks=[10, 20, 30], y_labels=[10, 20, 30], height=2).shift(0.4*DOWN)
        self.title = self.translate("Func_1_1.P_8_title")
        self.cursorStart = [1, 0]
        self.correcty = 1
        self.idx_selected = 2
        self.labels = self.translate("Func_1_1.P_8_labels")
        self.Textlabels = self.translate("Func_1_1.P_8_textlabels")
        super().construct()



# # Add the scene to prototypes
PROTOTYPES = [
    PagePrototypeVideo.from_scene(Func_1_1_I_1_q),
    PagePrototypeQuestion.from_scene(Func_1_1_I_1_q),
    PagePrototypeVideo.from_scene(Func_1_1_I_1_a),
    PagePrototypeVideo.from_scene(Func_1_1_I_1_b),
    PagePrototypeVideo.from_scene(Func_1_1_I_2),
    PagePrototypeVideo.from_scene(Func_1_1_I_3),
    PagePrototypeVideo.from_scene(Func_1_1_I_3_1_q),
    PagePrototypeQuestion.from_scene(Func_1_1_I_3_1_q),
    PagePrototypeVideo.from_scene(Func_1_1_I_3_1_a),
    PagePrototypeVideo.from_scene(Func_1_1_I_3_1_b),
    PagePrototypeVideo.from_scene(Func_1_1_I_3_1_c),
    PagePrototypeVideo.from_scene(Func_1_1_I_3_2_q),
    PagePrototypeQuestion.from_scene(Func_1_1_I_3_2_q),
    PagePrototypeVideo.from_scene(Func_1_1_I_3_2_a),
    PagePrototypeVideo.from_scene(Func_1_1_I_3_2_b),
    PagePrototypeVideo.from_scene(Func_1_1_I_3_2_c),
    PagePrototypeVideo.from_scene(Func_1_1_I_3_2_d),
    PagePrototypeVideo.from_scene(Func_1_1_I_3_3),
#
    PagePrototypeVideo.from_scene(Func_1_1_I_4_1_q),
    PagePrototypeQuestion.from_scene(Func_1_1_I_4_1_q),
    PagePrototypeVideo.from_scene(Func_1_1_I_4_1_a),
    PagePrototypeVideo.from_scene(Func_1_1_I_4_1_b),
    PagePrototypeVideo.from_scene(Func_1_1_I_4_1_c),
    PagePrototypeVideo.from_scene(Func_1_1_P_1_q),
    PagePrototypeQuestion.from_scene(Func_1_1_P_1_q),
    PagePrototypeVideo.from_scene(Func_1_1_P_1_a),
    PagePrototypeVideo.from_scene(Func_1_1_P_1_b),
    PagePrototypeVideo.from_scene(Func_1_1_P_1_c),
    PagePrototypeVideo.from_scene(Func_1_1_P_2_q),
    PagePrototypeQuestion.from_scene(Func_1_1_P_2_q),
    PagePrototypeVideo.from_scene(Func_1_1_P_2_a),
    PagePrototypeVideo.from_scene(Func_1_1_P_2_b),
    PagePrototypeVideo.from_scene(Func_1_1_P_2_c),
    PagePrototypeVideo.from_scene(Func_1_1_P_3_q),
    PagePrototypeQuestion.from_scene(Func_1_1_P_3_q),
    PagePrototypeVideo.from_scene(Func_1_1_P_3_a),
    PagePrototypeVideo.from_scene(Func_1_1_P_3_b),
    PagePrototypeVideo.from_scene(Func_1_1_P_3_c),
    PagePrototypeVideo.from_scene(Func_1_1_I_4_2),
#
    PagePrototypeVideo.from_scene(Func_1_1_P_4_q),
    PagePrototypeQuestion.from_scene(Func_1_1_P_4_q),
    PagePrototypeVideo.from_scene(Func_1_1_P_4_a),
    PagePrototypeVideo.from_scene(Func_1_1_P_4_b),
    PagePrototypeVideo.from_scene(Func_1_1_P_4_c),
    PagePrototypeVideo.from_scene(Func_1_1_P_5_q),
    PagePrototypeQuestion.from_scene(Func_1_1_P_5_q),
    PagePrototypeVideo.from_scene(Func_1_1_P_5_a),
    PagePrototypeVideo.from_scene(Func_1_1_P_5_b),
    PagePrototypeVideo.from_scene(Func_1_1_P_5_c),
    PagePrototypeVideo.from_scene(Func_1_1_P_6_q),
    PagePrototypeQuestion.from_scene(Func_1_1_P_6_q),
    PagePrototypeVideo.from_scene(Func_1_1_P_6_a),
    PagePrototypeVideo.from_scene(Func_1_1_P_6_b),
    PagePrototypeVideo.from_scene(Func_1_1_P_6_c),
    PagePrototypeVideo.from_scene(Func_1_1_P_7_q),
    PagePrototypeQuestion.from_scene(Func_1_1_P_7_q),
    PagePrototypeVideo.from_scene(Func_1_1_P_7_a),
    PagePrototypeVideo.from_scene(Func_1_1_P_7_b),
    PagePrototypeVideo.from_scene(Func_1_1_P_7_c),
    PagePrototypeVideo.from_scene(Func_1_1_P_8_q),
    PagePrototypeQuestion.from_scene(Func_1_1_P_8_q),
    PagePrototypeVideo.from_scene(Func_1_1_P_8_a),
    PagePrototypeVideo.from_scene(Func_1_1_P_8_b),
    PagePrototypeVideo.from_scene(Func_1_1_P_8_c)
]











# class Test(SophiaCursorScene):

#     def task_definition(self) -> SophiaTaskDefinition:
#         return SophiaTaskDefinition(
#             answerOptions = [self.translate("Func_1_1.1I41q.question-greenline"), self.translate("Func_1_1.1I41q.question-blueline"), self.translate("Func_1_1.1I41q.question-pinkline")],
#             correctAnswerIndex = 1,
#             questionText = self.translate("Func_1_1.1I41q.question-text") 
#         )

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         # Create the coordinate system
#         cords = self.add_cords([0,4,1], [0, 16, 4], x_ticks=[1,2,3,4], y_ticks=[4,8,12,16]).shift(DOWN*.8)
#         plane = cords[0]

#         xvals = [str(i+1) for i in range(4)]
#         y_1 = [3,9,2,6]
#         y_2 = [1,12,11,3]
#         y_3 = [8,4,6,12]
#         yvals = [str(y) for y in y_3]

#         xlabel = "x"
#         ylabel = "y"

#         # Add title to the scene
        

#         t = Table([[str(val) for val in xvals], [str(val) for val in yvals]],
#                     color=BLACK, line_config={"color":BLACK}, element_to_mobject_config={"color":BLACK},
#                     row_labels=[Text(xlabel, color=BLACK, font_size = fs1), Text(ylabel, color=BLACK, font_size = fs1)])
#         t = t.scale(3.3/t.get_width()).next_to(plane, DOWN, buff=0.6)

#         rows = t.get_columns()
#         t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines(), rows[0], rows[1])

#         cords_blue = [[idx+1, y_1[idx]] for idx in range(4)]
#         cords_green = [[idx+1, y_2[idx]] for idx in range(4)]
#         cords_pink = [[idx+1, y_3[idx]] for idx in range(4)]

#         circs_blue = VGroup(*[Dot(plane.c2p(*cords_blue[i]), color=BLUE) for i in range(4)])
#         circs_green = VGroup(*[Dot(plane.c2p(*cords_green[i]), color=GREEN) for i in range(4)])
#         circs_pink = VGroup(*[Dot(plane.c2p(*cords_pink[i]), color=PINK) for i in range(4)])

#         pic_1 = VGroup(circs_blue, circs_green, circs_pink, t, cords)
#         self.add(pic_1)
#         self.wait(3)
#         self.remove(pic_1)

# #########################################################################################################
#         cords = self.add_cords([0,4,1], [0, 10, 4], x_ticks=[1,2,3,4], y_ticks=[2,4,6,8]).shift(UP*0.8)
#         plane = cords[0]

#         xvals = [str(i+1) for i in range(4)]
#         y_1 = [3,9,2,6]
#         y_2 = [1,5,9,3]
#         y_3 = [8,4,6,9]
#         yvals_1 = [str(y) for y in y_1]
#         yvals_2 = [str(y) for y in y_2]
#         yvals_3 = [str(y) for y in y_3]
#         yvals = [yvals_1, yvals_2, yvals_3]

#         xlabel = "x"
#         ylabel = "y"

#         # Add title to the scene

#         tables = VGroup(*[Table([[str(val) for val in xvals], [str(val) for val in yval_current]],
#                     color=BLACK, line_config={"color":BLACK}, element_to_mobject_config={"color":BLACK},
#                     row_labels=[Text(xlabel, color=BLACK, font_size = fs1), Text(ylabel, color=BLACK, font_size = fs1)])
#                     for yval_current in yvals]).arrange(DOWN, buff=.4)
#         tables = tables.scale(3.3/tables.get_width()).next_to(plane, DOWN, buff=0.8)

#         coords = [[idx+1, y_1[idx]] for idx in range(4)]
#         circs = VGroup(*[Dot(plane.c2p(*coords[i]), color=ORANGE) for i in range(4)])

#         pic_2 = VGroup(cords, circs, tables)
#         self.add(pic_2)
#         self.wait(3)
#         self.remove(pic_2)

# #########################################################################################################
# ###### Wertetabelle erstellen - Pt1
#         cords = self.add_cords([0,4,1], [0, 10, 4], x_ticks=[1,2,3,4], y_ticks=[2,4,6,8]).shift(UP*0.8)
#         plane = cords[0]

#         xvals = [str(i+1) for i in range(4)]
#         y_1 = [2,3,1,7]

#         yvals_1 = [str(y) for y in y_1]

#         yvals = [yvals_1]

#         xlabel = "x"
#         ylabel = "y"

#         # Add title to the scene

#         tables = VGroup(*[Table([[str(val) for val in xvals], [str(val) for val in yval_current]],
#                     color=BLACK, line_config={"color":BLACK}, element_to_mobject_config={"color":BLACK},
#                     row_labels=[Text(xlabel, color=BLACK, font_size = fs1), Text(ylabel, color=BLACK, font_size = fs1)])
#                     for yval_current in yvals]).arrange(DOWN, buff=.4)
#         tables = tables.scale(3.3/tables.get_width()).next_to(plane, DOWN, buff=0.8)

#         coords = [[idx+1, y_1[idx]] for idx in range(4)]
#         circs = VGroup(*[Dot(plane.c2p(*coords[i]), color=BLUE) for i in range(4)])

#         pic_2 = VGroup(cords, circs, tables)
#         self.add(pic_2)
#         self.wait(3)
#         self.remove(pic_2)

# #########################################################################################################
# ###### Wertetabelle erstellen - Pt2
#         cords = self.add_cords([0,4,1], [0, 10, 4], x_ticks=[1,2,3,4], y_ticks=[2,4,6,8]).shift(UP*0.8)
#         plane = cords[0]

#         xvals = [str(i+1) for i in range(4)]
#         y_1 = [9,3,4,3]

#         yvals_1 = [str(y) for y in y_1]

#         yvals = [yvals_1]

#         xlabel = "x"
#         ylabel = "y"

#         # Add title to the scene

#         tables = VGroup(*[Table([[str(val) for val in xvals], [str(val) for val in yval_current]],
#                     color=BLACK, line_config={"color":BLACK}, element_to_mobject_config={"color":BLACK},
#                     row_labels=[Text(xlabel, color=BLACK, font_size = fs1), Text(ylabel, color=BLACK, font_size = fs1)])
#                     for yval_current in yvals]).arrange(DOWN, buff=.4)
#         tables = tables.scale(3.3/tables.get_width()).next_to(plane, DOWN, buff=0.8)

#         coords = [[idx+1, y_1[idx]] for idx in range(4)]
#         circs = VGroup(*[Dot(plane.c2p(*coords[i]), color=PINK) for i in range(4)])

#         pic_2 = VGroup(cords, circs, tables)
#         self.add(pic_2)
#         self.wait(3)
#         self.remove(pic_2)

# #########################################################################################################
#         cords = self.add_cords([-2,2,1], [-6, 6, 3], x_ticks=[], y_ticks=[])
#         plane = cords[0]

#         f_1 = Circle(radius=0.4, color=RED).move_to(plane.c2p(0,0))
#         f_2 = plane.plot(lambda x: 2*x+1, color=ORANGE)
#         f_3 = Line(plane.c2p(1,0), plane.c2p(1,10), color=PURE_BLUE)

#         pic_3 = VGroup(cords, f_1, f_2, f_3)
#         self.add(pic_3)
#         self.wait(3)
#         self.remove(pic_3)

# #########################################################################################################
#         cords = self.add_cords([0,4,1], [0, 10, 4], x_ticks=[], y_ticks=[])
#         plane = cords[0]

#         f_1 = Circle(radius=0.4, color=RED).move_to(plane.c2p(0,0))
#         f_2 = plane.plot(lambda x: 2*x+1, color=ORANGE)
#         f_3 = Line(plane.c2p(1,0), plane.c2p(1,10), color=PURE_BLUE)

#         pic_3 = VGroup(cords, f_1, f_2, f_3)
#         self.add(pic_3)
#         self.wait(3)
#         self.remove(pic_3)

# #########################################################################################################
#         cords = self.add_cords([0,4,1], [0, 10, 4], x_ticks=[], y_ticks=[])
#         plane = cords[0]

#         f_1 = plane.plot(lambda x: abs(x-3), color=PURE_BLUE)
#         f_2 = plane.plot(lambda x: 2*x+1, color=ORANGE)
#         f_3 = plane.plot(lambda x: 2, color=GREEN)

#         pic_4 = VGroup(cords, f_1, f_2, f_3)
#         self.add(pic_4)
#         self.wait(3)
#         self.remove(pic_4)

