# 2_2: Linear Functions: Term to Graph

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


TASK_Func_2_2_I_1_q = SophiaTaskDefinition(
    answerOptions=["$f(x)=x$", "$f(x)=10\cdot x$", "$f(x)=10+x$"],
    correctAnswerIndex=2,
    questionText="Which function describes our total expenses?"
)

class Func_2_2_I_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        lemonade = ImageMobject(assets_folder / "img" / "lemonade.png").scale(0.3).move_to(LEFT*6.7)

        concert = ImageMobject(assets_folder / "img" / "drums.png").scale(0.3).move_to(UP*1.5+LEFT*6.7)

        # Create a notepad with texts
        note = Notepad(texts=[["Which function best describes", "our total expenses?"], "$f(x)=x$", "$f(x)=10\\cdot x$", "$f(x)=10+x$"], buff=0.2, buff_inner=0)
        self.add(note)

        # Add title to the scene
        title = self.add_title("Drawing Functions")

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        self.add(cursor)

        term = Tex("Term", color=c1t, font_size=fs1).next_to(title, DOWN, buff=1)
        to = Tex("$\\downarrow$", color=c1t, font_size=fs1).next_to(term, DOWN, buff=0.5)
        graph = Tex("Graph", color=c1t, font_size=fs1).next_to(to, DOWN, buff=0.5)

        ticket = Tex("$\\rightarrow 10\\$$ Admission", color=c1t, font_size=fs2).next_to(concert, RIGHT, buff=0).shift(RIGHT*5)
        lemPrice = Tex("$\\rightarrow 1\\$$/Lemonade", color=c1t, font_size=fs2).next_to(lemonade, RIGHT, buff=0).shift(RIGHT*5)

        # Action Sequence
        with self.voiceover(
                text="""
                Okay, let's continue and learn something new!
                
                Specifically, we want to learn the following: <bookmark mark="ttg"/> We are given <bookmark mark="term"/> the term of a function, and we want to <bookmark mark="graph"/> draw the corresponding graph.
                We'll start with an example: We are at <bookmark mark="concert"/> a concert and <bookmark mark="lemonade"/> drinking lemonade. We want to know how much money we are spending.
                
                We pay <bookmark mark="ticket"/> ten dollars for admission and then one dollar for <bookmark mark="lemPrice"/> each lemonade.
                <bookmark mark="note"/>
                Which term describes, in dollars, how much we spend if x represents the number of lemonades?
                
                Is it <bookmark mark="t1"/> the term f of x equals one times x?
                
                Or is it <bookmark mark="t2"/> the term f of x equals ten times x?
                
                Or is it <bookmark mark="t3"/> the term f of x equals ten plus x?
                """
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

            self.wait_until_bookmark("note")
            note.change_colors([0])
            cursor.blinking=False
            x,y,_ = note.texts[0].get_left()+0.3*LEFT
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("t1")
            x,y,_ = note.texts[1].get_left()+0.3*LEFT
            note.change_colors([0,1])
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("t2")
            x,y,_ = note.texts[2].get_left()+0.3*LEFT
            note.change_colors([1,2])
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("t3")
            x,y,_ = note.texts[3].get_left()+0.3*LEFT
            note.change_colors([2,3])
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_2_2_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Create a notepad with texts
        note = Notepad(texts=["$10\\$$ Admission", "$1\\$$ Cost per Lemonade", "$\\rightarrow$Total costs are $f(x)=10+x$"])
        self.add(note)

        # Add title to the scene
        title = self.add_title("Drawing Functions")

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex("f", "(x)", "=", "10", "+", "x", color=c1t, font_size=fs1).next_to(title, DOWN, buff=1.5)
        funcm1, funcm2 = func[-1].copy(), func[-2].copy()

        # Action Sequence
        with self.voiceover(
                text="""
                Unfortunately, that's incorrect.  
                The correct solution is the function <bookmark mark="f"/> f of x equals ten plus x, as this function describes our total expenses.
                
                But how do we arrive at this? And what does it mean?
                It's like this:
                We pay <bookmark mark="firstTen"/> ten dollars for admission, no matter how many lemonades we drink. So, we start with the term <bookmark mark="ff"/> f of <bookmark mark="fx"/> x equals <bookmark mark="ten"/> ten.
                
                <bookmark mark="lemonadeNote"/>
                Since each lemonade costs one dollar, for each lemonade we drink, an additional dollar is added. The variable <bookmark mark="varX"/> x represents the number of lemonades
                we have drunk.
                So, we add <bookmark mark="x"/> x to the function that describes our total expenses.
                
                <bookmark mark="finalNote"/>
                And there you have it, the correct solution, the function <bookmark mark="ff2"/> f of <bookmark mark="fx2"/> x equals <bookmark mark="ten2"/> ten plus <bookmark mark="varX2"/> x.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(func))

            self.wait_until_bookmark("firstTen")
            cursor.blinking=False
            note.change_colors([0])
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

            self.wait_until_bookmark("lemonadeNote")
            note.change_colors([0,1])

            self.wait_until_bookmark("varX")
            cursor.blinking=False
            x,y,_ = func[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y),  run_time=0.4)

            self.wait_until_bookmark("x")
            x,y,_ = func[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(funcm1), Write(funcm2), run_time=0.6)
            self.wait(0.2)
            cursor.blinking=True

            self.wait_until_bookmark("finalNote")
            note.change_colors([1,2])

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
        note = Notepad(texts=["$10\\$$ Admission", "$1\\$$ Cost per Lemonade", "$\\rightarrow$Total costs are $f(x)=10+x$"])
        self.add(note)

        # Add title to the scene
        title = self.add_title("Drawing Functions")

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex("f", "(x)", "=", "10", "+", "x", color=c1t, font_size=fs1).next_to(title, DOWN, buff=1.5)
        funcm1, funcm2 = func[-1].copy(), func[-2].copy()

        # Action Sequence
        with self.voiceover(
                text="""
                Unfortunately, that's incorrect.  
                The correct solution is the function <bookmark mark="f"/> f of x equals ten plus x, as this function describes our total expenses.
                
                But how do we arrive at this? And what does it mean?
                It's like this:
                We pay <bookmark mark="firstTen"/> ten dollars for admission, no matter how many lemonades we drink. So, we start with the term <bookmark mark="ff"/> f of <bookmark mark="fx"/> x equals <bookmark mark="ten"/> ten.
                
                <bookmark mark="lemonadeNote"/>
                Since each lemonade costs one dollar, for each lemonade we drink, an additional dollar is added. The variable <bookmark mark="varX"/> x represents the number of lemonades
                we have drunk.
                So, we add <bookmark mark="x"/> x to the function that describes our total expenses.
                
                <bookmark mark="finalNote"/>
                And there you have it, the correct solution, the function <bookmark mark="ff2"/> f of <bookmark mark="fx2"/> x equals <bookmark mark="ten2"/> ten plus <bookmark mark="varX2"/> x.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(func))

            self.wait_until_bookmark("firstTen")
            cursor.blinking=False
            note.change_colors([0])
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

            self.wait_until_bookmark("lemonadeNote")
            note.change_colors([0,1])

            self.wait_until_bookmark("varX")
            cursor.blinking=False
            x,y,_ = func[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y),  run_time=0.4)

            self.wait_until_bookmark("x")
            x,y,_ = func[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(funcm1), Write(funcm2), run_time=0.6)
            self.wait(0.2)
            cursor.blinking=True

            self.wait_until_bookmark("finalNote")
            note.change_colors([1,2])

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
        note = Notepad(texts=["$10\\$$ Admission", "$1\\$$ Cost per Lemonade", "$\\rightarrow$Total costs are $f(x)=10+x$"])
        self.add(note)

        # Add title to the scene
        title = self.add_title("Drawing Functions")

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        self.add(cursor)

        func = MathTex("f", "(x)", "=", "10", "+", "x", color=c1t, font_size=fs1).next_to(title, DOWN, buff=1.5)
        funcm1, funcm2 = func[-1].copy(), func[-2].copy()

        # Action Sequence
        with self.voiceover(
                text="""
                That's correct.  The function <bookmark mark="f"/> f of x equals ten plus x describes our total expenses.
                
                But how do we arrive at this? And what does it mean?
                It's like this:
                We pay <bookmark mark="firstTen"/> ten dollars for admission, no matter how many lemonades we drink. So, we start with the term <bookmark mark="ff"/> f of <bookmark mark="fx"/> x equals <bookmark mark="ten"/> ten.
                
                <bookmark mark="lemonadeNote"/>
                Since each lemonade costs one dollar, for each lemonade we drink, an additional dollar is added. The variable <bookmark mark="varX"/> x represents the number of lemonades
                we have drunk.
                So, we add <bookmark mark="x"/> x to the function that describes our total expenses.
                
                <bookmark mark="finalNote"/>
                And there you have it, the correct solution, the function <bookmark mark="ff2"/> f of <bookmark mark="fx2"/> x equals <bookmark mark="ten2"/> ten plus <bookmark mark="varX2"/> x.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(func))

            self.wait_until_bookmark("firstTen")
            cursor.blinking=False
            note.change_colors([0])
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

            self.wait_until_bookmark("lemonadeNote")
            note.change_colors([0,1])

            self.wait_until_bookmark("varX")
            cursor.blinking=False
            x,y,_ = func[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y),  run_time=0.4)

            self.wait_until_bookmark("x")
            x,y,_ = func[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(funcm1), Write(funcm2), run_time=0.6)
            self.wait(0.2)
            cursor.blinking=True

            self.wait_until_bookmark("finalNote")
            note.change_colors([1,2])

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
        note = Notepad(texts=["We want to determine function graphs", ["$\\rightarrow$ Plug two $x$-values","into the term of the function"], "$\\rightarrow$ Connect the obtained points"])
        self.add(note)

        # Add title to the scene
        title = self.add_title("Drawing Functions")

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
                text="""
                So now, we have the expression that describes our expenses.
                
                The question now is: <bookmark mark="cords"/> How do we draw the corresponding graph?
                
                We know that the graph is a straight line because our function is linear.
                And to draw a straight line, <bookmark mark="note1"/> we need two points.
                
                For the first point, we always set x to zero. <bookmark mark="x0"/>
                This gives us the value <bookmark mark="ten"/> ten here.
                That's also the intersection point with the upsilon axis...
                Anyway, <bookmark mark="mark1"/> we mark this point.
                
                Next, we set any other value for x.
                Here, for example, we use x equal to <bookmark mark="xten"/> ten because it's easy to calculate.
                By the way, it's always a good idea to use a value that's easy to calculate!
                
                This gives us <bookmark mark="twenty"/> twenty. We also <bookmark mark="mark2"/> mark this point.
                
                So, most of the work is done now. We just need to connect the two points, <bookmark mark="connect"/>
                and the graph is done.
                
                So, in summary: To determine the graph of a linear function, we first set x to zero and
                plot the point. Then we set a different value for x and plot the second point.
                Then we just need to connect the two points, and the graph is done.
                """
        ) as tracker:
            
            self.wait_until_bookmark("cords")
            note.change_colors([0])
            self.play(ReplacementTransform(func_o, func), Write(cords))

            self.wait_until_bookmark("note1")
            note.change_colors([0,1])

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
            x,y,_ = note.texts[-1].get_right()+0.3*RIGHT
            self.play(CursorMoveTo(cursor,x,y), ReplacementTransform(func10, func_original2), run_time=0.8)
            note.change_colors([1,2])

            self.wait_until_bookmark("connect")
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
        title = self.add_title("Drawing Functions")       

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
        note = Notepad(texts=[f"Consider the function ${self.func}$", "What does the graph of this function look like?", "Is it the blue, green, or orange graph?"])
        self.add(note)

        func = MathTex(self.func, color=c1t, font_size=fs1).next_to(title, DOWN, buff=1.5)
        
        with self.voiceover(
                text=f"""
                {self.introText} <bookmark mark="func"/>
                {self.funcText} <bookmark mark="graph"/> 
                {self.qText} 
                
                Is it <bookmark mark="o1"/> the blue graph? 
                Or is it <bookmark mark="o2"/> the green graph? 
                Or is it <bookmark mark="o3"/> the orange graph?
                """
        ) as tracker:
            
            self.wait_until_bookmark("func")
            note.change_colors([0])
            self.play(Write(func))

            self.wait_until_bookmark("graph")
            note.change_colors([0,1])
            self.play(Write(self.cords), func.animate.move_to(self.cords.get_bottom()+0.5*DOWN), run_time=1.5)

            self.wait_until_bookmark("o1")
            note.change_colors([1,2])
            self.play(Write(g1), run_time=1.5)

            self.wait_until_bookmark("o2")
            self.play(Write(g2), run_time=1.5)

            self.wait_until_bookmark("o3")
            self.play(Write(g3), run_time=1.5)
            
        # Wait for 4 seconds at the end of animation
        self.wait(4)

class plotLinearFunctionAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.introText= "Great, that's correct" if self.idx_correct == self.idx_selected else "Unfortunately, that's incorrect."
        self.titleText = "Correct!" if self.idx_correct == self.idx_selected else "Unfortunately Incorrect"
        self.f_correct = self.f1 if self.idx_correct == 0 else self.f2 if self.idx_correct == 1 else self.f3
        self.c_correct = "blue" if self.idx_correct == 0 else "green" if self.idx_correct == 1 else "orange"
        self.color = BLUE if self.idx_correct == 0 else GREEN if self.idx_correct == 1 else ORANGE

        # Add title to the scene
        title = self.add_title(self.titleText)       

        # Initialize a cursor
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.blinking=False

        # Action Sequence
        
        plane = self.cords[0]
        graph = plane.plot(self.f_correct, color=self.color)

        # Create a notepad with texts
        note = Notepad(texts=[f"Consider the function ${self.func}$", "Plug in two x-values", "Connect the points with a straight line"])
        self.add(note)

        func = MathTex(self.func, color=c1t, font_size=fs1).next_to(title, DOWN, buff=1.5)
        
        with self.voiceover(
                text=f"""
                {self.introText} <bookmark mark="func"/>
                The function is {self.funcText}.
                
                To determine the graph, <bookmark mark="note1"/> we need to plug in two x-values. <bookmark mark="cords"/>
                For the first x-value, we use <bookmark mark="x0"/> x equals zero, and we get <bookmark mark="fx0"/> f of Zero equals {get_num(self.f_correct(0))}.
                And for the second value, we plug in <bookmark mark="x"/> x equals {get_num(self.x)}, resulting in <bookmark mark="fx"/> f of {get_num(self.x)} equals {get_num(self.f_correct(self.x))}.
                
                Now, <bookmark mark="graph"/> we connect the two points to obtain the graph of the function, the {self.c_correct} graph.
                """
        ) as tracker:
            
            self.wait_until_bookmark("func")
            note.change_colors([0])
            self.play(Write(func))

            self.wait_until_bookmark("note1")
            note.change_colors([0,1])

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
            note.change_colors([2,1])
            self.play(Write(graph), run_time=1.5)
            
        # Wait for 4 seconds at the end of animation
        self.wait(4)

###########################################
###########################################
# Concrete Questions
###########################################
###########################################

TASK_Func_2_2_P_1_q = SophiaTaskDefinition(
    answerOptions=["Blue", "Green", "Orange"],
    correctAnswerIndex=0,
    questionText="Which of the graphs matches the function?"
)

class Func_2_2_P_1_q(plotLinearFunctionQuestionScene):
        
    def construct(self):

        self.introText = "Now it's your turn. Consider the function"
        self.funcText = "f of x equals two times x plus one."
        self.func = "f(x)=2x+1"
        self.qText = "I am going to show you three different graphs. Which of them matches the term of the function?"
        self.f1 = lambda x: 2*x+1
        self.f2 = lambda x: 2*x-1
        self.f3 = lambda x: -2*x+1
        self.cords = self.add_cords([-3, 3, 1], [-6, 6, 2], x_ticks=[-3,0,3], y_ticks=[-6,6])

        super().construct()

class Func_2_2_P_1_a(plotLinearFunctionAnswerScene):
        
    def construct(self):

        self.funcText = "f of x equals two times x plus one."
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

        self.funcText = "f of x equals two times x plus one."
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

        self.funcText = "f of x equals two times x plus one."
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
TASK_Func_2_2_P_2_q = SophiaTaskDefinition(
    answerOptions=["Blue", "Green", "Orange"],
    correctAnswerIndex=2,
    questionText="Which of the graphs matches the function?"
)
class Func_2_2_P_2_q(plotLinearFunctionQuestionScene):
        
    def construct(self):

        self.introText = "Consider the following function"
        self.funcText = "f of x equals negative three times x plus two."
        self.func = "f(x) = -3x + 2"
        self.qText = "I will now show you three graphs. Which of them corresponds to the function?"
        self.f1 = lambda x: 3*x + 2
        self.f2 = lambda x: 3*x - 2
        self.f3 = lambda x: -3*x + 2
        self.cords = self.add_cords([-4, 4, 1], [-10, 10, 2], x_ticks=[-4, 0, 4], y_ticks=[-8, 8])

        super().construct()

class Func_2_2_P_2_a(plotLinearFunctionAnswerScene):
        
    def construct(self):

        self.funcText = "f of x equals negative three times x plus two."
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

        self.funcText = "f of x equals negative three times x plus two."
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

        self.funcText = "f of x equals negative three times x plus two."
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
TASK_Func_2_2_P_3_q = SophiaTaskDefinition(
    answerOptions=["Blue", "Green", "Orange"],
    correctAnswerIndex=1,
    questionText="Which of the graphs matches the function?"
)
class Func_2_2_P_3_q(plotLinearFunctionQuestionScene):
        
    def construct(self):

        self.introText = "Time for another function exercise. Let's examine the following function:"
        self.funcText = "The function f of x is given by four times x plus three."
        self.func = "f(x) = 4x + 3"
        self.qText = "Three graphs will be displayed. Which one matches the function?"
        self.f1 = lambda x: 4*x - 3
        self.f2 = lambda x: 4*x + 3
        self.f3 = lambda x: -4*x - 3
        self.cords = self.add_cords([-2, 2, 1], [-10, 10, 2], x_ticks=[-2, 0, 2], y_ticks=[-10, 10])

        super().construct()

class Func_2_2_P_3_a(plotLinearFunctionAnswerScene):
        
    def construct(self):

        self.funcText = "The function f(x) is given by four times x minus three."
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

        self.funcText = "The function f(x) is given by four times x minus three."
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

        self.funcText = "The function f(x) is given by four times x minus three."
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
TASK_Func_2_2_P_4_q = SophiaTaskDefinition(
    answerOptions=["Blue", "Green", "Orange"],
    correctAnswerIndex=1,
    questionText="Which of the graphs matches the function?"
)
class Func_2_2_P_4_q(plotLinearFunctionQuestionScene):
        
    def construct(self):

        self.introText = "Let's delve into another function puzzle. Consider this equation"
        self.funcText = "The function f(x) is defined as five times x plus four."
        self.func = "f(x) = 5x + 4"
        self.qText = "Three graphs will be shown. Which one corresponds to the function?"
        self.f1 = lambda x: 5*x + 4
        self.f2 = lambda x: 5*x - 4
        self.f3 = lambda x: -5*x + 4
        self.cords = self.add_cords([-3, 3, 1], [-15, 15, 5], x_ticks=[-3, 0, 3], y_ticks=[-15, 15])

        super().construct()

class Func_2_2_P_4_a(plotLinearFunctionAnswerScene):
        
    def construct(self):

        self.funcText = "The function f(x) is defined as five times x plus four."
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

        self.funcText = "The function f(x) is defined as five times x plus four."
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

        self.funcText = "The function f(x) is defined as five times x plus four."
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
    PagePrototypeQuestion.from_task_definition(TASK_Func_2_2_I_1_q, Func_2_2_I_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_2_2_I_1_a),
    PagePrototypeVideo.from_scene(Func_2_2_I_1_b),
    PagePrototypeVideo.from_scene(Func_2_2_I_2),
    PagePrototypeVideo.from_scene(Func_2_2_P_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_2_2_P_1_q, Func_2_2_P_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_2_2_P_1_a),
    PagePrototypeVideo.from_scene(Func_2_2_P_1_b),
    PagePrototypeVideo.from_scene(Func_2_2_P_1_c),
    PagePrototypeVideo.from_scene(Func_2_2_P_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_2_2_P_2_q, Func_2_2_P_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_2_2_P_2_a),
    PagePrototypeVideo.from_scene(Func_2_2_P_2_b),
    PagePrototypeVideo.from_scene(Func_2_2_P_2_c),
    PagePrototypeVideo.from_scene(Func_2_2_P_3_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_2_2_P_3_q, Func_2_2_P_3_q.__name__),
    PagePrototypeVideo.from_scene(Func_2_2_P_3_a),
    PagePrototypeVideo.from_scene(Func_2_2_P_3_b),
    PagePrototypeVideo.from_scene(Func_2_2_P_3_c),
    PagePrototypeVideo.from_scene(Func_2_2_P_4_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_2_2_P_4_q, Func_2_2_P_4_q.__name__),
    PagePrototypeVideo.from_scene(Func_2_2_P_4_a),
    PagePrototypeVideo.from_scene(Func_2_2_P_4_b),
    PagePrototypeVideo.from_scene(Func_2_2_P_4_c),
]