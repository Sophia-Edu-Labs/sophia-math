# 6_2: Exponential Functions: Term & Graph

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
from sophialib.tasks.sophiataskdefinition import SophiaFreeTextTaskDetail, SophiaTaskDefinition
import ast


####################################################################################################################################################
# CHAPTER: Growth factor >1, <1 ####################################################################################################################
class Func_6_2_I_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cords = self.add_cords([0, 6, 1], [0, 64, 8], x_ticks=[2,4,6], y_ticks=[16,32,48,64])
        plane = cords[0]

        f_tex = MathTex("f","(x)", "=", "b", "^x", color=c1t, font_size=fs2)
        f_2 = MathTex("g","(x)", "=", "2", "^x", color=PURE_BLUE, font_size=fs2)
        f_3 = MathTex("h","(x)", "=", "3", "^x", color=PINK, font_size=fs2)
        fs = VGroup(f_tex, f_2, f_3).arrange(DOWN, aligned_edge=LEFT, buff=0.4).next_to(cords, DOWN, buff=0.4)

        plot_2 = plane.plot(lambda x: 2**x, color=PURE_BLUE)
        plot_3 = plane.plot(lambda x: 3**x, x_range=[0,3.788, 0.001], color=PINK)
        plot_half = plane.plot(lambda x: 64*0.5**x, color=PURPLE_E)


        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        self.add(cursor)

        qnark = ImageMobject(assets_folder / "img" / "qmark.png").shift(LEFT*5).scale(.8)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I1.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("a")
            cursor.idle=False
            x,y,_ = f_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("g")
            cursor.idle=False
            x,y,_ = plot_2.get_start()
            self.play(Write(f_2), CursorMoveTo(cursor,x,y), Create(cords), run_time=0.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(plot_2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(plot_2))
            cursor.idle=True

            self.wait_until_bookmark("h")
            cursor.idle=False
            x,y,_ = plot_3.get_start()
            self.play(Write(f_3), CursorMoveTo(cursor,x,y), run_time=0.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(plot_3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(plot_3))
            cursor.idle=True

            self.wait_until_bookmark("qmark")
            self.add_shift_sound(1.5)
            self.play(qnark.animate.shift(5*RIGHT))

            self.wait_until_bookmark("switch")
            self.add_shift_sound(0.5)
            self.play(FadeOut(f_tex), FadeOut(f_2), FadeOut(f_3), FadeOut(plot_2), FadeOut(plot_3), qnark.animate(run_time=0.5).shift(5*RIGHT), run_time=1)

            self.wait_until_bookmark("decrease")
            cursor.idle=False
            x,y,_ = plot_half.get_start()
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(plot_half.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(plot_half))

        self.wait(4)


#####################################
#####################################
class Func_6_2_I_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a=1$", "$a=-1$", "$a=\\frac{1}{2}$", "$a=2$"],
            correctAnswerIndex = 2,
            questionText=self.translate("Func_6_2.I2.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
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

        minutes = self.translate("Func_6_2.I2.q.minutes")
        f_tex = MathTex("f","(x)", "=", "a", "^x", color=c1t, font_size=fs2).next_to(full_pizza, DOWN, buff=0.4).shift(RIGHT*5)
        x_minutes = Tex("$x$", f": \\# {minutes}", color=c1t, font_size=fs2).next_to(f_tex, DOWN, buff=0.2)

        

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I2.q.voiceover")
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
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("qmark")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("x_minutes")
            cursor.idle=False
            x,y,_ = x_minutes[0].get_center()+0.4*DOWN
            self.play(Write(x_minutes), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("minutes")
            x,y,_ = x_minutes[1].get_center()+0.4*DOWN  
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

        self.wait(4)


class Func_6_2_I_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
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

        pizza_left = self.translate("Func_6_2.I2.a.pizza-left")

        t = MathTable(
            [["x", f"\\text{{{pizza_left}}}"],
            
            ["1", "\\tfrac12"],
            ["2", "(\\tfrac12)^2"],
            ["3", "(\\tfrac12)^3"],
            ["...", "..."]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(full_pizza, DOWN, buff=0.4)
        
        rows = t.get_rows()
        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines())
        

        

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I2.a.voiceover")
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
            cursor.idle=False
            self.play(Write(rows[1]), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("row_2")
            x,y,_ = rows[2].get_right()+0.4*RIGHT
            self.play(Write(rows[2]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("row_3")
            x,y,_ = rows[3].get_right()+0.4*RIGHT
            self.play(Write(rows[3]), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("row_4")
            x,y,_ = rows[4].get_right()+0.4*RIGHT
            self.play(Write(rows[4]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("f")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("sol_a")
            cursor.idle=False
            x,y,_ = sol_a[1].get_center()+0.4*DOWN
            self.play(Write(sol_a), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sol_half")
            x,y,_ = sol_a[3].get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True


        self.wait(4)

class Func_6_2_I_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
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

        pizza_left = self.translate("Func_6_2.I2.a.pizza-left")

        t = MathTable(
            [["x", f"\\text{{{pizza_left}}}"],
            ["1", "\\tfrac12"],
            ["2", "(\\tfrac12)^2"],
            ["3", "(\\tfrac12)^3"],
            ["...", "..."]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(full_pizza, DOWN, buff=0.4)
        
        rows = t.get_rows()
        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines())
        

        

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I2.a.voiceover")
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
            cursor.idle=False
            self.play(Write(rows[1]), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("row_2")
            x,y,_ = rows[2].get_right()+0.4*RIGHT
            self.play(Write(rows[2]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("row_3")
            x,y,_ = rows[3].get_right()+0.4*RIGHT
            self.play(Write(rows[3]), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("row_4")
            x,y,_ = rows[4].get_right()+0.4*RIGHT
            self.play(Write(rows[4]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("f")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("sol_a")
            cursor.idle=False
            x,y,_ = sol_a[1].get_center()+0.4*DOWN
            self.play(Write(sol_a), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sol_half")
            x,y,_ = sol_a[3].get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True


        self.wait(4)

class Func_6_2_I_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
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


        pizza_left = self.translate("Func_6_2.I2.a.pizza-left")

        t = MathTable(
            [["x", f"\\text{{{pizza_left}}}"],
            ["1", "\\tfrac12"],
            ["2", "(\\tfrac12)^2"],
            ["3", "(\\tfrac12)^3"],
            ["...", "..."]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(full_pizza, DOWN, buff=0.4)
        
        rows = t.get_rows()
        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines())
        

        

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I2.c.voiceover")
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
            cursor.idle=False
            self.play(Write(rows[1]), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("row_2")
            x,y,_ = rows[2].get_right()+0.4*RIGHT
            self.play(Write(rows[2]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("row_3")
            x,y,_ = rows[3].get_right()+0.4*RIGHT
            self.play(Write(rows[3]), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("row_4")
            x,y,_ = rows[4].get_right()+0.4*RIGHT
            self.play(Write(rows[4]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("f")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("sol_a")
            cursor.idle=False
            x,y,_ = sol_a[1].get_center()+0.4*DOWN
            self.play(Write(sol_a), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sol_half")
            x,y,_ = sol_a[3].get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True


        self.wait(4)

class Func_6_2_I_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cursor = AltCursor(stroke_width=0.0, idle=True)
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

        pizza_left = self.translate("Func_6_2.I2.a.pizza-left")

        t = MathTable(
            [["x", f"\\text{{{pizza_left}}}"],
            ["1", "\\tfrac12"],
            ["2", "(\\tfrac12)^2"],
            ["3", "(\\tfrac12)^3"],
            ["...", "..."]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(full_pizza, DOWN, buff=0.4)
        
        rows = t.get_rows()
        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines())
        

        

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I2.a.voiceover")
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
            cursor.idle=False
            self.play(Write(rows[1]), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("row_2")
            x,y,_ = rows[2].get_right()+0.4*RIGHT
            self.play(Write(rows[2]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("row_3")
            x,y,_ = rows[3].get_right()+0.4*RIGHT
            self.play(Write(rows[3]), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("row_4")
            x,y,_ = rows[4].get_right()+0.4*RIGHT
            self.play(Write(rows[4]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("f")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("sol_a")
            cursor.idle=False
            x,y,_ = sol_a[1].get_center()+0.4*DOWN
            self.play(Write(sol_a), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sol_half")
            x,y,_ = sol_a[3].get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True


        self.wait(4)


#####################################
#####################################
class Func_6_2_I_2_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_6_2.I21.q.answer-options")),
            correctAnswerIndex = 1,
            questionText=self.translate("Func_6_2.I21.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cords = self.add_cords([0, 4, 1], [0, 1, 0.25], x_ticks=[], y_ticks=[])
        plane = cords[0]

        plot_1 = plane.plot(lambda x: 17/16-(2**x)/16, color=BLUE)
        plot_2 = plane.plot(lambda x: (1/2)**x, color=GREEN_D)
        plot_3 = plane.plot(lambda x: 1-(15/64)*x, color=PINK)

        f_tex = MathTex("f","(x)", "=", "\\frac{1}{2}", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

    
        cursor = AltCursor(stroke_width=0.0, idle=False)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I21.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.idle=False
            self.play(Write(f_tex), run_time=1)
            self.play(CursorUnderline(cursor, f_tex))

            self.wait_until_bookmark("cords")
            self.play(Write(cords))

            self.wait_until_bookmark("plot_1")
            x,y,_ = plot_1.get_start()
            self.play(CursorMoveResize(cursor,x,y), run_time=0.5)
            self.add(cursor.copy()._start_fading(4).add_updater(lambda m: m.move_to(plot_1.get_end())))
            self.add_pencil_sound(2.5)
            self.play(Create(plot_1), run_time=2.5)
            
            self.wait_until_bookmark("plot_2")
            x,y,_ = plot_2.get_start()
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
            self.add(cursor.copy()._start_fading(4).add_updater(lambda m: m.move_to(plot_2.get_end())))
            self.add_pencil_sound(2.5)
            self.play(Create(plot_2), run_time=2.5)

            self.wait_until_bookmark("plot_3")
            x,y,_ = plot_3.get_start()
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
            self.add(cursor.copy()._start_fading(4).add_updater(lambda m: m.move_to(plot_3.get_end())))
            self.add_pencil_sound(2.5)
            self.play(Create(plot_3), run_time=2.5)
            cursor.idle=True

        self.wait(4)


class Func_6_2_I_2_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cords = self.add_cords([0, 4, 1], [0, 1, 0.25], x_ticks=[0,1,2,3], y_ticks=[0.25,0.5,0.75,1])
        plane = cords[0]

        plot_1 = plane.plot(lambda x: 17/16-(2**x)/16, color=BLUE)
        plot_2 = plane.plot(lambda x: (1/2)**x, color=GREEN_D)
        plot_3 = plane.plot(lambda x: 1-(15/64)*x, color=PINK)

        f_tex = MathTex("f","(x)", "=", "\\frac{1}{2}", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        self.add(cords, plot_1, plot_2, plot_3, f_tex)

        points = [plane.c2p(i, 0.5**i) for i in range(5)]
    
        cursor = AltCursor(stroke_width=0.0, idle=False)
        self.add(cursor)

        t = MathTable(
            [["x", "f(x)"],
             ["0", "1"],
            ["1", "\\tfrac12"],
            ["2", "(\\tfrac12)^2=\\tfrac14"],
            ["...", "..."]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(f_tex, DOWN, buff=0.4)
        rows = t.get_rows()
        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines(), rows[0])


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_2.I21.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("x_0")
            cursor.idle=False
            x,y,_ = points[0]
            self.play(CursorMoveTo(cursor,x,y), Write(t_structure), Write(rows[1]), run_time=0.5)
            circ_1 = Circle(radius=0.1, color=RED).move_to(cursor)
            self.add(circ_1)

            self.wait_until_bookmark("x_1")
            x,y,_ = points[1]
            self.play(CursorMoveTo(cursor,x,y), Write(rows[2]), run_time=0.5)
            circ_2 = Circle(radius=0.1, color=RED).move_to(cursor)
            self.add(circ_2)

            self.wait_until_bookmark("x_2")
            x,y,_ = points[2]
            self.play(CursorMoveTo(cursor,x,y), Write(rows[3]), run_time=0.5)
            circ_3 = Circle(radius=0.1, color=RED).move_to(cursor)
            self.add(circ_3)

            self.wait_until_bookmark("x_3")
            x,y,_ = points[3]
            self.play(CursorMoveTo(cursor,x,y), Write(rows[4]), run_time=0.5)
            circ_4 = Circle(radius=0.1, color=RED).move_to(cursor)
            self.add(circ_4)

            self.wait_until_bookmark("reset_cursor")
            x,y,_ = plane.c2p(0,0)
            self.play(Unwrite(circ_1), Unwrite(circ_2), Unwrite(circ_3), Unwrite(circ_4), CursorMoveTo(cursor,x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("solution")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), Unwrite(plot_1), Unwrite(plot_3), run_time=0.5)
            cursor.idle=True            

        self.wait(4)

class Func_6_2_I_2_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cords = self.add_cords([0, 4, 1], [0, 1, 0.25], x_ticks=[0,1,2,3], y_ticks=[0.25,0.5,0.75,1])
        plane = cords[0]

        plot_1 = plane.plot(lambda x: 17/16-(2**x)/16, color=BLUE)
        plot_2 = plane.plot(lambda x: (1/2)**x, color=GREEN_D)
        plot_3 = plane.plot(lambda x: 1-(15/64)*x, color=PINK)

        f_tex = MathTex("f","(x)", "=", "\\frac{1}{2}", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        self.add(cords, plot_1, plot_2, plot_3, f_tex)

        points = [plane.c2p(i, 0.5**i) for i in range(5)]
    
        cursor = AltCursor(stroke_width=0.0, idle=False)
        self.add(cursor)

        t = MathTable(
            [["x", "f(x)"],
             ["0", "1"],
            ["1", "\\tfrac12"],
            ["2", "(\\tfrac12)^2=\\tfrac14"],
            ["...", "..."]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(f_tex, DOWN, buff=0.4)
        rows = t.get_rows()
        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines(), rows[0])


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_6_2.I21.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("x_0")
            cursor.idle=False
            x,y,_ = points[0]
            self.play(CursorMoveTo(cursor,x,y), Write(t_structure), Write(rows[1]), run_time=0.5)
            circ_1 = Circle(radius=0.1, color=RED).move_to(cursor)
            self.add(circ_1)

            self.wait_until_bookmark("x_1")
            x,y,_ = points[1]
            self.play(CursorMoveTo(cursor,x,y), Write(rows[2]), run_time=0.5)
            circ_2 = Circle(radius=0.1, color=RED).move_to(cursor)
            self.add(circ_2)

            self.wait_until_bookmark("x_2")
            x,y,_ = points[2]
            self.play(CursorMoveTo(cursor,x,y), Write(rows[3]), run_time=0.5)
            circ_3 = Circle(radius=0.1, color=RED).move_to(cursor)
            self.add(circ_3)

            self.wait_until_bookmark("x_3")
            x,y,_ = points[3]
            self.play(CursorMoveTo(cursor,x,y), Write(rows[4]), run_time=0.5)
            circ_4 = Circle(radius=0.1, color=RED).move_to(cursor)
            self.add(circ_4)

            self.wait_until_bookmark("reset_cursor")
            x,y,_ = plane.c2p(0,0)
            self.play(Unwrite(circ_1), Unwrite(circ_2), Unwrite(circ_3), Unwrite(circ_4), CursorMoveTo(cursor,x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("solution")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), Unwrite(plot_1), Unwrite(plot_3), run_time=0.5)
            cursor.idle=True            

        self.wait(4)

class Func_6_2_I_2_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cords = self.add_cords([0, 4, 1], [0, 1, 0.25], x_ticks=[0,1,2,3], y_ticks=[0.25,0.5,0.75,1])
        plane = cords[0]

        plot_1 = plane.plot(lambda x: 17/16-(2**x)/16, color=BLUE)
        plot_2 = plane.plot(lambda x: (1/2)**x, color=GREEN_D)
        plot_3 = plane.plot(lambda x: 1-(15/64)*x, color=PINK)

        f_tex = MathTex("f","(x)", "=", "\\frac{1}{2}", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        self.add(cords, plot_1, plot_2, plot_3, f_tex)

        points = [plane.c2p(i, 0.5**i) for i in range(5)]
    
        cursor = AltCursor(stroke_width=0.0, idle=False)
        self.add(cursor)

        t = MathTable(
            [["x", "f(x)"],
             ["0", "1"],
            ["1", "\\tfrac12"],
            ["2", "(\\tfrac12)^2=\\tfrac14"],
            ["...", "..."]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(f_tex, DOWN, buff=0.4)
        rows = t.get_rows()
        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines(), rows[0])


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_2.I21.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("x_0")
            cursor.idle=False
            x,y,_ = points[0]
            self.play(CursorMoveTo(cursor,x,y), Write(t_structure), Write(rows[1]), run_time=0.5)
            circ_1 = Circle(radius=0.1, color=RED).move_to(cursor)
            self.add(circ_1)

            self.wait_until_bookmark("x_1")
            x,y,_ = points[1]
            self.play(CursorMoveTo(cursor,x,y), Write(rows[2]), run_time=0.5)
            circ_2 = Circle(radius=0.1, color=RED).move_to(cursor)
            self.add(circ_2)

            self.wait_until_bookmark("x_2")
            x,y,_ = points[2]
            self.play(CursorMoveTo(cursor,x,y), Write(rows[3]), run_time=0.5)
            circ_3 = Circle(radius=0.1, color=RED).move_to(cursor)
            self.add(circ_3)

            self.wait_until_bookmark("x_3")
            x,y,_ = points[3]
            self.play(CursorMoveTo(cursor,x,y), Write(rows[4]), run_time=0.5)
            circ_4 = Circle(radius=0.1, color=RED).move_to(cursor)
            self.add(circ_4)

            self.wait_until_bookmark("reset_cursor")
            x,y,_ = plane.c2p(0,0)
            self.play(Unwrite(circ_1), Unwrite(circ_2), Unwrite(circ_3), Unwrite(circ_4), CursorMoveTo(cursor,x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("solution")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), Unwrite(plot_1), Unwrite(plot_3), run_time=0.5)
            cursor.idle=True            

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_2_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$f(x)=1000\\cdot\\left(\\tfrac18\\right)^x$", "$g(x)=1000\\cdot\\left(1-\\tfrac18 x\\right)$", "$h(x)=1000\\cdot\\left(\\tfrac78\\right)^x$"],
            correctAnswerIndex = 2,
            questionText=self.translate("Func_6_2.I22.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        pool = ImageMobject(assets_folder / "img" / "swimming_pool.png")
        pool = pool.scale(2.8/pool.get_width()).move_to([-5, 1.2, 0])

        cursor = AltCursor(stroke_width=0.0, idle=False)
        self.add(cursor)

        f_tex = MathTex("f(x)=1000\\cdot\\left(\\tfrac18\\right)^x", color=c1t, font_size=fs2)
        g_tex = MathTex("g(x)=1000\\cdot\\left(1-\\tfrac18 x\\right)", color=c1t, font_size=fs2)
        h_tex = MathTex("h(x)=1000\\cdot\\left(\\tfrac78\\right)^x", color=c1t, font_size=fs2)
        funcs = VGroup(f_tex, g_tex, h_tex).arrange(DOWN, aligned_edge=LEFT, buff=0.4).next_to(pool, DOWN, buff=0.6).shift(RIGHT*5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I22.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("pool_in")
            self.add_shift_sound(0.5)
            self.play(pool.animate.shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("f")
            cursor.idle=False
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            self.play(Write(f_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("g")
            x,y,_ = g_tex[0].get_center()+0.4*DOWN
            self.play(Write(g_tex), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("h")
            x,y,_ = h_tex[0].get_center()+0.4*DOWN
            self.play(Write(h_tex), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

        self.wait(4)


class Func_6_2_I_2_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cursor = AltCursor(stroke_width=0.0, idle=False)
        self.add(cursor)

        pool = ImageMobject(assets_folder / "img" / "swimming_pool.png")
        pool = pool.scale(2.8/pool.get_width()).move_to([0, 1.2, 0])
        self.add(pool)

        f_tex = MathTex("f(x)=1000\\cdot\\left(\\tfrac18\\right)^x", color=c1t, font_size=fs2)
        g_tex = MathTex("g(x)=1000\\cdot\\left(1-\\tfrac18 x\\right)", color=c1t, font_size=fs2)
        h_tex = MathTex("h(x)=1000\\cdot\\left(\\tfrac78\\right)^x", color=c1t, font_size=fs2)
        funcs = VGroup(f_tex, g_tex, h_tex).arrange(DOWN, aligned_edge=LEFT, buff=0.4).next_to(pool, DOWN, buff=0.6)
        self.add(funcs)
        

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_6_2.I22.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("correct")
            self.play(f_tex.animate.set_color(RED), g_tex.animate.set_color(RED), h_tex.animate.set_color(GREEN), run_time=0.5)

        self.wait(4)

class Func_6_2_I_2_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cursor = AltCursor(stroke_width=0.0, idle=False)
        self.add(cursor)

        pool = ImageMobject(assets_folder / "img" / "swimming_pool.png")
        pool = pool.scale(2.8/pool.get_width()).move_to([0, 1.2, 0])
        self.add(pool)

        f_tex = MathTex("f(x)=1000\\cdot\\left(\\tfrac18\\right)^x", color=c1t, font_size=fs2)
        g_tex = MathTex("g(x)=1000\\cdot\\left(1-\\tfrac18 x\\right)", color=c1t, font_size=fs2)
        h_tex = MathTex("h(x)=1000\\cdot\\left(\\tfrac78\\right)^x", color=c1t, font_size=fs2)
        funcs = VGroup(f_tex, g_tex, h_tex).arrange(DOWN, aligned_edge=LEFT, buff=0.4).next_to(pool, DOWN, buff=0.6)
        self.add(funcs)
        

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_6_2.I22.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("correct")
            self.play(f_tex.animate.set_color(RED), g_tex.animate.set_color(RED), h_tex.animate.set_color(GREEN), run_time=0.5)

        self.wait(4)

class Func_6_2_I_2_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cursor = AltCursor(stroke_width=0.0, idle=False)
        self.add(cursor)

        pool = ImageMobject(assets_folder / "img" / "swimming_pool.png")
        pool = pool.scale(2.8/pool.get_width()).move_to([0, 1.2, 0])
        self.add(pool)

        f_tex = MathTex("f(x)=1000\\cdot\\left(\\tfrac18\\right)^x", color=c1t, font_size=fs2)
        g_tex = MathTex("g(x)=1000\\cdot\\left(1-\\tfrac18 x\\right)", color=c1t, font_size=fs2)
        h_tex = MathTex("h(x)=1000\\cdot\\left(\\tfrac78\\right)^x", color=c1t, font_size=fs2)
        funcs = VGroup(f_tex, g_tex, h_tex).arrange(DOWN, aligned_edge=LEFT, buff=0.4).next_to(pool, DOWN, buff=0.6)
        self.add(funcs)
        

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_2")+self.translate("Func_6_2.I22.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("correct")
            self.play(f_tex.animate.set_color(RED), g_tex.animate.set_color(RED), h_tex.animate.set_color(GREEN), run_time=0.5)

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_2_X(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cords = self.add_cords([0, 6, 1], [0, 64, 8], x_ticks=[], y_ticks=[])
        plane = cords[0]

        f_tex = MathTex("f","(x)", "=", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        a_tex_g1 = MathTex("b>1", color=BLUE, font_size=fs2).next_to(f_tex, DOWN, buff=0.2)
        f = lambda x:2**x
        f_plot = plane.plot(f, color=BLUE)

        cords_2 = self.add_cords([0, 6, 1], [0, 1, 0.25], x_ticks=[], y_ticks=[])
        plane_2 = cords_2[0]

        a_tex_l1 = MathTex("0<b<1", color=GREEN, font_size=fs2).next_to(f_tex, DOWN, buff=0.2)
        g = lambda x:0.5**x
        g_plot = plane_2.plot(g, color=GREEN)

        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        self.add(cursor)

        hd = ImageMobject(assets_folder / "img" / "happy_dog.png")
        hd = hd.scale(4/hd.get_width()).move_to([-5, 1.2, 0])


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I2X.voiceover")
        ) as tracker:
            
            self.add_shift_sound(0.5)
            self.play(hd.animate.shift(RIGHT*5), run_time=0.5)
            self.wait(1.6)
            self.add_shift_sound(0.5)
            self.play(hd.animate.shift(RIGHT*5), run_time=0.5)
            
            self.wait_until_bookmark("f")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("a")
            cursor.idle=False
            x,y,_ = f_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("a_g1")
            cursor.idle=False
            x,y,_ = a_tex_g1.get_center()+0.4*DOWN
            self.play(Write(a_tex_g1), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.play(Write(cords))
            cursor.idle=True

            self.wait_until_bookmark("plot_1")
            cursor.idle=False
            x,y,_ = f_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(f_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(f_plot))
            cursor.idle=True

            self.wait_until_bookmark("a_l1")
            cursor.idle=False
            x,y,_ = a_tex_l1.get_center()+0.4*DOWN
            self.play(ReplacementTransform(a_tex_g1, a_tex_l1), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.play(ReplacementTransform(cords, cords_2), Unwrite(f_plot), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("plot_2")
            cursor.idle=False
            x,y,_ = g_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g_plot))
            cursor.idle=True

        self.wait(4)

####################################################################################################################################################
# CHAPTER: General form f(x)=a*b^x #################################################################################################################
class Func_6_2_I_3_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cords = self.add_cords([0, 5, 1], [0, 64, 8], x_ticks=[1,3,5], y_ticks=[16,32,48,64])
        plane = cords[0]

        f_tex = MathTex("f","(x)", "=", "", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4).shift(DOWN)
        f_transformed = MathTex("f","(x)", "=", "a\\cdot ", "b", "^x", color=c1t, font_size=fs2).move_to(f_tex)

        flying_monkey = ImageMobject(assets_folder / "img" / "flying_monkey.png")
        flying_monkey = flying_monkey.scale(2.8/flying_monkey.get_width()).move_to([-5, 1, 0])

        base = self.translate("Words.base")
        exp = self.translate("Words.exponent")

        bubble_base = Bubble([f"{base}: $b$"], loc='b2', center=[-.5,-.2,0], start_point=f_tex[-2].get_center()+[-.1,.1,0], width=1.4, height=.8)
        bubble_exp = Bubble([f"{exp}: $x$"], loc='b1', center=[.5,1,0], start_point=f_tex[-1].get_center()+0.2*UP)
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I31.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(f_tex))

            self.wait_until_bookmark("base_in")
            self.add_pencil_sound(1)
            self.play(Create(bubble_base), Write(bubble_base.text), run_time=1)

            self.wait_until_bookmark("exp_in")
            self.add_pencil_sound(1)
            self.play(Create(bubble_exp), Write(bubble_exp.text), run_time=1)

            self.wait_until_bookmark("func_transform")
            self.play(Unwrite(bubble_base), Unwrite(bubble_base.text), Unwrite(bubble_exp), Unwrite(bubble_exp.text), TransformMatchingTex(f_tex, f_transformed))

            self.wait_until_bookmark("monkey_in")
            self.add_shift_sound(0.5)
            self.play(flying_monkey.animate.shift(RIGHT*5), run_time=0.5)

        self.add_shift_sound(0.5)
        self.play(flying_monkey.animate.shift(RIGHT*5), run_time=0.5)
        self.wait(4)

#####################################
#####################################
class Func_6_2_I_3_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval(self.translate("Func_6_2.I32.q.question-options")),
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_2.I32.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cords = self.add_cords([0, 5, 1], [0, 64, 8], x_ticks=[1,3,5], y_ticks=[16,32,48,64])
        plane = cords[0]

        
        f_tex = MathTex("f","(x)", "=", "a\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=.4)
        
        a, b = ValueTracker(1), ValueTracker(2)
        a_2, b_2 = ValueTracker(1), ValueTracker(2)

        f_plotted_green = plane.plot(lambda x:2**x, color=GREEN_D)
        f_plotted_updated_blue = always_redraw(lambda: plane.plot(lambda x:a.get_value()*2**x, color=PURE_BLUE, x_range = [0, min(5, np.emath.logn(2, 64/a.get_value()))]))
        f_plotted_updated_purple = always_redraw(lambda: plane.plot(lambda x:b.get_value()**x, color=PURPLE, x_range=[0,np.emath.logn(b.get_value(), 64)]))
        f_plotted_updated_blue_2 = always_redraw(lambda: plane.plot(lambda x:a_2.get_value()*2**x, color=PURE_BLUE, x_range= [0, min(5, np.emath.logn(2, 64/a_2.get_value()))]))
        f_plotted_updated_purple_2 = always_redraw(lambda: plane.plot(lambda x:b_2.get_value()**x, color=PURPLE, x_range=[0,np.emath.logn(b_2.get_value(), 64)]))

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I32q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(f_tex))

            self.wait_until_bookmark("plot_in")
            self.play(Write(cords), run_time=1)
            self.add_pencil_sound(1.5)
            self.play(Create(f_plotted_green), run_time=1)

            self.wait_until_bookmark("blue_anim")
            self.add(f_plotted_updated_blue)
            self.play(a.animate.set_value(3))

            self.wait_until_bookmark("purple_anim")
            self.add(f_plotted_updated_purple)
            self.play(b.animate.set_value(2.7))

            self.wait_until_bookmark("reset_anim")
            self.remove(f_plotted_updated_blue, f_plotted_updated_purple)

            self.wait_until_bookmark("blue_anim_2")
            self.add(f_plotted_updated_blue_2)
            self.play(a_2.animate.set_value(3), run_time=3)

            self.wait_until_bookmark("purple_anim_2")
            self.add(f_plotted_updated_purple_2)
            self.play(b_2.animate.set_value(2.7), run_time=3)

        self.wait(6)

class Func_6_2_I_3_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        #self.add_title(self.translate("Func_6_2.I1.title"))

        cords = self.add_cords([0, 5, 1], [0, 64, 8], x_ticks=[1,3,5], y_ticks=[16,32,48,64])
        plane = cords[0]
        self.add(cords)

        a, b = ValueTracker(1), ValueTracker(2)
        f_tex = MathTex("f","(x)", "=", "a\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=.6)
        dec_nums = VGroup(MathTex("a=", color=c1t, font_size=fs2), DecimalNumber(1, num_decimal_places=1, color=c1t, font_size=fs2).add_updater(lambda m: m.set_value(a.get_value())), Circle(radius=.1, stroke_width=0), MathTex("b=", color=c1t, font_size=fs2), DecimalNumber(2, num_decimal_places=1, color=c1t, font_size=fs2).add_updater(lambda m: m.set_value(b.get_value()))).arrange(RIGHT, buff=.1).next_to(f_tex, DOWN, buff=0.6)
        self.add(f_tex, dec_nums)

        rect_a = SurroundingRectangle(Group(dec_nums[0], dec_nums[1]), buff=.2, corner_radius=.1, color=RED)
        rect_b = SurroundingRectangle(Group(dec_nums[3], dec_nums[4]), buff=.2, corner_radius=.1, color=RED)

        f_plotted_green = plane.plot(lambda x:2**x, color=GREEN_D)
        f_plotted_updated_blue = always_redraw(lambda: plane.plot(lambda x:a.get_value()*2**x, color=PURE_BLUE))
        f_plotted_updated_purple = always_redraw(lambda: plane.plot(lambda x:b.get_value()**x, color=PURPLE, x_range=[0,np.emath.logn(b.get_value(), 64)]))
        self.add(f_plotted_green)

        x_0,y_0, _ = plane.c2p(0,0)
        cursor=AltCursor(idle=True, x=x_0, y=y_0)
        self.add(cursor)

        x_cross, y_cross, _ = plane.c2p(2.3,0)
        x_end, y_end, _ = plane.c2p(5,0)
        x_mid_1, y_mid_1 = (x_0+x_cross)/2, (y_0+y_cross)/2
        x_mid_2, y_mid_2 = (x_cross+x_end)/2, (y_cross+y_end)/2

        width_mid_1, width_mid_2 = x_cross-x_0, x_end-x_cross 

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_5")+self.translate("Func_6_2.I32a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("blue_anim")
            self.add(f_plotted_updated_blue)
            self.play(a.animate.set_value(2), run_time=2)

            self.wait_until_bookmark("of_a")
            self.add_pencil_sound(1)
            self.play(Write(rect_a), run_time=1)

            self.wait_until_bookmark("purple_anim")
            self.add(f_plotted_updated_purple)
            self.play(b.animate.set_value(2.7), ReplacementTransform(rect_a, rect_b), run_time=2)
            self.wait(1.5)
            self.play(FadeOut(rect_b), run_time=1)

            self.wait_until_bookmark("low_values")
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x_mid_1, y_mid_1, width=width_mid_1), run_time=.8)

            self.wait_until_bookmark("high_values")
            self.play(CursorMoveResize(cursor, x_mid_2, y_mid_2, width=width_mid_2), run_time=.8)

            self.wait_until_bookmark("reset")
            self.play(CursorMoveResize(cursor, x_0, y_0), run_time=.3)
            cursor.idle=True

        self.wait(4)

class Func_6_2_I_3_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        #self.add_title(self.translate("Func_6_2.I1.title"))

        cords = self.add_cords([0, 5, 1], [0, 64, 8], x_ticks=[1,3,5], y_ticks=[16,32,48,64])
        plane = cords[0]
        self.add(cords)

        a, b = ValueTracker(1), ValueTracker(2)
        f_tex = MathTex("f","(x)", "=", "a\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=.6)
        dec_nums = VGroup(MathTex("a=", color=c1t, font_size=fs2), DecimalNumber(1, num_decimal_places=1, color=c1t, font_size=fs2).add_updater(lambda m: m.set_value(a.get_value())), Circle(radius=.1, stroke_width=0), MathTex("b=", color=c1t, font_size=fs2), DecimalNumber(2, num_decimal_places=1, color=c1t, font_size=fs2).add_updater(lambda m: m.set_value(b.get_value()))).arrange(RIGHT, buff=.1).next_to(f_tex, DOWN, buff=0.6)
        self.add(f_tex, dec_nums)

        rect_a = SurroundingRectangle(Group(dec_nums[0], dec_nums[1]), buff=.2, corner_radius=.1, color=RED)
        rect_b = SurroundingRectangle(Group(dec_nums[3], dec_nums[4]), buff=.2, corner_radius=.1, color=RED)

        f_plotted_green = plane.plot(lambda x:2**x, color=GREEN_D)
        f_plotted_updated_blue = always_redraw(lambda: plane.plot(lambda x:a.get_value()*2**x, color=PURE_BLUE))
        f_plotted_updated_purple = always_redraw(lambda: plane.plot(lambda x:b.get_value()**x, color=PURPLE, x_range=[0,np.emath.logn(b.get_value(), 64)]))
        self.add(f_plotted_green)

        x_0,y_0, _ = plane.c2p(0,0)
        cursor=AltCursor(idle=True, x=x_0, y=y_0)
        self.add(cursor)

        x_cross, y_cross, _ = plane.c2p(2.3,0)
        x_end, y_end, _ = plane.c2p(5,0)
        x_mid_1, y_mid_1 = (x_0+x_cross)/2, (y_0+y_cross)/2
        x_mid_2, y_mid_2 = (x_cross+x_end)/2, (y_cross+y_end)/2

        width_mid_1, width_mid_2 = x_cross-x_0, x_end-x_cross 

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_6_2.I32a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("blue_anim")
            self.add(f_plotted_updated_blue)
            self.play(a.animate.set_value(2), run_time=2)

            self.wait_until_bookmark("of_a")
            self.add_pencil_sound(1)
            self.play(Write(rect_a), run_time=1)

            self.wait_until_bookmark("purple_anim")
            self.add(f_plotted_updated_purple)
            self.play(b.animate.set_value(2.7), ReplacementTransform(rect_a, rect_b), run_time=2)
            self.wait(1.5)
            self.play(FadeOut(rect_b), run_time=1)

            self.wait_until_bookmark("low_values")
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x_mid_1, y_mid_1, width=width_mid_1), run_time=.8)

            self.wait_until_bookmark("high_values")
            self.play(CursorMoveResize(cursor, x_mid_2, y_mid_2, width=width_mid_2), run_time=.8)

            self.wait_until_bookmark("reset")
            self.play(CursorMoveResize(cursor, x_0, y_0), run_time=.3)
            cursor.idle=True

        self.wait(4)


#####################################
#####################################
class Func_6_2_I_3_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$f(x)=1000\\cdot\\left(\\tfrac18\\right)^x$", "$f(x)=1000\\cdot2^x$", "$f(x)=2000^x$", "$1000x^2$"],
            correctAnswerIndex = 1,
            questionText=self.translate("Func_6_2.I33.q.question-text")
        )


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        mib = ImageMobject(assets_folder / "img" / "money_in_the_bank.png")
        mib = mib.scale(2.8/mib.get_width()).move_to([-5, 1.6, 0])

        myTemplate = TexTemplate()
        myTemplate.add_to_preamble("\\usepackage{lmodern,textcomp}")

        capital = self.translate("Func_6_2.I33.capital")
        doubles = self.translate("Func_6_2.I33.doubles")
        notes = BulletedList(f"$1000$€ {capital}", doubles, tex_template=myTemplate).scale(.6).next_to(mib, DOWN, buff=0.4).shift(5*RIGHT)
        notes[0].set_color(c1t), notes[1].set_color(c1t)

        f_tex = MathTex("f","(x)", "=", "a\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(notes, DOWN, buff=.8)
        f_box = SurroundingRectangle(f_tex, buff=.2, corner_radius=.1, color=RED)
        
        # Action Sequence
        with self.voiceover(
            text=self.translate("Func_6_2.I33.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("term_in")
            self.play(Write(f_tex))

            self.wait_until_bookmark("thousand_in")
            self.add_shift_sound(0.5)
            self.play(mib.animate.shift(RIGHT*5), Write(notes[0]), run_time=0.5)

            self.wait_until_bookmark("interest_in")
            self.play(Write(notes[1]), run_time=0.5)

            self.wait_until_bookmark("func_box")
            self.add_pencil_sound(1)
            self.play(Write(f_box), run_time=1)

        self.wait(4)


class Func_6_2_I_3_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        mib = ImageMobject(assets_folder / "img" / "money_in_the_bank.png")
        mib = mib.scale(2.8/mib.get_width()).move_to([0, 1.6, 0])
        self.add(mib)

        myTemplate = TexTemplate()
        myTemplate.add_to_preamble("\\usepackage{lmodern,textcomp}")

        cursor = AltCursor(idle=True)
        self.add(cursor)

        capital = self.translate("Func_6_2.I33.capital")
        doubles = self.translate("Func_6_2.I33.doubles")
        notes = BulletedList(f"$1000$€ {capital}", doubles, tex_template=myTemplate).scale(.6).next_to(mib, DOWN, buff=0.4)
        notes[0].set_color(c1t), notes[1].set_color(c1t)
        self.add(notes)

        f_tex = MathTex("f","(x)", "=", "a\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(notes, DOWN, buff=.8)
        self.add(f_tex)

        f_sol_1 = MathTex("f","(x)", "=", "1000\\cdot ", "b", "^x", color=c1t, font_size=fs2).move_to(f_tex)
        f_sol_2 = MathTex("f","(x)", "=", "1000\\cdot ", "2", "^x", color=c1t, font_size=fs2).move_to(f_tex)
        
        # Action Sequence
        with self.voiceover(
            text=self.translate("General.incorrect_3")+self.translate("Func_6_2.I33.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("capital")
            x,y,_ = notes[0].get_center()+0.3*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sol_1")
            self.play(TransformMatchingTex(f_tex, f_sol_1))

            self.wait_until_bookmark("doubles")
            x,y,_ = notes[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sol_2")
            cursor.idle=True
            self.play(TransformMatchingTex(f_sol_1, f_sol_2))

            self.wait_until_bookmark("underline_fct")
            cursor.idle=False
            self.play(CursorUnderline(cursor, f_sol_2), run_time=0.5)

        self.wait(4)

class Func_6_2_I_3_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        mib = ImageMobject(assets_folder / "img" / "money_in_the_bank.png")
        mib = mib.scale(2.8/mib.get_width()).move_to([0, 1.6, 0])
        self.add(mib)

        myTemplate = TexTemplate()
        myTemplate.add_to_preamble("\\usepackage{lmodern,textcomp}")

        cursor = AltCursor(idle=True)
        self.add(cursor)

        capital = self.translate("Func_6_2.I33.capital")
        doubles = self.translate("Func_6_2.I33.doubles")
        notes = BulletedList(f"$1000$€ {capital}", doubles, tex_template=myTemplate).scale(.6).next_to(mib, DOWN, buff=0.4)
        notes[0].set_color(c1t), notes[1].set_color(c1t)
        self.add(notes)

        f_tex = MathTex("f","(x)", "=", "a\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(notes, DOWN, buff=.8)
        self.add(f_tex)

        f_sol_1 = MathTex("f","(x)", "=", "1000\\cdot ", "b", "^x", color=c1t, font_size=fs2).move_to(f_tex)
        f_sol_2 = MathTex("f","(x)", "=", "1000\\cdot ", "2", "^x", color=c1t, font_size=fs2).move_to(f_tex)
        
        # Action Sequence
        with self.voiceover(
            text=self.translate("General.correct_3")+self.translate("Func_6_2.I33.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("capital")
            x,y,_ = notes[0].get_center()+0.3*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sol_1")
            self.play(TransformMatchingTex(f_tex, f_sol_1))

            self.wait_until_bookmark("doubles")
            x,y,_ = notes[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sol_2")
            cursor.idle=True
            self.play(TransformMatchingTex(f_sol_1, f_sol_2))

            self.wait_until_bookmark("underline_fct")
            cursor.idle=False
            self.play(CursorUnderline(cursor, f_sol_2), run_time=0.5)

        self.wait(4)

class Func_6_2_I_3_3_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        mib = ImageMobject(assets_folder / "img" / "money_in_the_bank.png")
        mib = mib.scale(2.8/mib.get_width()).move_to([0, 1.6, 0])
        self.add(mib)

        myTemplate = TexTemplate()
        myTemplate.add_to_preamble("\\usepackage{lmodern,textcomp}")

        cursor = AltCursor(idle=True)
        self.add(cursor)

        capital = self.translate("Func_6_2.I33.capital")
        doubles = self.translate("Func_6_2.I33.doubles")
        notes = BulletedList(f"$1000$€ {capital}", doubles, tex_template=myTemplate).scale(.6).next_to(mib, DOWN, buff=0.4)
        notes[0].set_color(c1t), notes[1].set_color(c1t)
        self.add(notes)

        f_tex = MathTex("f","(x)", "=", "a\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(notes, DOWN, buff=.8)
        self.add(f_tex)

        f_sol_1 = MathTex("f","(x)", "=", "1000\\cdot ", "b", "^x", color=c1t, font_size=fs2).move_to(f_tex)
        f_sol_2 = MathTex("f","(x)", "=", "1000\\cdot ", "2", "^x", color=c1t, font_size=fs2).move_to(f_tex)
        
        # Action Sequence
        with self.voiceover(
            text=self.translate("General.incorrect_3")+self.translate("Func_6_2.I33.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("capital")
            x,y,_ = notes[0].get_center()+0.3*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sol_1")
            self.play(TransformMatchingTex(f_tex, f_sol_1))

            self.wait_until_bookmark("doubles")
            x,y,_ = notes[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sol_2")
            cursor.idle=True
            self.play(TransformMatchingTex(f_sol_1, f_sol_2))

            self.wait_until_bookmark("underline_fct")
            cursor.idle=False
            self.play(CursorUnderline(cursor, f_sol_2), run_time=0.5)

        self.wait(4)

class Func_6_2_I_3_3_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        mib = ImageMobject(assets_folder / "img" / "money_in_the_bank.png")
        mib = mib.scale(2.8/mib.get_width()).move_to([0, 1.6, 0])
        self.add(mib)

        myTemplate = TexTemplate()
        myTemplate.add_to_preamble("\\usepackage{lmodern,textcomp}")

        cursor = AltCursor(idle=True)
        self.add(cursor)

        capital = self.translate("Func_6_2.I33.capital")
        doubles = self.translate("Func_6_2.I33.doubles")
        notes = BulletedList(f"$1000$€ {capital}", doubles, tex_template=myTemplate).scale(.6).next_to(mib, DOWN, buff=0.4)
        notes[0].set_color(c1t), notes[1].set_color(c1t)
        self.add(notes)

        f_tex = MathTex("f","(x)", "=", "a\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(notes, DOWN, buff=.8)
        self.add(f_tex)

        f_sol_1 = MathTex("f","(x)", "=", "1000\\cdot ", "b", "^x", color=c1t, font_size=fs2).move_to(f_tex)
        f_sol_2 = MathTex("f","(x)", "=", "1000\\cdot ", "2", "^x", color=c1t, font_size=fs2).move_to(f_tex)
        
        # Action Sequence
        with self.voiceover(
            text=self.translate("General.incorrect_3")+self.translate("Func_6_2.I33.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("capital")
            x,y,_ = notes[0].get_center()+0.3*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sol_1")
            self.play(TransformMatchingTex(f_tex, f_sol_1))

            self.wait_until_bookmark("doubles")
            x,y,_ = notes[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sol_2")
            cursor.idle=True
            self.play(TransformMatchingTex(f_sol_1, f_sol_2))

            self.wait_until_bookmark("underline_fct")
            cursor.idle=False
            self.play(CursorUnderline(cursor, f_sol_2), run_time=0.5)

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_3_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$f(x)=8\\cdot\\left(\\frac{1}{4}\\right)^x$", "$f(x)=\\frac{1}{2}\\cdot4^x$", "$f(x)=2\\cdot4^x$", "$f(x)=\\frac{1}{4}\\cdot2^x$"],
            correctAnswerIndex = 3,
            questionText=self.translate("Func_6_2.I34.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cords = self.add_cords([0, 6, 1], [0, 16, 2], x_ticks=[2,4,6], y_ticks=[4,8,12,16], height=3.2).shift(.6*DOWN)
        plane = cords[0]

        plot = plane.plot(lambda x: (2**x)/4, color=GREEN_E)

        func_tex = MathTex("f","(x)", "=", "a\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
            text=self.translate("Func_6_2.I34.q.voiceover")
        ) as tracker:
            
            self.play(Write(cords), run_time=.5)

            self.wait_until_bookmark("graph_in")
            self.add_pencil_sound(1)
            self.play(Create(plot), run_time=1)

            self.wait_until_bookmark("func_in")
            self.play(Write(func_tex), run_time=1)

        self.wait(4)


class Func_6_2_I_3_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cords = self.add_cords([0, 5, 1], [0, 12, 2], x_ticks=[2,3,4], y_ticks=[2, 4,6,8,10,12])
        plane = cords[0]
        self.add(cords)

        plot = plane.plot(lambda x: (2**x)/4, color=GREEN_E)
        self.add(plot)

        x_0, y_0, _ = plane.c2p(0,0)
        cursor = AltCursor(idle=True, x=x_0, y=y_0)
        self.add(cursor)

        lines_f_3 = VGroup(DashedLine(plane.c2p(3,0), plane.c2p(3,2), color=GREY), DashedLine(plane.c2p(3,2), plane.c2p(0,2), color=GREY))
        lines_f_4 = VGroup(DashedLine(plane.c2p(4,0), plane.c2p(4,4), color=GREY), DashedLine(plane.c2p(4,4), plane.c2p(0,4), color=GREY))

        circ_3 = Circle(radius=.1, color=RED).move_to(plane.c2p(3,2))
        circ_4 = Circle(radius=.1, color=RED).move_to(plane.c2p(4,4))

        func_tex = MathTex("f","(x)", "=", "a","\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        self.add(func_tex)
        func_sol_1 = MathTex("f","(x)", "=", "a","\\cdot ", "2", "^x", color=c1t, font_size=fs2).move_to(func_tex)
        func_sol_2 = MathTex("f","(x)", "=", "\\tfrac14\\","\\cdot ", "2", "^x", color=c1t, font_size=fs2).move_to(func_tex)
        f_vals = VGroup(MathTex("f(","3",")=2", color=c1t, font_size=fs2), MathTex("f(","4",")=4", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(func_tex, DOWN, buff=.4)
        f_vals.shift((f_vals.get_left()-func_tex.get_left())[0]*LEFT)

        f_3 = VGroup(lines_f_3.copy(), circ_3.copy())

        f_3_steps = MathTex("f(3)&=a\\cdot2^3", "\\\\&=a\\cdot8", "\\\\&=2","\\\\ \\Rightarrow a&=\\tfrac14", color=c1t, font_size=fs2).next_to(func_tex, DOWN, buff=.4)

        # Action Sequence
        with self.voiceover(
            text=self.translate("General.incorrect_4")+self.translate("Func_6_2.I34.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f_x_3")
            self.play(Write(f_vals[0][1]), run_time=.5)
            
            self.wait_until_bookmark("f_x_4")
            self.play(Write(f_vals[1][1]), run_time=.5)
            
            self.wait_until_bookmark("f_3")
            cursor.idle=False
            x,y,_ = plane.c2p(3,2)
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.add(circ_3)
            self.play(Create(lines_f_3), Write(f_vals[0][0]), Write(f_vals[0][2]), run_time=1)

            self.wait_until_bookmark("f_4")
            x,y,_ = plane.c2p(4,4)
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.add(circ_4)
            self.play(Create(lines_f_4), Write(f_vals[1][0]), Write(f_vals[1][2]), run_time=1)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor,x_0,y_0), run_time=.3)
            cursor.idle=True

            self.wait_until_bookmark("sol_1")
            x,y,_ = func_tex[-2].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.play(TransformMatchingTex(func_tex, func_sol_1))
            cursor.idle=True

            self.wait_until_bookmark("reset_1")
            self.play(Unwrite(f_vals), Uncreate(lines_f_3), Uncreate(lines_f_4), Uncreate(circ_3), Uncreate(circ_4), run_time=.5)

            self.wait_until_bookmark("of_a")
            cursor.idle=False
            x,y,_ = func_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("f_3_again")
            cursor.idle=False
            x,y,_ = plane.c2p(3,2)
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.play(Write(f_3), run_time=.5)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor,x_0,y_0), run_time=.3)
            cursor.idle=True
            

            self.wait_until_bookmark("step_1")
            self.play(Write(f_3_steps[0]), run_time=.5)

            self.wait_until_bookmark("step_2")
            self.play(Write(f_3_steps[1]), run_time=.5)

            self.wait_until_bookmark("step_3")
            self.play(Write(f_3_steps[2]), run_time=.5)

            self.wait_until_bookmark("step_4")
            self.play(Write(f_3_steps[3]), TransformMatchingTex(func_sol_1, func_sol_2), run_time=1)

            self.wait_until_bookmark("reset_2")
            self.play(Unwrite(f_3_steps), Uncreate(f_3), run_time=.5)

            self.wait_until_bookmark("final_sol")
            cursor.idle=False
            self.play(CursorUnderline(cursor, func_sol_2), run_time=.5)

        self.wait(4)

class Func_6_2_I_3_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cords = self.add_cords([0, 5, 1], [0, 12, 2], x_ticks=[2,3,4], y_ticks=[2, 4,6,8,10,12])
        plane = cords[0]
        self.add(cords)

        plot = plane.plot(lambda x: (2**x)/4, color=GREEN_E)
        self.add(plot)

        x_0, y_0, _ = plane.c2p(0,0)
        cursor = AltCursor(idle=True, x=x_0, y=y_0)
        self.add(cursor)

        lines_f_3 = VGroup(DashedLine(plane.c2p(3,0), plane.c2p(3,2), color=GREY), DashedLine(plane.c2p(3,2), plane.c2p(0,2), color=GREY))
        lines_f_4 = VGroup(DashedLine(plane.c2p(4,0), plane.c2p(4,4), color=GREY), DashedLine(plane.c2p(4,4), plane.c2p(0,4), color=GREY))

        circ_3 = Circle(radius=.1, color=RED).move_to(plane.c2p(3,2))
        circ_4 = Circle(radius=.1, color=RED).move_to(plane.c2p(4,4))

        func_tex = MathTex("f","(x)", "=", "a","\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        self.add(func_tex)
        func_sol_1 = MathTex("f","(x)", "=", "a","\\cdot ", "2", "^x", color=c1t, font_size=fs2).move_to(func_tex)
        func_sol_2 = MathTex("f","(x)", "=", "\\tfrac14\\","\\cdot ", "2", "^x", color=c1t, font_size=fs2).move_to(func_tex)
        f_vals = VGroup(MathTex("f(","3",")=2", color=c1t, font_size=fs2), MathTex("f(","4",")=4", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(func_tex, DOWN, buff=.4)
        f_vals.shift((f_vals.get_left()-func_tex.get_left())[0]*LEFT)

        f_3 = VGroup(lines_f_3.copy(), circ_3.copy())

        f_3_steps = MathTex("f(3)&=a\\cdot2^3", "\\\\&=a\\cdot8", "\\\\&=2","\\\\ \\Rightarrow a&=\\tfrac14", color=c1t, font_size=fs2).next_to(func_tex, DOWN, buff=.4)

        # Action Sequence
        with self.voiceover(
            text=self.translate("General.incorrect_4")+self.translate("Func_6_2.I34.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f_x_3")
            self.play(Write(f_vals[0][1]), run_time=.5)
            
            self.wait_until_bookmark("f_x_4")
            self.play(Write(f_vals[1][1]), run_time=.5)
            
            self.wait_until_bookmark("f_3")
            cursor.idle=False
            x,y,_ = plane.c2p(3,2)
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.add(circ_3)
            self.play(Create(lines_f_3), Write(f_vals[0][0]), Write(f_vals[0][2]), run_time=1)

            self.wait_until_bookmark("f_4")
            x,y,_ = plane.c2p(4,4)
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.add(circ_4)
            self.play(Create(lines_f_4), Write(f_vals[1][0]), Write(f_vals[1][2]), run_time=1)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor,x_0,y_0), run_time=.3)
            cursor.idle=True

            self.wait_until_bookmark("sol_1")
            x,y,_ = func_tex[-2].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.play(TransformMatchingTex(func_tex, func_sol_1))
            cursor.idle=True

            self.wait_until_bookmark("reset_1")
            self.play(Unwrite(f_vals), Uncreate(lines_f_3), Uncreate(lines_f_4), Uncreate(circ_3), Uncreate(circ_4), run_time=.5)

            self.wait_until_bookmark("of_a")
            cursor.idle=False
            x,y,_ = func_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("f_3_again")
            cursor.idle=False
            x,y,_ = plane.c2p(3,2)
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.play(Write(f_3), run_time=.5)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor,x_0,y_0), run_time=.3)
            cursor.idle=True
            

            self.wait_until_bookmark("step_1")
            self.play(Write(f_3_steps[0]), run_time=.5)

            self.wait_until_bookmark("step_2")
            self.play(Write(f_3_steps[1]), run_time=.5)

            self.wait_until_bookmark("step_3")
            self.play(Write(f_3_steps[2]), run_time=.5)

            self.wait_until_bookmark("step_4")
            self.play(Write(f_3_steps[3]), TransformMatchingTex(func_sol_1, func_sol_2), run_time=1)

            self.wait_until_bookmark("reset_2")
            self.play(Unwrite(f_3_steps), Uncreate(f_3), run_time=.5)

            self.wait_until_bookmark("final_sol")
            cursor.idle=False
            self.play(CursorUnderline(cursor, func_sol_2), run_time=.5)

        self.wait(4)

class Func_6_2_I_3_4_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cords = self.add_cords([0, 5, 1], [0, 12, 2], x_ticks=[2,3,4], y_ticks=[2, 4,6,8,10,12])
        plane = cords[0]
        self.add(cords)

        plot = plane.plot(lambda x: (2**x)/4, color=GREEN_E)
        self.add(plot)

        x_0, y_0, _ = plane.c2p(0,0)
        cursor = AltCursor(idle=True, x=x_0, y=y_0)
        self.add(cursor)

        lines_f_3 = VGroup(DashedLine(plane.c2p(3,0), plane.c2p(3,2), color=GREY), DashedLine(plane.c2p(3,2), plane.c2p(0,2), color=GREY))
        lines_f_4 = VGroup(DashedLine(plane.c2p(4,0), plane.c2p(4,4), color=GREY), DashedLine(plane.c2p(4,4), plane.c2p(0,4), color=GREY))

        circ_3 = Circle(radius=.1, color=RED).move_to(plane.c2p(3,2))
        circ_4 = Circle(radius=.1, color=RED).move_to(plane.c2p(4,4))

        func_tex = MathTex("f","(x)", "=", "a","\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        self.add(func_tex)
        func_sol_1 = MathTex("f","(x)", "=", "a","\\cdot ", "2", "^x", color=c1t, font_size=fs2).move_to(func_tex)
        func_sol_2 = MathTex("f","(x)", "=", "\\tfrac14\\","\\cdot ", "2", "^x", color=c1t, font_size=fs2).move_to(func_tex)
        f_vals = VGroup(MathTex("f(","3",")=2", color=c1t, font_size=fs2), MathTex("f(","4",")=4", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(func_tex, DOWN, buff=.4)
        f_vals.shift((f_vals.get_left()-func_tex.get_left())[0]*LEFT)

        f_3 = VGroup(lines_f_3.copy(), circ_3.copy())

        f_3_steps = MathTex("f(3)&=a\\cdot2^3", "\\\\&=a\\cdot8", "\\\\&=2","\\\\ \\Rightarrow a&=\\tfrac14", color=c1t, font_size=fs2).next_to(func_tex, DOWN, buff=.4)

        # Action Sequence
        with self.voiceover(
            text=self.translate("General.incorrect_4")+self.translate("Func_6_2.I34.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f_x_3")
            self.play(Write(f_vals[0][1]), run_time=.5)
            
            self.wait_until_bookmark("f_x_4")
            self.play(Write(f_vals[1][1]), run_time=.5)
            
            self.wait_until_bookmark("f_3")
            cursor.idle=False
            x,y,_ = plane.c2p(3,2)
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.add(circ_3)
            self.play(Create(lines_f_3), Write(f_vals[0][0]), Write(f_vals[0][2]), run_time=1)

            self.wait_until_bookmark("f_4")
            x,y,_ = plane.c2p(4,4)
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.add(circ_4)
            self.play(Create(lines_f_4), Write(f_vals[1][0]), Write(f_vals[1][2]), run_time=1)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor,x_0,y_0), run_time=.3)
            cursor.idle=True

            self.wait_until_bookmark("sol_1")
            x,y,_ = func_tex[-2].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.play(TransformMatchingTex(func_tex, func_sol_1))
            cursor.idle=True

            self.wait_until_bookmark("reset_1")
            self.play(Unwrite(f_vals), Uncreate(lines_f_3), Uncreate(lines_f_4), Uncreate(circ_3), Uncreate(circ_4), run_time=.5)

            self.wait_until_bookmark("of_a")
            cursor.idle=False
            x,y,_ = func_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("f_3_again")
            cursor.idle=False
            x,y,_ = plane.c2p(3,2)
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.play(Write(f_3), run_time=.5)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor,x_0,y_0), run_time=.3)
            cursor.idle=True
            

            self.wait_until_bookmark("step_1")
            self.play(Write(f_3_steps[0]), run_time=.5)

            self.wait_until_bookmark("step_2")
            self.play(Write(f_3_steps[1]), run_time=.5)

            self.wait_until_bookmark("step_3")
            self.play(Write(f_3_steps[2]), run_time=.5)

            self.wait_until_bookmark("step_4")
            self.play(Write(f_3_steps[3]), TransformMatchingTex(func_sol_1, func_sol_2), run_time=1)

            self.wait_until_bookmark("reset_2")
            self.play(Unwrite(f_3_steps), Uncreate(f_3), run_time=.5)

            self.wait_until_bookmark("final_sol")
            cursor.idle=False
            self.play(CursorUnderline(cursor, func_sol_2), run_time=.5)

        self.wait(4)

class Func_6_2_I_3_4_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        cords = self.add_cords([0, 5, 1], [0, 12, 2], x_ticks=[2,3,4], y_ticks=[2, 4,6,8,10,12])
        plane = cords[0]
        self.add(cords)

        plot = plane.plot(lambda x: (2**x)/4, color=GREEN_E)
        self.add(plot)

        x_0, y_0, _ = plane.c2p(0,0)
        cursor = AltCursor(idle=True, x=x_0, y=y_0)
        self.add(cursor)

        lines_f_3 = VGroup(DashedLine(plane.c2p(3,0), plane.c2p(3,2), color=GREY), DashedLine(plane.c2p(3,2), plane.c2p(0,2), color=GREY))
        lines_f_4 = VGroup(DashedLine(plane.c2p(4,0), plane.c2p(4,4), color=GREY), DashedLine(plane.c2p(4,4), plane.c2p(0,4), color=GREY))

        circ_3 = Circle(radius=.1, color=RED).move_to(plane.c2p(3,2))
        circ_4 = Circle(radius=.1, color=RED).move_to(plane.c2p(4,4))

        func_tex = MathTex("f","(x)", "=", "a","\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        self.add(func_tex)
        func_sol_1 = MathTex("f","(x)", "=", "a","\\cdot ", "2", "^x", color=c1t, font_size=fs2).move_to(func_tex)
        func_sol_2 = MathTex("f","(x)", "=", "\\tfrac14\\","\\cdot ", "2", "^x", color=c1t, font_size=fs2).move_to(func_tex)
        f_vals = VGroup(MathTex("f(","3",")=2", color=c1t, font_size=fs2), MathTex("f(","4",")=4", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(func_tex, DOWN, buff=.4)
        f_vals.shift((f_vals.get_left()-func_tex.get_left())[0]*LEFT)

        f_3 = VGroup(lines_f_3.copy(), circ_3.copy())

        f_3_steps = MathTex("f(3)&=a\\cdot2^3", "\\\\&=a\\cdot8", "\\\\&=2","\\\\ \\Rightarrow a&=\\tfrac14", color=c1t, font_size=fs2).next_to(func_tex, DOWN, buff=.4)

        # Action Sequence
        with self.voiceover(
            text=self.translate("General.correct_4")+self.translate("Func_6_2.I34.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f_x_3")
            self.play(Write(f_vals[0][1]), run_time=.5)
            
            self.wait_until_bookmark("f_x_4")
            self.play(Write(f_vals[1][1]), run_time=.5)
            
            self.wait_until_bookmark("f_3")
            cursor.idle=False
            x,y,_ = plane.c2p(3,2)
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.add(circ_3)
            self.play(Create(lines_f_3), Write(f_vals[0][0]), Write(f_vals[0][2]), run_time=1)

            self.wait_until_bookmark("f_4")
            x,y,_ = plane.c2p(4,4)
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.add(circ_4)
            self.play(Create(lines_f_4), Write(f_vals[1][0]), Write(f_vals[1][2]), run_time=1)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor,x_0,y_0), run_time=.3)
            cursor.idle=True

            self.wait_until_bookmark("sol_1")
            x,y,_ = func_tex[-2].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.play(TransformMatchingTex(func_tex, func_sol_1))
            cursor.idle=True

            self.wait_until_bookmark("reset_1")
            self.play(Unwrite(f_vals), Uncreate(lines_f_3), Uncreate(lines_f_4), Uncreate(circ_3), Uncreate(circ_4), run_time=.5)

            self.wait_until_bookmark("of_a")
            cursor.idle=False
            x,y,_ = func_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("f_3_again")
            cursor.idle=False
            x,y,_ = plane.c2p(3,2)
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            self.play(Write(f_3), run_time=.5)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor,x_0,y_0), run_time=.3)
            cursor.idle=True
            

            self.wait_until_bookmark("step_1")
            self.play(Write(f_3_steps[0]), run_time=.5)

            self.wait_until_bookmark("step_2")
            self.play(Write(f_3_steps[1]), run_time=.5)

            self.wait_until_bookmark("step_3")
            self.play(Write(f_3_steps[2]), run_time=.5)

            self.wait_until_bookmark("step_4")
            self.play(Write(f_3_steps[3]), TransformMatchingTex(func_sol_1, func_sol_2), run_time=1)

            self.wait_until_bookmark("reset_2")
            self.play(Unwrite(f_3_steps), Uncreate(f_3), run_time=.5)

            self.wait_until_bookmark("final_sol")
            cursor.idle=False
            self.play(CursorUnderline(cursor, func_sol_2), run_time=.5)

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_3_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\frac12$", "$\\frac14$", "$2$", "$4$"],
            correctAnswerIndex = 3,
            questionText=self.translate("Func_6_2.I35.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        ball = ImageMobject(assets_folder / "img" / "ball.png")
        ball = ball.scale(2/ball.get_width()).move_to([0, 5, 0])
        original_height = self.translate("Func_6_2.I35.original-height")
        eight_meters = Tex(original_height, ": $8$m", color=c1t, font_size=fs2).set_y(2.4)

        func_tex = MathTex("f","(x)", "=", "a\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(ball, DOWN, buff=0.4).shift(DOWN*4)
        three_bounces = self.translate("Func_6_2.I35.three-bounces")
        bounce_tex = Tex(three_bounces, "\\\\ $\\Rightarrow \\tfrac18$ m", color=c1t, font_size=fs2).next_to(func_tex, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
            text=self.translate("Func_6_2.I35.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("ball_in")
            self.add_shift_sound(1)
            self.play(ball.animate.shift(4*DOWN), run_time=1)

            self.wait_until_bookmark("eight_meters")
            self.play(Write(eight_meters), run_time=.5)

            self.wait_until_bookmark("three_bounces")
            self.play(Write(bounce_tex[0]), run_time=.5)

            self.wait_until_bookmark("one_eigth")
            self.play(Write(bounce_tex[1]), run_time=.5)

            self.wait_until_bookmark("func_in")
            self.play(Write(func_tex), run_time=1)

        self.wait(4)


class Func_6_2_I_3_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        ball = ImageMobject(assets_folder / "img" / "ball.png")
        ball = ball.scale(2/ball.get_width()).move_to([0, 1, 0])
        original_height = self.translate("Func_6_2.I35.original-height")
        eight_meters = Tex(original_height, ": $8$m", color=c1t, font_size=fs2).set_y(2.4)

        func_tex = MathTex("f","(x)", "=", "a\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(ball, DOWN, buff=1)
        func_tex_a = MathTex("f","(x)", "=", "8\\cdot ", "b", "^x", color=c1t, font_size=fs2).move_to(func_tex)
        func_tex_sol = MathTex("f","(x)", "=", "8\\cdot ", "(\\tfrac{1}{4})", "^x", color=c1t, font_size=fs2).move_to(func_tex)
        frame_sol = SurroundingRectangle(func_tex_sol, buff=.2, corner_radius=.1, color=GREEN_E).set_y(0)
        three_bounces = self.translate("Func_6_2.I35.three-bounces")
        bounce_tex = Tex(three_bounces, "\\\\ $\\Rightarrow \\tfrac18$ m", color=c1t, font_size=fs2).next_to(func_tex, DOWN, buff=0.4)

        upshift = (eight_meters.get_top()-bounce_tex.get_top())*(0,1,0)

        self.add(ball, eight_meters, func_tex)

        follows_0 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(eight_meters, DOWN, buff=0.2)
        f_0_1 = MathTex("f(0)=", "a\\cdot b^0", "=8", color=c1t, font_size=fs2).next_to(follows_0, DOWN, buff=0.2)
        f_0_2 = MathTex("f(0)=", "a\\cdot 1", "=8", color=c1t, font_size=fs2).move_to(f_0_1)
        follows_a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f_0_2, DOWN, buff=0.2)
        sol_a = MathTex("a=", "8", color=c1t, font_size=fs2).next_to(follows_a, DOWN, buff=0.2)

        follows_1 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(bounce_tex, DOWN, buff=0.2).shift(upshift)
        f_1_1 = MathTex("f(3)=8\\cdot", "b^3", "=\\tfrac18", color=c1t, font_size=fs2).next_to(follows_1, DOWN, buff=0.2)
        f_1_2 = MathTex("f(3)=", "b^3", "=\\tfrac{1}{64}", color=c1t, font_size=fs2).move_to(f_1_1)
        follows_b = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f_1_2, DOWN, buff=0.2)
        sol_b = MathTex("b=", "\\tfrac14", color=c1t, font_size=fs2).next_to(follows_b, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
            text=self.translate("General.correct_1")+self.translate("Func_6_2.I35.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f_0_1")
            self.add_shift_sound(1)
            self.play(ball.animate.shift(5*UP), Write(follows_0), Write(f_0_1), run_time=1)

            self.wait_until_bookmark("f_0_2")
            self.play(TransformMatchingTex(f_0_1, f_0_2), run_time=1)

            self.wait_until_bookmark("f_0_3")
            self.play(TransformMatchingTex(func_tex, func_tex_a), run_time=1)

            self.wait_until_bookmark("f_0_4")
            self.play(Write(follows_a), Write(sol_a), run_time=1)

            self.wait_until_bookmark("reorganize")
            self.add_shift_sound(1)
            self.play(bounce_tex.animate.shift(upshift), Unwrite(follows_0), Unwrite(follows_a), Unwrite(sol_a), Unwrite(eight_meters), Unwrite(f_0_2), run_time=1)

            self.wait_until_bookmark("f_1_1")
            self.play(Write(follows_1), Write(f_1_1), run_time=1)

            self.wait_until_bookmark("f_1_2")
            self.play(TransformMatchingTex(f_1_1, f_1_2), run_time=1)

            self.wait_until_bookmark("final_sol")
            self.play(TransformMatchingTex(func_tex_a, func_tex_sol), Write(follows_b), Write(sol_b), run_time=1)

            self.wait_until_bookmark("clean_up")
            self.play(Unwrite(follows_a), Unwrite(follows_1), Unwrite(follows_b), Unwrite(bounce_tex), Unwrite(sol_b), Unwrite(f_1_2), func_tex_sol.animate.shift(func_tex_sol.get_y()*DOWN), run_time=1)

            self.wait_until_bookmark("frame")
            self.add_pencil_sound(1)
            self.play(Create(frame_sol), run_time=1)

        self.wait(4)

class Func_6_2_I_3_5_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        ball = ImageMobject(assets_folder / "img" / "ball.png")
        ball = ball.scale(2/ball.get_width()).move_to([0, 1, 0])
        original_height = self.translate("Func_6_2.I35.original-height")
        eight_meters = Tex(original_height, ": $8$m", color=c1t, font_size=fs2).set_y(2.4)

        func_tex = MathTex("f","(x)", "=", "a\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(ball, DOWN, buff=1)
        func_tex_a = MathTex("f","(x)", "=", "8\\cdot ", "b", "^x", color=c1t, font_size=fs2).move_to(func_tex)
        func_tex_sol = MathTex("f","(x)", "=", "8\\cdot ", "(\\tfrac{1}{4})", "^x", color=c1t, font_size=fs2).move_to(func_tex)
        frame_sol = SurroundingRectangle(func_tex_sol, buff=.2, corner_radius=.1, color=GREEN_E).set_y(0)
        three_bounces = self.translate("Func_6_2.I35.three-bounces")
        bounce_tex = Tex(three_bounces, "\\\\ $\\Rightarrow \\tfrac18$ m", color=c1t, font_size=fs2).next_to(func_tex, DOWN, buff=0.4)

        upshift = (eight_meters.get_top()-bounce_tex.get_top())*(0,1,0)

        self.add(ball, eight_meters, func_tex)

        follows_0 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(eight_meters, DOWN, buff=0.2)
        f_0_1 = MathTex("f(0)=", "a\\cdot b^0", "=8", color=c1t, font_size=fs2).next_to(follows_0, DOWN, buff=0.2)
        f_0_2 = MathTex("f(0)=", "a\\cdot 1", "=8", color=c1t, font_size=fs2).move_to(f_0_1)
        follows_a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f_0_2, DOWN, buff=0.2)
        sol_a = MathTex("a=", "8", color=c1t, font_size=fs2).next_to(follows_a, DOWN, buff=0.2)

        follows_1 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(bounce_tex, DOWN, buff=0.2).shift(upshift)
        f_1_1 = MathTex("f(3)=8\\cdot", "b^3", "=\\tfrac18", color=c1t, font_size=fs2).next_to(follows_1, DOWN, buff=0.2)
        f_1_2 = MathTex("f(3)=", "b^3", "=\\tfrac{1}{64}", color=c1t, font_size=fs2).move_to(f_1_1)
        follows_b = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f_1_2, DOWN, buff=0.2)
        sol_b = MathTex("b=", "\\tfrac14", color=c1t, font_size=fs2).next_to(follows_b, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
            text=self.translate("General.incorrect_1")+self.translate("Func_6_2.I35.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f_0_1")
            self.add_shift_sound(1)
            self.play(ball.animate.shift(5*UP), Write(follows_0), Write(f_0_1), run_time=1)

            self.wait_until_bookmark("f_0_2")
            self.play(TransformMatchingTex(f_0_1, f_0_2), run_time=1)

            self.wait_until_bookmark("f_0_3")
            self.play(TransformMatchingTex(func_tex, func_tex_a), run_time=1)

            self.wait_until_bookmark("f_0_4")
            self.play(Write(follows_a), Write(sol_a), run_time=1)

            self.wait_until_bookmark("reorganize")
            self.add_shift_sound(1)
            self.play(bounce_tex.animate.shift(upshift), Unwrite(follows_0), Unwrite(follows_a), Unwrite(sol_a), Unwrite(eight_meters), Unwrite(f_0_2), run_time=1)

            self.wait_until_bookmark("f_1_1")
            self.play(Write(follows_1), Write(f_1_1), run_time=1)

            self.wait_until_bookmark("f_1_2")
            self.play(TransformMatchingTex(f_1_1, f_1_2), run_time=1)

            self.wait_until_bookmark("final_sol")
            self.play(TransformMatchingTex(func_tex_a, func_tex_sol), Write(follows_b), Write(sol_b), run_time=1)

            self.wait_until_bookmark("clean_up")
            self.play(Unwrite(follows_a), Unwrite(follows_1), Unwrite(follows_b), Unwrite(bounce_tex), Unwrite(sol_b), Unwrite(f_1_2), func_tex_sol.animate.shift(func_tex_sol.get_y()*DOWN), run_time=1)

            self.wait_until_bookmark("frame")
            self.add_pencil_sound(1)
            self.play(Create(frame_sol), run_time=1)

        self.wait(4)

class Func_6_2_I_3_5_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        ball = ImageMobject(assets_folder / "img" / "ball.png")
        ball = ball.scale(2/ball.get_width()).move_to([0, 1, 0])
        original_height = self.translate("Func_6_2.I35.original-height")
        eight_meters = Tex(original_height, ": $8$m", color=c1t, font_size=fs2).set_y(2.4)

        func_tex = MathTex("f","(x)", "=", "a\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(ball, DOWN, buff=1)
        func_tex_a = MathTex("f","(x)", "=", "8\\cdot ", "b", "^x", color=c1t, font_size=fs2).move_to(func_tex)
        func_tex_sol = MathTex("f","(x)", "=", "8\\cdot ", "(\\tfrac{1}{4})", "^x", color=c1t, font_size=fs2).move_to(func_tex)
        frame_sol = SurroundingRectangle(func_tex_sol, buff=.2, corner_radius=.1, color=GREEN_E).set_y(0)
        three_bounces = self.translate("Func_6_2.I35.three-bounces")
        bounce_tex = Tex(three_bounces, "\\\\ $\\Rightarrow \\tfrac18$ m", color=c1t, font_size=fs2).next_to(func_tex, DOWN, buff=0.4)

        upshift = (eight_meters.get_top()-bounce_tex.get_top())*(0,1,0)

        self.add(ball, eight_meters, func_tex)

        follows_0 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(eight_meters, DOWN, buff=0.2)
        f_0_1 = MathTex("f(0)=", "a\\cdot b^0", "=8", color=c1t, font_size=fs2).next_to(follows_0, DOWN, buff=0.2)
        f_0_2 = MathTex("f(0)=", "a\\cdot 1", "=8", color=c1t, font_size=fs2).move_to(f_0_1)
        follows_a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f_0_2, DOWN, buff=0.2)
        sol_a = MathTex("a=", "8", color=c1t, font_size=fs2).next_to(follows_a, DOWN, buff=0.2)

        follows_1 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(bounce_tex, DOWN, buff=0.2).shift(upshift)
        f_1_1 = MathTex("f(3)=8\\cdot", "b^3", "=\\tfrac18", color=c1t, font_size=fs2).next_to(follows_1, DOWN, buff=0.2)
        f_1_2 = MathTex("f(3)=", "b^3", "=\\tfrac{1}{64}", color=c1t, font_size=fs2).move_to(f_1_1)
        follows_b = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f_1_2, DOWN, buff=0.2)
        sol_b = MathTex("b=", "\\tfrac14", color=c1t, font_size=fs2).next_to(follows_b, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
            text=self.translate("General.incorrect_1")+self.translate("Func_6_2.I35.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f_0_1")
            self.add_shift_sound(1)
            self.play(ball.animate.shift(5*UP), Write(follows_0), Write(f_0_1), run_time=1)

            self.wait_until_bookmark("f_0_2")
            self.play(TransformMatchingTex(f_0_1, f_0_2), run_time=1)

            self.wait_until_bookmark("f_0_3")
            self.play(TransformMatchingTex(func_tex, func_tex_a), run_time=1)

            self.wait_until_bookmark("f_0_4")
            self.play(Write(follows_a), Write(sol_a), run_time=1)

            self.wait_until_bookmark("reorganize")
            self.add_shift_sound(1)
            self.play(bounce_tex.animate.shift(upshift), Unwrite(follows_0), Unwrite(follows_a), Unwrite(sol_a), Unwrite(eight_meters), Unwrite(f_0_2), run_time=1)

            self.wait_until_bookmark("f_1_1")
            self.play(Write(follows_1), Write(f_1_1), run_time=1)

            self.wait_until_bookmark("f_1_2")
            self.play(TransformMatchingTex(f_1_1, f_1_2), run_time=1)

            self.wait_until_bookmark("final_sol")
            self.play(TransformMatchingTex(func_tex_a, func_tex_sol), Write(follows_b), Write(sol_b), run_time=1)

            self.wait_until_bookmark("clean_up")
            self.play(Unwrite(follows_a), Unwrite(follows_1), Unwrite(follows_b), Unwrite(bounce_tex), Unwrite(sol_b), Unwrite(f_1_2), func_tex_sol.animate.shift(func_tex_sol.get_y()*DOWN), run_time=1)

            self.wait_until_bookmark("frame")
            self.add_pencil_sound(1)
            self.play(Create(frame_sol), run_time=1)

        self.wait(4)

class Func_6_2_I_3_5_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        ball = ImageMobject(assets_folder / "img" / "ball.png")
        ball = ball.scale(2/ball.get_width()).move_to([0, 1, 0])
        original_height = self.translate("Func_6_2.I35.original-height")
        eight_meters = Tex(original_height, ": $8$m", color=c1t, font_size=fs2).set_y(2.4)

        func_tex = MathTex("f","(x)", "=", "a\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(ball, DOWN, buff=1)
        func_tex_a = MathTex("f","(x)", "=", "8\\cdot ", "b", "^x", color=c1t, font_size=fs2).move_to(func_tex)
        func_tex_sol = MathTex("f","(x)", "=", "8\\cdot ", "(\\tfrac{1}{4})", "^x", color=c1t, font_size=fs2).move_to(func_tex)
        frame_sol = SurroundingRectangle(func_tex_sol, buff=.2, corner_radius=.1, color=GREEN_E).set_y(0)
        three_bounces = self.translate("Func_6_2.I35.three-bounces")
        bounce_tex = Tex(three_bounces, "\\\\ $\\Rightarrow \\tfrac18$ m", color=c1t, font_size=fs2).next_to(func_tex, DOWN, buff=0.4)

        upshift = (eight_meters.get_top()-bounce_tex.get_top())*(0,1,0)

        self.add(ball, eight_meters, func_tex)

        follows_0 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(eight_meters, DOWN, buff=0.2)
        f_0_1 = MathTex("f(0)=", "a\\cdot b^0", "=8", color=c1t, font_size=fs2).next_to(follows_0, DOWN, buff=0.2)
        f_0_2 = MathTex("f(0)=", "a\\cdot 1", "=8", color=c1t, font_size=fs2).move_to(f_0_1)
        follows_a = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f_0_2, DOWN, buff=0.2)
        sol_a = MathTex("a=", "8", color=c1t, font_size=fs2).next_to(follows_a, DOWN, buff=0.2)

        follows_1 = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(bounce_tex, DOWN, buff=0.2).shift(upshift)
        f_1_1 = MathTex("f(3)=8\\cdot", "b^3", "=\\tfrac18", color=c1t, font_size=fs2).next_to(follows_1, DOWN, buff=0.2)
        f_1_2 = MathTex("f(3)=", "b^3", "=\\tfrac{1}{64}", color=c1t, font_size=fs2).move_to(f_1_1)
        follows_b = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(f_1_2, DOWN, buff=0.2)
        sol_b = MathTex("b=", "\\tfrac14", color=c1t, font_size=fs2).next_to(follows_b, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
            text=self.translate("General.incorrect_1")+self.translate("Func_6_2.I35.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f_0_1")
            self.add_shift_sound(1)
            self.play(ball.animate.shift(5*UP), Write(follows_0), Write(f_0_1), run_time=1)

            self.wait_until_bookmark("f_0_2")
            self.play(TransformMatchingTex(f_0_1, f_0_2), run_time=1)

            self.wait_until_bookmark("f_0_3")
            self.play(TransformMatchingTex(func_tex, func_tex_a), run_time=1)

            self.wait_until_bookmark("f_0_4")
            self.play(Write(follows_a), Write(sol_a), run_time=1)

            self.wait_until_bookmark("reorganize")
            self.add_shift_sound(1)
            self.play(bounce_tex.animate.shift(upshift), Unwrite(follows_0), Unwrite(follows_a), Unwrite(sol_a), Unwrite(eight_meters), Unwrite(f_0_2), run_time=1)

            self.wait_until_bookmark("f_1_1")
            self.play(Write(follows_1), Write(f_1_1), run_time=1)

            self.wait_until_bookmark("f_1_2")
            self.play(TransformMatchingTex(f_1_1, f_1_2), run_time=1)

            self.wait_until_bookmark("final_sol")
            self.play(TransformMatchingTex(func_tex_a, func_tex_sol), Write(follows_b), Write(sol_b), run_time=1)

            self.wait_until_bookmark("clean_up")
            self.play(Unwrite(follows_a), Unwrite(follows_1), Unwrite(follows_b), Unwrite(bounce_tex), Unwrite(sol_b), Unwrite(f_1_2), func_tex_sol.animate.shift(func_tex_sol.get_y()*DOWN), run_time=1)

            self.wait_until_bookmark("frame")
            self.add_pencil_sound(1)
            self.play(Create(frame_sol), run_time=1)

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_3_6_X(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        meerkat = ImageMobject(assets_folder / "img" / "meerkat_thumbs.png")
        meerkat = meerkat.scale(4/meerkat.get_width()).move_to([-5, .4, 0])

        func = MathTex("f(x)=", "a", "\\cdot ", "b", "^x", color=c1t, font_size=fs2).shift(UP*1.2)
        scaling_factor = self.translate("general.scaling_factor")
        a = Tex("a: ", scaling_factor, color=PURE_BLUE, font_size=fs2)
        growth_factor = self.translate("general.growth_factor")
        b = Tex("b: ", growth_factor, color=PINK, font_size=fs2)
        factors = VGroup(a,b).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(func, DOWN, buff=.5)

        cursor = AltCursor(idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
            text=self.translate("Func_6_2.I36.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f_in")
            self.play(Write(func))

            self.wait_until_bookmark("a")
            cursor.idle=False
            x,y,_ = func[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(a), func[1].animate.set_color(PURE_BLUE), run_time=.5)

            self.wait_until_bookmark("b")
            x,y,_ = func[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(b), func[3].animate.set_color(PINK), run_time=.5)
            self.wait(1)
            cursor.idle=True

            self.wait_until_bookmark("praise")
            self.add_shift_sound(.5)
            self.play(meerkat.animate.shift(5*RIGHT), Unwrite(func), Unwrite(a), Unwrite(b), run_time=.5)

        self.wait(4)


####################################################################################################################################################
# Chapter: Rules for exponential functions I - same base ###########################################################################################
#####################################
#####################################
class Func_6_2_I_4_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        justice = ImageMobject(assets_folder / "img" / "justice.png")
        justice = justice.scale(4/justice.get_width()).move_to([-5, 1, 0])

        rule_1 = Tex("$1$) ", "$a^x\\cdot a^y=a^{x+y}$", color=c1t, font_size=fs2)
        rule_2 = Tex("$2$) ", "$\\frac{a^x}{a^y}=a^{x-y}$", color=c1t, font_size=fs2)
        rule_3 = Tex("$3$) ", "$\\frac{1}{a^x}=a^{-x}$", color=c1t, font_size=fs2)
        rule_4 = Tex("$4$) ", "$(a^x)^y=a^{x\\cdot y}$", color=c1t, font_size=fs2)
        rules = VGroup(rule_1, rule_2, rule_3, rule_4).arrange(DOWN, buff=.4, aligned_edge=LEFT)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I41.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("rules_in")
            self.add_shift_sound(0.5)
            self.play(justice.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("rule_1")
            self.add_shift_sound(1)
            self.play(justice.animate.shift(5*RIGHT), Write(rule_1), run_time=1)

            self.wait_until_bookmark("rule_2")
            self.play(Write(rule_2), run_time=1)

            self.wait_until_bookmark("rule_3")
            self.play(Write(rule_3), run_time=1)

            self.wait_until_bookmark("rule_4")
            self.play(Write(rule_4), run_time=1)

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_4_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$4^{ab}$", "$\\left(4^{a}\\right)^b$", "$4^{a+b}$", "$4^{a}+4^b$"],
            correctAnswerIndex = 2,
            questionText=self.translate("Func_6_2.I42.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = Tex("$a^x\\cdot a^y=a^{x+y}$", color=c1t, font_size=fs1)
        step_1 = MathTex("a^x", "=", "\\underbrace{a\\cdot ... \\cdot a}_{x\\text{ times}}", color=c2t, font_size=fs2)
        step_2 = MathTex("a^y", "=", "\\underbrace{a\\cdot ... \\cdot a}_{y\\text{ times}}", color=c2t, font_size=fs2)
        step_3 = Tex("$\\Downarrow$", color=c2t, font_size=fs2)
        step_4 = MathTex("a^x", "\\cdot", "a^y", "=", "\\underbrace{a\\cdot ... \\cdot a}_{x\\text{ times}}", "\\cdot", "\\underbrace{a\\cdot ... \\cdot a}_{y\\text{ times}}", color=c2t, font_size=fs3)
        steps = VGroup(step_1, step_2, step_3, step_4).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-.2)
        step_5 = MathTex("a^x", "\\cdot", "a^y", "=", "\\underbrace{a\\cdot ... \\cdot a}_{\\text{$x+ y$ times}}", "", "", color=c2t, font_size=fs2).move_to(step_4)
        step_3.set_x(0)

        example = MathTex("4^a\\cdot 4^b=\\,\\,\\,\\,???", color=c1t, font_size=fs1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I42.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("rule")
            self.play(Write(rule), run_time=1)

            self.wait_until_bookmark("step_1")
            self.add_shift_sound(.5)
            self.play(rule.animate.shift(UP*2.6), Write(step_1), run_time=.5)

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2), run_time=1)

            self.wait_until_bookmark("step_3_0")
            self.play(Write(step_3), ReplacementTransform(step_1[0].copy(), step_4[0]), ReplacementTransform(step_2[0].copy(), step_4[2]), Write(step_4[1]), run_time=1)

            self.wait_until_bookmark("step_3_1")
            self.play(Write(step_4[3]), ReplacementTransform(step_1[2].copy(), step_4[4]), run_time=1)

            self.wait_until_bookmark("step_3_2")
            self.play(Write(step_4[5]), ReplacementTransform(step_2[2].copy(), step_4[6]), run_time=1)

            self.wait_until_bookmark("step_3_3")
            self.play(TransformMatchingTex(step_4, step_5), run_time=1)

            #self.play(Write(step_3), Write(step_4), run_time=1)

            self.wait_until_bookmark("clean")
            self.play(Unwrite(VGroup(step_1, step_2, step_3, step_5)), run_time=1)

            self.wait_until_bookmark("example_in")
            self.play(Write(example), run_time=1)

        self.wait(4)

class Func_6_2_I_4_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = Tex("$a^x\\cdot a^y=a^{x+y}$", color=c1t, font_size=fs1).set_y(2.6)
        step_1 = Tex("$4^a=\\underbrace{4\\cdot \\hdots \\cdot 4}_{\\text{$a$ times}}$", color=c2t, font_size=fs2)
        step_2 = Tex("$4^b=\\underbrace{4\\cdot \\hdots \\cdot 4}_{\\text{$b$ times}}$", color=c2t, font_size=fs2)
        step_3 = Tex("$\\Downarrow$", color=c2t, font_size=fs2)
        step_4 = Tex("$4^a\\cdot 4^b=\\underbrace{4\\cdot \\hdots \\cdot 4}_{\\text{$a+ b$ times}}=4^{a+b}$", color=c2t, font_size=fs2)
        steps = VGroup(step_1, step_2, step_3, step_4).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-.2).scale(.85)
        step_3.set_x(0)

        example = MathTex("4^a\\cdot 4^b=", "\\,\\,\\,\\,???", color=c1t, font_size=fs1)
        solution = MathTex("4^a\\cdot 4^b=", "4^{a+b}", color=c1t, font_size=fs1)

        self.add(example, rule)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_6_2.I42.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("equal")
            self.play(TransformMatchingTex(example, solution), run_time=1)

            self.wait_until_bookmark("step_1")
            self.play(Write(step_1), solution.animate.shift(2.6*UP), Unwrite(rule), run_time=1)

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2))

            self.wait_until_bookmark("step_3")
            self.play(Write(step_3), Write(step_4))

        self.wait(4)

class Func_6_2_I_4_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = Tex("$a^x\\cdot a^y=a^{x+y}$", color=c1t, font_size=fs1).set_y(2.6)
        step_1 = Tex("$4^a=\\underbrace{4\\cdot \\hdots \\cdot 4}_{\\text{$a$ times}}$", color=c2t, font_size=fs2)
        step_2 = Tex("$4^b=\\underbrace{4\\cdot \\hdots \\cdot 4}_{\\text{$b$ times}}$", color=c2t, font_size=fs2)
        step_3 = Tex("$\\Downarrow$", color=c2t, font_size=fs2)
        step_4 = Tex("$4^a\\cdot 4^b=\\underbrace{4\\cdot \\hdots \\cdot 4}_{\\text{$a+ b$ times}}=4^{a+b}$", color=c2t, font_size=fs2)
        steps = VGroup(step_1, step_2, step_3, step_4).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-.2).scale(.85)
        step_3.set_x(0)

        example = MathTex("4^a\\cdot 4^b=", "\\,\\,\\,\\,???", color=c1t, font_size=fs1)
        solution = MathTex("4^a\\cdot 4^b=", "4^{a+b}", color=c1t, font_size=fs1)

        self.add(example, rule)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_6_2.I42.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("equal")
            self.play(TransformMatchingTex(example, solution), run_time=1)

            self.wait_until_bookmark("step_1")
            self.play(Write(step_1), solution.animate.shift(2.6*UP), Unwrite(rule), run_time=1)

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2))

            self.wait_until_bookmark("step_3")
            self.play(Write(step_3), Write(step_4))

        self.wait(4)

class Func_6_2_I_4_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = Tex("$a^x\\cdot a^y=a^{x+y}$", color=c1t, font_size=fs1).set_y(2.6)
        step_1 = Tex("$4^a=\\underbrace{4\\cdot \\hdots \\cdot 4}_{\\text{$a$ times}}$", color=c2t, font_size=fs2)
        step_2 = Tex("$4^b=\\underbrace{4\\cdot \\hdots \\cdot 4}_{\\text{$b$ times}}$", color=c2t, font_size=fs2)
        step_3 = Tex("$\\Downarrow$", color=c2t, font_size=fs2)
        step_4 = Tex("$4^a\\cdot 4^b=\\underbrace{4\\cdot \\hdots \\cdot 4}_{\\text{$a+ b$ times}}=4^{a+b}$", color=c2t, font_size=fs2)
        steps = VGroup(step_1, step_2, step_3, step_4).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-.2).scale(.85)
        step_3.set_x(0)

        example = MathTex("4^a\\cdot 4^b=", "\\,\\,\\,\\,???", color=c1t, font_size=fs1)
        solution = MathTex("4^a\\cdot 4^b=", "4^{a+b}", color=c1t, font_size=fs1)

        self.add(example, rule)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_2")+self.translate("Func_6_2.I42.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("equal")
            self.play(TransformMatchingTex(example, solution), run_time=1)

            self.wait_until_bookmark("step_1")
            self.play(Write(step_1), solution.animate.shift(2.6*UP), Unwrite(rule), run_time=1)

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2))

            self.wait_until_bookmark("step_3")
            self.play(Write(step_3), Write(step_4))

        self.wait(4)

class Func_6_2_I_4_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = Tex("$a^x\\cdot a^y=a^{x+y}$", color=c1t, font_size=fs1).set_y(2.6)
        step_1 = Tex("$4^a=\\underbrace{4\\cdot \\hdots \\cdot 4}_{\\text{$a$ times}}$", color=c2t, font_size=fs2)
        step_2 = Tex("$4^b=\\underbrace{4\\cdot \\hdots \\cdot 4}_{\\text{$b$ times}}$", color=c2t, font_size=fs2)
        step_3 = Tex("$\\Downarrow$", color=c2t, font_size=fs2)
        step_4 = Tex("$4^a\\cdot 4^b=\\underbrace{4\\cdot \\hdots \\cdot 4}_{\\text{$a+ b$ times}}=4^{a+b}$", color=c2t, font_size=fs2)
        steps = VGroup(step_1, step_2, step_3, step_4).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-.2).scale(.85)
        step_3.set_x(0)

        example = MathTex("4^a\\cdot 4^b=", "\\,\\,\\,\\,???", color=c1t, font_size=fs1)
        solution = MathTex("4^a\\cdot 4^b=", "4^{a+b}", color=c1t, font_size=fs1)

        self.add(example, rule)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_6_2.I42.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("equal")
            self.play(TransformMatchingTex(example, solution), run_time=1)

            self.wait_until_bookmark("step_1")
            self.play(Write(step_1), solution.animate.shift(2.6*UP), Unwrite(rule), run_time=1)

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2))

            self.wait_until_bookmark("step_3")
            self.play(Write(step_3), Write(step_4))

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_4_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$3^{\\frac xy}$", "$3^{x-y}$", "$\\left({\\frac xy}\\right)^3$", "$3^{x+y}$"],
            correctAnswerIndex = 1,
            questionText=self.translate("Func_6_2.I43.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = Tex("$\\frac{a^x}{a^y}=a^{x-y}$", color=c1t, font_size=fs1)
        other_rule = Tex("$a^x\\cdot a^y=a^{x+y}$", color=c4t, font_size=fs1).set_y(-1)
        ud = Tex("$\\Updownarrow$", color=c1t, font_size=fs1)


        step_1 = MathTex("a^x", "=", "\\underbrace{a\\cdot ... \\cdot a}_{\\text{$x$ times}}", color=c2t, font_size=fs2)
        step_2 = MathTex("a^y", "=", "\\underbrace{a\\cdot ... \\cdot a}_{\\text{$y$ times}}", color=c2t, font_size=fs2)
        step_3 = MathTex("\\Downarrow", color=c2t, font_size=fs2)
        step_4 = MathTex("{{a^x}", "\\over", "{a^y}}", "=", "\\underbrace{a\\cdot ... \\cdot a}_{x\\text{ times}}", "/", "\\underbrace{a\\cdot ... \\cdot a}_{y\\text{ times}}", color=c2t, font_size=fs3)
        steps = VGroup(step_1, step_2, step_3, step_4).arrange(DOWN, buff=.2, aligned_edge=LEFT)
        step_5 = MathTex("{{a^x}", "\\over", "{a^y}}", "=", "\\underbrace{a\\cdot ... \\cdot a}_{x-y\\text{ times}}", "", "", color=c2t, font_size=fs2).move_to(step_4)
        step_3.set_x(0)

        example = MathTex("\\frac{3^x}{3^{y}}=\\,\\,\\,\\,???", color=c1t, font_size=fs1)

        cursor = AltCursor(idle=False)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I43.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("rule")
            self.play(Write(rule), run_time=1)

            self.wait_until_bookmark("other_rule")
            self.play(rule.animate.shift(UP), Write(other_rule), Write(ud))

            self.wait_until_bookmark("multiply")
            self.play(CursorUnderline(cursor, other_rule), run_time=.4)

            self.wait_until_bookmark("divide")
            self.play(CursorUnderline(cursor, rule), run_time=.4)

            self.wait_until_bookmark("clean_up_1")
            self.play(rule.animate.shift(UP*1.8), Unwrite(other_rule), Unwrite(ud), CursorMoveResize(cursor, 5, 0), run_time=1)

            self.wait_until_bookmark("step_1")
            self.play(Write(step_1), run_time=1)

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2), run_time=1)

            self.wait_until_bookmark("step_3_0")
            self.play(Write(step_3), ReplacementTransform(step_1[0].copy(), step_4[0]), ReplacementTransform(step_2[0].copy(), step_4[2]), Write(step_4[1]), run_time=1)

            self.wait_until_bookmark("step_3_1")
            self.play(Write(step_4[3]), ReplacementTransform(step_1[2].copy(), step_4[4]), run_time=1)

            self.wait_until_bookmark("step_3_2")
            self.play(Write(step_4[5]), ReplacementTransform(step_2[2].copy(), step_4[6]), run_time=1)

            self.wait_until_bookmark("step_3_3")
            self.play(TransformMatchingTex(step_4, step_5), run_time=1)

            self.wait_until_bookmark("clean_up_2")
            self.play(Unwrite(VGroup(step_1, step_2, step_3, step_5)), run_time=1)

            self.wait_until_bookmark("example_in")
            self.play(Write(example), run_time=1)

        self.wait(4)


class Func_6_2_I_4_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\frac{a^x}{a^y}","=","a^{x-y}", color=c1t, font_size=fs1).set_y(2.8)
        self.add(rule)

        example = MathTex("\\frac{3^x}{3^{y}}","=","\\,\\,\\,\\,???", color=c1t, font_size=fs1)
        solution = MathTex("\\frac{3^x}{3^{y}}","=","3^{x-y}", color=c1t, font_size=fs1)
        self.add(example)

        cursor = AltCursor(idle=False)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_6_2.I43.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("fraction")
            x,y,_ = rule[0].get_bottom()+0.3*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("subtract")
            x,y,_ = rule[2].get_bottom()+0.3*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("example_divide")
            x,y,_ = example[0].get_bottom()+0.3*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("solution")
            x,y,_ = solution[2].get_bottom()+0.3*DOWN
            self.play(TransformMatchingTex(example, solution), CursorMoveTo(cursor,x,y), run_time=1)
            cursor.idle=True

        self.wait(4)

class Func_6_2_I_4_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\frac{a^x}{a^y}","=","a^{x-y}", color=c1t, font_size=fs1).set_y(2.8)
        self.add(rule)

        example = MathTex("\\frac{3^x}{3^{y}}","=","\\,\\,\\,\\,???", color=c1t, font_size=fs1)
        solution = MathTex("\\frac{3^x}{3^{y}}","=","3^{x-y}", color=c1t, font_size=fs1)
        self.add(example)

        cursor = AltCursor(idle=False)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_5")+self.translate("Func_6_2.I43.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("fraction")
            x,y,_ = rule[0].get_bottom()+0.3*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("subtract")
            x,y,_ = rule[2].get_bottom()+0.3*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("example_divide")
            x,y,_ = example[0].get_bottom()+0.3*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("solution")
            x,y,_ = solution[2].get_bottom()+0.3*DOWN
            self.play(TransformMatchingTex(example, solution), CursorMoveTo(cursor,x,y), run_time=1)
            cursor.idle=True

        self.wait(4)

class Func_6_2_I_4_3_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\frac{a^x}{a^y}","=","a^{x-y}", color=c1t, font_size=fs1).set_y(2.8)
        self.add(rule)

        example = MathTex("\\frac{3^x}{3^{y}}","=","\\,\\,\\,\\,???", color=c1t, font_size=fs1)
        solution = MathTex("\\frac{3^x}{3^{y}}","=","3^{x-y}", color=c1t, font_size=fs1)
        self.add(example)

        cursor = AltCursor(idle=False)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_6_2.I43.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("fraction")
            x,y,_ = rule[0].get_bottom()+0.3*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("subtract")
            x,y,_ = rule[2].get_bottom()+0.3*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("example_divide")
            x,y,_ = example[0].get_bottom()+0.3*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("solution")
            x,y,_ = solution[2].get_bottom()+0.3*DOWN
            self.play(TransformMatchingTex(example, solution), CursorMoveTo(cursor,x,y), run_time=1)
            cursor.idle=True

        self.wait(4)

class Func_6_2_I_4_3_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\frac{a^x}{a^y}","=","a^{x-y}", color=c1t, font_size=fs1).set_y(2.8)
        self.add(rule)

        example = MathTex("\\frac{3^x}{3^{y}}","=","\\,\\,\\,\\,???", color=c1t, font_size=fs1)
        solution = MathTex("\\frac{3^x}{3^{y}}","=","3^{x-y}", color=c1t, font_size=fs1)
        self.add(example)

        cursor = AltCursor(idle=False)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_6_2.I43.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("fraction")
            x,y,_ = rule[0].get_bottom()+0.3*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("subtract")
            x,y,_ = rule[2].get_bottom()+0.3*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("example_divide")
            x,y,_ = example[0].get_bottom()+0.3*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.3)

            self.wait_until_bookmark("solution")
            x,y,_ = solution[2].get_bottom()+0.3*DOWN
            self.play(TransformMatchingTex(example, solution), CursorMoveTo(cursor,x,y), run_time=1)
            cursor.idle=True

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_4_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\left(\\frac{1}{2c}\\right)^{b}$", "$\\left(\\frac{1}{-2c}\\right)^{b}$", "$\\frac{-2c}{b}$","$\\left(\\frac{1}{b}\\right)^{2c}$"],
            correctAnswerIndex = 3,
            questionText=self.translate("Func_6_2.I44.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))
        
        other_rule = MathTex("{{{a", "^x", "}", "\\over", "{a", "^y", "}}}", "=a^{", "x", "-", "y", "}", color=c1t, font_size=fs2)
        ud_1 = Tex("$\\Downarrow$", "    $y=0$", color=c3t, font_size=fs2)
        ud_1[1].set_color(c3t)
        step_1 = MathTex("\\frac{a^0}{a^x}=a^{0-x}", color=c1t, font_size=fs2)
        ud_2 = Tex("$\\Downarrow$", color=c3t, font_size=fs2)
        rule = MathTex("\\frac{1}{a^x}=a^{-x}", color=c1t, font_size=fs2)
        steps = VGroup(other_rule, ud_1, step_1, ud_2, rule).arrange(DOWN, buff=.2)
        bug_help = MathTex("\\frac{a^x}{a^y}=a^{x-y}", color=c1t, font_size=fs2).move_to(other_rule)

        other_rule_alt = MathTex("{{{a", "^y", "}", "\\over", "{a", "^x", "}}}", "=a^{", "y", "-", "x", "}", color=c1t, font_size=fs2).move_to(other_rule)
        
        ud_1.shift(ud_1[0].get_x()*LEFT)
        example = MathTex("b^{-2\\cdot c}=\\,\\,\\,\\,???", color=c1t, font_size=fs2)

        cursor = AltCursor(idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I44.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("rule_in")
            cursor.idle=False
            x,y,_ = rule.get_center()+0.6*DOWN
            self.play(Write(rule), CursorMoveTo(cursor,x,y), run_time=1)

            self.wait_until_bookmark("other_rule")
            x,y,_ = other_rule.get_center()+0.6*DOWN
            self.play(Write(bug_help), CursorMoveTo(cursor,x,y), run_time=1)
            self.add(other_rule)
            self.remove(bug_help)
            cursor.idle=True

            self.wait_until_bookmark("switch")
            self.play(TransformMatchingTex(other_rule, other_rule_alt), run_time=3)

            self.wait_until_bookmark("step_one")
            x,y,_ = step_1.get_center()+0.6*DOWN
            cursor.idle=False
            self.play(Write(ud_1), Write(step_1), CursorMoveTo(cursor,x,y), run_time=1)

            self.wait_until_bookmark("rule")
            x,y,_ = rule.get_center()+0.6*DOWN
            self.play(Write(ud_2), CursorMoveTo(cursor,x,y), run_time=1)
            cursor.idle=True

            self.wait_until_bookmark("clean_up")
            self.add_shift_sound(0.6)
            self.play(Unwrite(other_rule_alt), Unwrite(ud_1), Unwrite(ud_2), Unwrite(step_1), rule.animate.shift(4*UP), run_time=.6)

            self.wait_until_bookmark("example_in")
            x,y,_ = example.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(example), CursorMoveTo(cursor,x,y), run_time=1)
            cursor.idle=True

        self.wait(4)


class Func_6_2_I_4_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\frac{1}{a^x}=a^{-x}", color=c1t, font_size=fs2).set_y(2.5)

        example = MathTex("b^{-2\\cdot c}=\\,\\,\\,\\,","???", color=c1t, font_size=fs2)
        example_1 = MathTex("b^{-2\\cdot c}=\\,\\,\\,\\,","\\frac{1}{b^\\Box}", color=c1t, font_size=fs2)
        example_2 = MathTex("b^{-2\\cdot c}=\\,\\,\\,\\,","\\frac{1}{b^{2\\cdot c}}", color=c1t, font_size=fs2)

        self.add(rule, example)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_6_2.I44.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("example_1")
            self.play(TransformMatchingTex(example, example_1), run_time=1)

            self.wait_until_bookmark("example_2")
            self.play(TransformMatchingTex(example_1, example_2), run_time=1)

        self.wait(4)

class Func_6_2_I_4_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\frac{1}{a^x}=a^{-x}", color=c1t, font_size=fs2).set_y(2.5)

        example = MathTex("b^{-2\\cdot c}=\\,\\,\\,\\,","???", color=c1t, font_size=fs2)
        example_1 = MathTex("b^{-2\\cdot c}=\\,\\,\\,\\,","\\frac{1}{b^\\Box}", color=c1t, font_size=fs2)
        example_2 = MathTex("b^{-2\\cdot c}=\\,\\,\\,\\,","\\frac{1}{b^{2\\cdot c}}", color=c1t, font_size=fs2)

        self.add(rule, example)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_6_2.I44.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("example_1")
            self.play(TransformMatchingTex(example, example_1), run_time=1)

            self.wait_until_bookmark("example_2")
            self.play(TransformMatchingTex(example_1, example_2), run_time=1)

        self.wait(4)

class Func_6_2_I_4_4_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\frac{1}{a^x}=a^{-x}", color=c1t, font_size=fs2).set_y(2.5)

        example = MathTex("b^{-2\\cdot c}=\\,\\,\\,\\,","???", color=c1t, font_size=fs2)
        example_1 = MathTex("b^{-2\\cdot c}=\\,\\,\\,\\,","\\frac{1}{b^\\Box}", color=c1t, font_size=fs2)
        example_2 = MathTex("b^{-2\\cdot c}=\\,\\,\\,\\,","\\frac{1}{b^{2\\cdot c}}", color=c1t, font_size=fs2)

        self.add(rule, example)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_6_2.I44.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("example_1")
            self.play(TransformMatchingTex(example, example_1), run_time=1)

            self.wait_until_bookmark("example_2")
            self.play(TransformMatchingTex(example_1, example_2), run_time=1)

        self.wait(4)

class Func_6_2_I_4_4_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\frac{1}{a^x}=a^{-x}", color=c1t, font_size=fs2).set_y(2.5)

        example = MathTex("b^{-2\\cdot c}=\\,\\,\\,\\,","???", color=c1t, font_size=fs2)
        example_1 = MathTex("b^{-2\\cdot c}=\\,\\,\\,\\,","\\frac{1}{b^\\Box}", color=c1t, font_size=fs2)
        example_2 = MathTex("b^{-2\\cdot c}=\\,\\,\\,\\,","\\frac{1}{b^{2\\cdot c}}", color=c1t, font_size=fs2)

        self.add(rule, example)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_1")+self.translate("Func_6_2.I44.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("example_1")
            self.play(TransformMatchingTex(example, example_1), run_time=1)

            self.wait_until_bookmark("example_2")
            self.play(TransformMatchingTex(example_1, example_2), run_time=1)

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_4_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$4^{\\left((2a)^{2b}\\right)}$", "$4^{2a+2b}$", "$4^{2ab}$", "$4^{4ab}$"],
            correctAnswerIndex = 3,
            questionText=self.translate("Func_6_2.I45.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("(a^x)^y","=","a^{x\\cdot y}", color=c1t, font_size=fs2)
        step_1 = MathTex("a^x","=\\underbrace{a\\cdot ... \\cdot a}_{\\text{$x$ times}}", color=c2t, font_size=fs2)
        step_2 = MathTex("(a^x)^y","=","\\underbrace{a^x\\cdot ... \\cdot a^x}_{\\text{$y$ times}}", color=c2t, font_size=fs2)
        step_3 = MathTex("\\Downarrow", color=c2t, font_size=fs2)
        step_4 = MathTex("(a^x)^y","=","\\underbrace{a\\cdot ... \\cdot a}_{\\text{$x\\cdot y$ times}}", color=c2t, font_size=fs2)
        steps = VGroup(step_1, step_2, step_3, step_4).arrange(DOWN, buff=.4).set_y(-.2)
        step_3.set_x(0)

        step_2.shift(step_1[1].get_x()-step_2[1].get_x()*LEFT)
        step_4.shift(step_1[1].get_x()-step_4[1].get_x()*LEFT)

        example = MathTex("\\left(4^{2a}\\right)^{2b}=\\,\\,\\,\\,???", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I45.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("rule")
            self.play(Write(rule), run_time=1)

            self.wait_until_bookmark("step_1")
            self.add_shift_sound(.5)
            self.play(rule.animate.shift(UP*2.6), Write(step_1), run_time=.5)

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2), run_time=1)

            self.wait_until_bookmark("step_3")
            self.play(Write(step_3), Write(step_4), run_time=1)

            self.wait_until_bookmark("clean")
            self.play(Unwrite(steps), run_time=1)

            self.wait_until_bookmark("example_in")
            self.play(Write(example), run_time=1)

        self.wait(4)


class Func_6_2_I_4_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("(a^x)^y","=","a^{x\\cdot y}", color=c1t, font_size=fs2).set_y(2.6)
        example = MathTex("(4^{2a})^{2b}=","\\,\\,\\,\\,???", color=c1t, font_size=fs2)
        example_1 = MathTex("(4^{2a})^{2b}=","4^{2a\\cdot2b}", color=c1t, font_size=fs2)
        example_2 = MathTex("(4^{2a})^{2b}=","4^{4ab}", color=c1t, font_size=fs2)

        self.add(rule, example)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_2.I45.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("example_1")
            self.play(TransformMatchingTex(example, example_1), run_time=1)

            self.wait_until_bookmark("example_2")
            self.play(TransformMatchingTex(example_1, example_2), run_time=1)

        self.wait(4)

class Func_6_2_I_4_5_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("(a^x)^y","=","a^{x\\cdot y}", color=c1t, font_size=fs2).set_y(2.6)
        example = MathTex("(4^{2a})^{2b}=","\\,\\,\\,\\,???", color=c1t, font_size=fs2)
        example_1 = MathTex("(4^{2a})^{2b}=","4^{2a\\cdot2b}", color=c1t, font_size=fs2)
        example_2 = MathTex("(4^{2a})^{2b}=","4^{4ab}", color=c1t, font_size=fs2)

        self.add(rule, example)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_2.I45.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("example_1")
            self.play(TransformMatchingTex(example, example_1), run_time=1)

            self.wait_until_bookmark("example_2")
            self.play(TransformMatchingTex(example_1, example_2), run_time=1)

        self.wait(4)

class Func_6_2_I_4_5_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("(a^x)^y","=","a^{x\\cdot y}", color=c1t, font_size=fs2).set_y(2.6)
        example = MathTex("(4^{2a})^{2b}=","\\,\\,\\,\\,???", color=c1t, font_size=fs2)
        example_1 = MathTex("(4^{2a})^{2b}=","4^{2a\\cdot2b}", color=c1t, font_size=fs2)
        example_2 = MathTex("(4^{2a})^{2b}=","4^{4ab}", color=c1t, font_size=fs2)

        self.add(rule, example)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_2.I45.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("example_1")
            self.play(TransformMatchingTex(example, example_1), run_time=1)

            self.wait_until_bookmark("example_2")
            self.play(TransformMatchingTex(example_1, example_2), run_time=1)

        self.wait(4)

class Func_6_2_I_4_5_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("(a^x)^y","=","a^{x\\cdot y}", color=c1t, font_size=fs2).set_y(2.6)
        example = MathTex("(4^{2a})^{2b}=","\\,\\,\\,\\,???", color=c1t, font_size=fs2)
        example_1 = MathTex("(4^{2a})^{2b}=","4^{2a\\cdot2b}", color=c1t, font_size=fs2)
        example_2 = MathTex("(4^{2a})^{2b}=","4^{4ab}", color=c1t, font_size=fs2)

        self.add(rule, example)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_1")+self.translate("Func_6_2.I45.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("example_1")
            self.play(TransformMatchingTex(example, example_1), run_time=1)

            self.wait_until_bookmark("example_2")
            self.play(TransformMatchingTex(example_1, example_2), run_time=1)

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_4_6_X(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        impala = ImageMobject(assets_folder / "img" / "impala_thumbs.png")
        impala = impala.scale(4/impala.get_width()).move_to([-5, 1, 0])

        rule_1 = Tex("$1$) ", "$a^x\\cdot a^y=a^{x+y}$", color=c1t, font_size=fs2)
        rule_2 = Tex("$2$) ", "$\\frac{a^x}{a^y}=a^{x-y}$", color=c1t, font_size=fs2)
        rule_3 = Tex("$3$) ", "$\\frac{1}{a^x}=a^{-x}$", color=c1t, font_size=fs2)
        rule_4 = Tex("$4$) ", "$(a^x)^y=a^{x\\cdot y}$", color=c1t, font_size=fs2)
        rules = VGroup(rule_1, rule_2, rule_3, rule_4).arrange(DOWN, buff=.4, aligned_edge=LEFT)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I46.voiceover")
        ) as tracker:

            self.wait_until_bookmark("rule_1")
            self.play(Write(rule_1), run_time=1)

            self.wait_until_bookmark("rule_2")
            self.play(Write(rule_2), run_time=1)

            self.wait_until_bookmark("rule_3")
            self.play(Write(rule_3), run_time=1)

            self.wait_until_bookmark("rule_4")
            self.play(Write(rule_4), run_time=1)

            self.wait_until_bookmark("antilope_in")
            self.add_shift_sound(0.5)
            self.play(impala.animate.shift(5*RIGHT), Unwrite(rule_1), Unwrite(rule_2), Unwrite(rule_3), Unwrite(rule_4), run_time=0.5)

        self.add_shift_sound(0.5)
        self.play(impala.animate.shift(5*RIGHT), run_time=0.5)
        self.wait(4)

####################################################################################################################################################
# Chapter: Rules for exponential functions II - different base #####################################################################################
#####################################
#####################################
class Func_6_2_I_5_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule_stone = ImageMobject(assets_folder / "img" / "rules_block.png")
        rule_stone = rule_stone.scale(4/rule_stone.get_width()).move_to([-5, 1, 0])

        rule_1 = Tex("$1$) ", "$\\left(\\frac ab\\right)^x=\\frac{a^x}{b^x}$", color=c1t, font_size=fs2)
        rule_2 = Tex("$2$) ", "$\\left(\\frac1a\\right)^x=\\frac1{a^x}$", color=c1t, font_size=fs2)
        rule_3 = Tex("$3$) ", "$(ab)^x=a^xb^x$", color=c1t, font_size=fs2)
        rule_4 = Tex("$4$) ", "$\\left(\\frac ab\\right)^{-x}=\\left(\\frac ba\\right)^x$", color=c1t, font_size=fs2)
        rules = VGroup(rule_1, rule_2, rule_3, rule_4).arrange(DOWN, buff=.4, aligned_edge=LEFT)



        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I51.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("rules_in")
            self.add_shift_sound(0.5)
            self.play(rule_stone.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("rule_1")
            self.add_shift_sound(1)
            self.play(rule_stone.animate.shift(5*RIGHT), Write(rule_1), run_time=1)

            self.wait_until_bookmark("rule_2")
            self.play(Write(rule_2), run_time=1)

            self.wait_until_bookmark("rule_3")
            self.play(Write(rule_3), run_time=1)

            self.wait_until_bookmark("rule_4")
            self.play(Write(rule_4), run_time=1)

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_5_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\frac{x^{2}}{y^{a}}$", "$\\frac{y^{2a}}{x^{2a}}$", "$\\frac{x^{2a}}{y^{2a}}$", "$x^{\\frac{y}{2a}}$"],
            correctAnswerIndex = 2,
            questionText=self.translate("Func_6_2.I52.q.question-text")
        )

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\left(\\frac ab\\right)^x=\\frac{a^x}{b^x}", color=c1t, font_size=fs2)
        step_1 = MathTex("\\left(\\frac ab\\right)^x","=","\\underbrace{\\frac ab\\cdot ... \\cdot \\frac ab}_{\\text{$x$ times}}", color=c2t, font_size=fs2)
        step_2 = MathTex("\\left(\\frac ab\\right)^x","=","\\frac{\\underbrace{a\\cdot ... \\cdot a}_{\\text{$x$ times}}}{\\underbrace{b\\cdot ... \\cdot b}_{\\text{$x$ times}}}", color=c2t, font_size=fs2)
        step_3 = MathTex("\\left(\\frac ab\\right)^x","=","\\frac{a^x}{b^x}", color=GREEN_D, font_size=fs2)
        
        example = MathTex("\\left(\\frac xy\\right)^{2a}=\\,\\,\\,\\,???", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I52.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("rule")
            self.play(Write(rule), run_time=1)

            self.wait_until_bookmark("step_1")
            self.add_shift_sound(.5)
            self.play(rule.animate.shift(UP*2.6), Write(step_1), run_time=.5)

            self.wait_until_bookmark("step_2")
            self.play(TransformMatchingTex(step_1, step_2), run_time=1)

            self.wait_until_bookmark("step_3")
            self.play(TransformMatchingTex(step_2, step_3), run_time=1)

            self.wait_until_bookmark("clean")
            self.play(Unwrite(step_3), run_time=1)

            self.wait_until_bookmark("example_in")
            self.play(Write(example), run_time=1)

        self.wait(4)


class Func_6_2_I_5_2_a(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\left(\\frac ab\\right)^x=\\frac{a^x}{b^x}", color=c1t, font_size=fs2).set_y(2.6)
        self.add(rule)
        
        example = MathTex("\\left(\\frac xy\\right)^{2a}=","\\,\\,\\,\\,???", color=c1t, font_size=fs2)
        self.add(example)
        solution = MathTex("\\left(\\frac xy\\right)^{2a}=","\\frac{x^{2a}}{y^{2a}}", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_6_2.I52.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("solution")
            self.play(TransformMatchingTex(example, solution), run_time=1)

        self.wait(4)

class Func_6_2_I_5_2_b(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\left(\\frac ab\\right)^x=\\frac{a^x}{b^x}", color=c1t, font_size=fs2).set_y(2.6)
        self.add(rule)
        
        example = MathTex("\\left(\\frac xy\\right)^{2a}=","\\,\\,\\,\\,???", color=c1t, font_size=fs2)
        self.add(example)
        solution = MathTex("\\left(\\frac xy\\right)^{2a}=","\\frac{x^{2a}}{y^{2a}}", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_6_2.I52.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("solution")
            self.play(TransformMatchingTex(example, solution), run_time=1)

        self.wait(4)

class Func_6_2_I_5_2_c(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\left(\\frac ab\\right)^x=\\frac{a^x}{b^x}", color=c1t, font_size=fs2).set_y(2.6)
        self.add(rule)
        
        example = MathTex("\\left(\\frac xy\\right)^{2a}=","\\,\\,\\,\\,???", color=c1t, font_size=fs2)
        self.add(example)
        solution = MathTex("\\left(\\frac xy\\right)^{2a}=","\\frac{x^{2a}}{y^{2a}}", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_2")+self.translate("Func_6_2.I52.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("solution")
            self.play(TransformMatchingTex(example, solution), run_time=1)

        self.wait(4)

class Func_6_2_I_5_2_d(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\left(\\frac ab\\right)^x=\\frac{a^x}{b^x}", color=c1t, font_size=fs2).set_y(2.6)
        self.add(rule)
        
        example = MathTex("\\left(\\frac xy\\right)^{2a}=","\\,\\,\\,\\,???", color=c1t, font_size=fs2)
        self.add(example)
        solution = MathTex("\\left(\\frac xy\\right)^{2a}=","\\frac{x^{2a}}{y^{2a}}", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_6_2.I52.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("solution")
            self.play(TransformMatchingTex(example, solution), run_time=1)

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_5_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\left(\\frac ab\\right)^x=\\frac{a^x}{b^x}$", "$\\left(\\frac ab\\right)^{-x}=\\left(\\frac ba\\right)^{x}$", "$a^xb^x=\\left(ab\\right)^x$", "$\\left(\\frac ab\\right)^x=\\frac{a}{b^x}$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_2.I53.q.question-text")
        )

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\left(\\frac1a\\right)^x","=\\frac1{a^x}", color=c1t, font_size=fs2)
        step_1 = MathTex("\\left(\\frac1a\\right)^x","=","\\underbrace{\\frac1a\\cdot ... \\cdot \\frac1a}_{\\text{$x$ times}}", color=c2t, font_size=fs2)
        step_2 = MathTex("\\left(\\frac1a\\right)^x","=","\\frac{\\underbrace{1\\cdot ... \\cdot 1}_{\\text{$x$ times}}}{\\underbrace{a\\cdot ... \\cdot a}_{\\text{$x$ times}}}", color=c2t, font_size=fs2)
        step_3 = MathTex("\\left(\\frac1a\\right)^x","=","\\frac1{a^x}", color=GREEN_D, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I53.q.voiceover")
        ) as tracker:

            self.wait_until_bookmark("situation")
            self.play(Write(rule[0]), run_time=1)
            
            self.wait_until_bookmark("rule")
            self.play(Write(rule[1]), run_time=1)

            self.wait_until_bookmark("step_1")
            self.add_shift_sound(.5)
            self.play(rule.animate.shift(UP*2.6), Write(step_1), run_time=.5)

            self.wait_until_bookmark("step_2")
            self.play(TransformMatchingTex(step_1, step_2), run_time=1)

            self.wait_until_bookmark("step_3")
            self.play(TransformMatchingTex(step_2, step_3), run_time=1)

            self.wait_until_bookmark("clean")
            self.play(Unwrite(step_3), run_time=1)

        self.wait(4)


class Func_6_2_I_5_3_a(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule_1 = MathTex("\\left(\\frac ab\\right)^x","=\\frac{a^x}{b^x}", color=c1t, font_size=fs2)
        rule_1_alt = MathTex("\\left(\\frac ba\\right)^x","=\\frac{b^x}{a^x}", color=c1t, font_size=fs2)
        downarrow_1 = Tex("$\\Downarrow$", " $b=1$", color=c2t, font_size=fs2)
        rule_2 = MathTex("\\left(\\frac 1a\\right)^x","=\\frac{1^x}{a^x}", color=c1t, font_size=fs2)
        rule_2_alt = MathTex("\\left(\\frac 1a\\right)^x","=\\frac{1}{a^x}", color=c1t, font_size=fs2)
        steps = VGroup(VGroup(rule_1, rule_1_alt), downarrow_1, VGroup(rule_2, rule_2_alt)).arrange(DOWN, buff=.4)        

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_6_2.I53.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("rule_1")
            self.play(Write(rule_1), run_time=1)

            self.wait_until_bookmark("rule_1_alt")
            self.play(ReplacementTransform(rule_1, rule_1_alt), run_time=1)

            self.wait_until_bookmark("downarrow_1")
            self.play(Write(downarrow_1), run_time=1)

            self.wait_until_bookmark("rule_2")
            self.play(Write(rule_2), run_time=1)

            self.wait_until_bookmark("rule_2_alt")
            self.play(ReplacementTransform(rule_2, rule_2_alt), run_time=1)

        self.wait(4)

class Func_6_2_I_5_3_b(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule_1 = MathTex("\\left(\\frac ab\\right)^x","=\\frac{a^x}{b^x}", color=c1t, font_size=fs2)
        rule_1_alt = MathTex("\\left(\\frac ba\\right)^x","=\\frac{b^x}{a^x}", color=c1t, font_size=fs2)
        downarrow_1 = Tex("$\\Downarrow$", " $b=1$", color=c2t, font_size=fs2)
        rule_2 = MathTex("\\left(\\frac 1a\\right)^x","=\\frac{1^x}{a^x}", color=c1t, font_size=fs2)
        rule_2_alt = MathTex("\\left(\\frac 1a\\right)^x","=\\frac{1}{a^x}", color=c1t, font_size=fs2)
        steps = VGroup(VGroup(rule_1, rule_1_alt), downarrow_1, VGroup(rule_2, rule_2_alt)).arrange(DOWN, buff=.4)        

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_6_2.I53.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("rule_1")
            self.play(Write(rule_1), run_time=1)

            self.wait_until_bookmark("rule_1_alt")
            self.play(ReplacementTransform(rule_1, rule_1_alt), run_time=1)

            self.wait_until_bookmark("downarrow_1")
            self.play(Write(downarrow_1), run_time=1)

            self.wait_until_bookmark("rule_2")
            self.play(Write(rule_2), run_time=1)

            self.wait_until_bookmark("rule_2_alt")
            self.play(ReplacementTransform(rule_2, rule_2_alt), run_time=1)

        self.wait(4)

class Func_6_2_I_5_3_c(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule_1 = MathTex("\\left(\\frac ab\\right)^x","=\\frac{a^x}{b^x}", color=c1t, font_size=fs2)
        rule_1_alt = MathTex("\\left(\\frac ba\\right)^x","=\\frac{b^x}{a^x}", color=c1t, font_size=fs2)
        downarrow_1 = Tex("$\\Downarrow$", " $b=1$", color=c2t, font_size=fs2)
        rule_2 = MathTex("\\left(\\frac 1a\\right)^x","=\\frac{1^x}{a^x}", color=c1t, font_size=fs2)
        rule_2_alt = MathTex("\\left(\\frac 1a\\right)^x","=\\frac{1}{a^x}", color=c1t, font_size=fs2)
        steps = VGroup(VGroup(rule_1, rule_1_alt), downarrow_1, VGroup(rule_2, rule_2_alt)).arrange(DOWN, buff=.4)        

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_6_2.I53.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("rule_1")
            self.play(Write(rule_1), run_time=1)

            self.wait_until_bookmark("rule_1_alt")
            self.play(ReplacementTransform(rule_1, rule_1_alt), run_time=1)

            self.wait_until_bookmark("downarrow_1")
            self.play(Write(downarrow_1), run_time=1)

            self.wait_until_bookmark("rule_2")
            self.play(Write(rule_2), run_time=1)

            self.wait_until_bookmark("rule_2_alt")
            self.play(ReplacementTransform(rule_2, rule_2_alt), run_time=1)

        self.wait(4)

class Func_6_2_I_5_3_d(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule_1 = MathTex("\\left(\\frac ab\\right)^x","=\\frac{a^x}{b^x}", color=c1t, font_size=fs2)
        rule_1_alt = MathTex("\\left(\\frac ba\\right)^x","=\\frac{b^x}{a^x}", color=c1t, font_size=fs2)
        downarrow_1 = Tex("$\\Downarrow$", " $b=1$", color=c2t, font_size=fs2)
        rule_2 = MathTex("\\left(\\frac 1a\\right)^x","=\\frac{1^x}{a^x}", color=c1t, font_size=fs2)
        rule_2_alt = MathTex("\\left(\\frac 1a\\right)^x","=\\frac{1}{a^x}", color=c1t, font_size=fs2)
        steps = VGroup(VGroup(rule_1, rule_1_alt), downarrow_1, VGroup(rule_2, rule_2_alt)).arrange(DOWN, buff=.4)        

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_6_2.I53.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("rule_1")
            self.play(Write(rule_1), run_time=1)

            self.wait_until_bookmark("rule_1_alt")
            self.play(ReplacementTransform(rule_1, rule_1_alt), run_time=1)

            self.wait_until_bookmark("downarrow_1")
            self.play(Write(downarrow_1), run_time=1)

            self.wait_until_bookmark("rule_2")
            self.play(Write(rule_2), run_time=1)

            self.wait_until_bookmark("rule_2_alt")
            self.play(ReplacementTransform(rule_2, rule_2_alt), run_time=1)

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_5_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\left(3\\right)^{ax}$", "$3^xa^x$", "$3a^x$", "$3^x+a^x$"],
            correctAnswerIndex = 1,
            questionText=self.translate("Func_6_2.I54.q.question-text")
        )

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\left(ab\\right)^x=a^xb^x", color=c1t, font_size=fs2)
        down_1 = MathTex("\\Downarrow", color=c2t, font_size=fs2)
        step_1 = MathTex("\\left(ab\\right)^x","=","\\underbrace{ab\\cdot ... \\cdot ab}_{\\text{$x$ times}}", color=c2t, font_size=fs2)
        down_2 = MathTex("\\Downarrow", color=c2t, font_size=fs2)
        step_2 = MathTex("\\left(ab\\right)^x","=","\\underbrace{a\\cdot ... \\cdot a}_{\\text{$x$ times}}\\underbrace{b\\cdot ... \\cdot b}_{\\text{$x$ times}}", color=c2t, font_size=fs2)
        down_3 = MathTex("\\Downarrow", color=c2t, font_size=fs2)
        step_3 = MathTex("\\left(ab\\right)^x=a^xb^x", color=c1t, font_size=fs2)
        
        example = MathTex("\\left(3a\\right)^x=\\,\\,\\,\\,???", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I54.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("rule")
            self.play(Write(rule), run_time=1)

            self.wait_until_bookmark("step_1")
            self.add_shift_sound(.5)
            self.play(rule.animate.shift(UP*2.6), Write(step_1), run_time=.5)

            self.wait_until_bookmark("step_2")
            self.play(TransformMatchingTex(step_1, step_2), run_time=1)

            self.wait_until_bookmark("step_3")
            self.play(TransformMatchingTex(step_2, step_3), run_time=1)

            self.wait_until_bookmark("clean")
            self.play(Unwrite(step_3), run_time=1)

            self.wait_until_bookmark("example_in")
            self.play(Write(example), run_time=1)

        self.wait(4)

class Func_6_2_I_5_4_a(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\left(ab\\right)^x=a^xb^x", color=c1t, font_size=fs2).set_y(2.6)
        
        example = MathTex("\\left(3a\\right)^x=\\,\\,\\,\\,???", color=c1t, font_size=fs2)
        solution = MathTex("\\left(3a\\right)^x=3^xa^x", color=c1t, font_size=fs2)

        self.add(rule, example)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_6_2.I54.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("solution")
            self.play(TransformMatchingTex(example, solution), run_time=1)

        self.wait(4)

class Func_6_2_I_5_4_b(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\left(ab\\right)^x=a^xb^x", color=c1t, font_size=fs2).set_y(2.6)
        
        example = MathTex("\\left(3a\\right)^x=\\,\\,\\,\\,???", color=c1t, font_size=fs2)
        solution = MathTex("\\left(3a\\right)^x=3^xa^x", color=c1t, font_size=fs2)

        self.add(rule, example)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_4")+self.translate("Func_6_2.I54.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("solution")
            self.play(TransformMatchingTex(example, solution), run_time=1)

        self.wait(4)

class Func_6_2_I_5_4_c(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\left(ab\\right)^x=a^xb^x", color=c1t, font_size=fs2).set_y(2.6)
        
        example = MathTex("\\left(3a\\right)^x=\\,\\,\\,\\,???", color=c1t, font_size=fs2)
        solution = MathTex("\\left(3a\\right)^x=3^xa^x", color=c1t, font_size=fs2)

        self.add(rule, example)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_6_2.I54.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("solution")
            self.play(TransformMatchingTex(example, solution), run_time=1)

        self.wait(4)

class Func_6_2_I_5_4_d(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\left(ab\\right)^x=a^xb^x", color=c1t, font_size=fs2).set_y(2.6)
        
        example = MathTex("\\left(3a\\right)^x=\\,\\,\\,\\,???", color=c1t, font_size=fs2)
        solution = MathTex("\\left(3a\\right)^x=3^xa^x", color=c1t, font_size=fs2)

        self.add(rule, example)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_6_2.I54.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("solution")
            self.play(TransformMatchingTex(example, solution), run_time=1)

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_5_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\Big(\\frac ba\\Big)^{2}$", "$\\frac{a^2}{b^2}$", "$\\Big(\\frac ba\\Big)^{-2}$", "$\\frac{b^{-2}}{a^2}$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_2.I55.q.question-text")
        )

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        start = MathTex("a^{-x}=\\frac1{a^x}", color=c1t, font_size=fs2)
        down_1 = MathTex("\\Downarrow", color=c2t, font_size=fs2)
        step_1 = MathTex("\\Big(\\frac ab\\Big)^{-x}","=","\\frac1{\\left(\\frac ab\\right)^x}", color=c2t, font_size=fs2)
        down_2 = MathTex("\\Downarrow", color=c2t, font_size=fs2)
        rule = MathTex("\\Big(\\frac ab\\Big)^{-x}=\\Big(\\frac ba\\Big)^{x}", color=c1t, font_size=fs2)
        steps = VGroup(start, down_1, step_1, down_2, rule).arrange(DOWN, buff=.4)
        rule.shift(2.4*UP)
        
        example = MathTex("\\Big(\\frac ab\\Big)^{-2}","=\\,\\,\\,\\,???", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I55.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("rule")
            self.play(Write(rule), run_time=1)

            self.wait_until_bookmark("start")
            self.play(Write(start),rule.animate.shift(DOWN*2.4), run_time=1)
            
            self.wait_until_bookmark("step_1")
            self.play(Write(down_1), Write(step_1), run_time=1)

            self.wait_until_bookmark("step_2")
            self.play(Write(down_2), run_time=1)

            self.wait_until_bookmark("clean_up")
            rule_2 = rule.copy()
            self.add(rule_2)
            self.play(Unwrite(steps), rule_2.animate.shift(UP*2), run_time=1)

            self.wait_until_bookmark("example")
            self.play(Write(example), rule_2.animate.shift(UP*2), run_time=1)

        self.wait(4)

class Func_6_2_I_5_5_a(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\Big(\\frac ab\\Big)^{-x}=\\Big(\\frac ba\\Big)^{x}", color=c1t, font_size=fs2).set_y(2.4)
            
        example = MathTex("\\Big(\\frac ab\\Big)^{-2}","=\\,\\,\\,\\,???", color=c1t, font_size=fs2)
        solution = MathTex("\\Big(\\frac ab\\Big)^{-2}","=","\\Big(\\frac ba\\Big)^{2}", color=c1t, font_size=fs2)
        self.add(rule, example)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_6")+self.translate("Func_6_2.I55.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("solution")
            self.play(ReplacementTransform(example, solution), run_time=1)

        self.wait(4)

class Func_6_2_I_5_5_b(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\Big(\\frac ab\\Big)^{-x}=\\Big(\\frac ba\\Big)^{x}", color=c1t, font_size=fs2).set_y(2.4)
            
        example = MathTex("\\Big(\\frac ab\\Big)^{-2}","=\\,\\,\\,\\,???", color=c1t, font_size=fs2)
        solution = MathTex("\\Big(\\frac ab\\Big)^{-2}","=","\\Big(\\frac ba\\Big)^{2}", color=c1t, font_size=fs2)
        self.add(rule, example)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6")+self.translate("Func_6_2.I55.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("solution")
            self.play(ReplacementTransform(example, solution), run_time=1)

        self.wait(4)

class Func_6_2_I_5_5_c(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\Big(\\frac ab\\Big)^{-x}=\\Big(\\frac ba\\Big)^{x}", color=c1t, font_size=fs2).set_y(2.4)
            
        example = MathTex("\\Big(\\frac ab\\Big)^{-2}","=\\,\\,\\,\\,???", color=c1t, font_size=fs2)
        solution = MathTex("\\Big(\\frac ab\\Big)^{-2}","=","\\Big(\\frac ba\\Big)^{2}", color=c1t, font_size=fs2)
        self.add(rule, example)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6")+self.translate("Func_6_2.I55.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("solution")
            self.play(ReplacementTransform(example, solution), run_time=1)

        self.wait(4)

class Func_6_2_I_5_5_d(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        rule = MathTex("\\Big(\\frac ab\\Big)^{-x}=\\Big(\\frac ba\\Big)^{x}", color=c1t, font_size=fs2).set_y(2.4)
            
        example = MathTex("\\Big(\\frac ab\\Big)^{-2}","=\\,\\,\\,\\,???", color=c1t, font_size=fs2)
        solution = MathTex("\\Big(\\frac ab\\Big)^{-2}","=","\\Big(\\frac ba\\Big)^{2}", color=c1t, font_size=fs2)
        self.add(rule, example)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6")+self.translate("Func_6_2.I55.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("solution")
            self.play(ReplacementTransform(example, solution), run_time=1)

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_5_6_X(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        kangaroo = ImageMobject(assets_folder / "img" / "kangaroo_thumbs.png")
        kangaroo = kangaroo.scale(4/kangaroo.get_width()).move_to([-5, 0, 0])

        rule_1 = Tex("$1$) ", "$\\left(\\frac ab\\right)^x=\\frac{a^x}{b^x}$", color=c1t, font_size=fs2)
        rule_2 = Tex("$2$) ", "$\\left(\\frac1a\\right)^x=\\frac1{a^x}$", color=c1t, font_size=fs2)
        rule_3 = Tex("$3$) ", "$(ab)^x=a^xb^x$", color=c1t, font_size=fs2)
        rule_4 = Tex("$4$) ", "$\\left(\\frac ab\\right)^{-x}=\\left(\\frac ba\\right)^x$", color=c1t, font_size=fs2)
        rules = VGroup(rule_1, rule_2, rule_3, rule_4).arrange(DOWN, buff=.4, aligned_edge=LEFT)



        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I56.voiceover")
        ) as tracker:

            self.wait_until_bookmark("rule_1")
            self.add_shift_sound(1)
            self.play(Write(rule_1), run_time=1)

            self.wait_until_bookmark("rule_2")
            self.play(Write(rule_2), run_time=1)

            self.wait_until_bookmark("rule_3")
            self.play(Write(rule_3), run_time=1)

            self.wait_until_bookmark("rule_4")
            self.play(Write(rule_4), run_time=1)

            self.wait_until_bookmark("thumbs_in")
            self.add_shift_sound(0.5)
            self.play(kangaroo.animate.shift(5*RIGHT), Unwrite(rule_1), Unwrite(rule_2), Unwrite(rule_3), Unwrite(rule_4), run_time=0.5)

        self.add_shift_sound(.5)
        self.play(kangaroo.animate.shift(5*RIGHT), run_time=0.5)

        self.wait(4)


####################################################################################################################################################
# Chapter: Focus on percentage #####################################################################################################################
#####################################
#####################################
class Func_6_2_I_6_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$1.05$", "$0.95$", "$1.95$", "$0.05$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_2.I561.q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
            fallbackOptionIndex=1,
            answerOptionMatcher="$\key{a}$",
            )
        )
    
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        percentage = ImageMobject(assets_folder / "img" / "percentage.png")
        percentage = percentage.scale(4/percentage.get_width()).move_to([-5, 0, 0])

        capital = self.translate("words.capital")
        interest = self.translate("words.interest")

        bullets = VGroup(Tex(f"$\\bullet$ {capital}: $100\\$$", color=c1t, font_size=fs2), Tex(f"$\\bullet$ {interest}: $5\%$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.4, aligned_edge=LEFT)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I561.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("percentage")
            self.add_shift_sound(0.5)
            self.play(percentage.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("savings_account")
            self.add_shift_sound(0.5)
            self.play(percentage.animate.shift(5*RIGHT), Write(bullets[0]), run_time=0.5)

            self.wait_until_bookmark("interest")
            self.play(Write(bullets[1]), run_time=0.5)

        self.wait(4)


class Func_6_2_I_6_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        percentage = ImageMobject(assets_folder / "img" / "percentage.png")
        self.add(percentage.scale(4/percentage.get_width()).move_to([0, 0, 0]))
        func = MathTex("f(x)=100\\cdot", "1",".05", "^x", color=c1t, font_size=fs2)

        interest = self.translate("Func_6_2.I561.interest")
        factor = self.translate("Func_6_2.I561.factor")
        steps = VGroup(Tex("$5\%$ ", interest, color=c1t, font_size=fs2), MathTex("\\Downarrow", color=c2t, font_size=fs2), Tex(factor, " $1.05$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_5")+self.translate("Func_6_2.I561q.voiceover")
        ) as tracker:
            
            self.add_shift_sound(0.5)
            self.play(percentage.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("factor")
            self.play(Write(func[1]), Write(func[2]), run_time=.3)

            self.wait_until_bookmark("one_red")
            self.play(func[1].animate.set_color(RED), run_time=.3)

            self.wait_until_bookmark("point05_red")
            self.play(func[1].animate.set_color(c1t), func[2].animate.set_color(RED), run_time=1)

            self.wait_until_bookmark("all_black")
            self.play(func[2].animate.set_color(c1t), run_time=1)

            self.wait_until_bookmark("func")
            self.play(Write(func[0]), Write(func[-1]), run_time=1)

            self.wait_until_bookmark("interest_in")
            self.add_shift_sound(0.5)
            self.play(Write(steps[0]), func.animate.shift(2.5*UP), run_time=.5)

            self.wait_until_bookmark("factor_in")
            self.play(Write(steps[1]), Write(steps[2]), run_time=1)

        self.wait(4)

class Func_6_2_I_6_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        percentage = ImageMobject(assets_folder / "img" / "percentage.png")
        self.add(percentage.scale(4/percentage.get_width()).move_to([0, 0, 0]))
        func = MathTex("f(x)=100\\cdot", "1",".05", "^x", color=c1t, font_size=fs2)

        interest = self.translate("Func_6_2.I561.interest")
        factor = self.translate("Func_6_2.I561.factor")
        steps = VGroup(Tex("$5\%$ ", interest, color=c1t, font_size=fs2), MathTex("\\Downarrow", color=c2t, font_size=fs2), Tex(factor, " $1.05$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_6_2.I561q.voiceover")
        ) as tracker:
            
            self.add_shift_sound(0.5)
            self.play(percentage.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("factor")
            self.play(Write(func[1]), Write(func[2]), run_time=.3)

            self.wait_until_bookmark("one_red")
            self.play(func[1].animate.set_color(RED), run_time=.3)

            self.wait_until_bookmark("point05_red")
            self.play(func[1].animate.set_color(c1t), func[2].animate.set_color(RED), run_time=1)

            self.wait_until_bookmark("all_black")
            self.play(func[2].animate.set_color(c1t), run_time=1)

            self.wait_until_bookmark("func")
            self.play(Write(func[0]), Write(func[-1]), run_time=1)

            self.wait_until_bookmark("interest_in")
            self.add_shift_sound(0.5)
            self.play(Write(steps[0]), func.animate.shift(2.5*UP), run_time=.5)

            self.wait_until_bookmark("factor_in")
            self.play(Write(steps[1]), Write(steps[2]), run_time=1)

        self.wait(4)

class Func_6_2_I_6_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        percentage = ImageMobject(assets_folder / "img" / "percentage.png")
        self.add(percentage.scale(4/percentage.get_width()).move_to([0, 0, 0]))
        func = MathTex("f(x)=100\\cdot", "1",".05", "^x", color=c1t, font_size=fs2)

        interest = self.translate("Func_6_2.I561.interest")
        factor = self.translate("Func_6_2.I561.factor")
        steps = VGroup(Tex("$5\%$ ", interest, color=c1t, font_size=fs2), MathTex("\\Downarrow", color=c2t, font_size=fs2), Tex(factor, " $1.05$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_6_2.I561q.voiceover")
        ) as tracker:
            
            self.add_shift_sound(0.5)
            self.play(percentage.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("factor")
            self.play(Write(func[1]), Write(func[2]), run_time=.3)

            self.wait_until_bookmark("one_red")
            self.play(func[1].animate.set_color(RED), run_time=.3)

            self.wait_until_bookmark("point05_red")
            self.play(func[1].animate.set_color(c1t), func[2].animate.set_color(RED), run_time=1)

            self.wait_until_bookmark("all_black")
            self.play(func[2].animate.set_color(c1t), run_time=1)

            self.wait_until_bookmark("func")
            self.play(Write(func[0]), Write(func[-1]), run_time=1)

            self.wait_until_bookmark("interest_in")
            self.add_shift_sound(0.5)
            self.play(Write(steps[0]), func.animate.shift(2.5*UP), run_time=.5)

            self.wait_until_bookmark("factor_in")
            self.play(Write(steps[1]), Write(steps[2]), run_time=1)

        self.wait(4)

class Func_6_2_I_6_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        percentage = ImageMobject(assets_folder / "img" / "percentage.png")
        self.add(percentage.scale(4/percentage.get_width()).move_to([0, 0, 0]))
        func = MathTex("f(x)=100\\cdot", "1",".05", "^x", color=c1t, font_size=fs2)

        interest = self.translate("Func_6_2.I561.interest")
        factor = self.translate("Func_6_2.I561.factor")
        steps = VGroup(Tex("$5\%$ ", interest, color=c1t, font_size=fs2), MathTex("\\Downarrow", color=c2t, font_size=fs2), Tex(factor, " $1.05$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_6_2.I561q.voiceover")
        ) as tracker:
            
            self.add_shift_sound(0.5)
            self.play(percentage.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("factor")
            self.play(Write(func[1]), Write(func[2]), run_time=.3)

            self.wait_until_bookmark("one_red")
            self.play(func[1].animate.set_color(RED), run_time=.3)

            self.wait_until_bookmark("point05_red")
            self.play(func[1].animate.set_color(c1t), func[2].animate.set_color(RED), run_time=1)

            self.wait_until_bookmark("all_black")
            self.play(func[2].animate.set_color(c1t), run_time=1)

            self.wait_until_bookmark("func")
            self.play(Write(func[0]), Write(func[-1]), run_time=1)

            self.wait_until_bookmark("interest_in")
            self.add_shift_sound(0.5)
            self.play(Write(steps[0]), func.animate.shift(2.5*UP), run_time=.5)

            self.wait_until_bookmark("factor_in")
            self.play(Write(steps[1]), Write(steps[2]), run_time=1)

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_6_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$1.8^x$", "$0.8^x$", "$1-0.2^x$", "$0.2^x$"],
            correctAnswerIndex = 1,
            questionText=self.translate("Func_6_2.I562.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        soup = ImageMobject(assets_folder / "img" / "soup.png")
        soup = soup.scale(4/soup.get_width()).move_to([-5, 0, 0])
        twenty_percent = MathTex("20\\%", color=c1t, font_size=fs1).next_to(soup, DOWN, buff=.2).set_x(0)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(6/qmark.get_width()).move_to([-5, 0, 0])


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I562.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("soup_in")
            self.add_shift_sound(0.5)
            self.play(soup.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("twenty_percent")
            self.play(Write(twenty_percent), run_time=1)

            self.wait_until_bookmark("qmark")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), FadeOut(twenty_percent), FadeOut(soup), run_time=0.5)

        self.wait(4)


class Func_6_2_I_6_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        soup = ImageMobject(assets_folder / "img" / "soup.png")
        soup = soup.scale(4/soup.get_width()).move_to([-5, 0, 0])

        eaten = self.translate("Func_6_2.I562.eaten")
        remaining = self.translate("Func_6_2.I562.remaining")
        percentages = (VGroup(Tex("$20\%$ ", eaten, color=c1t, font_size=fs2), MathTex("\\Downarrow", color=c1t, font_size=fs2), Tex("$80\%$ ", remaining, color=c1t, font_size=fs2))).arrange(DOWN, buff=.2)

        function = MathTex("f(x)=", "0.8", "^x", color=c1t, font_size=fs1).set_y(2.6)
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_6_2.I562q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("twenty_percent_in")
            self.play(Write(percentages[0]), run_time=.5)

            self.wait_until_bookmark("eighty_percent_in")
            self.play(Write(percentages[1]), Write(percentages[2]), run_time=.5)

            self.wait_until_bookmark("func_in")
            self.play(Write(function), run_time=1)

            self.wait_until_bookmark("soup_in")
            self.add_shift_sound(0.5)
            self.play(soup.animate.shift(5*RIGHT), run_time=0.5)

        self.wait(4)

class Func_6_2_I_6_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        soup = ImageMobject(assets_folder / "img" / "soup.png")
        soup = soup.scale(4/soup.get_width()).move_to([-5, 0, 0])

        eaten = self.translate("Func_6_2.I562.eaten")
        remaining = self.translate("Func_6_2.I562.remaining")
        percentages = (VGroup(Tex("$20\%$ ", eaten, color=c1t, font_size=fs2), MathTex("\\Downarrow", color=c1t, font_size=fs2), Tex("$80\%$ ", remaining, color=c1t, font_size=fs2))).arrange(DOWN, buff=.2)

        function = MathTex("f(x)=", "0.8", "^x", color=c1t, font_size=fs1).set_y(2.6)
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_4")+self.translate("Func_6_2.I562q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("twenty_percent_in")
            self.play(Write(percentages[0]), run_time=.5)

            self.wait_until_bookmark("eighty_percent_in")
            self.play(Write(percentages[1]), Write(percentages[2]), run_time=.5)

            self.wait_until_bookmark("func_in")
            self.play(Write(function), run_time=1)

            self.wait_until_bookmark("soup_in")
            self.add_shift_sound(0.5)
            self.play(soup.animate.shift(5*RIGHT), run_time=0.5)

        self.wait(4)

class Func_6_2_I_6_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        soup = ImageMobject(assets_folder / "img" / "soup.png")
        soup = soup.scale(4/soup.get_width()).move_to([-5, 0, 0])

        eaten = self.translate("Func_6_2.I562.eaten")
        remaining = self.translate("Func_6_2.I562.remaining")
        percentages = (VGroup(Tex("$20\%$ ", eaten, color=c1t, font_size=fs2), MathTex("\\Downarrow", color=c1t, font_size=fs2), Tex("$80\%$ ", remaining, color=c1t, font_size=fs2))).arrange(DOWN, buff=.2)

        function = MathTex("f(x)=", "0.8", "^x", color=c1t, font_size=fs1).set_y(2.6)
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_6_2.I562q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("twenty_percent_in")
            self.play(Write(percentages[0]), run_time=.5)

            self.wait_until_bookmark("eighty_percent_in")
            self.play(Write(percentages[1]), Write(percentages[2]), run_time=.5)

            self.wait_until_bookmark("func_in")
            self.play(Write(function), run_time=1)

            self.wait_until_bookmark("soup_in")
            self.add_shift_sound(0.5)
            self.play(soup.animate.shift(5*RIGHT), run_time=0.5)

        self.wait(4)

class Func_6_2_I_6_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        soup = ImageMobject(assets_folder / "img" / "soup.png")
        soup = soup.scale(4/soup.get_width()).move_to([-5, 0, 0])

        eaten = self.translate("Func_6_2.I562.eaten")
        remaining = self.translate("Func_6_2.I562.remaining")
        percentages = (VGroup(Tex("$20\%$ ", eaten, color=c1t, font_size=fs2), MathTex("\\Downarrow", color=c1t, font_size=fs2), Tex("$80\%$ ", remaining, color=c1t, font_size=fs2))).arrange(DOWN, buff=.2)

        function = MathTex("f(x)=", "0.8", "^x", color=c1t, font_size=fs1).set_y(2.6)
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_6_2.I562q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("twenty_percent_in")
            self.play(Write(percentages[0]), run_time=.5)

            self.wait_until_bookmark("eighty_percent_in")
            self.play(Write(percentages[1]), Write(percentages[2]), run_time=.5)

            self.wait_until_bookmark("func_in")
            self.play(Write(function), run_time=1)

            self.wait_until_bookmark("soup_in")
            self.add_shift_sound(0.5)
            self.play(soup.animate.shift(5*RIGHT), run_time=0.5)

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_6_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        amount_increases = self.translate("Func_6_2.I562q.amount_increases")
        amount_decreases = self.translate("Func_6_2.I562q.amount_decreases")
        increase = self.translate("Func_6_2.I562q.increase")
        decrease = self.translate("Func_6_2.I562q.decrease")
        factor = self.translate("Func_6_2.I562q.factor")

        steps_increase = VGroup(Tex(amount_increases, color=c1t, font_size=fs2), MathTex("\\Downarrow", color=c1t, font_size=fs2), Tex(factor, f"$=1+\\frac{{\\text{{{increase} in }}\%}}{{100}}$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2)
        steps_decrease = VGroup(Tex(amount_decreases, color=c1t, font_size=fs2), MathTex("\\Downarrow", color=c1t, font_size=fs2), Tex(factor, f"$=1-\\frac{{\\text{{{decrease} in }}\%}}{{100}}$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I563.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("increase_in")
            self.play(Write(steps_increase[0]), run_time=.5)

            self.wait_until_bookmark("increase_factor")
            self.play(Write(steps_increase[1]), Write(steps_increase[2]), run_time=.5)

            self.wait_until_bookmark("decrease_in")
            self.play(Unwrite(steps_increase), Write(steps_decrease[0]), run_time=.5)

            self.wait_until_bookmark("decrease_factor")
            self.play(Write(steps_decrease[1]), Write(steps_decrease[2]), run_time=.5)

        self.wait(4)


#####################################
#####################################
class Func_6_2_I_6_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$0.5^x$", "$0.55^x$", "$1.1^x$", "$1.1^x-0.5^x$"],
            correctAnswerIndex = 1,
            questionText=self.translate("Func_6_2.I564.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        money = ImageMobject(assets_folder / "img" / "colors_money_in_bank.png")
        money = money.scale(4/money.get_width()).move_to([-5, 0, 0])
        interest = self.translate("Func_6_2.I562q.interest")
        spending = self.translate("Func_6_2.I562q.spend_half")
        dollars = MathTex("100", "\\$", color=c1t, font_size=fs1).next_to(money, DOWN, buff=.2).set_x(0)
        bullets = VGroup(Tex("$\\bullet$ ", interest, ": $10\%$", color=c1t, font_size=fs2), Tex("$\\bullet$ ", spending, ": $50\%$", color=c1t, font_size=fs2),).arrange(DOWN, buff=.2, aligned_edge=LEFT)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I564.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("money_in")
            self.add_shift_sound(0.5)
            self.play(money.animate.shift(5*RIGHT), run_time=0.5)
            self.play(Write(dollars))

            self.wait_until_bookmark("percent_in")
            self.add_shift_sound(0.5)
            self.play(money.animate.shift(5*RIGHT), Write(bullets[0]), dollars.animate.shift(4*UP), run_time=.5)

            self.wait_until_bookmark("spend_half")
            self.play(Write(bullets[1]), run_time=.5)

        self.wait(4)

class Func_6_2_I_6_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        interest = self.translate("Func_6_2.I562q.interest")
        spending = self.translate("Func_6_2.I562q.spend_half")
        factor = self.translate("Func_6_2.I562q.factor")
        final_factor = self.translate("Func_6_2.I562q.final_factor")
        bullets = VGroup(Tex(f"$\\bullet$ {interest}: $10\%$\\\\ $\\Rightarrow${factor}: $1.10$",  color=c1t, font_size=fs2, tex_environment="flushright"), Tex(f"$\\bullet$ {spending}: $50\%$\\\\ $\\Rightarrow${factor}: $0.50$",  color=c1t, font_size=fs2, tex_environment="flushright")).arrange(DOWN, buff=.4).set_y(1)
        solution = VGroup(MathTex("\\Downarrow", color=c1t, font_size=fs2), Tex(final_factor, color=c1t, font_size=fs2), MathTex("1.10\\cdot 0.50=0.55", color=c1t, font_size=fs2)).arrange(DOWN, buff=.4).next_to(bullets, DOWN, buff=.6)
        solution_func = MathTex("f(x)=0.55^x", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_2.I564q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("interest_in")
            self.play(Write(bullets[0]), run_time=.5)

            self.wait_until_bookmark("factor")
            self.play(Write(bullets[1]), run_time=.5)

            self.wait_until_bookmark("final_factor")
            self.play(Write(solution), run_time=.5)

            self.wait_until_bookmark("clean_up")
            self.add_shift_sound(0.5)
            self.play(Unwrite(bullets), Unwrite(solution[0]), Group(solution[1], solution[2]).animate.shift(4*UP), run_time=.5)

            self.wait_until_bookmark("func_in")
            self.play(Write(solution_func), run_time=.5)

        self.wait(4)

class Func_6_2_I_6_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        interest = self.translate("Func_6_2.I562q.interest")
        spending = self.translate("Func_6_2.I562q.spend_half")
        factor = self.translate("Func_6_2.I562q.factor")
        final_factor = self.translate("Func_6_2.I562q.final_factor")
        bullets = VGroup(Tex(f"$\\bullet$ {interest}: $10\%$\\\\ $\\Rightarrow${factor}: $1.10$",  color=c1t, font_size=fs2, tex_environment="flushright"), Tex(f"$\\bullet$ {spending}: $50\%$\\\\ $\\Rightarrow${factor}: $0.50$",  color=c1t, font_size=fs2, tex_environment="flushright")).arrange(DOWN, buff=.4).set_y(1)
        solution = VGroup(MathTex("\\Downarrow", color=c1t, font_size=fs2), Tex(final_factor, color=c1t, font_size=fs2), MathTex("1.10\\cdot 0.50=0.55", color=c1t, font_size=fs2)).arrange(DOWN, buff=.4).next_to(bullets, DOWN, buff=.6)
        solution_func = MathTex("f(x)=0.55^x", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_6_2.I564q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("interest_in")
            self.play(Write(bullets[0]), run_time=.5)

            self.wait_until_bookmark("factor")
            self.play(Write(bullets[1]), run_time=.5)

            self.wait_until_bookmark("final_factor")
            self.play(Write(solution), run_time=.5)

            self.wait_until_bookmark("clean_up")
            self.add_shift_sound(0.5)
            self.play(Unwrite(bullets), Unwrite(solution[0]), Group(solution[1], solution[2]).animate.shift(4*UP), run_time=.5)

            self.wait_until_bookmark("func_in")
            self.play(Write(solution_func), run_time=.5)

        self.wait(4)

class Func_6_2_I_6_4_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        interest = self.translate("Func_6_2.I562q.interest")
        spending = self.translate("Func_6_2.I562q.spend_half")
        factor = self.translate("Func_6_2.I562q.factor")
        final_factor = self.translate("Func_6_2.I562q.final_factor")
        bullets = VGroup(Tex(f"$\\bullet$ {interest}: $10\%$\\\\ $\\Rightarrow${factor}: $1.10$",  color=c1t, font_size=fs2, tex_environment="flushright"), Tex(f"$\\bullet$ {spending}: $50\%$\\\\ $\\Rightarrow${factor}: $0.50$",  color=c1t, font_size=fs2, tex_environment="flushright")).arrange(DOWN, buff=.4).set_y(1)
        solution = VGroup(MathTex("\\Downarrow", color=c1t, font_size=fs2), Tex(final_factor, color=c1t, font_size=fs2), MathTex("1.10\\cdot 0.50=0.55", color=c1t, font_size=fs2)).arrange(DOWN, buff=.4).next_to(bullets, DOWN, buff=.6)
        solution_func = MathTex("f(x)=0.55^x", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_2.I564q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("interest_in")
            self.play(Write(bullets[0]), run_time=.5)

            self.wait_until_bookmark("factor")
            self.play(Write(bullets[1]), run_time=.5)

            self.wait_until_bookmark("final_factor")
            self.play(Write(solution), run_time=.5)

            self.wait_until_bookmark("clean_up")
            self.add_shift_sound(0.5)
            self.play(Unwrite(bullets), Unwrite(solution[0]), Group(solution[1], solution[2]).animate.shift(4*UP), run_time=.5)

            self.wait_until_bookmark("func_in")
            self.play(Write(solution_func), run_time=.5)

        self.wait(4)

class Func_6_2_I_6_4_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        interest = self.translate("Func_6_2.I562q.interest")
        spending = self.translate("Func_6_2.I562q.spend_half")
        factor = self.translate("Func_6_2.I562q.factor")
        final_factor = self.translate("Func_6_2.I562q.final_factor")
        bullets = VGroup(Tex(f"$\\bullet$ {interest}: $10\%$\\\\ $\\Rightarrow${factor}: $1.10$",  color=c1t, font_size=fs2, tex_environment="flushright"), Tex(f"$\\bullet$ {spending}: $50\%$\\\\ $\\Rightarrow${factor}: $0.50$",  color=c1t, font_size=fs2, tex_environment="flushright")).arrange(DOWN, buff=.4).set_y(1)
        solution = VGroup(MathTex("\\Downarrow", color=c1t, font_size=fs2), Tex(final_factor, color=c1t, font_size=fs2), MathTex("1.10\\cdot 0.50=0.55", color=c1t, font_size=fs2)).arrange(DOWN, buff=.4).next_to(bullets, DOWN, buff=.6)
        solution_func = MathTex("f(x)=0.55^x", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_2.I564q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("interest_in")
            self.play(Write(bullets[0]), run_time=.5)

            self.wait_until_bookmark("factor")
            self.play(Write(bullets[1]), run_time=.5)

            self.wait_until_bookmark("final_factor")
            self.play(Write(solution), run_time=.5)

            self.wait_until_bookmark("clean_up")
            self.add_shift_sound(0.5)
            self.play(Unwrite(bullets), Unwrite(solution[0]), Group(solution[1], solution[2]).animate.shift(4*UP), run_time=.5)

            self.wait_until_bookmark("func_in")
            self.play(Write(solution_func), run_time=.5)

        self.wait(4)


#####################################
#####################################
class Func_6_2_I_6_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$3375$", "$1500$", "$125x$", "$2250$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_2.I565.q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$\key{a}$",
                # answerOptionsTypes={
                #     "a": "number"
                # },
                # answerOptionDescriptions={
                #     "a": self.translate("Func_6_2.P3.q.answer-option-description")
                # }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        money = ImageMobject(assets_folder / "img" / "flying_money.png")
        money = money.scale(4/money.get_width()).move_to([-5, 1, 0])
        interest = self.translate("Func_6_2.I562q.interest")
        investment = self.translate("Func_6_2.I562q.investment")
        dollars = Tex("$\\bullet$ ", investment, ": $1000\\$$", color=c1t, font_size=fs2)
        interest = Tex("$\\bullet$ ", interest, ": $50\%$", color=c1t, font_size=fs2)
        bullets = VGroup(dollars, interest).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(money, DOWN, buff=1).set_x(0)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I565.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("money_in")
            self.add_shift_sound(0.5)
            self.play(money.animate.shift(5*RIGHT), run_time=0.5)
            
            self.wait_until_bookmark("thousand_in")
            self.play(Write(dollars), run_time=.5)

            self.wait_until_bookmark("percent_in")
            self.play(Write(interest), run_time=.5)


        self.wait(4)


class Func_6_2_I_6_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        money = ImageMobject(assets_folder / "img" / "flying_money.png")
        money = money.scale(4/money.get_width()).set_y(1)
        interest = self.translate("Func_6_2.I562q.interest")
        investment = self.translate("Func_6_2.I562q.investment")
        dollars = Tex("$\\bullet$ ", investment, ": $1000\\$$", color=c1t, font_size=fs2)
        interest = Tex("$\\bullet$ ", interest, ": $50\%$", color=c1t, font_size=fs2)
        bullets = VGroup(dollars, interest).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(money, DOWN, buff=1)

        func = MathTex("f(x)=","1000","\\cdot","1.5^x", "", color=c1t, font_size=fs2)
        func_3 = MathTex("f(3)=","1000","\\cdot","1.5^3", "=3375", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_6_2.I565q.voiceover")
        ) as tracker:

            self.add_shift_sound(0.5)
            self.play(bullets.animate.shift(4.5*UP), money.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("function_in")
            self.play(Write(func), run_time=.5)

            self.wait_until_bookmark("thousand_red")
            self.play(func[1].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("fifty_percent_red")
            self.play(func[1].animate.set_color(c1t), func[3].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("all_black")
            self.play(func[1].animate.set_color(c1t), func[3].animate.set_color(c1t), run_time=.5)

            self.wait_until_bookmark("func_3")
            self.play(ReplacementTransform(func, func_3[0:4]), run_time=.5)

            self.wait_until_bookmark("result")
            self.play(Write(func_3[4]), run_time=.5)

            self.wait_until_bookmark("solution_green")
            self.play(func_3[4].animate.set_color(GREEN), run_time=.5)

        self.wait(4)

class Func_6_2_I_6_5_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        money = ImageMobject(assets_folder / "img" / "flying_money.png")
        money = money.scale(4/money.get_width()).set_y(1)
        interest = self.translate("Func_6_2.I562q.interest")
        investment = self.translate("Func_6_2.I562q.investment")
        dollars = Tex("$\\bullet$ ", investment, ": $1000\\$$", color=c1t, font_size=fs2)
        interest = Tex("$\\bullet$ ", interest, ": $50\%$", color=c1t, font_size=fs2)
        bullets = VGroup(dollars, interest).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(money, DOWN, buff=1)

        func = MathTex("f(x)=","1000","\\cdot","1.5^x", "", color=c1t, font_size=fs2)
        func_3 = MathTex("f(3)=","1000","\\cdot","1.5^3", "=3375", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_2.I565q.voiceover")
        ) as tracker:

            self.add_shift_sound(0.5)
            self.play(bullets.animate.shift(4.5*UP), money.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("function_in")
            self.play(Write(func), run_time=.5)

            self.wait_until_bookmark("thousand_red")
            self.play(func[1].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("fifty_percent_red")
            self.play(func[1].animate.set_color(c1t), func[3].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("all_black")
            self.play(func[1].animate.set_color(c1t), func[3].animate.set_color(c1t), run_time=.5)

            self.wait_until_bookmark("func_3")
            self.play(ReplacementTransform(func, func_3[0:4]), run_time=.5)

            self.wait_until_bookmark("result")
            self.play(Write(func_3[4]), run_time=.5)

            self.wait_until_bookmark("solution_green")
            self.play(func_3[4].animate.set_color(GREEN), run_time=.5)

        self.wait(4)

class Func_6_2_I_6_5_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        money = ImageMobject(assets_folder / "img" / "flying_money.png")
        money = money.scale(4/money.get_width()).set_y(1)
        interest = self.translate("Func_6_2.I562q.interest")
        investment = self.translate("Func_6_2.I562q.investment")
        dollars = Tex("$\\bullet$ ", investment, ": $1000\\$$", color=c1t, font_size=fs2)
        interest = Tex("$\\bullet$ ", interest, ": $50\%$", color=c1t, font_size=fs2)
        bullets = VGroup(dollars, interest).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(money, DOWN, buff=1)

        func = MathTex("f(x)=","1000","\\cdot","1.5^x", "", color=c1t, font_size=fs2)
        func_3 = MathTex("f(3)=","1000","\\cdot","1.5^3", "=3375", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_2.I565q.voiceover")
        ) as tracker:

            self.add_shift_sound(0.5)
            self.play(bullets.animate.shift(4.5*UP), money.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("function_in")
            self.play(Write(func), run_time=.5)

            self.wait_until_bookmark("thousand_red")
            self.play(func[1].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("fifty_percent_red")
            self.play(func[1].animate.set_color(c1t), func[3].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("all_black")
            self.play(func[1].animate.set_color(c1t), func[3].animate.set_color(c1t), run_time=.5)

            self.wait_until_bookmark("func_3")
            self.play(ReplacementTransform(func, func_3[0:4]), run_time=.5)

            self.wait_until_bookmark("result")
            self.play(Write(func_3[4]), run_time=.5)

            self.wait_until_bookmark("solution_green")
            self.play(func_3[4].animate.set_color(GREEN), run_time=.5)

        self.wait(4)

class Func_6_2_I_6_5_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        money = ImageMobject(assets_folder / "img" / "flying_money.png")
        money = money.scale(4/money.get_width()).set_y(1)
        interest = self.translate("Func_6_2.I562q.interest")
        investment = self.translate("Func_6_2.I562q.investment")
        dollars = Tex("$\\bullet$ ", investment, ": $1000\\$$", color=c1t, font_size=fs2)
        interest = Tex("$\\bullet$ ", interest, ": $50\%$", color=c1t, font_size=fs2)
        bullets = VGroup(dollars, interest).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(money, DOWN, buff=1)

        func = MathTex("f(x)=","1000","\\cdot","1.5^x", "", color=c1t, font_size=fs2)
        func_3 = MathTex("f(3)=","1000","\\cdot","1.5^3", "=3375", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_2.I565q.voiceover")
        ) as tracker:

            self.add_shift_sound(0.5)
            self.play(bullets.animate.shift(4.5*UP), money.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("function_in")
            self.play(Write(func), run_time=.5)

            self.wait_until_bookmark("thousand_red")
            self.play(func[1].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("fifty_percent_red")
            self.play(func[1].animate.set_color(c1t), func[3].animate.set_color(RED), run_time=.5)

            self.wait_until_bookmark("all_black")
            self.play(func[1].animate.set_color(c1t), func[3].animate.set_color(c1t), run_time=.5)

            self.wait_until_bookmark("func_3")
            self.play(ReplacementTransform(func, func_3[0:4]), run_time=.5)

            self.wait_until_bookmark("result")
            self.play(Write(func_3[4]), run_time=.5)

            self.wait_until_bookmark("solution_green")
            self.play(func_3[4].animate.set_color(GREEN), run_time=.5)

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_6_6_X(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_2.I1.title"))

        ostrich = ImageMobject(assets_folder / "img" / "ostrich_thumbs.png")
        ostrich = ostrich.scale(4/ostrich.get_width()).move_to([-5, 1.4, 0])

        percentage = ImageMobject(assets_folder / "img" / "percentage.png")
        percentage = percentage.scale(3/percentage.get_width()).move_to([-3, -2, 0])

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I566.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("ostrich_in")
            self.add_shift_sound(0.5)
            self.play(ostrich.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("percentage_in")
            self.play(percentage.animate.shift(6.6*RIGHT), rate_func=linear, run_time=6)


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

        title = self.add_title(self.translate("Func_6_2.I3.title"))

        plane = self.cords[0]

        cursor = AltCursor(stroke_width=0.0, idle=True)
        self.add(cursor)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2.5/qmark.get_width()).move_to([-5, 1, 0])

        f_tex = MathTex("f","(x)", "=", "b", "^x", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.4)
        xm1, xm2 = self.translate("Func_6_2.I3.x-minutes_1"), self.translate("Func_6_2.I3.x-minutes_2")
        x_minutes = VGroup(Tex("$\\Rightarrow$", xm1, color=c1t, font_size=fs3), Tex(xm2, " $b$?", color=c1t, font_size=fs3)).arrange(DOWN, buff=0.1, aligned_edge=RIGHT).next_to(f_tex, DOWN, buff=0.6)

        func = lambda x: self.a**x
        f = plane.plot(func, color=self.color)

        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_6_2.GraphToGrowthFactorQuestionScene.voiceover"))
        ) as tracker:
            
            self.play(Write(self.cords))
            
            self.wait_until_bookmark("plot")
            x, y, _ = f.get_start()
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(f.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(f))
            cursor.idle=True

            self.wait_until_bookmark("function")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("q")
            x,y,_ = x_minutes[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(x_minutes), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("q_a")
            x,y,_ = x_minutes[1][1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True


        self.wait(4)


class GraphToGrowthFactorAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_2.I3.title"))

        plane = self.cords[0]

        cursor = AltCursor(stroke_width=0.0, idle=True)
        self.add(cursor)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2.5/qmark.get_width()).move_to([-5, 1, 0])

        f_tex = MathTex("f","(x)", "=", "a", "^x", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.4)
        sol = Tex("$\\Rightarrow$", f"a={self.a}", color=c1t, font_size=fs2).next_to(f_tex, DOWN, buff=0.2)
        func = lambda x: self.a**x
        f = plane.plot(func, color=self.color)

        verify_translated = self.translate("Func_6_2.I3.verify")
        verify = VGroup(Tex("$\\Rightarrow$", verify_translated, color=c1t, font_size=fs3), MathTex(f"f({self.x_max})", f"={self.a}^{self.x_max}", f"={self.a**self.x_max}", font_size=fs3, color=c1t))
        verify.arrange(DOWN, buff=0.2).next_to(sol, DOWN, buff=0.8)
        verify[0].shift(LEFT*0.6)

        self.add(f_tex)

        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_6_2.GraphToGrowthFactorAnswerScene.voiceover"))
        ) as tracker:
            
            self.play(Write(self.cords))
            self.play(Write(f))

            self.wait_until_bookmark("x_one")
            cursor.idle=False
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("f_x_one")
            x,y,_ = plane.c2p(1,self.a)
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("sol")
            cursor.idle=False
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("verify")
            x,y,_ = verify[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(verify[0]), CursorMoveTo(cursor,x,y), run_time=0.5)
            cursor.idle=False

            self.wait_until_bookmark("x_max")
            cursor.idle=False
            x,y,_ = verify[1][0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(verify[1][0]), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("x_max_graph")
            cursor.idle=False
            x,y,_ = plane.c2p(self.x_max,self.a**self.x_max)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("verify_2")
            cursor.idle=False
            x,y,_ = verify[1][1].get_center()+0.4*DOWN
            self.play(Write(verify[1][1]), CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("verify_3")
            x,y,_ = verify[1][2].get_center()+0.4*DOWN
            self.play(Write(verify[1][2]), CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.idle=True

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

        title = self.add_title(self.translate("Func_6_2.I3.title"))

        plane = self.cords[0]

        cursor = AltCursor(stroke_width=0.0, idle=True)
        self.add(cursor)

        f_tex = MathTex("f","(x)", "=", str(self.a), "^x", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.4)
        xm1, xm2 = self.translate("Func_6_2.GrowthFactorToGraphQuestionScene.x-minutes_1"), self.translate("Func_6_2.GrowthFactorToGraphQuestionScene.x-minutes_2")
        x_minutes = VGroup(Tex("$\\Rightarrow$", xm1, color=c1t, font_size=fs3), Tex(xm2, color=c1t, font_size=fs3)).arrange(DOWN, buff=0.1, aligned_edge=RIGHT).next_to(f_tex, DOWN, buff=0.6)
        x_minutes[1].shift(RIGHT*0.4)
        g_1 = plane.plot(self.f1, color=self.c1)
        g_2 = plane.plot(self.f2, color=self.c2)
        g_3 = plane.plot(self.f3, color=self.c3)


        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_6_2.GrowthFactorToGraphQuestionScene.voiceover"))
        ) as tracker:
            
            self.wait_until_bookmark("f")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("which")
            x,y,_ = x_minutes[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(x_minutes), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("cords_in")
            self.play(Write(self.cords), run_time=0.3)

            self.wait_until_bookmark("plot_1")
            cursor.idle=False
            x,y,_ = g_1.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g_1.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g_1))
            cursor.idle=True

            self.wait_until_bookmark("plot_2")
            cursor.idle=False
            x,y,_ = g_2.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g_2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g_2))
            cursor.idle=True

            self.wait_until_bookmark("plot_3")
            cursor.idle=False
            x,y,_ = g_3.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g_3.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g_3))
            cursor.idle=True
            

        self.wait(4)


class GrowthFactorToGraphAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_2.I3.title"))

        plane = self.cords[0]
        f_tex = MathTex("f","(x)", "=", str(self.a), "^x", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.4)
        self.intro_auto = self.translate("Func_6_2.GrowthFactorToGraphAnswerScene.i1") if self.a>1 else self.translate("Func_6_2.GrowthFactorToGraphAnswerScene.i2")
        intro_auto_tex = Tex("$a>1$",f"$\\Rightarrow${self.translate('Func_6_2.GrowthFactorToGraphAnswerScene.eg')}", color=c1t, font_size=fs3).next_to(f_tex, DOWN, buff=0.4) if self.a>1 else Tex("$0<a<1$",f"$\\Rightarrow${self.translate('Func_6_2.GrowthFactorToGraphAnswerScene.ed')}", color=c1t, font_size=fs3).next_to(f_tex, DOWN, buff=0.4)
        
        g_1 = plane.plot(self.f1, color=self.c1)
        g_2 = plane.plot(self.f2, color=self.c2)
        g_3 = plane.plot(self.f3, color=self.c3)

        gs = [g_1,g_2,g_3]
        g_correct = gs[self.idx_correct]
        self.color_correct = self.color_1_name if self.idx_correct==0 else self.color_2_name if self.idx_correct==1 else self.color_3_name


        cursor = AltCursor(stroke_width=0.0, idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_6_2.GrowthFactorToGraphAnswerScene.voiceover"))
        ) as tracker:
            
            self.play(Write(f_tex))

            self.wait_until_bookmark("intro_auto")
            x,y,_ = intro_auto_tex[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(intro_auto_tex), CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("cords_in")
            self.play(Write(self.cords), run_time=0.3)

            self.wait_until_bookmark("x_one")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("erase")
            self.add(g_correct.copy())
            self.play(Uncreate(g_1), Uncreate(g_2), Uncreate(g_3),  run_time=0.3)


        self.wait(4)


#####################################
#####################################
######## Specific Qs ################
#####################################


##################################### Growth factor focus
#####################################
class Func_6_2_I_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a=\\frac{1}{2}$", "$a=\\frac{1}{4}$", "$a=2$", "$a=1$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_2.I3.q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=3,
                answerOptionMatcher="$a=\key{a}$",
                answerOptionsTypes={
                    "a": "number"
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_2.I3.title"))
        self.add(title)

        cords = self.add_cords([0, 4, 1], [0, 1, 0.25], x_ticks=[0,1,2,3,4], y_ticks=[0.25,0.5,0.75,1], y_labels=["\\tfrac14", "\\tfrac12", "\\tfrac34", "1"]).shift(DOWN)
        plane = cords[0]

        f_tex = MathTex("f","(x)", "=", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4).shift(UP*2.5)
        loc_a = f_tex[3].get_center()

        f = lambda x:0.5**x
        f_plot = plane.plot(f, color=BLUE)

        cursor = AltCursor(stroke_width=0.0, idle=True)
        self.add(cursor)

        base = self.translate("words.base")

        b = Bubble([self.translate("Func_6_2.I3.title"), "/ "+base], center = [-.4, -.4,0], start_point=loc_a + 0.2*DOWN, loc ="t2", height=1, width=2.6)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_2.I3.voiceover")
        ) as tracker:

            self.wait_until_bookmark("underline")
            cursor.idle=False
            self.play(CursorUnderline(cursor, title), run_time=0.5)
            self.wait(2)
            self.play(CursorMoveResize(cursor,0,0), run_time=0.5)
            
            self.wait_until_bookmark("f")
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
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
            cursor.idle=True

            self.wait_until_bookmark("a")
            cursor.idle=False
            x,y,_ = f_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            
            self.wait_until_bookmark("growth_factor")
            self.add_bubble_sound(1.5)
            b_updater = lambda m: m.move_to(b.get_end())
            cursor.add_updater(b_updater)
            self.play(Create(b), Create(b.text))
            cursor.remove_updater(b_updater)
            cursor.idle=True

            self.wait_until_bookmark("func_in")
            cursor.idle=False
            x,y,_ = f_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), Write(cords), f_tex.animate.shift(2.5*DOWN), Uncreate(b), Uncreate(b.text), run_time=0.6)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(f_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(f_plot))
            cursor.idle=True

        self.wait(4)


class Func_6_2_I_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_2.I3.title"))

        cords = self.add_cords([0, 4, 1], [0, 1, 0.25], x_ticks=[0,1,2,3,4], y_ticks=[0.25,0.5,0.75,1], y_labels=["\\tfrac14", "\\tfrac12", "\\tfrac34", "1"]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        f_tex = MathTex("f","(x)", "=", "a", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        f_sol = MathTex("f","(x)", "=", "\\tfrac12", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        self.add(f_tex)

        f = lambda x:0.5**x
        f_plot = plane.plot(f, color=BLUE)
        self.add(f_plot)

        cursor = AltCursor(stroke_width=0.0, idle=True)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_6")+self.translate("Func_6_2.I3a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("x_1")
            cursor.idle=False
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx_1")
            x,y,_ = plane.c2p(1,0.5)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(Circle(radius=0.1, color=RED).move_to(cursor))

            self.wait_until_bookmark("transform")
            self.play(ReplacementTransform(f_tex, f_sol), run_time=0.6)

            self.wait_until_bookmark("x_2")
            x,y,_ = plane.c2p(2,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx_2")
            x,y,_ = plane.c2p(2,0.25)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(Circle(radius=0.1, color=RED).move_to(cursor))
            x,y,_ = plane.c2p(0,0)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.idle=True

        self.wait(4)

class Func_6_2_I_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_2.I3.title"))

        cords = self.add_cords([0, 4, 1], [0, 1, 0.25], x_ticks=[0,1,2,3,4], y_ticks=[0.25,0.5,0.75,1], y_labels=["\\tfrac14", "\\tfrac12", "\\tfrac34", "1"]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        f_tex = MathTex("f","(x)", "=", "a", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        f_sol = MathTex("f","(x)", "=", "\\tfrac12", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        self.add(f_tex)

        f = lambda x:0.5**x
        f_plot = plane.plot(f, color=BLUE)
        self.add(f_plot)

        cursor = AltCursor(stroke_width=0.0, idle=True)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6")+self.translate("Func_6_2.I3a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("x_1")
            cursor.idle=False
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx_1")
            x,y,_ = plane.c2p(1,0.5)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(Circle(radius=0.1, color=RED).move_to(cursor))

            self.wait_until_bookmark("transform")
            self.play(ReplacementTransform(f_tex, f_sol), run_time=0.6)

            self.wait_until_bookmark("x_2")
            x,y,_ = plane.c2p(2,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx_2")
            x,y,_ = plane.c2p(2,0.25)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(Circle(radius=0.1, color=RED).move_to(cursor))
            x,y,_ = plane.c2p(0,0)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.idle=True

        self.wait(4)

class Func_6_2_I_3_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_2.I3.title"))

        cords = self.add_cords([0, 4, 1], [0, 1, 0.25], x_ticks=[0,1,2,3,4], y_ticks=[0.25,0.5,0.75,1], y_labels=["\\tfrac14", "\\tfrac12", "\\tfrac34", "1"]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        f_tex = MathTex("f","(x)", "=", "a", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        f_sol = MathTex("f","(x)", "=", "\\tfrac12", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        self.add(f_tex)

        f = lambda x:0.5**x
        f_plot = plane.plot(f, color=BLUE)
        self.add(f_plot)

        cursor = AltCursor(stroke_width=0.0, idle=True)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6")+self.translate("Func_6_2.I3a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("x_1")
            cursor.idle=False
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx_1")
            x,y,_ = plane.c2p(1,0.5)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(Circle(radius=0.1, color=RED).move_to(cursor))

            self.wait_until_bookmark("transform")
            self.play(ReplacementTransform(f_tex, f_sol), run_time=0.6)

            self.wait_until_bookmark("x_2")
            x,y,_ = plane.c2p(2,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx_2")
            x,y,_ = plane.c2p(2,0.25)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(Circle(radius=0.1, color=RED).move_to(cursor))
            x,y,_ = plane.c2p(0,0)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.idle=True

        self.wait(4)

class Func_6_2_I_3_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_2.I3.title"))

        cords = self.add_cords([0, 4, 1], [0, 1, 0.25], x_ticks=[0,1,2,3,4], y_ticks=[0.25,0.5,0.75,1], y_labels=["\\tfrac14", "\\tfrac12", "\\tfrac34", "1"]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        f_tex = MathTex("f","(x)", "=", "a", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        f_sol = MathTex("f","(x)", "=", "\\tfrac12", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        self.add(f_tex)

        f = lambda x:0.5**x
        f_plot = plane.plot(f, color=BLUE)
        self.add(f_plot)

        cursor = AltCursor(stroke_width=0.0, idle=True)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6")+self.translate("Func_6_2.I3a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("x_1")
            cursor.idle=False
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx_1")
            x,y,_ = plane.c2p(1,0.5)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(Circle(radius=0.1, color=RED).move_to(cursor))

            self.wait_until_bookmark("transform")
            self.play(ReplacementTransform(f_tex, f_sol), run_time=0.6)

            self.wait_until_bookmark("x_2")
            x,y,_ = plane.c2p(2,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx_2")
            x,y,_ = plane.c2p(2,0.25)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(Circle(radius=0.1, color=RED).move_to(cursor))
            x,y,_ = plane.c2p(0,0)
            self.wait(0.5)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.idle=True

        self.wait(4)


#####################################
#####################################
class Func_6_2_P_1_q(GraphToGrowthFactorQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a=3$", "$a=1$", "$a=\\frac{1}{3}$", "$a=-2$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_2_P_1_q.questionText")
        )

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.a = 3
        self.color=PURPLE
        self.intro = self.translate("Func_6_2_P_1_q.intro")

        super().construct()

class Func_6_2_P_1_a(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.a = 3
        self.x_max = 4
        self.color=PURPLE
        self.intro = self.translate("Func_6_2_P_1_a.intro")

        super().construct()

class Func_6_2_P_1_b(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.a = 3
        self.x_max = 4
        self.color=PURPLE
        self.intro = self.translate("Func_6_2_P_1_b.intro")

        super().construct()

class Func_6_2_P_1_c(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.a = 3
        self.x_max = 4
        self.color=PURPLE
        self.intro = self.translate("Func_6_2_P_1_b.intro")

        super().construct()

class Func_6_2_P_1_d(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.a = 3
        self.x_max = 4
        self.color=PURPLE
        self.intro = self.translate("Func_6_2_P_1_b.intro")

        super().construct()


#####################################
#####################################
class Func_6_2_I_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a>1$", "$a<-1$", "$0<a<1$", "$-1<a<0$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_2.I3.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        cords = self.add_cords([0, 4, 1], [-1, 1, 0.5], x_ticks=[], y_ticks=[]).shift(0.4*UP)
        plane = cords[0]
        self.add(cords)

        b_large = plane.plot(lambda x: (2**x)/16, color=PINK)
        b_small = plane.plot(lambda x: 0.5**x, color=BLUE)
        a_neg = plane.plot(lambda x: -(2**x)/16, color=GREEN)

        f_tex = MathTex("f","(x)", "=", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        b_vals = VGroup(Tex("$\\bullet$ $b>1$", color=PINK, font_size=fs2), Tex("$\\bullet$ $0<b<1$", color=BLUE, font_size=fs2), Tex("$\\bullet$ $b=???$", color=GREEN, font_size=fs2)).arrange(DOWN, buff=.4, aligned_edge=LEFT).next_to(f_tex, DOWN, buff=.3).set_x(-.4)
        cursor = AltCursor(stroke_width=0.0, idle=True, y=-1.2)
        self.add(cursor, f_tex)

        # Action Sequence
        with self.voiceover(text=self.translate("Func_6_2.I4.voiceover")
        ) as tracker:

            self.wait_until_bookmark("large_base")
            cursor.idle=False
            x,y,_ = b_large.get_start()
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(b_large.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(b_large), Write(b_vals[0]))

            self.wait_until_bookmark("small_base")
            x,y,_ = b_small.get_start()
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(b_small.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(b_small), Write(b_vals[1]))
            
            self.wait_until_bookmark("green_graph")
            x,y,_ = a_neg.get_start()
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(a_neg.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(a_neg), Write(b_vals[2]))
            cursor.idle=True

        self.wait(4)


class Func_6_2_I_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([0, 4, 1], [-1, 1, 0.5], x_ticks=[], y_ticks=[]).shift(0.4*UP)
        plane = cords[0]
        self.add(cords)

        b_large = plane.plot(lambda x: (2**x)/16, color=PINK)
        b_small = plane.plot(lambda x: 0.5**x, color=BLUE)
        a_neg = plane.plot(lambda x: -(2**x)/16, color=GREEN)

        a = ValueTracker(1)
        f_grey = always_redraw(lambda: plane.plot(lambda x: a.get_value()*(2**x)/16, color=GREY))
        
        self.add(b_large, b_small, a_neg)

        f_tex = MathTex("f","(x)", "=", "", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        f_tex_neg = MathTex("f","(x)", "=", "-1\\cdot ", "b", "^x", color=c1t, font_size=fs2).move_to(f_tex)
        f_tex_neg[3].set_color(GREEN)
        b_vals = VGroup(Tex("$\\bullet$ $b>1$", color=PINK, font_size=fs2), Tex("$\\bullet$ $0<b<1$", color=BLUE, font_size=fs2), Tex("$\\bullet$ $b=???$", color=GREEN, font_size=fs2)).arrange(DOWN, buff=.4, aligned_edge=LEFT).next_to(f_tex, DOWN, buff=.3).set_x(-.4)
        b_sol = Tex("$\\bullet$ $b>1$", color=GREEN, font_size=fs2).move_to(b_vals[0]).shift(.6*DOWN)
        cursor = AltCursor(stroke_width=0.0, idle=True, y=-1.2)
        self.add(cursor, f_tex, b_vals)

        # Action Sequence
        with self.voiceover(text=self.translate("General.correct_4")+self.translate("Func_6_2.I4.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("highlight_pink")
            self.play(Circumscribe(b_large, color=RED, stroke_width=8), Unwrite(b_small), Unwrite(b_vals[1]), Unwrite(b_vals[2]))

            self.wait_until_bookmark("highlight_green")
            self.play(Circumscribe(a_neg, color=RED, stroke_width=8))

            self.wait_until_bookmark("show_reflection")
            self.add(f_grey)
            self.play(a.animate.set_value(-1), run_time=3)
            self.remove(f_grey)

            self.wait_until_bookmark("solution_in")
            self.play(Write(b_sol))

            self.wait_until_bookmark("neg_mult_in")
            self.play(TransformMatchingTex(f_tex, f_tex_neg))

        self.wait(4)

class Func_6_2_I_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([0, 4, 1], [-1, 1, 0.5], x_ticks=[], y_ticks=[]).shift(0.4*UP)
        plane = cords[0]
        self.add(cords)

        b_large = plane.plot(lambda x: (2**x)/16, color=PINK)
        b_small = plane.plot(lambda x: 0.5**x, color=BLUE)
        a_neg = plane.plot(lambda x: -(2**x)/16, color=GREEN)

        a = ValueTracker(1)
        f_grey = always_redraw(lambda: plane.plot(lambda x: a.get_value()*(2**x)/16, color=GREY))
        
        self.add(b_large, b_small, a_neg)

        f_tex = MathTex("f","(x)", "=", "", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        f_tex_neg = MathTex("f","(x)", "=", "-1\\cdot ", "b", "^x", color=c1t, font_size=fs2).move_to(f_tex)
        f_tex_neg[3].set_color(GREEN)
        b_vals = VGroup(Tex("$\\bullet$ $b>1$", color=PINK, font_size=fs2), Tex("$\\bullet$ $0<b<1$", color=BLUE, font_size=fs2), Tex("$\\bullet$ $b=???$", color=GREEN, font_size=fs2)).arrange(DOWN, buff=.4, aligned_edge=LEFT).next_to(f_tex, DOWN, buff=.3).set_x(-.4)
        b_sol = Tex("$\\bullet$ $b>1$", color=GREEN, font_size=fs2).move_to(b_vals[0]).shift(.6*DOWN)
        cursor = AltCursor(stroke_width=0.0, idle=True, y=-1.2)
        self.add(cursor, f_tex, b_vals)

        # Action Sequence
        with self.voiceover(text=self.translate("General.incorrect_4")+self.translate("Func_6_2.I4.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("highlight_pink")
            self.play(Circumscribe(b_large, color=RED, stroke_width=8), Unwrite(b_small), Unwrite(b_vals[1]), Unwrite(b_vals[2]))

            self.wait_until_bookmark("highlight_green")
            self.play(Circumscribe(a_neg, color=RED, stroke_width=8))

            self.wait_until_bookmark("show_reflection")
            self.add(f_grey)
            self.play(a.animate.set_value(-1), run_time=3)
            self.remove(f_grey)

            self.wait_until_bookmark("solution_in")
            self.play(Write(b_sol))

            self.wait_until_bookmark("neg_mult_in")
            self.play(TransformMatchingTex(f_tex, f_tex_neg))

        self.wait(4)

class Func_6_2_I_4_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([0, 4, 1], [-1, 1, 0.5], x_ticks=[], y_ticks=[]).shift(0.4*UP)
        plane = cords[0]
        self.add(cords)

        b_large = plane.plot(lambda x: (2**x)/16, color=PINK)
        b_small = plane.plot(lambda x: 0.5**x, color=BLUE)
        a_neg = plane.plot(lambda x: -(2**x)/16, color=GREEN)

        a = ValueTracker(1)
        f_grey = always_redraw(lambda: plane.plot(lambda x: a.get_value()*(2**x)/16, color=GREY))
        
        self.add(b_large, b_small, a_neg)

        f_tex = MathTex("f","(x)", "=", "", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        f_tex_neg = MathTex("f","(x)", "=", "-1\\cdot ", "b", "^x", color=c1t, font_size=fs2).move_to(f_tex)
        f_tex_neg[3].set_color(GREEN)
        b_vals = VGroup(Tex("$\\bullet$ $b>1$", color=PINK, font_size=fs2), Tex("$\\bullet$ $0<b<1$", color=BLUE, font_size=fs2), Tex("$\\bullet$ $b=???$", color=GREEN, font_size=fs2)).arrange(DOWN, buff=.4, aligned_edge=LEFT).next_to(f_tex, DOWN, buff=.3).set_x(-.4)
        b_sol = Tex("$\\bullet$ $b>1$", color=GREEN, font_size=fs2).move_to(b_vals[0]).shift(.6*DOWN)
        cursor = AltCursor(stroke_width=0.0, idle=True, y=-1.2)
        self.add(cursor, f_tex, b_vals)

        # Action Sequence
        with self.voiceover(text=self.translate("General.incorrect_4")+self.translate("Func_6_2.I4.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("highlight_pink")
            self.play(Circumscribe(b_large, color=RED, stroke_width=8), Unwrite(b_small), Unwrite(b_vals[1]), Unwrite(b_vals[2]))

            self.wait_until_bookmark("highlight_green")
            self.play(Circumscribe(a_neg, color=RED, stroke_width=8))

            self.wait_until_bookmark("show_reflection")
            self.add(f_grey)
            self.play(a.animate.set_value(-1), run_time=3)
            self.remove(f_grey)

            self.wait_until_bookmark("solution_in")
            self.play(Write(b_sol))

            self.wait_until_bookmark("neg_mult_in")
            self.play(TransformMatchingTex(f_tex, f_tex_neg))

        self.wait(4)

class Func_6_2_I_4_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([0, 4, 1], [-1, 1, 0.5], x_ticks=[], y_ticks=[]).shift(0.4*UP)
        plane = cords[0]
        self.add(cords)

        b_large = plane.plot(lambda x: (2**x)/16, color=PINK)
        b_small = plane.plot(lambda x: 0.5**x, color=BLUE)
        a_neg = plane.plot(lambda x: -(2**x)/16, color=GREEN)

        a = ValueTracker(1)
        f_grey = always_redraw(lambda: plane.plot(lambda x: a.get_value()*(2**x)/16, color=GREY))
        
        self.add(b_large, b_small, a_neg)

        f_tex = MathTex("f","(x)", "=", "", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        f_tex_neg = MathTex("f","(x)", "=", "-1\\cdot ", "b", "^x", color=c1t, font_size=fs2).move_to(f_tex)
        f_tex_neg[3].set_color(GREEN)
        b_vals = VGroup(Tex("$\\bullet$ $b>1$", color=PINK, font_size=fs2), Tex("$\\bullet$ $0<b<1$", color=BLUE, font_size=fs2), Tex("$\\bullet$ $b=???$", color=GREEN, font_size=fs2)).arrange(DOWN, buff=.4, aligned_edge=LEFT).next_to(f_tex, DOWN, buff=.3).set_x(-.4)
        b_sol = Tex("$\\bullet$ $b>1$", color=GREEN, font_size=fs2).move_to(b_vals[0]).shift(.6*DOWN)
        cursor = AltCursor(stroke_width=0.0, idle=True, y=-1.2)
        self.add(cursor, f_tex, b_vals)

        # Action Sequence
        with self.voiceover(text=self.translate("General.incorrect_4")+self.translate("Func_6_2.I4.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("highlight_pink")
            self.play(Circumscribe(b_large, color=RED, stroke_width=8), Unwrite(b_small), Unwrite(b_vals[1]), Unwrite(b_vals[2]))

            self.wait_until_bookmark("highlight_green")
            self.play(Circumscribe(a_neg, color=RED, stroke_width=8))

            self.wait_until_bookmark("show_reflection")
            self.add(f_grey)
            self.play(a.animate.set_value(-1), run_time=3)
            self.remove(f_grey)

            self.wait_until_bookmark("solution_in")
            self.play(Write(b_sol))

            self.wait_until_bookmark("neg_mult_in")
            self.play(TransformMatchingTex(f_tex, f_tex_neg))

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_5_W(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        cords = NumberLine(x_range=[0,6,1], color=c1t, stroke_color=c1t, unit_size=.4).set_y(1.6)
        cord_digits = VGroup()
        for idx in range(7):
            cord_digits.add(MathTex(idx, color=c1t, font_size=fs3).move_to(cords.n2p(idx)).shift(0.3*DOWN))

        warning_sign = ImageMobject(assets_folder / "img" /"warningsign.png").scale(.6).set_x(-5)

        f_tex = MathTex("f","(x)", "=", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1.2)
        f_tex_2 = f_tex.copy()
        b_pos = MathTex("b>0", color=c3t, font_size=fs2).next_to(f_tex, DOWN, buff=.6)
        f_tex_neg_1 = MathTex("f","(x)", "=", "-1", "^x", color=c1t, font_size=fs2).move_to(f_tex)
        f_tex_neg_1[-2].set_color(BLUE_D)
        b_neg = MathTex("b<0", color=c3t, font_size=fs2).next_to(f_tex, DOWN, buff=.6)
        cross = Cross(b_neg, color=RED, stroke_width = 3)
        b_neg_1 = MathTex("b=-1", color=BLUE_D, font_size=fs2).move_to(b_neg)
        cursor = AltCursor(stroke_width=0.0, idle=True, y=-1.2)
        self.add(cursor, f_tex)

        x_pos = ValueTracker(0)
        arrow = Arrow(start=cords.n2p(0)+1.4*UP, end=cords.n2p(0)+0.2*UP, color=BLACK, stroke_width=8).add_updater(lambda m: m.set_x(cords.n2p(x_pos.get_value())[0]))

        # Action Sequence
        with self.voiceover(text=self.translate("Func_6_2.I5.voiceover")
        ) as tracker:

            self.wait_until_bookmark("warning_in")
            self.add_shift_sound(0.5)
            self.play(warning_sign.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("warning_out")
            self.add_shift_sound(0.5)
            self.play(warning_sign.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("highlight_exp")
            self.play(Indicate(f_tex, color=RED, scale_factor=1.4), run_time=3)

            self.wait_until_bookmark("b_neg")
            self.play(Write(b_neg), run_time=.5)
            self.play(Write(cross))

            self.wait_until_bookmark("numberline_in")
            self.play(Create(cords), Create(cord_digits))

            self.wait_until_bookmark("b_neg_1")
            self.play(Uncreate(cross), run_time=.4)
            self.play(ReplacementTransform(b_neg, b_neg_1), ReplacementTransform(f_tex, f_tex_neg_1))

            self.wait_until_bookmark("f_3")
            self.add(arrow)
            self.play(x_pos.animate.set_value(3), run_time=1)
            fx_3 = MathTex("-1", "^3", "=", "-1", color=BLUE_D, font_size=fs2).next_to(arrow, UP, buff=.2)
            self.play(Write(fx_3), run_time=1)

            self.wait_until_bookmark("f_6")
            self.play(x_pos.animate.set_value(6), Unwrite(fx_3), run_time=1)
            fx_6 = MathTex("-1", "^6", "=", "1", color=BLUE_D, font_size=fs2).next_to(arrow, UP, buff=.2)
            self.play(Write(fx_6), run_time=1)
            self.wait(1.5)
            self.play(Unwrite(fx_6), run_time=1)

            self.wait_until_bookmark("x_half")
            self.play(x_pos.animate.set_value(0.5), run_time=1)

            self.wait_until_bookmark("plug_in_x_half")
            fx_half = MathTex("-1", "^{\\tfrac12}", "=", "\\sqrt{-1}", color=BLUE_D, font_size=fs2).next_to(arrow, UP, buff=.2)
            self.play(Write(fx_half), run_time=1)

            self.wait_until_bookmark("cross_x_half")
            cross = Cross(fx_half, color=RED, stroke_width = 3)
            self.play(Create(cross), run_time=.4)
            

            self.wait_until_bookmark("x_quarter")
            self.play(Unwrite(cross), Unwrite(fx_half), run_time=.4)
            self.play(x_pos.animate.set_value(0.25), run_time=1)

            self.wait_until_bookmark("plug_in_x_quarter")
            fx_quarter = MathTex("-1", "^{\\tfrac14}", "=", "\\sqrt[4]{-1}", color=BLUE_D, font_size=fs2).next_to(arrow, UP, buff=.2)
            self.play(Write(fx_quarter), run_time=1)

            self.wait_until_bookmark("cross_x_quarter")
            cross = Cross(fx_quarter, color=RED, stroke_width = 3)
            self.play(Create(cross), run_time=.4)

            self.wait_until_bookmark("cross_neg_1s")
            cross_1, cross_2 = Cross(f_tex_neg_1, color=RED, stroke_width=3), Cross(b_neg_1, color=RED, stroke_width=3)
            self.play(Create(cross_1), Create(cross_2), run_time=.4)

            self.wait_until_bookmark("func_general_pos")
            self.play(Unwrite(cross_1), Unwrite(cross_2), ReplacementTransform(f_tex_neg_1, f_tex_2), Unwrite(b_neg_1), Unwrite(arrow), Unwrite(fx_quarter), Unwrite(cross), run_time=.4)

            self.wait_until_bookmark("b_pos_in")
            self.play(Write(b_pos), run_time=.5)



        self.wait(4)

#####################################
#####################################
class Func_6_2_I_6_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a>1$", "$a<-1$", "$0<a<1$", "$-1<a<0$"],
            correctAnswerIndex = 2,
            questionText=self.translate("Func_6_2.I3.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        cords = self.add_cords([-1, 5, 1], [-2, 2, 1], x_ticks=[], y_ticks=[]).shift(0.4*UP)
        plane = cords[0]
        self.add(cords)

        plot = plane.plot(lambda x: -1*0.5**x, color=GREEN)

        f_tex = MathTex("f","(x)", "=","a", "\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        cursor = AltCursor(stroke_width=0.0, idle=True, y=-1.2)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(text=self.translate("6_2_I_6.q.voiceover")
        ) as tracker:

            self.wait_until_bookmark("plot_in")
            self.add_pencil_sound(1)
            self.play(Create(plot), run_time=1)

            self.wait_until_bookmark("term_in")
            self.play(Write(f_tex), run_time=1)

            self.wait_until_bookmark("factor_a")
            x,y,_ = f_tex[3].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y))

            self.wait_until_bookmark("factor_b")
            x,y,_ = f_tex[5].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y))
            self.wait(0.5)
            cursor.idle=True

        self.wait(4)


class Func_6_2_I_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        cords = self.add_cords([-1, 5, 1], [-2, 2, 1], x_ticks=[], y_ticks=[]).shift(0.4*UP)
        plane = cords[0]
        self.add(cords)

        plot_pos = plane.plot(lambda x: 0.5**x, color=BLUE)
        plot = plane.plot(lambda x: -1*0.5**x, color=GREEN)
        a = ValueTracker(1)
        plot_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*0.5**x, color=GREY))
        self.add(plot)

        f_tex = MathTex("f","(x)", "=","a", "\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        bullets = VGroup(Tex("$\\bullet$ $0<b<1$", color=c1t, font_size=fs2), Tex("$\\bullet$ $a<1$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.4, aligned_edge=LEFT).next_to(f_tex, DOWN, buff=.3).set_x(-.4)
        cursor = AltCursor(stroke_width=0.0, idle=True, y=-1.2)
        self.add(cursor, f_tex)

        # Action Sequence
        with self.voiceover(text=self.translate("General.incorrect_1")+self.translate("6_2_I_6.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("plot_in")
            self.add_pencil_sound(1)
            self.play(Create(plot_pos), run_time=1)


            self.wait_until_bookmark("mirror")
            self.add(plot_updated)
            self.play(a.animate.set_value(-1), run_time=1)
            self.remove(plot_updated)

            self.wait_until_bookmark("bullet_1_in")
            x,y,_ = bullets[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Uncreate(plot_pos), Write(bullets[0]), run_time=.5)

            self.wait_until_bookmark("bullet_2_in")
            x,y,_ = bullets[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(bullets[1]), run_time=.5)
            cursor.idle = True

        self.wait(4)

class Func_6_2_I_6_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        cords = self.add_cords([-1, 5, 1], [-2, 2, 1], x_ticks=[], y_ticks=[]).shift(0.4*UP)
        plane = cords[0]
        self.add(cords)

        plot_pos = plane.plot(lambda x: 0.5**x, color=BLUE)
        plot = plane.plot(lambda x: -1*0.5**x, color=GREEN)
        a = ValueTracker(1)
        plot_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*0.5**x, color=GREY))
        self.add(plot)

        f_tex = MathTex("f","(x)", "=","a", "\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        bullets = VGroup(Tex("$\\bullet$ $0<b<1$", color=c1t, font_size=fs2), Tex("$\\bullet$ $a<1$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.4, aligned_edge=LEFT).next_to(f_tex, DOWN, buff=.3).set_x(-.4)
        cursor = AltCursor(stroke_width=0.0, idle=True, y=-1.2)
        self.add(cursor, f_tex)

        # Action Sequence
        with self.voiceover(text=self.translate("General.incorrect_1")+self.translate("6_2_I_6.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("plot_in")
            self.add_pencil_sound(1)
            self.play(Create(plot_pos), run_time=1)


            self.wait_until_bookmark("mirror")
            self.add(plot_updated)
            self.play(a.animate.set_value(-1), run_time=1)
            self.remove(plot_updated)

            self.wait_until_bookmark("bullet_1_in")
            x,y,_ = bullets[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Uncreate(plot_pos), Write(bullets[0]), run_time=.5)

            self.wait_until_bookmark("bullet_2_in")
            x,y,_ = bullets[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(bullets[1]), run_time=.5)
            cursor.idle = True

        self.wait(4)

class Func_6_2_I_6_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        cords = self.add_cords([-1, 5, 1], [-2, 2, 1], x_ticks=[], y_ticks=[]).shift(0.4*UP)
        plane = cords[0]
        self.add(cords)

        plot_pos = plane.plot(lambda x: 0.5**x, color=BLUE)
        plot = plane.plot(lambda x: -1*0.5**x, color=GREEN)
        a = ValueTracker(1)
        plot_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*0.5**x, color=GREY))
        self.add(plot)

        f_tex = MathTex("f","(x)", "=","a", "\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        bullets = VGroup(Tex("$\\bullet$ $0<b<1$", color=c1t, font_size=fs2), Tex("$\\bullet$ $a<1$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.4, aligned_edge=LEFT).next_to(f_tex, DOWN, buff=.3).set_x(-.4)
        cursor = AltCursor(stroke_width=0.0, idle=True, y=-1.2)
        self.add(cursor, f_tex)

        # Action Sequence
        with self.voiceover(text=self.translate("General.correct_1")+self.translate("6_2_I_6.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("plot_in")
            self.add_pencil_sound(1)
            self.play(Create(plot_pos), run_time=1)


            self.wait_until_bookmark("mirror")
            self.add(plot_updated)
            self.play(a.animate.set_value(-1), run_time=1)
            self.remove(plot_updated)

            self.wait_until_bookmark("bullet_1_in")
            x,y,_ = bullets[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Uncreate(plot_pos), Write(bullets[0]), run_time=.5)

            self.wait_until_bookmark("bullet_2_in")
            x,y,_ = bullets[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(bullets[1]), run_time=.5)
            cursor.idle = True

        self.wait(4)

class Func_6_2_I_6_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        cords = self.add_cords([-1, 5, 1], [-2, 2, 1], x_ticks=[], y_ticks=[]).shift(0.4*UP)
        plane = cords[0]
        self.add(cords)

        plot_pos = plane.plot(lambda x: 0.5**x, color=BLUE)
        plot = plane.plot(lambda x: -1*0.5**x, color=GREEN)
        a = ValueTracker(1)
        plot_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()*0.5**x, color=GREY))
        self.add(plot)

        f_tex = MathTex("f","(x)", "=","a", "\\cdot ", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        bullets = VGroup(Tex("$\\bullet$ $0<b<1$", color=c1t, font_size=fs2), Tex("$\\bullet$ $a<1$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.4, aligned_edge=LEFT).next_to(f_tex, DOWN, buff=.3).set_x(-.4)
        cursor = AltCursor(stroke_width=0.0, idle=True, y=-1.2)
        self.add(cursor, f_tex)

        # Action Sequence
        with self.voiceover(text=self.translate("General.incorrect_1")+self.translate("6_2_I_6.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("plot_in")
            self.add_pencil_sound(1)
            self.play(Create(plot_pos), run_time=1)


            self.wait_until_bookmark("mirror")
            self.add(plot_updated)
            self.play(a.animate.set_value(-1), run_time=1)
            self.remove(plot_updated)

            self.wait_until_bookmark("bullet_1_in")
            x,y,_ = bullets[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Uncreate(plot_pos), Write(bullets[0]), run_time=.5)

            self.wait_until_bookmark("bullet_2_in")
            x,y,_ = bullets[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(bullets[1]), run_time=.5)
            cursor.idle = True

        self.wait(4)

#####################################
#####################################
class Func_6_2_I_7_X(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        alpaca = ImageMobject(assets_folder / "img" /"alpaca_thumbs.png").scale(.5).set_x(-5)

        cords = self.add_cords([-1, 5, 1], [-2, 2, 1], x_ticks=[], y_ticks=[]).shift(0.4*UP)
        plane = cords[0]
        self.add(cords)

        b_large = plane.plot(lambda x: (2**x)/16, color=GREEN)
        b_small = plane.plot(lambda x: 0.5**x, color=GREEN)
        neg_b_large = plane.plot(lambda x: -(2**x)/16, color=RED)
        neg_b_small = plane.plot(lambda x: -(0.5**x), color=RED)

        f_tex = MathTex("f","(x)", "="," ", " ", "b", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        f_tex_a = MathTex("f","(x)", "=","a", "\\cdot ", "b", "^x", color=c1t, font_size=fs2).move_to(f_tex)
        f_tex_a[3].set_color(RED)
        b_pos = MathTex("b>0", color=c3t, font_size=fs2).next_to(f_tex, DOWN, buff=.6)
        cursor = AltCursor(stroke_width=0.0, idle=True, y=-1.2)
        self.add(cursor, f_tex)

        # Action Sequence
        with self.voiceover(text=self.translate("Func_6_2.I7.voiceover")
        ) as tracker:

            self.wait_until_bookmark("highlight_b")
            x,y,_ = f_tex[5].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("b_large_in")
            x,y,_ = b_large.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(b_large.get_end()))._start_fading(2))
            self.add_pencil_sound(1)
            self.play(Create(b_large), run_time=1)

            self.wait_until_bookmark("b_small_in")
            x,y,_ = b_small.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(b_small.get_end()))._start_fading(2))
            self.add_pencil_sound(1)
            self.play(Create(b_small), run_time=1)

            self.wait_until_bookmark("b_pos_in")
            x,y,_ = b_pos.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)
            self.play(Write(b_pos), run_time=1)

            self.wait_until_bookmark("transform_func")
            self.play(TransformMatchingTex(f_tex, f_tex_a), run_time=1)

            self.wait_until_bookmark("highlight_a")
            x,y,_ = f_tex_a[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("b_large_neg")
            x,y,_ = neg_b_large.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(neg_b_large.get_end()))._start_fading(2))
            self.add_pencil_sound(1)
            self.play(Create(neg_b_large), run_time=1)

            self.wait_until_bookmark("b_small_neg")
            x,y,_ = neg_b_small.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)
            self.add(cursor.copy().add_updater(lambda m: m.move_to(neg_b_small.get_end()))._start_fading(2))
            self.add_pencil_sound(1)

            self.wait_until_bookmark("alpaca_in")
            self.add_shift_sound(.5)
            self.play(alpaca.animate.shift(5*RIGHT), Unwrite(neg_b_small), Unwrite(neg_b_large), Unwrite(b_pos), Unwrite(f_tex_a), Unwrite(b_small), Unwrite(b_large), Unwrite(cords), run_time=.5)


        self.wait(4)

##########################################################################




PROTOTYPES=[
##########################################################################CHAPTER: Exp. functions decay
    PagePrototypeVideo.from_scene(Func_6_2_I_1),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_2_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_1_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_2_1_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_1_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_1_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_1_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_2_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_2_2_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_2_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_2_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_2_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_2_X),
##########################################################################CHAPTER: Understanding the growth factor
    PagePrototypeVideo.from_scene(Func_6_2_I_3_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_3_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_d),
    PagePrototypeVideo.from_scene(Func_6_2_P_1_q),
    PagePrototypeQuestion.from_scene(Func_6_2_P_1_q),
    PagePrototypeVideo.from_scene(Func_6_2_P_1_a),
    PagePrototypeVideo.from_scene(Func_6_2_P_1_b),
    PagePrototypeVideo.from_scene(Func_6_2_P_1_c),
    PagePrototypeVideo.from_scene(Func_6_2_P_1_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_4_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_W),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_6_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_7_X),
##########################################################################CHAPTER: General form f(x)=a*b^x
    PagePrototypeVideo.from_scene(Func_6_2_I_3_1),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_2_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_3_2_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_2_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_2_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_3_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_3_3_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_3_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_3_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_3_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_3_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_4_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_3_4_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_4_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_4_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_4_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_4_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_5_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_3_5_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_5_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_5_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_5_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_5_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_3_6_X),
########################################################################### Chapter: Rules for exponential functions I - same base
    PagePrototypeVideo.from_scene(Func_6_2_I_4_1),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_2_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_4_2_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_2_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_2_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_2_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_2_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_3_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_4_3_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_3_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_3_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_3_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_3_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_4_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_4_4_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_4_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_4_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_4_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_4_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_5_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_4_5_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_5_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_5_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_5_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_5_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_4_6_X),
########################################################################### Chapter: Rules for exponential functions II - different base
    PagePrototypeVideo.from_scene(Func_6_2_I_5_1),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_2_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_5_2_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_2_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_2_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_2_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_2_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_3_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_5_3_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_3_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_3_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_3_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_3_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_4_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_5_4_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_4_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_4_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_4_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_4_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_5_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_5_5_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_5_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_5_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_5_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_5_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_5_6_X),
    ########################################################################## Chapter: Focus on percentages
    PagePrototypeVideo.from_scene(Func_6_2_I_6_1_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_6_1_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_1_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_1_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_1_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_1_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_2_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_6_2_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_2_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_2_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_2_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_2_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_3),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_4_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_6_4_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_4_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_4_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_4_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_4_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_5_q),
    PagePrototypeQuestion.from_scene(Func_6_2_I_6_5_q),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_5_a),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_5_b),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_5_c),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_5_d),
    PagePrototypeVideo.from_scene(Func_6_2_I_6_6_X),
]