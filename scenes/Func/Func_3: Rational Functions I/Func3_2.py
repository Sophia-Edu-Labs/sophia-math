# 3_2: Fractional Rational Functions: Asymptotes

# Import necessary libraries and modules
from abc import ABCMeta, abstractmethod
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



#####################################
#####################################
class Func_3_2_I_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["$x$ very large positive","$\\Rightarrow f(x)$ approaches x-axis from above"], ["$x$ very large negative","$\\Rightarrow f(x)$ approaches x-axis from below"], "$\\Rightarrow$ $x$ Axis is a \"horizontal Asymptote\""], buff=0.28)
        self.add(note)

        title = self.add_title("Asymptotes")

        cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]
        x_ax = plane.x_axis.copy().set_color(RED)
        y_ax = plane.y_axis.copy().set_color(RED)

        func = lambda x: 1/x
        plotted_right = plane.plot(func, color=BLUE, x_range=[0.25, 8, 0.01], use_smoothing=False)
        plotted_left = plane.plot(func, color=BLUE, x_range=[-8, -0.25, 0.01], use_smoothing=False).reverse_points()

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        f = MathTex("f(x)=\\tfrac{1}{x}", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)


        # Action Sequence
        with self.voiceover(
                text="""
                Ok now, I have a new concept for you. Asymptotes.
                
                Again, our favorite function <bookmark mark="f"/> f of x equals one over x.
                
                <bookmark mark="pos"/>
                When analyzing this function, we can see that for large positive values of x, the function values are very small but positive.
                They get closer and closer to zero, but never reach zero.
                
                <bookmark mark="neg"/>
                For large negative values of x, the function values are very small but negative. Again, as the values of x get more and more negative,
                the function values get closer and closer to zero from below, but never reach zero.
                
                If you look at the graph, it looks like it is <bookmark mark="hug"/>hugging the x-axis.
                
                But we're doing Mathematics here, so we need to find a complicated sounding word to describe this.
                
                So, we say that the <bookmark mark="note"/>"x"-axis is an Asymptote of the function f of x.
                
                To be precise, the "x"-axis is a horizontal Asymptote of our function f.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(f), Write(cords), Write(plotted_left), Write(plotted_right), Write(cursor))

            self.wait_until_bookmark("pos")
            note.change_colors([0])
            x,y,_ = plane.c2p(8,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=5)
            cursor.blinking=True

            self.wait_until_bookmark("neg")
            note.change_colors([0,1])
            x,y,_ = plane.c2p(-8,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, xo, yo), run_time=0.5)
            self.play(CursorMoveTo(cursor, x, y), run_time=5)
            cursor.blinking=True

            self.wait_until_bookmark("hug")
            cursor.blinking=False
            self.play(CursorMarkAxis(cursor, plane), run_time=0.8)

            self.wait_until_bookmark("note")
            note.change_colors([1,2])

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
# TASK_Func_3_2_I_2_q = SophiaTaskDefinition(
#     answerOptions=["The orange line", "The green Line", "The purple line"],
#     correctAnswerIndex=0,
#     questionText="Which of the lines describes the horizontal asymptote of the function?",
# )
# class Func_3_2_I_2_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         note = Notepad(texts=[["$x$ very large positive","$\\Rightarrow f(x)$ approaches x-axis from above"], ["$x$ very large negative","$\\Rightarrow f(x)$ approaches x-axis from below"], "$\\Rightarrow$ $x$ Axis is a \"horizontal Asymptote\""], buff=0.28)
#         self.add(note)

#         title = self.add_title("Asymptotes")

#         cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
#         plane = cords[0]
#         x_ax = plane.x_axis.copy().set_color(RED)
#         y_ax = plane.y_axis.copy().set_color(RED)

#         func = lambda x: 1/x+2
#         plotted_right = plane.plot(func, color=BLUE, x_range=[0.5, 8, 0.01], use_smoothing=False)
#         plotted_left = plane.plot(func, color=BLUE, x_range=[-8, -1/6, 0.01], use_smoothing=False).reverse_points()

#         xo, yo, _ = plane.x_axis.n2p(0)
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
#         cursor.add_updater(lambda m: self.bring_to_front(cursor))

#         LineOrange = Line(plane.c2p(-8,0), plane.c2p(8,0), color=ORANGE)
#         LineGreen = Line(plane.c2p(-8,2), plane.c2p(8,2), color=GREEN)
#         LinePurple = Line(plane.c2p(0,-4), plane.c2p(0,4), color=PURPLE)


#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Here's a question for you and to be fair, you cannot really know this, but try to make a guess: <bookmark mark="cords"/>
#                 
#                 Look at the <bookmark mark="f"/> function that is shown on this graph.
#                 
#                 Which of the following three lines describes the horizontal Asymptote of this function?
#                 
#                 <bookmark mark="OrangeLine"/>
#                 Is it the orange line?
#                 
#                 <bookmark mark="GreenLine"/>
#                 Is it the green line?
#                 
#                 <bookmark mark="PurpleLine"/>
#                 Or is it the purple line?
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("cords")
#             self.play(Write(cords), Write(cursor))

#             self.wait_until_bookmark("f")
#             self.play(Write(plotted_left), Write(plotted_right))

#             self.wait_until_bookmark("OrangeLine")
#             self.play(Write(LineOrange))

#             self.wait_until_bookmark("GreenLine")
#             self.play(Write(LineGreen))

#             self.wait_until_bookmark("PurpleLine")
#             self.play(Write(LinePurple))
                    
#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)


#####################################
#####################################
TASK_Func_3_2_I_2_q = SophiaTaskDefinition(
    answerOptions=["The orange line", "The green Line", "The purple line"],
    correctAnswerIndex=1,
    questionText="Which of the lines describes the horizontal asymptote of the function?",
)
class Func_3_2_I_2_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["$x$ very large positive","$\\Rightarrow f(x)$ approaches x-axis from above"], ["$x$ very large negative","$\\Rightarrow f(x)$ approaches x-axis from below"], "$\\Rightarrow$ $x$ Axis is a \"horizontal Asymptote\""], buff=0.28)
        self.add(note)

        title = self.add_title("Asymptotes")

        cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]
        x_ax = plane.x_axis.copy().set_color(RED)
        y_ax = plane.y_axis.copy().set_color(RED)

        func = lambda x: 1/x+2
        plotted_right = plane.plot(func, color=BLUE, x_range=[0.5, 8, 0.01], use_smoothing=False)
        plotted_left = plane.plot(func, color=BLUE, x_range=[-8, -1/6, 0.01], use_smoothing=False).reverse_points()

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        LineOrange = Line(plane.c2p(-8,0), plane.c2p(8,0), color=ORANGE)
        LineGreen = Line(plane.c2p(-8,2), plane.c2p(8,2), color=GREEN)
        LinePurple = Line(plane.c2p(0,-4), plane.c2p(0,4), color=PURPLE)


        # Action Sequence
        with self.voiceover(
                text="""
                Here's a question for you and to be fair, you can't really know this, but try to make a guess: <bookmark mark="cords"/>
                
                Look at the <bookmark mark="f"/> function that is shown on this graph.
                
                Which of the following three lines describes the horizontal Asymptote of this function?
                
                <bookmark mark="OrangeLine"/>
                Is it the orange line?
                
                <bookmark mark="GreenLine"/>
                Is it the green line?
                
                <bookmark mark="PurpleLine"/>
                Or is it the purple line?
                """
        ) as tracker:
            
            self.wait_until_bookmark("cords")
            self.play(Write(cords), Write(cursor))

            self.wait_until_bookmark("f")
            self.play(Write(plotted_left), Write(plotted_right))

            self.wait_until_bookmark("OrangeLine")
            self.play(Write(LineOrange))

            self.wait_until_bookmark("GreenLine")
            self.play(Write(LineGreen))

            self.wait_until_bookmark("PurpleLine")
            self.play(Write(LinePurple))
                    
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_2_I_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["Orange Line crosses function","$\\Rightarrow$ not an asymptote"], ["Purple Line is vertical","$\\Rightarrow$ not a horizontal asymptote"], "$\\Rightarrow$ Green Line is the horizontal Asymptote"], buff=0.28)
        self.add(note)

        title = self.add_title("Asymptotes")

        cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]
        x_ax = plane.x_axis.copy().set_color(RED)
        y_ax = plane.y_axis.copy().set_color(RED)

        func = lambda x: 1/x+2
        plotted_right = plane.plot(func, color=BLUE, x_range=[0.5, 8, 0.01], use_smoothing=False)
        plotted_left = plane.plot(func, color=BLUE, x_range=[-8, -1/6, 0.01], use_smoothing=False).reverse_points()

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        LineOrange = Line(plane.c2p(-8,0), plane.c2p(8,0), color=ORANGE)
        LineGreen = Line(plane.c2p(-8,2), plane.c2p(8,2), color=GREEN)
        LinePurple = Line(plane.c2p(0,-4), plane.c2p(0,4), color=PURPLE)


        # Action Sequence
        with self.voiceover(
                text="""
                Mhm, that's not right. I admit, it was a bit tricky, so no worries!
                <bookmark mark="cords"/>
                
                So now, why is it indeed the green line that describes the vertical asymptote?
                When we look at the <bookmark mark="f"/>function, we can see that there are two lines that
                the function "hugs", so there are two lines that the function gets really close to, but never reaches:
                One is <bookmark mark="GreenLine"/>the green line,
                and the other one is <bookmark mark="PurpleLine"/>the purple line.
                
                That's also <bookmark mark="note1"/>the reason it can't be the<bookmark mark="OrangeLine"/> orange line: Because the function
                crosses that line.
                
                So now we know, that it has to be <bookmark mark="noOrange"/> either the green line or the purple line
                that describes the horizontal asymptote.
                
                But how do we know which one it is? Easy: <bookmark mark="note2"/>The purple line is a vertical line, and the green line is a horizontal line.
                Since we're looking for a horizontal asymptote, it <bookmark mark="solution"/> has to be the green line.
                """
        ) as tracker:
            
            self.wait_until_bookmark("cords")
            self.play(Write(cords), Write(cursor))

            self.wait_until_bookmark("f")
            self.play(Write(plotted_left), Write(plotted_right))

            self.wait_until_bookmark("GreenLine")
            self.play(Write(LineGreen))

            self.wait_until_bookmark("PurpleLine")
            self.play(Write(LinePurple))

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("OrangeLine")
            self.play(Write(LineOrange))

            self.wait_until_bookmark("noOrange")
            self.play(FadeOut(LineOrange))

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("solution")
            note.change_colors([1,2])
            self.play(FadeOut(LinePurple), LineGreen.animate.set_stroke_width(10), run_time=1)
            self.play(FadeOut(LinePurple), LineGreen.animate.set_stroke_width(4), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

        
        

class Func_3_2_I_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["Orange Line crosses function","$\\Rightarrow$ not an asymptote"], ["Purple Line is vertical","$\\Rightarrow$ not a horizontal asymptote"], "$\\Rightarrow$ Green Line is the horizontal Asymptote"], buff=0.28)
        self.add(note)

        title = self.add_title("Asymptotes")

        cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]
        x_ax = plane.x_axis.copy().set_color(RED)
        y_ax = plane.y_axis.copy().set_color(RED)

        func = lambda x: 1/x+2
        plotted_right = plane.plot(func, color=BLUE, x_range=[0.5, 8, 0.01], use_smoothing=False)
        plotted_left = plane.plot(func, color=BLUE, x_range=[-8, -1/6, 0.01], use_smoothing=False).reverse_points()

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        LineOrange = Line(plane.c2p(-8,0), plane.c2p(8,0), color=ORANGE)
        LineGreen = Line(plane.c2p(-8,2), plane.c2p(8,2), color=GREEN)
        LinePurple = Line(plane.c2p(0,-4), plane.c2p(0,4), color=PURPLE)


        # Action Sequence
        with self.voiceover(
                text="""
                Wow, that's correct. I admit, it was a bit tricky, so great job for getting it right!
                <bookmark mark="cords"/>
                
                So now, why is it indeed the green line that describes the vertical asymptote?
                When we look at the <bookmark mark="f"/>function, we can see that there are two lines that
                the function "hugs", so there are two lines that the function gets really close to, but never reaches:
                One is <bookmark mark="GreenLine"/>the green line,
                and the other one is <bookmark mark="PurpleLine"/>the purple line.
                
                That's also <bookmark mark="note1"/>the reason it can't be the<bookmark mark="OrangeLine"/> orange line: Because the function
                crosses that line.
                
                So now we know, that it has to be <bookmark mark="noOrange"/> either the green line or the purple line
                that describes the horizontal asymptote.
                
                But how do we know which one it is? Easy: <bookmark mark="note2"/>The purple line is a vertical line, and the green line is a horizontal line.
                Since we're looking for a horizontal asymptote, it <bookmark mark="solution"/> has to be the green line.
                """
        ) as tracker:
            
            self.wait_until_bookmark("cords")
            self.play(Write(cords), Write(cursor))

            self.wait_until_bookmark("f")
            self.play(Write(plotted_left), Write(plotted_right))

            self.wait_until_bookmark("GreenLine")
            self.play(Write(LineGreen))

            self.wait_until_bookmark("PurpleLine")
            self.play(Write(LinePurple))

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("OrangeLine")
            self.play(Write(LineOrange))

            self.wait_until_bookmark("noOrange")
            self.play(FadeOut(LineOrange))

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("solution")
            note.change_colors([1,2])
            self.play(FadeOut(LinePurple), LineGreen.animate.set_stroke_width(10), run_time=1)
            self.play(FadeOut(LinePurple), LineGreen.animate.set_stroke_width(4), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_2_I_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["Orange Line crosses function","$\\Rightarrow$ not an asymptote"], ["Purple Line is vertical","$\\Rightarrow$ not a horizontal asymptote"], "$\\Rightarrow$ Green Line is the horizontal Asymptote"], buff=0.28)
        self.add(note)

        title = self.add_title("Asymptotes")

        cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]
        x_ax = plane.x_axis.copy().set_color(RED)
        y_ax = plane.y_axis.copy().set_color(RED)

        func = lambda x: 1/x+2
        plotted_right = plane.plot(func, color=BLUE, x_range=[0.5, 8, 0.01], use_smoothing=False)
        plotted_left = plane.plot(func, color=BLUE, x_range=[-8, -1/6, 0.01], use_smoothing=False).reverse_points()

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        LineOrange = Line(plane.c2p(-8,0), plane.c2p(8,0), color=ORANGE)
        LineGreen = Line(plane.c2p(-8,2), plane.c2p(8,2), color=GREEN)
        LinePurple = Line(plane.c2p(0,-4), plane.c2p(0,4), color=PURPLE)


        # Action Sequence
        with self.voiceover(
                text="""
                Mhm, that's not right. I admit, it was a bit tricky, so no worries!
                <bookmark mark="cords"/>
                
                So now, why is it indeed the green line that describes the vertical asymptote?
                When we look at the <bookmark mark="f"/>function, we can see that there are two lines that
                the function "hugs", so there are two lines that the function gets really close to, but never reaches:
                One is <bookmark mark="GreenLine"/>the green line,
                and the other one is <bookmark mark="PurpleLine"/>the purple line.
                
                That's also <bookmark mark="note1"/>the reason it can't be the<bookmark mark="OrangeLine"/> orange line: Because the function
                crosses that line.
                
                So now we know, that it has to be <bookmark mark="noOrange"/> either the green line or the purple line
                that describes the horizontal asymptote.
                
                But how do we know which one it is? Easy: <bookmark mark="note2"/>The purple line is a vertical line, and the green line is a horizontal line.
                Since we're looking for a horizontal asymptote, it <bookmark mark="solution"/> has to be the green line.
                """
        ) as tracker:
            
            self.wait_until_bookmark("cords")
            self.play(Write(cords), Write(cursor))

            self.wait_until_bookmark("f")
            self.play(Write(plotted_left), Write(plotted_right))

            self.wait_until_bookmark("GreenLine")
            self.play(Write(LineGreen))

            self.wait_until_bookmark("PurpleLine")
            self.play(Write(LinePurple))

            self.wait_until_bookmark("note1")
            note.change_colors([0])

            self.wait_until_bookmark("OrangeLine")
            self.play(Write(LineOrange))

            self.wait_until_bookmark("noOrange")
            self.play(FadeOut(LineOrange))

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("solution")
            note.change_colors([1,2])
            self.play(FadeOut(LinePurple), LineGreen.animate.set_stroke_width(10), run_time=1)
            self.play(FadeOut(LinePurple), LineGreen.animate.set_stroke_width(4), run_time=1)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
class Func_3_2_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["Asymptote of a function f:","A line that the function gets","arbitrarily close to,","but never reaches"]], buff=0.28)
        self.add(note)

        title = self.add_title("Asymptotes")

        cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        plane = cords[0]
        x_ax = plane.x_axis.copy().set_color(RED)
        y_ax = plane.y_axis.copy().set_color(RED)

        func = lambda x: 1/x+2
        plotted_right = plane.plot(func, color=BLUE, x_range=[0.5, 8, 0.01], use_smoothing=False)
        plotted_left = plane.plot(func, color=BLUE, x_range=[-8, -1/6, 0.01], use_smoothing=False).reverse_points()

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        LineGreen = Line(plane.c2p(-8,2), plane.c2p(8,2), color=GREEN)
        LinePurple = Line(plane.c2p(0,-4), plane.c2p(0,4), color=PURPLE)


        # Action Sequence
        with self.voiceover(
                text="""
                Ok, now let's define what an asymptote actually is. Listen up:
                
                An asymptote of <bookmark mark="cords"/>a function f, is a line that the function gets arbitrarily close to, but never reaches.
                
                We are considering two types of asymptotes: <bookmark mark="horizontal"/> Horizontal asymptotes, and<bookmark mark="vertical"/> vertical asymptotes.
                
                A horizontal asymptote is simply an asymptote that is parallel to <bookmark mark="x"/>the x-axis, so a horizontal line that
                the function gets arbitrarily close to, but never reaches.
                
                <bookmark mark="cursorReset"/>
                In this example, the green line is a horizontal asymptote.
                
                A vertical asymptote on the other hand, is an asymptote that is parallel to <bookmark mark="y"/>the y-axis, so a vertical line that
                the function gets arbitrarily close to, but never reaches. <bookmark mark="fin"/>
                
                In this example, the purple line is a vertical asymptote.
                """
        ) as tracker:
            
            self.wait_until_bookmark("cords")
            self.play(Write(cords), Write(cursor), Write(plotted_left), Write(plotted_right))

            self.wait_until_bookmark("horizontal")
            self.play(Write(LineGreen))

            self.wait_until_bookmark("vertical")
            self.play(Write(LinePurple))

            self.wait_until_bookmark("x")
            cursor.blinking=False
            self.play(CursorMarkAxis(cursor, plane))

            self.wait_until_bookmark("cursorReset")
            self.play(CursorMoveResize(cursor, xo, yo, 0.2, 0.2))
            cursor.blinking=True

            self.wait_until_bookmark("y")
            cursor.blinking=False
            self.play(CursorMarkAxis(cursor, plane, axis='y'))

            self.wait_until_bookmark("fin")
            self.play(CursorMoveResize(cursor, xo, yo, 0.2, 0.2))
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

class horizontalAsymptoteQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["Consider the function shown here", "Is the green line a horizontal asymptote?", "Is the purple line a horizontal asymptote?"], buff=0.28)
        self.add(note)

        title = self.add_title("Asymptotes")

        cords = self.cords
        plane = cords[0]
        xmin, xmax, _ = plane.get_x_range()

        plots = VGroup(*[plane.plot(self.funcs[i], color=BLUE, x_range=self.funcRanges[i], use_smoothing=False) for i in range(len(self.funcs))])

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        LineGreen = Line(plane.c2p(xmin,self.yGreen), plane.c2p(xmax,self.yGreen), color=GREEN)
        LinePurple = Line(plane.c2p(xmin,self.yPurple), plane.c2p(xmax,self.yPurple), color=PURPLE)

        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.introText}
                <bookmark mark="note1"/>Consider the function <bookmark mark="cords"/> f that belongs to the graph,
                which is <bookmark mark="f"/>shown here.
                
                <bookmark mark="note2"/>Is the <bookmark mark="green"/>green line a horizontal asymptote of the function?
                
                <bookmark mark="note3"/>And what about the purple line, is the <bookmark mark="purple"/>purple line a horizontal asymptote of the function?
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("cords")
            self.play(Write(cords), Write(cursor))

            self.wait_until_bookmark("f")
            self.play(Write(plots))

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("green")
            self.play(Write(LineGreen))

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

            self.wait_until_bookmark("purple")
            self.play(Write(LinePurple))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class horizontalAsymptoteAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["Asymptote of a function f:","A line that the function gets","arbitrarily close to,","but never reaches"]], buff=0.28)
        self.add(note)

        title = self.add_title("Asymptotes")

        cords = self.cords
        plane = cords[0]
        xmin, xmax, _ = plane.get_x_range()

        plots = VGroup(*[plane.plot(self.funcs[i], color=BLUE, x_range=self.funcRanges[i], use_smoothing=False) for i in range(len(self.funcs))])

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        LineGreen = Line(plane.c2p(xmin,self.yGreen), plane.c2p(xmax,self.yGreen), color=GREEN)
        LinePurple = Line(plane.c2p(xmin,self.yPurple), plane.c2p(xmax,self.yPurple), color=PURPLE)



        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.introText}
                An asymptote of a function f, is a line that the function gets arbitrarily close to, but never reaches.
                
                This means the <bookmark mark="green"/>green line is {self.greenText}
                
                It also implies that the <bookmark mark="purple"/>purple line {self.purpleText}
                """
        ) as tracker:
            
            self.play(Write(cords), Write(cursor), Write(plots))

            self.wait_until_bookmark("green")
            self.play(Write(LineGreen))

            self.wait_until_bookmark("purple")
            self.play(Write(LinePurple))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
class verticalAsymptoteQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=["Consider the function shown here", "Is the green line a vertical asymptote?", "Is the purple line a vertical asymptote?"], buff=0.28)
        self.add(note)

        title = self.add_title("Asymptotes")

        cords = self.cords
        plane = cords[0]
        ymin, ymax, _ = plane.get_y_range()

        plots = VGroup(*[plane.plot(self.funcs[i], color=BLUE, x_range=self.funcRanges[i], use_smoothing=False) for i in range(len(self.funcs))])

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        LineGreen = Line(plane.c2p(self.xGreen, ymin), plane.c2p(self.xGreen, ymax), color=GREEN)
        LinePurple = Line(plane.c2p(self.xPurple, ymin), plane.c2p(self.xPurple, ymax), color=PURPLE)

        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.introText}
                <bookmark mark="note1"/>Consider the function <bookmark mark="cords"/> f that belongs to the graph,
                which is <bookmark mark="f"/>shown here.
                
                <bookmark mark="note2"/>Is the <bookmark mark="green"/>green line a vertical asymptote of the function?
                
                <bookmark mark="note3"/>And what about the purple line, is the <bookmark mark="purple"/>purple line a vertical asymptote of the function?
                """
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            note.change_colors([0])
            
            self.wait_until_bookmark("cords")
            self.play(Write(cords), Write(cursor))

            self.wait_until_bookmark("f")
            self.play(Write(plots))

            self.wait_until_bookmark("note2")
            note.change_colors([0,1])

            self.wait_until_bookmark("green")
            self.play(Write(LineGreen))

            self.wait_until_bookmark("note3")
            note.change_colors([1,2])

            self.wait_until_bookmark("purple")
            self.play(Write(LinePurple))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class verticalAsymptoteAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        note = Notepad(texts=[["Asymptote of a function f:","A line that the function gets","arbitrarily close to,","but never reaches"]], buff=0.28)
        self.add(note)

        title = self.add_title("Asymptotes")

        cords = self.cords
        plane = cords[0]
        ymin, ymax, _ = plane.get_y_range()

        plots = VGroup(*[plane.plot(self.funcs[i], color=BLUE, x_range=self.funcRanges[i], use_smoothing=False) for i in range(len(self.funcs))])

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        LineGreen = Line(plane.c2p(self.xGreen, ymin), plane.c2p(self.xGreen, ymax), color=GREEN)
        LinePurple = Line(plane.c2p(self.xPurple, ymin), plane.c2p(self.xPurple, ymax), color=PURPLE)



        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.introText}
                An asymptote of a function f, is a line that the function gets arbitrarily close to, but never reaches.
                
                This means the <bookmark mark="green"/>green line is {self.greenText}
                
                It also implies that the <bookmark mark="purple"/>purple line {self.purpleText}
                """
        ) as tracker:
            
            self.play(Write(cords), Write(cursor), Write(plots))

            self.wait_until_bookmark("green")
            self.play(Write(LineGreen))

            self.wait_until_bookmark("purple")
            self.play(Write(LinePurple))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
### Actual Questions ################
#####################################
#####################################

#####################################
#####################################
TASK_Func_3_2_P_1_q = SophiaTaskDefinition(
    answerOptions=["The Purple line", "The green Line", "Both lines", "neither of the lines"],
    correctAnswerIndex=1,
    questionText="Which of the lines describes a horizontal asymptote of the function?",
)
class Func_3_2_P_1_q(horizontalAsymptoteQuestionScene):

    def construct(self):

        self.introText = "Let's practice!"
        self.funcs = [lambda x: 1/x+2, lambda x: 1/x+2]
        self.funcRanges = [[0.5, 8, 0.01], [-8, -1/6, 0.01]]
        self.cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        self.yGreen = 2
        self.yPurple = -2

        super().construct()

class Func_3_2_P_1_a(horizontalAsymptoteAnswerScene):

    def construct(self):

        self.introText = "Nope, not quite right! Remember the definition of an Asymptote:"
        self.funcs = [lambda x: 1/x+2, lambda x: 1/x+2]
        self.funcRanges = [[0.5, 8, 0.01], [-8, -1/6, 0.01]]
        self.cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        self.yGreen = 2
        self.yPurple = -2
        self.greenText = "an asymptote of the function, because the function gets arbitrarily close to it, but never reaches it."
        self.purpleText = "is not an asymptote of the function, because the function crosses it."

        super().construct()

class Func_3_2_P_1_b(horizontalAsymptoteAnswerScene):

    def construct(self):

        self.introText = "Nope, not quite right! Remember the definition of an Asymptote:"
        self.funcs = [lambda x: 1/x+2, lambda x: 1/x+2]
        self.funcRanges = [[0.5, 8, 0.01], [-8, -1/6, 0.01]]
        self.cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        self.yGreen = 2
        self.yPurple = -2
        self.greenText = "an asymptote of the function, because the function gets arbitrarily close to it, but never reaches it."
        self.purpleText = "is not an asymptote of the function, because the function crosses it."

        super().construct()

class Func_3_2_P_1_c(horizontalAsymptoteAnswerScene):

    def construct(self):

        self.introText = "Yep, you got it! Remember the definition of an Asymptote:"
        self.funcs = [lambda x: 1/x+2, lambda x: 1/x+2]
        self.funcRanges = [[0.5, 8, 0.01], [-8, -1/6, 0.01]]
        self.cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        self.yGreen = 2
        self.yPurple = -2
        self.greenText = "an asymptote of the function, because the function gets arbitrarily close to it, but never reaches it."
        self.purpleText = "is not an asymptote of the function, because the function crosses it."

        super().construct()

class Func_3_2_P_1_d(horizontalAsymptoteAnswerScene):

    def construct(self):

        self.introText = "Nope, not quite right! Remember the definition of an Asymptote:"
        self.funcs = [lambda x: 1/x+2, lambda x: 1/x+2]
        self.funcRanges = [[0.5, 8, 0.01], [-8, -1/6, 0.01]]
        self.cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        self.yGreen = 2
        self.yPurple = -2
        self.greenText = "an asymptote of the function, because the function gets arbitrarily close to it, but never reaches it."
        self.purpleText = "is not an asymptote of the function, because the function crosses it."

        super().construct()

#####################################
#####################################
TASK_Func_3_2_P_2_q = SophiaTaskDefinition(
    answerOptions=["The purple line", "The green Line", "Both lines", "neither of the lines"],
    correctAnswerIndex=0,
    questionText="Which of the lines describes a horizontal asymptote of the function?",
)
class Func_3_2_P_2_q(verticalAsymptoteQuestionScene):

    def construct(self):

        self.introText = "Let's look at vertical asymptotes now."
        self.funcs = [lambda x: 1/x+2, lambda x: 1/x+2]
        self.funcRanges = [[0.5, 8, 0.01], [-8, -1/6, 0.01]]
        self.cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        self.xGreen = 2
        self.xPurple = 0

        super().construct()

class Func_3_2_P_2_a(verticalAsymptoteAnswerScene):

    def construct(self):

        self.introText = "Yep, that is correct! Excellent! Remember the definition of an Asymptote:"
        self.funcs = [lambda x: 1/x+2, lambda x: 1/x+2]
        self.funcRanges = [[0.5, 8, 0.01], [-8, -1/6, 0.01]]
        self.cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        self.xGreen = 0
        self.xPurple = -2
        self.greenText = "an asymptote of the function, because the function gets arbitrarily close to it, but never reaches it."
        self.purpleText = "is not an asymptote of the function, because the function crosses it."


        super().construct()

class Func_3_2_P_2_b(verticalAsymptoteAnswerScene):

    def construct(self):

        self.introText = "Nope, not quite right! Remember the definition of an Asymptote:"
        self.funcs = [lambda x: 1/x+2, lambda x: 1/x+2]
        self.funcRanges = [[0.5, 8, 0.01], [-8, -1/6, 0.01]]
        self.cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        self.xGreen = 0
        self.xPurple = -2
        self.greenText = "an asymptote of the function, because the function gets arbitrarily close to it, but never reaches it."
        self.purpleText = "is not an asymptote of the function, because the function crosses it."

        super().construct()

class Func_3_2_P_2_c(verticalAsymptoteAnswerScene):

    def construct(self):

        self.introText = "Nope, not quite right! Remember the definition of an Asymptote:"
        self.funcs = [lambda x: 1/x+2, lambda x: 1/x+2]
        self.funcRanges = [[0.5, 8, 0.01], [-8, -1/6, 0.01]]
        self.cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        self.xGreen = 0
        self.xPurple = -2
        self.greenText = "an asymptote of the function, because the function gets arbitrarily close to it, but never reaches it."
        self.purpleText = "is not an asymptote of the function, because the function crosses it."

        super().construct()

class Func_3_2_P_2_d(verticalAsymptoteAnswerScene):

    def construct(self):

        self.introText = "Nope, not quite right! Remember the definition of an Asymptote:"
        self.funcs = [lambda x: 1/x+2, lambda x: 1/x+2]
        self.funcRanges = [[0.5, 8, 0.01], [-8, -1/6, 0.01]]
        self.cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        self.xGreen = 0
        self.xPurple = -2
        self.greenText = "an asymptote of the function, because the function gets arbitrarily close to it, but never reaches it."
        self.purpleText = "is not an asymptote of the function, because the function crosses it."

        super().construct()


#####################################
#####################################

TASK_Func_3_2_P_3_q = SophiaTaskDefinition(
    answerOptions=["The purple line", "The green Line", "Both lines", "neither of the lines"],
    correctAnswerIndex=2,
    questionText="Which of the lines describes a horizontal asymptote of the function?",
)
class Func_3_2_P_3_q(verticalAsymptoteQuestionScene):

    def construct(self):

        self.introText = "Let's look at vertical asymptotes once more."
        self.funcs = 3*[lambda x: 1/((x-1)*(x+1))+1]
        self.funcRanges = [[-8, -1.1547, 0.01], [-0.89442, 0.89442, 0.01], [1.1547, 8, 0.01]]
        self.cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        self.xGreen = 1
        self.xPurple = -1

        super().construct()

class Func_3_2_P_3_a(verticalAsymptoteAnswerScene):

    def construct(self):

        self.introText = "That's not correct. Remember: We defined asymptotes like this:"
        self.funcs = 3*[lambda x: 1/((x-1)*(x+1))+1]
        self.funcRanges = [[-8, -1.1547, 0.01], [-0.89442, 0.89442, 0.01], [1.1547, 8, 0.01]]
        self.cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        self.xGreen = 1
        self.xPurple = -1
        self.greenText = "an asymptote of the function, because the function gets arbitrarily close to it, but never reaches it."
        self.purpleText = "is also an asymptote of the function, again because the function gets arbitrarily close to it, but never reaches it."

        super().construct()

class Func_3_2_P_3_b(verticalAsymptoteAnswerScene):

    def construct(self):

        self.introText = "That's not correct. Remember: We defined asymptotes like this:"
        self.funcs = 3*[lambda x: 1/((x-1)*(x+1))+1]
        self.funcRanges = [[-8, -1.1547, 0.01], [-0.89442, 0.89442, 0.01], [1.1547, 8, 0.01]]
        self.cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        self.xGreen = 1
        self.xPurple = -1
        self.greenText = "an asymptote of the function, because the function gets arbitrarily close to it, but never reaches it."
        self.purpleText = "is also an asymptote of the function, again because the function gets arbitrarily close to it, but never reaches it."

        super().construct()

class Func_3_2_P_3_c(verticalAsymptoteAnswerScene):

    def construct(self):

        self.introText = "Yep, that is correct! Excellent! Remember the definition of an Asymptote:"
        self.funcs = 3*[lambda x: 1/((x-1)*(x+1))+1]
        self.funcRanges = [[-8, -1.1547, 0.01], [-0.89442, 0.89442, 0.01], [1.1547, 8, 0.01]]
        self.cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        self.xGreen = 1
        self.xPurple = -1
        self.greenText = "an asymptote of the function, because the function gets arbitrarily close to it, but never reaches it."
        self.purpleText = "is also an asymptote of the function, again because the function gets arbitrarily close to it, but never reaches it."


        super().construct()

class Func_3_2_P_3_d(verticalAsymptoteAnswerScene):

    def construct(self):

        self.introText = "That's not correct. Remember: We defined asymptotes like this:"
        self.funcs = 3*[lambda x: 1/((x-1)*(x+1))+1]
        self.funcRanges = [[-8, -1.1547, 0.01], [-0.89442, 0.89442, 0.01], [1.1547, 8, 0.01]]
        self.cords = self.add_cords([-8,8, 2], [-4, 4, 1], x_ticks=[4*i-8 for i in range(5)],y_ticks=[2*i-4 for i in range(5)])
        self.xGreen = 1
        self.xPurple = -1
        self.greenText = "an asymptote of the function, because the function gets arbitrarily close to it, but never reaches it."
        self.purpleText = "is also an asymptote of the function, again because the function gets arbitrarily close to it, but never reaches it."

        super().construct()


PROTOTYPES = [
    PagePrototypeVideo.from_scene(Func_3_2_I_1),
    PagePrototypeVideo.from_scene(Func_3_2_I_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_3_2_I_2_q, Func_3_2_I_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_3_2_I_2_a),
    PagePrototypeVideo.from_scene(Func_3_2_I_2_b),
    PagePrototypeVideo.from_scene(Func_3_2_I_2_c),
    PagePrototypeVideo.from_scene(Func_3_2_I_3),
    PagePrototypeVideo.from_scene(Func_3_2_P_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_3_2_P_1_q, Func_3_2_P_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_3_2_P_1_a),
    PagePrototypeVideo.from_scene(Func_3_2_P_1_b),
    PagePrototypeVideo.from_scene(Func_3_2_P_1_c),
    PagePrototypeVideo.from_scene(Func_3_2_P_1_d),
    PagePrototypeVideo.from_scene(Func_3_2_P_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_3_2_P_2_q, Func_3_2_P_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_3_2_P_2_a),
    PagePrototypeVideo.from_scene(Func_3_2_P_2_b),
    PagePrototypeVideo.from_scene(Func_3_2_P_2_c),
    PagePrototypeVideo.from_scene(Func_3_2_P_2_d),
    PagePrototypeVideo.from_scene(Func_3_2_P_3_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_3_2_P_3_q, Func_3_2_P_3_q.__name__),
    PagePrototypeVideo.from_scene(Func_3_2_P_3_a),
    PagePrototypeVideo.from_scene(Func_3_2_P_3_b),
    PagePrototypeVideo.from_scene(Func_3_2_P_3_c),
    PagePrototypeVideo.from_scene(Func_3_2_P_3_d),
]