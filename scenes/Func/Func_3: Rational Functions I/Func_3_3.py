# 3_3: Fractional Rational Functions: Shifting and Scaling

# Import necessary libraries and modules
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

#####################################
#####################################
#### Instruction Part ###############
#####################################
#####################################


#This function takes an interval [a,b] and returns a lower and an upper bound c and d,
#such that f is between min and max in that range. This is achieved through sampling.
def get_valid_xrange(a,b,min,max,f):
    x = np.linspace(a,b,1000)
    y = f(x)
    valid_x = x[(y > min) & (y < max)]
    return [valid_x.min(), valid_x.max()]


#####################################
#####################################
class Func_3_3_I_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I1.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        f = MathTex("f(x)=\\tfrac{a}{x+b}+c", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text = self.translate("Func_3_3.I1.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("cords")
            self.play(Write(cords), Write(plotted_right), Create(plotted_left), Create(cursor))

            self.wait_until_bookmark("x")
            cursor.idle=False
            self.play(CursorMarkAxis(cursor, plane))

            self.wait_until_bookmark("y")
            self.play(CursorMarkAxis(cursor, plane, axis="y"))

            self.wait_until_bookmark("singularities1")
            self.play(CursorMoveResize(cursor, xo, yo, 0.2, 0.2))
            cursor.idle=True

            self.wait_until_bookmark("singularities2")
            cursor.idle=False
            self.play(CursorMarkAxis(cursor, plane, axis="y"), run_time=0.3)
            self.wait(1)
            self.play(CursorMoveResize(cursor, xo, yo, 0.2, 0.2))
            cursor.idle=True

            self.wait_until_bookmark("leftCurve")
            x,y,_ = plane.c2p(-1,-1)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("rightCurve")
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.wait(0.5)
            cursor.idle=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_3_3_I_2_q(SophiaCursorScene):
    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_3_3.I2.q.answer-options")),
            correctAnswerIndex=2,
            questionText = self.translate("Func_3_3.I2.q.question-text") 
        )        

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I2.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        f0 = MathTex("f(x)=\\tfrac1x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        f1 = MathTex("f(x)=\\tfrac ax", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        f = MathTex("f(x)=\\tfrac{a}{x+b}+c", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_3.I2.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("graph")
            self.play(Write(cords), Write(plotted_right), Write(plotted_left), Write(cursor))
            
            self.wait_until_bookmark("f0")
            self.play(Write(f0))

            self.wait_until_bookmark("f1")
            self.play(ReplacementTransform(f0, f1))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I2.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        f0 = MathTex("f(x)=\\tfrac1x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=2, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))

        self.add(cords, plotted_right, plotted_left, cursor)
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_3_3.I2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f1")
            self.play(Write(f0))

            self.wait_until_bookmark("f2")
            self.play(ReplacementTransform(f0, f1[0]))

            self.wait_until_bookmark("decimalNumber")
            x,y,_ = plane.c2p(1,1)
            cursor.idle=False
            self.play(Write(a_tex), Write(f1[1]), CursorMoveTo(cursor, x, y))
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.play(a.animate.set_value(0.1), run_time=10)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I2.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        f0 = MathTex("f(x)=\\tfrac1x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=2, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))

        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_3_3.I2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f1")
            self.play(Write(f0))

            self.wait_until_bookmark("f2")
            self.play(ReplacementTransform(f0, f1[0]))

            self.wait_until_bookmark("decimalNumber")
            x,y,_ = plane.c2p(1,1)
            cursor.idle=False
            self.play(Write(a_tex), Write(f1[1]), CursorMoveTo(cursor, x, y))
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.play(a.animate.set_value(0.1), run_time=10)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I2.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        f0 = MathTex("f(x)=\\tfrac1x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=2, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))

        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_2")+self.translate("Func_3_3.I2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f1")
            self.play(Write(f0))

            self.wait_until_bookmark("f2")
            self.play(ReplacementTransform(f0, f1[0]))

            self.wait_until_bookmark("decimalNumber")
            x,y,_ = plane.c2p(1,1)
            cursor.idle=False
            self.play(Write(a_tex), Write(f1[1]), CursorMoveTo(cursor, x, y))
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.play(a.animate.set_value(0.1), run_time=10)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_2_d(SophiaCursorScene):

        # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # note = Notepad(texts=["$a<1$", ["$\\rightarrow$ we multiply each","value by something$<1$"], "The graph is squashed in y-Direction"], buff=0.25, buff_inner=0.05)
        # self.add(note)
        title = self.add_title(self.translate("Func_3_3.I2.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        f0 = MathTex("f(x)=\\tfrac1x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=2, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))

        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_3_3.I2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f1")
            self.play(Write(f0))

            self.wait_until_bookmark("f2")
            self.play(ReplacementTransform(f0, f1[0]))

            self.wait_until_bookmark("decimalNumber")
            x,y,_ = plane.c2p(1,1)
            cursor.idle=False
            self.play(Write(a_tex), Write(f1[1]), CursorMoveTo(cursor, x, y))
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.play(a.animate.set_value(0.1), run_time=10)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_3_3_I_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_3_3.I3.q.answer-options")),
            correctAnswerIndex=3,
            questionText = self.translate("Func_3_3.I3.q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I3.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=1, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))
        a_tex_neg1 = MathTex("-1", color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP)
        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_3.I3.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(f1), Write(a_tex))

            self.wait_until_bookmark("moveCursor")
            x,y,_ = plane.c2p(1,1)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y))

            self.wait_until_bookmark("smallA1")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.add_scale_sound('down', 5)
            self.play(a.animate.set_value(0.1), run_time=5, rate_func=linear)

            self.wait_until_bookmark("largeA1")
            self.add_scale_sound('up', 5)
            self.play(a.animate.set_value(3), run_time=5, rate_func=linear)

            self.wait_until_bookmark("smallA2")
            self.add_scale_sound('down', 2)
            self.play(a.animate.set_value(0.1), run_time=2, rate_func=linear)

            self.wait_until_bookmark("resetA")
            self.add_scale_sound('up', 1)
            self.play(a.animate.set_value(1), run_time=1, rate_func=linear)
            cursor.clear_updaters()

            self.wait_until_bookmark("neg1")
            a_tex.clear_updaters()
            self.play(ReplacementTransform(a_tex, a_tex_neg1))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # note = Notepad(texts=["Take any point on the graph of $f$", ["We multiply $f$ by $-1$","$\\Rightarrow$ point is flipped"], "$\\Rightarrow$ entire graph is flipped"], buff=0.25, buff_inner=0.05)
        # self.add(note)

        title = self.add_title(self.translate("Func_3_3.I3.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        a1n1 = MathTex("f(x)=\\tfrac1x", "\\rightarrow", "f(x)=\\tfrac{-1}x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)

        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=1, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))
        self.add(cords, plotted_right, plotted_left, cursor)
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_3_3.I3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("oneOne")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y))

            self.wait_until_bookmark("a1")
            self.play(Write(a1n1[0]), run_time=0.5)

            self.wait_until_bookmark("a2")
            self.play(Write(a1n1[1]), Write(a1n1[2]), run_time=0.5)

            self.wait_until_bookmark("func1")
            self.play(ReplacementTransform(a1n1, f1), Write(a_tex))

            self.wait_until_bookmark("func2")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.add_scale_sound('down', 3)
            self.play(a.animate.set_value(-1), run_time=3)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor, xo, yo), run_time=0.5)
            cursor.idle=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # note = Notepad(texts=["Take any point on the graph of $f$", ["We multiply $f$ by $-1$","$\\Rightarrow$ point is flipped"], "$\\Rightarrow$ entire graph is flipped"], buff=0.25, buff_inner=0.05)
        # self.add(note)

        title = self.add_title(self.translate("Func_3_3.I3.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        a1n1 = MathTex("f(x)=\\tfrac1x", "\\rightarrow", "f(x)=\\tfrac{-1}x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)

        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=1, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))
        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_3_3.I3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("oneOne")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y))

            self.wait_until_bookmark("a1")
            self.play(Write(a1n1[0]), run_time=0.5)

            self.wait_until_bookmark("a2")
            self.play(Write(a1n1[1]), Write(a1n1[2]), run_time=0.5)

            self.wait_until_bookmark("func1")
            self.play(ReplacementTransform(a1n1, f1), Write(a_tex))

            self.wait_until_bookmark("func2")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.add_scale_sound('down', 3)
            self.play(a.animate.set_value(-1), run_time=3)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor, xo, yo), run_time=0.5)
            cursor.idle=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_3_c(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # note = Notepad(texts=["Take any point on the graph of $f$", ["We multiply $f$ by $-1$","$\\Rightarrow$ point is flipped"], "$\\Rightarrow$ entire graph is flipped"], buff=0.25, buff_inner=0.05)
        # self.add(note)

        title = self.add_title(self.translate("Func_3_3.I3.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        a1n1 = MathTex("f(x)=\\tfrac1x", "\\rightarrow", "f(x)=\\tfrac{-1}x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)

        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=1, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))
        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_3_3.I3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("oneOne")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y))

            self.wait_until_bookmark("a1")
            self.play(Write(a1n1[0]), run_time=0.5)

            self.wait_until_bookmark("a2")
            self.play(Write(a1n1[1]), Write(a1n1[2]), run_time=0.5)

            self.wait_until_bookmark("func1")
            self.play(ReplacementTransform(a1n1, f1), Write(a_tex))

            self.wait_until_bookmark("func2")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.add_scale_sound('down', 3)
            self.play(a.animate.set_value(-1), run_time=3)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor, xo, yo), run_time=0.5)
            cursor.idle=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_3_I_3_d(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I3.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        a1n1 = MathTex("f(x)=\\tfrac1x", "\\rightarrow", "f(x)=\\tfrac{-1}x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)

        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=1, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))
        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_1")+self.translate("Func_3_3.I3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("oneOne")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y))

            self.wait_until_bookmark("a1")
            self.play(Write(a1n1[0]), run_time=0.5)

            self.wait_until_bookmark("a2")
            self.play(Write(a1n1[1]), Write(a1n1[2]), run_time=0.5)

            self.wait_until_bookmark("func1")
            self.play(ReplacementTransform(a1n1, f1), Write(a_tex))

            self.wait_until_bookmark("func2")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))
            self.add_scale_sound('down', 3)
            self.play(a.animate.set_value(-1), run_time=3)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor, xo, yo), run_time=0.5)
            cursor.idle=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)



#####################################
#####################################
class Func_3_3_I_4(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I4.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        a1n1 = MathTex("f(x)=\\tfrac1x", "\\rightarrow", "f(x)=\\tfrac{-1}x", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)

        f1 = MathTex("f(x)=\\tfrac ax", ",\\,a=", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        a_tex = DecimalNumber(1, num_decimal_places=1, color=c1t).scale(0.8).next_to(f1, RIGHT, buff=0.1).shift(0.05*UP).add_updater(lambda m: m.set_value(a.get_value()))
        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_3.I4.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(f1[0]))

            self.wait_until_bookmark("a")
            self.play(Write(f1[1]), Write(a_tex))
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, a.get_value())))

            self.wait_until_bookmark("increase")
            self.add_scale_sound('up', 1.5)
            self.play(a.animate.set_value(3), rate_func=linear)

            self.wait_until_bookmark("decrease")
            self.add_scale_sound('down', 1.5)
            self.play(a.animate.set_value(0.1), rate_func=linear)

            self.wait_until_bookmark("negate")
            self.add_scale_sound('down', 1.5)
            self.play(a.animate.set_value(-1), rate_func=linear)

        self.wait(4)

#####################################
#####################################
class Func_3_3_I_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_3_3.I5.q.answer-options")),
            correctAnswerIndex=2,
            questionText = self.translate("Func_3_3.I5.q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # note = Notepad(texts=[["Function can be squashed, stretched,","or flipped by varying the factor $a$"],"Next: Shifting the function in y-direction", ["How do we modify $f$,","to shift it up by $1$?"]], buff=0.2, buff_inner=0)
        # note.change_colors([0])
        # self.add(note)

        title = self.add_title(self.translate("Func_3_3.I5.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f(x)=\\tfrac ax", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        self.add(cords, plotted_right, plotted_left, cursor)

        self.add(f1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_3.I5.q.voiceover")
        ) as tracker:

            self.wait_until_bookmark("cursorBack")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))

            self.wait_until_bookmark("up")
            self.add_move_sound('forward', 0.5)
            self.play(c.animate.set_value(2), run_time=0.5)

            self.wait_until_bookmark("down")
            self.add_move_sound('backward', 0.5)
            self.play(c.animate.set_value(-2), run_time=0.5)

            self.wait_until_bookmark("back")
            self.add_move_sound('forward', 0.5)
            self.play(c.animate.set_value(0), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("upOne")
            cursor.idle=False
            self.add_move_sound('forward', 1.5)
            self.play(c.animate.set_value(1))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I5.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "+", "1", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_3_3.I5.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("cursor")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("upOne")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.add_move_sound('forward', 2)
            self.play(c.animate.set_value(1), run_time=2)
            cursor.clear_updaters()

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[1]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusOne")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_5_b(SophiaCursorScene):

        # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I5.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "+", "1", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_3_3.I5.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("cursor")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("upOne")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.add_move_sound('forward', 2)
            self.play(c.animate.set_value(1), run_time=2)
            cursor.clear_updaters()

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[1]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusOne")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_3_I_5_c(SophiaCursorScene):

        # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I5.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "+", "1", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_3_3.I5.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("cursor")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("upOne")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.add_move_sound('forward', 2)
            self.play(c.animate.set_value(1), run_time=2)
            cursor.clear_updaters()

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[1]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusOne")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
    



class Func_3_3_I_5_d(SophiaCursorScene):

    
        # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I5.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "+", "1", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_3_3.I5.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("cursor")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("upOne")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.add_move_sound('forward', 2)
            self.play(c.animate.set_value(1), run_time=2)
            cursor.clear_updaters()

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[1]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusOne")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
class Func_3_3_I_6_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=["$f(x)=\\tfrac{2a}x$", "$f(x)=\\tfrac{a-2}x$", "$f(x)=\\tfrac a{2x}$", "$f(x)=\\tfrac ax-2$"],
            correctAnswerIndex=3,
            questionText = self.translate("Func_3_3.I6.q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I6.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f", "(x)", "=", "\\tfrac ax", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        self.add(cords, plotted_right, plotted_left, cursor)

        self.add(f1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_3.I6.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("ax")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("note1")
            x,y,_ = plane.c2p(1,1)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("db2")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.add_move_sound('backward', 1.5)
            self.play(c.animate.set_value(-2), run_time=1.5)
            self.wait(1)
            self.add_move_sound('forward', .5)
            self.play(c.animate.set_value(0), run_time=.5)
            cursor.idle = True

            self.wait_until_bookmark("downTwo")
            cursor.idle=False
            self.add_move_sound('backward', 1.5)
            self.play(c.animate.set_value(-2))


            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_3_I_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I6.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "-", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_3_3.I6.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("cursor")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("upOne")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.add_move_sound('backward', 2)
            self.play(c.animate.set_value(-2), run_time=2)
            cursor.clear_updaters()

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[1]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusOne")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_3_3_I_6_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I6.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "-", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_3_3.I6.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("cursor")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("upOne")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.add_move_sound('backward', 2)
            self.play(c.animate.set_value(-2), run_time=2)
            cursor.clear_updaters()

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[1]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusOne")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_3_I_6_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I6.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "-", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_3_3.I6.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("cursor")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("upOne")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.add_move_sound('backward', 2)
            self.play(c.animate.set_value(-2), run_time=2)
            cursor.clear_updaters()

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[1]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusOne")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_3_I_6_d(SophiaCursorScene):

        # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I6.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "-", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_1")+self.translate("Func_3_3.I6.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("cursor")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("upOne")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.add_move_sound('backward', 2)
            self.play(c.animate.set_value(-2), run_time=2)
            cursor.clear_updaters()

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(Write(f1[1]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("a")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("plusOne")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################
#####################################
class Func_3_3_I_7(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I7.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac ax", "+", "c", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])

        a_tex = DecimalNumber(1, num_decimal_places=1, color=c1t, include_sign=True).scale(0.8).next_to(f1[3], RIGHT, buff=0.2).shift(0.05*UP).add_updater(lambda m: m.set_value(c.get_value()))
        self.add(a_tex)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_3.I7.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("note1")
            x,y,_ = plane.c2p(1,1)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))

            self.wait_until_bookmark("up1")
            self.add_move_sound('forward',  .6)
            self.play(c.animate.set_value(2), run_time=0.6)

            self.wait_until_bookmark("down1")
            self.add_move_sound('backward',  .5)
            self.play(c.animate.set_value(-2), run_time=0.5)
            self.wait(0.4)
            self.add_move_sound('forward',  .5)
            self.play(c.animate.set_value(0), run_time=0.5)
            cursor.clear_updaters()

            self.wait_until_bookmark("y")
            self.play(CursorMarkAxis(cursor, plane, axis='y'), run_time=0.5)

            self.wait_until_bookmark("backInPos")
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveResize(cursor, x, y, 0.2, 0.2), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))

            self.wait_until_bookmark("up2")
            self.add_move_sound('forward',  .5)
            self.play(c.animate.set_value(2), run_time=0.5)
            cursor.clear_updaters()
            cursor._setup_idle()
            cursor.idle=True

            self.wait_until_bookmark("down2")
            cursor.idle=False
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.add_move_sound('backward', .5)
            self.play(c.animate.set_value(-2), run_time=0.5)
            cursor.clear_updaters()
            cursor._setup_idle()
            cursor.idle=True

            self.wait_until_bookmark("note2")
            x,y,_ = plane.c2p(0,0)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), c.animate.set_value(0), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("func")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Unwrite(a_tex), Write(f1[4]), Write(f1[5]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("ax")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("c")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("resetCursorFinal")
            x,y,_ = plane.c2p(1,1)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.add_move_sound('forward',  1.5)
            self.play(c.animate.set_value(2))

            self.wait_until_bookmark("cNeg")
            self.add_move_sound('backward',  1.5)
            self.play(c.animate.set_value(-2))

            self.wait_until_bookmark("resetC")
            cursor.clear_updaters()
            x,y,_ = plane.c2p(0,0)
            self.add_move_sound('forward',  .5)
            self.play(c.animate.set_value(0), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor._setup_idle()
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
TASK_Func_3_3_I_8_q = SophiaTaskDefinition(
    answerOptions=["At $y=0$", "At $y=2$", "At $y=4$", "At $y=-4$"],
    correctAnswerIndex=1,
    questionText="",
)
class Func_3_3_I_8_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_3_3.I8.q.answer-options")),
            correctAnswerIndex=1,
            questionText = self.translate("Func_3_3.I8.q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I8.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))


        f1 = MathTex("f","(x)", "=", "\\tfrac1x", "+", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_3_3.I8.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("setupCursor")
            cursor.idle=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("up")
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.add_move_sound('forward', 0.5)
            self.play(c.animate.set_value(2), run_time=0.5)

            self.wait_until_bookmark("down")
            self.add_move_sound('backward', 0.5)
            self.play(c.animate.set_value(-2), run_time=0.5)
            self.wait(.5)
            self.add_move_sound('forward', 0.5)
            self.play(c.animate.set_value(0), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("func")
            self.play(Write(f1[0]), Write(f1[1]), Write(f1[2]), Write(f1[3]), run_time=0.5)

            self.wait_until_bookmark("upByTwo")
            cursor.idle=False
            self.add_move_sound('forward', 0.5)
            self.play(c.animate.set_value(2), run_time=0.5)

            self.wait_until_bookmark("funcNew")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            cursor.clear_updaters()
            cursor._setup_idle()
            self.play(Write(f1[4]), Write(f1[5]), f1.animate.shift(fShift[0]*RIGHT), CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("one")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("two")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_3_I_8_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I8.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        y_unit = (plane.c2p(0,1)-plane.c2p(0,0))

        aT1 = Line(plane.c2p(-4,0), plane.c2p(4,0), color=GREEN)



        f1 = MathTex("f","(x)", "=", "\\tfrac1x", "+", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_3_3.I8.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("as0")
            self.play(Write(aT1))

            self.wait_until_bookmark("func")
            cursor.idle=False
            self.play(Write(f1[4]), Write(f1[5]), run_time=0.5)

            self.wait_until_bookmark("f")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("oneOverX")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("plusTwo")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("shiftUp")
            x,y,_ = plane.c2p(1,1)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.add_move_sound('forward', 1.5)
            self.play(c.animate.set_value(2))
            cursor.clear_updaters()
            cursor._setup_idle()
            cursor.idle=True

            self.wait_until_bookmark("cursorBack")
            cursor.idle=False
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(aT1.get_center()))
            self.add_move_sound('forward', 1.5)
            self.play(aT1.animate.shift(2*y_unit))
            cursor.clear_updaters()
            cursor._setup_idle()
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_3_I_8_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I8.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        y_unit = (plane.c2p(0,1)-plane.c2p(0,0))

        aT1 = Line(plane.c2p(-4,0), plane.c2p(4,0), color=GREEN)



        f1 = MathTex("f","(x)", "=", "\\tfrac1x", "+", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_4")+self.translate("Func_3_3.I8.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("as0")
            self.play(Write(aT1))

            self.wait_until_bookmark("func")
            cursor.idle=False
            self.play(Write(f1[4]), Write(f1[5]), run_time=0.5)

            self.wait_until_bookmark("f")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("oneOverX")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("plusTwo")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("shiftUp")
            x,y,_ = plane.c2p(1,1)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.add_move_sound('forward', 1.5)
            self.play(c.animate.set_value(2))
            cursor.clear_updaters()
            cursor._setup_idle()
            cursor.idle=True

            self.wait_until_bookmark("cursorBack")
            cursor.idle=False
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(aT1.get_center()))
            self.add_move_sound('forward', 1.5)
            self.play(aT1.animate.shift(2*y_unit))
            cursor.clear_updaters()
            cursor._setup_idle()
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_3_I_8_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I8.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        y_unit = (plane.c2p(0,1)-plane.c2p(0,0))

        aT1 = Line(plane.c2p(-4,0), plane.c2p(4,0), color=GREEN)



        f1 = MathTex("f","(x)", "=", "\\tfrac1x", "+", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_3_3.I8.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("as0")
            self.play(Write(aT1))

            self.wait_until_bookmark("func")
            cursor.idle=False
            self.play(Write(f1[4]), Write(f1[5]), run_time=0.5)

            self.wait_until_bookmark("f")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("oneOverX")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("plusTwo")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("shiftUp")
            x,y,_ = plane.c2p(1,1)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.add_move_sound('forward', 1.5)
            self.play(c.animate.set_value(2))
            cursor.clear_updaters()
            cursor._setup_idle()
            cursor.idle=True

            self.wait_until_bookmark("cursorBack")
            cursor.idle=False
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(aT1.get_center()))
            self.add_move_sound('forward', 1.5)
            self.play(aT1.animate.shift(2*y_unit))
            cursor.clear_updaters()
            cursor._setup_idle()
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)



class Func_3_3_I_8_d(SophiaCursorScene):

        # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_3_3.I8.title"))

        cords = self.add_cords([-4,4, 1], [-4, 4, 1], x_ticks=[2*i-4 for i in range(5)],y_ticks=[2*i-4 for i in range(5)]).shift(DOWN)
        plane = cords[0]

        a, b, c = ValueTracker(1), ValueTracker(0), ValueTracker(0)

        func = lambda x: a.get_value()/(x+b.get_value())+c.get_value()

        #sine function that is updated
        plotted_right = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-4,-b.get_value(), -4,4,func), 0.01], use_smoothing=False))
        plotted_left = always_redraw(lambda: plane.plot(func, color=BLUE, x_range=[*get_valid_xrange(-b.get_value(),4, -4,4,func), 0.01], use_smoothing=False).reverse_points())

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=xo, y=yo)
        cursor.add_updater(lambda m: self.bring_to_front(cursor))

        y_unit = (plane.c2p(0,1)-plane.c2p(0,0))

        aT1 = Line(plane.c2p(-4,0), plane.c2p(4,0), color=GREEN)



        f1 = MathTex("f","(x)", "=", "\\tfrac1x", "+", "2", color=c1t).scale(0.8).next_to(cords, DOWN, buff=0.5)
        fShift = f1[2].get_center()
        f1 = f1.shift(fShift[0]*LEFT)
        self.add(cords, plotted_right, plotted_left, cursor, f1[0], f1[1], f1[2], f1[3])
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_3_3.I8.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("as0")
            self.play(Write(aT1))

            self.wait_until_bookmark("func")
            cursor.idle=False
            self.play(Write(f1[4]), Write(f1[5]), run_time=0.5)

            self.wait_until_bookmark("f")
            x,y,_ = f1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = f1[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("oneOverX")
            x,y,_ = f1[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("plusTwo")
            x,y,_ = f1[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("shiftUp")
            x,y,_ = plane.c2p(1,1)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(plane.c2p(1, 1+c.get_value())))
            self.add_move_sound('forward', 1.5)
            self.play(c.animate.set_value(2))
            cursor.clear_updaters()
            cursor._setup_idle()
            cursor.idle=True

            self.wait_until_bookmark("cursorBack")
            cursor.idle=False
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.add_updater(lambda m: cursor.move_to(aT1.get_center()))
            self.add_move_sound('forward', 1.5)
            self.play(aT1.animate.shift(2*y_unit))
            cursor.clear_updaters()
            cursor._setup_idle()
            cursor.idle=True

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

#####################################
#####################################
### Actual Questions ################
#####################################
#####################################

PROTOTYPES = [
    PagePrototypeVideo.from_scene(Func_3_3_I_1),
    PagePrototypeVideo.from_scene(Func_3_3_I_2_q),
    PagePrototypeQuestion.from_scene(Func_3_3_I_2_q),
    PagePrototypeVideo.from_scene(Func_3_3_I_2_a),
    PagePrototypeVideo.from_scene(Func_3_3_I_2_b),
    PagePrototypeVideo.from_scene(Func_3_3_I_2_c),
    PagePrototypeVideo.from_scene(Func_3_3_I_2_d),
    PagePrototypeVideo.from_scene(Func_3_3_I_3_q),
    PagePrototypeQuestion.from_scene(Func_3_3_I_3_q),
    PagePrototypeVideo.from_scene(Func_3_3_I_3_a),
    PagePrototypeVideo.from_scene(Func_3_3_I_3_b),
    PagePrototypeVideo.from_scene(Func_3_3_I_3_c),
    PagePrototypeVideo.from_scene(Func_3_3_I_3_d),
    PagePrototypeVideo.from_scene(Func_3_3_I_4),
    PagePrototypeVideo.from_scene(Func_3_3_I_5_q),
    PagePrototypeQuestion.from_scene(Func_3_3_I_5_q),
    PagePrototypeVideo.from_scene(Func_3_3_I_5_a),
    PagePrototypeVideo.from_scene(Func_3_3_I_5_b),
    PagePrototypeVideo.from_scene(Func_3_3_I_5_c),
    PagePrototypeVideo.from_scene(Func_3_3_I_5_d),
    PagePrototypeVideo.from_scene(Func_3_3_I_6_q),
    PagePrototypeQuestion.from_scene(Func_3_3_I_6_q),
    PagePrototypeVideo.from_scene(Func_3_3_I_6_a),
    PagePrototypeVideo.from_scene(Func_3_3_I_6_b),
    PagePrototypeVideo.from_scene(Func_3_3_I_6_c),
    PagePrototypeVideo.from_scene(Func_3_3_I_6_d),
    PagePrototypeVideo.from_scene(Func_3_3_I_7),
    PagePrototypeVideo.from_scene(Func_3_3_I_8_q),
    PagePrototypeQuestion.from_scene(Func_3_3_I_8_q),
    PagePrototypeVideo.from_scene(Func_3_3_I_8_a),
    PagePrototypeVideo.from_scene(Func_3_3_I_8_b),
    PagePrototypeVideo.from_scene(Func_3_3_I_8_c),
    PagePrototypeVideo.from_scene(Func_3_3_I_8_d),
]