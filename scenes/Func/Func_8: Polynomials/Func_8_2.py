# 8_2: Polynomial Functions: Zeros

# Import necessary libraries and modules
from abc import ABCMeta, abstractmethod
from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
from sophialib.styles.sophiascene import (CursorMoveToCurved, CursorPositionTracker,
                                          CursorPositionTracking,
                                          CursorResizeDefault, SophiaScene, Cursor,
                                          assets_folder, avatars_folder,
                                          generated_avatars_folder, AltCursor,
                                          SophiaCursorScene, CursorMoveTo,
                                          CursorMoveResize, Notepad, CursorMarkAxis, Bubble)
from sophialib.styles.styleconstants import *
from sophialib.styles.sophiaobjects import *
from manim import *
from PIL import Image
import numpy as np
from pathlib import Path
from sophialib.tasks.sophiataskdefinition import SophiaTaskDefinition


#####################################
#####################################
TASK_Func_8_2_I_1_q = SophiaTaskDefinition(
    answerOptions = ["$\{0,1\}$", "$\{1\}$", "$\{0\}$", "$\{-1,1\}$"],
    correctAnswerIndex = 3,
    questionText = "What are the zeros of the polynomial function $f(x)=x^2-1$?"
)
class Func_8_2_I_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Polynomial Functions: Zeros")

        cords = self.add_cords([-2,2,1], [-4,4, 1], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4])
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(0,0)


        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        
        self.add(cursor)

        func = plane.plot(lambda x: x**2-1, color=BLUE)
        func_tex = MathTex("f", "(x)", "=", "x^2", "-", "1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text="""
                In this chapter, we'll learn how to determine the zeros of a polynomial function.

                Let's start with a simple example, a squared function.
                <bookmark mark="draw_graph"/>
                What are the zeros of the <bookmark mark="func"/> function f <bookmark mark="fx"/>
                of x <bookmark mark="x_squared"/> equals x squared <bookmark mark="minus_one"/> minus one?
                """
        ) as tracker:        
            
            self.wait_until_bookmark("draw_graph")
            x,y,_ = func.get_start()
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(func.get_end())))
            self.play(Create(func))
            cursor.blinking=True

            self.wait_until_bookmark("func")
            x,y,_ = func_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(func_tex), CursorMoveTo(cursor,x,y), run_time=0.3)
            

            self.wait_until_bookmark("fx")
            x,y,_ = func_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("x_squared")
            x,y,_ = func_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("minus_one")
            x,y,_ = func_tex[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True


        self.wait(4)


class Func_8_2_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Polynomial Functions: Zeros")

        cords = self.add_cords([-2,2,1], [-4,4, 1], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4])
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(0,0)


        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        
        self.add(cursor)

        func = plane.plot(lambda x: x**2-1, color=BLUE)
        func_tex = MathTex("f", "(x)", "=", "x^2", "-", "1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        func_tex_zero = MathTex("0", "=", "x^2", "-", "1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        func_tex_final = MathTex("x^2", "=", "1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        sol = MathTex("x", "=", "\\pm1", color=GREEN, font_size=fs2).next_to(func_tex_final, DOWN, buff=0.2)

        self.add(func, func_tex)
        
        with self.voiceover(
                text="""
                No, that's not right.

                To find the zeros of a function, we need to find the x values for which the function equals zero.
                So <bookmark mark="set_to_zero"/> we set the function equal to zero, and solve for x.

                Here, we <bookmark mark="zero"/> get zero <bookmark mark="x_squared"/>equals x squared
                <bookmark mark="minus_one"/> minus one.

                We can then add one on both sides to<bookmark mark="sol_1"/> obtain x squared <bookmark mark="sol_2"/>
                equals one. We can then take the root to get the first <bookmark mark="sol_3"/> solution x equals
                negative one, as well as the second <bookmark mark="sol_4"/> solution x equals one.

                So the two zeros are <bookmark mark="show_sol"/> at x equals negative one and x equals one.
                """
        ) as tracker:        
            
            self.wait_until_bookmark("set_to_zero")
            self.play(TransformMatchingTex(func_tex, func_tex_zero))

            self.wait_until_bookmark("zero")
            cursor.blinking=False
            x,y,_ = func_tex_zero[0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("x_squared")
            x,y,_ = func_tex_zero[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("minus_one")
            x,y,_ = func_tex_zero[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol_1")
            x,y,_ = func_tex_final[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(TransformMatchingTex(func_tex_zero, func_tex_final), CursorMoveTo(cursor,x,y))

            self.wait_until_bookmark("sol_2")
            x,y,_ = func_tex_final[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol_3")
            x,y,_ = plane.c2p(-1,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy().set_color(GREEN))

            self.wait_until_bookmark("sol_4")
            x,y,_ = plane.c2p(1,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy().set_color(GREEN))
            self.wait(1)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("show_sol")
            x,y,_ = sol.get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(sol), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True


        self.wait(4)


class Func_8_2_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Polynomial Functions: Zeros")

        cords = self.add_cords([-2,2,1], [-4,4, 1], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4])
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(0,0)


        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        
        self.add(cursor)

        func = plane.plot(lambda x: x**2-1, color=BLUE)
        func_tex = MathTex("f", "(x)", "=", "x^2", "-", "1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        func_tex_zero = MathTex("0", "=", "x^2", "-", "1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        func_tex_final = MathTex("x^2", "=", "1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        sol = MathTex("x", "=", "\\pm1", color=GREEN, font_size=fs2).next_to(func_tex_final, DOWN, buff=0.2)

        self.add(func, func_tex)
        
        with self.voiceover(
                text="""
                No, that's not right.

                To find the zeros of a function, we need to find the x values for which the function equals zero.
                So <bookmark mark="set_to_zero"/> we set the function equal to zero, and solve for x.

                Here, we <bookmark mark="zero"/> get zero <bookmark mark="x_squared"/>equals x squared
                <bookmark mark="minus_one"/> minus one.

                We can then add one on both sides to<bookmark mark="sol_1"/> obtain x squared <bookmark mark="sol_2"/>
                equals one. We can then take the root to get the first <bookmark mark="sol_3"/> solution x equals
                negative one, as well as the second <bookmark mark="sol_4"/> solution x equals one.

                So the two zeros are <bookmark mark="show_sol"/> at x equals negative one and x equals one.
                """
        ) as tracker:        
            
            self.wait_until_bookmark("set_to_zero")
            self.play(TransformMatchingTex(func_tex, func_tex_zero))

            self.wait_until_bookmark("zero")
            cursor.blinking=False
            x,y,_ = func_tex_zero[0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("x_squared")
            x,y,_ = func_tex_zero[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("minus_one")
            x,y,_ = func_tex_zero[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol_1")
            x,y,_ = func_tex_final[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(TransformMatchingTex(func_tex_zero, func_tex_final), CursorMoveTo(cursor,x,y))

            self.wait_until_bookmark("sol_2")
            x,y,_ = func_tex_final[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol_3")
            x,y,_ = plane.c2p(-1,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy().set_color(GREEN))

            self.wait_until_bookmark("sol_4")
            x,y,_ = plane.c2p(1,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy().set_color(GREEN))
            self.wait(1)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("show_sol")
            x,y,_ = sol.get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(sol), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True


        self.wait(4)


class Func_8_2_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Polynomial Functions: Zeros")

        cords = self.add_cords([-2,2,1], [-4,4, 1], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4])
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(0,0)


        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        
        self.add(cursor)

        func = plane.plot(lambda x: x**2-1, color=BLUE)
        func_tex = MathTex("f", "(x)", "=", "x^2", "-", "1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        func_tex_zero = MathTex("0", "=", "x^2", "-", "1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        func_tex_final = MathTex("x^2", "=", "1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        sol = MathTex("x", "=", "\\pm1", color=GREEN, font_size=fs2).next_to(func_tex_final, DOWN, buff=0.2)

        self.add(func, func_tex)
        
        with self.voiceover(
                text="""
                No, that's not right.

                To find the zeros of a function, we need to find the x values for which the function equals zero.
                So <bookmark mark="set_to_zero"/> we set the function equal to zero, and solve for x.

                Here, we <bookmark mark="zero"/> get zero <bookmark mark="x_squared"/>equals x squared
                <bookmark mark="minus_one"/> minus one.

                We can then add one on both sides to<bookmark mark="sol_1"/> obtain x squared <bookmark mark="sol_2"/>
                equals one. We can then take the root to get the first <bookmark mark="sol_3"/> solution x equals
                negative one, as well as the second <bookmark mark="sol_4"/> solution x equals one.

                So the two zeros are <bookmark mark="show_sol"/> at x equals negative one and x equals one.
                """
        ) as tracker:        
            
            self.wait_until_bookmark("set_to_zero")
            self.play(TransformMatchingTex(func_tex, func_tex_zero))

            self.wait_until_bookmark("zero")
            cursor.blinking=False
            x,y,_ = func_tex_zero[0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("x_squared")
            x,y,_ = func_tex_zero[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("minus_one")
            x,y,_ = func_tex_zero[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol_1")
            x,y,_ = func_tex_final[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(TransformMatchingTex(func_tex_zero, func_tex_final), CursorMoveTo(cursor,x,y))

            self.wait_until_bookmark("sol_2")
            x,y,_ = func_tex_final[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol_3")
            x,y,_ = plane.c2p(-1,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy().set_color(GREEN))

            self.wait_until_bookmark("sol_4")
            x,y,_ = plane.c2p(1,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy().set_color(GREEN))
            self.wait(1)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("show_sol")
            x,y,_ = sol.get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(sol), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True


        self.wait(4)


class Func_8_2_I_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Polynomial Functions: Zeros")

        cords = self.add_cords([-2,2,1], [-4,4, 1], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4])
        plane = cords[0]
        self.add(cords)

        x,y,_ = plane.c2p(0,0)


        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        
        self.add(cursor)

        func = plane.plot(lambda x: x**2-1, color=BLUE)
        func_tex = MathTex("f", "(x)", "=", "x^2", "-", "1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        func_tex_zero = MathTex("0", "=", "x^2", "-", "1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        func_tex_final = MathTex("x^2", "=", "1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        sol = MathTex("x", "=", "\\pm1", color=GREEN, font_size=fs2).next_to(func_tex_final, DOWN, buff=0.2)

        self.add(func, func_tex)
        
        with self.voiceover(
                text="""
                Yep, that's correct.

                To find the zeros of a function, we need to find the x values for which the function equals zero.
                So <bookmark mark="set_to_zero"/> we set the function equal to zero, and solve for x.

                Here, we <bookmark mark="zero"/> get zero <bookmark mark="x_squared"/>equals x squared
                <bookmark mark="minus_one"/> minus one.

                We can then add one on both sides to<bookmark mark="sol_1"/> obtain x squared <bookmark mark="sol_2"/>
                equals one. We can then take the root to get the first <bookmark mark="sol_3"/> solution x equals
                negative one, as well as the second <bookmark mark="sol_4"/> solution x equals one.

                So the two zeros are <bookmark mark="show_sol"/> at x equals negative one and x equals one.
                """
        ) as tracker:        
            
            self.wait_until_bookmark("set_to_zero")
            self.play(TransformMatchingTex(func_tex, func_tex_zero))

            self.wait_until_bookmark("zero")
            cursor.blinking=False
            x,y,_ = func_tex_zero[0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("x_squared")
            x,y,_ = func_tex_zero[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("minus_one")
            x,y,_ = func_tex_zero[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol_1")
            x,y,_ = func_tex_final[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(TransformMatchingTex(func_tex_zero, func_tex_final), CursorMoveTo(cursor,x,y))

            self.wait_until_bookmark("sol_2")
            x,y,_ = func_tex_final[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol_3")
            x,y,_ = plane.c2p(-1,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy().set_color(GREEN))

            self.wait_until_bookmark("sol_4")
            x,y,_ = plane.c2p(1,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy().set_color(GREEN))
            self.wait(1)
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("show_sol")
            x,y,_ = sol.get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(sol), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True


        self.wait(4)


#####################################
#####################################
class Func_8_2_I_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Polynomial Functions: Zeros")

        cords = self.add_cords([-2,2,1], [-4,4, 1], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4])
        plane = cords[0]

        x,y,_ = plane.c2p(0,0)


        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        
        self.add(cursor)

        func = plane.plot(lambda x: x**2-1, color=BLUE)
        func_tex = MathTex("f", "(x)", "=", "x^2", "-", "1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        x_tex = MathTex("x", color=c1t, font_size=2*fs1)
        x_squared_tex = MathTex("x^2", color=c1t, font_size=2*fs1)
        x_cubed_tex = MathTex("x^3", color=c1t, font_size=2*fs1)
        x_to_the_fourth_tex = MathTex("x^4", color=c1t, font_size=2*fs1)
        x_to_the_fifth_tex = MathTex("x^5", color=c1t, font_size=2*fs1)
        x_to_the_sixth_tex = MathTex("x^6", color=c1t, font_size=2*fs1)
        x_to_the_seventh_tex = MathTex("x^7", color=c1t, font_size=2*fs1)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2.5/qmark.get_width()).move_to([-5, 1.4, 0])
        blist = BulletedList("Degree $1$", "Degree $2$", "Degree $\geq3$", color=c1t, height=2, width=2).shift(0.6*LEFT)
        bracket = Brace(VGroup(blist[0], blist[1]), direction=RIGHT, color=GREEN)
        simple_solution = VGroup(Tex("Simple", font_size=fs3, color=GREEN), Tex("Solution", color=GREEN, font_size=fs3)).arrange(DOWN, aligned_edge=LEFT, buff=.2).next_to(bracket, RIGHT, buff=0.2)
        for idx in range(3):
            blist[idx].set_color(BLACK)
        # Action Sequence
        with self.voiceover(
                text="""
                Ok, so more generally speaking: <bookmark mark="qmark"/>How do we find
                the zeros of polynomial functions?
                
                The tricky thing is that polynomials can contain expressions <bookmark mark="x"/>
                with x, expressions <bookmark mark="x_squared"/> with x squared, expressions
                <bookmark mark="x_cubed"/> with x cubed, expressions with x to the fourth power,
                and so on...

                So we will differentiate three cases:

                Polynomials <bookmark mark="degree_one"/>of degree one, which have one zero,
                and we can find it by solving the equation for x.

                Polynomials <bookmark mark="degree_two"/>of degree two, which have up to two zeros,
                and we can find them using the quadratic formula.

                And finally polynomials <bookmark mark="many"/>of degree three or higher, which can have many
                zeros. Now the key difference is that <bookmark mark="leq_2"/> we can solve polynomial
                equations of degree one and two using relatively simple techniques. But <bookmark mark="greater_2"/>
                finding the zeros for polynomials of degree three or higher can be more difficult.
                """
        ) as tracker:        
            
            self.wait_until_bookmark("qmark")
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)
            self.wait(1)
            self.play(qmark.animate.shift(5*RIGHT))

            self.wait_until_bookmark("x")
            self.play(Write(x_tex))

            self.wait_until_bookmark("x_squared")
            self.play(Transform(x_tex, x_squared_tex))

            self.wait_until_bookmark("x_cubed")
            self.play(Transform(x_tex, x_cubed_tex))
            self.wait(0.8)
            self.play(Transform(x_tex, x_to_the_fourth_tex))
            self.play(Transform(x_tex, x_to_the_fifth_tex))
            self.play(Transform(x_tex, x_to_the_sixth_tex))
            self.play(Transform(x_tex, x_to_the_seventh_tex))
            self.play(Unwrite(x_tex))

            self.wait_until_bookmark("degree_one")
            x,y,_ = blist[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(blist[0]), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("degree_two")
            x,y,_ = blist[1].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(blist[1]), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("many")
            x,y,_ = blist[2].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(blist[2]), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("leq_2")
            x,y,_ = simple_solution[1].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(bracket), Write(simple_solution), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("greater_2")
            cursor.blinking=False
            x,y,_ = blist[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True


        self.wait(4)


#####################################
#####################################
TASK_Func_8_2_I_1_q = SophiaTaskDefinition(
    answerOptions = ["$\{0,1\}$", "$\{1\}$", "$\{0\}$", "$\{-1,1\}$"],
    correctAnswerIndex = 3,
    questionText = "What are the zeros of the polynomial function $f(x)=x^2-1$?"
)
class Func_8_2_I_3_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Degree one Functions")

        cords = self.add_cords([-2,2,1], [-4,4, 1], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4])
        plane = cords[0]

        x,y,_ = plane.c2p(0,0)


        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        
        self.add(cursor)

        crazy_hair = ImageMobject(assets_folder / "img" / "crazy_hair.png")
        crazy_hair = crazy_hair.scale(3.5/crazy_hair.get_width()).move_to([-5, 1.4, 0])

        scissors = ImageMobject(assets_folder / "img" / "scissors.png")
        scissors = scissors.scale(2.5/scissors.get_width()).move_to([-5, -1.4, 0])

        with self.voiceover(
                text="""
                First, let's talk about finding the zero of a polynomial function of degree one.

                Imagine you have a bunch of friends <bookmark mark="friends_in"/> who have the
                coolest hairstyles. Now since you're such a talented artist, they ask you to
                <bookmark mark="scissors_in"/>cut their hair.

                Let's say you <bookmark mark="ten_bucks"/> paid ten bucks for the scissors.
                And then you <bookmark mark="five_bucks"/> charge your friends five bucks per haircut.
                <bookmark mark="qmark"/>
                What is the term of the function describing the amount of money you've made after
                cutting x friends' hair?
                """
        ) as tracker:        
            
            self.wait_until_bookmark("friends_in")
            self.play(crazy_hair.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("scissors_in")
            self.play(scissors.animate.shift(5*RIGHT))

            self.wait_until_bookmark("ten_bucks")
            self.play(scissors.animate.scale(0.4), run_time=.3)
            self.play(scissors.animate.move_to([-1,-1.2,0]), run_time=.3)
            cost_scissors = MathTex("10", "\\$", color=c1t, font_size=fs2).next_to(scissors, RIGHT, buff=0.4)
            self.play(Write(cost_scissors))

            self.wait_until_bookmark("five_bucks")
            self.play(crazy_hair.animate.scale(0.4), run_time=.3)
            self.play(crazy_hair.animate.move_to([-1,-2.6,0]), run_time=.3)
            cost_haircut = MathTex("5", "\\$", color=c1t, font_size=fs2).next_to(crazy_hair, RIGHT, buff=0.4)
            self.play(Write(cost_haircut))

            self.wait_until_bookmark("qmark")
            cursor.blinking=False
            self.draw_qmark(cursor, UP, 2.5, 4)

        self.wait(4)



class Func_8_2_I_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Degree one Functions")

        cords = self.add_cords([0,5,1], [-10,15, 5], x_ticks=[-0,5,1], y_ticks=[-5,5,15]).shift(0.2*DOWN)
        plane = cords[0]

        x,y,_ = plane.c2p(0,0)


        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        
        self.add(cursor)

        crazy_hair = ImageMobject(assets_folder / "img" / "crazy_hair.png")
        crazy_hair = crazy_hair.scale(1.4/crazy_hair.get_width()).move_to([-1,-1.2,0])
        cost_haircut = MathTex("5", "\\$", color=c1t, font_size=fs2).next_to(crazy_hair, RIGHT, buff=0.4)

        scissors = ImageMobject(assets_folder / "img" / "scissors.png")
        scissors = scissors.scale(1/scissors.get_width()).move_to([-1,-2.6,0])
        cost_scissors = MathTex("10", "\\$", color=c1t, font_size=fs2).next_to(scissors, RIGHT, buff=0.4)

        self.add(crazy_hair, cost_haircut, scissors, cost_scissors)

        func = plane.plot(lambda x: x*5-10, color=BLUE)
        func_tex = MathTex("f", "(x)", "=", "5x", "-", "10", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.6)

        # Action Sequence
        with self.voiceover(
                text="""
                No, not quite.

                <bookmark mark="cords_in"/>
                At x equals zero, we've paid ten bucks for the scissors, but we haven't made any money yet.

                So the value of the function <bookmark mark="x_zero"/>at zero has to be negative ten.

                From there, for each increase in x, <bookmark mark="start_drawing"/> we make five bucks,
                so the function increases by five.

                This means the term of the <bookmark mark="f"/> function is f <bookmark mark="fx"/>of x
                equals <bookmark mark="five_x"/>five x <bookmark mark="minus_ten"/> minus ten.

                The minus ten correspond to the cost of the scissors,
                <bookmark mark="five_corresponds"/> and the five x corresponds to the
                five bucks we make per haircut.
                """
        ) as tracker:        
            
            self.wait_until_bookmark("cords_in")
            self.play(Write(cords))
            
            self.wait_until_bookmark("x_zero")
            x,y,_ = plane.c2p(0,-10)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y))

            self.wait_until_bookmark("start_drawing")
            cursor_updater = lambda m: m.move_to(func.get_end())
            cursor.add_updater(cursor_updater)
            self.play(Create(func), run_time=4)
            cursor.remove_updater(cursor_updater)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            x,y,_ = func_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(FadeOut(scissors), FadeOut(cost_scissors), FadeOut(crazy_hair), FadeOut(cost_haircut) , Write(func_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx")
            x,y,_ = func_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("five_x")
            x,y,_ = func_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("minus_ten")
            x,y,_ = func_tex[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("five_corresponds")
            x,y,_ = func_tex[3].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True


        self.wait(4)


#####################################
#####################################
TASK_Func_8_2_I_3_q = SophiaTaskDefinition(
    answerOptions = ["$\{0,1\}", "$\{1\}", "$\{0\}", "$\{-1,1\}"],
    correctAnswerIndex = 3,
    questionText = "What are the zeros of the polynomial function $f(x)=x^2-1$?"
)
class Func_8_2_I_3_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Degree one Functions")


        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        
        self.add(cursor)

        crazy_hair = ImageMobject(assets_folder / "img" / "crazy_hair.png")
        crazy_hair = crazy_hair.scale(3.5/crazy_hair.get_width()).move_to([0, -1.4, 0])
        self.add(crazy_hair)

        func_tex = MathTex("f", "(x)", "=", "5x", "-", "10", color=c1t, font_size=fs2).next_to(crazy_hair, UP, buff=0.8)


        with self.voiceover(
                text="""
                Now that we know that the money we have made giving haircuts is described by the <bookmark mark="func"/> function
                f <bookmark mark="fx"/> of x equals <bookmark mark="five_x"/>five x <bookmark mark="minus_ten"/> minus ten,
                after how many haircuts will you break even?
                """
        ) as tracker:        
            
            self.wait_until_bookmark("func")
            x,y,_ = func_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(func_tex), CursorMoveTo(cursor,x,y), run_time=0.6)

            self.wait_until_bookmark("fx")
            x,y,_ = func_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("five_x")
            x,y,_ = func_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("minus_ten")
            x,y,_ = func_tex[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True


        self.wait(4)

class Func_8_2_I_3_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Degree one Functions")


        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        
        self.add(cursor)

        crazy_hair = ImageMobject(assets_folder / "img" / "crazy_hair.png")
        crazy_hair = crazy_hair.scale(3.5/crazy_hair.get_width()).move_to([0, -1.4, 0])
        self.add(crazy_hair)

        func_tex = MathTex("f", "(x)", "=", "5x", "-", "10", color=c1t, font_size=fs2).next_to(crazy_hair, UP, buff=0.8)


        with self.voiceover(
                text="""
                Yep, that's correct.

                <bookmark mark="break_even"/> To break even, we need to make zero dollars. So
                we need to find the zero of the function that describes 
                """
        ) as tracker:        
            
            self.wait_until_bookmark("func")
            x,y,_ = func_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(func_tex), CursorMoveTo(cursor,x,y), run_time=0.6)

            self.wait_until_bookmark("fx")
            x,y,_ = func_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("five_x")
            x,y,_ = func_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("minus_ten")
            x,y,_ = func_tex[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True


        self.wait(4)


#####################################
#####################################
TASK_Func_8_2_I_4_q = SophiaTaskDefinition(
    answerOptions = ["$x_{12}=-\\tfrac{-b\pm\sqrt{b^2-4ac}}{2a}$", "$x_{12}=\pm c", "$x_{12}=-\\tfrac{-a\pm\sqrt{c^2-4ab}}{2b}$", "$x_{12}=-\\tfrac{b\pm\sqrt{c^2-2a}}{4ab}$"],
    correctAnswerIndex = 0,
    questionText = "Which of these formulas describes the zeros of the function $f(x)=ax^2+bx+c$?"
)
class Func_8_2_I_4_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Zeros of Polynomials")


        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        
        self.add(cursor)

        degree_one_bl = BulletedList("Set function to zero", "Solve for x", buff=0.2, font_size=fs3)
        for el in degree_one_bl:
            el.set_color(c1t)
        degree_one_h = Tex("Degree one:", color=c1t, font_size=fs2)
        degree_one = VGroup(degree_one_h, degree_one_bl).arrange(DOWN, aligned_edge=LEFT, buff=.2)

        degree_two_bl = BulletedList("$f(x)=ax^2+bx+c$","Which formula can we use?", buff=0.2, font_size=fs3)
        for el in degree_two_bl:
            el.set_color(c1t)
        degree_two_h = Tex("Degree two:", color=c1t, font_size=fs2)
        degree_two = VGroup(degree_two_h, degree_two_bl).arrange(DOWN, aligned_edge=LEFT, buff=.2).next_to(degree_one, DOWN, buff=0.8)

        both_degrees = VGroup(degree_one, degree_two).arrange(DOWN, aligned_edge=LEFT, buff=0.8)

        with self.voiceover(
                text="""
                We can find the zero <bookmark mark="deg_1"/>of a degree one polynomial
                <bookmark mark="set_to_zero"/> by setting the function equal to zero
                <bookmark mark="solve_for_x"/> and solving for x.

                We can also find the zero<bookmark mark="degree_two"/> of a degree two
                polynomial easily. Let's say you have a quadratic function
                <bookmark mark="f_quad"/>of the form f of x equals a x squared plus b x plus c.

                <bookmark mark="q"/>
                Which of these formulas can you use to find the zeros of the function?
                """
        ) as tracker:
            
            self.wait_until_bookmark("deg_1")
            x,y,_ = degree_one_h.get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.play(Write(degree_one_h), run_time=0.6)
            cursor.blinking=True
            
            self.wait_until_bookmark("set_to_zero")
            x,y,_ = degree_one_bl[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.play(Write(degree_one_bl[0]), run_time=0.6)
            cursor.blinking=True

            self.wait_until_bookmark("solve_for_x")
            x,y,_ = degree_one_bl[1].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.play(Write(degree_one_bl[1]), run_time=0.6)
            cursor.blinking=True

            self.wait_until_bookmark("degree_two")
            x,y,_ = degree_two_h.get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.play(Write(degree_two_h), run_time=0.6)
            cursor.blinking=True

            self.wait_until_bookmark("f_quad")
            x,y,_ = degree_two_bl[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.play(Write(degree_two_bl[0]), run_time=0.6)
            cursor.blinking=True

            self.wait_until_bookmark("q")
            cursor.blinking=False
            x,y,_ = degree_two_bl[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.play(Write(degree_two_bl[1]), run_time=0.6)
            cursor.blinking=True


        self.wait(4)


class Func_8_2_I_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Degree 2 Polynomials")


        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        
        self.add(cursor)

        degree_two_bl = BulletedList("$f(x)=ax^2+bx+c$","$\\Rightarrow x_{1,2}=-\\tfrac{-b\pm\sqrt{b^2-4ac}}{2a}$", "Quadratic Formula", buff=0.2, font_size=fs3)
        for el in degree_two_bl:
            el.set_color(c1t)
        degree_two_h = Tex("Degree two:", color=c1t, font_size=fs2)
        degree_two = VGroup(degree_two_h, degree_two_bl).arrange(DOWN, aligned_edge=LEFT, buff=.2)
        self.add(degree_two_h, degree_two_bl[0])

        with self.voiceover(
                text="""
                Yes, that is correct.

                The<bookmark mark="formula"/>formula x 1 2 equals negative b plus or
                minus the square root of b squared minus four a c all over two a
                describes the zeros of the function.

                It is called<bookmark mark="quad_formula"/> the quadratic formula.

                The plus minus symbol means that we can have up to two solutions, one
                where we add the square root and one where we subtract it.
                """
        ) as tracker:
            
            self.wait_until_bookmark("formula")
            x,y,_ = degree_two_bl[1].get_center()

            cursor.blinking=False
            self.play(CursorMoveResize(cursor,x,y, degree_two_bl[1].get_width()+0.2, degree_two_bl[1].get_height()+0.2), run_time=.3)
            self.play(Write(degree_two_bl[1]), run_time=0.6)

            self.wait_until_bookmark("quad_formula")
            x,y,_ = degree_two_bl[2].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y, 0.2, 0.2), run_time=.3)
            self.play(Write(degree_two_bl[2]), run_time=0.6)
            cursor.blinking=True


        self.wait(4)

class Func_8_2_I_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Degree 2 Polynomials")


        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        
        self.add(cursor)

        degree_two_bl = BulletedList("$f(x)=ax^2+bx+c$","$\\Rightarrow x_{1,2}=-\\tfrac{-b\pm\sqrt{b^2-4ac}}{2a}$", "Quadratic Formula", buff=0.2, font_size=fs3)
        for el in degree_two_bl:
            el.set_color(c1t)
        degree_two_h = Tex("Degree two:", color=c1t, font_size=fs2)
        degree_two = VGroup(degree_two_h, degree_two_bl).arrange(DOWN, aligned_edge=LEFT, buff=.2)
        self.add(degree_two_h, degree_two_bl[0])

        with self.voiceover(
                text="""
                No, that's not right.

                The<bookmark mark="formula"/>formula x 1 2 equals negative b plus or
                minus the square root of b squared minus four a c all over two a
                describes the zeros of the function.

                It is called<bookmark mark="quad_formula"/> the quadratic formula.

                The plus minus symbol means that we can have up to two solutions, one
                where we add the square root and one where we subtract it.
                """
        ) as tracker:
            
            self.wait_until_bookmark("formula")
            x,y,_ = degree_two_bl[1].get_center()

            cursor.blinking=False
            self.play(CursorMoveResize(cursor,x,y, degree_two_bl[1].get_width()+0.2, degree_two_bl[1].get_height()+0.2), run_time=.3)
            self.play(Write(degree_two_bl[1]), run_time=0.6)

            self.wait_until_bookmark("quad_formula")
            x,y,_ = degree_two_bl[2].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y, 0.2, 0.2), run_time=.3)
            self.play(Write(degree_two_bl[2]), run_time=0.6)
            cursor.blinking=True


        self.wait(4)

class Func_8_2_I_4_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Degree 2 Polynomials")


        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        
        self.add(cursor)

        degree_two_bl = BulletedList("$f(x)=ax^2+bx+c$","$\\Rightarrow x_{1,2}=-\\tfrac{-b\pm\sqrt{b^2-4ac}}{2a}$", "Quadratic Formula", buff=0.2, font_size=fs3)
        for el in degree_two_bl:
            el.set_color(c1t)
        degree_two_h = Tex("Degree two:", color=c1t, font_size=fs2)
        degree_two = VGroup(degree_two_h, degree_two_bl).arrange(DOWN, aligned_edge=LEFT, buff=.2)
        self.add(degree_two_h, degree_two_bl[0])

        with self.voiceover(
                text="""
                No, that's not right.

                The<bookmark mark="formula"/>formula x 1 2 equals negative b plus or
                minus the square root of b squared minus four a c all over two a
                describes the zeros of the function.

                It is called<bookmark mark="quad_formula"/> the quadratic formula.

                The plus minus symbol means that we can have up to two solutions, one
                where we add the square root and one where we subtract it.
                """
        ) as tracker:
            
            self.wait_until_bookmark("formula")
            x,y,_ = degree_two_bl[1].get_center()

            cursor.blinking=False
            self.play(CursorMoveResize(cursor,x,y, degree_two_bl[1].get_width()+0.2, degree_two_bl[1].get_height()+0.2), run_time=.3)
            self.play(Write(degree_two_bl[1]), run_time=0.6)

            self.wait_until_bookmark("quad_formula")
            x,y,_ = degree_two_bl[2].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y, 0.2, 0.2), run_time=.3)
            self.play(Write(degree_two_bl[2]), run_time=0.6)
            cursor.blinking=True


        self.wait(4)

class Func_8_2_I_4_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Degree 2 Polynomials")


        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        
        self.add(cursor)

        degree_two_bl = BulletedList("$f(x)=ax^2+bx+c$","$\\Rightarrow x_{1,2}=-\\tfrac{-b\pm\sqrt{b^2-4ac}}{2a}$", "Quadratic Formula", buff=0.2, font_size=fs3)
        for el in degree_two_bl:
            el.set_color(c1t)
        degree_two_h = Tex("Degree two:", color=c1t, font_size=fs2)
        degree_two = VGroup(degree_two_h, degree_two_bl).arrange(DOWN, aligned_edge=LEFT, buff=.2)
        self.add(degree_two_h, degree_two_bl[0])

        with self.voiceover(
                text="""
                No, that's not right.

                The<bookmark mark="formula"/>formula x 1 2 equals negative b plus or
                minus the square root of b squared minus four a c all over two a
                describes the zeros of the function.

                It is called<bookmark mark="quad_formula"/> the quadratic formula.

                The plus minus symbol means that we can have up to two solutions, one
                where we add the square root and one where we subtract it.
                """
        ) as tracker:
            
            self.wait_until_bookmark("formula")
            x,y,_ = degree_two_bl[1].get_center()

            cursor.blinking=False
            self.play(CursorMoveResize(cursor,x,y, degree_two_bl[1].get_width()+0.2, degree_two_bl[1].get_height()+0.2), run_time=.3)
            self.play(Write(degree_two_bl[1]), run_time=0.6)

            self.wait_until_bookmark("quad_formula")
            x,y,_ = degree_two_bl[2].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y, 0.2, 0.2), run_time=.3)
            self.play(Write(degree_two_bl[2]), run_time=0.6)
            cursor.blinking=True


        self.wait(4)




#####################################
#####################################
class Func_8_2_I_5(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Polynomial Functions: Zeros")

        cords = self.add_cords([-2,2,1], [-4,4, 1], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4])
        plane = cords[0]

        x,y,_ = plane.c2p(0,0)


        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        
        self.add(cursor)

        func = plane.plot(lambda x: x**2-1, color=BLUE)
        func_tex = MathTex("f", "(x)", "=", "x^2", "-", "1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        x_tex = MathTex("x", color=c1t, font_size=2*fs1)
        x_squared_tex = MathTex("x^2", color=c1t, font_size=2*fs1)
        x_cubed_tex = MathTex("x^3", color=c1t, font_size=2*fs1)
        x_to_the_fourth_tex = MathTex("x^4", color=c1t, font_size=2*fs1)
        x_to_the_fifth_tex = MathTex("x^5", color=c1t, font_size=2*fs1)
        x_to_the_sixth_tex = MathTex("x^6", color=c1t, font_size=2*fs1)
        x_to_the_seventh_tex = MathTex("x^7", color=c1t, font_size=2*fs1)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2.5/qmark.get_width()).move_to([-5, 1.4, 0])
        blist = BulletedList("Degree $1$: 1 zero\\\\ $\\Rightarrow$ set to zero, solve for $x$", "Degree $2$: $\\leq2$ zeros\\\\ $\\Rightarrow$ Quadratic Formula", "Degree $\geq3$: Many zeros\\\\ $\\Rightarrow$ Can be tricky", color=c1t, height=2, width=2).shift(0.6*LEFT)
        bracket = Brace(VGroup(blist[0], blist[1]), direction=RIGHT, color=GREEN)
        simple_solution = VGroup(Tex("Simple", font_size=fs3, color=GREEN), Tex("Solution", color=GREEN, font_size=fs3)).arrange(DOWN, aligned_edge=LEFT, buff=.2).next_to(bracket, RIGHT, buff=0.2)
        for idx in range(3):
            blist[idx].set_color(BLACK)
        # Action Sequence
        with self.voiceover(
                text="""              
                Here's a quick recap of finding the zeros of polynomial functions with different degrees

                Polynomials <bookmark mark="degree_one"/>of degree one have exactly one zero. We can find it
                by setting it to zero and then solving for x.

                Polynomials <bookmark mark="degree_two"/>of degree two have up to two zeros. We can find them
                using the quadratic formula.

                And finally polynomials <bookmark mark="many"/>of degree three or higher can have many
                zeros. In general, they can be more difficult to find.
                
                We just saw, that <bookmark mark="leq_2"/> we can solve polynomial
                equations of degree one and two using relatively simple techniques.
                <bookmark mark="greater_2"/>
                Finding the zeros for polynomials of degree three or higher can be more difficult,
                but we'll now learn about different ways we can still find them.
                """
        ) as tracker:        

            
            self.play(Write(x_tex))
            self.play(Transform(x_tex, x_squared_tex))
            self.play(Transform(x_tex, x_cubed_tex))
            self.play(Transform(x_tex, x_to_the_fourth_tex))
            self.play(Transform(x_tex, x_to_the_fifth_tex))
            self.play(Transform(x_tex, x_to_the_sixth_tex))
            self.play(Transform(x_tex, x_to_the_seventh_tex))
            self.play(Unwrite(x_tex))

            self.wait_until_bookmark("degree_one")
            x,y,_ = blist[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(blist[0]), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("degree_two")
            x,y,_ = blist[1].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(blist[1]), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("many")
            x,y,_ = blist[2].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(blist[2]), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("leq_2")
            x,y,_ = simple_solution[1].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(bracket), Write(simple_solution), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("greater_2")
            cursor.blinking=False
            x,y,_ = blist[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True


        self.wait(4)


#####################################
#####################################
TASK_Func_8_2_I_6_q = SophiaTaskDefinition(
    answerOptions = ["$\{2,1\}$", "$\{0,1\}$", "$\{0,1,2\}$", "$\{-1,1,2\}$"],
    correctAnswerIndex = 3,
    questionText = "What are the zeros of the function?"
)
class Func_8_2_I_6_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Polynomial Functions: Zeros")

        cords = self.add_cords([-2,2,1], [-4,4, 1], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4])
        plane = cords[0]

        x,y,_ = plane.c2p(0,0)


        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        
        self.add(cursor)

        func = plane.plot(lambda x: x**2-1, color=BLUE)
        func_tex = MathTex("f", "(x)", "=", "(x-2)", "(x+1)", "(x-1)", color=c1t, font_size=fs3).next_to(cords, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text="""              
                Now check out <bookmark mark="func"/> the function f <bookmark mark="fx"/> of x
                equals <bookmark mark="bracket_1"/> open bracket x minus two close bracket
                times <bookmark mark="bracket_2"/> open bracket x plus one close bracket
                times <bookmark mark="bracket_3"/> open bracket x minus one close bracket.

                It's a polynomial of degree three, because we're<bookmark mark="three"/>
                multiplying three factors of x together.
                <bookmark mark="qmark"/>
                What are the zeros of this function?
                """
        ) as tracker:        

            self.wait_until_bookmark("func")
            x,y,_ = func_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(func_tex), CursorMoveTo(cursor,x,y), run_time=0.6)

            self.wait_until_bookmark("fx")
            x,y,_ = func_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("bracket_1")
            x,y,_ = func_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("bracket_2")
            x,y,_ = func_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("bracket_3")
            x,y,_ = func_tex[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.wait(2)
            self.play(CursorMoveTo(cursor,0,-1.6))
            self.wait(0.2)
            cursor.blinking=True

            self.wait_until_bookmark("three")
            cursor.blinking=False
            one, two, three = cursor.copy()._start_fading(4), cursor.copy()._start_fading(4), cursor.copy()._start_fading(4)
            x1,y1,_ = func_tex[3].get_center()+0.3*DOWN
            x2,y2,_ = func_tex[4].get_center()+0.3*DOWN
            x3,y3,_ = func_tex[5].get_center()+0.3*DOWN
            self.play(CursorMoveTo(one,x1,y1), CursorMoveTo(two,x2,y2), CursorMoveTo(three,x3,y3), run_time=0.6)

            self.wait_until_bookmark("qmark")
            cursor.blinking=False
            self.draw_qmark(cursor, 2*DOWN, run_time=3)

        self.wait(4)


class Func_8_2_I_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Polynomial Functions: Zeros")

        cords = self.add_cords([-3,3,1], [-4,4, 1], x_ticks=[-3,0,3], y_ticks=[-4,-2,2,4])
        plane = cords[0]


        cursor = AltCursor(stroke_width=0.0, blinking=True, x=0, y=-1.6)
        cursor.autoFadeBackground = True
        # 
        self.add(cursor)

        func = plane.plot(lambda x: (x-2)*(x-1)*(x+1), x_range=[-1.5, 2.6,0.01], color=BLUE)
        func_tex = MathTex("f", "(x)", "=", "(x-2)", "(x+1)", "(x-1)", color=c1t, font_size=fs3).next_to(cords, DOWN, buff=0.4)
        zeros = Tex("$\\Rightarrow$ Zeros: $\\{-1,1,2\\}$", color=c1t, font_size=fs2).next_to(func_tex, DOWN, buff=0.4)
        self.add(func_tex)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right.

                The zeros of a function are the values of x where the function equals zero.

                Since we are <bookmark mark="three"/>multiplying three factors together, the function equals zero
                when any of the factors equals zero.

                <bookmark mark="factor_one"/> The first factor equals zero when x equals two,
                <bookmark mark="factor_two"/>the second factor equals zero when x equals negative one,
                and <bookmark mark="factor_three"/>the third factor equals zero when x equals one.
                <bookmark mark="fade_cursor"/>
                So the zeros of the function are <bookmark mark="zeros"/> negative one, one, and two.

                <bookmark mark="cords"/>
                We can also verify this by <bookmark mark="graph"/>looking at the graph of the function.
                As you can see, the function equals zero at<bookmark mark="z1"/> x equals negative one,
                <bookmark mark="z2"/>x equals one, and<bookmark mark="z3"/>x equals two.
                """
        ) as tracker:        


            self.wait_until_bookmark("three")
            cursor.blinking=False
            one, two, three = cursor.copy()._start_fading(4), cursor.copy()._start_fading(4), cursor.copy()._start_fading(4)
            x1,y1,_ = func_tex[3].get_center()+0.3*DOWN
            x2,y2,_ = func_tex[4].get_center()+0.3*DOWN
            x3,y3,_ = func_tex[5].get_center()+0.3*DOWN
            self.play(CursorMoveTo(one,x1,y1), CursorMoveTo(two,x2,y2), CursorMoveTo(three,x3,y3), run_time=0.6)
            cursor.blinking=True

            self.wait_until_bookmark("factor_one")
            x,y,_ = func_tex[3].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("factor_two")
            x,y,_ = func_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("factor_three")
            x,y,_ = func_tex[5].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fade_cursor")
            cursor.blinking=True

            self.wait_until_bookmark("zeros")
            cursor.blinking=False
            x,y,_ = zeros.get_center()+0.4*DOWN
            self.play(Write(zeros), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("cords")
            self.play(Create(cords))

            self.wait_until_bookmark("graph")
            x,y,_ = func.get_start()
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(func.get_end())))
            self.play(Create(func))
            cursor.blinking=True

            self.wait_until_bookmark("z1")
            x,y,_ = plane.c2p(-1,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("z2")
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("z3")
            x,y,_ = plane.c2p(2,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.wait(1)
            cursor.blinking=True


        self.wait(4)


class Func_8_2_I_6_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Polynomial Functions: Zeros")

        cords = self.add_cords([-3,3,1], [-4,4, 1], x_ticks=[-3,0,3], y_ticks=[-4,-2,2,4])
        plane = cords[0]


        cursor = AltCursor(stroke_width=0.0, blinking=True, x=0, y=-1.6)
        cursor.autoFadeBackground = True
        # 
        self.add(cursor)

        func = plane.plot(lambda x: (x-2)*(x-1)*(x+1), x_range=[-1.5, 2.6,0.01], color=BLUE)
        func_tex = MathTex("f", "(x)", "=", "(x-2)", "(x+1)", "(x-1)", color=c1t, font_size=fs3).next_to(cords, DOWN, buff=0.4)
        zeros = Tex("$\\Rightarrow$ Zeros: $\\{-1,1,2\\}$", color=c1t, font_size=fs2).next_to(func_tex, DOWN, buff=0.4)
        self.add(func_tex)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right.

                The zeros of a function are the values of x where the function equals zero.

                Since we are <bookmark mark="three"/>multiplying three factors together, the function equals zero
                when any of the factors equals zero.

                <bookmark mark="factor_one"/> The first factor equals zero when x equals two,
                <bookmark mark="factor_two"/>the second factor equals zero when x equals negative one,
                and <bookmark mark="factor_three"/>the third factor equals zero when x equals one.
                <bookmark mark="fade_cursor"/>
                So the zeros of the function are <bookmark mark="zeros"/> negative one, one, and two.

                <bookmark mark="cords"/>
                We can also verify this by <bookmark mark="graph"/>looking at the graph of the function.
                As you can see, the function equals zero at<bookmark mark="z1"/> x equals negative one,
                <bookmark mark="z2"/>x equals one, and<bookmark mark="z3"/>x equals two.
                """
        ) as tracker:        


            self.wait_until_bookmark("three")
            cursor.blinking=False
            one, two, three = cursor.copy()._start_fading(4), cursor.copy()._start_fading(4), cursor.copy()._start_fading(4)
            x1,y1,_ = func_tex[3].get_center()+0.3*DOWN
            x2,y2,_ = func_tex[4].get_center()+0.3*DOWN
            x3,y3,_ = func_tex[5].get_center()+0.3*DOWN
            self.play(CursorMoveTo(one,x1,y1), CursorMoveTo(two,x2,y2), CursorMoveTo(three,x3,y3), run_time=0.6)
            cursor.blinking=True

            self.wait_until_bookmark("factor_one")
            x,y,_ = func_tex[3].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("factor_two")
            x,y,_ = func_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("factor_three")
            x,y,_ = func_tex[5].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fade_cursor")
            cursor.blinking=True

            self.wait_until_bookmark("zeros")
            cursor.blinking=False
            x,y,_ = zeros.get_center()+0.4*DOWN
            self.play(Write(zeros), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("cords")
            self.play(Create(cords))

            self.wait_until_bookmark("graph")
            x,y,_ = func.get_start()
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(func.get_end())))
            self.play(Create(func))
            cursor.blinking=True

            self.wait_until_bookmark("z1")
            x,y,_ = plane.c2p(-1,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("z2")
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("z3")
            x,y,_ = plane.c2p(2,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.wait(1)
            cursor.blinking=True


        self.wait(4)


class Func_8_2_I_6_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title("Polynomial Functions: Zeros")

        cords = self.add_cords([-3,3,1], [-4,4, 1], x_ticks=[-3,0,3], y_ticks=[-4,-2,2,4])
        plane = cords[0]


        cursor = AltCursor(stroke_width=0.0, blinking=True, x=0, y=-1.6)
        cursor.autoFadeBackground = True
        # 
        self.add(cursor)

        func = plane.plot(lambda x: (x-2)*(x-1)*(x+1), x_range=[-1.5, 2.6,0.01], color=BLUE)
        func_tex = MathTex("f", "(x)", "=", "(x-2)", "(x+1)", "(x-1)", color=c1t, font_size=fs3).next_to(cords, DOWN, buff=0.4)
        zeros = Tex("$\\Rightarrow$ Zeros: $\\{-1,1,2\\}$", color=c1t, font_size=fs2).next_to(func_tex, DOWN, buff=0.4)
        self.add(func_tex)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right.

                The zeros of a function are the values of x where the function equals zero.

                Since we are <bookmark mark="three"/>multiplying three factors together, the function equals zero
                when any of the factors equals zero.

                <bookmark mark="factor_one"/> The first factor equals zero when x equals two,
                <bookmark mark="factor_two"/>the second factor equals zero when x equals negative one,
                and <bookmark mark="factor_three"/>the third factor equals zero when x equals one.
                <bookmark mark="fade_cursor"/>
                So the zeros of the function are <bookmark mark="zeros"/> negative one, one, and two.

                <bookmark mark="cords"/>
                We can also verify this by <bookmark mark="graph"/>looking at the graph of the function.
                As you can see, the function equals zero at<bookmark mark="z1"/> x equals negative one,
                <bookmark mark="z2"/>x equals one, and<bookmark mark="z3"/>x equals two.
                """
        ) as tracker:        


            self.wait_until_bookmark("three")
            cursor.blinking=False
            one, two, three = cursor.copy()._start_fading(4), cursor.copy()._start_fading(4), cursor.copy()._start_fading(4)
            x1,y1,_ = func_tex[3].get_center()+0.3*DOWN
            x2,y2,_ = func_tex[4].get_center()+0.3*DOWN
            x3,y3,_ = func_tex[5].get_center()+0.3*DOWN
            self.play(CursorMoveTo(one,x1,y1), CursorMoveTo(two,x2,y2), CursorMoveTo(three,x3,y3), run_time=0.6)
            cursor.blinking=True

            self.wait_until_bookmark("factor_one")
            x,y,_ = func_tex[3].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("factor_two")
            x,y,_ = func_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("factor_three")
            x,y,_ = func_tex[5].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fade_cursor")
            cursor.blinking=True

            self.wait_until_bookmark("zeros")
            cursor.blinking=False
            x,y,_ = zeros.get_center()+0.4*DOWN
            self.play(Write(zeros), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("cords")
            self.play(Create(cords))

            self.wait_until_bookmark("graph")
            x,y,_ = func.get_start()
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(func.get_end())))
            self.play(Create(func))
            cursor.blinking=True

            self.wait_until_bookmark("z1")
            x,y,_ = plane.c2p(-1,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("z2")
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("z3")
            x,y,_ = plane.c2p(2,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.wait(1)
            cursor.blinking=True


        self.wait(4)


class Func_8_2_I_6_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
    
        #Adding the checkered grid
        self.add_mathgrid()

        #Adding the title
        title = self.add_title("Polynomial Functions: Zeros")

        #Adding the coordinate system
        cords = self.add_cords([-3,3,1], [-4,4, 1], x_ticks=[-3,0,3], y_ticks=[-4,-2,2,4])
        plane = cords[0]

        #Adding the cursor to the scene at x,y = 0,-1.6
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=0, y=-1.6)
        cursor.autoFadeBackground = True
        self.add(cursor)


        func = plane.plot(lambda x: (x-2)*(x-1)*(x+1), x_range=[-1.5, 2.6,0.01], color=BLUE) #plot of the function
        func_tex = MathTex("f", "(x)", "=", "(x-2)", "(x+1)", "(x-1)", color=c1t, font_size=fs3).next_to(cords, DOWN, buff=0.4) #tex of the function
        zeros = Tex("$\\Rightarrow$ Zeros: $\\{-1,1,2\\}$", color=c1t, font_size=fs2).next_to(func_tex, DOWN, buff=0.4) #tex describing the zeros of the function
        self.add(func_tex)

        # Action Sequence
        with self.voiceover(
                text="""
                Yes, that's correct. Well done.

                The zeros of a function are the values of x where the function equals zero.

                Since we are <bookmark mark="three"/>multiplying three factors together, the function equals zero
                when any of the factors equals zero.

                <bookmark mark="factor_one"/> The first factor equals zero when x equals two,
                <bookmark mark="factor_two"/>the second factor equals zero when x equals negative one,
                and <bookmark mark="factor_three"/>the third factor equals zero when x equals one.
                <bookmark mark="fade_cursor"/>
                So the zeros of the function are <bookmark mark="zeros"/> negative one, one, and two.

                <bookmark mark="cords"/>
                We can also verify this by <bookmark mark="graph"/>looking at the graph of the function.
                As you can see, the function equals zero at<bookmark mark="z1"/> x equals negative one,
                <bookmark mark="z2"/>x equals one, and<bookmark mark="z3"/>x equals two.
                """
        ) as tracker:        

            self.wait_until_bookmark("three") #sync with the text at the bookmark "three"
            cursor.blinking=False
            one, two, three = cursor.copy()._start_fading(4), cursor.copy()._start_fading(4), cursor.copy()._start_fading(4) #create three copies of the cursor

            #get the coordinates of the three factors in the tex of the function
            x1,y1,_ = func_tex[3].get_center()+0.3*DOWN
            x2,y2,_ = func_tex[4].get_center()+0.3*DOWN
            x3,y3,_ = func_tex[5].get_center()+0.3*DOWN

            #move the three cursors to the three factors
            self.play(CursorMoveTo(one,x1,y1), CursorMoveTo(two,x2,y2), CursorMoveTo(three,x3,y3), run_time=0.6)
            cursor.blinking=True

            self.wait_until_bookmark("factor_one") #sync with the text at the bookmark "factor_one"
            x,y,_ = func_tex[3].get_center()+0.4*DOWN #get the coordinates of the first factor
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3) #move the cursor to the first factor

            self.wait_until_bookmark("factor_two") #sync with the text at the bookmark "factor_two"
            x,y,_ = func_tex[4].get_center()+0.4*DOWN #get the coordinates of the second factor
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3) #move the cursor to the second factor

            self.wait_until_bookmark("factor_three") #sync with the text at the bookmark "factor_three"
            x,y,_ = func_tex[5].get_center()+0.4*DOWN #get the coordinates of the third factor
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3) #move the cursor to the third factor

            self.wait_until_bookmark("fade_cursor") #sync with the text at the bookmark "fade_cursor"
            cursor.blinking=True #make the cursor blink again

            self.wait_until_bookmark("zeros") #sync with the text at the bookmark "zeros"
            cursor.blinking=False
            x,y,_ = zeros.get_center()+0.4*DOWN #get the coordinates of the tex describing the zeros
            self.play(Write(zeros), CursorMoveTo(cursor,x,y), run_time=0.3) #write the tex describing the zeros and move the cursor to it
            cursor.blinking=True

            self.wait_until_bookmark("cords") #sync with the text at the bookmark "cords"
            self.play(Create(cords)) #create the coordinate system

            self.wait_until_bookmark("graph") #sync with the text at the bookmark "graph"
            x,y,_ = func.get_start() #get the coordinates of the start of the plot
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3) #move the cursor to the start of the plot
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(func.get_end()))) #create a copy of the cursor that fades out and add an updater that always moves it to the end of the plot
            self.play(Create(func)) #create the plot
            cursor.blinking=True

            self.wait_until_bookmark("z1") #sync with the text at the bookmark "z1"
            x,y,_ = plane.c2p(-1,0) #get the coordinates of the zero at x=-1
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3) #move the cursor to the zero at x=-1

            self.wait_until_bookmark("z2") #sync with the text at the bookmark "z2"
            x,y,_ = plane.c2p(1,0) #get the coordinates of the zero at x=1
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3) #move the cursor to the zero at x=1

            self.wait_until_bookmark("z3") #sync with the text at the bookmark "z3"
            x,y,_ = plane.c2p(2,0) #get the coordinates of the zero at x=2
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3) #move the cursor to the zero at x=2
            self.wait(1) 
            cursor.blinking=True


        self.wait(4)
