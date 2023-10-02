# 6_2: Exponential Functions: Term & Graph

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
class Func_6_2_I_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Exponential Function")

        cords = self.add_cords([0, 6, 1], [0, 64, 8], x_ticks=[2,4,6], y_ticks=[16,32,48,64])
        plane = cords[0]

        f_tex = MathTex("f","(x)", "=", "a", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        a_tex_g1 = MathTex("a>1", color=BLUE, font_size=fs2).next_to(f_tex, DOWN, buff=0.2)
        f = lambda x:2**x
        f_plot = plane.plot(f, color=BLUE)

        cords_2 = self.add_cords([0, 6, 1], [0, 1, 0.25], x_ticks=[2,4,6], y_ticks=[0,0.25,0.5,0.75,1])
        plane_2 = cords_2[0]

        a_tex_l1 = MathTex("0<a<1", color=GREEN, font_size=fs2).next_to(f_tex, DOWN, buff=0.2)
        g = lambda x:0.5**x
        g_plot = plane_2.plot(g, color=GREEN)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text="""
                Quick Overview of exponential functions.
                The term of an exponential function is <bookmark mark="f"/>f of <bookmark mark="fx"/>x
                equals <bookmark mark="fa"/>a to the power of <bookmark mark="fxx"/> x.

                The plot of the exponential function has two different shapes, depending on the value of <bookmark mark="a"/>a.

                If <bookmark mark="a_g1"/>a is greater than one, the function<bookmark mark="plot_1"/> increases at an increasing
                rate, so it gets steeper and steeper as x increases.

                If <bookmark mark="a_l1"/>a is between zero and one, the function<bookmark mark="plot_2"/> decreases at a decreasing
                rate, so its decreasing, and it gets flatter and flatter as x increases.
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(f_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx")
            x,y,_ = f_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fa")
            x,y,_ = f_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fxx")
            x,y,_ = f_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("a")
            cursor.blinking=False
            x,y,_ = f_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("a_g1")
            cursor.blinking=False
            x,y,_ = a_tex_g1.get_center()+0.4*DOWN
            self.play(Write(a_tex_g1), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.play(Write(cords))
            cursor.blinking=True

            self.wait_until_bookmark("plot_1")
            cursor.blinking=False
            x,y,_ = f_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(f_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(f_plot))
            cursor.blinking=True

            self.wait_until_bookmark("a_l1")
            cursor.blinking=False
            x,y,_ = a_tex_l1.get_center()+0.4*DOWN
            self.play(ReplacementTransform(a_tex_g1, a_tex_l1), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.play(ReplacementTransform(cords, cords_2), Unwrite(f_plot), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("plot_2")
            cursor.blinking=False
            x,y,_ = g_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g_plot))
            cursor.blinking=True

        self.wait(4)


#####################################
#####################################
TASK_Func_6_2_I_2_q = SophiaTaskDefinition(
    answerOptions = ["$a=1$", "$a=-1$", "$a=\frac{1}{2}$", "$a=2$"],
    correctAnswerIndex = 2,
    questionText = "Given the exponential function $f(x)=a^x$, which value of $a$ describes the amount of pizza left after x minutes?"
)
class Func_6_2_I_2_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Exponential Function")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        full_pizza = ImageMobject(assets_folder / "img" / "full_pizza.png")
        full_pizza = full_pizza.scale(2.5/full_pizza.get_width()).move_to([-5, 1, 0])
        
        half_pizza = ImageMobject(assets_folder / "img" / "half_pizza.png")
        half_pizza = half_pizza.scale(2.5/half_pizza.get_width()).move_to([-5, 1, 0])

        quarter_pizza = ImageMobject(assets_folder / "img" / "quarter_pizza.png")
        quarter_pizza = quarter_pizza.scale(2.5/quarter_pizza.get_width()).move_to([-5, 1, 0])

        eigth_pizza = ImageMobject(assets_folder / "img" / "eigth_pizza.png")
        eigth_pizza = eigth_pizza.scale(2.5/eigth_pizza.get_width()).move_to([-5, 1, 0])

        all_pizza = Group(full_pizza, half_pizza, quarter_pizza, eigth_pizza)

        clock = ImageMobject(assets_folder / "img" / "clock.png")
        clock = clock.scale(2.5/clock.get_width()).move_to([-5, -2, 0])

        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2.5/qmark.get_width()).move_to([-5, 1, 0])

        f_tex = MathTex("f","(x)", "=", "a", "^x", color=c1t, font_size=fs2).next_to(full_pizza, DOWN, buff=0.4).shift(RIGHT*5)
        x_minutes = Tex("$x$", ": \\# Minutes", color=c1t, font_size=fs2).next_to(f_tex, DOWN, buff=0.2)

        

        # Action Sequence
        with self.voiceover(
                text="""
                My friends cooked pizza <bookmark mark="full_pizza"/> for dinner, and I am running<bookmark mark="late"/> late!
                They hate it, when I'm late, so they decided to start eating without me.
                Every Minute, they will eat half of the remaining pizza.
                So after one minute, only <bookmark mark="full"/> half of the pizza is left.
                After two minutes, only <bookmark mark="half"/> one quarter of the pizza is left.
                After three minutes, only <bookmark mark="quarter"/> one eighth of the pizza is left, and so on...

                Now since they're already annoyed at me, I might as well annoy them a bit more, so I'll
                tell them how to describe the amount of pizza that is left for me using an exponential <bookmark mark="f"/>function
                <bookmark mark="fx"/>f of x <bookmark mark="fa"/>equals a to the <bookmark mark="fxx"/>power of  x.

                Now all I need to know is this: <bookmark mark="qmark"/>Which value do I plug in for a, <bookmark mark="x_minutes"/>
                if x is the number <bookmark mark="minutes"/>of minutes that have passed?
                """
        ) as tracker:
            
            self.wait_until_bookmark("full_pizza")
            self.play(all_pizza.animate.shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("late")
            self.play(clock.animate.shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("full")
            self.play(clock.animate.shift(RIGHT*5), FadeOut(full_pizza))

            self.wait_until_bookmark("half")
            self.play(FadeOut(half_pizza))

            self.wait_until_bookmark("quarter")
            self.play(FadeOut(quarter_pizza))

            self.wait_until_bookmark("f")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(f_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx")
            x,y,_ = f_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fa")
            x,y,_ = f_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fxx")
            x,y,_ = f_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("qmark")
            self.play(qmark.animate.shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("x_minutes")
            cursor.blinking=False
            x,y,_ = x_minutes[0].get_center()+0.4*DOWN
            self.play(Write(x_minutes), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("minutes")
            x,y,_ = x_minutes[1].get_center()+0.4*DOWN  
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

        self.wait(4)


class Func_6_2_I_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Exponential Function")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        full_pizza = ImageMobject(assets_folder / "img" / "full_pizza.png")
        full_pizza = full_pizza.scale(2.5/full_pizza.get_width()).move_to([0, 1, 0])
        
        half_pizza = ImageMobject(assets_folder / "img" / "half_pizza.png")
        half_pizza = half_pizza.scale(2.5/half_pizza.get_width()).move_to([0, 1, 0])

        quarter_pizza = ImageMobject(assets_folder / "img" / "quarter_pizza.png")
        quarter_pizza = quarter_pizza.scale(2.5/quarter_pizza.get_width()).move_to([0, 1, 0])

        eigth_pizza = ImageMobject(assets_folder / "img" / "eigth_pizza.png")
        eigth_pizza = eigth_pizza.scale(2.5/eigth_pizza.get_width()).move_to([0, 1, 0])

        all_pizza = Group(full_pizza, half_pizza, quarter_pizza, eigth_pizza)
        self.add(all_pizza)

        clock = ImageMobject(assets_folder / "img" / "clock.png")
        clock = clock.scale(2.5/clock.get_width()).move_to([-5, -2, 0])

        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2.5/qmark.get_width()).move_to([0, 1, 0])

        f_tex = MathTex("f","(x)", "=", "\\frac12", "^x", color=c1t, font_size=fs2).next_to(full_pizza, DOWN, buff=0.4)
        sol_a = MathTex("\\Rightarrow","a","=", "\\frac12", color=c1t, font_size=fs2).next_to(f_tex, DOWN, buff=0.2)


        t = MathTable(
            [["x", "\\text{Remaining Pizza}"],
            ["1", "\\tfrac12"],
            ["2", "(\\tfrac12)^2"],
            ["3", "(\\tfrac12)^3"],
            ["...", "..."]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(full_pizza, DOWN, buff=0.4)
        
        rows = t.get_rows()
        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines())
        

        

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not correct.
                Every time a <bookmark mark="minute"/>minute passes, my friends eat <bookmark mark="half_1"/>half of the remaining pizza.
                That means every time x increases by one (which happens every minute), the amount of pizza left is <bookmark mark="half_2"/>
                multiplied by a half. This means, <bookmark mark="row_1"/>that after one minute, we multiply the original amount of pizza  by a half.
                <bookmark mark="row_2"/>After two minutes, we multiply the amount of pizza left by a half squared.
                <bookmark mark="row_3"/>After three minutes, we multiply the amount of pizza left by a half cubed, <bookmark mark="row_4"/>and so on...
                This means, that the amount of pizza left after x minutes is <bookmark mark="f"/>f of <bookmark mark="fx"/>x
                equals <bookmark mark="fa"/>one half to the power of <bookmark mark="fxx"/> x.
                <bookmark mark="sol_a"/>So a <bookmark mark="sol_half"/>is one half.
                """
        ) as tracker:
            
            self.wait_until_bookmark("minute")
            self.play(clock.animate.shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("half_1")
            self.play(clock.animate.shift(RIGHT*5), FadeOut(full_pizza))

            self.wait_until_bookmark("half_2")
            self.play(FadeOut(half_pizza))

            self.wait_until_bookmark("row_1")
            self.play(Write(t_structure), Write(rows[0]), run_time=0.5)
            x,y,_ = rows[1].get_right()+0.4*RIGHT
            cursor.blinking=False
            self.play(Write(rows[1]), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("row_2")
            x,y,_ = rows[2].get_right()+0.4*RIGHT
            self.play(Write(rows[2]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("row_3")
            x,y,_ = rows[3].get_right()+0.4*RIGHT
            self.play(Write(rows[3]), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("row_4")
            x,y,_ = rows[4].get_right()+0.4*RIGHT
            self.play(Write(rows[4]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(t.animate.shift(RIGHT*5), Write(f_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx")
            x,y,_ = f_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fa")
            x,y,_ = f_tex[3].get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fxx")
            x,y,_ = f_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol_a")
            cursor.blinking=False
            x,y,_ = sol_a[1].get_center()+0.4*DOWN
            self.play(Write(sol_a), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sol_half")
            x,y,_ = sol_a[3].get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True


        self.wait(4)

class Func_6_2_I_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Exponential Function")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        full_pizza = ImageMobject(assets_folder / "img" / "full_pizza.png")
        full_pizza = full_pizza.scale(2.5/full_pizza.get_width()).move_to([0, 1, 0])
        
        half_pizza = ImageMobject(assets_folder / "img" / "half_pizza.png")
        half_pizza = half_pizza.scale(2.5/half_pizza.get_width()).move_to([0, 1, 0])

        quarter_pizza = ImageMobject(assets_folder / "img" / "quarter_pizza.png")
        quarter_pizza = quarter_pizza.scale(2.5/quarter_pizza.get_width()).move_to([0, 1, 0])

        eigth_pizza = ImageMobject(assets_folder / "img" / "eigth_pizza.png")
        eigth_pizza = eigth_pizza.scale(2.5/eigth_pizza.get_width()).move_to([0, 1, 0])

        all_pizza = Group(full_pizza, half_pizza, quarter_pizza, eigth_pizza)
        self.add(all_pizza)

        clock = ImageMobject(assets_folder / "img" / "clock.png")
        clock = clock.scale(2.5/clock.get_width()).move_to([-5, -2, 0])

        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2.5/qmark.get_width()).move_to([0, 1, 0])

        f_tex = MathTex("f","(x)", "=", "\\frac12", "^x", color=c1t, font_size=fs2).next_to(full_pizza, DOWN, buff=0.4)
        sol_a = MathTex("\\Rightarrow","a","=", "\\frac12", color=c1t, font_size=fs2).next_to(f_tex, DOWN, buff=0.2)


        t = MathTable(
            [["x", "\\text{Remaining Pizza}"],
            ["1", "\\tfrac12"],
            ["2", "(\\tfrac12)^2"],
            ["3", "(\\tfrac12)^3"],
            ["...", "..."]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(full_pizza, DOWN, buff=0.4)
        
        rows = t.get_rows()
        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines())
        

        

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not correct.
                Every time a <bookmark mark="minute"/>minute passes, my friends eat <bookmark mark="half_1"/>half of the remaining pizza.
                That means every time x increases by one (which happens every minute), the amount of pizza left is <bookmark mark="half_2"/>
                multiplied by a half. This means, <bookmark mark="row_1"/>that after one minute, we multiply the original amount of pizza  by a half.
                <bookmark mark="row_2"/>After two minutes, we multiply the amount of pizza left by a half squared.
                <bookmark mark="row_3"/>After three minutes, we multiply the amount of pizza left by a half cubed, <bookmark mark="row_4"/>and so on...
                This means, that the amount of pizza left after x minutes is <bookmark mark="f"/>f of <bookmark mark="fx"/>x
                equals <bookmark mark="fa"/>one half to the power of <bookmark mark="fxx"/> x.
                <bookmark mark="sol_a"/>So a <bookmark mark="sol_half"/>is one half.
                """
        ) as tracker:
            
            self.wait_until_bookmark("minute")
            self.play(clock.animate.shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("half_1")
            self.play(clock.animate.shift(RIGHT*5), FadeOut(full_pizza))

            self.wait_until_bookmark("half_2")
            self.play(FadeOut(half_pizza))

            self.wait_until_bookmark("row_1")
            self.play(Write(t_structure), Write(rows[0]), run_time=0.5)
            x,y,_ = rows[1].get_right()+0.4*RIGHT
            cursor.blinking=False
            self.play(Write(rows[1]), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("row_2")
            x,y,_ = rows[2].get_right()+0.4*RIGHT
            self.play(Write(rows[2]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("row_3")
            x,y,_ = rows[3].get_right()+0.4*RIGHT
            self.play(Write(rows[3]), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("row_4")
            x,y,_ = rows[4].get_right()+0.4*RIGHT
            self.play(Write(rows[4]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(t.animate.shift(RIGHT*5), Write(f_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx")
            x,y,_ = f_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fa")
            x,y,_ = f_tex[3].get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fxx")
            x,y,_ = f_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol_a")
            cursor.blinking=False
            x,y,_ = sol_a[1].get_center()+0.4*DOWN
            self.play(Write(sol_a), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sol_half")
            x,y,_ = sol_a[3].get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True


        self.wait(4)

class Func_6_2_I_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Exponential Function")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        full_pizza = ImageMobject(assets_folder / "img" / "full_pizza.png")
        full_pizza = full_pizza.scale(2.5/full_pizza.get_width()).move_to([0, 1, 0])
        
        half_pizza = ImageMobject(assets_folder / "img" / "half_pizza.png")
        half_pizza = half_pizza.scale(2.5/half_pizza.get_width()).move_to([0, 1, 0])

        quarter_pizza = ImageMobject(assets_folder / "img" / "quarter_pizza.png")
        quarter_pizza = quarter_pizza.scale(2.5/quarter_pizza.get_width()).move_to([0, 1, 0])

        eigth_pizza = ImageMobject(assets_folder / "img" / "eigth_pizza.png")
        eigth_pizza = eigth_pizza.scale(2.5/eigth_pizza.get_width()).move_to([0, 1, 0])

        all_pizza = Group(full_pizza, half_pizza, quarter_pizza, eigth_pizza)
        self.add(all_pizza)

        clock = ImageMobject(assets_folder / "img" / "clock.png")
        clock = clock.scale(2.5/clock.get_width()).move_to([-5, -2, 0])

        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2.5/qmark.get_width()).move_to([0, 1, 0])

        f_tex = MathTex("f","(x)", "=", "\\frac12", "^x", color=c1t, font_size=fs2).next_to(full_pizza, DOWN, buff=0.4)
        sol_a = MathTex("\\Rightarrow","a","=", "\\frac12", color=c1t, font_size=fs2).next_to(f_tex, DOWN, buff=0.2)


        t = MathTable(
            [["x", "\\text{Remaining Pizza}"],
            ["1", "\\tfrac12"],
            ["2", "(\\tfrac12)^2"],
            ["3", "(\\tfrac12)^3"],
            ["...", "..."]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(full_pizza, DOWN, buff=0.4)
        
        rows = t.get_rows()
        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines())
        

        

        # Action Sequence
        with self.voiceover(
                text="""
                Yes, that's right!
                Every time a <bookmark mark="minute"/>minute passes, my friends eat <bookmark mark="half_1"/>half of the remaining pizza.
                That means every time x increases by one (which happens every minute), the amount of pizza left is <bookmark mark="half_2"/>
                multiplied by a half. This means, <bookmark mark="row_1"/>that after one minute, we multiply the original amount of pizza  by a half.
                <bookmark mark="row_2"/>After two minutes, we multiply the amount of pizza left by a half squared.
                <bookmark mark="row_3"/>After three minutes, we multiply the amount of pizza left by a half cubed, <bookmark mark="row_4"/>and so on...
                This means, that the amount of pizza left after x minutes is <bookmark mark="f"/>f of <bookmark mark="fx"/>x
                equals <bookmark mark="fa"/>one half to the power of <bookmark mark="fxx"/> x.
                <bookmark mark="sol_a"/>So a <bookmark mark="sol_half"/>is one half.
                """
        ) as tracker:
            
            self.wait_until_bookmark("minute")
            self.play(clock.animate.shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("half_1")
            self.play(clock.animate.shift(RIGHT*5), FadeOut(full_pizza))

            self.wait_until_bookmark("half_2")
            self.play(FadeOut(half_pizza))

            self.wait_until_bookmark("row_1")
            self.play(Write(t_structure), Write(rows[0]), run_time=0.5)
            x,y,_ = rows[1].get_right()+0.4*RIGHT
            cursor.blinking=False
            self.play(Write(rows[1]), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("row_2")
            x,y,_ = rows[2].get_right()+0.4*RIGHT
            self.play(Write(rows[2]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("row_3")
            x,y,_ = rows[3].get_right()+0.4*RIGHT
            self.play(Write(rows[3]), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("row_4")
            x,y,_ = rows[4].get_right()+0.4*RIGHT
            self.play(Write(rows[4]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(t.animate.shift(RIGHT*5), Write(f_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx")
            x,y,_ = f_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fa")
            x,y,_ = f_tex[3].get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fxx")
            x,y,_ = f_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol_a")
            cursor.blinking=False
            x,y,_ = sol_a[1].get_center()+0.4*DOWN
            self.play(Write(sol_a), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sol_half")
            x,y,_ = sol_a[3].get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True


        self.wait(4)

class Func_6_2_I_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Exponential Function")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        full_pizza = ImageMobject(assets_folder / "img" / "full_pizza.png")
        full_pizza = full_pizza.scale(2.5/full_pizza.get_width()).move_to([0, 1, 0])
        
        half_pizza = ImageMobject(assets_folder / "img" / "half_pizza.png")
        half_pizza = half_pizza.scale(2.5/half_pizza.get_width()).move_to([0, 1, 0])

        quarter_pizza = ImageMobject(assets_folder / "img" / "quarter_pizza.png")
        quarter_pizza = quarter_pizza.scale(2.5/quarter_pizza.get_width()).move_to([0, 1, 0])

        eigth_pizza = ImageMobject(assets_folder / "img" / "eigth_pizza.png")
        eigth_pizza = eigth_pizza.scale(2.5/eigth_pizza.get_width()).move_to([0, 1, 0])

        all_pizza = Group(full_pizza, half_pizza, quarter_pizza, eigth_pizza)
        self.add(all_pizza)

        clock = ImageMobject(assets_folder / "img" / "clock.png")
        clock = clock.scale(2.5/clock.get_width()).move_to([-5, -2, 0])

        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2.5/qmark.get_width()).move_to([0, 1, 0])

        f_tex = MathTex("f","(x)", "=", "\\frac12", "^x", color=c1t, font_size=fs2).next_to(full_pizza, DOWN, buff=0.4)
        sol_a = MathTex("\\Rightarrow","a","=", "\\frac12", color=c1t, font_size=fs2).next_to(f_tex, DOWN, buff=0.2)


        t = MathTable(
            [["x", "\\text{Remaining Pizza}"],
            ["1", "\\tfrac12"],
            ["2", "(\\tfrac12)^2"],
            ["3", "(\\tfrac12)^3"],
            ["...", "..."]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(full_pizza, DOWN, buff=0.4)
        
        rows = t.get_rows()
        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines())
        

        

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not correct.
                Every time a <bookmark mark="minute"/>minute passes, my friends eat <bookmark mark="half_1"/>half of the remaining pizza.
                That means every time x increases by one (which happens every minute), the amount of pizza left is <bookmark mark="half_2"/>
                multiplied by a half. This means, <bookmark mark="row_1"/>that after one minute, we multiply the original amount of pizza  by a half.
                <bookmark mark="row_2"/>After two minutes, we multiply the amount of pizza left by a half squared.
                <bookmark mark="row_3"/>After three minutes, we multiply the amount of pizza left by a half cubed, <bookmark mark="row_4"/>and so on...
                This means, that the amount of pizza left after x minutes is <bookmark mark="f"/>f of <bookmark mark="fx"/>x
                equals <bookmark mark="fa"/>one half to the power of <bookmark mark="fxx"/> x.
                <bookmark mark="sol_a"/>So a <bookmark mark="sol_half"/>is one half.
                """
        ) as tracker:
            
            self.wait_until_bookmark("minute")
            self.play(clock.animate.shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("half_1")
            self.play(clock.animate.shift(RIGHT*5), FadeOut(full_pizza))

            self.wait_until_bookmark("half_2")
            self.play(FadeOut(half_pizza))

            self.wait_until_bookmark("row_1")
            self.play(Write(t_structure), Write(rows[0]), run_time=0.5)
            x,y,_ = rows[1].get_right()+0.4*RIGHT
            cursor.blinking=False
            self.play(Write(rows[1]), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("row_2")
            x,y,_ = rows[2].get_right()+0.4*RIGHT
            self.play(Write(rows[2]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("row_3")
            x,y,_ = rows[3].get_right()+0.4*RIGHT
            self.play(Write(rows[3]), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("row_4")
            x,y,_ = rows[4].get_right()+0.4*RIGHT
            self.play(Write(rows[4]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(t.animate.shift(RIGHT*5), Write(f_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx")
            x,y,_ = f_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fa")
            x,y,_ = f_tex[3].get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fxx")
            x,y,_ = f_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol_a")
            cursor.blinking=False
            x,y,_ = sol_a[1].get_center()+0.4*DOWN
            self.play(Write(sol_a), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sol_half")
            x,y,_ = sol_a[3].get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True


        self.wait(4)

#####################################
#####################################
class Func_6_2_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Growth factor")

        cords = self.add_cords([0, 6, 1], [0, 64, 8], x_ticks=[2,4,6], y_ticks=[16,32,48,64])
        plane = cords[0]

        f_tex = MathTex("f","(x)", "=", "a", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        a_tex_g1 = MathTex("a>1", color=BLUE, font_size=fs2).next_to(f_tex, DOWN, buff=0.2)
        f = lambda x:2**x
        f_plot = plane.plot(f, color=BLUE)

        cords_2 = self.add_cords([0, 6, 1], [0, 1, 0.25], x_ticks=[2,4,6], y_ticks=[0,0.25,0.5,0.75,1])
        plane_2 = cords_2[0]

        a_tex_l1 = MathTex("0<a<1", color=GREEN, font_size=fs2).next_to(f_tex, DOWN, buff=0.2)
        g = lambda x:0.5**x
        g_plot = plane_2.plot(g, color=GREEN)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text="""
                Another quick note on the function term of exponential functions.
                We know that the term of an exponential function is <bookmark mark="f"/>f of <bookmark mark="fx"/>x
                equals <bookmark mark="fa"/>a to the power of <bookmark mark="fxx"/> x.

                Now the value<bookmark mark="a"/>a is called <bookmark mark="growth"/>the <bookmark mark="factor"/>growth factor.
                It is called that, because it determines how fast the function grows, or decreases.

                If <bookmark mark="a_g1"/>"a" is greater than one, the function<bookmark mark="plot_1"/> increases by the factor of "a"
                at every timestep. If "a" is two, it doubles at every timestep, if "a" is three, it triples at every timestep, and so on.

                If a is between zero and one, the function<bookmark mark="plot_2"/> decreases by the factor of "a" at every timestep.
                If "a" is a half, it halves at every timestep, if "a" is a third, it reduces to a third at every timestep, and so on...
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(f_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx")
            x,y,_ = f_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fa")
            x,y,_ = f_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fxx")
            x,y,_ = f_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("a")
            cursor.blinking=False
            x,y,_ = f_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("growth")
            cursor.blinking=False
            x,y,_ = title.get_left()+0.4*DOWN+RIGHT
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("factor")
            x,y,_ = title.get_right()+0.4*DOWN+0.7*LEFT
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("plot_1")
            cursor.blinking=False
            x,y,_ = f_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), Write(cords), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(f_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(f_plot))
            cursor.blinking=True

            self.wait_until_bookmark("plot_2")
            cursor.blinking=False
            x,y,_ = g_plot.get_start()
            self.play(ReplacementTransform(cords, cords_2), Unwrite(f_plot), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g_plot))
            cursor.blinking=True

        self.wait(4)



#####################################
#####################################
######## Practice Part ##############
#####################################
#####################################




#####################################
#####################################
######## General Qs #################
#####################################
#####################################

#####################################
#####################################
class GraphToGrowthFactorQuestionScene(SophiaCursorScene, metaclass = ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Growth factor")

        plane = self.cords[0]

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2.5/qmark.get_width()).move_to([-5, 1, 0])

        f_tex = MathTex("f","(x)", "=", "a", "^x", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.4)
        x_minutes = VGroup(Tex("$\\Rightarrow$", "What is the valuef of", color=c1t, font_size=fs3), Tex("the growth factor", " $a$?", color=c1t, font_size=fs3)).arrange(DOWN, buff=0.1, aligned_edge=RIGHT).next_to(f_tex, DOWN, buff=0.2)

        func = lambda x: self.a**x
        f = plane.plot(func, color=self.color)

        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.intro}<bookmark mark="plot"/> this plot, which belongs to an exponential <bookmark mark="function"/>function f 
                <bookmark mark="fx"/> of x <bookmark mark="fa"/> equals a to the <bookmark mark="xx"/>power of x.
                <bookmark mark="q"/>What is the value of the growth<bookmark mark="q_a"/> factor "a", that leads to this graph?
                """
        ) as tracker:
            
            self.play(Write(self.cords))
            
            self.wait_until_bookmark("plot")
            x, y, _ = f.get_start()
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(f.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(f))
            cursor.blinking=True

            self.wait_until_bookmark("function")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(f_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx")
            x,y,_ = f_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fa")
            x,y,_ = f_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("xx")
            x,y,_ = f_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("q")
            x,y,_ = x_minutes[1].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(x_minutes), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("q_a")
            x,y,_ = x_minutes[1][1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True


        self.wait(4)


class GraphToGrowthFactorAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Growth factor")

        plane = self.cords[0]

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2.5/qmark.get_width()).move_to([-5, 1, 0])

        f_tex = MathTex("f","(x)", "=", "a", "^x", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.4)
        sol = Tex("$\\Rightarrow$", f"a={self.a}", color=c1t, font_size=fs2).next_to(f_tex, DOWN, buff=0.2)
        func = lambda x: self.a**x
        f = plane.plot(func, color=self.color)

        verify = VGroup(Tex("$\\Rightarrow$", "Verify:", color=c1t, font_size=fs3), MathTex(f"f({self.x_max})", f"={self.a}^{self.x_max}", f"={self.a**self.x_max}", font_size=fs3, color=c1t))
        verify.arrange(DOWN, buff=0.2).next_to(sol, DOWN, buff=0.8)
        verify[0].shift(LEFT*0.6)

        self.add(f_tex)

        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.intro}
                If we look at the graph, we can see that <bookmark mark="x_one"/>at x equals one, it is <bookmark mark="f_x_one"/> at {self.a}.
                So that means that a to the power of one equals {self.a}.<bookmark mark="sol"/> So "a" must be {self.a}.

                We can also <bookmark mark="verify"/>verify this, by computing <bookmark mark="x_max"/>f of {self.x_max}.
                By looking at the graph, we can see that <bookmark mark="x_max_graph"/>
                it has to be {self.a**self.x_max}. So to verify, we compute "a" to the power of {self.x_max} for "a" equals {self.a}.
                <bookmark mark="verify_2"/>This is {self.a} to the power of {self.x_max}, <bookmark mark="verify_3"/>which equals {self.a**self.x_max}.
                This fits to the value on the graph.
                """
        ) as tracker:
            
            self.play(Write(self.cords))
            self.play(Write(f))

            self.wait_until_bookmark("x_one")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("f_x_one")
            x,y,_ = plane.c2p(1,self.a)
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol")
            cursor.blinking=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("verify")
            x,y,_ = verify[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(verify[0]), CursorMoveTo(cursor,x,y), run_time=0.5)
            cursor.blinking=False

            self.wait_until_bookmark("x_max")
            cursor.blinking=False
            x,y,_ = verify[1][0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(verify[1][0]), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("x_max_graph")
            cursor.blinking=False
            x,y,_ = plane.c2p(self.x_max,self.a**self.x_max)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("verify_2")
            cursor.blinking=False
            x,y,_ = verify[1][1].get_center()+0.4*DOWN
            self.play(Write(verify[1][1]), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("verify_3")
            x,y,_ = verify[1][2].get_center()+0.4*DOWN
            self.play(Write(verify[1][2]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

        self.wait(4)


#####################################
#####################################
class GrowthFactorToGraphQuestionScene(SophiaCursorScene, metaclass = ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Growth factor")

        plane = self.cords[0]

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        f_tex = MathTex("f","(x)", "=", str(self.a), "^x", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.4)
        x_minutes = VGroup(Tex("$\\Rightarrow$", "Which of the graphs", color=c1t, font_size=fs3), Tex("describes the function?", color=c1t, font_size=fs3)).arrange(DOWN, buff=0.1, aligned_edge=RIGHT).next_to(f_tex, DOWN, buff=0.6)
        x_minutes[1].shift(RIGHT*0.4)
        g_1 = plane.plot(self.f1, color=self.c1)
        g_2 = plane.plot(self.f2, color=self.c2)
        g_3 = plane.plot(self.f3, color=self.c3)

        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.intro}<bookmark mark="f"/> equal to f <bookmark mark="fx"/> of x <bookmark mark="fa"/> equals {self.a} to the <bookmark mark="xx"/>power of x.
                <bookmark mark="which"/>Which of the<bookmark mark="cords_in"/> following graphs describes the function?
                <bookmark mark="plot_1"/>
                Is it the {self.color_1_name} graph?

                Or <bookmark mark="plot_2"/> is it the {self.color_2_name} graph?

                Or <bookmark mark="plot_3"/> is it the {self.color_3_name} graph?
                """
        ) as tracker:
            
            self.wait_until_bookmark("f")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(f_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx")
            x,y,_ = f_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fa")
            x,y,_ = f_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("xx")
            x,y,_ = f_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("which")
            x,y,_ = x_minutes[1].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(x_minutes), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("cords_in")
            self.play(Write(self.cords), run_time=0.3)

            self.wait_until_bookmark("plot_1")
            cursor.blinking=False
            x,y,_ = g_1.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g_1.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g_1))
            cursor.blinking=True

            self.wait_until_bookmark("plot_2")
            cursor.blinking=False
            x,y,_ = g_2.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g_2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g_2))
            cursor.blinking=True

            self.wait_until_bookmark("plot_3")
            cursor.blinking=False
            x,y,_ = g_3.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g_3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g_3))
            cursor.blinking=True
            

        self.wait(4)


class GrowthFactorToGraphAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Growth factor")

        plane = self.cords[0]
        f_tex = MathTex("f","(x)", "=", str(self.a), "^x", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.4)
        intro_auto = "Since the growth factor a is greater than one, the function increases by the factor of a at every timestep." if self.a>1 else "Since the growth factor a is between zero and one, the function decreases by the factor of a at every timestep."
        intro_auto_tex = Tex("$a>1$","$\\Rightarrow$exponential growth", color=c1t, font_size=fs3).next_to(f_tex, DOWN, buff=0.4) if self.a>1 else Tex("$0<a<1$","$\\Rightarrow$exponential decay", color=c1t, font_size=fs3).next_to(f_tex, DOWN, buff=0.4)
        
        g_1 = plane.plot(self.f1, color=self.c1)
        g_2 = plane.plot(self.f2, color=self.c2)
        g_3 = plane.plot(self.f3, color=self.c3)

        gs = [g_1,g_2,g_3]
        g_correct = gs[self.idx_correct]
        color_correct = self.color_1_name if self.idx_correct==0 else self.color_2_name if self.idx_correct==1 else self.color_3_name


        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.intro} <bookmark mark="intro_auto"/> {intro_auto} <bookmark mark="cords_in"/>
                This means that <bookmark mark="x_one"/>at x equals one, the graph has to be
                <bookmark mark="f_x_one"/> at {self.a}, because {self.a} to the power of one is {self.a}.
                Next, we can check other values, for example <bookmark mark="x_two"/>at x equals two,
                the value has to be equal to {self.a} to the power of two, <bookmark mark="f_x_two"/>which is {self.a**2},
                and <bookmark mark="x_max"/> at x equals {self.x_max}, the value has to be equal to {self.a} to the power of {self.x_max},
                <bookmark mark="f_x_max"/>which is {self.a**self.x_max}.

                If we <bookmark mark="plot"/> look at all three graphs, we can clearly see that it has to be <bookmark mark="erase"/>
                the {color_correct} graph.
                """
        ) as tracker:
            
            self.play(Write(f_tex))

            self.wait_until_bookmark("intro_auto")
            x,y,_ = intro_auto_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(intro_auto_tex), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("cords_in")
            self.play(Write(self.cords), run_time=0.3)

            self.wait_until_bookmark("x_one")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("f_x_one")
            x,y,_ = plane.c2p(1,self.a)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            point_1 = cursor.copy().clear_updaters()
            self.add(point_1)

            self.wait_until_bookmark("x_two")
            x,y,_ = plane.c2p(2,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("f_x_two")
            x,y,_ = plane.c2p(2,self.a**2)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            point_2 = cursor.copy().clear_updaters()
            self.add(point_2)

            self.wait_until_bookmark("x_max")
            x,y,_ = plane.c2p(self.x_max,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            
            self.wait_until_bookmark("f_x_max")
            x,y,_ = plane.c2p(self.x_max,self.a**self.x_max)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            point_3 = cursor.copy().clear_updaters()
            self.add(point_3)

            self.wait_until_bookmark("plot")
            cursors = [cursor.copy() for _ in range(3)]
            locs = [g.get_start() for g in gs]
            x,y,_ = plane.c2p(0,0)
            self.play(*[CursorMoveTo(c,l[0], l[1]) for c,l in zip(cursors,locs)], CursorMoveTo(cursor,x,y), run_time=1)
            cursors[1]._start_fading(2).add_updater(lambda m: m.move_to(g_1.get_end()))
            cursors[2]._start_fading(2).add_updater(lambda m: m.move_to(g_2.get_end()))
            cursors[0]._start_fading(2).add_updater(lambda m: m.move_to(g_3.get_end()))
            self.add_pencil_sound(1.5)
            self.play(*[Create(g) for g in gs])
            cursor.blinking=True

            self.wait_until_bookmark("erase")
            self.add(g_correct.copy())
            self.play(Uncreate(g_1), Uncreate(g_2), Uncreate(g_3),  run_time=0.3)


        self.wait(4)


#####################################
#####################################
######## Specific Qs ################
#####################################
#####################################

#####################################
#####################################
TASK_Func_6_2_P_1_q = SophiaTaskDefinition(
    answerOptions = ["$a=3$", "$a=1$", "$a=\frac{1}{3}$", "$a=-2$"],
    correctAnswerIndex = 2,
    questionText = "Given the purple graph, what is the value of a?"
)

class Func_6_2_P_1_q(GraphToGrowthFactorQuestionScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.a = 3
        self.color=PURPLE
        self.intro = "Look at"

        super().construct()

class Func_6_2_P_1_a(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.a = 3
        self.x_max = 4
        self.color=PURPLE
        self.intro = "Yep, that is correct."

        super().construct()

class Func_6_2_P_1_b(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.a = 3
        self.x_max = 4
        self.color=PURPLE
        self.intro = "No, that's not right."

        super().construct()

class Func_6_2_P_1_c(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.a = 3
        self.x_max = 4
        self.color=PURPLE
        self.intro = "No, that's not right."

        super().construct()

class Func_6_2_P_1_d(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.a = 3
        self.x_max = 4
        self.color=PURPLE
        self.intro = "No, that's not right."

        super().construct()


#####################################
#####################################
TASK_Func_6_2_P_2_q = SophiaTaskDefinition(
    answerOptions = ["The purple graph", "The blue graph", "The green graph"],
    correctAnswerIndex = 0,
    questionText = "Which of the graph corresponds to the function $f(x)=2^x$?"
)

class Func_6_2_P_2_q(GrowthFactorToGraphQuestionScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.a = 2
        self.color=PURPLE
        self.intro = "Let's say we're considering a growth factor of a equals two,so your function is"

        self.f1 = lambda x: self.a**x
        self.f2 = lambda x: x**3
        self.f3 = lambda x: 50/(self.a**x)

        self.color_1_name = "purple"
        self.color_2_name = "blue"
        self.color_3_name = "green"

        self.c1 = PURPLE
        self.c2 = BLUE
        self.c3 = GREEN

        super().construct()

class Func_6_2_P_2_a(GrowthFactorToGraphAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.x_max = 4
        self.a = 2
        self.color=PURPLE
        self.intro = "Yep, that is correct."

        self.f1 = lambda x: self.a**x
        self.f2 = lambda x: x**3
        self.f3 = lambda x: 50/(self.a**x)

        self.color_1_name = "purple"
        self.color_2_name = "blue"
        self.color_3_name = "green"

        self.c1 = PURPLE
        self.c2 = BLUE
        self.c3 = GREEN

        self.idx_correct = 0

        super().construct()

class Func_6_2_P_2_b(GrowthFactorToGraphAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.x_max = 4
        self.a = 2
        self.color=PURPLE
        self.intro = "No, that's not right."

        self.f1 = lambda x: self.a**x
        self.f2 = lambda x: x**3
        self.f3 = lambda x: 50/(self.a**x)

        self.color_1_name = "purple"
        self.color_2_name = "blue"
        self.color_3_name = "green"

        self.c1 = PURPLE
        self.c2 = BLUE
        self.c3 = GREEN

        self.idx_correct = 0

        super().construct()

class Func_6_2_P_2_c(GrowthFactorToGraphAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.x_max = 4
        self.a = 2
        self.color=PURPLE
        self.intro = "No, that's not right."

        self.f1 = lambda x: self.a**x
        self.f2 = lambda x: x**3
        self.f3 = lambda x: 50/(self.a**x)

        self.color_1_name = "purple"
        self.color_2_name = "blue"
        self.color_3_name = "green"

        self.c1 = PURPLE
        self.c2 = BLUE
        self.c3 = GREEN

        self.idx_correct = 0

        super().construct()


#####################################
#####################################
TASK_Func_6_2_P_3_q = SophiaTaskDefinition(
    answerOptions = ["$a=3$", "$a=2$", "$a=\frac{1}{2}$", "$a=-2$"],
    correctAnswerIndex = 1,
    questionText = "Given the GREEN graph, what is the value of a?"
)

class Func_6_2_P_3_q(GraphToGrowthFactorQuestionScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 16, 4], x_ticks=[1,2,3,4], y_ticks=[4,8,12,16])
        self.a = 2
        self.color=GREEN
        self.intro = "Check out"

        super().construct()

class Func_6_2_P_3_a(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 16, 4], x_ticks=[1,2,3,4], y_ticks=[4,8,12,16])
        self.a = 2
        self.x_max = 4
        self.color=GREEN
        self.intro = "No, that's not right."

        super().construct()

class Func_6_2_P_3_b(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 16, 4], x_ticks=[1,2,3,4], y_ticks=[4,8,12,16])
        self.a = 2
        self.x_max = 4
        self.color=GREEN
        self.intro = "Yes, that's it. Well done."

        super().construct()

class Func_6_2_P_3_c(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 16, 4], x_ticks=[1,2,3,4], y_ticks=[4,8,12,16])
        self.a = 2
        self.x_max = 4
        self.color=GREEN
        self.intro = "No, that's not right."

        super().construct()

class Func_6_2_P_3_d(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 16, 4], x_ticks=[1,2,3,4], y_ticks=[4,8,12,16])
        self.a = 2
        self.x_max = 4
        self.color=GREEN
        self.intro = "No, that's not right."

        super().construct()


#####################################
#####################################
TASK_Func_6_2_P_4_q = SophiaTaskDefinition(
    answerOptions = ["The blue graph", "The green graph", "The orange graph"],
    correctAnswerIndex = 2,
    questionText = "Which of the graph corresponds to the function $f(x)=\\frac{1}{2}^x$?"
)

class Func_6_2_P_4_q(GrowthFactorToGraphQuestionScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 1, 0.25], x_ticks=[1,2,3,4], y_ticks=[0.25,0.5,0.75,1])
        self.a = 1/2
        self.intro = "Let's say we're considering a growth factor of a equals one half,so your function is"

        self.f1 = lambda x: (4-self.a)**x
        self.f2 = lambda x: x/4
        self.f3 = lambda x: self.a**x

        self.color_1_name = "blue"
        self.color_2_name = "green"
        self.color_3_name = "orange"

        self.c1 = BLUE
        self.c2 = GREEN
        self.c3 = ORANGE

        super().construct()

class Func_6_2_P_4_a(GrowthFactorToGraphAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 1, 0.25], x_ticks=[1,2,3,4], y_ticks=[0.25,0.5,0.75,1])
        self.x_max = 4
        self.a = 1/2
        self.intro = "That's not right."

        self.f1 = lambda x: (4-self.a)**x
        self.f2 = lambda x: x/4
        self.f3 = lambda x: self.a**x

        self.color_1_name = "blue"
        self.color_2_name = "green"
        self.color_3_name = "orange"

        self.c1 = BLUE
        self.c2 = GREEN
        self.c3 = ORANGE

        self.idx_correct = 2

        super().construct()

class Func_6_2_P_4_b(GrowthFactorToGraphAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 1, 0.25], x_ticks=[1,2,3,4], y_ticks=[0.25,0.5,0.75,1])
        self.x_max = 4
        self.a = 1/2
        self.intro = "That's not right."

        self.f1 = lambda x: (4-self.a)**x
        self.f2 = lambda x: x/4
        self.f3 = lambda x: self.a**x

        self.color_1_name = "blue"
        self.color_2_name = "green"
        self.color_3_name = "orange"

        self.c1 = BLUE
        self.c2 = GREEN
        self.c3 = ORANGE

        self.idx_correct = 2

        super().construct()

class Func_6_2_P_4_c(GrowthFactorToGraphAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 1, 0.25], x_ticks=[1,2,3,4], y_ticks=[0.25,0.5,0.75,1])
        self.x_max = 4
        self.a = 1/2
        self.intro = "Yes! That's correct."

        self.f1 = lambda x: (4-self.a)**x
        self.f2 = lambda x: x/4
        self.f3 = lambda x: self.a**x

        self.color_1_name = "blue"
        self.color_2_name = "green"
        self.color_3_name = "orange"

        self.c1 = BLUE
        self.c2 = GREEN
        self.c3 = ORANGE

        self.idx_correct = 2

        super().construct()

#####################################
#####################################
TASK_Func_6_2_P_5_q = SophiaTaskDefinition(
    answerOptions = ["$a=4$", "$a=2$", "$a=3$", "$a=-2$"],
    correctAnswerIndex = 0,
    questionText = "Given the pink graph, what is the value of a?"
)

class Func_6_2_P_5_q(GraphToGrowthFactorQuestionScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 256, 64], x_ticks=[1,2,3,4], y_ticks=[64,128,192,256])
        self.a = 4
        self.color=PINK
        self.intro = "Have a look at"

        super().construct()

class Func_6_2_P_5_a(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 256, 64], x_ticks=[1,2,3,4], y_ticks=[64,128,192,256])
        self.a = 4
        self.x_max = 4
        self.color=PINK
        self.intro = "Yep, that is correct."

        super().construct()

class Func_6_2_P_5_b(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 256, 64], x_ticks=[1,2,3,4], y_ticks=[64,128,192,256])
        self.a = 4
        self.x_max = 4
        self.color=PINK
        self.intro = "No, that's not right."

        super().construct()

class Func_6_2_P_5_c(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 256, 64], x_ticks=[1,2,3,4], y_ticks=[64,128,192,256])
        self.a = 4
        self.x_max = 4
        self.color=PINK
        self.intro = "No, that's not right."

        super().construct()

class Func_6_2_P_5_d(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 256, 64], x_ticks=[1,2,3,4], y_ticks=[64,128,192,256])
        self.a = 4
        self.x_max = 4
        self.color=PINK
        self.intro = "No, that's not right."

        super().construct()


#####################################
#####################################
TASK_Func_6_2_P_6_q = SophiaTaskDefinition(
    answerOptions = ["The purple graph", "The blue graph", "The pink graph"],
    correctAnswerIndex = 1,
    questionText = "Which of the graph corresponds to the function $f(x)=3^x$?"
)

class Func_6_2_P_6_q(GrowthFactorToGraphQuestionScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.a = 3
        self.intro = "Let's say we're considering a growth factor of a equals three,so your function is"

        self.f1 = lambda x: x**2
        self.f2 = lambda x: self.a**x
        self.f3 = lambda x: self.a**(4-x)

        self.color_1_name = "purple"
        self.color_2_name = "blue"
        self.color_3_name = "pink"

        self.c1 = PURPLE
        self.c2 = BLUE
        self.c3 = PINK

        super().construct()

class Func_6_2_P_6_a(GrowthFactorToGraphAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.x_max = 4
        self.a = 3
        self.intro = "No, that's wrong."

        self.f1 = lambda x: x**2
        self.f2 = lambda x: self.a**x
        self.f3 = lambda x: self.a**(4-x)

        self.color_1_name = "purple"
        self.color_2_name = "blue"
        self.color_3_name = "pink"

        self.c1 = PURPLE
        self.c2 = BLUE
        self.c3 = PINK

        self.idx_correct = 1

        super().construct()

class Func_6_2_P_6_b(GrowthFactorToGraphAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.x_max = 4
        self.a = 3
        self.intro = "Yep, that is right."

        self.f1 = lambda x: x**2
        self.f2 = lambda x: self.a**x
        self.f3 = lambda x: self.a**(4-x)

        self.color_1_name = "purple"
        self.color_2_name = "blue"
        self.color_3_name = "pink"

        self.c1 = PURPLE
        self.c2 = BLUE
        self.c3 = PINK

        self.idx_correct = 1

        super().construct()

class Func_6_2_P_6_c(GrowthFactorToGraphAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.x_max = 4
        self.a = 3
        self.intro = "No, that's wrong."

        self.f1 = lambda x: x**2
        self.f2 = lambda x: self.a**x
        self.f3 = lambda x: self.a**(4-x)

        self.color_1_name = "purple"
        self.color_2_name = "blue"
        self.color_3_name = "pink"

        self.c1 = PURPLE
        self.c2 = BLUE
        self.c3 = PINK

        self.idx_correct = 1

        super().construct()



PROTOTYPES=[
    PagePrototypeVideo.from_scene(Func_6_2_I_1),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_6_2_I_2_q, Func_6_2_I_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_3),
    PagePrototypeVideo.from_scene(Func_6_2_P_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_6_2_P_1_q, Func_6_2_P_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_6_2_P_1_a),
    PagePrototypeVideo.from_scene(Func_6_2_P_1_b),
    PagePrototypeVideo.from_scene(Func_6_2_P_1_c),
    PagePrototypeVideo.from_scene(Func_6_2_P_1_d),
    PagePrototypeVideo.from_scene(Func_6_2_P_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_6_2_P_2_q, Func_6_2_P_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_6_2_P_2_a),
    PagePrototypeVideo.from_scene(Func_6_2_P_2_b),
    PagePrototypeVideo.from_scene(Func_6_2_P_2_c),
    PagePrototypeVideo.from_scene(Func_6_2_P_3_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_6_2_P_3_q, Func_6_2_P_3_q.__name__),
    PagePrototypeVideo.from_scene(Func_6_2_P_3_a),
    PagePrototypeVideo.from_scene(Func_6_2_P_3_b),
    PagePrototypeVideo.from_scene(Func_6_2_P_3_c),
    PagePrototypeVideo.from_scene(Func_6_2_P_3_d),
    PagePrototypeVideo.from_scene(Func_6_2_P_4_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_6_2_P_4_q, Func_6_2_P_4_q.__name__),
    PagePrototypeVideo.from_scene(Func_6_2_P_4_a),
    PagePrototypeVideo.from_scene(Func_6_2_P_4_b),
    PagePrototypeVideo.from_scene(Func_6_2_P_4_c),
    PagePrototypeVideo.from_scene(Func_6_2_P_5_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_6_2_P_5_q, Func_6_2_P_5_q.__name__),
    PagePrototypeVideo.from_scene(Func_6_2_P_5_a),
    PagePrototypeVideo.from_scene(Func_6_2_P_5_b),
    PagePrototypeVideo.from_scene(Func_6_2_P_5_c),
    PagePrototypeVideo.from_scene(Func_6_2_P_5_d),
    PagePrototypeVideo.from_scene(Func_6_2_P_6_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_6_2_P_6_q, Func_6_2_P_6_q.__name__),
    PagePrototypeVideo.from_scene(Func_6_2_P_6_a),
    PagePrototypeVideo.from_scene(Func_6_2_P_6_b),
    PagePrototypeVideo.from_scene(Func_6_2_P_6_c),
]