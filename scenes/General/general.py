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

class Review_Intro(SophiaCursorScene):

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
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        self.add_title("Review Section")

        with self.voiceover(
                text="""
                Well Hello there! Welcome to the review section of the App.
                This is how it works: Go to the "focus section", and choose a topic you want to learn about.
                Once you've learned about one or more topics there, you can come back here and review
                what you have learned. This way, you can make sure that you will remember what you have learned. 
                """
        ) as tracker:

            self.wait()
        self.wait()




class TestSquareDrawing(SophiaCursorScene):

# Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()



        Squares = [Square(side_length=0.2, color=RED, fill_color=RED, fill_opacity=1).shift([0.1,-3.5+0.4*idx,0]) for idx in range(40)]
        for square_idx in range(39):
            square = Squares[square_idx+1]
            prevSquare = Squares[square_idx].copy()
            self.add(prevSquare)
            cursor = Circle(radius=0.1, fill_color=RED, fill_opacity=1, color=RED).move_to(square).shift([-0.2,-0.2,0])
            self.play(ReplacementTransform(prevSquare, cursor), run_time=0.5)
            self.play(ReplacementTransform(cursor, square), run_time=0.5)
            

        self.wait(10)


class drawQmark(SophiaCursorScene):

# Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_orientation()

        
        cursor=AltCursor()
        def draw_decorative_line(cursor, downshift = 0, run_time=2):

            sq = lambda : Square(side_length=0.2, color=RED, fill_color=RED, fill_opacity=1, stroke_width=0)
            c = lambda : Circle(radius=0.1, fill_color=RED, fill_opacity=1, color=RED, stroke_width=0).shift([-0.1,-0.3,0])

            decoration1 = VGroup(*[sq().shift([-2.1+0.4*idx,0.1,0]) for idx in range(12)]).shift(DOWN*downshift)
            decoration2 = VGroup(*[sq().shift([-1.9+0.4*idx,-0.1,0]) for idx in range(12)]).shift(DOWN*downshift)
            decoration = VGroup(*decoration1, *decoration2)

            self.play(cursor.animate.move_to(decoration1[0]), run_time=0.2*run_time)

            circ = c().move_to(decoration1[0])
            self.add(circ)
            cursor.move_to(decoration2[-1])
            for idx in range(12):
                self.play(ReplacementTransform(circ, decoration1[idx]), run_time=0.1*run_time)
                self.play(ReplacementTransform(c().move_to(decoration1[idx]), decoration2[idx]), run_time=0.1*run_time)
                circ = c().move_to(decoration2[idx])

            cursor.move_to(decoration1[-1])

            return decoration

        draw_decorative_line(cursor)
        self.wait(10)


class SquareToCircle(Scene):
    def construct(self):
        circle = Circle()  # create a circle
        circle.set_fill(RED, opacity=0.5)  # set color and transparency

        square = Square()  # create a square
        square.rotate(PI / 4)  # rotate a certain amount
        square_2 = square.copy()

        triangle = Triangle()
        triangle.rotate(-PI / 4).set_fill(BLUE, opacity=0.5)


        self.play(Create(square))  # animate the creation of the square
        self.play(Transform(square, circle))  # interpolate the square into the circle
        self.play(Transform(square, triangle))  # interpolate the square into the triangle
        self.play(Transform(square, square_2))  # interpolate the square into the circle
        self.play(FadeOut(square))  # fade out animation
        

class SineCurveUnitCircle(SophiaCursorScene):
    # contributed by heejin_park, https://infograph.tistory.com/230
    def construct(self):
        super().construct()
        self.add_mathgrid()
        self.show_axis()
        self.show_circle()
        self.move_dot_and_draw_curve()
        self.wait()

    def show_axis(self):
        x_start = np.array([-6,0,0])
        x_end = np.array([2,0,0])

        y_start = np.array([-4,-2,0])
        y_end = np.array([-4,2,0])

        x_axis = Line(x_start, x_end, color=BLACK)
        y_axis = Line(y_start, y_end, color=BLACK)

        self.add(x_axis, y_axis)
        self.add_x_labels()

        self.origin_point = np.array([-4,0,0])
        self.curve_start = np.array([-3,0,0])

    def add_x_labels(self):
        x_labels = [
            MathTex("\pi", color=BLACK), MathTex("2 \pi", color=BLACK)
        ]

        for i in range(len(x_labels)):
            x_labels[i].next_to(np.array([-1 + 2*i, 0, 0]), DOWN)
            self.add(x_labels[i])

    def show_circle(self):
        circle = Circle(radius=1)
        circle.move_to(self.origin_point)
        self.add(circle)
        self.circle = circle

    def move_dot_and_draw_curve(self):
        orbit = self.circle
        origin_point = self.origin_point

        dot = Dot(radius=0.08, color=PURPLE)
        dot.move_to(orbit.point_from_proportion(0))
        self.t_offset = 0
        rate = 0.25
        going_forward = True

        def go_around_circle(mob, dt):
            nonlocal going_forward  # Declare the flag as nonlocal
            if going_forward:
                self.t_offset += (dt * rate)
            else:
                self.t_offset -= (dt * rate)
                
            if self.t_offset >= 1:  # Stop and reverse after one revolution
                going_forward = False
            elif self.t_offset <= 0:  # Stop and go forward after reaching the start
                going_forward = True

            mob.move_to(orbit.point_from_proportion(self.t_offset % 1))

        def get_line_to_circle():
            return Line(origin_point, dot.get_center(), color=BLUE)

        def get_line_to_curve():
            x = self.curve_start[0] + self.t_offset * 4
            y = dot.get_center()[1]
            return Line(dot.get_center(), np.array([x,y,0]), color=PURPLE, stroke_width=2 )


        self.curve = VGroup()
        self.curve.add(Line(self.curve_start,self.curve_start))
        def get_curve():
            nonlocal going_forward  # Declare the flag as nonlocal
            last_line = self.curve[-1]

            if going_forward:
                x = self.curve_start[0] + self.t_offset * 4
                y = dot.get_center()[1]
                new_line = Line(last_line.get_end(), np.array([x, y, 0]), color=PURPLE_B)
                self.curve.add(new_line)
            else:
                if len(self.curve) > 1:  # Ensure we don't remove the first line
                    self.curve.remove(self.curve[-1])  # Remove the last line

            return self.curve
        dot.add_updater(go_around_circle)

        origin_to_circle_line = always_redraw(get_line_to_circle)
        dot_to_curve_line = always_redraw(get_line_to_curve)
        sine_curve_line = always_redraw(get_curve)

        self.add(dot)
        self.add(orbit, origin_to_circle_line, dot_to_curve_line, sine_curve_line)
        self.wait(8.5)

        dot.remove_updater(go_around_circle)