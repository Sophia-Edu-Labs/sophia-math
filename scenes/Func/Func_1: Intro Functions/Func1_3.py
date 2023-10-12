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
import ast

#####################################
#####################################
class Func_1_3_I_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = self.translate("Func_1_3.1I1q.answer-options"),
            correctAnswerIndex = 2,
            questionText = self.translate("Func_1_3.I1q.question.at-which-x") 
        )

    def construct(self):
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, -1, 1, 3], y_ticks=[-6, -3, 3, 6]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        self.add_title(self.translate("Func_1_3.I1q.title"))

        funcBlue = lambda x: 3 - x
        funcRed = lambda x: 2 * x - 2
        graphBlue = plane.plot(funcBlue, color=c3)
        graphRed = plane.plot(funcRed, color=c2)

        with self.voiceover(
            text=self.translate("Func_1_3.I1q.voiceover")
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

        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, -1, 1, 3], y_ticks=[-6, -3, 3, 6]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        self.add_title(self.translate("Func_1_3.I1a.title"))

        funcRed = lambda x: 2 * x - 2
        graphRed = plane.plot(funcRed, color=c2)
        self.add(graphRed)

        b = Bubble(texts = ast.literal_eval(self.translate("Func_1_3.I1a.bubble")), center=np.array([.6,-1.6, 0]), start_point=plane.c2p(1,0)+[.2,-0.2,0], width=2.5, height = 0.8, loc="t2")

        with self.voiceover(
            text=self.translate("Func_1_3.I1a.voiceover")
        ) as tracker:


            self.wait_until_bookmark("axis_x")
            plane.x_axis.set_color(RED)
            self.wait(1)
            plane.x_axis.set_color(c1)

            self.wait_until_bookmark("x1")
            circ = Circle(radius=0.1, color=c2).move_to(plane.x_axis.n2p(1))
            self.play(Write(circ))

            self.wait_until_bookmark("bubble")
            self.add_pencil_sound(1.5)
            self.play(Create(b), Create(b.text))

        self.wait(4)

class Func_1_3_I_1_b(SophiaCursorScene):
    def construct(self):
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, -1, 1, 3], y_ticks=[-6, -3, 3, 6]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        self.add_title(self.translate("Func_1_3.I1a.title"))

        funcRed = lambda x: 2 * x - 2
        graphRed = plane.plot(funcRed, color=c2)
        self.add(graphRed)

        b = Bubble(texts = ast.literal_eval(self.translate("Func_1_3.I1a.bubble")), center=np.array([.6,-1.6, 0]), start_point=plane.c2p(1,0)+[.2,-0.2,0], width=2.5, height = 0.8, loc="t2")

        with self.voiceover(
            text=self.translate("Func_1_3.I1a.voiceover")
        ) as tracker:


            self.wait_until_bookmark("axis_x")
            plane.x_axis.set_color(RED)
            self.wait(1)
            plane.x_axis.set_color(c1)

            self.wait_until_bookmark("x1")
            circ = Circle(radius=0.1, color=c2).move_to(plane.x_axis.n2p(1))
            self.play(Write(circ))

            self.wait_until_bookmark("bubble")
            self.add_pencil_sound(1.5)
            self.play(Create(b), Create(b.text))

        self.wait(4)

class Func_1_3_I_1_c(SophiaCursorScene):
    def construct(self):
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, -1, 1, 3], y_ticks=[-6, -3, 3, 6]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        self.add_title(self.translate("Func_1_3.I1a.title"))

        funcRed = lambda x: 2 * x - 2
        graphRed = plane.plot(funcRed, color=c2)
        self.add(graphRed)

        b = Bubble(texts = ast.literal_eval(self.translate("Func_1_3.I1a.bubble")), center=np.array([.6,-1.6, 0]), start_point=plane.c2p(1,0)+[.2,-0.2,0], width=2.5, height = 0.8, loc="t2")


        with self.voiceover(
            text=self.translate("Func_1_3.I1c.voiceover")
        ) as tracker:


            self.wait_until_bookmark("axis_x")
            plane.x_axis.set_color(RED)
            self.wait(1)
            plane.x_axis.set_color(c1)

            self.wait_until_bookmark("x1")
            circ = Circle(radius=0.1, color=c2).move_to(plane.x_axis.n2p(1))
            self.play(Write(circ))

            self.wait_until_bookmark("bubble")
            self.add_pencil_sound(1.5)
            self.play(Create(b), Create(b.text))

        self.wait(4)

class Func_1_3_I_1_d(SophiaCursorScene):
    def construct(self):
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, -1, 1, 3], y_ticks=[-6, -3, 3, 6]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        self.add_title(self.translate("Func_1_3.I1a.title"))

        funcRed = lambda x: 2 * x - 2
        graphRed = plane.plot(funcRed, color=c2)
        self.add(graphRed)

        b = Bubble(texts = ast.literal_eval(self.translate("Func_1_3.I1a.bubble")), center=np.array([.6,-1.6, 0]), start_point=plane.c2p(1,0)+[.2,-0.2,0], width=2.5, height = 0.8, loc="t2")

        with self.voiceover(
            text=self.translate("Func_1_3.I1a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("axis_x")
            plane.x_axis.set_color(RED)
            self.wait(1)
            plane.x_axis.set_color(c1)

            self.wait_until_bookmark("x1")
            circ = Circle(radius=0.1, color=c2).move_to(plane.x_axis.n2p(1))
            self.play(Write(circ))

            self.wait_until_bookmark("bubble")
            self.add_pencil_sound(1.5)
            self.play(Create(b), Create(b.text))

        self.wait(4)


#####################################
#####################################
class Func_1_3_I_2(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3, -1, 1, 3], y_ticks=[-6, -3, 3, 6]).shift(DOWN)
        plane = cords[0]
        self.add(cords)
        self.add_title(self.translate("Func_1_3.I2.title"))
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
            text=self.translate("Func_1_3.I2.voiceover")
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

        cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2, 2], y_ticks=[-3, -1, 1, 3]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        self.add_title(self.translate("Func_1_3.I3.title"))

        funcBlue = lambda x: x - 1
        funcSquared = lambda x: (x - 1) * (x + 1)
        graphBlue = plane.plot(funcBlue, color=c3)
        graphGreen = plane.plot(funcSquared, color=GREEN)

        term0 = MathTex("f(x) = x - 1", color=c1t, font_size=fs1).next_to(plane, DOWN)
        term1 = MathTex("x - 1 = 0", color=c1t, font_size=fs1).move_to(term0)
        xval = MathTex("\\Rightarrow x = 1", color=c1t, font_size=fs1).next_to(term1, DOWN)
        self.add(graphGreen)

        with self.voiceover(
            text=self.translate("Func_1_3.I3.voiceover")
        ) as tracker:

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

            self.wait_until_bookmark("equal0")
            self.play(TransformMatchingTex(term0, term1))

            self.wait_until_bookmark("findX")
            self.play(Write(xval))

            self.wait_until_bookmark("showZero")
            circ3 = Circle(radius=0.1, color=BLUE).move_to(plane.c2p(1, 0))
            self.play(Write(circ3))

        self.wait(4)


#####################################
#####################################
class Func_1_3_I_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = self.translate("Func_1_3.1I4q.answer-options"),
            correctAnswerIndex = 1,
            questionText = self.translate("Func_1_3.I4q.question.at-which-x") 
        )

    def construct(self):
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_1_3.I4q.title"))

        cursor = AltCursor(stroke_width=0.0, idle=False)

        mic = ImageMobject(assets_folder / "img" / "mic.png").scale(0.8).move_to([-5, 1.6, 0])
        term0 = MathTex("f(x)=x^2-1", color=c1t, font_size=fs1).next_to(mic, DOWN, buff=.6).shift(RIGHT*5)

        with self.voiceover(
            text=self.translate("Func_1_3.I4q.voiceover")
        ) as tracker:
            self.wait_until_bookmark("mic")
            self.add_shift_sound(0.5)
            self.play(mic.animate.shift(RIGHT*5), run_time=0.5)
            
            self.wait_until_bookmark("func")
            self.play(Write(term0))

            self.wait_until_bookmark("q")
            self.draw_qmark(cursor, DOWN*2.4, run_time=3)

        self.wait(4)
    
class Func_1_3_I_4_a(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        self.add_title(self.translate("Func_1_3.I4a.title"))

        funcBlue = lambda x: x**2-1
        graphBlue = plane.plot(funcBlue, color=c3)

        term0 = MathTex("f(x)=x^2-1", color=c1t, font_size=fs2).next_to(cords, DOWN)
        term1 = MathTex("x^2-1=0", color=c1t, font_size=fs2).next_to(cords, DOWN)
        xval = MathTex("x=-1,\\, x=1", color=c1t, font_size=fs2).next_to(term1, DOWN)

        self.add(term0)

        with self.voiceover(
            text=self.translate("Func_1_3.I4a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("eq0")
            self.play(TransformMatchingTex(term0, term1))

            self.wait_until_bookmark("xeq")
            self.play(Write(xval))

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

        cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        self.add_title(self.translate("Func_1_3.I4a.title"))

        funcBlue = lambda x: x**2-1
        graphBlue = plane.plot(funcBlue, color=c3)

        term0 = MathTex("f(x)=x^2-1", color=c1t, font_size=fs2).next_to(cords, DOWN)
        term1 = MathTex("x^2-1=0", color=c1t, font_size=fs2).next_to(cords, DOWN)
        xval = MathTex("x=-1,\\, x=1", color=c1t, font_size=fs2).next_to(term1, DOWN)

        self.add(term0)

        with self.voiceover(
            text=self.translate("Func_1_3.I4b.voiceover")
        ) as tracker:

            self.wait_until_bookmark("eq0")
            self.play(TransformMatchingTex(term0, term1))

            self.wait_until_bookmark("xeq")
            self.play(Write(xval))

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

        cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        self.add_title(self.translate("Func_1_3.I4a.title"))

        funcBlue = lambda x: x**2-1
        graphBlue = plane.plot(funcBlue, color=c3)

        term0 = MathTex("f(x)=x^2-1", color=c1t, font_size=fs2).next_to(cords, DOWN)
        term1 = MathTex("x^2-1=0", color=c1t, font_size=fs2).next_to(cords, DOWN)
        xval = MathTex("x=-1,\\, x=1", color=c1t, font_size=fs2).next_to(term1, DOWN)

        self.add(term0)

        with self.voiceover(
            text=self.translate("Func_1_3.I4a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("eq0")
            self.play(TransformMatchingTex(term0, term1))

            self.wait_until_bookmark("xeq")
            self.play(Write(xval))

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

        cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        self.add_title(self.translate("Func_1_3.I4a.title"))

        funcBlue = lambda x: x**2-1
        graphBlue = plane.plot(funcBlue, color=c3)

        term0 = MathTex("f(x)=x^2-1", color=c1t, font_size=fs2).next_to(cords, DOWN)
        term1 = MathTex("x^2-1=0", color=c1t, font_size=fs2).next_to(cords, DOWN)
        xval = MathTex("x=-1,\\, x=1", color=c1t, font_size=fs2).next_to(term1, DOWN)

        self.add(term0)

        with self.voiceover(
            text=self.translate("Func_1_3.I4a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("eq0")
            self.play(TransformMatchingTex(term0, term1))

            self.wait_until_bookmark("xeq")
            self.play(Write(xval))

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


        cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3]).shift(0.4*DOWN)
        plane = cords[0]
        self.add(cords)

        self.add_title(self.translate("Func_1_3.I5.title"))

        funcBlue = lambda x: x**2-1
        graphBlue = plane.plot(funcBlue, color=c3)
        funcGreen = lambda x: x+2
        graphGreen = plane.plot(funcGreen, color=GREEN)

        instruct = VGroup(Tex(self.translate("Func_1_3.I5.instruct-1"), color=c1t, font_size=fs3, tex_environment="flushright"), Tex(self.translate("Func_1_3.I5.instruct-2"), color=c1t, font_size=fs3, tex_environment="flushright")).arrange(DOWN, buff=.4, aligned_edge=LEFT).next_to(cords, DOWN, buff=.6)

        # "", "b) Read the intersection point graphically."

        termBlue = MathTex("f(x)=x^2-1", color=c1t, font_size=fs2)
        termBlueZero = MathTex("f(0)=0^2-1=-1", color=c1t, font_size=fs2)
        blue_terms = VGroup(termBlue, termBlueZero).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(cords, DOWN, buff=.6)
        termGreen = MathTex("g(x)=x+2", color=c1t, font_size=fs2)
        termGreenZero = MathTex("g(0)=0+2=2", color=c1t, font_size=fs2)
        green_terms = VGroup(termGreen, termGreenZero).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(cords, DOWN, buff=.6)

        with self.voiceover(
            text=self.translate("Func_1_3.I5.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("instruct_1")
            self.play(Write(instruct[0]))

            self.wait_until_bookmark("instruct_2")
            self.play(Write(instruct[1]))

            self.wait_until_bookmark("clear")
            self.play(Unwrite(instruct), run_time=.3)
            self.wait(1)
            self.play(Write(termBlue))

            self.wait_until_bookmark("substitute")
            self.play(Write(termBlueZero))

            self.wait_until_bookmark("blue")
            self.add_pencil_sound(1)
            self.play(Write(graphBlue), run_time=1)

            self.wait_until_bookmark("cross1")
            circ = Circle(radius=0.1, color=BLUE).move_to(plane.c2p(0,-1))
            self.play(Write(circ))

            self.wait_until_bookmark("green1")
            self.play(TransformMatchingTex(termBlue, termGreen), Unwrite(graphBlue), Unwrite(termBlueZero), Unwrite(circ))

            self.wait_until_bookmark("subGreen")
            self.play(Write(termGreenZero))

            self.wait_until_bookmark("green2")
            self.add_pencil_sound(1)
            self.play(Write(graphGreen), run_time=1)

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

        func = MathTex(self.funcTex, color=c1t, font_size=fs1).shift(UP)
        cursor = AltCursor(stroke_width=0.0, idle=False)

        self.add_title(self.translate("Func_1_3.x_crossing_question_scene.title"))

        text = self.evaluate_string(self.translate("Func_1_3.x_crossing_question_scene.voiceover"))
        print(text)

        with self.voiceover(
            text = text
        ) as tracker:
            self.wait_until_bookmark("writeFunc")
            self.play(Write(func))

            self.wait_until_bookmark("zero")
            self.draw_qmark(cursor, DOWN*1.6, run_time=3)
            

        self.wait(4)

class xCrossingAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    @abstractmethod
    def construct(self):
        super().construct()
        self.add_mathgrid()
        func = MathTex(self.funcTex, color=c1t, font_size=fs1)
        setToZero = Tex(self.translate("Func_1_3.x_crossing_answer_scene.setToZero"), color=RED, font_size=fs3)
        func_Zeroed = MathTex(self.funcZero, color=c1t, font_size=fs1)
        solve = Tex(self.translate("Func_1_3.x_crossing_answer_scene.solve"), color=RED, font_size=fs3)
        func_Zeros = MathTex(self.funcZeros, color=c1t, font_size=fs1)
        explanation = VGroup(func, setToZero, func_Zeroed, solve, func_Zeros).arrange(DOWN, buff=.2, aligned_edge=LEFT)

        self.cords.shift(DOWN)
        plane = self.cords[0]
        plot = plane.plot(self.func, color=BLUE)

        self.add_title(self.translate("Func_1_3.x_crossing_answer_scene.title"))

        with self.voiceover(
            text=self.evaluate_string(self.translate("Func_1_3.x_crossing_answer_scene.voiceover"))
        ) as tracker:
            self.wait_until_bookmark("writeFunc")
            self.play(Write(func))

            self.wait_until_bookmark("setToZero1")
            self.play(Write(setToZero), run_time=0.5)

            self.wait_until_bookmark("setToZero2")
            self.play(Write(func_Zeroed))

            self.wait_until_bookmark("solve1")
            self.play(Write(solve), run_time=0.5)

            self.wait_until_bookmark("solve2")
            self.play(Write(func_Zeros))

            self.wait_until_bookmark("clear")
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


class Func_1_3_P_1_1_q(xCrossingQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$-1", "$1$", "$-1,\\,0,\\,1$", "$-1,\\,1$"],
            correctAnswerIndex = 3,
            questionText = self.translate("Func_1_3.P1q.question")
        )

    def construct(self):

        self.funcTex = "f(x)=x^2-1"
        self.func = lambda x: x**2-1
        self.funcText = self.translate("Func_1_3.P1q.func")
        self.intro = self.translate("Func_1_3.P1q.intro")

        super().construct()

class Func_1_3_P_1_1_a(xCrossingAnswerScene):
        
    def construct(self):
        self.funcTex = "f(x)=x^2-1"
        self.funcZero = "x^2-1=0"
        self.funcZeros = "x=-1,\\, x=1"
        self.func = lambda x: x**2-1
        self.funcText = self.translate("Func_1_3.P1q.func")
        self.ZeroText = self.translate("Func_1_3.P1q.zero")
        self.ZerosText = self.translate("Func_1_3.P1q.zeros")
        self.intro = self.translate("Func_1_3.P1a.intro")
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
        self.funcText = self.translate("Func_1_3.P1q.func")
        self.ZeroText = self.translate("Func_1_3.P1q.zero")
        self.ZerosText = self.translate("Func_1_3.P1q.zeros")
        self.intro = self.translate("Func_1_3.P1a.intro")
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
        self.funcText = self.translate("Func_1_3.P1q.func")
        self.ZeroText = self.translate("Func_1_3.P1q.zero")
        self.ZerosText = self.translate("Func_1_3.P1q.zeros")
        self.intro = self.translate("Func_1_3.P1a.intro")
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
        self.funcText = self.translate("Func_1_3.P1q.func")
        self.ZeroText = self.translate("Func_1_3.P1q.zero")
        self.ZerosText = self.translate("Func_1_3.P1q.zeros")
        self.intro = self.translate("Func_1_3.P1d.intro")
        self.isCorrect = True
        self.zeros = [-1,1]
        self.cords = self.add_cords([-2, 2, 1], [-3, 3, 1], x_ticks=[-2,2], y_ticks=[-3,-1,1,3],
                               x_labels=[-2,2], y_labels=[-3,-1,1,3])
        
        super().construct()




#####################################
#####################################
class Func_1_3_P_1_2_q(xCrossingQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$-2$", "$2$", "$-2,\\,2$", "$-2,\\,0,\\,2$"],
            correctAnswerIndex = 2,
            questionText = self.translate("Func_1_3.P1q.question")
        )


    def construct(self):

        self.funcTex = "f(x)=x^2-4"
        self.func = lambda x: x**2-4
        self.funcText = self.translate("Func_1_3.P2q.func")
        self.intro = self.translate("Func_1_3.P2q.intro")

        super().construct()

class Func_1_3_P_1_2_a(xCrossingAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-4"
        self.funcZero = "x^2-4=0"
        self.funcZeros = "x=-2,\\, x=2"
        self.func = lambda x: x**2-4
        self.funcText = self.translate("Func_1_3.P2q.func")
        self.ZeroText = self.translate("Func_1_3.P2q.zero")
        self.ZerosText = self.translate("Func_1_3.P2q.zeros")
        self.intro = self.translate("Func_1_3.P2a.intro")
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
        self.funcText = self.translate("Func_1_3.P2q.func")
        self.ZeroText = self.translate("Func_1_3.P2q.zero")
        self.ZerosText = self.translate("Func_1_3.P2q.zeros")
        self.intro = self.translate("Func_1_3.P2a.intro")
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
        self.funcText = self.translate("Func_1_3.P2q.func")
        self.ZeroText = self.translate("Func_1_3.P2q.zero")
        self.ZerosText = self.translate("Func_1_3.P2q.zeros")
        self.intro = self.translate("Func_1_3.P2c.intro")
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
        self.funcText = self.translate("Func_1_3.P2q.func")
        self.ZeroText = self.translate("Func_1_3.P2q.zero")
        self.ZerosText = self.translate("Func_1_3.P2q.zeros")
        self.intro = self.translate("Func_1_3.P2a.intro")
        self.isCorrect = False
        self.zeros = [-2,2]
        self.cords = self.add_cords([-3, 3, 1], [-5, 5, 1], x_ticks=[-3,3], y_ticks=[-5,0,5],
                               x_labels=[-3,3], y_labels=[-5,0,5])
        
        super().construct()


#####################################
#####################################
class Func_1_3_P_1_3_q(xCrossingQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$0$", "$2$", "$-2,\\,2$", "$-2,\\,0,\\,2$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_1_3.P1q.question")
        )

    def construct(self):

        self.funcTex = "f(x)=x^3"
        self.func = lambda x: x**3
        self.funcText = self.translate("Func_1_3.P3q.func")
        self.intro = self.translate("Func_1_3.P3q.intro")

        super().construct()

class Func_1_3_P_1_3_a(xCrossingAnswerScene):
        
    def construct(self):
        self.funcTex = "f(x)=x^3"
        self.funcZero = "x^3=0"
        self.funcZeros = "x=0"
        self.func = lambda x: x**3
        self.funcText = self.translate("Func_1_3.P3q.func")
        self.ZeroText = self.translate("Func_1_3.P3q.zero")
        self.ZerosText = self.translate("Func_1_3.P3q.zeros")
        self.intro = self.translate("Func_1_3.P3a.intro")
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
        self.funcText = self.translate("Func_1_3.P3q.func")
        self.ZeroText = self.translate("Func_1_3.P3q.zero")
        self.ZerosText = self.translate("Func_1_3.P3q.zeros")
        self.intro = self.translate("Func_1_3.P3b.intro")
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
        self.funcText = self.translate("Func_1_3.P3q.func")
        self.ZeroText = self.translate("Func_1_3.P3q.zero")
        self.ZerosText = self.translate("Func_1_3.P3q.zeros")
        self.intro = self.translate("Func_1_3.P3b.intro")
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
        self.funcText = self.translate("Func_1_3.P3q.func")
        self.ZeroText = self.translate("Func_1_3.P3q.zero")
        self.ZerosText = self.translate("Func_1_3.P3q.zeros")
        self.intro = self.translate("Func_1_3.P3b.intro")
        self.isCorrect = False
        self.zeros = [0]
        self.cords = self.add_cords([-3, 3, 1], [-8, 8, 1], x_ticks=[-3,0,3], y_ticks=[-8,0,8],
                               x_labels=[-3,0,3], y_labels=[-8,0,8])
        
        super().construct()

#####################################
#####################################
class Func_1_3_P_1_4_q(xCrossingQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$-1$", "$0$", "$-1,\\,0$", "$0,\\,1$"],
            correctAnswerIndex = 1,
            questionText = self.translate("Func_1_3.P1q.question")
        )

    def construct(self):

        self.funcTex = "f(x)=x"
        self.func = lambda x: x
        self.funcText = self.translate("Func_1_3.P4q.func")
        self.intro = self.translate("Func_1_3.P4q.intro")

        super().construct()

class Func_1_3_P_1_4_a(xCrossingAnswerScene):
        

    def construct(self):
        self.funcTex = "f(x)=x"
        self.funcZero = "x=0"
        self.funcZeros = "x=0"
        self.func = lambda x: x
        self.funcText = self.translate("Func_1_3.P4q.func")
        self.ZeroText = self.translate("Func_1_3.P4q.zero")
        self.ZerosText = self.translate("Func_1_3.P4q.zeros")
        self.intro = self.translate("Func_1_3.P4a.intro")
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
        self.funcText = self.translate("Func_1_3.P4q.func")
        self.ZeroText = self.translate("Func_1_3.P4q.zero")
        self.ZerosText = self.translate("Func_1_3.P4q.zeros")
        self.intro = self.translate("Func_1_3.P4b.intro")
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
        self.funcText = self.translate("Func_1_3.P4q.func")
        self.ZeroText = self.translate("Func_1_3.P4q.zero")
        self.ZerosText = self.translate("Func_1_3.P4q.zeros")
        self.intro = self.translate("Func_1_3.P4a.intro")
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
        self.funcText = self.translate("Func_1_3.P4q.func")
        self.ZeroText = self.translate("Func_1_3.P4q.zero")
        self.ZerosText = self.translate("Func_1_3.P4q.zeros")
        self.intro = self.translate("Func_1_3.P4a.intro")
        self.isCorrect = False
        self.zeros = [0]
        self.cords = self.add_cords([-3, 3, 1], [-3, 3, 1], x_ticks=[-3,0,3], y_ticks=[-3,0,3],
                               x_labels=[-3,0,3], y_labels=[-3,0,3])
        
        super().construct()

#####################################
#####################################
class Func_1_3_P_1_5_q(xCrossingQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$-3$", "$3$", "$-3,\\,3$", "$-3,\\,0,\\,3$"],
            correctAnswerIndex = 2,
            questionText = self.translate("Func_1_3.P1q.question")
        )

    def construct(self):

        self.funcTex = "f(x)=x^2-9"
        self.func = lambda x: x**2-9
        self.funcText = self.translate("Func_1_3.P5q.func")
        self.intro = self.translate("Func_1_3.P5q.intro")

        super().construct()

class Func_1_3_P_1_5_a(xCrossingAnswerScene):

    def construct(self):
        self.funcTex = "f(x)=x^2-9"
        self.funcZero = "x^2-9=0"
        self.funcZeros = "x=-3,\\, x=3"
        self.func = lambda x: x**2-9
        self.funcText = self.translate("Func_1_3.P5q.func")
        self.ZeroText = self.translate("Func_1_3.P5q.zero")
        self.ZerosText = self.translate("Func_1_3.P5q.zeros")
        self.intro = self.translate("Func_1_3.P5a.intro")
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
        self.funcText = self.translate("Func_1_3.P5q.func")
        self.ZeroText = self.translate("Func_1_3.P5q.zero")
        self.ZerosText = self.translate("Func_1_3.P5q.zeros")
        self.intro = self.translate("Func_1_3.P5a.intro")
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
        self.funcText = self.translate("Func_1_3.P5q.func")
        self.ZeroText = self.translate("Func_1_3.P5q.zero")
        self.ZerosText = self.translate("Func_1_3.P5q.zeros")
        self.intro = self.translate("Func_1_3.P5c.intro")
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
        self.funcText = self.translate("Func_1_3.P5q.func")
        self.ZeroText = self.translate("Func_1_3.P5q.zero")
        self.ZerosText = self.translate("Func_1_3.P5q.zeros")
        self.intro = self.translate("Func_1_3.P5a.intro")
        self.isCorrect = False
        self.zeros = [-3,3]
        self.cords = self.add_cords([-4, 4, 1], [-10, 10, 1], x_ticks=[-4,4], y_ticks=[-10,0,10],
                               x_labels=[-4,4], y_labels=[-10,0,10])
        
        super().construct()

#####################################
#####################################
class Func_1_3_P_1_6_q(xCrossingQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$-4$", "$4$", "$-4,\\,4$", "$-4,\\,0,\\,4$"],
            correctAnswerIndex = 2,
            questionText = self.translate("Func_1_3.P1q.question")
        )

    def construct(self):

        self.funcTex = "f(x)=x^2-16"
        self.func = lambda x: x**2-16
        self.funcText = self.translate("Func_1_3.P6q.func")
        self.intro = self.translate("Func_1_3.P6q.intro")

        super().construct()

class Func_1_3_P_1_6_a(xCrossingAnswerScene):
        

    def construct(self):
        self.funcTex = "f(x)=x^2-16"
        self.funcZero = "x^2-16=0"
        self.funcZeros = "x=-4,\\, x=4"
        self.func = lambda x: x**2-16
        self.funcText = self.translate("Func_1_3.P6q.func")
        self.ZeroText = self.translate("Func_1_3.P6q.zero")
        self.ZerosText = self.translate("Func_1_3.P6q.zeros")
        self.intro = self.translate("Func_1_3.P6a.intro")
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
        self.funcText = self.translate("Func_1_3.P6q.func")
        self.ZeroText = self.translate("Func_1_3.P6q.zero")
        self.ZerosText = self.translate("Func_1_3.P6q.zeros")
        self.intro = self.translate("Func_1_3.P6a.intro")
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
        self.funcText = self.translate("Func_1_3.P6q.func")
        self.ZeroText = self.translate("Func_1_3.P6q.zero")
        self.ZerosText = self.translate("Func_1_3.P6q.zeros")
        self.intro = self.translate("Func_1_3.P6c.intro")
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
        self.funcText = self.translate("Func_1_3.P6q.func")
        self.ZeroText = self.translate("Func_1_3.P6q.zero")
        self.ZerosText = self.translate("Func_1_3.P6q.zeros")
        self.intro = self.translate("Func_1_3.P6a.intro")
        self.isCorrect = False
        self.zeros = [-4,4]
        self.cords = self.add_cords([-5, 5, 1], [-17, 17, 1], x_ticks=[-5,5], y_ticks=[-17,0,17],
                               x_labels=[-5,5], y_labels=[-17,0,17])
        
        super().construct()

#####################################
#####################################
class Func_1_3_P_1_7_q(xCrossingQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$-5$", "$5$", "$-5,\\,5$", "$-5,\\,0,\\,5$"],
            correctAnswerIndex = 2,
            questionText = self.translate("Func_1_3.P1q.question")
        )

    def construct(self):

        self.funcTex = "f(x)=x^2-25"
        self.func = lambda x: x**2-25
        self.funcText = self.translate("Func_1_3.P7q.func")
        self.intro = self.translate("Func_1_3.P7q.intro")

        super().construct()

class Func_1_3_P_1_7_a(xCrossingAnswerScene):
        

    def construct(self):
        self.funcTex = "f(x)=x^2-25"
        self.funcZero = "x^2-25=0"
        self.funcZeros = "x=-5,\\, x=5"
        self.func = lambda x: x**2-25
        self.funcText = self.translate("Func_1_3.P7q.func")
        self.ZeroText = self.translate("Func_1_3.P7q.zero")
        self.ZerosText = self.translate("Func_1_3.P7q.zeros")
        self.intro = self.translate("Func_1_3.P7a.intro")
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
        self.funcText = self.translate("Func_1_3.P7q.func")
        self.ZeroText = self.translate("Func_1_3.P7q.zero")
        self.ZerosText = self.translate("Func_1_3.P7q.zeros")
        self.intro = self.translate("Func_1_3.P7a.intro")
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
        self.funcText = self.translate("Func_1_3.P7q.func")
        self.ZeroText = self.translate("Func_1_3.P7q.zero")
        self.ZerosText = self.translate("Func_1_3.P7q.zeros")
        self.intro = self.translate("Func_1_3.P7c.intro")
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
        self.funcText = self.translate("Func_1_3.P7q.func")
        self.ZeroText = self.translate("Func_1_3.P7q.zero")
        self.ZerosText = self.translate("Func_1_3.P7q.zeros")
        self.intro = self.translate("Func_1_3.P7a.intro")
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

        cursor = AltCursor(stroke_width=0.0, idle=False)

        func = MathTex(self.funcTex, color=c1t, font_size=fs1).shift(UP)

        # Add title to the scene
        self.add_title(self.translate("Func_1_3.y_crossing_question_scene.title"))

        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_1_3.y_crossing_question_scene.intro"))
        ) as tracker:
            
            self.wait_until_bookmark("writeFunc")
            self.play(Write(func))

            self.wait_until_bookmark("zero")
            self.draw_qmark(cursor, DOWN)

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

        func = MathTex(self.funcTex, color=c1t, font_size=fs2)
        plugInZero = Tex(self.translate("Func_1_3.y_crossing_answer_scene.plugInZero"), color=RED, font_size=fs3)
        func_Zeroed = MathTex(self.funcZero, color=c1t, font_size=fs2)
        explanation = VGroup(func, plugInZero, func_Zeroed).arrange(DOWN, buff=0.2, aligned_edge=LEFT)

        # Create the coordinate system

        plane = self.cords[0]
        plot = plane.plot(self.func, color=BLUE)


        # Add title to the scene
        self.add_title(self.translate("Func_1_3.y_crossing_answer_scene.title"))
        
        # Initialize a cursor
        # cursor = AltCursor(stroke_width=0.0, blinking=True).shift(LEFT)
        # cursor.autoFadeBackground = True

        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_1_3.y_crossing_answer_scene.intro"))
        ) as tracker:
            
            self.wait_until_bookmark("writeFunc")
            self.play(Write(func))

            self.wait_until_bookmark("setToZero1")
            self.play(Write(plugInZero))

            self.wait_until_bookmark("setToZero2")
            self.play(Write(func_Zeroed))

            self.wait_until_bookmark("noteChange")

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



# PROTOTYPES = [
#     PagePrototypeVideo.from_scene(Func_1_3_I_1_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_I_1_q, Func_1_3_I_1_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_3_I_1_a),
#     PagePrototypeVideo.from_scene(Func_1_3_I_1_b),
#     PagePrototypeVideo.from_scene(Func_1_3_I_1_c),
#     PagePrototypeVideo.from_scene(Func_1_3_I_1_d),
#     PagePrototypeVideo.from_scene(Func_1_3_I_2),
#     PagePrototypeVideo.from_scene(Func_1_3_I_3),
#     PagePrototypeVideo.from_scene(Func_1_3_I_4_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_I_4_q, Func_1_3_I_4_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_3_I_4_a),
#     PagePrototypeVideo.from_scene(Func_1_3_I_4_b),
#     PagePrototypeVideo.from_scene(Func_1_3_I_4_c),
#     PagePrototypeVideo.from_scene(Func_1_3_I_4_d),
#     PagePrototypeVideo.from_scene(Func_1_3_I_5),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_1_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_1_1_q, Func_1_3_P_1_1_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_1_a),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_1_b),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_1_c),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_1_d),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_2_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_1_2_q, Func_1_3_P_1_2_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_2_a),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_2_b),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_2_c),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_2_d),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_3_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_1_3_q, Func_1_3_P_1_3_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_3_a),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_3_b),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_3_c),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_3_d),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_4_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_1_4_q, Func_1_3_P_1_4_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_4_a),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_4_b),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_4_c),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_4_d),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_5_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_1_5_q, Func_1_3_P_1_5_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_5_a),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_5_b),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_5_c),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_5_d),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_6_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_1_6_q, Func_1_3_P_1_6_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_6_a),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_6_b),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_6_c),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_6_d),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_7_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_1_7_q, Func_1_3_P_1_7_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_7_a),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_7_b),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_7_c),
#     PagePrototypeVideo.from_scene(Func_1_3_P_1_7_d),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_1_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_2_1_q, Func_1_3_P_2_1_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_1_a),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_1_b),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_1_c),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_1_d),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_2_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_2_2_q, Func_1_3_P_2_2_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_2_a),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_2_b),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_2_c),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_2_d),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_3_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_2_3_q, Func_1_3_P_2_3_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_3_a),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_3_b),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_3_c),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_3_d),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_4_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_2_4_q, Func_1_3_P_2_4_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_4_a),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_4_b),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_4_c),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_4_d),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_5_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_2_5_q, Func_1_3_P_2_5_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_5_a),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_5_b),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_5_c),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_5_d),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_6_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_2_6_q, Func_1_3_P_2_6_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_6_a),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_6_b),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_6_c),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_6_d),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_7_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_1_3_P_2_7_q, Func_1_3_P_2_7_q.__name__),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_7_a),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_7_b),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_7_c),
#     PagePrototypeVideo.from_scene(Func_1_3_P_2_7_d),
# ]