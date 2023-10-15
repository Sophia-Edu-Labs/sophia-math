    # 3_1: Fractional Rational Functions: Intro

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
class Func_3_1_I_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_3_1.I1.title"))

        # Create the coordinate system
        cords = self.add_cords([-4,4, 1], [-3, 3, 1], x_ticks=[-4,-2,2,4],y_ticks=[-3,-2,-1,1,2,3]).shift(DOWN)
        plane = cords[0]
        self.add(cords)
        
        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(idle=True, x=xo, y=yo, autoFadeBackground=False)
        self.add(cursor)

        func = lambda x: x/2
        func_plotted = plane.plot(func, color=RED)

        func_general = MathTex("f(x) = ax + b", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.4)
        func_ex = MathTex("f(x) = 0.5x", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_1.I1.voiceover")
        ) as tracker:

            self.wait_until_bookmark("linear")
            self.add_pencil_sound(1.5)
            self.play(Write(func_plotted))

            self.wait_until_bookmark("funcTerm")
            self.play(Write(func_general))

            self.wait_until_bookmark("thisFunc")
            cursor.idle=False
            self.play(CursorUnderline(cursor, func_ex), ReplacementTransform(func_general, func_ex))

            self.wait_until_bookmark("reset_cursor")
            self.play(CursorMoveResize(cursor, xo, yo, 0.2, 0.2))
            cursor.idle=True

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

        self.add_title(self.translate("Func_3_1.I2.title"))

        # Create a notepad with texts
        # note = Notepad(texts=["Consider function $f(x)=\\tfrac1x$", "Plug in several values",["f decreases fast at first", "and then decreases more slowly"]], buff=0.3)
        # self.add(note)

        # Create the coordinate system
        cords = self.add_cords([0,4, 1], [0, 4, 1], x_ticks=[1,2,3,4],y_ticks=[1,2,3,4]).shift(DOWN)
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
                text=self.translate("Func_3_1.I2.voiceover")
        ) as tracker:

            self.wait_until_bookmark("funcA")
            self.play(Write(func_general))

            self.wait_until_bookmark("funcG")
            self.play(ReplacementTransform(func_general, func_ex))

            self.wait_until_bookmark("cords")
            self.play(Write(cords))
            self.add(cursor)

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
class Func_3_1_I_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_3_1.I3.q.answer-options")),
            correctAnswerIndex=2,
            questionText = self.translate("Func_3_1.I3.q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate(""))

        # Create a notepad with texts
        # note = Notepad(texts=[["$x$ gets closer to zero","$\\rightarrow f(x)$ increases quickly"], ["$\\rightarrow$ What will happen,","     if we plug in $x=0$"]], buff=0.3)
        # self.add(note)

        # Create the coordinate system
        func = lambda x: 1/x
        cordsOld = self.add_cords([0,4, 1], [0, 4, 1], x_ticks=[1,2,3,4],y_ticks=[1,2,3,4]).shift(DOWN)
        planeOld = cordsOld[0]
        func_plotted_Old = planeOld.plot(func, color=RED, x_range=[1/4, 4, 0.01], use_smoothing=False).reverse_points()
        self.add(func_plotted_Old, cordsOld)


        cords = self.add_cords([0,1, 0.2], [0, 10, 2], x_ticks=[0.2*(x+1) for x in range(5)],y_ticks=[2,4,6,8,10], x_labels=[*[np.round(0.2*(x+1),1) for x in range(4)],'1'],).shift(DOWN)
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
                text=self.translate("Func_3_1.I3.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("closerTo0")
            cursor.blinking=False
            x,y,_ = planeOld.c2p(4,1/4)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.play(MoveAlongPath(cursor, func_plotted_Old), run_time=5)
            cursor.blinking=True

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

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_1_I_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_3_1.I3.a.title"))

        warningsign = ImageMobject(assets_folder / "img" / "warningsign.png").move_to([-5,1,0])
        warningsign = warningsign.scale(3.8/warningsign.get_width())

        # Create a notepad with texts
        # note = Notepad(texts=[["Plug in $x=0$", "$\\rightarrow$We get $f(0)=\\frac10$"], ["It's not possible to divide by $0$","$\\rightarrow f(0)$ is undefined"]], buff=0.3)
        # self.add(note)



        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        func = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs1)
        func_0 = MathTex("f(0) = \\tfrac 10", color=c1t, font_size=fs1)
        cross_0 = Cross(color=RED)
        zero = Group(func_0, cross_0)

        f = lambda x: 1/x
        cords = self.add_cords([0,4, 1], [0, 4, 1], x_ticks=[1,2,3,4],y_ticks=[1,2,3,4]).shift(DOWN)
        plane = cords[0]
        func_plotted = plane.plot(f, color=RED, x_range=[1/4, 4, 0.01], use_smoothing=False).reverse_points()

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_1.I3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("warning")
            self.play(warningsign.animate.shift(RIGHT*5), run_time=0.4)
            self.wait(0.8)
            self.play(warningsign.animate.shift(RIGHT*5), run_time=0.4)

            self.wait_until_bookmark("func")
            self.play(Write(func))

            self.wait_until_bookmark("f0")
            self.play(ReplacementTransform(func, func_0))

            self.wait_until_bookmark("cross")
            self.play(Write(cross_0), run_time=4)

            self.wait_until_bookmark("domain")
            self.play(zero.animate.shift(UP*1.5), run_time=0.5)
            warning1 = Tex(self.translate("Func_3_1.I3.a.warning"), color=c1t, font_size=fs2)
            warning2 = MathTex("x\\neq0", color=c1t, font_size=fs2).next_to(warning1, DOWN, buff=0.1)
            warning = VGroup(warning1, warning2).arrange(DOWN).next_to(zero, DOWN, buff=0.4)
            self.play(Write(warning), run_time=0.8)

            self.wait_until_bookmark("cords")
            anims = [Write(cords), warning1.animate.shift(DOWN*1.55), warning2.animate.shift(DOWN*1.35), zero.animate.shift(5*RIGHT)]
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

        self.add_title(self.translate("Func_3_1.I3.a.title"))

        warningsign = ImageMobject(assets_folder / "img" / "warningsign.png").move_to([-5,1,0])
        warningsign = warningsign.scale(3.8/warningsign.get_width())

        # Create a notepad with texts
        # note = Notepad(texts=[["Plug in $x=0$", "$\\rightarrow$We get $f(0)=\\frac10$"], ["It's not possible to divide by $0$","$\\rightarrow f(0)$ is undefined"]], buff=0.3)
        # self.add(note)



        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        func = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs1)
        func_0 = MathTex("f(0) = \\tfrac 10", color=c1t, font_size=fs1)
        cross_0 = Cross(color=RED)
        zero = Group(func_0, cross_0)

        f = lambda x: 1/x
        cords = self.add_cords([0,4, 1], [0, 4, 1], x_ticks=[1,2,3,4],y_ticks=[1,2,3,4]).shift(DOWN)
        plane = cords[0]
        func_plotted = plane.plot(f, color=RED, x_range=[1/4, 4, 0.01], use_smoothing=False).reverse_points()

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_1.I3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("warning")
            self.play(warningsign.animate.shift(RIGHT*5), run_time=0.4)
            self.wait(0.8)
            self.play(warningsign.animate.shift(RIGHT*5), run_time=0.4)

            self.wait_until_bookmark("func")
            self.play(Write(func))

            self.wait_until_bookmark("f0")
            self.play(ReplacementTransform(func, func_0))

            self.wait_until_bookmark("cross")
            self.play(Write(cross_0), run_time=4)

            self.wait_until_bookmark("domain")
            self.play(zero.animate.shift(UP*1.5), run_time=0.5)
            warning1 = Tex(self.translate("Func_3_1.I3.a.warning"), color=c1t, font_size=fs2)
            warning2 = MathTex("x\\neq0", color=c1t, font_size=fs2).next_to(warning1, DOWN, buff=0.1)
            warning = VGroup(warning1, warning2).arrange(DOWN).next_to(zero, DOWN, buff=0.4)
            self.play(Write(warning), run_time=0.8)

            self.wait_until_bookmark("cords")
            anims = [Write(cords), warning1.animate.shift(DOWN*1.55), warning2.animate.shift(DOWN*1.35), zero.animate.shift(5*RIGHT)]
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

        self.add_title(self.translate("Func_3_1.I3.a.title"))

        warningsign = ImageMobject(assets_folder / "img" / "warningsign.png").move_to([-5,1,0])
        warningsign = warningsign.scale(3.8/warningsign.get_width())

        # Create a notepad with texts
        # note = Notepad(texts=[["Plug in $x=0$", "$\\rightarrow$We get $f(0)=\\frac10$"], ["It's not possible to divide by $0$","$\\rightarrow f(0)$ is undefined"]], buff=0.3)
        # self.add(note)



        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        func = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs1)
        func_0 = MathTex("f(0) = \\tfrac 10", color=c1t, font_size=fs1)
        cross_0 = Cross(color=RED)
        zero = Group(func_0, cross_0)

        f = lambda x: 1/x
        cords = self.add_cords([0,4, 1], [0, 4, 1], x_ticks=[1,2,3,4],y_ticks=[1,2,3,4]).shift(DOWN)
        plane = cords[0]
        func_plotted = plane.plot(f, color=RED, x_range=[1/4, 4, 0.01], use_smoothing=False).reverse_points()

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_1.I3.c.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("warning")
            self.play(warningsign.animate.shift(RIGHT*5), run_time=0.4)
            self.wait(0.8)
            self.play(warningsign.animate.shift(RIGHT*5), run_time=0.4)

            self.wait_until_bookmark("func")
            self.play(Write(func))

            self.wait_until_bookmark("f0")
            self.play(ReplacementTransform(func, func_0))

            self.wait_until_bookmark("cross")
            self.play(Write(cross_0), run_time=4)

            self.wait_until_bookmark("domain")
            self.play(zero.animate.shift(UP*1.5), run_time=0.5)
            warning1 = Tex(self.translate("Func_3_1.I3.a.warning"), color=c1t, font_size=fs2)
            warning2 = MathTex("x\\neq0", color=c1t, font_size=fs2).next_to(warning1, DOWN, buff=0.1)
            warning = VGroup(warning1, warning2).arrange(DOWN).next_to(zero, DOWN, buff=0.4)
            self.play(Write(warning), run_time=0.8)

            self.wait_until_bookmark("cords")
            anims = [Write(cords), warning1.animate.shift(DOWN*1.55), warning2.animate.shift(DOWN*1.35), zero.animate.shift(5*RIGHT)]
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

        self.add_title(self.translate("Func_3_1.I3.a.title"))

        warningsign = ImageMobject(assets_folder / "img" / "warningsign.png").move_to([-5,1,0])
        warningsign = warningsign.scale(3.8/warningsign.get_width())

        # Create a notepad with texts
        # note = Notepad(texts=[["Plug in $x=0$", "$\\rightarrow$We get $f(0)=\\frac10$"], ["It's not possible to divide by $0$","$\\rightarrow f(0)$ is undefined"]], buff=0.3)
        # self.add(note)



        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        func = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs1)
        func_0 = MathTex("f(0) = \\tfrac 10", color=c1t, font_size=fs1)
        cross_0 = Cross(color=RED)
        zero = Group(func_0, cross_0)

        f = lambda x: 1/x
        cords = self.add_cords([0,4, 1], [0, 4, 1], x_ticks=[1,2,3,4],y_ticks=[1,2,3,4]).shift(DOWN)
        plane = cords[0]
        func_plotted = plane.plot(f, color=RED, x_range=[1/4, 4, 0.01], use_smoothing=False).reverse_points()

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_1.I3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("warning")
            self.play(warningsign.animate.shift(RIGHT*5), run_time=0.4)
            self.wait(0.8)
            self.play(warningsign.animate.shift(RIGHT*5), run_time=0.4)

            self.wait_until_bookmark("func")
            self.play(Write(func))

            self.wait_until_bookmark("f0")
            self.play(ReplacementTransform(func, func_0))

            self.wait_until_bookmark("cross")
            self.play(Write(cross_0), run_time=4)

            self.wait_until_bookmark("domain")
            self.play(zero.animate.shift(UP*1.5), run_time=0.5)
            warning1 = Tex(self.translate("Func_3_1.I3.a.warning"), color=c1t, font_size=fs2)
            warning2 = MathTex("x\\neq0", color=c1t, font_size=fs2).next_to(warning1, DOWN, buff=0.1)
            warning = VGroup(warning1, warning2).arrange(DOWN).next_to(zero, DOWN, buff=0.4)
            self.play(Write(warning), run_time=0.8)

            self.wait_until_bookmark("cords")
            anims = [Write(cords), warning1.animate.shift(DOWN*1.55), warning2.animate.shift(DOWN*1.35), zero.animate.shift(5*RIGHT)]
            self.play(*anims, run_time=1)
            self.play(Write(func_plotted, rate_func=rate_functions.ease_out_sine), run_time=9)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)



#####################################
#####################################
class Func_3_1_I_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_3_1.I4.q.answer-options")),
            correctAnswerIndex=3,
            questionText = self.translate("Func_3_1.I4.q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_3_1.I4.q.title"))

        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)   

        f = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs1)
        f0 = MathTex("f(0) = \\tfrac 10", color=c1t, font_size=fs1)
        f_f = f.copy()
        f1 = Tex(self.translate("Func_3_1.I4.q.f1"), color=c1t, font_size=fs2)
        f2 = Tex(self.translate("Func_3_1.I4.q.f2"), color=c1t, font_size=fs2)
        f12 = VGroup(f1, f2).arrange(DOWN, aligned_edge=RIGHT, buff=0.2).next_to(f, DOWN, buff=0.2)
        g = MathTex("g(x) = \\tfrac 2{x+2}", color=RED, font_size=fs1).shift(DOWN*0.6)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_1.I4.q.voiceover")
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

        title = self.add_title(self.translate("Func_3_1.I4.q.title"))

        cursor = AltCursor(blinking=False, stroke_width=0)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        S1 = Tex(self.translate("Func_3_1.I4.q.S1"), color=c1t, font_size=fs2).next_to(title, DOWN, buff=2)
        S2 = Tex(self.translate("Func_3_1.I4.q.S2"), color=c1t, font_size=fs2).next_to(S1, DOWN, buff=0.2)
        S3a = Tex(self.translate("Func_3_1.I4.q.S3a"), color=c1t, font_size=fs2)
        S3b = Tex(self.translate("Func_3_1.I4.q.S3b"), color=c1t, font_size=fs2)
        S3 = VGroup(S3a, S3b).arrange(DOWN, buff=0.1).next_to(S2, DOWN, buff=0.2)
        S = VGroup(S1, S2, S3)

        g = MathTex("g","(x)", "=", "\\tfrac 2{x+2}", color=c1t, font_size=fs1).next_to(title, DOWN, buff=2)

        step1 = MathTex("x+2", "=", "0", color=c1t, font_size=fs1).next_to(g, DOWN, buff=1.5)
        step2 = MathTex("\\Downarrow", color=c1t, font_size=fs1).next_to(step1, DOWN, buff=0.5)
        step3 = MathTex("x", "=", "-2", color=c1t, font_size=fs1).next_to(step2, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_1.I4.a.voiceover")
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

        title = self.add_title(self.translate("Func_3_1.I4.q.title"))

        cursor = AltCursor(blinking=False, stroke_width=0)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        S1 = Tex(self.translate("Func_3_1.I4.q.S1"), color=c1t, font_size=fs2).next_to(title, DOWN, buff=2)
        S2 = Tex(self.translate("Func_3_1.I4.q.S2"), color=c1t, font_size=fs2).next_to(S1, DOWN, buff=0.2)
        S3a = Tex(self.translate("Func_3_1.I4.q.S3a"), color=c1t, font_size=fs2)
        S3b = Tex(self.translate("Func_3_1.I4.q.S3b"), color=c1t, font_size=fs2)
        S3 = VGroup(S3a, S3b).arrange(DOWN, buff=0.1).next_to(S2, DOWN, buff=0.2)
        S = VGroup(S1, S2, S3)

        g = MathTex("g","(x)", "=", "\\tfrac 2{x+2}", color=c1t, font_size=fs1).next_to(title, DOWN, buff=2)

        step1 = MathTex("x+2", "=", "0", color=c1t, font_size=fs1).next_to(g, DOWN, buff=1.5)
        step2 = MathTex("\\Downarrow", color=c1t, font_size=fs1).next_to(step1, DOWN, buff=0.5)
        step3 = MathTex("x", "=", "-2", color=c1t, font_size=fs1).next_to(step2, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_1.I4.a.voiceover")
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

        title = self.add_title(self.translate("Func_3_1.I4.q.title"))

        cursor = AltCursor(blinking=False, stroke_width=0)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        S1 = Tex(self.translate("Func_3_1.I4.q.S1"), color=c1t, font_size=fs2).next_to(title, DOWN, buff=2)
        S2 = Tex(self.translate("Func_3_1.I4.q.S2"), color=c1t, font_size=fs2).next_to(S1, DOWN, buff=0.2)
        S3a = Tex(self.translate("Func_3_1.I4.q.S3a"), color=c1t, font_size=fs2)
        S3b = Tex(self.translate("Func_3_1.I4.q.S3b"), color=c1t, font_size=fs2)
        S3 = VGroup(S3a, S3b).arrange(DOWN, buff=0.1).next_to(S2, DOWN, buff=0.2)
        S = VGroup(S1, S2, S3)

        g = MathTex("g","(x)", "=", "\\tfrac 2{x+2}", color=c1t, font_size=fs1).next_to(title, DOWN, buff=2)

        step1 = MathTex("x+2", "=", "0", color=c1t, font_size=fs1).next_to(g, DOWN, buff=1.5)
        step2 = MathTex("\\Downarrow", color=c1t, font_size=fs1).next_to(step1, DOWN, buff=0.5)
        step3 = MathTex("x", "=", "-2", color=c1t, font_size=fs1).next_to(step2, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_1.I4.a.voiceover")
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

        title = self.add_title(self.translate("Func_3_1.I4.q.title"))

        cursor = AltCursor(blinking=False, stroke_width=0)
        cursor.autoFadeBackground = True
        # cursor.move_to([xo, yo, 0])
        # self.add(cursor)

        S1 = Tex(self.translate("Func_3_1.I4.q.S1"), color=c1t, font_size=fs2).next_to(title, DOWN, buff=2)
        S2 = Tex(self.translate("Func_3_1.I4.q.S2"), color=c1t, font_size=fs2).next_to(S1, DOWN, buff=0.2)
        S3a = Tex(self.translate("Func_3_1.I4.q.S3a"), color=c1t, font_size=fs2)
        S3b = Tex(self.translate("Func_3_1.I4.q.S3b"), color=c1t, font_size=fs2)
        S3 = VGroup(S3a, S3b).arrange(DOWN, buff=0.1).next_to(S2, DOWN, buff=0.2)
        S = VGroup(S1, S2, S3)

        g = MathTex("g","(x)", "=", "\\tfrac 2{x+2}", color=c1t, font_size=fs1).next_to(title, DOWN, buff=2)

        step1 = MathTex("x+2", "=", "0", color=c1t, font_size=fs1).next_to(g, DOWN, buff=1.5)
        step2 = MathTex("\\Downarrow", color=c1t, font_size=fs1).next_to(step1, DOWN, buff=0.5)
        step3 = MathTex("x", "=", "-2", color=c1t, font_size=fs1).next_to(step2, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_1.I4.d.voiceover")
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

        self.add_title(self.translate("Func_3_1.I5.title"))

       
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
                text=self.translate("Func_3_1.I5.voiceover")
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
                text=self.translate("Func_3_1.I5.voiceover2")
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
class Func_3_1_I_6_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_3_1.I6.q.answer-options")),
            correctAnswerIndex=2,
            questionText = self.translate("Func_3_1.I6.q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # note = Notepad(texts=["$\\frac1x$ is positive for $x>0$", "f(x) gets smaller for large values of $x$", ["Is there a positive number, that is smaller than", "the smallest value $f(x)$ can have?"]], buff=0.28)
        # self.add(note)

        self.add_title(self.translate("Func_3_1.I6.q.title"))

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
                Ok, so we know, that for the function <bookmark mark="f"/> f of x equals one divided by x, the values don't get <bookmark mark="cords"/> negative for larger x, because one divided by something positive is always positive.
                
                We've also seen, that <bookmark mark="plot"/> the function values get closer and closer to zero, as we plug in larger and larger x-values.
                
                Now I have a question for you but it's a bit tricky: Is there a positive number, that is smaller than the smallest value, that f of x can reach?
                
                I mean, is there a positive number, that is smaller than one divided by 100 and smaller than 1 over 1000 and smaller than 1 over ten thousand and so on?
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(f), run_time=1)

            self.wait_until_bookmark("cords")
            self.play(Write(cords), f.animate.shift(DOWN*0.6), run_time=1)

            self.wait_until_bookmark("plot")
            self.play(Write(f_plotted), run_time=12, rate_func=rate_functions.ease_out_sine)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_1_I_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_1.I6.a.title"))

        cords = self.add_cords([0,100, 20], [0, 1, 1/4], x_ticks=[20,40,60,80],y_ticks=[0,0.25, 0.5, 0.75,1])
        plane = cords[0]

        cursor = AltCursor(stroke_width=0.0, blinking=False)
        cursor.autoFadeBackground = True
        x,y,_ = plane.c2p(0,0)
        cursor.move_to([x,y,0])

        f = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs2)
        t1a = Tex(self.translate("Func_3_1.I6.a.t1a"), color=c1t, font_size=fs3).next_to(f, UP)
        t1b = Tex(self.translate("Func_3_1.I6.a.t1b"), color=c1t, font_size=fs3).next_to(t1a, UP, buff=0.1)
        t2 = Tex(self.translate("Func_3_1.I6.a.t2"), color=c1t, font_size=fs3).next_to(f, DOWN)
        t1a = t1a.shift(LEFT*(t1a.get_left()[0]-t1b.get_left()[0]))
        t = VGroup(t1b, t1a, t2)
        t2 = t2.shift(LEFT*(t2.get_left()[0]-t1b.get_left()[0]))
        self.add(f)

        s1 = Tex(self.translate("Func_3_1.I6.a.s1"), color=RED, font_size=fs3).next_to(f, UP)
        e1 = Tex(self.translate("Func_3_1.I6.a.e1"), color=BLUE, font_size=fs3).next_to(f,DOWN)

        s2 = Tex(self.translate("Func_3_1.I6.a.s2"), color=RED, font_size=fs3).next_to(f, UP)
        s2 = s2.shift(LEFT*(s2.get_left()[0]-s1.get_left()[0]))
        e2 = Tex(self.translate("Func_3_1.I6.a.e2"), color=BLUE, font_size=fs3).next_to(f,DOWN)

        s3 = Tex(self.translate("Func_3_1.I6.a.s3"), color=RED, font_size=fs3).next_to(f, UP)
        s3 = s3.shift(LEFT*(s3.get_left()[0]-s1.get_left()[0]))
        e3 = MathTex("\\hat a=\\frac{1}{2000}","=f(2000)","<a", color=BLUE, font_size=fs3).next_to(f,DOWN)

        pbc = Tex(self.translate("Func_3_1.I6.a.pbc"), color=RED, font_size=fs3).next_to(title, DOWN, buff=0.4)

        func = lambda x: 1/x
        f_plotted = plane.plot(func, color=RED, x_range=[1, 100, 0.01], use_smoothing=False)

        t = t.shift(LEFT*5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_1.I6.a.voiceover")
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

        title = self.add_title(self.translate("Func_3_1.I6.a.title"))

        cords = self.add_cords([0,100, 20], [0, 1, 1/4], x_ticks=[20,40,60,80],y_ticks=[0,0.25, 0.5, 0.75,1])
        plane = cords[0]

        cursor = AltCursor(stroke_width=0.0, blinking=False)
        cursor.autoFadeBackground = True
        x,y,_ = plane.c2p(0,0)
        cursor.move_to([x,y,0])

        f = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs2)
        t1a = Tex(self.translate("Func_3_1.I6.a.t1a"), color=c1t, font_size=fs3).next_to(f, UP)
        t1b = Tex(self.translate("Func_3_1.I6.a.t1b"), color=c1t, font_size=fs3).next_to(t1a, UP, buff=0.1)
        t2 = Tex(self.translate("Func_3_1.I6.a.t2"), color=c1t, font_size=fs3).next_to(f, DOWN)
        t1a = t1a.shift(LEFT*(t1a.get_left()[0]-t1b.get_left()[0]))
        t = VGroup(t1b, t1a, t2)
        t2 = t2.shift(LEFT*(t2.get_left()[0]-t1b.get_left()[0]))
        self.add(f)

        s1 = Tex(self.translate("Func_3_1.I6.a.s1"), color=RED, font_size=fs3).next_to(f, UP)
        e1 = Tex(self.translate("Func_3_1.I6.a.e1"), color=BLUE, font_size=fs3).next_to(f,DOWN)

        s2 = Tex(self.translate("Func_3_1.I6.a.s2"), color=RED, font_size=fs3).next_to(f, UP)
        s2 = s2.shift(LEFT*(s2.get_left()[0]-s1.get_left()[0]))
        e2 = Tex(self.translate("Func_3_1.I6.a.e2"), color=BLUE, font_size=fs3).next_to(f,DOWN)

        s3 = Tex(self.translate("Func_3_1.I6.a.s3"), color=RED, font_size=fs3).next_to(f, UP)
        s3 = s3.shift(LEFT*(s3.get_left()[0]-s1.get_left()[0]))
        e3 = MathTex("\\hat a=\\frac{1}{2000}","=f(2000)","<a", color=BLUE, font_size=fs3).next_to(f,DOWN)

        pbc = Tex(self.translate("Func_3_1.I6.a.pbc"), color=RED, font_size=fs3).next_to(title, DOWN, buff=0.4)

        func = lambda x: 1/x
        f_plotted = plane.plot(func, color=RED, x_range=[1, 100, 0.01], use_smoothing=False)

        t = t.shift(LEFT*5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_1.I6.a.voiceover")
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

        title = self.add_title(self.translate("Func_3_1.I6.a.title"))

        cords = self.add_cords([0,100, 20], [0, 1, 1/4], x_ticks=[20,40,60,80],y_ticks=[0,0.25, 0.5, 0.75,1])
        plane = cords[0]

        cursor = AltCursor(stroke_width=0.0, blinking=False)
        cursor.autoFadeBackground = True
        x,y,_ = plane.c2p(0,0)
        cursor.move_to([x,y,0])

        f = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs2)
        t1a = Tex(self.translate("Func_3_1.I6.a.t1a"), color=c1t, font_size=fs3).next_to(f, UP)
        t1b = Tex(self.translate("Func_3_1.I6.a.t1b"), color=c1t, font_size=fs3).next_to(t1a, UP, buff=0.1)
        t2 = Tex(self.translate("Func_3_1.I6.a.t2"), color=c1t, font_size=fs3).next_to(f, DOWN)
        t1a = t1a.shift(LEFT*(t1a.get_left()[0]-t1b.get_left()[0]))
        t = VGroup(t1b, t1a, t2)
        t2 = t2.shift(LEFT*(t2.get_left()[0]-t1b.get_left()[0]))
        self.add(f)

        s1 = Tex(self.translate("Func_3_1.I6.a.s1"), color=RED, font_size=fs3).next_to(f, UP)
        e1 = Tex(self.translate("Func_3_1.I6.a.e1"), color=BLUE, font_size=fs3).next_to(f,DOWN)

        s2 = Tex(self.translate("Func_3_1.I6.a.s2"), color=RED, font_size=fs3).next_to(f, UP)
        s2 = s2.shift(LEFT*(s2.get_left()[0]-s1.get_left()[0]))
        e2 = Tex(self.translate("Func_3_1.I6.a.e2"), color=BLUE, font_size=fs3).next_to(f,DOWN)

        s3 = Tex(self.translate("Func_3_1.I6.a.s3"), color=RED, font_size=fs3).next_to(f, UP)
        s3 = s3.shift(LEFT*(s3.get_left()[0]-s1.get_left()[0]))
        e3 = MathTex("\\hat a=\\frac{1}{2000}","=f(2000)","<a", color=BLUE, font_size=fs3).next_to(f,DOWN)

        pbc = Tex(self.translate("Func_3_1.I6.a.pbc"), color=RED, font_size=fs3).next_to(title, DOWN, buff=0.4)

        func = lambda x: 1/x
        f_plotted = plane.plot(func, color=RED, x_range=[1, 100, 0.01], use_smoothing=False)

        t = t.shift(LEFT*5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_1.I6.c.voiceover")
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

        title = self.add_title(self.translate("Func_3_1.I6.a.title"))

        cords = self.add_cords([0,100, 20], [0, 1, 1/4], x_ticks=[20,40,60,80],y_ticks=[0,0.25, 0.5, 0.75,1])
        plane = cords[0]

        cursor = AltCursor(stroke_width=0.0, blinking=False)
        cursor.autoFadeBackground = True
        x,y,_ = plane.c2p(0,0)
        cursor.move_to([x,y,0])

        f = MathTex("f(x) = \\tfrac 1x", color=c1t, font_size=fs2)
        t1a = Tex(self.translate("Func_3_1.I6.a.t1a"), color=c1t, font_size=fs3).next_to(f, UP)
        t1b = Tex(self.translate("Func_3_1.I6.a.t1b"), color=c1t, font_size=fs3).next_to(t1a, UP, buff=0.1)
        t2 = Tex(self.translate("Func_3_1.I6.a.t2"), color=c1t, font_size=fs3).next_to(f, DOWN)
        t1a = t1a.shift(LEFT*(t1a.get_left()[0]-t1b.get_left()[0]))
        t = VGroup(t1b, t1a, t2)
        t2 = t2.shift(LEFT*(t2.get_left()[0]-t1b.get_left()[0]))
        self.add(f)

        s1 = Tex(self.translate("Func_3_1.I6.a.s1"), color=RED, font_size=fs3).next_to(f, UP)
        e1 = Tex(self.translate("Func_3_1.I6.a.e1"), color=BLUE, font_size=fs3).next_to(f,DOWN)

        s2 = Tex(self.translate("Func_3_1.I6.a.s2"), color=RED, font_size=fs3).next_to(f, UP)
        s2 = s2.shift(LEFT*(s2.get_left()[0]-s1.get_left()[0]))
        e2 = Tex(self.translate("Func_3_1.I6.a.e2"), color=BLUE, font_size=fs3).next_to(f,DOWN)

        s3 = Tex(self.translate("Func_3_1.I6.a.s3"), color=RED, font_size=fs3).next_to(f, UP)
        s3 = s3.shift(LEFT*(s3.get_left()[0]-s1.get_left()[0]))
        e3 = MathTex("\\hat a=\\frac{1}{2000}","=f(2000)","<a", color=BLUE, font_size=fs3).next_to(f,DOWN)

        pbc = Tex(self.translate("Func_3_1.I6.a.pbc"), color=RED, font_size=fs3).next_to(title, DOWN, buff=0.4)

        func = lambda x: 1/x
        f_plotted = plane.plot(func, color=RED, x_range=[1, 100, 0.01], use_smoothing=False)

        t = t.shift(LEFT*5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_1.I6.a.voiceover")
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

        # note = Notepad(texts=["$x>0\\Rightarrow f(x)>0$", "Shape of f(x)", "Singularities"], buff=0.28)
        # self.add(note)

        title = self.add_title(self.translate("Func_3_1.I7.title"))

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

        small = self.translate("Func_3_1.I7.small")
        large = self.translate("Func_3_1.I7.large")
        xsmall = Tex(f"$x$ {small}", " $\\Rightarrow$ ", f"$f(x)$ {large}", color=RED, font_size=fs2).next_to(title, DOWN, buff=1)
        xlarge = Tex(f"$x$ {large}", " $\\Rightarrow$ ", f"$f(x)$ {small}", color=RED, font_size=fs2).next_to(xsmall, DOWN, buff=0.4)
        sL = VGroup(xsmall, xlarge)


        S1 = Tex(self.translate("Func_3_1.I7.s1"), color=c1t, font_size=fs2).next_to(title, DOWN, buff=2)
        S2 = Tex("$\\Leftrightarrow$", color=c1t, font_size=fs2).next_to(S1, DOWN, buff=0.2)
        S3a = Tex(self.translate("Func_3_1.I7.s3a"), color=c1t, font_size=fs2)
        S3b = Tex(self.translate("Func_3_1.I7.s3b"), color=c1t, font_size=fs2)
        S = VGroup(S1, S2, S3a, S3b).arrange(DOWN, buff=0.2).next_to(title, DOWN, buff=1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_1.I7.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(f[0]))

            self.wait_until_bookmark("cond")
            self.play(Write(cond))

            self.wait_until_bookmark("fPos")
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

        with self.voiceover(text=self.translate("Func_3_1.I7.voiceover2")
            ) as tracker:


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
class Func_3_1_I_8_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_3_1.I8.q.answer-options")),
            correctAnswerIndex=0,
            questionText = self.translate("Func_3_1.I8.q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # note = Notepad(texts=[["Positive x:", "$x$ small $\\Rightarrow f(x)$ large", "$x$ large $\\Rightarrow f(x)$ small"], ["How does $f$ behave for","negative values of $x$?"]], buff=0.28)
        # self.add(note)

        title = self.add_title(self.translate("Func_3_1.I8.q.title"))

        cords = self.add_cords([-4,0, 1], [-4,0, 1], x_ticks=[-1,-2,-3,-4],y_ticks=[-1,-2,-3,-4])
        plane = cords[0]

        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2/qmark.get_width()).move_to([-5, 1, 0])

        f = Tex("$f(x) = \\tfrac 1x$","$>0$", color=c1t, font_size=fs2).shift(0.2*DOWN)
        cond = Tex("for $x<0$", color=c3t, font_size=fs3)
        Group(f,cond).arrange(DOWN, buff=0.05, aligned_edge=LEFT).shift(DOWN*0.4)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_1.I8.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("neg")
            self.play(Write(f[0]), Write(cond))

            self.wait_until_bookmark("cords")
            self.play(Write(cords))

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

        title = self.add_title(self.translate("Func_3_1.I8.q.title"))

        # Create a notepad with texts
        # note = Notepad(texts=["Consider $f(x)=\\tfrac1x$ for negative x", "Plug in several values",["f(x) close to zero first", "and then decreases rapidly as $x\\rightarrow0$"]], buff=0.3)
        # self.add(note)

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
                text=self.translate("Func_3_1.I8.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("f")
            self.play(Write(f))

            self.wait_until_bookmark("cond")
            self.play(Write(cond))

            self.wait_until_bookmark("cords")
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
                text=self.translate("Func_3_1.I8.a.voiceover2")
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

        title = self.add_title(self.translate("Func_3_1.I8.q.title"))

        # Create a notepad with texts
        # note = Notepad(texts=["Consider $f(x)=\\tfrac1x$ for negative x", "Plug in several values",["f(x) close to zero first", "and then decreases rapidly as $x\\rightarrow0$"]], buff=0.3)
        # self.add(note)

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
                text=self.translate("Func_3_1.I8.b.voiceover")
        ) as tracker:

            self.wait_until_bookmark("f")
            self.play(Write(f))

            self.wait_until_bookmark("cond")
            self.play(Write(cond))

            self.wait_until_bookmark("cords")
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
                text=self.translate("Func_3_1.I8.a.voiceover2")
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

        title = self.add_title(self.translate("Func_3_1.I8.q.title"))

        # Create a notepad with texts
        # note = Notepad(texts=["Consider $f(x)=\\tfrac1x$ for negative x", "Plug in several values",["f(x) close to zero first", "and then decreases rapidly as $x\\rightarrow0$"]], buff=0.3)
        # self.add(note)

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
                text=self.translate("Func_3_1.I8.b.voiceover")
        ) as tracker:

            self.wait_until_bookmark("f")
            self.play(Write(f))

            self.wait_until_bookmark("cond")
            self.play(Write(cond))

            self.wait_until_bookmark("cords")
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
                text=self.translate("Func_3_1.I8.a.voiceover2")
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

        title = self.add_title(self.translate("Func_3_1.I8.q.title"))

        # Create a notepad with texts
        # note = Notepad(texts=["Consider $f(x)=\\tfrac1x$ for negative x", "Plug in several values",["f(x) close to zero first", "and then decreases rapidly as $x\\rightarrow0$"]], buff=0.3)
        # self.add(note)

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
                text=self.translate("Func_3_1.I8.b.voiceover")
        ) as tracker:

            self.wait_until_bookmark("f")
            self.play(Write(f))

            self.wait_until_bookmark("cond")
            self.play(Write(cond))

            self.wait_until_bookmark("cords")
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
                text=self.translate("Func_3_1.I8.a.voiceover2")
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

        # note = Notepad(texts=[["Consider our function $f(x)=\\tfrac1x$", "for positive and negative $x$"], ["Function forms two rounded edges","around x- and y-axis"]], buff=0.28)
        # self.add(note)

        title = self.add_title(self.translate("Func_3_1.I9.title"))

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
                text=self.translate("Func_3_1.I9.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
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
    PagePrototypeQuestion.from_scene(Func_3_1_I_3_q),
    PagePrototypeVideo.from_scene(Func_3_1_I_3_a),
    PagePrototypeVideo.from_scene(Func_3_1_I_3_b),
    PagePrototypeVideo.from_scene(Func_3_1_I_3_c),
    PagePrototypeVideo.from_scene(Func_3_1_I_3_d),
    PagePrototypeVideo.from_scene(Func_3_1_I_4_q),
    PagePrototypeQuestion.from_scene(Func_3_1_I_4_q),
    PagePrototypeVideo.from_scene(Func_3_1_I_4_a),
    PagePrototypeVideo.from_scene(Func_3_1_I_4_b),
    PagePrototypeVideo.from_scene(Func_3_1_I_4_c),
    PagePrototypeVideo.from_scene(Func_3_1_I_4_d),
    PagePrototypeVideo.from_scene(Func_3_1_I_5),
    PagePrototypeVideo.from_scene(Func_3_1_I_6_q),
    PagePrototypeQuestion.from_scene(Func_3_1_I_6_q),
    PagePrototypeVideo.from_scene(Func_3_1_I_6_a),
    PagePrototypeVideo.from_scene(Func_3_1_I_6_b),
    PagePrototypeVideo.from_scene(Func_3_1_I_6_c),
    PagePrototypeVideo.from_scene(Func_3_1_I_6_d),
    PagePrototypeVideo.from_scene(Func_3_1_I_7),
    PagePrototypeVideo.from_scene(Func_3_1_I_8_q),
    PagePrototypeQuestion.from_scene(Func_3_1_I_8_q),
    PagePrototypeVideo.from_scene(Func_3_1_I_8_a),
    PagePrototypeVideo.from_scene(Func_3_1_I_8_b),
    PagePrototypeVideo.from_scene(Func_3_1_I_8_c),
    PagePrototypeVideo.from_scene(Func_3_1_I_8_d),
    PagePrototypeVideo.from_scene(Func_3_1_I_9),
]