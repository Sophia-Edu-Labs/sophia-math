# Import necessary libraries and modules
from abc import ABCMeta, abstractmethod
from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
from sophialib.styles.sophiascene import (CursorMoveToCurved, CursorPositionTracker,
                                          CursorPositionTracking,
                                          CursorResizeDefault, SophiaScene,
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
import ast


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

###########################################
###########################################
# Topic: Repetition - What is a Term?
class Func_1_2_I_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        apple = ImageMobject(assets_folder / "img" / "apple.png").scale(0.4).shift(UP*1.2+LEFT*1.2)

        # Add title to the scene
        self.add_title(self.translate("Func_1_2.1I1q.main.title"))

        term1 = MathTex("2x+3", color=c1t).shift(UP*1.5)
        term2 = MathTex("x^2-2", color=c1t).next_to(term1, DOWN)
        term3 = MathTex("x+3=7", color=c1t).next_to(term2, DOWN)
        left, right = term3.get_left()[0], term3.get_right()[0]
        top, bottom = term3.get_top()[1], term3.get_bottom()[1]
        strikeA = Line([left, bottom, 0], [right, top, 0], color=RED, stroke_width=5)
        strikeB = Line([left, top, 0], [right, bottom, 0], color=RED, stroke_width=5)
        appleCost = Tex(self.translate("Func_1_2.1I1q.main.apple-cost"), color=c1t, font_size=fs2).next_to(apple, RIGHT).shift(DOWN*0.3+LEFT*0.4)

        explainers = format_text_group(ast.literal_eval(self.translate("Func_1_2.1I1q.main.explainers")), font_size=fs3)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_2.1I1q.main.voiceover")
        ) as tracker:

            self.wait_until_bookmark("term1")
            self.play(Write(term1), run_time=1)

            self.wait_until_bookmark("term2")
            self.play(Write(term2), run_time=1)

            self.wait_until_bookmark("term3")
            self.play(Write(term3), run_time=1)
            self.wait(0.5)
            self.play(Write(strikeA), Write(strikeB), run_time=1)

            self.wait_until_bookmark("unwriteTerms")
            self.play(Unwrite(term1), Unwrite(term2), Unwrite(term3), Unwrite(strikeA), Unwrite(strikeB), run_time=1)
            
            self.wait_until_bookmark("apple")
            self.play(FadeIn(apple), run_time=1)
            self.play(Write(appleCost), run_time=1)

            self.wait_until_bookmark("appleCost")
            self.play(FadeIn(explainers), run_time=1)


        # Wait for 4 seconds at the end of animation
        self.wait(4)

###########################################
###########################################
class Func_1_2_I_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        self.add_title(self.translate("Func_1_2.1I2.main.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                               x_labels=[-3, 0, 3], y_labels=[-6, 0, 6]).shift(DOWN)
        plane = cords[0]
        redx = plane.x_axis.copy().set_color(RED).set_stroke(width=4)
        self.add(cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, idle=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True

        self.add(cursor)

        func = MathTex("2x-2", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.8)
        func2 = MathTex("f(x)=2x-2", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.8)
        def f(x):
            return 2*x-2
        f_plotted = plane.plot(f, color=c3)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_2.1I2.main.voiceover")
        ) as tracker:

            self.wait_until_bookmark("term")
            self.play(Write(func), run_time=1)

            self.wait_until_bookmark("xaxis")
            self.play(Write(redx), run_time=3)

            self.wait_until_bookmark("plot")
            cursor.idle = False
            x, y, _ = cursor.get_center()
            self.play(CursorMoveResize(cursor, x, y, 0.15, 0.15), run_time=0.5)
            for x in [-3, -2, -1, 0, 1, 2, 3]:
                self.play(cursor.animate.move_to(plane.c2p(x, f(x))), run_time=0.5)
                self.add(cursor.copy().set_opacity(0.5).set_color(c3))
                self.wait(0.5)
            self.play(CursorMoveResize(cursor, xo, yo, 0.2, 0.2), run_time=0.5)

            self.wait_until_bookmark("func")
            self.add_pencil_sound(3)
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

        # Add title to the scene
        self.add_title(self.translate("Func_1_2.1I2q.main.title"))

        # Create the coordinate system
        plane = self.cords[0]
        self.add(self.cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, idle=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex(self.term, color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        fs_plotted = [plane.plot(self.fs[0], color=c3), plane.plot(self.fs[1], color=c4), plane.plot(self.fs[2], color=c5)]
        self.add(func)

        # Action Sequence
        with self.voiceover(
                text=self.eva(self.translate("Func_1_2.1I2.func-term-q-scene.voiceover"))
        ) as tracker:

            self.wait_until_bookmark("term")
            x,y,_ = func.get_center()
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x, y, func.get_width()+0.2, func.get_height()+0.2), run_time=0.5)

            self.wait_until_bookmark("blue")
            self.add_pencil_sound(2)
            self.play(Write(fs_plotted[0]), CursorMoveResize(cursor, xo, yo, 0.2, 0.2),  run_time=2)
            cursor.idle=True

            self.wait_until_bookmark("orange")
            self.add_pencil_sound(2)
            self.play(Write(fs_plotted[1]), run_time=2)

            self.wait_until_bookmark("lila")
            self.add_pencil_sound(2)
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

        # Add title to the scene
        self.add_title(self.translate("Func_1_2.1I2a.main.title"))

        # Create the coordinate system
        self.cords.shift(DOWN)
        plane = self.cords[0]
        self.add(self.cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, idle=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex(self.term, color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        fs_plotted = [plane.plot(self.fs[0], color=c3), plane.plot(self.fs[1], color=c4), plane.plot(self.fs[2], color=c5)]
        self.add(func)


        self.plugInTexts = ""
        for i in range(len(self.vals)):
            self.i = i
            if i < 2:
                self.plugInTexts += self.evaluate_string(self.translate("Func_1_2.1I2a.main.plug-in-texts-1"))
            elif i < len(self.vals) - 1:
                self.plugInTexts += self.evaluate_string(self.translate("Func_1_2.1I2a.main.plug-in-texts-2"))
            else:
                self.plugInTexts += self.evaluate_string(self.translate("Func_1_2.1I2a.main.plug-in-texts-3"))

        self.introText = ""
        if self.idx_selected == self.idx_correct:
            self.introText = self.translate("Func_1_2.1I2a.main.intro-text-correct")
        else:
            self.introText = self.translate("Func_1_2.1I2a.main.intro-text-incorrect")

        # Action Sequence
        with self.voiceover(
                text= self.evaluate_string(self.translate("Func_1_2.1I2a.func-term-answer.voiceover"))
        ) as tracker:
            
            print(self.evaluate_string(self.translate("Func_1_2.1I2a.func-term-answer.voiceover")))

            self.wait_until_bookmark("show_term")
            x,y,_ = func.get_center()
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x, y, func.get_width()+0.2, func.get_height()+0.2), run_time=0.5)

            self.wait_until_bookmark("addPoints")
            cursor.idle = False
            for i in range(len(self.vals)):
                self.wait_until_bookmark(f"val{i+1}")
                x,y,_ = plane.c2p(self.vals[i], self.fs[self.idx_correct](self.vals[i]))
                self.play(CursorMoveResize(cursor,x,y,0.2,0.2), run_time=1)
                self.add(cursor.copy().set_color(c3))

            self.wait_until_bookmark("connect")
            self.add_pencil_sound(2)
            self.play(Write(fs_plotted[self.idx_correct]), run_time=2)

        # Wait for 4 seconds at the end of animation
        self.wait(4)


############################################
############################################
##### Instruction Part #####################
############################################
############################################

###########################################
###########################################
class Func_1_2_I_2_1_q(FuncTermQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = self.translate("Func_1_2.1I21q.answer-options"),
            correctAnswerIndex = 1,
            questionText = self.translate("Func_1_2.1I2_1q.question.which-graph-belongs") 
        )

    def construct(self):
        self.term = "f(x)=-x"
        self.termInWords = self.translate("Func_1_2.1I2_1q.main.term-in-words")
        self.cords = self.add_cords([-2, 2, 1], [-6, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 10])
        def f1(x):
            return x/2 - 2
        def f2(x):
            return -x
        def f3(x):
            return 3
        self.fs = [f1, f2, f3]
        self.idx_correct = 1
        super().construct()

class Func_1_2_I_2_1_a(FuncTermAnswerScene):

    def construct(self):
        self.term = "f(x)=-x"
        self.termInWords = self.translate("Func_1_2.1I2_1q.main.term-in-words")
        self.cords = self.add_cords([-2, 2, 1], [-6, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 10])
        def f1(x):
            return x/2 - 2
        def f2(x):
            return -x
        def f3(x):
            return 3
        self.fs = [f1, f2, f3]
        self.idx_correct = 1
        self.idx_selected = 0
        self.vals = [-2,-1,0,1,2]
        super().construct()

class Func_1_2_I_2_1_b(FuncTermAnswerScene):

    def construct(self):
        self.term = "f(x)=-x"
        self.termInWords = self.translate("Func_1_2.1I2_1q.main.term-in-words")
        self.cords = self.add_cords([-2, 2, 1], [-6, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 10],
                        x_labels=[-2, 0, 2], y_labels=[-6, 0, 10])
        def f1(x):
            return x/2 - 2
        def f2(x):
            return -x
        def f3(x):
            return 3
        self.fs = [f1, f2, f3]
        self.idx_correct = 1
        self.idx_selected = 1
        self.vals = [-2,-1,0,1,2]
        super().construct()

class Func_1_2_I_2_1_c(FuncTermAnswerScene):

    def construct(self):
        self.term = "f(x)=-x"
        self.termInWords = self.translate("Func_1_2.1I2_1q.main.term-in-words")
        self.cords = self.add_cords([-2, 2, 1], [-6, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 10])
        def f1(x):
            return x/2 - 2
        def f2(x):
            return -x
        def f3(x):
            return 3
        self.fs = [f1, f2, f3]
        self.idx_correct = 1
        self.idx_selected = 2
        self.vals = [-2,-1,0,1,2]
        super().construct()


# Class for creating the animation scene
# Topic: How do we get from a Term to a Function?
class Func_1_2_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):

        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        self.add_title(self.translate("Func_1_2.1I3.main.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6]).shift(DOWN)
        plane = cords[0]
        redx = plane.x_axis.copy().set_color(RED).set_stroke(width=4)
        self.add(cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, idle=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True

        self.add(cursor)

        func = MathTex("f(x)=x^2-3", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        def f(x):
            return x**2-3
        f_plotted = plane.plot(f, color=c3)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_2.1I3.main.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("term")
            self.wait(1)
            self.play(Write(func), run_time=2)

            self.wait_until_bookmark("show_term")
            x,y,_ = func.get_center()
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x, y, func.get_width()+0.2, func.get_height()+0.2), run_time=0.5)

            self.wait_until_bookmark("graph")
            self.wait(1)
            self.play(CursorMoveResize(cursor,xo,yo,0.2,0.2), Write(f_plotted), run_time=4)
            cursor.ide=True

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

        # Add title to the scene
        self.add_title(self.translate("Func_1_2.1I4.main.title"))

        # Create the coordinate system
        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6],
                               x_labels=[-3, 0, 3], y_labels=[-6, 0, 6]).shift(DOWN)
        plane = cords[0]
        redx = plane.x_axis.copy().set_color(RED).set_stroke(width=4)
        y_min, y_max = plane.y_axis.n2p(-3)[1], plane.y_axis.n2p(6)[1]
        redy = Line([0, y_min, 0], [0, y_max, 0]).set_color(RED).set_stroke(width=4)
        self.add(cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, idle=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True

        self.add(cursor)

        func = MathTex("f(x)=x^2-3", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        def f(x):
            return x**2-3
        f_plotted = plane.plot(f, color=c3)

        domain = Tex(self.translate("Func_1_2.1I4.main.domain"), color=c3t, font_size=fs3, tex_environment="flushleft").next_to(func, DOWN, buff=.6)
        range = Tex(self.translate("Func_1_2.1I4.main.range"), color=c3t, font_size=fs3, tex_environment="flushleft").next_to(func, DOWN, buff=.6)
        range.shift(LEFT*(range.get_left()-domain.get_left()))
        self.add(func, f_plotted)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_1_2.1I4.main.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("domain_in")
            self.play(Write(domain), run_time=1)
            
            self.wait_until_bookmark("show_def")
            self.play(Write(redx), run_time=2)

            self.wait_until_bookmark("range_in")
            self.play(Transform(domain, range), run_time=.5)

            self.wait_until_bookmark("show_val")
            self.play(Write(redy), run_time=2)


        # Wait for 4 seconds at the end of animation
        self.wait(4)





############################################
############################################
##### Exercises ############################
############################################
############################################
class Func_1_2_P_1_1_q(FuncTermQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = self.translate("Func_1_2.1I21q.answer-options"),
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_2.1I2_1q.question.which-graph-belongs") 
        )

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

class Func_1_2_P_1_2_q(FuncTermQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = self.translate("Func_1_2.1I21q.answer-options"),
            correctAnswerIndex = 1,
            questionText = self.translate("Func_1_2.1I2_1q.question.which-graph-belongs") 
        )

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
class Func_1_2_P_1_3_q(FuncTermQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = self.translate("Func_1_2.1I21q.answer-options"),
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_2.1I2_1q.question.which-graph-belongs") 
        )

    def construct(self):
        self.term = "f(x)=2x^2 + 1"
        self.termInWords = self.translate("Func_1_2.P13.term-in-words")
        self.cords = self.add_cords([-2, 2, 1], [-6, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-6, 0, 10])
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
        self.termInWords = self.translate("Func_1_2.P13.term-in-words")
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
        self.termInWords = self.translate("Func_1_2.P13.term-in-words")
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
        self.termInWords = self.translate("Func_1_2.P13.term-in-words")
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
class Func_1_2_P_1_4_q(FuncTermQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = self.translate("Func_1_2.1I21q.answer-options"),
            correctAnswerIndex = 2,
            questionText = self.translate("Func_1_2.1I2_1q.question.which-graph-belongs") 
        )

    def construct(self):
        self.term = "f(x)=3x^2 - x"
        self.termInWords = self.translate("Func_1_2.P14.term-in-words")
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
        self.termInWords = self.translate("Func_1_2.P14.term-in-words")
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
        self.termInWords = self.translate("Func_1_2.P14.term-in-words")
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
        self.termInWords = self.translate("Func_1_2.P14.term-in-words")
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


        # Add title to the scene
        self.add_title(self.translate("Func_1_2.func-def-q-scene"))

        # Create the coordinate system
        self.cords.shift(DOWN*0.4)
        plane = self.cords[0]
        self.add(self.cords)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, idle=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex(self.funcTex, color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        f_plotted = plane.plot(self.f, color=c3)
        self.add(func)



        domain = Tex(self.translate("Func_1_2.func-def-q.domain"), color=c3t, font_size=fs3).next_to(func, DOWN, buff=.6)
        range = Tex(self.translate("Func_1_2.func-def-q-range"), color=c3t, font_size=fs3).next_to(domain, DOWN, buff=.2)

        # Action Sequence
        with self.voiceover(
            text=self.evaluate_string(self.translate("Func_1_2.func-def-q-scene-voiceover"))
        ) as tracker:

            self.wait_until_bookmark("Func")
            self.add_pencil_sound(2)
            self.play(Write(f_plotted), run_time=2)

            self.wait_until_bookmark("domain")
            self.play(Write(domain), run_time=.5)

            self.wait_until_bookmark("range")
            self.play(Write(range), run_time=.5)

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


        self.add_title(self.translate("Func_1_2.func-def.title"))

        # Create the coordinate system
        plane = self.cords[0]
        self.add(self.cords)

        redx = plane.x_axis.copy().set_color(RED).set_stroke(width=4)
        y_min, y_max = plane.y_axis.n2p(self.range[0])[1], plane.y_axis.n2p(self.range[1])[1]
        redy = Line([0, y_min, 0], [0, y_max, 0]).set_color(RED).set_stroke(width=4)

        # Initialize a cursor
        xo, yo, _ = plane.c2p(0, 0)
        cursor = AltCursor(stroke_width=0.0, idle=True).move_to([xo, yo, 0])
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex(self.funcTex, color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.5)
        f_plotted = plane.plot(self.f, color=c3)
        self.add(func, f_plotted)
        domain = VGroup(Tex(self.translate("Func_1_2.func-def.domain"), color=c3t, font_size=fs3), Tex(f"$\\rightarrow[{self.domain[0]},{self.domain[1]}]$.", color=c3t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=RIGHT)
        range = VGroup(Tex(self.translate("Func_1_2.func-def.range"), color=c3t, font_size=fs3), Tex(f"$\\rightarrow[{self.range[0]},{self.range[1]}]$.", color=c3t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=RIGHT)
        dr = VGroup(domain, range).arrange(DOWN, buff=.6, aligned_edge=RIGHT).next_to(func, DOWN, buff=.6)

        intro = self.translate("Func_1_2.func-def.intro-incorrect")
        if self.isTrue:
            intro = self.translate("Func_1_2.func-def.intro-correct")
        # Action Sequence
        self.intro = intro
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_1_2.func-def.voiceover"))
        ) as tracker:
            
            self.wait_until_bookmark("define_domain")
            self.play(Write(domain[0]), run_time=.5)

            self.wait_until_bookmark("domain")
            self.play(Write(domain[1]), run_time=.5)
            self.play(Write(redx), run_time=2)

            self.wait_until_bookmark("define_range")
            self.play(Write(range[0]), run_time=.5)

            self.wait_until_bookmark("range")
            self.play(Write(range[1]), run_time=.5)
            self.play(Write(redy), run_time=2)

        # Wait for 4 seconds at the end of animation
        self.wait(4)



#################################################
#################################################
class Func_1_2_P_2_1_q(FuncDefinitionsQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = self.translate("Func_1_2.P21.q.answer-options"),
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_2.P21.q.question-text") 
        )

    def construct(self):

        # Setting up the specific function
        self.funcTex = "f(x)=x^2-3"
        self.f = lambda x: x**2-3
        self.funcSpoken = self.translate("Func_1_2.P21.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6])

        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_1_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-3"
        self.f = lambda x: x**2-3
        self.funcSpoken = self.translate("Func_1_2.P21.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6])
        self.isTrue = True
        self.domain = [-3,3]
        self.range = [-3,6]
        super().construct()

class Func_1_2_P_2_1_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-3"
        self.f = lambda x: x**2-3
        self.funcSpoken = self.translate("Func_1_2.P21.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,6]
        super().construct()

class Func_1_2_P_2_1_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-3"
        self.f = lambda x: x**2-3
        self.funcSpoken = self.translate("Func_1_2.P21.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,6]
        super().construct()

class Func_1_2_P_2_1_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-3"
        self.f = lambda x: x**2-3
        self.funcSpoken = self.translate("Func_1_2.P21.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 6])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,6]
        super().construct()



#################################################
#################################################
class Func_1_2_P_2_2_q(FuncDefinitionsQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_1_2.P22.q.answer-options")),
            correctAnswerIndex = 2,
            questionText = self.translate("Func_1_2.P21.q.question-text") 
        )

    def construct(self):
        # Setting up the specific function
        self.funcTex = "f(x)=x^3+2"
        self.f = lambda x: x**3+2
        self.funcSpoken = self.translate("Func_1_2.P22.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-8, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-8, 0, 10])
        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_2_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^3+2"
        self.f = lambda x: x**3+2
        self.funcSpoken = self.translate("Func_1_2.P22.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-8, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-8, 0, 10])
        self.isTrue = False
        self.domain = [-1,9]
        self.range = [-2,2]
        super().construct()

class Func_1_2_P_2_2_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^3+2"
        self.f = lambda x: x**3+2
        self.funcSpoken = self.translate("Func_1_2.P22.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-8, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-8, 0, 10])
        self.isTrue = False
        self.domain = [-1,9]
        self.range = [-2,2]
        super().construct()

class Func_1_2_P_2_2_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^3+2"
        self.f = lambda x: x**3+2
        self.funcSpoken = self.translate("Func_1_2.P22.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-8, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-8, 0, 10])
        self.isTrue = True
        self.domain = [-1,9]
        self.range = [-2,2]
        super().construct()

class Func_1_2_P_2_2_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^3+2"
        self.f = lambda x: x**3+2
        self.funcSpoken = self.translate("Func_1_2.P22.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-8, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-8, 0, 10])
        self.isTrue = False
        self.domain = [-1,9]
        self.range = [-2,2]
        super().construct()

#################################################
#################################################
class Func_1_2_P_2_3_q(FuncDefinitionsQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_1_2.P23.q.answer-options")),
            correctAnswerIndex = 1,
            questionText = self.translate("Func_1_2.P21.q.question-text") 
        )

    def construct(self):
        # Setting up the specific function
        self.funcTex = "f(x)=2x"
        self.f = lambda x: 2*x
        self.funcSpoken = self.translate("Func_1_2.P23.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-4, 4, 1], x_ticks=[-2, 0, 2], y_ticks=[-4, 0, 4])
        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_3_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=2x"
        self.f = lambda x: 2*x
        self.funcSpoken = self.translate("Func_1_2.P23.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-4, 4, 1], x_ticks=[-2, 0, 2], y_ticks=[-4, 0, 4])
        self.isTrue = True  # Set to True for the correct answer
        self.domain = [-2,2]
        self.range = [-4,4]
        super().construct()

class Func_1_2_P_2_3_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=2x"
        self.f = lambda x: 2*x
        self.funcSpoken = self.translate("Func_1_2.P23.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-4, 4, 1], x_ticks=[-2, 0, 2], y_ticks=[-4, 0, 4])
        self.isTrue = False
        self.domain = [-2,2]
        self.range = [-4,4]
        super().construct()

class Func_1_2_P_2_3_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=2x"
        self.f = lambda x: 2*x
        self.funcSpoken = self.translate("Func_1_2.P23.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-4, 4, 1], x_ticks=[-2, 0, 2], y_ticks=[-4, 0, 4])
        self.isTrue = False
        self.domain = [-2,2]
        self.range = [-4,4]
        super().construct()

class Func_1_2_P_2_3_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=2x"
        self.f = lambda x: 2*x
        self.funcSpoken = self.translate("Func_1_2.P23.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-4, 4, 1], x_ticks=[-2, 0, 2], y_ticks=[-4, 0, 4])
        self.isTrue = False
        self.domain = [-2,2]
        self.range = [-4,4]
        super().construct()


#################################################
#################################################
class Func_1_2_P_2_4_q(FuncDefinitionsQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_1_2.P24.q.answer-options")),
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_2.P21.q.question-text") 
        )

    def construct(self):
        # Setting up the specific function
        self.funcTex = "f(x)=4x-5"
        self.f = lambda x: 4*x - 5
        self.funcSpoken = self.translate("Func_1_2.P24.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-12, 12, 4], x_ticks=[-3, 0, 3], y_ticks=[-12, 0, 12])
        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_4_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=4x-5"
        self.f = lambda x: 4*x - 5
        self.funcSpoken = self.translate("Func_1_2.P24.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-12, 12, 4], x_ticks=[-3, 0, 3], y_ticks=[-12, 0, 12])
        self.isTrue = True  # Set to True for the correct answer
        self.domain = [-3,3]
        self.range = [-17,7]
        super().construct()

class Func_1_2_P_2_4_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=4x-5"
        self.f = lambda x: 4*x - 5
        self.funcSpoken = self.translate("Func_1_2.P24.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-12, 12, 4], x_ticks=[-3, 0, 3], y_ticks=[-12, 0, 12])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,3]
        super().construct()

class Func_1_2_P_2_4_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=4x-5"
        self.f = lambda x: 4*x - 5
        self.funcSpoken = self.translate("Func_1_2.P24.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-12, 12, 4], x_ticks=[-3, 0, 3], y_ticks=[-12, 0, 12])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,3]
        super().construct()

class Func_1_2_P_2_4_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=4x-5"
        self.f = lambda x: 4*x - 5
        self.funcSpoken = self.translate("Func_1_2.P24.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-12, 12, 4], x_ticks=[-3, 0, 3], y_ticks=[-12, 0, 12])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,3]
        super().construct()


#################################################
#################################################
class Func_1_2_P_2_5_q(FuncDefinitionsQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_1_2.P25.q.answer-options")),
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_2.P21.q.question-text") 
        )

    def construct(self):
        # Setting up the specific function
        self.funcTex = "f(x)=x^2+x-2"
        self.f = lambda x: x**2 + x - 2
        self.funcSpoken = self.translate("Func_1_2.P25.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 10, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 10])
        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_5_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2+x-2"
        self.f = lambda x: x**2 + x - 2
        self.funcSpoken = self.translate("Func_1_2.P25.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 10, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 10])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-10,10]
        super().construct()

class Func_1_2_P_2_5_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2+x-2"
        self.f = lambda x: x**2 + x - 2
        self.funcSpoken = self.translate("Func_1_2.P25.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 10, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 10])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,10]
        super().construct()

class Func_1_2_P_2_5_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2+x-2"
        self.f = lambda x: x**2 + x - 2
        self.funcSpoken = self.translate("Func_1_2.P25.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 10, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 10])
        self.isTrue = False
        self.domain = [-3,3]
        self.range = [-3,10]
        super().construct()

class Func_1_2_P_2_5_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2+x-2"
        self.f = lambda x: x**2 + x - 2
        self.funcSpoken = self.translate("Func_1_2.P25.q.func-spoken")
        self.cords = self.add_cords([-3, 3, 1], [-6, 10, 2], x_ticks=[-3, 0, 3], y_ticks=[-6, 0, 10])
        self.isTrue = True  # Set to True for the correct answer
        self.domain = [-3,3]
        self.range = [-4,10]
        super().construct()


#################################################
#################################################
class Func_1_2_P_2_6_q(FuncDefinitionsQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_1_2.P26.q.answer-options")),
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_2.P21.q.question-text") 
        )

    def construct(self):
        # Setting up the specific function
        self.funcTex = "f(x)=3x^2-2x+1"
        self.f = lambda x: 3*x**2 - 2*x + 1
        self.funcSpoken = self.translate("Func_1_2.P26.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-2, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-2, 0, 10])
        # Adding initial components to the scene
        super().construct()

class Func_1_2_P_2_6_a(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=3x^2-2x+1"
        self.f = lambda x: 3*x**2 - 2*x + 1
        self.funcSpoken = self.translate("Func_1_2.P26.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-2, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-2, 0, 10])
        self.isTrue = True  # Set to True for the correct answer
        self.domain = [-2,3]
        self.range = [9,17]
        super().construct()

class Func_1_2_P_2_6_b(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=3x^2-2x+1"
        self.f = lambda x: 3*x**2 - 2*x + 1
        self.funcSpoken = self.translate("Func_1_2.P26.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-2, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-2, 0, 10])
        self.isTrue = False
        self.domain = [-2,3]
        self.range = [-1,12]
        super().construct()

class Func_1_2_P_2_6_c(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=3x^2-2x+1"
        self.f = lambda x: 3*x**2 - 2*x + 1
        self.funcSpoken = self.translate("Func_1_2.P26.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-2, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-2, 0, 10])
        self.isTrue = False
        self.domain = [-2,3]
        self.range = [9,17]
        super().construct()

class Func_1_2_P_2_6_d(FuncDefinitionsAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=3x^2-2x+1"
        self.f = lambda x: 3*x**2 - 2*x + 1
        self.funcSpoken = self.translate("Func_1_2.P26.q.func-spoken")
        self.cords = self.add_cords([-2, 2, 1], [-2, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-2, 0, 10])
        self.isTrue = False
        self.domain = [-2,3]
        self.range = [-3,3]
        super().construct()







# Add the scene to prototypes
# PROTOTYPES = [
#     PagePrototypeVideo.from_scene(Func_1_2_I_1),
#     PagePrototypeVideo.from_scene(Func_1_2_I_2),
#     PagePrototypeVideo.from_scene(Func_1_2_I_2_1_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_I_2_1_q, Func_1_2_I_2_1_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_2_I_2_1_a),
#     PagePrototypeVideo.from_scene(Func_1_2_I_2_1_b),
#     PagePrototypeVideo.from_scene(Func_1_2_I_2_1_c),
#     PagePrototypeVideo.from_scene(Func_1_2_I_3),
#     PagePrototypeVideo.from_scene(Func_1_2_I_4),
#     PagePrototypeVideo.from_scene(Func_1_2_P_1_1_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_1_1_q, Func_1_2_P_1_1_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_2_P_1_1_a),
#     PagePrototypeVideo.from_scene(Func_1_2_P_1_1_b),
#     PagePrototypeVideo.from_scene(Func_1_2_P_1_1_c),
#     PagePrototypeVideo.from_scene(Func_1_2_P_1_2_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_1_2_q, Func_1_2_P_1_2_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_2_P_1_2_a),
#     PagePrototypeVideo.from_scene(Func_1_2_P_1_2_b),
#     PagePrototypeVideo.from_scene(Func_1_2_P_1_2_c),
#     PagePrototypeVideo.from_scene(Func_1_2_P_1_3_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_1_3_q, Func_1_2_P_1_3_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_2_P_1_3_a),
#     PagePrototypeVideo.from_scene(Func_1_2_P_1_3_b),
#     PagePrototypeVideo.from_scene(Func_1_2_P_1_3_c),
#     PagePrototypeVideo.from_scene(Func_1_2_P_1_4_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_1_4_q, Func_1_2_P_1_4_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_2_P_1_4_a),
#     PagePrototypeVideo.from_scene(Func_1_2_P_1_4_b),
#     PagePrototypeVideo.from_scene(Func_1_2_P_1_4_c),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_1_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_2_1_q, Func_1_2_P_2_1_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_1_a),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_1_b),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_1_c),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_1_d),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_2_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_2_2_q, Func_1_2_P_2_2_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_2_a),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_2_b),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_2_c),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_2_d),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_3_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_2_3_q, Func_1_2_P_2_3_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_3_a),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_3_b),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_3_c),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_3_d),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_4_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_2_4_q, Func_1_2_P_2_4_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_4_a),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_4_b),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_4_c),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_4_d),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_5_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_2_5_q, Func_1_2_P_2_5_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_5_a),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_5_b),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_5_c),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_5_d),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_6_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_2_P_2_6_q, Func_1_2_P_2_6_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_6_a),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_6_b),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_6_c),
#     PagePrototypeVideo.from_scene(Func_1_2_P_2_6_d),
# ]
