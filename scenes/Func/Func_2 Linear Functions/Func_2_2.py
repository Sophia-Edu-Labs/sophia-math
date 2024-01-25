# 2_2: Linear Functions: Term to Graph

# Import necessary libraries and modules
from abc import ABCMeta, abstractmethod
from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
from sophialib.styles.sophiascene import (CursorMoveToCurved, CursorPositionTracker,
                                          CursorPositionTracking,
                                          CursorResizeDefault, SophiaScene,
                                          assets_folder, AltCursor,
                                          SophiaCursorScene, CursorMoveTo,
                                          CursorMoveResize, Notepad, CursorMarkAxis)
from sophialib.styles.styleconstants import *
from sophialib.styles.sophiaobjects import *
from manim import *
from PIL import Image
import numpy as np
from pathlib import Path
from sophialib.tasks.sophiataskdefinition import SophiaTaskDefinition
import ast


class Func_2_2_I_1_q(SophiaCursorScene):
    #Test
    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_2_2.I1.q.answer-options")),
            correctAnswerIndex=2,
            questionText = self.translate("Func_2_2.I1.q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        lemonade = ImageMobject(assets_folder / "img" / "lemonade.png").scale(0.3).move_to(LEFT*6.7)

        concert = ImageMobject(assets_folder / "img" / "drums.png").scale(0.3).move_to(UP*1.5+LEFT*6.7)

        # Create a notepad with texts
        # note = Notepad(texts=[["Which function best describes", "our total expenses?"], "$f(x)=x$", "$f(x)=10\\cdot x$", "$f(x)=10+x$"], buff=0.2, buff_inner=0)
        # self.add(note)

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_2.I1.q.title"))

        # Initialize a cursor  Term
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        self.add(cursor)

        term = Tex(self.translate("Func_2_2.I1.q.term"), color=c1t, font_size=fs1).next_to(title, DOWN, buff=1)
        to = Tex("$\\downarrow$", color=c1t, font_size=fs1).next_to(term, DOWN, buff=0.5)
        graph = Tex(self.translate("Func_2_2.I1.q.graph"), color=c1t, font_size=fs1).next_to(to, DOWN, buff=0.5)


        ticket_str, lemPrice_str = self.translate("Func_2_2.I1.q.ticket"), self.translate("Func_2_2.I1.q.lemPrice")
        ticket = Tex(f"$\\rightarrow 10\\$$ {ticket_str}", color=c1t, font_size=fs2).next_to(concert, RIGHT, buff=0).shift(RIGHT*5)
        lemPrice = Tex(f"$\\rightarrow 1\\$$/{lemPrice_str}", color=c1t, font_size=fs2).next_to(lemonade, RIGHT, buff=0).shift(RIGHT*5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_2.I1.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("ttg")
            self.play(Write(term), Write(to), Write(graph), run_time=0.5)
            cursor.blinking=False

            self.wait_until_bookmark("term")
            x,y,_ = term.get_left()+0.3*LEFT
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("graph")
            x,y,_ = graph.get_left()+0.3*LEFT
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("concert")
            x,y = 0, -1
            self.play(concert.animate(run_time=1).shift(RIGHT*5), CursorMoveTo(cursor, x, y), Unwrite(term), Unwrite(to), Unwrite(graph), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("lemonade")
            self.play(lemonade.animate.shift(RIGHT*5), run_time=1)

            self.wait_until_bookmark("ticket")
            self.play(Write(ticket), run_time=0.5)

            self.wait_until_bookmark("lemPrice")
            self.play(Write(lemPrice), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_2_2_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        # note = Notepad(texts=["$10\\$$ Admission", "$1\\$$ Cost per Lemonade", "$\\rightarrow$Total costs are $f(x)=10+x$"])
        # self.add(note)

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_2.I1.q.title"))

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex("f", "(x)", "=", "10", "+", "x", color=c1t, font_size=fs1).next_to(title, DOWN, buff=1.5)
        funcm1, funcm2 = func[-1].copy(), func[-2].copy()

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_2.I1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(func))

            self.wait_until_bookmark("firstTen")
            cursor.blinking=False
            x,y,_ = func[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.4)

            self.wait_until_bookmark("ff")
            x,y,_ = func[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Unwrite(func[-1]), Unwrite(func[-2]), run_time=0.4)

            self.wait_until_bookmark("fx")
            x,y,_ = func[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.2)

            self.wait_until_bookmark("ten")
            x,y,_ = func[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.2)
            self.wait(0.2)
            cursor.blinking=True

            self.wait_until_bookmark("varX")
            cursor.blinking=False
            x,y,_ = func[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y),  run_time=0.4)

            self.wait_until_bookmark("x")
            x,y,_ = func[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(funcm1), Write(funcm2), run_time=0.6)
            self.wait(0.2)
            cursor.blinking=True

            self.wait_until_bookmark("ff2")
            cursor.blinking=False
            x,y,_ = func[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.2)

            self.wait_until_bookmark("fx2")
            x,y,_ = func[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.2)

            self.wait_until_bookmark("ten2")
            x,y,_ = func[3].get_center()+0.4*DOWN
            funcm1, funcm2 = func[-1].copy(), func[-2].copy()
            self.play(CursorMoveToCurved(cursor,x,y), Unwrite(func[-1]), Unwrite(func[-2]), run_time=0.2)

            self.wait_until_bookmark("varX2")
            x,y,_ = func[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y),  run_time=0.2)
            self.wait(0.2)
            cursor.blinking=True

        # Wait for 4 seconds at the end of animation
        self.wait(4)

class Func_2_2_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        # note = Notepad(texts=["$10\\$$ Admission", "$1\\$$ Cost per Lemonade", "$\\rightarrow$Total costs are $f(x)=10+x$"])
        # self.add(note)

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_2.I1.q.title"))

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex("f", "(x)", "=", "10", "+", "x", color=c1t, font_size=fs1).next_to(title, DOWN, buff=1.5)
        funcm1, funcm2 = func[-1].copy(), func[-2].copy()

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_2.I1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(func))

            self.wait_until_bookmark("firstTen")
            cursor.blinking=False
            x,y,_ = func[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.4)

            self.wait_until_bookmark("ff")
            x,y,_ = func[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Unwrite(func[-1]), Unwrite(func[-2]), run_time=0.4)

            self.wait_until_bookmark("fx")
            x,y,_ = func[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.2)

            self.wait_until_bookmark("ten")
            x,y,_ = func[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.2)
            self.wait(0.2)
            cursor.blinking=True

            self.wait_until_bookmark("varX")
            cursor.blinking=False
            x,y,_ = func[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y),  run_time=0.4)

            self.wait_until_bookmark("x")
            x,y,_ = func[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(funcm1), Write(funcm2), run_time=0.6)
            self.wait(0.2)
            cursor.blinking=True

            self.wait_until_bookmark("ff2")
            cursor.blinking=False
            x,y,_ = func[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.2)

            self.wait_until_bookmark("fx2")
            x,y,_ = func[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.2)

            self.wait_until_bookmark("ten2")
            x,y,_ = func[3].get_center()+0.4*DOWN
            funcm1, funcm2 = func[-1].copy(), func[-2].copy()
            self.play(CursorMoveToCurved(cursor,x,y), Unwrite(func[-1]), Unwrite(func[-2]), run_time=0.2)

            self.wait_until_bookmark("varX2")
            x,y,_ = func[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y),  run_time=0.2)
            self.wait(0.2)
            cursor.blinking=True

        # Wait for 4 seconds at the end of animation
        self.wait(4)


class Func_2_2_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        # note = Notepad(texts=["$10\\$$ Admission", "$1\\$$ Cost per Lemonade", "$\\rightarrow$Total costs are $f(x)=10+x$"])
        # self.add(note)

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_2.I1.q.title"))

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex("f", "(x)", "=", "10", "+", "x", color=c1t, font_size=fs1).next_to(title, DOWN, buff=1.5)
        funcm1, funcm2 = func[-1].copy(), func[-2].copy()

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_2.I1.c.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(func))

            self.wait_until_bookmark("firstTen")
            cursor.blinking=False
            x,y,_ = func[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.4)

            self.wait_until_bookmark("ff")
            x,y,_ = func[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Unwrite(func[-1]), Unwrite(func[-2]), run_time=0.4)

            self.wait_until_bookmark("fx")
            x,y,_ = func[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.2)

            self.wait_until_bookmark("ten")
            x,y,_ = func[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.2)
            self.wait(0.2)
            cursor.blinking=True

            self.wait_until_bookmark("varX")
            cursor.blinking=False
            x,y,_ = func[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y),  run_time=0.4)

            self.wait_until_bookmark("x")
            x,y,_ = func[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(funcm1), Write(funcm2), run_time=0.6)
            self.wait(0.2)
            cursor.blinking=True

            self.wait_until_bookmark("ff2")
            cursor.blinking=False
            x,y,_ = func[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.2)

            self.wait_until_bookmark("fx2")
            x,y,_ = func[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.2)

            self.wait_until_bookmark("ten2")
            x,y,_ = func[3].get_center()+0.4*DOWN
            funcm1, funcm2 = func[-1].copy(), func[-2].copy()
            self.play(CursorMoveToCurved(cursor,x,y), Unwrite(func[-1]), Unwrite(func[-2]), run_time=0.2)

            self.wait_until_bookmark("varX2")
            x,y,_ = func[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y),  run_time=0.2)
            self.wait(0.2)
            cursor.blinking=True

        # Wait for 4 seconds at the end of animation
        self.wait(4)


###########################################
###########################################
class Func_2_2_I_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        # note = Notepad(texts=["We want to determine function graphs", ["$\\rightarrow$ Plug two $x$-values","into the term of the function"], "$\\rightarrow$ Connect the obtained points"])
        # self.add(note)

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_2.I2.title"))

        # Create the coordinate system
        cords = self.add_cords([0, 20, 5], [0, 30, 5], x_ticks=[0,10,20], y_ticks=[0,10,20,30],
                               x_labels=[0,10,20], y_labels=[0,10,20,30])
        plane = cords[0]

        # Create and plot piecewise linear function

        func_o = MathTex("f", "(x)", "=", "10", "+", "x", color=c1t, font_size=fs1).next_to(title, DOWN, buff=1.5)
        func = MathTex("f", "(x)", "=", "10", "+", "x", color=c1t, font_size=fs1).next_to(cords, DOWN)
        func0 = MathTex("f", "(0)", "=", "10", "+", "0", color=c1t, font_size=fs1).next_to(cords, DOWN)
        func10 = MathTex("f", "(10)", "=", "10", "+", "10", color=c1t, font_size=fs1).next_to(cords, DOWN)
        func_original1 = MathTex("f", "(x)", "=", "10", "+", "x", color=c1t, font_size=fs1).next_to(cords, DOWN)
        func_original2 = MathTex("f", "(x)", "=", "10", "+", "x", color=c1t, font_size=fs1).next_to(cords, DOWN)
        a, b = ValueTracker(1), ValueTracker(10)

        self.add(func_o)

        def redraw_f():
            # Define the sine function
            func = lambda x: a.get_value()*x+b.get_value()
            return plane.plot(func, color=BLUE)

        #sine function that is updated
        updated_f = always_redraw(redraw_f)
        

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.blinking=False

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_2.I2.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("cords")
            self.play(ReplacementTransform(func_o, func), Write(cords))

            self.wait_until_bookmark("x0")
            self.add(cursor)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("ten")
            x,y,_ = plane.c2p(0,10)
            self.play(CursorMoveTo(cursor,x,y), ReplacementTransform(func, func0), run_time=0.8)

            self.wait_until_bookmark("mark1")
            self.play(Write(Dot(plane.c2p(0,10), color=BLUE)), ReplacementTransform(func0, func_original1), run_time=0.8)

            self.wait_until_bookmark("xten")
            x,y,_ = plane.c2p(10,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.8)

            self.wait_until_bookmark("twenty")
            x,y,_ = plane.c2p(10,20)
            self.play(CursorMoveTo(cursor,x,y), ReplacementTransform(func_original1, func10), run_time=0.8)

            self.wait_until_bookmark("mark2")
            self.play(Write(Dot(plane.c2p(10,20), color=BLUE)))
            self.play(ReplacementTransform(func10, func_original2), run_time=0.8)

            self.wait_until_bookmark("connect")
            self.add_pencil_sound(2)
            self.play(Write(updated_f), run_time=2)

        # Wait for 4 seconds at the end of animation
        self.wait(4)



###########################################
###########################################
# Pratice Part
###########################################
###########################################
class plotLinearFunctionQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title to the scene
        title = self.add_title(self.translate("Func_2_2.P1.plot_linear_function_question.title"))       

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.blinking=False

        # Action Sequence
        
        plane = self.cords[0]
        g1 = plane.plot(self.f1, color=BLUE)
        g2 = plane.plot(self.f2, color=GREEN)
        g3 = plane.plot(self.f3, color=ORANGE)

        # Create a notepad with texts
        # note = Notepad(texts=[f"Consider the function ${self.func}$", "What does the graph of this function look like?", "Is it the blue, green, or orange graph?"])
        # self.add(note)

        func = MathTex(self.func, color=c1t, font_size=fs1).next_to(title, DOWN, buff=1.5)
        
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_2_2.P1.plot_linear_function_question.voiceover"))
        ) as tracker:
            
            self.wait_until_bookmark("func")
            self.play(Write(func))

            self.wait_until_bookmark("graph")
            self.play(Write(self.cords), func.animate.move_to(self.cords.get_bottom()+0.5*DOWN), run_time=1.5)

            self.wait_until_bookmark("o1")
            self.add_pencil_sound(1.5)
            self.play(Write(g1))

            self.wait_until_bookmark("o2")
            self.add_pencil_sound(1.5)
            self.play(Write(g2))

            self.wait_until_bookmark("o3")
            self.add_pencil_sound(1.5)
            self.play(Write(g3))
            
        # Wait for 4 seconds at the end of animation
        self.wait(4)

class plotLinearFunctionAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        self.introText= self.translate("Func_2_2.P1.plot_linear_function_answer.introtextcorrect") if self.idx_correct == self.idx_selected else self.translate("Func_2_2.P1.plot_linear_function_answer.introtextincorrect")
        self.titleText = self.translate("Func_2_2.P1.plot_linear_function_question.title")
        self.c_correct = self.translate("Func_2_2.P1.plot_linear_function_answer.blue") if self.idx_correct == 0 else self.translate("Func_2_2.P1.plot_linear_function_answer.green") if self.idx_correct == 1 else self.translate("Func_2_2.P1.plot_linear_function_answer.orange")
        self.color = BLUE if self.idx_correct == 0 else GREEN if self.idx_correct == 1 else ORANGE

        # Add title to the scene
        title = self.add_title(self.titleText)       

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.blinking=False

        self.f_correct = self.f1 if self.idx_correct == 0 else self.f2 if self.idx_correct == 1 else self.f3

        # Action Sequence
        
        plane = self.cords[0]
        graph = plane.plot(self.f_correct, color=self.color)

        # Create a notepad with texts
        # note = Notepad(texts=[f"Consider the function ${self.func}$", "Plug in two x-values", "Connect the points with a straight line"])
        # self.add(note)

        func = MathTex(self.func, color=c1t, font_size=fs1).next_to(title, DOWN, buff=1.5)
        
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_2_2.P1.plot_linear_function_answer.voiceover"))
        ) as tracker:
            
            self.wait_until_bookmark("func")
            self.play(Write(func))

            self.wait_until_bookmark("cords")
            self.play(Write(self.cords), func.animate.move_to(self.cords.get_bottom()+0.5*DOWN), run_time=1.5)

            self.wait_until_bookmark("x0")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("fx0")
            x,y,_ = plane.c2p(0,self.f_correct(0))
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(Dot([x,y,0], color=self.color)), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = plane.c2p(self.x,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("fx")
            x,y,_ = plane.c2p(self.x,self.f_correct(self.x))
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(Write(Dot([x,y,0], color=self.color)), run_time=0.5)

            self.wait_until_bookmark("graph")
            self.add_pencil_sound(1.5)
            self.play(Write(graph))
            
        # Wait for 4 seconds at the end of animation
        self.wait(4)

###########################################
###########################################
# Concrete Questions
###########################################
###########################################
class Func_2_2_P_1_q(plotLinearFunctionQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_2_2.P1.q.answer-options")),
            correctAnswerIndex=0,
            questionText = self.translate("Func_2_2.P1.q.question-text") 
        )
        
    def construct(self):

        self.introText = self.translate("Func_2_2.P1.q.introtext")
        self.funcText = self.translate("Func_2_2.P1.q.functext")
        self.qText = self.translate("Func_2_2.P1.q.qtext")
        self.func = "f(x)=2x+1"
        self.f1 = lambda x: 2*x+1
        self.f2 = lambda x: 2*x-1
        self.f3 = lambda x: -2*x+1
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3,0,3], y_ticks=[-6,6])

        super().construct()

class Func_2_2_P_1_a(plotLinearFunctionAnswerScene):
        
    def construct(self):

        self.funcText = self.translate("Func_2_2.P1.q.functext")
        self.func = "f(x)=2x+1"
        self.f1 = lambda x: 2*x+1
        self.f2 = lambda x: 2*x-1
        self.f3 = lambda x: -2*x+1
        self.idx_correct = 0
        self.idx_selected = 0
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3,0,3], y_ticks=[-6,6])
        self.x = 2

        super().construct()

class Func_2_2_P_1_b(plotLinearFunctionAnswerScene):
        
    def construct(self):

        self.funcText = self.translate("Func_2_2.P1.q.functext")
        self.func = "f(x)=2x+1"
        self.f1 = lambda x: 2*x+1
        self.f2 = lambda x: 2*x-1
        self.f3 = lambda x: -2*x+1
        self.idx_correct = 0
        self.idx_selected = 1
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3,0,3], y_ticks=[-6,6])
        self.x = 2

        super().construct()

class Func_2_2_P_1_c(plotLinearFunctionAnswerScene):
        
    def construct(self):

        self.funcText = self.translate("Func_2_2.P1.q.functext")
        self.func = "f(x)=2x+1"
        self.f1 = lambda x: 2*x+1
        self.f2 = lambda x: 2*x-1
        self.f3 = lambda x: -2*x+1
        self.idx_correct = 0
        self.idx_selected = 2
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3,0,3], y_ticks=[-6,6])
        self.x = 2

        super().construct()



###########################################
###########################################
class Func_2_2_P_2_q(plotLinearFunctionQuestionScene):
        

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_2_2.P1.q.answer-options")),
            correctAnswerIndex=2,
            questionText = self.translate("Func_2_2.P1.q.question-text") 
        )

    def construct(self):

        self.introText = self.translate("Func_2_2.P2.q.introtext")
        self.funcText = self.translate("Func_2_2.P2.q.functext")
        self.qText = self.translate("Func_2_2.P2.q.qtext")
        self.func = "f(x) = -3x + 2"
        self.f1 = lambda x: 3*x + 2
        self.f2 = lambda x: 3*x - 2
        self.f3 = lambda x: -3*x + 2
        self.cords = self.add_cords([-4, 4, 1], [-10, 10, 2], x_ticks=[-4, 0, 4], y_ticks=[-8, 8])

        super().construct()

class Func_2_2_P_2_a(plotLinearFunctionAnswerScene):
        
    def construct(self):

        self.funcText = self.translate("Func_2_2.P2.q.functext")
        self.func = "f(x) = -3x + 2"
        self.f1 = lambda x: 3*x + 2
        self.f2 = lambda x: 3*x - 2
        self.f3 = lambda x: -3*x + 2
        self.idx_correct = 2
        self.idx_selected = 0
        self.cords = self.add_cords([-4, 4, 1], [-10, 10, 2], x_ticks=[-4, 0, 4], y_ticks=[-8, 8])
        self.x = 2

        super().construct()


class Func_2_2_P_2_b(plotLinearFunctionAnswerScene):
        
    def construct(self):

        self.funcText = self.translate("Func_2_2.P2.q.functext")
        self.func = "f(x) = -3x + 2"
        self.f1 = lambda x: 3*x + 2
        self.f2 = lambda x: 3*x - 2
        self.f3 = lambda x: -3*x + 2
        self.idx_correct = 2
        self.idx_selected = 1
        self.cords = self.add_cords([-4, 4, 1], [-10, 10, 2], x_ticks=[-4, 0, 4], y_ticks=[-8, 8])
        self.x = 2

        super().construct()

class Func_2_2_P_2_c(plotLinearFunctionAnswerScene):
        
    def construct(self):

        self.funcText = self.translate("Func_2_2.P2.q.functext")
        self.func = "f(x) = -3x + 2"
        self.f1 = lambda x: 3*x + 2
        self.f2 = lambda x: 3*x - 2
        self.f3 = lambda x: -3*x + 2
        self.idx_correct = 2
        self.idx_selected = 2
        self.cords = self.add_cords([-4, 4, 1], [-10, 10, 2], x_ticks=[-4, 0, 4], y_ticks=[-8, 8])
        self.x = 2

        super().construct()


###########################################
###########################################
class Func_2_2_P_3_q(plotLinearFunctionQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_2_2.P1.q.answer-options")),
            correctAnswerIndex=1,
            questionText = self.translate("Func_2_2.P1.q.question-text") 
        )
        
    def construct(self):

        self.introText = self.translate("Func_2_2.P3.q.introtext")
        self.funcText = self.translate("Func_2_2.P3.q.functext")
        self.qText = self.translate("Func_2_2.P3.q.qtext")
        self.func = "f(x) = 4x + 3"
        self.f1 = lambda x: 4*x - 3
        self.f2 = lambda x: 4*x + 3
        self.f3 = lambda x: -4*x - 3
        self.cords = self.add_cords([-2, 2, 1], [-10, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-10, 10])

        super().construct()

class Func_2_2_P_3_a(plotLinearFunctionAnswerScene):
        
    def construct(self):

        self.funcText = self.translate("Func_2_2.P3.q.functext")
        self.func = "f(x) = 4x - 3"
        self.f1 = lambda x: 4*x - 3
        self.f2 = lambda x: 4*x + 3
        self.f3 = lambda x: -4*x - 3
        self.idx_correct = 1
        self.idx_selected = 1
        self.cords = self.add_cords([-5, 5, 1], [-10, 10, 2], x_ticks=[-5, 0, 5], y_ticks=[-10, 10])
        self.x = 2

        super().construct()

class Func_2_2_P_3_b(plotLinearFunctionAnswerScene):
        
    def construct(self):

        self.funcText = self.translate("Func_2_2.P3.q.functext")
        self.func = "f(x) = 4x - 3"
        self.f1 = lambda x: 4*x - 3
        self.f2 = lambda x: 4*x + 3
        self.f3 = lambda x: -4*x - 3
        self.idx_correct = 1
        self.idx_selected = 1
        self.cords = self.add_cords([-5, 5, 1], [-10, 10, 2], x_ticks=[-5, 0, 5], y_ticks=[-10, 10])
        self.x = 2

        super().construct()


class Func_2_2_P_3_c(plotLinearFunctionAnswerScene):
        
    def construct(self):

        self.funcText = self.translate("Func_2_2.P3.q.functext")
        self.func = "f(x) = 4x - 3"
        self.f1 = lambda x: 4*x - 3
        self.f2 = lambda x: 4*x + 3
        self.f3 = lambda x: -4*x - 3
        self.idx_correct = 1
        self.idx_selected = 2
        self.cords = self.add_cords([-5, 5, 1], [-10, 10, 2], x_ticks=[-5, 0, 5], y_ticks=[-10, 10])
        self.x = 2

        super().construct()



###########################################
###########################################
class Func_2_2_P_4_q(plotLinearFunctionQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_2_2.P1.q.answer-options")),
            correctAnswerIndex=1,
            questionText = self.translate("Func_2_2.P1.q.question-text") 
        )
        
    def construct(self):

        self.introText = self.translate("Func_2_2.P4.q.introtext")
        self.funcText = self.translate("Func_2_2.P4.q.functext")
        self.qText = self.translate("Func_2_2.P4.q.qtext")
        self.func = "f(x) = 5x + 4"
        self.f1 = lambda x: 5*x + 4
        self.f2 = lambda x: 5*x - 4
        self.f3 = lambda x: -5*x + 4
        self.cords = self.add_cords([-3, 3, 1], [-15, 15, 5], x_ticks=[-3, 0, 3], y_ticks=[-15, 15])

        super().construct()

class Func_2_2_P_4_a(plotLinearFunctionAnswerScene):
        
    def construct(self):

        self.funcText = self.translate("Func_2_2.P4.q.functext")
        self.func = "f(x) = 5x + 4"
        self.f1 = lambda x: 5*x + 4
        self.f2 = lambda x: 5*x - 4
        self.f3 = lambda x: -5*x + 4
        self.idx_correct = 0
        self.idx_selected = 0
        self.cords = self.add_cords([-6, 6, 1], [-12, 12, 2], x_ticks=[-6, 0, 6], y_ticks=[-12, 12])
        self.x = 2

        super().construct()

class Func_2_2_P_4_b(plotLinearFunctionAnswerScene):
        
    def construct(self):

        self.funcText = self.translate("Func_2_2.P4.q.functext")
        self.func = "f(x) = 5x + 4"
        self.f1 = lambda x: 5*x + 4
        self.f2 = lambda x: 5*x - 4
        self.f3 = lambda x: -5*x + 4
        self.idx_correct = 0
        self.idx_selected = 1
        self.cords = self.add_cords([-6, 6, 1], [-12, 12, 2], x_ticks=[-6, 0, 6], y_ticks=[-12, 12])
        self.x = 2

        super().construct()

class Func_2_2_P_4_c(plotLinearFunctionAnswerScene):
        
    def construct(self):

        self.funcText = self.translate("Func_2_2.P4.q.functext")
        self.func = "f(x) = 5x + 4"
        self.f1 = lambda x: 5*x + 4
        self.f2 = lambda x: 5*x - 4
        self.f3 = lambda x: -5*x + 4
        self.idx_correct = 0
        self.idx_selected = 1
        self.cords = self.add_cords([-6, 6, 1], [-12, 12, 2], x_ticks=[-6, 0, 6], y_ticks=[-12, 12])
        self.x = 2

        super().construct()



PROTOTYPES = [
    PagePrototypeVideo.from_scene(Func_2_2_I_1_q),
    PagePrototypeQuestion.from_scene(Func_2_2_I_1_q),
    PagePrototypeVideo.from_scene(Func_2_2_I_1_a),
    PagePrototypeVideo.from_scene(Func_2_2_I_1_b),
    PagePrototypeVideo.from_scene(Func_2_2_I_2),
    PagePrototypeVideo.from_scene(Func_2_2_P_1_q),
    PagePrototypeQuestion.from_scene(Func_2_2_P_1_q),
    PagePrototypeVideo.from_scene(Func_2_2_P_1_a),
    PagePrototypeVideo.from_scene(Func_2_2_P_1_b),
    PagePrototypeVideo.from_scene(Func_2_2_P_1_c),
    PagePrototypeVideo.from_scene(Func_2_2_P_2_q),
    PagePrototypeQuestion.from_scene(Func_2_2_P_2_q),
    PagePrototypeVideo.from_scene(Func_2_2_P_2_a),
    PagePrototypeVideo.from_scene(Func_2_2_P_2_b),
    PagePrototypeVideo.from_scene(Func_2_2_P_2_c),
    PagePrototypeVideo.from_scene(Func_2_2_P_3_q),
    PagePrototypeQuestion.from_scene(Func_2_2_P_3_q),
    PagePrototypeVideo.from_scene(Func_2_2_P_3_a),
    PagePrototypeVideo.from_scene(Func_2_2_P_3_b),
    PagePrototypeVideo.from_scene(Func_2_2_P_3_c),
    PagePrototypeVideo.from_scene(Func_2_2_P_4_q),
    PagePrototypeQuestion.from_scene(Func_2_2_P_4_q),
    PagePrototypeVideo.from_scene(Func_2_2_P_4_a),
    PagePrototypeVideo.from_scene(Func_2_2_P_4_b),
    PagePrototypeVideo.from_scene(Func_2_2_P_4_c),
]