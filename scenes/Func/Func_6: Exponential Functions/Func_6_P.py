# 6_P: Exponential Functions: Practice

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


# - recognizing exponential growth
# - Determining the growth factor
# - Modeling Terms using exponential functions
# - Graphs of exponential functions
# - Rules of exponential functions
# - interests and percentages
# - Rules of logarithms
# - LN (Natural Logarithm)
# - Modeling Terms using Logarithms



##################################### Exercise Level: Easy (1)
#####################################
class Func_6_P_recognize_growth_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval((self.translate("Func_6_P_recognize_growth_1.q.answer-options"))),
            correctAnswerIndex = 1,
            questionText=self.translate("Func_6_P_recognize_growth_1.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        three = ImageMobject(assets_folder / "img" / "three_baloony.png")
        three = three.scale(4/three.get_width()).set_x(-5).shift(.4*UP)

        cords = self.add_cords([0, 5, 1], [0, 32, 8], x_ticks=[], y_ticks=[])
        plane = cords[0]

        f_1 = plane.plot(lambda x: 14*x**0.5, color=ORANGE)
        f_2 = plane.plot(lambda x: 2**x, color=GREEN)
        f_3 = plane.plot(lambda x: (32/5)*x, color=BLUE)

        cursor = AltCursor(idle=True)
        self.add(cursor)

        expression = MathTex("3^{\\tfrac x2}", color=c1t, font_size=fs1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P_recognize_growth_1.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("three_in")
            self.add_shift_sound(0.5)
            self.play(three.animate.shift(5*RIGHT), run_time=0.5)
            self.wait(1)
            self.add_shift_sound(0.5)
            self.play(three.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("cords_in")
            self.play(Write(cords), run_time=.5)
            x,y,_ = plane.c2p(0,0)
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x,y), run_time=.5)

            self.wait_until_bookmark("orange_in")
            self.add(cursor.copy().add_updater(lambda m: m.move_to(f_1.get_end()))._start_fading(2))
            self.add_pencil_sound(1.5)
            self.play(Write(f_1))

            self.wait_until_bookmark("green_in")
            self.add(cursor.copy().add_updater(lambda m: m.move_to(f_2.get_end()))._start_fading(2))
            self.add_pencil_sound(1.5)
            self.play(Write(f_2))

            self.wait_until_bookmark("blue_in")
            self.add(cursor.copy().add_updater(lambda m: m.move_to(f_3.get_end()))._start_fading(2))
            self.add_pencil_sound(1.5)
            self.play(Write(f_3))


        self.wait(4)


class Func_6_P_recognize_growth_1_a(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        three = ImageMobject(assets_folder / "img" / "three_baloony.png")
        three = three.scale(4/three.get_width()).set_x(-5).shift(.4*UP)

        cords = self.add_cords([0, 5, 1], [0, 32, 8], x_ticks=[], y_ticks=[])
        plane = cords[0]
        self.add(cords)

        f_1 = plane.plot(lambda x: 14*x**0.5, color=ORANGE)
        f_2 = plane.plot(lambda x: 2**x, color=GREEN)
        f_3 = plane.plot(lambda x: (32/5)*x, color=BLUE)
        x,y,_ = plane.c2p(0,0)

        cursor = AltCursor(idle=True, x=x, y=y)
        self.add(cursor)

        expression = MathTex("3^{\\tfrac x2}", color=c1t, font_size=fs1)

        # Action Sequenceself.translate("General.incorrect_3")+
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_P_recognize_growth_1.a.voiceover")
        ) as tracker:
            

            self.wait_until_bookmark("blue_in")
            cursor.idle=False
            self.add(cursor.copy().add_updater(lambda m: m.move_to(f_3.get_end()))._start_fading(2))
            self.add_pencil_sound(1.5)
            self.play(Write(f_3))

            self.wait_until_bookmark("orange_in")
            self.add(cursor.copy().add_updater(lambda m: m.move_to(f_1.get_end()))._start_fading(2))
            self.add_pencil_sound(1.5)
            self.play(Write(f_1))

            self.wait_until_bookmark("slow_increase")
            cc = cursor.copy()._start_fading(8)
            self.play(MoveAlongPath(cc, f_1), run_time=6)


            self.wait_until_bookmark("green_in")
            self.add(cursor.copy().add_updater(lambda m: m.move_to(f_2.get_end()))._start_fading(2))
            self.add_pencil_sound(1.5)
            self.play(Write(f_2), f_1.animate.set_color(GREY), f_3.animate.set_color(GREY))

        self.wait(4)

class Func_6_P_recognize_growth_1_b(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        three = ImageMobject(assets_folder / "img" / "three_baloony.png")
        three = three.scale(4/three.get_width()).set_x(-5).shift(.4*UP)

        cords = self.add_cords([0, 5, 1], [0, 32, 8], x_ticks=[], y_ticks=[])
        plane = cords[0]
        self.add(cords)

        f_1 = plane.plot(lambda x: 14*x**0.5, color=ORANGE)
        f_2 = plane.plot(lambda x: 2**x, color=GREEN)
        f_3 = plane.plot(lambda x: (32/5)*x, color=BLUE)
        x,y,_ = plane.c2p(0,0)

        cursor = AltCursor(idle=True, x=x, y=y)
        self.add(cursor)

        expression = MathTex("3^{\\tfrac x2}", color=c1t, font_size=fs1)

        # Action Sequenceself.translate("General.incorrect_3")+
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_6_P_recognize_growth_1.a.voiceover")
        ) as tracker:
            

            self.wait_until_bookmark("blue_in")
            cursor.idle=False
            self.add(cursor.copy().add_updater(lambda m: m.move_to(f_3.get_end()))._start_fading(2))
            self.add_pencil_sound(1.5)
            self.play(Write(f_3))

            self.wait_until_bookmark("orange_in")
            self.add(cursor.copy().add_updater(lambda m: m.move_to(f_1.get_end()))._start_fading(2))
            self.add_pencil_sound(1.5)
            self.play(Write(f_1))

            self.wait_until_bookmark("slow_increase")
            cc = cursor.copy()._start_fading(8)
            self.play(MoveAlongPath(cc, f_1), run_time=6)


            self.wait_until_bookmark("green_in")
            self.add(cursor.copy().add_updater(lambda m: m.move_to(f_2.get_end()))._start_fading(2))
            self.add_pencil_sound(1.5)
            self.play(Write(f_2), f_1.animate.set_color(GREY), f_3.animate.set_color(GREY))

        self.wait(4)

class Func_6_P_recognize_growth_1_c(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        three = ImageMobject(assets_folder / "img" / "three_baloony.png")
        three = three.scale(4/three.get_width()).set_x(-5).shift(.4*UP)

        cords = self.add_cords([0, 5, 1], [0, 32, 8], x_ticks=[], y_ticks=[])
        plane = cords[0]
        self.add(cords)

        f_1 = plane.plot(lambda x: 14*x**0.5, color=ORANGE)
        f_2 = plane.plot(lambda x: 2**x, color=GREEN)
        f_3 = plane.plot(lambda x: (32/5)*x, color=BLUE)
        x,y,_ = plane.c2p(0,0)

        cursor = AltCursor(idle=True, x=x, y=y)
        self.add(cursor)

        expression = MathTex("3^{\\tfrac x2}", color=c1t, font_size=fs1)

        # Action Sequenceself.translate("General.incorrect_3")+
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_P_recognize_growth_1.a.voiceover")
        ) as tracker:
            

            self.wait_until_bookmark("blue_in")
            cursor.idle=False
            self.add(cursor.copy().add_updater(lambda m: m.move_to(f_3.get_end()))._start_fading(2))
            self.add_pencil_sound(1.5)
            self.play(Write(f_3))

            self.wait_until_bookmark("orange_in")
            self.add(cursor.copy().add_updater(lambda m: m.move_to(f_1.get_end()))._start_fading(2))
            self.add_pencil_sound(1.5)
            self.play(Write(f_1))

            self.wait_until_bookmark("slow_increase")
            cc = cursor.copy()._start_fading(8)
            self.play(MoveAlongPath(cc, f_1), run_time=6)


            self.wait_until_bookmark("green_in")
            self.add(cursor.copy().add_updater(lambda m: m.move_to(f_2.get_end()))._start_fading(2))
            self.add_pencil_sound(1.5)
            self.play(Write(f_2), f_1.animate.set_color(GREY), f_3.animate.set_color(GREY))

        self.wait(4)

class Func_6_P_recognize_growth_1_d(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        three = ImageMobject(assets_folder / "img" / "three_baloony.png")
        three = three.scale(4/three.get_width()).set_x(-5).shift(.4*UP)

        cords = self.add_cords([0, 5, 1], [0, 32, 8], x_ticks=[], y_ticks=[])
        plane = cords[0]
        self.add(cords)

        f_1 = plane.plot(lambda x: 14*x**0.5, color=ORANGE)
        f_2 = plane.plot(lambda x: 2**x, color=GREEN)
        f_3 = plane.plot(lambda x: (32/5)*x, color=BLUE)
        x,y,_ = plane.c2p(0,0)

        cursor = AltCursor(idle=True, x=x, y=y)
        self.add(cursor)

        expression = MathTex("3^{\\tfrac x2}", color=c1t, font_size=fs1)

        # Action Sequenceself.translate("General.incorrect_3")+
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_P_recognize_growth_1.a.voiceover")
        ) as tracker:
            

            self.wait_until_bookmark("blue_in")
            cursor.idle=False
            self.add(cursor.copy().add_updater(lambda m: m.move_to(f_3.get_end()))._start_fading(2))
            self.add_pencil_sound(1.5)
            self.play(Write(f_3))

            self.wait_until_bookmark("orange_in")
            self.add(cursor.copy().add_updater(lambda m: m.move_to(f_1.get_end()))._start_fading(2))
            self.add_pencil_sound(1.5)
            self.play(Write(f_1))

            self.wait_until_bookmark("slow_increase")
            cc = cursor.copy()._start_fading(8)
            self.play(MoveAlongPath(cc, f_1), run_time=6)


            self.wait_until_bookmark("green_in")
            self.add(cursor.copy().add_updater(lambda m: m.move_to(f_2.get_end()))._start_fading(2))
            self.add_pencil_sound(1.5)
            self.play(Write(f_2), f_1.animate.set_color(GREY), f_3.animate.set_color(GREY))

        self.wait(4)


#####################################
#####################################
class Func_6_P_recognize_growth_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ast.literal_eval((self.translate("Func_6_P.recognize_growth.2.q.answer-options"))),
            correctAnswerIndex = 1,
            questionText=self.translate("Func_6_P.recognize_growth.2.q.question-text")
        )
#out of <bookmark mark="overview"/>these three situations, which is not described by an exponential function?
    #Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        grid = VGroup(VGroup(*[Circle() for _ in range(3)]).arrange(DOWN, buff=.4), VGroup(*[Circle() for _ in range(3)]).arrange(DOWN, buff=.4)).arrange(RIGHT, buff=.4).scale(.7).set_y(0.8)
        x_1,x_2 = grid.get_left()[0], grid.get_right()[0]
        y_1, y_2 = (grid[0][0].get_y()+grid[0][1].get_y())/2, (grid[0][1].get_y()+grid[0][2].get_y())/2
        line_1, line_2 = Line([x_1,y_1,0], [x_2, y_1,0], color=c4t), Line([x_1,y_2,0], [x_2, y_2,0], color=c4t)

        woman_not = ImageMobject(assets_folder / "img" / "woman_not.png")
        woman_not = woman_not.scale(4/woman_not.get_width()).set_x(-5).shift(.4*UP)
        one = ImageMobject(assets_folder / "img" / "one_baloony.png")
        one = one.scale(4/one.get_width()).set_x(-5).shift(.4*UP)
        two = ImageMobject(assets_folder / "img" / "two_baloony.png")
        two = two.scale(4/two.get_width()).set_x(-5).shift(.4*UP)
        three = ImageMobject(assets_folder / "img" / "three_baloony.png")
        three = three.scale(4/three.get_width()).set_x(-5).shift(.4*UP)

        apples = ImageMobject(assets_folder / "img" / "apple_basket.png")
        apples = apples.scale(2/apples.get_width()).set_x(-5).shift(.4*UP)
        dollars = ImageMobject(assets_folder / "img" / "dollar_stack.png")
        dollars = dollars.scale(1.6/dollars.get_width()).set_x(-5).shift(.4*UP)
        gold = ImageMobject(assets_folder / "img" / "gold_bar.png")
        gold = gold.scale(1.6/gold.get_width()).set_x(-5).shift(.4*UP)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.recognize_growth.2.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("not_in")
            self.add_shift_sound(0.5)
            self.play(woman_not.animate.shift(5*RIGHT), run_time=0.5)
            self.wait(1)
            self.add_shift_sound(0.5)
            self.play(woman_not.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("situation_1")
            self.play(one.animate.shift(5*RIGHT), run_time=0.5)
            self.add_shift_sound(0.5)
            
            self.wait_until_bookmark("apples_in")
            self.play(apples.animate.shift(5*RIGHT), one.animate.scale(.15), run_time=0.5)

            self.wait_until_bookmark("sit_1_out")
            loc_1 = grid[0][0].get_center()
            loc_2 = grid[1][0].get_center()
            self.play(one.animate.move_to(loc_1), apples.animate.move_to(loc_2), run_time=.4)

            self.wait_until_bookmark("situation_2")
            self.add_shift_sound(0.5)
            self.play(two.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("dollars_in")
            self.play(dollars.animate.shift(5*RIGHT), two.animate.scale(.15), run_time=0.5)

            self.wait_until_bookmark("sit_2_out")
            loc_1 = grid[0][1].get_center()
            loc_2 = grid[1][1].get_center()
            self.play(Write(line_1), two.animate.move_to(loc_1), dollars.animate.move_to(loc_2), run_time=.4)

            self.wait_until_bookmark("situation_3")
            self.add_shift_sound(0.5)
            self.play(three.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("gold_in")
            self.play(gold.animate.shift(5*RIGHT), three.animate.scale(.15), run_time=0.5)

            self.wait_until_bookmark("sit_3_out")
            loc_1 = grid[0][2].get_center()
            loc_2 = grid[1][2].get_center()
            self.play(Write(line_2), three.animate.move_to(loc_1), gold.animate.move_to(loc_2), run_time=.4)

        self.wait(5)


class Func_6_P_recognize_growth_2_a(SophiaCursorScene):

    #Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        grid = VGroup(VGroup(*[Circle() for _ in range(3)]).arrange(DOWN, buff=.4), VGroup(*[Circle() for _ in range(3)]).arrange(DOWN, buff=.4)).arrange(RIGHT, buff=.4).scale(.7).set_y(0.8)
        x_1,x_2 = grid.get_left()[0], grid.get_right()[0]
        y_1, y_2 = (grid[0][0].get_y()+grid[0][1].get_y())/2, (grid[0][1].get_y()+grid[0][2].get_y())/2
        line_1, line_2 = Line([x_1,y_1,0], [x_2, y_1,0], color=c4t), Line([x_1,y_2,0], [x_2, y_2,0], color=c4t)

        woman_not = ImageMobject(assets_folder / "img" / "woman_not.png")
        woman_not = woman_not.scale(.6/woman_not.get_width()).set_x(-5).shift(.4*UP)
        one = ImageMobject(assets_folder / "img" / "one_baloony.png")
        one = one.scale(.6/one.get_width()).set_x(-5).move_to(grid[0][0])
        two = ImageMobject(assets_folder / "img" / "two_baloony.png")
        two = two.scale(.6/two.get_width()).set_x(-5).shift(.4*UP).move_to(grid[0][1])
        three = ImageMobject(assets_folder / "img" / "three_baloony.png")
        three = three.scale(.6/three.get_width()).set_x(-5).shift(.4*UP).move_to(grid[0][2])

        apples = ImageMobject(assets_folder / "img" / "apple_basket.png")
        apples = apples.scale(2/apples.get_width()).set_x(-5).move_to(grid[1][0])
        dollars = ImageMobject(assets_folder / "img" / "dollar_stack.png")
        dollars = dollars.scale(1.6/dollars.get_width()).set_x(-5).move_to(grid[1][1])
        gold = ImageMobject(assets_folder / "img" / "gold_bar.png")
        gold = gold.scale(1.6/gold.get_width()).set_x(-5).move_to(grid[1][2])

        green_check_1 = ImageMobject(assets_folder / "img" / "green_check.png")
        green_check_1 = green_check_1.scale(2/green_check_1.get_width()).move_to((apples.get_center()+one.get_center())/2)
        red_cross = ImageMobject(assets_folder / "img" / "red_cross.png")
        red_cross = red_cross.scale(2/red_cross.get_width()).move_to((dollars.get_center()+two.get_center())/2)
        green_check_2 = green_check_1.copy().move_to((gold.get_center()+three.get_center())/2)

        # Action Sequence

        self.add(line_1, line_2, one, two, three, apples, dollars, gold)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_P.recognize_growth.2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("situation_1")
            self.play(FadeIn(green_check_1, scale=3))

            self.wait_until_bookmark("situation_2")
            self.play(FadeIn(red_cross, scale=3))

            self.wait_until_bookmark("situation_3")
            self.play(FadeIn(green_check_2, scale=3))

        self.wait(4)

class Func_6_P_recognize_growth_2_b(SophiaCursorScene):

    #Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        grid = VGroup(VGroup(*[Circle() for _ in range(3)]).arrange(DOWN, buff=.4), VGroup(*[Circle() for _ in range(3)]).arrange(DOWN, buff=.4)).arrange(RIGHT, buff=.4).scale(.7).set_y(0.8)
        x_1,x_2 = grid.get_left()[0], grid.get_right()[0]
        y_1, y_2 = (grid[0][0].get_y()+grid[0][1].get_y())/2, (grid[0][1].get_y()+grid[0][2].get_y())/2
        line_1, line_2 = Line([x_1,y_1,0], [x_2, y_1,0], color=c4t), Line([x_1,y_2,0], [x_2, y_2,0], color=c4t)

        woman_not = ImageMobject(assets_folder / "img" / "woman_not.png")
        woman_not = woman_not.scale(.6/woman_not.get_width()).set_x(-5).shift(.4*UP)
        one = ImageMobject(assets_folder / "img" / "one_baloony.png")
        one = one.scale(.6/one.get_width()).set_x(-5).move_to(grid[0][0])
        two = ImageMobject(assets_folder / "img" / "two_baloony.png")
        two = two.scale(.6/two.get_width()).set_x(-5).shift(.4*UP).move_to(grid[0][1])
        three = ImageMobject(assets_folder / "img" / "three_baloony.png")
        three = three.scale(.6/three.get_width()).set_x(-5).shift(.4*UP).move_to(grid[0][2])

        apples = ImageMobject(assets_folder / "img" / "apple_basket.png")
        apples = apples.scale(2/apples.get_width()).set_x(-5).move_to(grid[1][0])
        dollars = ImageMobject(assets_folder / "img" / "dollar_stack.png")
        dollars = dollars.scale(1.6/dollars.get_width()).set_x(-5).move_to(grid[1][1])
        gold = ImageMobject(assets_folder / "img" / "gold_bar.png")
        gold = gold.scale(1.6/gold.get_width()).set_x(-5).move_to(grid[1][2])

        green_check_1 = ImageMobject(assets_folder / "img" / "green_check.png")
        green_check_1 = green_check_1.scale(2/green_check_1.get_width()).move_to((apples.get_center()+one.get_center())/2)
        red_cross = ImageMobject(assets_folder / "img" / "red_cross.png")
        red_cross = red_cross.scale(2/red_cross.get_width()).move_to((dollars.get_center()+two.get_center())/2)
        green_check_2 = green_check_1.copy().move_to((gold.get_center()+three.get_center())/2)

        # Action Sequence

        self.add(line_1, line_2, one, two, three, apples, dollars, gold)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_6_P.recognize_growth.2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("situation_1")
            self.play(FadeIn(green_check_1, scale=3))

            self.wait_until_bookmark("situation_2")
            self.play(FadeIn(red_cross, scale=3))

            self.wait_until_bookmark("situation_3")
            self.play(FadeIn(green_check_2, scale=3))

        self.wait(4)

class Func_6_P_recognize_growth_2_c(SophiaCursorScene):

    #Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        grid = VGroup(VGroup(*[Circle() for _ in range(3)]).arrange(DOWN, buff=.4), VGroup(*[Circle() for _ in range(3)]).arrange(DOWN, buff=.4)).arrange(RIGHT, buff=.4).scale(.7).set_y(0.8)
        x_1,x_2 = grid.get_left()[0], grid.get_right()[0]
        y_1, y_2 = (grid[0][0].get_y()+grid[0][1].get_y())/2, (grid[0][1].get_y()+grid[0][2].get_y())/2
        line_1, line_2 = Line([x_1,y_1,0], [x_2, y_1,0], color=c4t), Line([x_1,y_2,0], [x_2, y_2,0], color=c4t)

        woman_not = ImageMobject(assets_folder / "img" / "woman_not.png")
        woman_not = woman_not.scale(.6/woman_not.get_width()).set_x(-5).shift(.4*UP)
        one = ImageMobject(assets_folder / "img" / "one_baloony.png")
        one = one.scale(.6/one.get_width()).set_x(-5).move_to(grid[0][0])
        two = ImageMobject(assets_folder / "img" / "two_baloony.png")
        two = two.scale(.6/two.get_width()).set_x(-5).shift(.4*UP).move_to(grid[0][1])
        three = ImageMobject(assets_folder / "img" / "three_baloony.png")
        three = three.scale(.6/three.get_width()).set_x(-5).shift(.4*UP).move_to(grid[0][2])

        apples = ImageMobject(assets_folder / "img" / "apple_basket.png")
        apples = apples.scale(2/apples.get_width()).set_x(-5).move_to(grid[1][0])
        dollars = ImageMobject(assets_folder / "img" / "dollar_stack.png")
        dollars = dollars.scale(1.6/dollars.get_width()).set_x(-5).move_to(grid[1][1])
        gold = ImageMobject(assets_folder / "img" / "gold_bar.png")
        gold = gold.scale(1.6/gold.get_width()).set_x(-5).move_to(grid[1][2])

        green_check_1 = ImageMobject(assets_folder / "img" / "green_check.png")
        green_check_1 = green_check_1.scale(2/green_check_1.get_width()).move_to((apples.get_center()+one.get_center())/2)
        red_cross = ImageMobject(assets_folder / "img" / "red_cross.png")
        red_cross = red_cross.scale(2/red_cross.get_width()).move_to((dollars.get_center()+two.get_center())/2)
        green_check_2 = green_check_1.copy().move_to((gold.get_center()+three.get_center())/2)

        # Action Sequence

        self.add(line_1, line_2, one, two, three, apples, dollars, gold)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_P.recognize_growth.2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("situation_1")
            self.play(FadeIn(green_check_1, scale=3))

            self.wait_until_bookmark("situation_2")
            self.play(FadeIn(red_cross, scale=3))

            self.wait_until_bookmark("situation_3")
            self.play(FadeIn(green_check_2, scale=3))

        self.wait(4)

class Func_6_P_recognize_growth_2_d(SophiaCursorScene):

    #Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        grid = VGroup(VGroup(*[Circle() for _ in range(3)]).arrange(DOWN, buff=.4), VGroup(*[Circle() for _ in range(3)]).arrange(DOWN, buff=.4)).arrange(RIGHT, buff=.4).scale(.7).set_y(0.8)
        x_1,x_2 = grid.get_left()[0], grid.get_right()[0]
        y_1, y_2 = (grid[0][0].get_y()+grid[0][1].get_y())/2, (grid[0][1].get_y()+grid[0][2].get_y())/2
        line_1, line_2 = Line([x_1,y_1,0], [x_2, y_1,0], color=c4t), Line([x_1,y_2,0], [x_2, y_2,0], color=c4t)

        woman_not = ImageMobject(assets_folder / "img" / "woman_not.png")
        woman_not = woman_not.scale(.6/woman_not.get_width()).set_x(-5).shift(.4*UP)
        one = ImageMobject(assets_folder / "img" / "one_baloony.png")
        one = one.scale(.6/one.get_width()).set_x(-5).move_to(grid[0][0])
        two = ImageMobject(assets_folder / "img" / "two_baloony.png")
        two = two.scale(.6/two.get_width()).set_x(-5).shift(.4*UP).move_to(grid[0][1])
        three = ImageMobject(assets_folder / "img" / "three_baloony.png")
        three = three.scale(.6/three.get_width()).set_x(-5).shift(.4*UP).move_to(grid[0][2])

        apples = ImageMobject(assets_folder / "img" / "apple_basket.png")
        apples = apples.scale(2/apples.get_width()).set_x(-5).move_to(grid[1][0])
        dollars = ImageMobject(assets_folder / "img" / "dollar_stack.png")
        dollars = dollars.scale(1.6/dollars.get_width()).set_x(-5).move_to(grid[1][1])
        gold = ImageMobject(assets_folder / "img" / "gold_bar.png")
        gold = gold.scale(1.6/gold.get_width()).set_x(-5).move_to(grid[1][2])

        green_check_1 = ImageMobject(assets_folder / "img" / "green_check.png")
        green_check_1 = green_check_1.scale(2/green_check_1.get_width()).move_to((apples.get_center()+one.get_center())/2)
        red_cross = ImageMobject(assets_folder / "img" / "red_cross.png")
        red_cross = red_cross.scale(2/red_cross.get_width()).move_to((dollars.get_center()+two.get_center())/2)
        green_check_2 = green_check_1.copy().move_to((gold.get_center()+three.get_center())/2)

        # Action Sequence

        self.add(line_1, line_2, one, two, three, apples, dollars, gold)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_P.recognize_growth.2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("situation_1")
            self.play(FadeIn(green_check_1, scale=3))

            self.wait_until_bookmark("situation_2")
            self.play(FadeIn(red_cross, scale=3))

            self.wait_until_bookmark("situation_3")
            self.play(FadeIn(green_check_2, scale=3))

        self.wait(4)


#####################################
#####################################
class Func_6_P_recognize_growth_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$f(x)=2^{x-1}$", "$h(y)=2^{y/2}$", "$g(z)=z^{x+1}$", self.translate("Func_6_P.recognize_growth.3.q.none")],
            correctAnswerIndex = 2,
            questionText=self.translate("Func_6_P.recognize_growth.3.q.question-text")    
        )
    
    #Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        func_1 = MathTex("f(x)=2^{x-1}", color=c1t, font_size=fs1)
        func_2 = MathTex("h(y)=2^{y/2}", color=c1t, font_size=fs1)
        func_3 = MathTex("g(z)=z^{x+1}", color=c1t, font_size=fs1)
        funcs = VGroup(func_1, func_2, func_3).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.recognize_growth.3.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f_1_in")
            self.play(Write(func_1))

            self.wait_until_bookmark("f_2_in")
            self.play(Write(func_2))

            self.wait_until_bookmark("f_3_in")
            self.play(Write(func_3))

        self.wait(5)


class Func_6_P_recognize_growth_3_a(SophiaCursorScene):
    
    #Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        func_1 = MathTex("f(x)=", "2", "^{x-1}", color=c1t, font_size=fs1)
        func_2 = MathTex("h(y)=", "2", "^{y/2}", color=c1t, font_size=fs1)
        func_3 = MathTex("g(z)=", "z", "^{x+1}", color=c1t, font_size=fs1)
        funcs = VGroup(func_1, func_2, func_3).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1)
        self.add(funcs)

        cursor=AltCursor(idle=True, y=-1)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_6_P.recognize_growth.3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("highlight_f_1")
            self.play(func_1.animate.set_color(BLUE_D))

            self.wait_until_bookmark("f1_base")
            x,y,_ = func_1[1].get_center()+.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("f1_exponent")
            x,y,_ = func_1[2].get_center()+.3*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("highlight_f_2")
            self.play(func_2.animate.set_color(BLUE_D), func_1.animate.set_color(GREEN_D))

            self.wait_until_bookmark("f2_base")
            x,y,_ = func_2[1].get_center()+.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("f2_exponent")
            x,y,_ = func_2[2].get_center()+.3*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("highlight_f_3")
            self.play(func_3.animate.set_color(BLUE_D), func_2.animate.set_color(GREEN_D))

            self.wait_until_bookmark("z_not_in_exponent")
            x,y,_ = func_3[1].get_center()+.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("done")
            self.play(func_3.animate.set_color(RED), CursorMoveTo(cursor, 0, -1), run_time=.6)
            cursor.idle=True

        self.wait(5)

class Func_6_P_recognize_growth_3_b(SophiaCursorScene):
    
    #Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        func_1 = MathTex("f(x)=", "2", "^{x-1}", color=c1t, font_size=fs1)
        func_2 = MathTex("h(y)=", "2", "^{y/2}", color=c1t, font_size=fs1)
        func_3 = MathTex("g(z)=", "z", "^{x+1}", color=c1t, font_size=fs1)
        funcs = VGroup(func_1, func_2, func_3).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1)
        self.add(funcs)

        cursor=AltCursor(idle=True, y=-1)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_6_P.recognize_growth.3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("highlight_f_1")
            self.play(func_1.animate.set_color(BLUE_D))

            self.wait_until_bookmark("f1_base")
            x,y,_ = func_1[1].get_center()+.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("f1_exponent")
            x,y,_ = func_1[2].get_center()+.3*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("highlight_f_2")
            self.play(func_2.animate.set_color(BLUE_D), func_1.animate.set_color(GREEN_D))

            self.wait_until_bookmark("f2_base")
            x,y,_ = func_2[1].get_center()+.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("f2_exponent")
            x,y,_ = func_2[2].get_center()+.3*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("highlight_f_3")
            self.play(func_3.animate.set_color(BLUE_D), func_2.animate.set_color(GREEN_D))

            self.wait_until_bookmark("z_not_in_exponent")
            x,y,_ = func_3[1].get_center()+.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("done")
            self.play(func_3.animate.set_color(RED), CursorMoveTo(cursor, 0, -1), run_time=.6)
            cursor.idle=True

        self.wait(5)

class Func_6_P_recognize_growth_3_c(SophiaCursorScene):
    
    #Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        func_1 = MathTex("f(x)=", "2", "^{x-1}", color=c1t, font_size=fs1)
        func_2 = MathTex("h(y)=", "2", "^{y/2}", color=c1t, font_size=fs1)
        func_3 = MathTex("g(z)=", "z", "^{x+1}", color=c1t, font_size=fs1)
        funcs = VGroup(func_1, func_2, func_3).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1)
        self.add(funcs)

        cursor=AltCursor(idle=True, y=-1)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_1")+self.translate("Func_6_P.recognize_growth.3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("highlight_f_1")
            self.play(func_1.animate.set_color(BLUE_D))

            self.wait_until_bookmark("f1_base")
            x,y,_ = func_1[1].get_center()+.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("f1_exponent")
            x,y,_ = func_1[2].get_center()+.3*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("highlight_f_2")
            self.play(func_2.animate.set_color(BLUE_D), func_1.animate.set_color(GREEN_D))

            self.wait_until_bookmark("f2_base")
            x,y,_ = func_2[1].get_center()+.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("f2_exponent")
            x,y,_ = func_2[2].get_center()+.3*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("highlight_f_3")
            self.play(func_3.animate.set_color(BLUE_D), func_2.animate.set_color(GREEN_D))

            self.wait_until_bookmark("z_not_in_exponent")
            x,y,_ = func_3[1].get_center()+.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("done")
            self.play(func_3.animate.set_color(RED), CursorMoveTo(cursor, 0, -1), run_time=.6)
            cursor.idle=True

        self.wait(5)

class Func_6_P_recognize_growth_3_d(SophiaCursorScene):
    
    #Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        func_1 = MathTex("f(x)=", "2", "^{x-1}", color=c1t, font_size=fs1)
        func_2 = MathTex("h(y)=", "2", "^{y/2}", color=c1t, font_size=fs1)
        func_3 = MathTex("g(z)=", "z", "^{x+1}", color=c1t, font_size=fs1)
        funcs = VGroup(func_1, func_2, func_3).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1)
        self.add(funcs)

        cursor=AltCursor(idle=True, y=-1)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_6_P.recognize_growth.3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("highlight_f_1")
            self.play(func_1.animate.set_color(BLUE_D))

            self.wait_until_bookmark("f1_base")
            x,y,_ = func_1[1].get_center()+.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("f1_exponent")
            x,y,_ = func_1[2].get_center()+.3*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("highlight_f_2")
            self.play(func_2.animate.set_color(BLUE_D), func_1.animate.set_color(GREEN_D))

            self.wait_until_bookmark("f2_base")
            x,y,_ = func_2[1].get_center()+.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("f2_exponent")
            x,y,_ = func_2[2].get_center()+.3*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("highlight_f_3")
            self.play(func_3.animate.set_color(BLUE_D), func_2.animate.set_color(GREEN_D))

            self.wait_until_bookmark("z_not_in_exponent")
            x,y,_ = func_3[1].get_center()+.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.6)

            self.wait_until_bookmark("done")
            self.play(func_3.animate.set_color(RED), CursorMoveTo(cursor, 0, -1), run_time=.6)
            cursor.idle=True

        self.wait(5)


###################################################################Exercises for Growth Factor Chapter ##########################

##################################### General Classes
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

##################################### Specific Classes
#####################################
#####################################
class Func_6_2_P_2_q(GrowthFactorToGraphQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_6_2.P2.q.answer-options")),
            correctAnswerIndex=0,
            questionText=self.translate("Func_6_2.P2.q.questionText")
        )

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.a = 2
        self.color=PURPLE
        self.intro = self.translate("Func_6_2_P_2_q.intro")

        self.f1 = lambda x: self.a**x
        self.f2 = lambda x: x**3
        self.f3 = lambda x: 50/(self.a**x)

        self.color_1_name = self.translate("Func_6_2_P_2_q.color_1_name")
        self.color_2_name = self.translate("Func_6_2_P_2_q.color_2_name")
        self.color_3_name = self.translate("Func_6_2_P_2_q.color_3_name")

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
        self.intro = self.translate("Func_6_2_P_2_a.intro")

        self.f1 = lambda x: self.a**x
        self.f2 = lambda x: x**3
        self.f3 = lambda x: 50/(self.a**x)

        self.color_1_name = self.translate("Func_6_2_P_2_q.color_1_name")
        self.color_2_name = self.translate("Func_6_2_P_2_q.color_2_name")
        self.color_3_name = self.translate("Func_6_2_P_2_q.color_3_name")

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
        self.intro = self.translate("Func_6_2_P_2_b.intro")

        self.f1 = lambda x: self.a**x
        self.f2 = lambda x: x**3
        self.f3 = lambda x: 50/(self.a**x)

        self.color_1_name = self.translate("Func_6_2_P_2_q.color_1_name")
        self.color_2_name = self.translate("Func_6_2_P_2_q.color_2_name")
        self.color_3_name = self.translate("Func_6_2_P_2_q.color_3_name")

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
        self.intro = self.translate("Func_6_2_P_2_b.intro")

        self.f1 = lambda x: self.a**x
        self.f2 = lambda x: x**3
        self.f3 = lambda x: 50/(self.a**x)

        self.color_1_name = self.translate("Func_6_2_P_2_q.color_1_name")
        self.color_2_name = self.translate("Func_6_2_P_2_q.color_2_name")
        self.color_3_name = self.translate("Func_6_2_P_2_q.color_3_name")

        self.c1 = PURPLE
        self.c2 = BLUE
        self.c3 = GREEN

        self.idx_correct = 0

        super().construct()

#####################################
#####################################
class Func_6_2_P_3_q(GraphToGrowthFactorQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a=3$", "$a=2$", "$a=\\frac{1}{2}$", "$a=-2$"],
            correctAnswerIndex = 1,
            questionText=self.translate("Func_6_2.P3.q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=3,
                answerOptionMatcher="$a=\key{a}$",
                answerOptionsTypes={
                    "a": "number"
                },
                answerOptionDescriptions={
                    "a": self.translate("Func_6_2.P3.q.answer-option-description")
                }
            )
        )

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 16, 4], x_ticks=[1,2,3,4], y_ticks=[4,8,12,16])
        self.a = 2
        self.color=GREEN
        self.intro = self.translate("Func_6_2_P_3_q.intro")

        super().construct()

class Func_6_2_P_3_a(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 16, 4], x_ticks=[1,2,3,4], y_ticks=[4,8,12,16])
        self.a = 2
        self.x_max = 4
        self.color=GREEN
        self.intro = self.translate("Func_6_2_P_3_a.intro")

        super().construct()

class Func_6_2_P_3_b(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 16, 4], x_ticks=[1,2,3,4], y_ticks=[4,8,12,16])
        self.a = 2
        self.x_max = 4
        self.color=GREEN
        self.intro = self.translate("Func_6_2_P_3_b.intro")

        super().construct()

class Func_6_2_P_3_c(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 16, 4], x_ticks=[1,2,3,4], y_ticks=[4,8,12,16])
        self.a = 2
        self.x_max = 4
        self.color=GREEN
        self.intro = self.translate("Func_6_2_P_3_a.intro")

        super().construct()

class Func_6_2_P_3_d(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 16, 4], x_ticks=[1,2,3,4], y_ticks=[4,8,12,16])
        self.a = 2
        self.x_max = 4
        self.color=GREEN
        self.intro = self.translate("Func_6_2_P_3_a.intro")

        super().construct()


#####################################
#####################################
class Func_6_2_P_4_q(GrowthFactorToGraphQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_6_2.P4.q.answer-options")),
            correctAnswerIndex=2,
            questionText=self.translate("Func_6_2.P4.q.question-text")
        )

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 1, 0.25], x_ticks=[1,2,3,4], y_ticks=[0.25,0.5,0.75,1])
        self.a = 1/2
        self.intro = self.translate("Func_6_2_P_4_q.intro")

        self.f1 = lambda x: self.a**(4-x)
        self.f2 = lambda x: x/4
        self.f3 = lambda x: self.a**x

        self.color_1_name = self.translate("Func_6_2_P_4_q.color_1_name")
        self.color_2_name = self.translate("Func_6_2_P_4_q.color_2_name")
        self.color_3_name = self.translate("Func_6_2_P_4_q.color_3_name")

        self.c1 = BLUE
        self.c2 = GREEN
        self.c3 = ORANGE

        super().construct()

class Func_6_2_P_4_a(GrowthFactorToGraphAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 1, 0.25], x_ticks=[1,2,3,4], y_ticks=[0.25,0.5,0.75,1])
        self.x_max = 4
        self.a = 1/2
        self.intro = self.translate("Func_6_2_P_4_a.intro")

        self.f1 = lambda x: (4-self.a)**x
        self.f2 = lambda x: x/4
        self.f3 = lambda x: self.a**x

        self.color_1_name = self.translate("Func_6_2_P_4_q.color_1_name")
        self.color_2_name = self.translate("Func_6_2_P_4_q.color_2_name")
        self.color_3_name = self.translate("Func_6_2_P_4_q.color_3_name")

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
        self.intro = self.translate("Func_6_2_P_4_a.intro")

        self.f1 = lambda x: (4-self.a)**x
        self.f2 = lambda x: x/4
        self.f3 = lambda x: self.a**x

        self.color_1_name = self.translate("Func_6_2_P_4_q.color_1_name")
        self.color_2_name = self.translate("Func_6_2_P_4_q.color_2_name")
        self.color_3_name = self.translate("Func_6_2_P_4_q.color_3_name")

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
        self.intro = self.translate("Func_6_2_P_4_c.intro")

        self.f1 = lambda x: (4-self.a)**x
        self.f2 = lambda x: x/4
        self.f3 = lambda x: self.a**x

        self.color_1_name = self.translate("Func_6_2_P_4_q.color_1_name")
        self.color_2_name = self.translate("Func_6_2_P_4_q.color_2_name")
        self.color_3_name = self.translate("Func_6_2_P_4_q.color_3_name")
        self.c1 = BLUE
        self.c2 = GREEN
        self.c3 = ORANGE

        self.idx_correct = 2

        super().construct()

#####################################
#####################################
class Func_6_2_P_5_q(GraphToGrowthFactorQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a=4$", "$a=2$", "$a=3$", "$a=-2$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_2.P5.q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=3,
                answerOptionMatcher="$a=\key{a}$",
                answerOptionsTypes={
                    "a": "number"
                },
            )
        )

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 256, 64], x_ticks=[1,2,3,4], y_ticks=[64,128,192,256])
        self.a = 4
        self.color=PINK
        self.intro = self.translate("Func_6_2_P_5_q.intro")

        super().construct()


class Func_6_2_P_5_a(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 256, 64], x_ticks=[1,2,3,4], y_ticks=[64,128,192,256])
        self.a = 4
        self.x_max = 4
        self.color=PINK
        self.intro = self.translate("Func_6_2_P_5_a.intro")

        super().construct()

class Func_6_2_P_5_b(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 256, 64], x_ticks=[1,2,3,4], y_ticks=[64,128,192,256])
        self.a = 4
        self.x_max = 4
        self.color=PINK
        self.intro = self.translate("Func_6_2_P_5_b.intro")

        super().construct()

class Func_6_2_P_5_c(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 256, 64], x_ticks=[1,2,3,4], y_ticks=[64,128,192,256])
        self.a = 4
        self.x_max = 4
        self.color=PINK
        self.intro = self.translate("Func_6_2_P_5_b.intro")

        super().construct()

class Func_6_2_P_5_d(GraphToGrowthFactorAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 256, 64], x_ticks=[1,2,3,4], y_ticks=[64,128,192,256])
        self.a = 4
        self.x_max = 4
        self.color=PINK
        self.intro = self.translate("Func_6_2_P_5_b.intro")

        super().construct()

#####################################
#####################################
class Func_6_2_P_6_q(GrowthFactorToGraphQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_6_2.P6.q.answer-options")),
            correctAnswerIndex=1,
            questionText=self.translate("Func_6_2.P6.q.question-text")
        )

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.a = 3
        self.intro = self.translate("Func_6_2_P_6_q.intro")

        self.f1 = lambda x: x**2
        self.f2 = lambda x: self.a**x
        self.f3 = lambda x: self.a**(4-x)

        self.color_1_name = self.translate("Func_6_2_P_6_q.color_1_name")
        self.color_2_name = self.translate("Func_6_2_P_6_q.color_2_name")
        self.color_3_name = self.translate("Func_6_2_P_6_q.color_3_name")

        self.c1 = PURPLE
        self.c2 = BLUE
        self.c3 = PINK

        super().construct()


class Func_6_2_P_6_a(GrowthFactorToGraphAnswerScene):

    def construct(self):

        self.cords = self.add_cords([0, 4, 1], [0, 81, 9], x_ticks=[1,2,3,4], y_ticks=[27,54,81])
        self.x_max = 4
        self.a = 3
        self.intro = self.translate("Func_6_2_P_6_a.intro")

        self.f1 = lambda x: x**2
        self.f2 = lambda x: self.a**x
        self.f3 = lambda x: self.a**(4-x)

        self.color_1_name = self.translate("Func_6_2_P_6_q.color_1_name")
        self.color_2_name = self.translate("Func_6_2_P_6_q.color_2_name")
        self.color_3_name = self.translate("Func_6_2_P_6_q.color_3_name")

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
        self.intro = self.translate("Func_6_2_P_6_b.intro")

        self.f1 = lambda x: x**2
        self.f2 = lambda x: self.a**x
        self.f3 = lambda x: self.a**(4-x)

        self.color_1_name = self.translate("Func_6_2_P_6_q.color_1_name")
        self.color_2_name = self.translate("Func_6_2_P_6_q.color_2_name")
        self.color_3_name = self.translate("Func_6_2_P_6_q.color_3_name")

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
        self.intro = self.translate("Func_6_2_P_6_a.intro")

        self.f1 = lambda x: x**2
        self.f2 = lambda x: self.a**x
        self.f3 = lambda x: self.a**(4-x)

        self.color_1_name = self.translate("Func_6_2_P_6_q.color_1_name")
        self.color_2_name = self.translate("Func_6_2_P_6_q.color_2_name")
        self.color_3_name = self.translate("Func_6_2_P_6_q.color_3_name")

        self.c1 = PURPLE
        self.c2 = BLUE
        self.c3 = PINK

        self.idx_correct = 1

        super().construct()




##################################################################Exercises for General Form ##########################

#################################### Exercise Level: Easy (1)
####################################
class Func_6_P_general_form_1_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$27$", "$0$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_P_general_form.1.1.q.question-text"),
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

        func = MathTex("f(x)=3^x", color=c1t, font_size=fs2).set_y(2)
        step = MathTex("\\Downarrow", "x+3", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.4)
        cursor = AltCursor(idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.general_form_1.1.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(func))
            cursor.idle=False
            self.play(CursorUnderline(cursor, func))

            self.wait_until_bookmark("increase_x")
            x,y, _ = step[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), Write(step), run_time=.5)
            cursor.idle=True

        self.wait(4)


class Func_6_P_general_form_1_1_a(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        func = MathTex("f(x)=3^x", color=c1t, font_size=fs2).set_y(2)
        self.add(func)
        step = MathTex("\\Downarrow", "x+3", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.4)
        sol = MathTex("3^{x+3}", "=3^x\\cdot3^3", "=27\\cdot 3^x", color=c1t, font_size=fs2).next_to(step, DOWN, buff=.4)
        cursor = AltCursor(idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_6_P.general_form_1.1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("add_three")
            x,y, _ = step.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), Write(step), run_time=.5)

            self.wait_until_bookmark("three_added")
            x,y, _ = sol[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(sol[0]), run_time=.5)

            self.wait_until_bookmark("rewrite")
            x,y, _ = sol[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(sol[1]), run_time=.5)

            self.wait_until_bookmark("sol_in")
            x,y, _ = sol[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(sol[2]), run_time=.5)


        self.wait(4)

class Func_6_P_general_form_1_1_b(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        func = MathTex("f(x)=3^x", color=c1t, font_size=fs2).set_y(2)
        self.add(func)
        step = MathTex("\\Downarrow", "x+3", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.4)
        sol = MathTex("3^{x+3}", "=3^x\\cdot3^3", "=27\\cdot 3^x", color=c1t, font_size=fs2).next_to(step, DOWN, buff=.4)
        cursor = AltCursor(idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_P.general_form_1.1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("add_three")
            x,y, _ = step.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), Write(step), run_time=.5)

            self.wait_until_bookmark("three_added")
            x,y, _ = sol[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(sol[0]), run_time=.5)

            self.wait_until_bookmark("rewrite")
            x,y, _ = sol[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(sol[1]), run_time=.5)

            self.wait_until_bookmark("sol_in")
            x,y, _ = sol[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(sol[2]), run_time=.5)


        self.wait(4)


#####################################
#####################################
class Func_6_P_general_form_1_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\sqrt[12]{\\frac{72342}{48128}}$", "$0$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_P_general_form.1.2.q.question-text"),
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

        func = MathTex("f(x)=a\\cdot b^x", color=c1t, font_size=fs2).set_y(2)
        cursor = AltCursor(idle=True)
        self.add(cursor)
        today = self.translate("words.today")
        twelve_years_ago = self.translate("Func_6_P.general_form_1.2.q.twelve-years-ago")
        trees = self.translate("words.trees")

        forest = ImageMobject(assets_folder / "img" / "forest.png")
        forest = forest.scale(3/forest.get_width()).move_to([-5, 1.4, 0])

        bullets = VGroup(Tex("$\\bullet$ ", today, ": $72342$ ", trees, color=c1t, font_size=fs3), Tex("$\\bullet$ ", twelve_years_ago, ": $48128$ ", trees, color=c1t, font_size=fs3), ).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.general_form_1.2.q.voiceover")
        ) as tracker:
        
            self.wait_until_bookmark("forest_in")
            self.add_shift_sound(0.5)
            self.play(forest.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("today_in")
            self.play(Write(bullets[0]), run_time=.5)

            self.wait_until_bookmark("twelve_years_ago_in")
            self.play(Write(bullets[1]), run_time=.5)

            self.wait_until_bookmark("func_in")
            self.add_shift_sound(0.5)
            self.play(Write(func), forest.animate.shift(5*RIGHT), run_time=.5)


        self.wait(4)


class Func_6_P_general_form_1_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        today = self.translate("words.today")
        twelve_years_ago = self.translate("Func_6_P.general_form_1.2.q.twelve-years-ago")
        trees = self.translate("words.trees")
        eq_1 = MathTex("{{72342}", "\\over{48128}}", "=", "b", "^{12}", color=c1t, font_size=fs2).set_y(1.8)
        step = MathTex("\\Downarrow", "\\sqrt[12]{\\Box}", color=BLUE, font_size=fs2).next_to(eq_1, DOWN, buff=.4)
        eq_2 = MathTex("b", "=", "\\sqrt[12]{\\frac{72342}{48128}}", "\\approx", "1.034", color=c1t, font_size=fs2).next_to(step, DOWN, buff=.4)

        bullets = VGroup(Tex("$\\bullet$ ", today, ": $72342$ ", trees, color=c1t, font_size=fs3), Tex("$\\bullet$ ", twelve_years_ago, ": $48128$ ", trees, color=c1t, font_size=fs3), ).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-.2)
        self.add(bullets)

        forest = ImageMobject(assets_folder / "img" / "forest.png")
        forest = forest.scale(3/forest.get_width()).set_y(1.4)
        self.add(forest)

        cursor = AltCursor(idle=True, y=-2)
        self.add(cursor)
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_4")+self.translate("Func_6_P.general_form_1.2.a.voiceover")
        ) as tracker:
        
            self.wait_until_bookmark("divide_1")
            self.add_shift_sound(.5)
            self.play(forest.animate.shift(5*RIGHT), ReplacementTransform(bullets[0][2].copy(), eq_1[0]), run_time=.5)

            self.wait_until_bookmark("divide_2")
            self.play(ReplacementTransform(bullets[1][2].copy(), eq_1[1]), run_time=.5)

            self.wait_until_bookmark("b_12")
            self.play(Write(eq_1[2]), Write(eq_1[3]), Write(eq_1[4]), run_time=.5)

            self.wait_until_bookmark("take_root")
            x,y,_ = step[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x, y), Write(step), Unwrite(bullets), run_time=.5)

            self.wait_until_bookmark("sol_1")
            x,y,_ = eq_2[2].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(eq_2[:3]), run_time=.5)

            self.wait_until_bookmark("sol_2")
            x,y,_ = eq_2[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(eq_2[3:]), run_time=.5)

class Func_6_P_general_form_1_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        today = self.translate("words.today")
        twelve_years_ago = self.translate("Func_6_P.general_form_1.2.q.twelve-years-ago")
        trees = self.translate("words.trees")
        eq_1 = MathTex("{{72342}", "\\over{48128}}", "=", "b", "^{12}", color=c1t, font_size=fs2).set_y(1.8)
        step = MathTex("\\Downarrow", "\\sqrt[12]{\\Box}", color=BLUE, font_size=fs2).next_to(eq_1, DOWN, buff=.4)
        eq_2 = MathTex("b", "=", "\\sqrt[12]{\\frac{72342}{48128}}", "\\approx", "1.034", color=c1t, font_size=fs2).next_to(step, DOWN, buff=.4)

        bullets = VGroup(Tex("$\\bullet$ ", today, ": $72342$ ", trees, color=c1t, font_size=fs3), Tex("$\\bullet$ ", twelve_years_ago, ": $48128$ ", trees, color=c1t, font_size=fs3), ).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-.2)
        self.add(bullets)

        forest = ImageMobject(assets_folder / "img" / "forest.png")
        forest = forest.scale(3/forest.get_width()).set_y(1.4)
        self.add(forest)

        cursor = AltCursor(idle=True, y=-2)
        self.add(cursor)
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_6_P.general_form_1.2.a.voiceover")
        ) as tracker:
        
            self.wait_until_bookmark("divide_1")
            self.add_shift_sound(.5)
            self.play(forest.animate.shift(5*RIGHT), ReplacementTransform(bullets[0][2].copy(), eq_1[0]), run_time=.5)

            self.wait_until_bookmark("divide_2")
            self.play(ReplacementTransform(bullets[1][2].copy(), eq_1[1]), run_time=.5)

            self.wait_until_bookmark("b_12")
            self.play(Write(eq_1[2]), Write(eq_1[3]), Write(eq_1[4]), run_time=.5)

            self.wait_until_bookmark("take_root")
            x,y,_ = step[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x, y), Write(step), Unwrite(bullets), run_time=.5)

            self.wait_until_bookmark("sol_1")
            x,y,_ = eq_2[2].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(eq_2[:3]), run_time=.5)

            self.wait_until_bookmark("sol_2")
            x,y,_ = eq_2[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(eq_2[3:]), run_time=.5)




        self.wait(4)

#####################################
#####################################
class Func_6_P_general_form_1_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$0.9$", "$0$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_P_general_form.1.3.q.question-text"),
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

        decrease = self.translate("words.decrease")

        func = MathTex("f(x)=a\\cdot b^x", color=c1t, font_size=fs2).set_y(2)
        step = MathTex("\\Downarrow", "x+2", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.4)
        result = Tex("$19\%$ ", decrease, color=c1t, font_size=fs2).next_to(step, DOWN, buff=.4)
        cursor = AltCursor(idle=True)

        cursor = AltCursor(idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.general_form_1.3.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(func))
            cursor.idle=False
            self.play(CursorUnderline(cursor, func))
            
            self.wait_until_bookmark("show_steps")
            x,y,_ = result.get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), Write(step), Write(result), run_time=1)
            cursor.idle=True

        self.wait(4)


class Func_6_P_general_form_1_3_a(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        decrease = self.translate("words.decrease")

        func = MathTex("f(x)=a\\cdot b^x", color=c1t, font_size=fs2).set_y(2)
        step = MathTex("\\Downarrow", "x+2", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.4)
        step = step.shift(step[1].get_x()*LEFT)
        result = Tex("$19\%$ ", decrease, color=c1t, font_size=fs2).next_to(step, DOWN, buff=.4)
        self.add(func, step, result)
        consequence = MathTex("\\Downarrow", "", color=BLUE, font_size=fs2).next_to(result, DOWN, buff=.4)
        compare_1 = MathTex("f(x+2)=0.81\\cdot f(x)", color=c1t, font_size=fs2).next_to(consequence, DOWN, buff=.4)
        step_1 = MathTex("\\Downarrow", color=BLUE, font_size=fs2).next_to(compare_1, DOWN, buff=.4).shift(4*UP)
        compare_2 = MathTex("a\\cdot b^{x+2}=0.81a\\cdot b^x", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.4)
        step_2 = MathTex("\\Downarrow", color=BLUE, font_size=fs2).next_to(compare_2, DOWN, buff=.4)
        compare_3 = MathTex("a\\cdot b^x\\cdot b^2=0.81a\\cdot b^x", color=c1t, font_size=fs2).next_to(step_2, DOWN, buff=.4)
        step_3 = MathTex("\\Downarrow", "\\tfrac{\\Box}{a\\cdot b^x}", color=BLUE, font_size=fs2).next_to(compare_3, DOWN, buff=.4)
        step_3.shift(step_3[0].get_x()*LEFT)
        compare_4 = MathTex("b^2=0.81", "\\Rightarrow b=0.9", color=c1t, font_size=fs2).next_to(step_3, DOWN, buff=.4)

        cursor = AltCursor(idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_5")+self.translate("Func_6_P.general_form_1.3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("compare_fs")
            cursor.idle=False
            x,y,_ = compare_1.get_center()+.4*DOWN
            self.play(Write(consequence), Write(compare_1), CursorMoveTo(cursor,x,y), run_time=1)

            self.wait_until_bookmark("compare_1")
            x,y,_ = compare_2.get_center()+.4*DOWN
            self.play(Unwrite(VGroup(consequence, func, step, result)), compare_1.animate.shift(4*UP), Write(step_1), Write(compare_2), CursorMoveTo(cursor,x,y), run_time=1)

            self.wait_until_bookmark("compare_2")
            x,y,_ = compare_3.get_center()+.4*DOWN
            self.play(Write(step_2), Write(compare_3), CursorMoveTo(cursor,x,y), run_time=1)

            self.wait_until_bookmark("compare_3_1")
            x,y,_ = compare_4[0].get_center()+.4*DOWN
            self.play(Write(step_3), Write(compare_4[0]), CursorMoveTo(cursor,x,y), run_time=1)

            self.wait_until_bookmark("compare_3_2")
            x,y,_ = compare_4[1].get_center()+.4*DOWN
            self.play(Write(compare_4[1]), CursorMoveTo(cursor,x,y), run_time=1)

        self.wait(4)

class Func_6_P_general_form_1_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        decrease = self.translate("words.decrease")

        func = MathTex("f(x)=a\\cdot b^x", color=c1t, font_size=fs2).set_y(2)
        step = MathTex("\\Downarrow", "x+2", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.4)
        step = step.shift(step[1].get_x()*LEFT)
        result = Tex("$19\%$ ", decrease, color=c1t, font_size=fs2).next_to(step, DOWN, buff=.4)
        self.add(func, step, result)
        consequence = MathTex("\\Downarrow", "", color=BLUE, font_size=fs2).next_to(result, DOWN, buff=.4)
        compare_1 = MathTex("f(x+2)=0.81\\cdot f(x)", color=c1t, font_size=fs2).next_to(consequence, DOWN, buff=.4)
        step_1 = MathTex("\\Downarrow", color=BLUE, font_size=fs2).next_to(compare_1, DOWN, buff=.4).shift(4*UP)
        compare_2 = MathTex("a\\cdot b^{x+2}=0.81a\\cdot b^x", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.4)
        step_2 = MathTex("\\Downarrow", color=BLUE, font_size=fs2).next_to(compare_2, DOWN, buff=.4)
        compare_3 = MathTex("a\\cdot b^x\\cdot b^2=0.81a\\cdot b^x", color=c1t, font_size=fs2).next_to(step_2, DOWN, buff=.4)
        step_3 = MathTex("\\Downarrow", "\\tfrac{\\Box}{a\\cdot b^x}", color=BLUE, font_size=fs2).next_to(compare_3, DOWN, buff=.4)
        step_3.shift(step_3[0].get_x()*LEFT)
        compare_4 = MathTex("b^2=0.81", "\\Rightarrow b=0.9", color=c1t, font_size=fs2).next_to(step_3, DOWN, buff=.4)

        cursor = AltCursor(idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_6_P.general_form_1.3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("compare_fs")
            cursor.idle=False
            x,y,_ = compare_1.get_center()+.4*DOWN
            self.play(Write(consequence), Write(compare_1), CursorMoveTo(cursor,x,y), run_time=1)

            self.wait_until_bookmark("compare_1")
            x,y,_ = compare_2.get_center()+.4*DOWN
            self.play(Unwrite(VGroup(consequence, func, step, result)), compare_1.animate.shift(4*UP), Write(step_1), Write(compare_2), CursorMoveTo(cursor,x,y), run_time=1)

            self.wait_until_bookmark("compare_2")
            x,y,_ = compare_3.get_center()+.4*DOWN
            self.play(Write(step_2), Write(compare_3), CursorMoveTo(cursor,x,y), run_time=1)

            self.wait_until_bookmark("compare_3_1")
            x,y,_ = compare_4[0].get_center()+.4*DOWN
            self.play(Write(step_3), Write(compare_4[0]), CursorMoveTo(cursor,x,y), run_time=1)

            self.wait_until_bookmark("compare_3_2")
            x,y,_ = compare_4[1].get_center()+.4*DOWN
            self.play(Write(compare_4[1]), CursorMoveTo(cursor,x,y), run_time=1)

        self.wait(4)

#####################################
#####################################
class Func_6_P_general_form_1_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$27$", "$0$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_P_general_form.1.4.q.question-text"),
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

        plantation = ImageMobject(assets_folder / "img" / "apple_plantation.png")
        plantation = plantation.scale(3/plantation.get_width()).move_to([-5, 1.4, 0])

        three_years_ago = self.translate("Func_6_P.general_form_1.4.q.three-years-ago")
        today = self.translate("words.today")
        trees = self.translate("words.trees")

        bullets = VGroup(Tex("$\\bullet$ ", three_years_ago, ": $8$ ", trees, color=c1t, font_size=fs3), Tex("$\\bullet$ ", today, ": $12$ ", trees, color=c1t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1)


        cursor = AltCursor(idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.general_form_1.4.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("plantation_in")
            self.add_shift_sound(.5)
            self.play(plantation.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("bullet_1")
            self.play(Write(bullets[0]), run_time=.5)

            self.wait_until_bookmark("bullet_2")
            self.play(Write(bullets[1]), run_time=.5)

        self.wait(4)


class Func_6_P_general_form_1_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        plantation = ImageMobject(assets_folder / "img" / "apple_plantation.png")
        plantation = plantation.scale(3/plantation.get_width()).set_y(1.4)
        self.add(plantation)

        three_years_ago = self.translate("Func_6_P.general_form_1.4.q.three-years-ago")
        today = self.translate("words.today")
        trees = self.translate("words.trees")
        years = self.translate("words.years")

        bullets = VGroup(Tex("$\\bullet$ ", three_years_ago, ": $8$ ", trees, color=c1t, font_size=fs3), Tex("$\\bullet$ ", today, ": $12$ ", trees, color=c1t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1)
        self.add(bullets)

        dev_1 = MathTex("8", f"\\underset{{\\text{{$3$ {years}}}}}{{\\overset{{\\times 1.5}}{{\\Rightarrow}}}}", "12", color=c1t, font_size=fs2)
        dev_2 = MathTex("12", f"\\underset{{\\text{{$3$ {years}}}}}{{\\Rightarrow}}", "18", color=c1t, font_size=fs2)
        dev_3 = MathTex("18", f"\\underset{{\\text{{$3$ {years}}}}}{{\\Rightarrow}}", "27", color=c1t, font_size=fs2)
        devs = VGroup(dev_1, dev_2, dev_3).arrange(DOWN, buff=.6, aligned_edge=LEFT).set_y(2)

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_2")+self.translate("Func_6_P.general_form_1.4.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("eight_transform")
            self.add_shift_sound(.5)
            self.play(plantation.animate.shift(5*RIGHT), ReplacementTransform(bullets[0][2].copy(), dev_1[0]), run_time=.5)

            self.wait_until_bookmark("years_go_by")
            x,y,_ = dev_1[1].get_center()+0.6*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), Write(dev_1[1]), run_time=.5)

            self.wait_until_bookmark("twelve_transform")
            self.play(ReplacementTransform(bullets[1][2].copy(), dev_1[2]), run_time=.5)

            self.wait_until_bookmark("dev_1_0")
            x,y,_ = dev_2[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(dev_2[0]), Unwrite(bullets), run_time=.5)

            self.wait_until_bookmark("dev_1_1")
            x,y,_ = dev_2[1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(dev_2[1]), run_time=.5)

            self.wait_until_bookmark("dev_1_2")
            x,y,_ = dev_2[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(dev_2[2]), run_time=.5)

            self.wait_until_bookmark("dev_2_2")
            x,y,_ = dev_3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(dev_3), run_time=.5)

        self.wait(4)

class Func_6_P_general_form_1_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        plantation = ImageMobject(assets_folder / "img" / "apple_plantation.png")
        plantation = plantation.scale(3/plantation.get_width()).set_y(1.4)
        self.add(plantation)

        three_years_ago = self.translate("Func_6_P.general_form_1.4.q.three-years-ago")
        today = self.translate("words.today")
        trees = self.translate("words.trees")
        years = self.translate("words.years")

        bullets = VGroup(Tex("$\\bullet$ ", three_years_ago, ": $8$ ", trees, color=c1t, font_size=fs3), Tex("$\\bullet$ ", today, ": $12$ ", trees, color=c1t, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1)
        self.add(bullets)

        dev_1 = MathTex("8", f"\\underset{{\\text{{$3$ {years}}}}}{{\\overset{{\\times 1.5}}{{\\Rightarrow}}}}", "12", color=c1t, font_size=fs2)
        dev_2 = MathTex("12", f"\\underset{{\\text{{$3$ {years}}}}}{{\\Rightarrow}}", "18", color=c1t, font_size=fs2)
        dev_3 = MathTex("18", f"\\underset{{\\text{{$3$ {years}}}}}{{\\Rightarrow}}", "27", color=c1t, font_size=fs2)
        devs = VGroup(dev_1, dev_2, dev_3).arrange(DOWN, buff=.6, aligned_edge=LEFT).set_y(2)

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_6_P.general_form_1.4.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("eight_transform")
            self.add_shift_sound(.5)
            self.play(plantation.animate.shift(5*RIGHT), ReplacementTransform(bullets[0][2].copy(), dev_1[0]), run_time=.5)

            self.wait_until_bookmark("years_go_by")
            x,y,_ = dev_1[1].get_center()+0.6*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), Write(dev_1[1]), run_time=.5)

            self.wait_until_bookmark("twelve_transform")
            self.play(ReplacementTransform(bullets[1][2].copy(), dev_1[2]), run_time=.5)

            self.wait_until_bookmark("dev_1_0")
            x,y,_ = dev_2[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(dev_2[0]), Unwrite(bullets), run_time=.5)

            self.wait_until_bookmark("dev_1_1")
            x,y,_ = dev_2[1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(dev_2[1]), run_time=.5)

            self.wait_until_bookmark("dev_1_2")
            x,y,_ = dev_2[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(dev_2[2]), run_time=.5)

            self.wait_until_bookmark("dev_2_2")
            x,y,_ = dev_3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(dev_3), run_time=.5)

        self.wait(4)


#####################################
#####################################TODO ADD Translation etc.
class Func_6_P_general_form_2_1_q(SophiaCursorScene):

    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions = ["$27$", "$0$"],
    #         correctAnswerIndex = 0,
    #         questionText=self.translate("Func_6_P_general_form.1.4.q.question-text"),
    #         freeTextDetail=SophiaFreeTextTaskDetail(
    #             fallbackOptionIndex=1,
    #             answerOptionMatcher="$\key{a}$",
    #             # answerOptionsTypes={
    #             #     "a": "number"
    #             # },
    #             # answerOptionDescriptions={
    #             #     "a": self.translate("Func_6_2.P3.q.answer-option-description")
    #             # }
    #         )
    #    )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        term = MathTex("f(t)=a\\cdot q^t-2", color=c1t, font_size=fs1).set_y(2)

        bullets = VGroup(Tex("$\\bullet$ $p_1=(2,2.5)$", color=c1t, font_size=fs2), Tex("$\\bullet$ $p_2=(1,-0.5)$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(term, DOWN, buff=.8)


        cursor = AltCursor(idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text="""
We're given the exponential <bookmark mark="func_in"/>function f of t equals a times q to the power of t minus 2. And we're given two points on the graph of this function. The first point is <bookmark mark="point_1_in"/>the point with coordinates 2, 2.5. And the second point is <bookmark mark="point_2_in"/>the point with coordinates 1, -0.5. What are the values of "a" and q?
"""
        ) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(term))
            cursor.idle=False
            self.play(CursorUnderline(cursor, term))

            self.wait_until_bookmark("point_1_in")
            x,y,_ = bullets[0].get_center()+0.4*DOWN
            self.play(Write(bullets[0]), CursorMoveResize(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("point_2_in")
            x,y,_ = bullets[1].get_center()+0.4*DOWN
            self.play(Write(bullets[1]), CursorMoveTo(cursor,x,y), run_time=.5)

        self.wait(4)


class Func_6_P_general_form_2_1_a(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        term = MathTex("f(t)", "=", "a\\cdot q", "^t", "-2", color=c1t, font_size=fs1).set_y(2)
        term_2_1 = MathTex("f(2)", "=", "a\\cdot q", "^2", "-2", color=c1t, font_size=fs1).next_to(term, DOWN, buff=.4)
        term_2_2 = MathTex("2.5", "=", "a\\cdot q", "^2", "-2", color=c1t, font_size=fs1).move_to(term_2_1)
        term_1_1 = MathTex("f(1)", "=", "a\\cdot q", "^1", "-2", color=c1t, font_size=fs1).next_to(term_2_1, DOWN, buff=.4)
        term_1_2 = MathTex("-0.5", "=", "a\\cdot q", "^1", "-2", color=c1t, font_size=fs1).move_to(term_1_1)
        bullets = VGroup(Tex("$\\bullet$ $p_1=(2,2.5)$", color=c1t, font_size=fs2), Tex("$\\bullet$ $p_2=(1,-0.5)$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(term, DOWN, buff=.8)

        cursor = AltCursor(idle=True)
        self.add(cursor, term, bullets)

        # Action Sequence
        with self.voiceover(
                text="""
We'll first plug in both points. 
"""
        ) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(term))
            cursor.idle=False
            self.play(CursorUnderline(cursor, term))

            self.wait_until_bookmark("point_1_in")
            x,y,_ = bullets[0].get_center()+0.4*DOWN
            self.play(Write(bullets[0]), CursorMoveResize(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("point_2_in")
            x,y,_ = bullets[1].get_center()+0.4*DOWN
            self.play(Write(bullets[1]), CursorMoveTo(cursor,x,y), run_time=.5)

        self.wait(4)

##################################################################Exercises for Graphs ##########################

####################################
####################################
class Func_6_P_graphs_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a=1$, $b=0.5$, $c=-0.5$", "$a=1$, $b=2$, $c=1$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_6_P_graphs.1.q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$a=\key{a}$, $b=\key{b}$, $c=\key{c}$",
                answerOptionsTypes={
                    "a": "number",
                    "b": "number",
                    "c": "number",
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        rec = Rectangle(height=4.4, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.4,0])
        cords = NumberPlane(x_range=[-3, 3, .5], y_range=[-4, 4, .5], x_length=3, y_length=4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(3)[0], cords.get_y_axis().n2p(-0.5)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=c1t, stroke_width=2)
        graph = cords.plot(lambda x: 0.5**x-.5, x_range=[-2.2, 3, .001], color=GREEN_D, stroke_width=2)
        term = MathTex("f(x)=a\\cdot b^x+c", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        
        points = [[-1,1.5], [0,0.5], [1,0]]

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.graphs.1.q.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("graph_in")
            self.add_pencil_sound(1.5)
            self.play(Create(graph))

            self.wait_until_bookmark("asympote_in")
            self.add_pencil_sound(1.5)
            self.play(Create(asymptote))

            self.wait_until_bookmark("points_in")
            for p in points:
                self.play(Write(Circle(color=BLACK, radius=.05, stroke_width=2, fill_opacity=1, fill_color=WHITE).move_to(cords.c2p(*p))), run_time=1)

            self.wait_until_bookmark("term_in")
            self.play(Write(term))


        self.wait(4)
#

class Func_6_P_graphs_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        rec = Rectangle(height=4.4, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.4,0])
        cords = NumberPlane(x_range=[-3, 3, .5], y_range=[-4, 4, .5], x_length=3, y_length=4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(3)[0], cords.get_y_axis().n2p(-0.5)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=c1t, stroke_width=2)
        graph = cords.plot(lambda x: 0.5**x-.5, x_range=[-2.2, 3, .001], color=GREEN_D, stroke_width=2)
        term = MathTex("f", "(x)", "=", "a", "\\cdot", "b", "^x", "+", "c", "", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        term_c = MathTex("f", "(x)", "=", "a", "\\cdot", "b", "^x", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_a = MathTex("f", "(0)", "=", "a", "\\cdot", "b", "^0", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_b = MathTex("f", "(0)", "=", "a", "", "", "", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_c = MathTex("f", "(0)", "=", "a", "", "", "", "-", "0.5", "=0.5",color=c1t, font_size=fs2).move_to(term)
        term_c_0_1 = MathTex("f", "(0)", "=", "1", "", "", "", "-", "0.5", "=0.5",color=c1t, font_size=fs2).move_to(term)
        term_a = MathTex("f", "(x)", "=", "1", "\\cdot", "b", "^x", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        term_b = MathTex("f", "(x)", "=", "1", "\\cdot", "0.5", "^x", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        solution_rectangle = SurroundingRectangle(term_b, color=PURE_BLUE, corner_radius=.1, buff=.2)
        self.add(term, asymptote, graph)
        
        points = [[-1,1.5], [0,0.5], [1,0]]
        for p in points:
                self.add(Circle(color=BLACK, radius=.05, stroke_width=2, fill_opacity=1, fill_color=WHITE).move_to(cords.c2p(*p)))

        cursor = AltCursor(y=-2, idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_6_P.graphs.1.a.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("highlight_asymptote")
            x_left, x_right = asymptote.get_start()[0], asymptote.get_end()[0]
            x,y,_ = asymptote.get_center()
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x, y, x_right-x_left+0.2), run_time=.5)

            self.wait_until_bookmark("c_mark")
            x,y,_ = term[-1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            
            self.wait_until_bookmark("c_in")
            self.play(TransformMatchingTex(term, term_c))

            self.wait_until_bookmark("plug_in_zero_a")
            x,y,_ = term_c[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.play(TransformMatchingTex(term_c, term_c_0_a))

            self.wait_until_bookmark("plug_in_zero_b")
            self.play(TransformMatchingTex(term_c_0_a, term_c_0_b))

            self.wait_until_bookmark("plug_in_zero_c")
            x,y,_ = term_c_0_c[-1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.play(TransformMatchingTex(term_c_0_b, term_c_0_c))

            self.wait_until_bookmark("move_to_a")
            x,y,_ = term_c_0_c[3].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("a_in")
            self.play(TransformMatchingTex(term_c_0_c, term_c_0_1))

            self.wait_until_bookmark("reset")
            self.play(TransformMatchingTex(term_c_0_1, term_a))

            self.wait_until_bookmark("highlight_b")
            x,y,_ = term_a[5].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            lines = VGroup()
            for idx in range(3):
                self.wait_until_bookmark(f"point_{idx+1}")
                x,y_top, _ = cords.c2p(*points[idx])
                y_bottom = cords.get_y_axis().n2p(-0.5)[1]
                line = Line([x,y_top,0], [x,y_bottom,0], color=RED, stroke_width=2)
                lines.add(line)
                self.play(CursorMoveTo(cursor,x,y_top), run_time=.5)
                self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(line.get_end())))
                self.play(Create(line))

            self.wait_until_bookmark("reset_cursor")
            self.play(CursorMoveTo(cursor,0,-2), run_time=.5)

            self.wait_until_bookmark("highlight_b_again")
            x,y,_ = term_a[5].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("b_in")
            self.play(TransformMatchingTex(term_a, term_b))

            self.wait_until_bookmark("conclusion")
            x,y,_ = solution_rectangle.get_end()
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(solution_rectangle.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(solution_rectangle))
            cursor.idle=True

        self.wait(4)

class Func_6_P_graphs_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        rec = Rectangle(height=4.4, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.4,0])
        cords = NumberPlane(x_range=[-3, 3, .5], y_range=[-4, 4, .5], x_length=3, y_length=4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(3)[0], cords.get_y_axis().n2p(-0.5)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=c1t, stroke_width=2)
        graph = cords.plot(lambda x: 0.5**x-.5, x_range=[-2.2, 3, .001], color=GREEN_D, stroke_width=2)
        term = MathTex("f", "(x)", "=", "a", "\\cdot", "b", "^x", "+", "c", "", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        term_c = MathTex("f", "(x)", "=", "a", "\\cdot", "b", "^x", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_a = MathTex("f", "(0)", "=", "a", "\\cdot", "b", "^0", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_b = MathTex("f", "(0)", "=", "a", "", "", "", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_c = MathTex("f", "(0)", "=", "a", "", "", "", "-", "0.5", "=0.5",color=c1t, font_size=fs2).move_to(term)
        term_c_0_1 = MathTex("f", "(0)", "=", "1", "", "", "", "-", "0.5", "=0.5",color=c1t, font_size=fs2).move_to(term)
        term_a = MathTex("f", "(x)", "=", "1", "\\cdot", "b", "^x", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        term_b = MathTex("f", "(x)", "=", "1", "\\cdot", "0.5", "^x", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        solution_rectangle = SurroundingRectangle(term_b, color=PURE_BLUE, corner_radius=.1, buff=.2)
        self.add(term, asymptote, graph)
        
        points = [[-1,1.5], [0,0.5], [1,0]]
        for p in points:
                self.add(Circle(color=BLACK, radius=.05, stroke_width=2, fill_opacity=1, fill_color=WHITE).move_to(cords.c2p(*p)))

        cursor = AltCursor(y=-2, idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_P.graphs.1.a.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("highlight_asymptote")
            x_left, x_right = asymptote.get_start()[0], asymptote.get_end()[0]
            x,y,_ = asymptote.get_center()
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x, y, x_right-x_left+0.2), run_time=.5)

            self.wait_until_bookmark("c_mark")
            x,y,_ = term[-1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            
            self.wait_until_bookmark("c_in")
            self.play(TransformMatchingTex(term, term_c))

            self.wait_until_bookmark("plug_in_zero_a")
            x,y,_ = term_c[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.play(TransformMatchingTex(term_c, term_c_0_a))

            self.wait_until_bookmark("plug_in_zero_b")
            self.play(TransformMatchingTex(term_c_0_a, term_c_0_b))

            self.wait_until_bookmark("plug_in_zero_c")
            x,y,_ = term_c_0_c[-1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.play(TransformMatchingTex(term_c_0_b, term_c_0_c))

            self.wait_until_bookmark("move_to_a")
            x,y,_ = term_c_0_c[3].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("a_in")
            self.play(TransformMatchingTex(term_c_0_c, term_c_0_1))

            self.wait_until_bookmark("reset")
            self.play(TransformMatchingTex(term_c_0_1, term_a))

            self.wait_until_bookmark("highlight_b")
            x,y,_ = term_a[5].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            lines = VGroup()
            for idx in range(3):
                self.wait_until_bookmark(f"point_{idx+1}")
                x,y_top, _ = cords.c2p(*points[idx])
                y_bottom = cords.get_y_axis().n2p(-0.5)[1]
                line = Line([x,y_top,0], [x,y_bottom,0], color=RED, stroke_width=2)
                lines.add(line)
                self.play(CursorMoveTo(cursor,x,y_top), run_time=.5)
                self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(line.get_end())))
                self.play(Create(line))

            self.wait_until_bookmark("reset_cursor")
            self.play(CursorMoveTo(cursor,0,-2), run_time=.5)

            self.wait_until_bookmark("highlight_b_again")
            x,y,_ = term_a[5].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("b_in")
            self.play(TransformMatchingTex(term_a, term_b))

            self.wait_until_bookmark("conclusion")
            x,y,_ = solution_rectangle.get_end()
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(solution_rectangle.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(solution_rectangle))
            cursor.idle=True

        self.wait(4)

####################################
####################################
class Func_6_P_graphs_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a=-1$, $b=2$, $c=-1$", "$a=1$, $b=3$, $c=1$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_6_P_graphs.2.q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$a=\key{a}$, $b=\key{b}$, $c=\key{c}$",
                answerOptionsTypes={
                    "a": "number",
                    "b": "number",
                    "c": "number",
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        rec = Rectangle(height=4.4, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.4,0])
        cords = NumberPlane(x_range=[-3, 3, .5], y_range=[-4, 4, .5], x_length=3, y_length=4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(3)[0], cords.get_y_axis().n2p(-1)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=c1t, stroke_width=2)
        graph = cords.plot(lambda x: -1*2**x-1, x_range=[-3, 1.53, .001], color=BLUE_D, stroke_width=2)
        term = MathTex("f(x)=a\\cdot b^x+c", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        
        points = [[-1,-1.5], [0,-2], [1,-3]]

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.graphs.2.q.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("graph_in")
            self.add_pencil_sound(1.5)
            self.play(Create(graph))

            self.wait_until_bookmark("asympote_in")
            self.add_pencil_sound(1.5)
            self.play(Create(asymptote))

            self.wait_until_bookmark("points_in")
            for p in points:
                self.play(Write(Circle(color=BLACK, radius=.05, stroke_width=2, fill_opacity=1, fill_color=WHITE).move_to(cords.c2p(*p))), run_time=1)

            self.wait_until_bookmark("term_in")
            self.play(Write(term))


        self.wait(4)


class Func_6_P_graphs_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        rec = Rectangle(height=4.4, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.4,0])
        cords = NumberPlane(x_range=[-3, 3, .5], y_range=[-4, 4, .5], x_length=3, y_length=4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(3)[0], cords.get_y_axis().n2p(-1)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=c1t, stroke_width=2)
        graph = cords.plot(lambda x: -1*2**x-1, x_range=[-3, 1.53, .001], color=BLUE_D, stroke_width=2)
        term = MathTex("f", "(x)", "=", "a", "\\cdot", "b", "^x", "+", "c", "", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        term_c = MathTex("f", "(x)", "=", "a", "\\cdot", "b", "^x", "-", "1", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_a = MathTex("f", "(0)", "=", "a", "\\cdot", "b", "^0", "-", "1", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_b = MathTex("f", "(0)", "=", "a", "", "", "", "-", "1", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_c = MathTex("f", "(0)", "=", "a", "", "", "", "-", "1", "=-2",color=c1t, font_size=fs2).move_to(term)
        term_c_0_1 = MathTex("f", "(0)", "=", "-1", "", "", "", "-", "1", "=-2",color=c1t, font_size=fs2).move_to(term)
        term_a = MathTex("f", "(x)", "=", "-1", "\\cdot", "b", "^x", "-", "1", "",color=c1t, font_size=fs2).move_to(term)
        term_b = MathTex("f", "(x)", "=", "-1", "\\cdot", "2", "^x", "-", "1", "",color=c1t, font_size=fs2).move_to(term)
        solution_rectangle = SurroundingRectangle(term_b, color=PURE_BLUE, corner_radius=.1, buff=.2)
        self.add(term, asymptote, graph)
        
        points = [[-1,-1.5], [0,-2], [1,-3]]
        for p in points:
                self.add(Circle(color=BLACK, radius=.05, stroke_width=2, fill_opacity=1, fill_color=WHITE).move_to(cords.c2p(*p)))

        cursor = AltCursor(y=-2, idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_5")+self.translate("Func_6_P.graphs.2.a.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("highlight_asymptote")
            x_left, x_right = asymptote.get_start()[0], asymptote.get_end()[0]
            x,y,_ = asymptote.get_center()
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x, y, x_right-x_left+0.2), run_time=.5)

            self.wait_until_bookmark("c_mark")
            x,y,_ = term[-1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            
            self.wait_until_bookmark("c_in")
            self.play(TransformMatchingTex(term, term_c))

            self.wait_until_bookmark("plug_in_zero_a")
            x,y,_ = term_c[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.play(TransformMatchingTex(term_c, term_c_0_a))

            self.wait_until_bookmark("plug_in_zero_b")
            self.play(TransformMatchingTex(term_c_0_a, term_c_0_b))

            self.wait_until_bookmark("plug_in_zero_c")
            x,y,_ = term_c_0_c[-1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.play(TransformMatchingTex(term_c_0_b, term_c_0_c))

            self.wait_until_bookmark("move_to_a")
            x,y,_ = term_c_0_c[3].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("a_in")
            self.play(TransformMatchingTex(term_c_0_c, term_c_0_1))

            self.wait_until_bookmark("reset")
            self.play(TransformMatchingTex(term_c_0_1, term_a))

            self.wait_until_bookmark("highlight_b")
            x,y,_ = term_a[5].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            lines = VGroup()
            for idx in range(3):
                self.wait_until_bookmark(f"point_{idx+1}")
                x,y_top, _ = cords.c2p(*points[idx])
                y_bottom = cords.get_y_axis().n2p(-1)[1]
                line = Line([x,y_top,0], [x,y_bottom,0], color=RED, stroke_width=2)
                lines.add(line)
                self.play(CursorMoveTo(cursor,x,y_top), run_time=.5)
                self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(line.get_end())))
                self.play(Create(line))

            self.wait_until_bookmark("reset_cursor")
            self.play(CursorMoveTo(cursor,0,-2), run_time=.5)

            self.wait_until_bookmark("highlight_b_again")
            x,y,_ = term_a[5].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("b_in")
            self.play(TransformMatchingTex(term_a, term_b))

            self.wait_until_bookmark("conclusion")
            x,y,_ = solution_rectangle.get_start()
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(solution_rectangle.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(solution_rectangle))
            cursor.idle=True


        self.wait(4)

class Func_6_P_graphs_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        rec = Rectangle(height=4.4, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.4,0])
        cords = NumberPlane(x_range=[-3, 3, .5], y_range=[-4, 4, .5], x_length=3, y_length=4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(3)[0], cords.get_y_axis().n2p(-1)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=c1t, stroke_width=2)
        graph = cords.plot(lambda x: -1*2**x-1, x_range=[-3, 1.53, .001], color=BLUE_D, stroke_width=2)
        term = MathTex("f", "(x)", "=", "a", "\\cdot", "b", "^x", "+", "c", "", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        term_c = MathTex("f", "(x)", "=", "a", "\\cdot", "b", "^x", "-", "1", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_a = MathTex("f", "(0)", "=", "a", "\\cdot", "b", "^0", "-", "1", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_b = MathTex("f", "(0)", "=", "a", "", "", "", "-", "1", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_c = MathTex("f", "(0)", "=", "a", "", "", "", "-", "1", "=-2",color=c1t, font_size=fs2).move_to(term)
        term_c_0_1 = MathTex("f", "(0)", "=", "-1", "", "", "", "-", "1", "=-2",color=c1t, font_size=fs2).move_to(term)
        term_a = MathTex("f", "(x)", "=", "-1", "\\cdot", "b", "^x", "-", "1", "",color=c1t, font_size=fs2).move_to(term)
        term_b = MathTex("f", "(x)", "=", "-1", "\\cdot", "2", "^x", "-", "1", "",color=c1t, font_size=fs2).move_to(term)
        solution_rectangle = SurroundingRectangle(term_b, color=PURE_BLUE, corner_radius=.1, buff=.2)
        self.add(term, asymptote, graph)
        
        points = [[-1,-1.5], [0,-2], [1,-3]]
        for p in points:
                self.add(Circle(color=BLACK, radius=.05, stroke_width=2, fill_opacity=1, fill_color=WHITE).move_to(cords.c2p(*p)))

        cursor = AltCursor(y=-2, idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_5")+self.translate("Func_6_P.graphs.2.a.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("highlight_asymptote")
            x_left, x_right = asymptote.get_start()[0], asymptote.get_end()[0]
            x,y,_ = asymptote.get_center()
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x, y, x_right-x_left+0.2), run_time=.5)

            self.wait_until_bookmark("c_mark")
            x,y,_ = term[-1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            
            self.wait_until_bookmark("c_in")
            self.play(TransformMatchingTex(term, term_c))

            self.wait_until_bookmark("plug_in_zero_a")
            x,y,_ = term_c[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.play(TransformMatchingTex(term_c, term_c_0_a))

            self.wait_until_bookmark("plug_in_zero_b")
            self.play(TransformMatchingTex(term_c_0_a, term_c_0_b))

            self.wait_until_bookmark("plug_in_zero_c")
            x,y,_ = term_c_0_c[-1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.play(TransformMatchingTex(term_c_0_b, term_c_0_c))

            self.wait_until_bookmark("move_to_a")
            x,y,_ = term_c_0_c[3].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("a_in")
            self.play(TransformMatchingTex(term_c_0_c, term_c_0_1))

            self.wait_until_bookmark("reset")
            self.play(TransformMatchingTex(term_c_0_1, term_a))

            self.wait_until_bookmark("highlight_b")
            x,y,_ = term_a[5].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            lines = VGroup()
            for idx in range(3):
                self.wait_until_bookmark(f"point_{idx+1}")
                x,y_top, _ = cords.c2p(*points[idx])
                y_bottom = cords.get_y_axis().n2p(-1)[1]
                line = Line([x,y_top,0], [x,y_bottom,0], color=RED, stroke_width=2)
                lines.add(line)
                self.play(CursorMoveTo(cursor,x,y_top), run_time=.5)
                self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(line.get_end())))
                self.play(Create(line))

            self.wait_until_bookmark("reset_cursor")
            self.play(CursorMoveTo(cursor,0,-2), run_time=.5)

            self.wait_until_bookmark("highlight_b_again")
            x,y,_ = term_a[5].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("b_in")
            self.play(TransformMatchingTex(term_a, term_b))

            self.wait_until_bookmark("conclusion")
            x,y,_ = solution_rectangle.get_start()
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(solution_rectangle.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(solution_rectangle))
            cursor.idle=True


        self.wait(4)

####################################
####################################
class Func_6_P_graphs_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a=-1$, $b=0.5$, $c=-1.5$", "$a=1$, $b=2$, $c=1$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_6_P_graphs.1.q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$a=\key{a}$, $b=\key{b}$, $c=\key{c}$",
                answerOptionsTypes={
                    "a": "number",
                    "b": "number",
                    "c": "number",
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        rec = Rectangle(height=4.4, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.4,0])
        cords = NumberPlane(x_range=[-3, 3, .5], y_range=[-4, 4, .5], x_length=3, y_length=4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(3)[0], cords.get_y_axis().n2p(-1.5)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=c1t, stroke_width=2)
        graph = cords.plot(lambda x: -1*0.5**x-1.5, x_range=[-1.3, 3, .001], color=ORANGE, stroke_width=2)
        term = MathTex("f(x)=a\\cdot b^x+c", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        
        points = [[-1,-3.5], [0,-2.5], [1,-2]]

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.graphs.3.q.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("graph_in")
            self.add_pencil_sound(1.5)
            self.play(Create(graph))

            self.wait_until_bookmark("term_in")
            self.play(Write(term))

            self.wait_until_bookmark("asympote_in")
            self.add_pencil_sound(1.5)
            self.play(Create(asymptote))

            self.wait_until_bookmark("points_in")
            for p in points:
                self.play(Write(Circle(color=BLACK, radius=.05, stroke_width=2, fill_opacity=1, fill_color=WHITE).move_to(cords.c2p(*p))), run_time=1)

        self.wait(4)


class Func_6_P_graphs_3_a(SophiaCursorScene):
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        rec = Rectangle(height=4.4, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.4,0])
        cords = NumberPlane(x_range=[-3, 3, .5], y_range=[-4, 4, .5], x_length=3, y_length=4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(3)[0], cords.get_y_axis().n2p(-1.5)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=c1t, stroke_width=2)
        graph = cords.plot(lambda x: -1*0.5**x-1.5, x_range=[-1.3, 3, .001], color=ORANGE, stroke_width=2)
        term = MathTex("f", "(x)", "=", "a", "\\cdot", "b", "^x", "+", "c", "", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        term_c = MathTex("f", "(x)", "=", "a", "\\cdot", "b", "^x", "-", "1.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_a = MathTex("f", "(0)", "=", "a", "\\cdot", "b", "^0", "-", "1.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_b = MathTex("f", "(0)", "=", "a", "", "", "", "-", "1.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_c = MathTex("f", "(0)", "=", "a", "", "", "", "-", "1.5", "=-2.5",color=c1t, font_size=fs2).move_to(term)
        term_c_0_1 = MathTex("f", "(0)", "=", "-1", "", "", "", "-", "1.5", "=-2.5",color=c1t, font_size=fs2).move_to(term)
        term_a = MathTex("f", "(x)", "=", "-1", "\\cdot", "b", "^x", "-", "1.5", "",color=c1t, font_size=fs2).move_to(term)
        term_b = MathTex("f", "(x)", "=", "-1", "\\cdot", "0.5", "^x", "-", "1.5", "",color=c1t, font_size=fs2).move_to(term)
        solution_rectangle = SurroundingRectangle(term_b, color=PURE_BLUE, corner_radius=.1, buff=.2)
        self.add(term, asymptote, graph)
        
        points = [[-1,-3.5], [0,-2.5], [1,-2]]
        for p in points:
            self.add(Circle(color=BLACK, radius=.05, stroke_width=2, fill_opacity=1, fill_color=WHITE).move_to(cords.c2p(*p)))

        cursor = AltCursor(y=-2, idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_5")+self.translate("Func_6_P.graphs.3.a.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("highlight_asymptote")
            x_left, x_right = asymptote.get_start()[0], asymptote.get_end()[0]
            x,y,_ = asymptote.get_center()
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x, y, x_right-x_left+0.2), run_time=.5)

            self.wait_until_bookmark("c_mark")
            x,y,_ = term[-1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            
            self.wait_until_bookmark("c_in")
            self.play(TransformMatchingTex(term, term_c))

            self.wait_until_bookmark("plug_in_zero_a")
            x,y,_ = term_c[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.play(TransformMatchingTex(term_c, term_c_0_a))

            self.wait_until_bookmark("plug_in_zero_b")
            self.play(TransformMatchingTex(term_c_0_a, term_c_0_b))

            self.wait_until_bookmark("plug_in_zero_c")
            x,y,_ = term_c_0_c[-1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.play(TransformMatchingTex(term_c_0_b, term_c_0_c))

            self.wait_until_bookmark("move_to_a")
            x,y,_ = term_c_0_c[3].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("a_in")
            self.play(TransformMatchingTex(term_c_0_c, term_c_0_1))

            self.wait_until_bookmark("reset")
            self.play(TransformMatchingTex(term_c_0_1, term_a))

            self.wait_until_bookmark("highlight_b")
            x,y,_ = term_a[5].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            lines = VGroup()
            for idx in range(3):
                self.wait_until_bookmark(f"point_{idx+1}")
                x,y_top, _ = cords.c2p(*points[idx])
                y_bottom = cords.get_y_axis().n2p(-1.5)[1]
                line = Line([x,y_top,0], [x,y_bottom,0], color=RED, stroke_width=2)
                lines.add(line)
                self.play(CursorMoveTo(cursor,x,y_top), run_time=.5)
                self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(line.get_end())))
                self.play(Create(line))

            self.wait_until_bookmark("reset_cursor")
            self.play(CursorMoveTo(cursor,0,-2), run_time=.5)

            self.wait_until_bookmark("highlight_b_again")
            x,y,_ = term_a[5].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("b_in")
            self.play(TransformMatchingTex(term_a, term_b))

            self.wait_until_bookmark("conclusion")
            x,y,_ = solution_rectangle.get_end()
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(solution_rectangle.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(solution_rectangle))
            cursor.idle=True

        self.wait(4)

class Func_6_P_graphs_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        rec = Rectangle(height=4.4, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.4,0])
        cords = NumberPlane(x_range=[-3, 3, .5], y_range=[-4, 4, .5], x_length=3, y_length=4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(3)[0], cords.get_y_axis().n2p(-1.5)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=c1t, stroke_width=2)
        graph = cords.plot(lambda x: -1*0.5**x-1.5, x_range=[-1.3, 3, .001], color=ORANGE, stroke_width=2)
        term = MathTex("f", "(x)", "=", "a", "\\cdot", "b", "^x", "+", "c", "", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        term_c = MathTex("f", "(x)", "=", "a", "\\cdot", "b", "^x", "-", "1.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_a = MathTex("f", "(0)", "=", "a", "\\cdot", "b", "^0", "-", "1.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_b = MathTex("f", "(0)", "=", "a", "", "", "", "-", "1.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_c = MathTex("f", "(0)", "=", "a", "", "", "", "-", "1.5", "=-2.5",color=c1t, font_size=fs2).move_to(term)
        term_c_0_1 = MathTex("f", "(0)", "=", "-1", "", "", "", "-", "1.5", "=-2.5",color=c1t, font_size=fs2).move_to(term)
        term_a = MathTex("f", "(x)", "=", "-1", "\\cdot", "b", "^x", "-", "1.5", "",color=c1t, font_size=fs2).move_to(term)
        term_b = MathTex("f", "(x)", "=", "-1", "\\cdot", "0.5", "^x", "-", "1.5", "",color=c1t, font_size=fs2).move_to(term)
        solution_rectangle = SurroundingRectangle(term_b, color=PURE_BLUE, corner_radius=.1, buff=.2)
        self.add(term, asymptote, graph)
        
        points = [[-1,-3.5], [0,-2.5], [1,-2]]
        for p in points:
            self.add(Circle(color=BLACK, radius=.05, stroke_width=2, fill_opacity=1, fill_color=WHITE).move_to(cords.c2p(*p)))

        cursor = AltCursor(y=-2, idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_6_P.graphs.3.a.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("highlight_asymptote")
            x_left, x_right = asymptote.get_start()[0], asymptote.get_end()[0]
            x,y,_ = asymptote.get_center()
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x, y, x_right-x_left+0.2), run_time=.5)

            self.wait_until_bookmark("c_mark")
            x,y,_ = term[-1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            
            self.wait_until_bookmark("c_in")
            self.play(TransformMatchingTex(term, term_c))

            self.wait_until_bookmark("plug_in_zero_a")
            x,y,_ = term_c[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.play(TransformMatchingTex(term_c, term_c_0_a))

            self.wait_until_bookmark("plug_in_zero_b")
            self.play(TransformMatchingTex(term_c_0_a, term_c_0_b))

            self.wait_until_bookmark("plug_in_zero_c")
            x,y,_ = term_c_0_c[-1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.play(TransformMatchingTex(term_c_0_b, term_c_0_c))

            self.wait_until_bookmark("move_to_a")
            x,y,_ = term_c_0_c[3].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("a_in")
            self.play(TransformMatchingTex(term_c_0_c, term_c_0_1))

            self.wait_until_bookmark("reset")
            self.play(TransformMatchingTex(term_c_0_1, term_a))

            self.wait_until_bookmark("highlight_b")
            x,y,_ = term_a[5].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            lines = VGroup()
            for idx in range(3):
                self.wait_until_bookmark(f"point_{idx+1}")
                x,y_top, _ = cords.c2p(*points[idx])
                y_bottom = cords.get_y_axis().n2p(-1.5)[1]
                line = Line([x,y_top,0], [x,y_bottom,0], color=RED, stroke_width=2)
                lines.add(line)
                self.play(CursorMoveTo(cursor,x,y_top), run_time=.5)
                self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(line.get_end())))
                self.play(Create(line))

            self.wait_until_bookmark("reset_cursor")
            self.play(CursorMoveTo(cursor,0,-2), run_time=.5)

            self.wait_until_bookmark("highlight_b_again")
            x,y,_ = term_a[5].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("b_in")
            self.play(TransformMatchingTex(term_a, term_b))

            self.wait_until_bookmark("conclusion")
            x,y,_ = solution_rectangle.get_end()
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(solution_rectangle.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(solution_rectangle))
            cursor.idle=True

        self.wait(4)
#

####################################
####################################
class Func_6_P_graphs_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a=1$, $b=1.5$, $c=-0.5$", "$a=2$, $b=2$, $c=2$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_6_P_graphs.1.q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$a=\key{a}$, $b=\key{b}$, $c=\key{c}$",
                answerOptionsTypes={
                    "a": "number",
                    "b": "number",
                    "c": "number",
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        rec = Rectangle(height=4.4, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.4,0])
        cords = NumberPlane(x_range=[-3, 3, .5], y_range=[-4, 4, .5], x_length=3, y_length=4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(3)[0], cords.get_y_axis().n2p(-0.5)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=c1t, stroke_width=2)
        graph = cords.plot(lambda x: 1.5**x-.5, x_range=[-3, 3, .001], color=PINK, stroke_width=2)
        term = MathTex("f(x)=a\\cdot b^x+c", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        
        points = [[0,.5], [1,1]]

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.graphs.4.q.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("graph_in")
            self.add_pencil_sound(1.5)
            self.play(Create(graph))

            self.wait_until_bookmark("asympote_in")
            self.add_pencil_sound(1.5)
            self.play(Create(asymptote))

            self.wait_until_bookmark("points_in")
            for p in points:
                self.play(Write(Circle(color=BLACK, radius=.05, stroke_width=2, fill_opacity=1, fill_color=WHITE).move_to(cords.c2p(*p))), run_time=1)

            self.wait_until_bookmark("term_in")
            self.play(Write(term))


        self.wait(4)


class Func_6_P_graphs_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        rec = Rectangle(height=4.4, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.4,0])
        cords = NumberPlane(x_range=[-3, 3, .5], y_range=[-4, 4, .5], x_length=3, y_length=4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(3)[0], cords.get_y_axis().n2p(-.5)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=c1t, stroke_width=2)
        graph = cords.plot(lambda x: 1.5**x-.5, x_range=[-3, 3, .001], color=PINK, stroke_width=2)
        term = MathTex("f", "(x)", "=", "a", "\\cdot", "b", "^x", "+", "c", "", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        term_c = MathTex("f", "(x)", "=", "a", "\\cdot", "b", "^x", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_a = MathTex("f", "(0)", "=", "a", "\\cdot", "b", "^0", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_b = MathTex("f", "(0)", "=", "a", "", "", "", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_c = MathTex("f", "(0)", "=", "a", "", "", "", "-", "0.5", "=0.5",color=c1t, font_size=fs2).move_to(term)
        term_c_0_1 = MathTex("f", "(0)", "=", "1", "", "", "", "-", "0.5", "=0.5",color=c1t, font_size=fs2).move_to(term)
        term_a = MathTex("f", "(x)", "=", "1", "\\cdot", "b", "^x", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        term_b = MathTex("f", "(x)", "=", "1", "\\cdot", "1.5", "^x", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        solution_rectangle = SurroundingRectangle(term_b, color=PURE_BLUE, corner_radius=.1, buff=.2)
        self.add(term, asymptote, graph)
        
        points = [[0,.5], [1,1]]
        for p in points:
            self.add(Circle(color=BLACK, radius=.05, stroke_width=2, fill_opacity=1, fill_color=WHITE).move_to(cords.c2p(*p)))

        cursor = AltCursor(y=-2, idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_5")+self.translate("Func_6_P.graphs.4.a.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("highlight_asymptote")
            x_left, x_right = asymptote.get_start()[0], asymptote.get_end()[0]
            x,y,_ = asymptote.get_center()
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x, y, x_right-x_left+0.2), run_time=.5)

            self.wait_until_bookmark("c_mark")
            x,y,_ = term[-1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            
            self.wait_until_bookmark("c_in")
            self.play(TransformMatchingTex(term, term_c))

            self.wait_until_bookmark("plug_in_zero_a")
            x,y,_ = term_c[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.play(TransformMatchingTex(term_c, term_c_0_a))

            self.wait_until_bookmark("plug_in_zero_b")
            self.play(TransformMatchingTex(term_c_0_a, term_c_0_b))

            self.wait_until_bookmark("plug_in_zero_c")
            x,y,_ = term_c_0_c[-1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.play(TransformMatchingTex(term_c_0_b, term_c_0_c))

            self.wait_until_bookmark("move_to_a")
            x,y,_ = term_c_0_c[3].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("a_in")
            self.play(TransformMatchingTex(term_c_0_c, term_c_0_1))

            self.wait_until_bookmark("reset")
            self.play(TransformMatchingTex(term_c_0_1, term_a))

            self.wait_until_bookmark("highlight_b")
            x,y,_ = term_a[5].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            lines = VGroup()
            for idx in range(2):
                self.wait_until_bookmark(f"point_{idx+1}")
                x,y_top, _ = cords.c2p(*points[idx])
                y_bottom = cords.get_y_axis().n2p(-.5)[1]
                line = Line([x,y_top,0], [x,y_bottom,0], color=RED, stroke_width=2)
                lines.add(line)
                self.play(CursorMoveTo(cursor,x,y_top), run_time=.5)
                self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(line.get_end())))
                self.play(Create(line))

            self.wait_until_bookmark("reset_cursor")
            self.play(CursorMoveTo(cursor,0,-2), run_time=.5)

            self.wait_until_bookmark("highlight_b_again")
            x,y,_ = term_a[5].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("b_in")
            self.play(TransformMatchingTex(term_a, term_b))

            self.wait_until_bookmark("conclusion")
            x,y,_ = solution_rectangle.get_end()
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(solution_rectangle.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(solution_rectangle))
            cursor.idle=True

        self.wait(4)

class Func_6_P_graphs_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()


        rec = Rectangle(height=4.4, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.4,0])
        cords = NumberPlane(x_range=[-3, 3, .5], y_range=[-4, 4, .5], x_length=3, y_length=4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(3)[0], cords.get_y_axis().n2p(-.5)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=c1t, stroke_width=2)
        graph = cords.plot(lambda x: 1.5**x-.5, x_range=[-3, 3, .001], color=PINK, stroke_width=2)
        term = MathTex("f", "(x)", "=", "a", "\\cdot", "b", "^x", "+", "c", "", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        term_c = MathTex("f", "(x)", "=", "a", "\\cdot", "b", "^x", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_a = MathTex("f", "(0)", "=", "a", "\\cdot", "b", "^0", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_b = MathTex("f", "(0)", "=", "a", "", "", "", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        term_c_0_c = MathTex("f", "(0)", "=", "a", "", "", "", "-", "0.5", "=0.5",color=c1t, font_size=fs2).move_to(term)
        term_c_0_1 = MathTex("f", "(0)", "=", "1", "", "", "", "-", "0.5", "=0.5",color=c1t, font_size=fs2).move_to(term)
        term_a = MathTex("f", "(x)", "=", "1", "\\cdot", "b", "^x", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        term_b = MathTex("f", "(x)", "=", "1", "\\cdot", "1.5", "^x", "-", "0.5", "",color=c1t, font_size=fs2).move_to(term)
        solution_rectangle = SurroundingRectangle(term_b, color=PURE_BLUE, corner_radius=.1, buff=.2)
        self.add(term, asymptote, graph)
        
        points = [[0,.5], [1,1]]
        for p in points:
            self.add(Circle(color=BLACK, radius=.05, stroke_width=2, fill_opacity=1, fill_color=WHITE).move_to(cords.c2p(*p)))

        cursor = AltCursor(y=-2, idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_6_P.graphs.4.a.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("highlight_asymptote")
            x_left, x_right = asymptote.get_start()[0], asymptote.get_end()[0]
            x,y,_ = asymptote.get_center()
            cursor.idle=False
            self.play(CursorMoveResize(cursor, x, y, x_right-x_left+0.2), run_time=.5)

            self.wait_until_bookmark("c_mark")
            x,y,_ = term[-1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            
            self.wait_until_bookmark("c_in")
            self.play(TransformMatchingTex(term, term_c))

            self.wait_until_bookmark("plug_in_zero_a")
            x,y,_ = term_c[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.play(TransformMatchingTex(term_c, term_c_0_a))

            self.wait_until_bookmark("plug_in_zero_b")
            self.play(TransformMatchingTex(term_c_0_a, term_c_0_b))

            self.wait_until_bookmark("plug_in_zero_c")
            x,y,_ = term_c_0_c[-1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)
            self.play(TransformMatchingTex(term_c_0_b, term_c_0_c))

            self.wait_until_bookmark("move_to_a")
            x,y,_ = term_c_0_c[3].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("a_in")
            self.play(TransformMatchingTex(term_c_0_c, term_c_0_1))

            self.wait_until_bookmark("reset")
            self.play(TransformMatchingTex(term_c_0_1, term_a))

            self.wait_until_bookmark("highlight_b")
            x,y,_ = term_a[5].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            lines = VGroup()
            for idx in range(2):
                self.wait_until_bookmark(f"point_{idx+1}")
                x,y_top, _ = cords.c2p(*points[idx])
                y_bottom = cords.get_y_axis().n2p(-.5)[1]
                line = Line([x,y_top,0], [x,y_bottom,0], color=RED, stroke_width=2)
                lines.add(line)
                self.play(CursorMoveTo(cursor,x,y_top), run_time=.5)
                self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(line.get_end())))
                self.play(Create(line))

            self.wait_until_bookmark("reset_cursor")
            self.play(CursorMoveTo(cursor,0,-2), run_time=.5)

            self.wait_until_bookmark("highlight_b_again")
            x,y,_ = term_a[5].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("b_in")
            self.play(TransformMatchingTex(term_a, term_b))

            self.wait_until_bookmark("conclusion")
            x,y,_ = solution_rectangle.get_end()
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(solution_rectangle.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(solution_rectangle))
            cursor.idle=True

        self.wait(4)


####################################
####################################
#Focus: Horizontal Asymptotes
class Func_6_P_horizontal_asymptotes_exp_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_6_P.horizontal_asymptotes_exp_1.answer-options")),
            correctAnswerIndex=3,
            questionText=self.translate("Func_6_P.horizontal_asymptotes_exp_1.question-text"),
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(4)[0], cords.get_y_axis().n2p(0)[1]
        f = lambda x: 2**x
        graph = cords.plot(f, x_range=[-4, 2, .001], color=ORANGE, stroke_width=2)
        term = MathTex("f(x)=2^x", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)

        x_tracker = ValueTracker(0)
        cursor = AltCursor(y=cords.get_x_axis().n2p(0)[1], idle=False).add_updater(lambda m: m.move_to(cords.c2p(x_tracker.get_value(), f(x_tracker.get_value()))))

        # Action Sequence
        # You can see that as x gets smaller and smaller, the values get closer and closer to <bookmark mark="asympote_in"/>the line that is shown here. This line is called the asymptote.
        with self.voiceover(
                text=self.translate("Func_6_P.horizontal_asymptotes_exp_1.q.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("graph_in")
            self.add_pencil_sound(1.5)
            self.play(Create(graph))

            self.wait_until_bookmark("term_in")
            self.play(Write(term))

            self.wait_until_bookmark("x_gets_larger")
            self.play(Create(cursor), run_time=1)
            self.play(x_tracker.animate.set_value(2), run_time=4)
            cursor.idle=True

            self.wait_until_bookmark("x_gets_smaller")
            cursor.idle=False
            self.play(x_tracker.animate.set_value(-4), run_time=4)
            cursor.idle=True

        self.wait(4)


class Func_6_P_horizontal_asymptotes_exp_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(4)[0], cords.get_y_axis().n2p(0)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=GREEN_E, stroke_width=6)
        f = lambda x: 2**x
        g = lambda x: 0.5**x
        h = lambda x: -1*2**x
        graph = cords.plot(f, x_range=[-4, 2, .001], color=ORANGE, stroke_width=2)
        term = MathTex("f(", "x", ")=", "2", "^x", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        term_neg_1_a = MathTex("f(", "-1", ")=", "2", "^{-1}", color=c1t, font_size=fs2).move_to(term)
        term_neg_1_b = MathTex("f(", "-1", ")=", "2", "^{-1}", "=\\tfrac12", color=c1t, font_size=fs2).move_to(term)
        term_neg_2_a = MathTex("f(", "-2", ")=", "2", "^{-2}", color=c1t, font_size=fs2).move_to(term)
        term_neg_2_b = MathTex("f(", "-2", ")=", "2", "^{-2}", "=\\tfrac14", color=c1t, font_size=fs2).move_to(term)
        term_neg_3 = MathTex("f(", "-3", ")=", "2", "^{-3}", "=\\tfrac18", color=c1t, font_size=fs2).move_to(term)
        term_neg_4 = MathTex("f(", "-4", ")=", "2", "^{-4}", "=\\tfrac{1}{16}", color=c1t, font_size=fs2).move_to(term)
        term_neg_5 = MathTex("f(", "-5", ")=", "2", "^{-5}", "=\\tfrac{1}{32}", color=c1t, font_size=fs2).move_to(term)
        term_neg_6 = MathTex("f(", "-6", ")=", "2", "^{-6}", "=\\tfrac{1}{64}", color=c1t, font_size=fs2).move_to(term)
        term_neg_7 = MathTex("f(", "-7", ")=", "2", "^{-7}", "=\\tfrac{1}{128}", color=c1t, font_size=fs2).move_to(term)
        term_neg_8 = MathTex("f(", "-8", ")=", "2", "^{-8}", "=\\tfrac{1}{256}", color=c1t, font_size=fs2).move_to(term)
        term_neg_9 = MathTex("f(", "-9", ")=", "2", "^{-9}", "=\\tfrac{1}{512}", color=c1t, font_size=fs2).move_to(term)
        
        horizontal_asymptote = Tex("Horizontal asymptote at $y=0$", color=GREEN_E, font_size=fs3).move_to(term)
        
        term_g = MathTex("g(", "x", ")=", "\\left(\\tfrac12\\right)", "^x", color=PINK, font_size=fs2).move_to(term)
        term_h = MathTex("h(", "x", ")=", "-1\\cdot2", "^x", color=PURPLE_D, font_size=fs2).move_to(term)
        graph_g = cords.plot(g, x_range=[-2, 4, .001], color=PINK, stroke_width=2)
        graph_h = cords.plot(h, x_range=[-4, 2, .001], color=PURPLE_D, stroke_width=2)

        rule_1 = MathTex("f(", "x", ")=", "a\\cdot b", "^x", color=c1t, font_size=fs2).move_to(term)
        rule_arrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(rule_1, DOWN, buff=.2)
        rule_2 = Tex("Horizontal asymptote at $y=0$", color=c1t, font_size=fs3).next_to(rule_arrow, DOWN, buff=.2)
        rule_rectangle = SurroundingRectangle(VGroup(rule_1, rule_2), color=PURE_BLUE, corner_radius=.1, buff=.2)

        self.add(graph, term)

        x_tracker = ValueTracker(0)
        cursor = AltCursor(y=cords.get_x_axis().n2p(0)[1], idle=False)#.add_updater(lambda m: m.move_to(cords.c2p(x_tracker.get_value(), f(x_tracker.get_value()))))

        # Action Sequence
        # You can see that as x gets smaller and smaller, the values get closer and closer to <bookmark mark="asympote_in"/>the line that is shown here. This line is called the asymptote.
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_P.horizontal_asymptotes_exp_1.a.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("plug_in_neg_one_a")
            self.play(TransformMatchingTex(term, term_neg_1_a))

            self.wait_until_bookmark("plug_in_neg_one_b")
            self.play(TransformMatchingTex(term_neg_1_a, term_neg_1_b))

            self.wait_until_bookmark("plug_in_neg_two_a")
            self.play(TransformMatchingTex(term_neg_1_b, term_neg_2_a))

            self.wait_until_bookmark("plug_in_neg_two_b")
            self.play(TransformMatchingTex(term_neg_2_a, term_neg_2_b))

            self.wait_until_bookmark("start_plugging_in")
            self.play(TransformMatchingTex(term_neg_2_b, term_neg_3), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_3, term_neg_4), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_4, term_neg_5), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_5, term_neg_6), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_6, term_neg_7), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_7, term_neg_8), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_8, term_neg_9), run_time=.5)
            self.wait(0.5)

            self.wait_until_bookmark("show_asymptote")
            self.play(Write(asymptote), ReplacementTransform(term_neg_9, horizontal_asymptote), run_time=1)

            self.wait_until_bookmark("cleanup_1")
            self.play(Unwrite(horizontal_asymptote), run_time=1)

            self.wait_until_bookmark("g_in")
            self.add_pencil_sound(1)
            self.play(Write(term_g), Create(graph_g), run_time=1)

            self.wait_until_bookmark("h_in")
            self.add_pencil_sound(1)
            self.play(TransformMatchingTex(term_g, term_h), Create(graph_h), run_time=1)

            self.wait_until_bookmark("rule_1")
            self.play(ReplacementTransform(term_h, rule_1), run_time=1)

            self.wait_until_bookmark("rule_2")
            self.play(Write(rule_arrow), Write(rule_2), run_time=1)
            self.add_pencil_sound(1)
            self.play(Create(rule_rectangle), run_time=1)

        self.wait(4)

class Func_6_P_horizontal_asymptotes_exp_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(4)[0], cords.get_y_axis().n2p(0)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=GREEN_E, stroke_width=6)
        f = lambda x: 2**x
        g = lambda x: 0.5**x
        h = lambda x: -1*2**x
        graph = cords.plot(f, x_range=[-4, 2, .001], color=ORANGE, stroke_width=2)
        term = MathTex("f(", "x", ")=", "2", "^x", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        term_neg_1_a = MathTex("f(", "-1", ")=", "2", "^{-1}", color=c1t, font_size=fs2).move_to(term)
        term_neg_1_b = MathTex("f(", "-1", ")=", "2", "^{-1}", "=\\tfrac12", color=c1t, font_size=fs2).move_to(term)
        term_neg_2_a = MathTex("f(", "-2", ")=", "2", "^{-2}", color=c1t, font_size=fs2).move_to(term)
        term_neg_2_b = MathTex("f(", "-2", ")=", "2", "^{-2}", "=\\tfrac14", color=c1t, font_size=fs2).move_to(term)
        term_neg_3 = MathTex("f(", "-3", ")=", "2", "^{-3}", "=\\tfrac18", color=c1t, font_size=fs2).move_to(term)
        term_neg_4 = MathTex("f(", "-4", ")=", "2", "^{-4}", "=\\tfrac{1}{16}", color=c1t, font_size=fs2).move_to(term)
        term_neg_5 = MathTex("f(", "-5", ")=", "2", "^{-5}", "=\\tfrac{1}{32}", color=c1t, font_size=fs2).move_to(term)
        term_neg_6 = MathTex("f(", "-6", ")=", "2", "^{-6}", "=\\tfrac{1}{64}", color=c1t, font_size=fs2).move_to(term)
        term_neg_7 = MathTex("f(", "-7", ")=", "2", "^{-7}", "=\\tfrac{1}{128}", color=c1t, font_size=fs2).move_to(term)
        term_neg_8 = MathTex("f(", "-8", ")=", "2", "^{-8}", "=\\tfrac{1}{256}", color=c1t, font_size=fs2).move_to(term)
        term_neg_9 = MathTex("f(", "-9", ")=", "2", "^{-9}", "=\\tfrac{1}{512}", color=c1t, font_size=fs2).move_to(term)
        
        horizontal_asymptote = Tex("Horizontal asymptote at $y=0$", color=GREEN_E, font_size=fs3).move_to(term)
        
        term_g = MathTex("g(", "x", ")=", "\\left(\\tfrac12\\right)", "^x", color=PINK, font_size=fs2).move_to(term)
        term_h = MathTex("h(", "x", ")=", "-1\\cdot2", "^x", color=PURPLE_D, font_size=fs2).move_to(term)
        graph_g = cords.plot(g, x_range=[-2, 4, .001], color=PINK, stroke_width=2)
        graph_h = cords.plot(h, x_range=[-4, 2, .001], color=PURPLE_D, stroke_width=2)

        rule_1 = MathTex("f(", "x", ")=", "a\\cdot b", "^x", color=c1t, font_size=fs2).move_to(term)
        rule_arrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(rule_1, DOWN, buff=.2)
        rule_2 = Tex("Horizontal asymptote at $y=0$", color=c1t, font_size=fs3).next_to(rule_arrow, DOWN, buff=.2)
        rule_rectangle = SurroundingRectangle(VGroup(rule_1, rule_2), color=PURE_BLUE, corner_radius=.1, buff=.2)

        self.add(graph, term)

        x_tracker = ValueTracker(0)
        cursor = AltCursor(y=cords.get_x_axis().n2p(0)[1], idle=False)#.add_updater(lambda m: m.move_to(cords.c2p(x_tracker.get_value(), f(x_tracker.get_value()))))

        # Action Sequence
        # You can see that as x gets smaller and smaller, the values get closer and closer to <bookmark mark="asympote_in"/>the line that is shown here. This line is called the asymptote.
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_P.horizontal_asymptotes_exp_1.a.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("plug_in_neg_one_a")
            self.play(TransformMatchingTex(term, term_neg_1_a))

            self.wait_until_bookmark("plug_in_neg_one_b")
            self.play(TransformMatchingTex(term_neg_1_a, term_neg_1_b))

            self.wait_until_bookmark("plug_in_neg_two_a")
            self.play(TransformMatchingTex(term_neg_1_b, term_neg_2_a))

            self.wait_until_bookmark("plug_in_neg_two_b")
            self.play(TransformMatchingTex(term_neg_2_a, term_neg_2_b))

            self.wait_until_bookmark("start_plugging_in")
            self.play(TransformMatchingTex(term_neg_2_b, term_neg_3), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_3, term_neg_4), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_4, term_neg_5), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_5, term_neg_6), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_6, term_neg_7), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_7, term_neg_8), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_8, term_neg_9), run_time=.5)
            self.wait(0.5)

            self.wait_until_bookmark("show_asymptote")
            self.play(Write(asymptote), ReplacementTransform(term_neg_9, horizontal_asymptote), run_time=1)

            self.wait_until_bookmark("cleanup_1")
            self.play(Unwrite(horizontal_asymptote), run_time=1)

            self.wait_until_bookmark("g_in")
            self.add_pencil_sound(1)
            self.play(Write(term_g), Create(graph_g), run_time=1)

            self.wait_until_bookmark("h_in")
            self.add_pencil_sound(1)
            self.play(TransformMatchingTex(term_g, term_h), Create(graph_h), run_time=1)

            self.wait_until_bookmark("rule_1")
            self.play(ReplacementTransform(term_h, rule_1), run_time=1)

            self.wait_until_bookmark("rule_2")
            self.play(Write(rule_arrow), Write(rule_2), run_time=1)
            self.add_pencil_sound(1)
            self.play(Create(rule_rectangle), run_time=1)

        self.wait(4)

class Func_6_P_horizontal_asymptotes_exp_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(4)[0], cords.get_y_axis().n2p(0)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=GREEN_E, stroke_width=6)
        f = lambda x: 2**x
        g = lambda x: 0.5**x
        h = lambda x: -1*2**x
        graph = cords.plot(f, x_range=[-4, 2, .001], color=ORANGE, stroke_width=2)
        term = MathTex("f(", "x", ")=", "2", "^x", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        term_neg_1_a = MathTex("f(", "-1", ")=", "2", "^{-1}", color=c1t, font_size=fs2).move_to(term)
        term_neg_1_b = MathTex("f(", "-1", ")=", "2", "^{-1}", "=\\tfrac12", color=c1t, font_size=fs2).move_to(term)
        term_neg_2_a = MathTex("f(", "-2", ")=", "2", "^{-2}", color=c1t, font_size=fs2).move_to(term)
        term_neg_2_b = MathTex("f(", "-2", ")=", "2", "^{-2}", "=\\tfrac14", color=c1t, font_size=fs2).move_to(term)
        term_neg_3 = MathTex("f(", "-3", ")=", "2", "^{-3}", "=\\tfrac18", color=c1t, font_size=fs2).move_to(term)
        term_neg_4 = MathTex("f(", "-4", ")=", "2", "^{-4}", "=\\tfrac{1}{16}", color=c1t, font_size=fs2).move_to(term)
        term_neg_5 = MathTex("f(", "-5", ")=", "2", "^{-5}", "=\\tfrac{1}{32}", color=c1t, font_size=fs2).move_to(term)
        term_neg_6 = MathTex("f(", "-6", ")=", "2", "^{-6}", "=\\tfrac{1}{64}", color=c1t, font_size=fs2).move_to(term)
        term_neg_7 = MathTex("f(", "-7", ")=", "2", "^{-7}", "=\\tfrac{1}{128}", color=c1t, font_size=fs2).move_to(term)
        term_neg_8 = MathTex("f(", "-8", ")=", "2", "^{-8}", "=\\tfrac{1}{256}", color=c1t, font_size=fs2).move_to(term)
        term_neg_9 = MathTex("f(", "-9", ")=", "2", "^{-9}", "=\\tfrac{1}{512}", color=c1t, font_size=fs2).move_to(term)
        
        horizontal_asymptote = Tex("Horizontal asymptote at $y=0$", color=GREEN_E, font_size=fs3).move_to(term)
        
        term_g = MathTex("g(", "x", ")=", "\\left(\\tfrac12\\right)", "^x", color=PINK, font_size=fs2).move_to(term)
        term_h = MathTex("h(", "x", ")=", "-1\\cdot2", "^x", color=PURPLE_D, font_size=fs2).move_to(term)
        graph_g = cords.plot(g, x_range=[-2, 4, .001], color=PINK, stroke_width=2)
        graph_h = cords.plot(h, x_range=[-4, 2, .001], color=PURPLE_D, stroke_width=2)

        rule_1 = MathTex("f(", "x", ")=", "a\\cdot b", "^x", color=c1t, font_size=fs2).move_to(term)
        rule_arrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(rule_1, DOWN, buff=.2)
        rule_2 = Tex("Horizontal asymptote at $y=0$", color=c1t, font_size=fs3).next_to(rule_arrow, DOWN, buff=.2)
        rule_rectangle = SurroundingRectangle(VGroup(rule_1, rule_2), color=PURE_BLUE, corner_radius=.1, buff=.2)

        self.add(graph, term)

        x_tracker = ValueTracker(0)
        cursor = AltCursor(y=cords.get_x_axis().n2p(0)[1], idle=False)#.add_updater(lambda m: m.move_to(cords.c2p(x_tracker.get_value(), f(x_tracker.get_value()))))

        # Action Sequence
        # You can see that as x gets smaller and smaller, the values get closer and closer to <bookmark mark="asympote_in"/>the line that is shown here. This line is called the asymptote.
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_P.horizontal_asymptotes_exp_1.a.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("plug_in_neg_one_a")
            self.play(TransformMatchingTex(term, term_neg_1_a))

            self.wait_until_bookmark("plug_in_neg_one_b")
            self.play(TransformMatchingTex(term_neg_1_a, term_neg_1_b))

            self.wait_until_bookmark("plug_in_neg_two_a")
            self.play(TransformMatchingTex(term_neg_1_b, term_neg_2_a))

            self.wait_until_bookmark("plug_in_neg_two_b")
            self.play(TransformMatchingTex(term_neg_2_a, term_neg_2_b))

            self.wait_until_bookmark("start_plugging_in")
            self.play(TransformMatchingTex(term_neg_2_b, term_neg_3), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_3, term_neg_4), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_4, term_neg_5), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_5, term_neg_6), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_6, term_neg_7), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_7, term_neg_8), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_8, term_neg_9), run_time=.5)
            self.wait(0.5)

            self.wait_until_bookmark("show_asymptote")
            self.play(Write(asymptote), ReplacementTransform(term_neg_9, horizontal_asymptote), run_time=1)

            self.wait_until_bookmark("cleanup_1")
            self.play(Unwrite(horizontal_asymptote), run_time=1)

            self.wait_until_bookmark("g_in")
            self.add_pencil_sound(1)
            self.play(Write(term_g), Create(graph_g), run_time=1)

            self.wait_until_bookmark("h_in")
            self.add_pencil_sound(1)
            self.play(TransformMatchingTex(term_g, term_h), Create(graph_h), run_time=1)

            self.wait_until_bookmark("rule_1")
            self.play(ReplacementTransform(term_h, rule_1), run_time=1)

            self.wait_until_bookmark("rule_2")
            self.play(Write(rule_arrow), Write(rule_2), run_time=1)
            self.add_pencil_sound(1)
            self.play(Create(rule_rectangle), run_time=1)

        self.wait(4)

class Func_6_P_horizontal_asymptotes_exp_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(4)[0], cords.get_y_axis().n2p(0)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=GREEN_E, stroke_width=6)
        f = lambda x: 2**x
        g = lambda x: 0.5**x
        h = lambda x: -1*2**x
        graph = cords.plot(f, x_range=[-4, 2, .001], color=ORANGE, stroke_width=2)
        term = MathTex("f(", "x", ")=", "2", "^x", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        term_neg_1_a = MathTex("f(", "-1", ")=", "2", "^{-1}", color=c1t, font_size=fs2).move_to(term)
        term_neg_1_b = MathTex("f(", "-1", ")=", "2", "^{-1}", "=\\tfrac12", color=c1t, font_size=fs2).move_to(term)
        term_neg_2_a = MathTex("f(", "-2", ")=", "2", "^{-2}", color=c1t, font_size=fs2).move_to(term)
        term_neg_2_b = MathTex("f(", "-2", ")=", "2", "^{-2}", "=\\tfrac14", color=c1t, font_size=fs2).move_to(term)
        term_neg_3 = MathTex("f(", "-3", ")=", "2", "^{-3}", "=\\tfrac18", color=c1t, font_size=fs2).move_to(term)
        term_neg_4 = MathTex("f(", "-4", ")=", "2", "^{-4}", "=\\tfrac{1}{16}", color=c1t, font_size=fs2).move_to(term)
        term_neg_5 = MathTex("f(", "-5", ")=", "2", "^{-5}", "=\\tfrac{1}{32}", color=c1t, font_size=fs2).move_to(term)
        term_neg_6 = MathTex("f(", "-6", ")=", "2", "^{-6}", "=\\tfrac{1}{64}", color=c1t, font_size=fs2).move_to(term)
        term_neg_7 = MathTex("f(", "-7", ")=", "2", "^{-7}", "=\\tfrac{1}{128}", color=c1t, font_size=fs2).move_to(term)
        term_neg_8 = MathTex("f(", "-8", ")=", "2", "^{-8}", "=\\tfrac{1}{256}", color=c1t, font_size=fs2).move_to(term)
        term_neg_9 = MathTex("f(", "-9", ")=", "2", "^{-9}", "=\\tfrac{1}{512}", color=c1t, font_size=fs2).move_to(term)
        
        horizontal_asymptote = Tex("Horizontal asymptote at $y=0$", color=GREEN_E, font_size=fs3).move_to(term)
        
        term_g = MathTex("g(", "x", ")=", "\\left(\\tfrac12\\right)", "^x", color=PINK, font_size=fs2).move_to(term)
        term_h = MathTex("h(", "x", ")=", "-1\\cdot2", "^x", color=PURPLE_D, font_size=fs2).move_to(term)
        graph_g = cords.plot(g, x_range=[-2, 4, .001], color=PINK, stroke_width=2)
        graph_h = cords.plot(h, x_range=[-4, 2, .001], color=PURPLE_D, stroke_width=2)

        rule_1 = MathTex("f(", "x", ")=", "a\\cdot b", "^x", color=c1t, font_size=fs2).move_to(term)
        rule_arrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(rule_1, DOWN, buff=.2)
        rule_2 = Tex("Horizontal asymptote at $y=0$", color=c1t, font_size=fs3).next_to(rule_arrow, DOWN, buff=.2)
        rule_rectangle = SurroundingRectangle(VGroup(rule_1, rule_2), color=PURE_BLUE, corner_radius=.1, buff=.2)

        self.add(graph, term)

        x_tracker = ValueTracker(0)
        cursor = AltCursor(y=cords.get_x_axis().n2p(0)[1], idle=False)#.add_updater(lambda m: m.move_to(cords.c2p(x_tracker.get_value(), f(x_tracker.get_value()))))

        # Action Sequence
        # You can see that as x gets smaller and smaller, the values get closer and closer to <bookmark mark="asympote_in"/>the line that is shown here. This line is called the asymptote.
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_6_P.horizontal_asymptotes_exp_1.a.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("plug_in_neg_one_a")
            self.play(TransformMatchingTex(term, term_neg_1_a))

            self.wait_until_bookmark("plug_in_neg_one_b")
            self.play(TransformMatchingTex(term_neg_1_a, term_neg_1_b))

            self.wait_until_bookmark("plug_in_neg_two_a")
            self.play(TransformMatchingTex(term_neg_1_b, term_neg_2_a))

            self.wait_until_bookmark("plug_in_neg_two_b")
            self.play(TransformMatchingTex(term_neg_2_a, term_neg_2_b))

            self.wait_until_bookmark("start_plugging_in")
            self.play(TransformMatchingTex(term_neg_2_b, term_neg_3), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_3, term_neg_4), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_4, term_neg_5), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_5, term_neg_6), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_6, term_neg_7), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_7, term_neg_8), run_time=.5)
            self.wait(0.5)
            self.play(TransformMatchingTex(term_neg_8, term_neg_9), run_time=.5)
            self.wait(0.5)

            self.wait_until_bookmark("show_asymptote")
            self.play(Write(asymptote), ReplacementTransform(term_neg_9, horizontal_asymptote), run_time=1)

            self.wait_until_bookmark("cleanup_1")
            self.play(Unwrite(horizontal_asymptote), run_time=1)

            self.wait_until_bookmark("g_in")
            self.add_pencil_sound(1)
            self.play(Write(term_g), Create(graph_g), run_time=1)

            self.wait_until_bookmark("h_in")
            self.add_pencil_sound(1)
            self.play(TransformMatchingTex(term_g, term_h), Create(graph_h), run_time=1)

            self.wait_until_bookmark("rule_1")
            self.play(ReplacementTransform(term_h, rule_1), run_time=1)

            self.wait_until_bookmark("rule_2")
            self.play(Write(rule_arrow), Write(rule_2), run_time=1)
            self.add_pencil_sound(1)
            self.play(Create(rule_rectangle), run_time=1)

        self.wait(4)

####################################
####################################
class Func_6_P_horizontal_asymptotes_exp_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$-2$", "$0$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_P.horizontal_asymptotes_exp_2.q.questionText"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$\key{a}$",
            )
        )
#
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(4)[0], cords.get_y_axis().n2p(0)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=GREEN_E, stroke_width=6)
        f = lambda x: 2**x
        g = lambda x: 0.5**x
        h = lambda x: -1*2**x
        graph = cords.plot(f, x_range=[-4, 2, .001], color=ORANGE, stroke_width=2)
        term = MathTex("f(", "x", ")=", "2", "^x", "-2", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        
        graph_g = cords.plot(g, x_range=[-2, 4, .001], color=PINK, stroke_width=2)
        graph_h = cords.plot(h, x_range=[-4, 2, .001], color=PURPLE_D, stroke_width=2)

        rule_1 = MathTex("f(", "x", ")=", "a\\cdot b", "^x", color=c1t, font_size=fs2).move_to(term)
        rule_arrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(rule_1, DOWN, buff=.2)
        rule_2 = Tex("Horizontal asymptote at $y=0$", color=c1t, font_size=fs3).next_to(rule_arrow, DOWN, buff=.2)
        rule_rectangle = SurroundingRectangle(VGroup(rule_1, rule_2), color=PURE_BLUE, corner_radius=.1, buff=.2)
        self.add(rule_1, rule_arrow, rule_2, rule_rectangle, graph_g, graph_h, graph)

        x_tracker = ValueTracker(0)
        cursor = AltCursor(y=cords.get_x_axis().n2p(0)[1], idle=False)#.add_updater(lambda m: m.move_to(cords.c2p(x_tracker.get_value(), f(x_tracker.get_value()))))

        # Action Sequence
        # You can see that as x gets smaller and smaller, the values get closer and closer to <bookmark mark="asympote_in"/>the line that is shown here. This line is called the asymptote.
        with self.voiceover(
                text=self.translate("Func_6_P.horizontal_asymptotes_exp_2.q.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("asymptote_in")
            self.add_pencil_sound(1)
            self.play(Create(asymptote), run_time=1)

            self.wait_until_bookmark("now_what")
            self.play(Unwrite(rule_1), Unwrite(rule_arrow), Unwrite(rule_2), Uncreate(rule_rectangle), run_time=1)

            self.wait_until_bookmark("term_in")
            self.play(Write(term), run_time=1)

        self.wait(4)


class Func_6_P_horizontal_asymptotes_exp_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(4)[0], cords.get_y_axis().n2p(0)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=GREEN_E, stroke_width=6)
        cords_unit = cords.y_axis.n2p(1)[1]-cords.y_axis.n2p(0)[1]
        f = lambda x: 2**x
        g = lambda x: 0.5**x
        h = lambda x: -1*2**x
        
        graph = cords.plot(f, x_range=[-4, 2, .001], color=ORANGE, stroke_width=2)
        shift_tracker = ValueTracker(0)
        graph_copy = always_redraw(lambda: cords.plot(lambda x: f(x)+shift_tracker.get_value(), x_range=[-4, np.emath.logn(2, 4-shift_tracker.get_value()), .001], color=RED, stroke_width=2))
        term = MathTex("f(", "x", ")=", "2", "^x", "-2", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        self.add(term)
        
        graph_g = cords.plot(g, x_range=[-2, 4, .001], color=PINK, stroke_width=2)
        graph_h = cords.plot(h, x_range=[-4, 2, .001], color=PURPLE_D, stroke_width=2)
        self.add(graph, graph_g, graph_h)

        rule_1 = MathTex("f(", "x", ")=", "a\\cdot b", "^x", "+c", color=c1t, font_size=fs2).move_to(term)
        rule_arrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(rule_1, DOWN, buff=.2)
        rule_2 = Tex("Horizontal asymptote at $y=c$", color=c1t, font_size=fs3).next_to(rule_arrow, DOWN, buff=.2)
        rule_rectangle = SurroundingRectangle(VGroup(rule_1, rule_2), color=PURE_BLUE, corner_radius=.1, buff=.2)


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_4")+self.translate("Func_6_P.horizontal_asymptotes_exp_2.a.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("orange_stays")
            self.play(Unwrite(graph_g), Unwrite(graph_h), run_time=1)

            self.wait_until_bookmark("shift_down")
            self.add(graph_copy)
            self.play(shift_tracker.animate.set_value(-2), run_time=3)

            self.wait_until_bookmark("asymptote_in")
            self.play(Create(asymptote), run_time=1)

            self.wait_until_bookmark("shift_asymptote_down")
            self.play(asymptote.animate.shift(2*cords_unit*DOWN), run_time=1)

            self.wait_until_bookmark("rule_1")
            self.play(ReplacementTransform(term, rule_1), run_time=1)

            self.wait_until_bookmark("rule_2")
            self.play(Write(rule_arrow), Write(rule_2), run_time=1)
            self.add_pencil_sound(1)
            self.play(Create(rule_rectangle), run_time=1)

        self.wait(4)

class Func_6_P_horizontal_asymptotes_exp_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(4)[0], cords.get_y_axis().n2p(0)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=GREEN_E, stroke_width=6)
        cords_unit = cords.y_axis.n2p(1)[1]-cords.y_axis.n2p(0)[1]
        f = lambda x: 2**x
        g = lambda x: 0.5**x
        h = lambda x: -1*2**x
        
        graph = cords.plot(f, x_range=[-4, 2, .001], color=ORANGE, stroke_width=2)
        shift_tracker = ValueTracker(0)
        graph_copy = always_redraw(lambda: cords.plot(lambda x: f(x)+shift_tracker.get_value(), x_range=[-4, np.emath.logn(2, 4-shift_tracker.get_value()), .001], color=RED, stroke_width=2))
        term = MathTex("f(", "x", ")=", "2", "^x", "-2", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        self.add(term)
        
        graph_g = cords.plot(g, x_range=[-2, 4, .001], color=PINK, stroke_width=2)
        graph_h = cords.plot(h, x_range=[-4, 2, .001], color=PURPLE_D, stroke_width=2)
        self.add(graph, graph_g, graph_h)

        rule_1 = MathTex("f(", "x", ")=", "a\\cdot b", "^x", "+c", color=c1t, font_size=fs2).move_to(term)
        rule_arrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(rule_1, DOWN, buff=.2)
        rule_2 = Tex("Horizontal asymptote at $y=c$", color=c1t, font_size=fs3).next_to(rule_arrow, DOWN, buff=.2)
        rule_rectangle = SurroundingRectangle(VGroup(rule_1, rule_2), color=PURE_BLUE, corner_radius=.1, buff=.2)


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_6_P.horizontal_asymptotes_exp_2.a.voiceover")
            ) as tracker:
            
            self.wait_until_bookmark("orange_stays")
            self.play(Unwrite(graph_g), Unwrite(graph_h), run_time=1)

            self.wait_until_bookmark("shift_down")
            self.add(graph_copy)
            self.play(shift_tracker.animate.set_value(-2), run_time=3)

            self.wait_until_bookmark("asymptote_in")
            self.play(Create(asymptote), run_time=1)

            self.wait_until_bookmark("shift_asymptote_down")
            self.play(asymptote.animate.shift(2*cords_unit*DOWN), run_time=1)

            self.wait_until_bookmark("rule_1")
            self.play(ReplacementTransform(term, rule_1), run_time=1)

            self.wait_until_bookmark("rule_2")
            self.play(Write(rule_arrow), Write(rule_2), run_time=1)
            self.add_pencil_sound(1)
            self.play(Create(rule_rectangle), run_time=1)

        self.wait(4)

####################################
####################################
class Func_6_P_horizontal_asymptotes_exp_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$1$", "$0$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_P.horizontal_asymptotes_exp_3.q.questionText"),
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

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(4)[0], cords.get_y_axis().n2p(1)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=GREEN_E, stroke_width=6)
        f = lambda x: 0.5**x+1
        graph = cords.plot(f, x_range=[np.emath.logn(0.5,3), 4, .001], color=ORANGE, stroke_width=2)
        term = MathTex("f(", "x", ")=", "0.5", "^x", "+", "c", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        
        x,y,_ = cords.c2p(0,0)
        cursor = AltCursor(y=y, idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.horizontal_asymptotes_exp_3.q.voiceover")
            ) as tracker:

            self.wait_until_bookmark("graph_in")
            self.add_pencil_sound(1)
            self.play(Create(graph), run_time=1)

            self.wait_until_bookmark("term_in")
            self.play(Write(term), run_time=1)
            
            self.wait_until_bookmark("asymptote_in")
            self.add_pencil_sound(1)
            self.play(Create(asymptote), run_time=1)

            self.wait_until_bookmark("highlight_c")
            x,y,_ = term[-1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)
            cursor.idle=True


        self.wait(4)


class Func_6_P_horizontal_asymptotes_exp_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(4)[0], cords.get_y_axis().n2p(1)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=GREEN_E, stroke_width=6)
        f = lambda x: 0.5**x+1
        graph = cords.plot(f, x_range=[np.emath.logn(0.5,3), 4, .001], color=ORANGE, stroke_width=2)
        term = MathTex("f(", "x", ")=", "0.5", "^x", "+", "c", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        self.add(graph, term, asymptote)
        
        x,y,_ = cords.c2p(0,0)
        cursor = AltCursor(y=y, idle=True)
        self.add(cursor)

        rule_1 = MathTex("f(", "x", ")=", "a", "\\cdot ", "b", "^x+c", color=c1t, font_size=fs2).move_to(term)
        rule_1_a = MathTex("f(", "x", ")=", "1", "\\cdot ", "b", "^x+c", color=c1t, font_size=fs2).move_to(term)
        rule_1_b = MathTex("f(", "x", ")=", "1", "\\cdot ", "0.5", "^x+c", color=c1t, font_size=fs2).move_to(term)
        rule_arrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(rule_1, DOWN, buff=.2)
        rule_2 = Tex("Horizontal asymptote at $y=c$", color=c1t, font_size=fs3).next_to(rule_arrow, DOWN, buff=.2)
        rule_2_b = Tex("$c=1$", color=c1t, font_size=fs3).move_to(rule_2)
        rule_rectangle = SurroundingRectangle(VGroup(rule_1, rule_2), color=PURE_BLUE, corner_radius=.1, buff=.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_4")+self.translate("Func_6_P.horizontal_asymptotes_exp_3.a.voiceover")
            ) as tracker:

                self.wait_until_bookmark("rule_1")
                self.play(ReplacementTransform(term, rule_1), run_time=1)

                self.wait_until_bookmark("rule_1_a")
                self.play(TransformMatchingTex(rule_1, rule_1_a), run_time=1)

                self.wait_until_bookmark("rule_1_b")
                self.play(TransformMatchingTex(rule_1_a, rule_1_b), run_time=1)

                self.wait_until_bookmark("rule_2")
                self.play(Write(rule_arrow), Write(rule_2), run_time=1)

                self.wait_until_bookmark("solution")
                rule_2.generate_target()
                rule_2.target.move_to(rule_1)
                self.play(MoveToTarget(rule_2), Unwrite(rule_1_b), Write(rule_2_b), run_time=1)

        self.wait(4)

class Func_6_P_horizontal_asymptotes_exp_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(4)[0], cords.get_y_axis().n2p(1)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=GREEN_E, stroke_width=6)
        f = lambda x: 0.5**x+1
        graph = cords.plot(f, x_range=[np.emath.logn(0.5,3), 4, .001], color=ORANGE, stroke_width=2)
        term = MathTex("f(", "x", ")=", "0.5", "^x", "+", "c", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        self.add(graph, term, asymptote)
        
        x,y,_ = cords.c2p(0,0)
        cursor = AltCursor(y=y, idle=True)
        self.add(cursor)

        rule_1 = MathTex("f(", "x", ")=", "a", "\\cdot ", "b", "^x+c", color=c1t, font_size=fs2).move_to(term)
        rule_1_a = MathTex("f(", "x", ")=", "1", "\\cdot ", "b", "^x+c", color=c1t, font_size=fs2).move_to(term)
        rule_1_b = MathTex("f(", "x", ")=", "1", "\\cdot ", "0.5", "^x+c", color=c1t, font_size=fs2).move_to(term)
        rule_arrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(rule_1, DOWN, buff=.2)
        rule_2 = Tex("Horizontal asymptote at $y=c$", color=c1t, font_size=fs3).next_to(rule_arrow, DOWN, buff=.2)
        rule_2_b = Tex("$c=1$", color=c1t, font_size=fs3).move_to(rule_2)
        rule_rectangle = SurroundingRectangle(VGroup(rule_1, rule_2), color=PURE_BLUE, corner_radius=.1, buff=.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_6_P.horizontal_asymptotes_exp_3.a.voiceover")
            ) as tracker:

                self.wait_until_bookmark("rule_1")
                self.play(ReplacementTransform(term, rule_1), run_time=1)

                self.wait_until_bookmark("rule_1_a")
                self.play(TransformMatchingTex(rule_1, rule_1_a), run_time=1)

                self.wait_until_bookmark("rule_1_b")
                self.play(TransformMatchingTex(rule_1_a, rule_1_b), run_time=1)

                self.wait_until_bookmark("rule_2")
                self.play(Write(rule_arrow), Write(rule_2), run_time=1)

                self.wait_until_bookmark("solution")
                rule_2.generate_target()
                rule_2.target.move_to(rule_1)
                self.play(MoveToTarget(rule_2), Unwrite(rule_1_b), Write(rule_2_b), run_time=1)

        self.wait(4)

####################################
####################################
class Func_6_P_horizontal_asymptotes_exp_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$-1.5$", "$0$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_P.horizontal_asymptotes_exp_4.q.questionText"),
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

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(4)[0], cords.get_y_axis().n2p(-1.5)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=GREEN_E, stroke_width=6)
        f = lambda x: -0.5**x-1.5
        graph = cords.plot(f, x_range=[np.emath.logn(0.5,2.5), 4, .001], color=ORANGE, stroke_width=2)
        term = MathTex("f(", "x", ")=", "a", "\\cdot", "b", "^x", "+", "c", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        
        x,y,_ = cords.c2p(0,0)
        cursor = AltCursor(y=y, idle=True)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.horizontal_asymptotes_exp_4.q.voiceover")
            ) as tracker:

            self.wait_until_bookmark("graph_in")
            self.add_pencil_sound(1)
            self.play(Create(graph), run_time=1)

            self.wait_until_bookmark("term_in")
            self.play(Write(term), run_time=1)
            
            self.wait_until_bookmark("asymptote_in")
            self.add_pencil_sound(1)
            self.play(Create(asymptote), run_time=1)

            self.wait_until_bookmark("highlight_c")
            x,y,_ = term[-1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)
            cursor.idle=True


        self.wait(4)

class Func_6_P_horizontal_asymptotes_exp_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(4)[0], cords.get_y_axis().n2p(-1.5)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=GREEN_E, stroke_width=6)
        f = lambda x: -0.5**x-1.5
        graph = cords.plot(f, x_range=[np.emath.logn(0.5,2.5), 4, .001], color=ORANGE, stroke_width=2)
        term = MathTex("f(", "x", ")=", "a", "\\cdot ", "b", "^x+c", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        self.add(graph, term, asymptote)
        
        x,y,_ = cords.c2p(0,0)
        cursor = AltCursor(y=y, idle=True)
        self.add(cursor)

        rule_1 = MathTex("f(", "x", ")=", "a", "\\cdot ", "b", "^x+c", color=c1t, font_size=fs2).move_to(term)
        rule_arrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(rule_1, DOWN, buff=.2)
        rule_2 = Tex("Horizontal asymptote at $y=c$", color=c1t, font_size=fs3).next_to(rule_arrow, DOWN, buff=.2)
        rule_2_b = Tex("$c=-1.5$", color=c1t, font_size=fs3).move_to(rule_2)
        rule_rectangle = SurroundingRectangle(VGroup(rule_1, rule_2), color=PURE_BLUE, corner_radius=.1, buff=.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_1")+self.translate("Func_6_P.horizontal_asymptotes_exp_4.a.voiceover")
            ) as tracker:

                self.wait_until_bookmark("rule_1")
                cursor.idle=False
                self.play(CursorUnderline(cursor, rule_1))

                self.wait_until_bookmark("rule_2")
                x,y,_ = rule_2.get_center()+0.4*DOWN
                self.play(Write(rule_arrow), Write(rule_2), CursorMoveResize(cursor, x, y), run_time=1)
                cursor.idle=True

                self.wait_until_bookmark("solution")
                rule_2.generate_target()
                rule_2.target.move_to(rule_1)
                self.play(MoveToTarget(rule_2), Unwrite(term), Write(rule_2_b), run_time=1)

        self.wait(4)

class Func_6_P_horizontal_asymptotes_exp_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(4)[0], cords.get_y_axis().n2p(-1.5)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=GREEN_E, stroke_width=6)
        f = lambda x: -0.5**x-1.5
        graph = cords.plot(f, x_range=[np.emath.logn(0.5,2.5), 4, .001], color=ORANGE, stroke_width=2)
        term = MathTex("f(", "x", ")=", "a", "\\cdot ", "b", "^x+c", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        self.add(graph, term, asymptote)
        
        x,y,_ = cords.c2p(0,0)
        cursor = AltCursor(y=y, idle=True)
        self.add(cursor)

        rule_1 = MathTex("f(", "x", ")=", "a", "\\cdot ", "b", "^x+c", color=c1t, font_size=fs2).move_to(term)
        rule_arrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(rule_1, DOWN, buff=.2)
        rule_2 = Tex("Horizontal asymptote at $y=c$", color=c1t, font_size=fs3).next_to(rule_arrow, DOWN, buff=.2)
        rule_2_b = Tex("$c=-1.5$", color=c1t, font_size=fs3).move_to(rule_2)
        rule_rectangle = SurroundingRectangle(VGroup(rule_1, rule_2), color=PURE_BLUE, corner_radius=.1, buff=.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_6_P.horizontal_asymptotes_exp_4.a.voiceover")
            ) as tracker:

                self.wait_until_bookmark("rule_1")
                cursor.idle=False
                self.play(CursorUnderline(cursor, rule_1))

                self.wait_until_bookmark("rule_2")
                x,y,_ = rule_2.get_center()+0.4*DOWN
                self.play(Write(rule_arrow), Write(rule_2), CursorMoveResize(cursor, x, y), run_time=1)
                cursor.idle=True

                self.wait_until_bookmark("solution")
                rule_2.generate_target()
                rule_2.target.move_to(rule_1)
                self.play(MoveToTarget(rule_2), Unwrite(term), Write(rule_2_b), run_time=1)

        self.wait(4)

####################################
####################################
class Func_6_P_horizontal_asymptotes_exp_5(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        x, y = cords.get_x_axis().n2p(4)[0], cords.get_y_axis().n2p(0)[1]
        asymptote = DashedLine([-x,y,0], [x,y,0], color=GREEN_E, stroke_width=6)
        cords_unit = cords.y_axis.n2p(1)[1]-cords.y_axis.n2p(0)[1]
        f = lambda x: 2**x
        g = lambda x: 0.5**x
        h = lambda x: -1*2**x
        
        graph = cords.plot(f, x_range=[-4, 2, .001], color=ORANGE, stroke_width=2)
        shift_tracker = ValueTracker(0)
        graph_copy = always_redraw(lambda: cords.plot(lambda x: f(x)+shift_tracker.get_value(), x_range=[-4, np.emath.logn(2, 4-shift_tracker.get_value()), .001], color=RED, stroke_width=2))
        term = MathTex("f(", "x", ")=", "a\\cdot b", "^x", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        
        graph_g = cords.plot(g, x_range=[-2, 4, .001], color=PINK, stroke_width=2)
        graph_h = cords.plot(h, x_range=[-4, 2, .001], color=PURPLE_D, stroke_width=2)
        self.add(graph, graph_g, graph_h)

        rule_1_a = MathTex("f(", "x", ")=", "a\\cdot b", "^x", color=c1t, font_size=fs2).move_to(term)
        rule_1_arrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(rule_1_a, DOWN, buff=.2)
        rule_1_b = Tex("Horizontal asymptote at $y=0$", color=c1t, font_size=fs3).next_to(rule_1_arrow, DOWN, buff=.2)

        rule_2_a = MathTex("f(", "x", ")=", "a\\cdot b", "^x", "+c", color=c1t, font_size=fs2).move_to(term)
        rule_2_arrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(rule_2_a, DOWN, buff=.2)
        rule_2_b = Tex("Horizontal asymptote at $y=c$", color=c1t, font_size=fs3).next_to(rule_2_arrow, DOWN, buff=.2)

        rule_rectangle = SurroundingRectangle(VGroup(rule_2_a, rule_2_b), color=PURE_BLUE, corner_radius=.1, buff=.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.horizontal_asymptotes_exp.2.a.voiceover")
            ) as tracker:

            self.wait_until_bookmark("term_in")
            self.play(Write(rule_1_a), run_time=1)

            self.wait_until_bookmark("asymptote_in")
            self.add_pencil_sound(1)
            self.play(Create(asymptote), Write(rule_1_arrow), Write(rule_1_b), run_time=1)

            self.wait_until_bookmark("orange_stays")
            self.play(Unwrite(graph_g), Unwrite(graph_h), run_time=1)

            self.wait_until_bookmark("unwrite_rule_1")
            self.play(Unwrite(rule_1_arrow), Unwrite(rule_1_b), run_time=.3)

            self.wait_until_bookmark("add_c")
            self.play(TransformMatchingTex(rule_1_a, rule_2_a))

            self.wait_until_bookmark("shift")
            self.add(graph_copy)
            self.play(shift_tracker.animate.set_value(2), run_time=3)

            self.wait_until_bookmark("shift_asymptote")
            self.play(asymptote.animate.shift(2*cords_unit*UP), run_time=1)

            self.wait_until_bookmark("rule_2")
            self.play(Write(rule_2_arrow), Write(rule_2_b), run_time=1)
            self.add_pencil_sound(1)
            self.play(Create(rule_rectangle), run_time=1)

        self.wait(4)


####################################
####################################
class Func_6_P_scaling_exp_1_q(SophiaCursorScene):

    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions=ast.literal_eval(self.translate("Func_6_P.horizontal_asymptotes_exp_1.answer-options")),
    #         correctAnswerIndex=3,
    #         questionText=self.translate("Func_6_P.horizontal_asymptotes_exp_1.question-text"),
    #     )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        f = lambda x: 0.5*2**x
        graph = cords.plot(f, x_range=[-4, 3, .001], color=ORANGE, stroke_width=2)
        term = MathTex("f(x)=", "a", "\\cdot b^x", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)

        x_tracker = ValueTracker(0)
        cursor = AltCursor(y=cords.get_x_axis().n2p(0)[1], idle=False).add_updater(lambda m: m.move_to(cords.c2p(x_tracker.get_value(), f(x_tracker.get_value()))))

        # Action Sequence
        # You can see that as x gets smaller and smaller, the values get closer and closer to <bookmark mark="asympote_in"/>the line that is shown here. This line is called the asymptote.
        with self.voiceover(
                text=
"""
Let's consider exponential functions of the <bookmark mark="term_in"/>form f of x equals a times b to the power of x, and let's focus <bookmark mark="highlight_a"/>on a, specifically on how to find it.
We'll start with an example: For <bookmark mark="graph_in"/>this graph, what is the value of a?
"""
            ) as tracker:

            self.wait_until_bookmark("term_in")
            self.play(Write(term))

            self.wait_until_bookmark("highlight_a")
            self.play(Indicate(term[1], color=RED, scale_factor=1.5), run_time=1)
            
            self.wait_until_bookmark("graph_in")
            self.add_pencil_sound(1.5)
            self.play(Create(graph))

        self.wait(4)
#
class Func_6_P_scaling_exp_1_a(SophiaCursorScene):

    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions=ast.literal_eval(self.translate("Func_6_P.horizontal_asymptotes_exp_1.answer-options")),
    #         correctAnswerIndex=3,
    #         questionText=self.translate("Func_6_P.horizontal_asymptotes_exp_1.question-text"),
    #     )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        f = lambda x: 0.5*2**x
        graph = cords.plot(f, x_range=[-4, 3, .001], color=ORANGE, stroke_width=2)
        term_1 = MathTex("f(x)=", "a", "\\cdot b^x", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        step_solution = MathTex("\\Downarrow", color=BLUE, font_size=fs2).next_to(term_1, DOWN, buff=.2)
        solution = MathTex("a=0.5", color=c1t, font_size=fs2).next_to(step_solution, DOWN, buff=.2)
        step_1 = MathTex("\\Downarrow ", "x=0", color=BLUE, font_size=fs2).next_to(term_1, DOWN, buff=.2)
        term_2_a = MathTex("f(0)=", "a", "\\cdot b^0", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.2)
        term_2_b = MathTex("f(0)=", "a", "\\cdot b^0", "=a", color=c1t, font_size=fs2).move_to(term_2_a)

        self.add(term_1, graph)

        cursor = AltCursor(y=cords.get_x_axis().n2p(0)[1], idle=False)

        # Action Sequence
        # You can see that as x gets smaller and smaller, the values get closer and closer to <bookmark mark="asympote_in"/>the line that is shown here. This line is called the asymptote.
        with self.voiceover(
                text=
"""
No matter what the value of b might be, if we <bookmark mark="x_zero"/>plug in x equals zero, then we get that <bookmark mark="plug_in_x_zero_1"/>f of zero equals a times b to the power of zero, which <bookmark mark="plug_in_x_zero_2"/>is "a" times one, which is just "a".
So, the <bookmark mark="highlight_a"/>value of a is the value <bookmark mark="highlight_x_zero"/>of the function at x equals zero. As you can see, in our case this<bookmark mark="highlight_fx_zero"/> is 0.5, which means, that <bookmark mark="b_sol"/>a is equal to 0.5.
"""
            ) as tracker:

                self.wait_until_bookmark("x_zero")
                self.play(Write(step_1))

                self.wait_until_bookmark("plug_in_x_zero_1")    
                self.play(Write(term_2_a))

                self.wait_until_bookmark("plug_in_x_zero_2")
                self.play(TransformMatchingTex(term_2_a, term_2_b))

                self.wait_until_bookmark("highlight_a")
                self.play(Indicate(term_2_b[1], color=RED, scale_factor=1.5), run_time=1)

                self.wait_until_bookmark("highlight_x_zero")
                self.play(Write(cursor), run_time=.5)
                self.wait(0.2)
                self.play(CursorMarkAxis(cursor, cords, "y"), run_time=.5)

                self.wait_until_bookmark("highlight_fx_zero")
                x,y, _ = cords.c2p(0, 0.5)
                self.play(CursorMoveResize(cursor, x, y), run_time=.5)

                self.wait_until_bookmark("b_sol")
                self.play(Unwrite(term_2_b), Unwrite(step_1), run_time=.5)
                self.play(Write(step_solution), Write(solution))

        self.wait(4)
#

####################################
####################################
class Func_6_P_scaling_exp_2_q(SophiaCursorScene):

    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions=ast.literal_eval(self.translate("Func_6_P.horizontal_asymptotes_exp_1.answer-options")),
    #         correctAnswerIndex=3,
    #         questionText=self.translate("Func_6_P.horizontal_asymptotes_exp_1.question-text"),
    #     )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        f = lambda x: 0.5*2**x-2
        graph = cords.plot(f, x_range=[-4, np.emath.logn(2, 12), .001], color=ORANGE, stroke_width=2)
        term = MathTex("f(x)=", "a", "\\cdot b^x", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        implication = MathTex("\\Downarrow", color=BLUE, font_size=fs2).next_to(term, DOWN, buff=.2)
        solution = MathTex("a=f(0)", color=c1t, font_size=fs2).next_to(implication, DOWN, buff=.2)

        term_c = MathTex("f(x)=", "a", "\\cdot b^x", "+c", color=c1t, font_size=fs2).move_to(term)
        term_c_orange = MathTex("-2", color=ORANGE, font_size=fs2).move_to(term_c[-1])
        step_1 = MathTex("\\Downarrow", "x=0", color=BLUE, font_size=fs2).next_to(term_c, DOWN, buff=.2)
        term_1 = MathTex("f(0)=", "a", "\\cdot b^0", "+c", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.2)
        term_2 = MathTex("f(0)=", "a", "+c", color=c1t, font_size=fs2).move_to(term_1)
        step_2 = MathTex("\\Rightarrow", "a=f(0)-c", color=BLUE, font_size=fs2).next_to(term_2, DOWN, buff=.2)

        x_tracker = ValueTracker(0)
        cursor = AltCursor(y=cords.get_x_axis().n2p(0)[1], idle=False).add_updater(lambda m: m.move_to(cords.c2p(x_tracker.get_value(), f(x_tracker.get_value()))))

        # Action Sequence
        # You can see that as x gets smaller and smaller, the values get closer and closer to <bookmark mark="asympote_in"/>the line that is shown here. This line is called the asymptote.
        with self.voiceover(
                text=
"""
So we just saw that for an exponential function of the form <bookmark mark="term_in"/>f of x equals a times b to the power of x, <bookmark mark="solution_recap"/>the value of a is the value of the function at x equals zero.
Now let's see what happens if we<bookmark mark="cleanup_1"/> also have a constant c, so that the function is of the form f of x equals <bookmark mark="transform_term_1"/>a times b to the power of x plus c. If we<bookmark mark="step_1_in"/> plug in x equals zero, we get <bookmark mark="term_1_in"/>that f of zero equals a times b to the power of zero plus c, and since b to the power of zero is equal to one, this is<bookmark mark="transform_term_2"/> simply equal to c.
If we then subtract c from both sides, we <bookmark mark="step_2_in"/>get that a equals f of zero minus c.
<bookmark mark="cleanup_2"/>Now let's apply this to the <bookmark mark="graph_in"/>orange graph you can see here. It belongs to the function f of x equals a times b to the power of x <bookmark mark="transform_c"/>minus two, so c is equal to negative two.
What's the value of a?
"""
            ) as tracker:

            self.wait_until_bookmark("term_in")
            self.play(Write(term))

            self.wait_until_bookmark("solution_recap")
            self.play(Write(implication), Write(solution))

            self.wait_until_bookmark("cleanup_1")
            self.play(Unwrite(implication), Unwrite(solution), run_time=.5)

            self.wait_until_bookmark("transform_term_1")
            self.play(TransformMatchingTex(term, term_c))

            self.wait_until_bookmark("step_1_in")
            self.play(Write(step_1))

            self.wait_until_bookmark("term_1_in")
            self.play(Write(term_1))

            self.wait_until_bookmark("transform_term_2")
            self.play(TransformMatchingTex(term_1, term_2))

            self.wait_until_bookmark("step_2_in")
            self.play(Write(step_2))

            self.wait_until_bookmark("cleanup_2")
            step_2.generate_target().move_to(step_1)
            self.add_shift_sound(0.5)
            self.play(Unwrite(step_1), Unwrite(term_2), MoveToTarget(step_2), run_time=.5)

            self.wait_until_bookmark("graph_in")
            self.add_pencil_sound(1.5)
            self.play(Create(graph))

            self.wait_until_bookmark("transform_c")
            self.play(Transform(term_c[-1], term_c_orange))

        self.wait(4)
#
class Func_6_P_scaling_exp_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        f = lambda x: 0.5*2**x-2
        graph = cords.plot(f, x_range=[-4, np.emath.logn(2, 12), .001], color=ORANGE, stroke_width=2)
        self.add(graph)

        term_c = MathTex("f(x)=", "a", "\\cdot b^x", "-2", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        term_c[-1].set_color(ORANGE)
        step = MathTex("\\Rightarrow", "a=", "f(0)", "-", "c", color=BLUE, font_size=fs2).next_to(term_c, DOWN, buff=.2)
        step_c = MathTex("\\Rightarrow", "a=", "f(0)", "-", "(-2)", color=BLUE, font_size=fs2).next_to(term_c, DOWN, buff=.2)
        step_c[-1].set_color(ORANGE)
        step_c_2 = MathTex("\\Rightarrow", "a=", "f(0)", "+2", color=BLUE, font_size=fs2).next_to(term_c, DOWN, buff=.2)
        step_f0 = MathTex("\\Rightarrow", "a=", "-1.5", "+2", color=BLUE, font_size=fs2).next_to(term_c, DOWN, buff=.2)
        step_f0[2].set_color(RED)
        solution = MathTex("\\Rightarrow", "a=", "0.5", color=c1t, font_size=fs2).next_to(term_c, DOWN, buff=.2)
        self.add(step, term_c)
        
        cursor = AltCursor(y=cords.get_x_axis().n2p(0)[1], idle=False)
        self.add(cursor)

        # Action Sequence
        # You can see that as x gets smaller and smaller, the values get closer and closer to <bookmark mark="asympote_in"/>the line that is shown here. This line is called the asymptote.
        with self.voiceover(
                text=
"""
Since we know that c is equal to negative two, we can plug this into our formula for a, and we get that a equals f of <bookmark mark="step_1"/>zero minus negative two, which is equal to <bookmark mark="step_2"/>f of zero plus two.
Now we just need to plug in zero for x, and we can see that<bookmark mark="f_0"/> f of zero is equal to negative one point five. Now we can plug this into our formula for a, and we get that a <bookmark mark="plug_in"/>equals negative one point five plus two.
This means, that <bookmark mark="solution"/>a is equal to zero point five.
"""
            ) as tracker:

            self.wait_until_bookmark("step_1")
            self.play(TransformMatchingTex(step, step_c))

            self.wait_until_bookmark("step_2")
            self.play(TransformMatchingTex(step_c, step_c_2))

            self.wait_until_bookmark("f_0")
            x,y,_ = cords.c2p(0, -1.5)
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("plug_in")
            cursor_2 = RoundedRectangle(color=RED, fill_color=RED, fill_opacity=1, height=.2, width=.2, stroke_width=0, corner_radius=.1).move_to(cursor)
            self.add(cursor_2)
            self.remove(cursor)
            self.play(ReplacementTransform(cursor_2, step_f0[2]), ReplacementTransform(step_c_2[0], step_f0[0]), ReplacementTransform(step_c_2[1], step_f0[1]), ReplacementTransform(step_c_2[3], step_f0[3]), Unwrite(step_c_2[2]))

            self.wait_until_bookmark("solution")
            self.play(TransformMatchingTex(step_f0, solution), run_time=1)           

        self.wait(4)
#

####################################
####################################
class Func_6_P_scaling_exp_3_q(SophiaCursorScene):

    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions=ast.literal_eval(self.translate("Func_6_P.horizontal_asymptotes_exp_1.answer-options")),
    #         correctAnswerIndex=3,
    #         questionText=self.translate("Func_6_P.horizontal_asymptotes_exp_1.question-text"),
    #     )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        f = lambda x: -1.5*0.5**x+2.5
        graph = cords.plot(f, x_range=[np.emath.logn(0.5, 4), 4, .001], color=PINK, stroke_width=2)
        term = MathTex("f(x)=", "a", "\\cdot b^x", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)

        term_c = MathTex("f(x)=", "a", "\\cdot b^x", "+", "c", color=c1t, font_size=fs2).move_to(term)
        term_c_orange = MathTex("2.5", color=PINK, font_size=fs2).move_to(term_c[-1])
        step = MathTex("\\Rightarrow", "a=", "f(0)", "-", "c", color=BLUE, font_size=fs2).next_to(term_c, DOWN, buff=.2)
        self.add(term_c)
        
        # Action Sequence
        # You can see that as x gets smaller and smaller, the values get closer and closer to <bookmark mark="asympote_in"/>the line that is shown here. This line is called the asymptote.
        with self.voiceover(
                text=
"""
Let's practice with another function. Look at <bookmark mark="graph_in"/>the pink graph. It belongs to the function f of x equals a times b to the power of x <bookmark mark="transform_c"/>plus 2.5, so c is equal to 2.5.
What's the value of a? And remember, we saw that a is <bookmark mark="step_in"/>equal to f of zero minus c.
"""
            ) as tracker:

            self.wait_until_bookmark("graph_in")
            self.add_pencil_sound(1.5)
            self.play(Create(graph))

            self.wait_until_bookmark("transform_c")
            self.play(Transform(term_c[-1], term_c_orange))

            self.wait_until_bookmark("step_in")
            self.play(Write(step))

        self.wait(4)
#
class Func_6_P_scaling_exp_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rec = Rectangle(height=3.6, width=3.4, color="#deebfc", fill_color="#deebfc", fill_opacity=1).move_to([0,1.8,0])
        cords = NumberPlane(x_range=[-4, 4, .5], y_range=[-4, 4, .5], x_length=3, y_length=3.4, background_line_style={"stroke_opacity": 0, "stroke_color": BLACK, "stroke_width": 2}, axis_config={"include_tip": True, 'tip_width': 0.05, 'tip_height': 0.05, "stroke_width":1, "stroke_color":c1t, "decimal_number_config":{"num_decimal_places": 0}, "color":c1t}, x_axis_config={"numbers_to_include":[idx-2 for idx in range(5)], "label_direction":DOWN}, y_axis_config={"numbers_to_include":[idx-3 for idx in range(7)], "label_direction":RIGHT}).move_to(rec)
        labels = VGroup(*[cords.get_x_axis_label(Tex("x", color=c1t, font_size=fs3), direction=UP), cords.get_y_axis_label(Tex("y", color=c1t, font_size=fs3), direction=ORIGIN)])
        cords.set_color(c1t)
        def is_full(cords, l):
            if l.get_angle() == 0:
                return (2*round(cords.p2c(l.get_start())[1],2))%2 == 0
            else:
                return (2*round(cords.p2c(l.get_start())[0],2))%2 == 0
        bl = [DashedVMobject(l.set_stroke_opacity(.8), dashed_ratio=.5, num_dashes=40) if is_full(cords, l) else DashedVMobject(l.set_stroke_opacity(.4), dashed_ratio=.2, num_dashes=40) for l in cords.background_lines]
        for l in bl:
            l.set_stroke(color=GREY_B, opacity=1)
        bl = VGroup(*bl)

        self.add(rec, labels, bl, cords)

        f = lambda x: -1.5*0.5**x+2.5
        graph = cords.plot(f, x_range=[np.emath.logn(0.5, 4), 4, .001], color=PINK, stroke_width=2)
        self.add(graph)

        term_c = MathTex("f(x)=", "a", "\\cdot b^x", "+", "2.5", color=c1t, font_size=fs2).next_to(rec, DOWN, buff=.4)
        term_c[-1].set_color(PINK)
        step = MathTex("\\Rightarrow", "a=", "f(0)", "-", "c", color=BLUE, font_size=fs2).next_to(term_c, DOWN, buff=.2)
        step_c = MathTex("\\Rightarrow", "a=", "f(0)", "-", "2.5", color=BLUE, font_size=fs2).next_to(term_c, DOWN, buff=.2)
        step_c[-1].set_color(PINK)
        step_f0 = MathTex("\\Rightarrow", "a=", "1", "-", "2.5", color=BLUE, font_size=fs2).next_to(term_c, DOWN, buff=.2)
        step_f0[2].set_color(RED)
        solution = MathTex("\\Rightarrow", "a=", "-1.5", color=c1t, font_size=fs2).next_to(term_c, DOWN, buff=.2)
        self.add(step, term_c)
        
        cursor = AltCursor(y=cords.get_x_axis().n2p(0)[1], idle=False)
        self.add(cursor)

        # Action Sequence
        # You can see that as x gets smaller and smaller, the values get closer and closer to <bookmark mark="asympote_in"/>the line that is shown here. This line is called the asymptote.
        with self.voiceover(
                text=
"""
We know that c is equal to 2.5, which we're going to plug into the familiar formula for a. We then get that a equals f of <bookmark mark="step_1"/>zero minus 2.5.
Now we just need to plug in zero for x, and we can see that<bookmark mark="f_0"/> f of zero is equal to 1. Now we can plug this into our formula for a, and we get that a <bookmark mark="plug_in"/>equals one minus 2.5.
This means, that <bookmark mark="solution"/>a is equal to negative 1.5.
"""
            ) as tracker:

            self.wait_until_bookmark("step_1")
            self.play(*[ReplacementTransform(step[idx], step_c[idx]) if idx != 4 else ReplacementTransform(term_c[idx].copy(), step_c[idx]) for idx in range(len(step))], Unwrite(step[-1]))

            self.wait_until_bookmark("f_0")
            x,y,_ = cords.c2p(0, 1)
            self.play(CursorMoveResize(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("plug_in")
            cursor_2 = RoundedRectangle(color=RED, fill_color=RED, fill_opacity=1, height=.2, width=.2, stroke_width=0, corner_radius=.1).move_to(cursor)
            self.add(cursor_2)
            self.remove(cursor)
            self.play(*[ReplacementTransform(step_c[idx], step_f0[idx]) if idx != 2 else ReplacementTransform(cursor_2, step_f0[idx]) for idx in range(len(step_c))], Unwrite(step_c[2]))
            
            self.wait_until_bookmark("solution")
            self.play(TransformMatchingTex(step_f0, solution), run_time=1)           

        self.wait(4)
#

###############Exercises for Percentages Chapter ##########################

##################################### Exercise Level: Easy (1)
#####################################
class Func_6_P_recognize_percentages_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$20$", "$0$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_P_recognize_percentages.1.q.question-text"),
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

        money = ImageMobject(assets_folder / "img" / "colors_money_in_bank.png")
        money = money.scale(4/money.get_width()).move_to([-5, 1.4, 0])
        year = self.translate("words.year")
        
        bullets = VGroup(Tex("$\\bullet$ ", year, " 0: $100\$$", color=c1t, font_size=fs2), Tex("$\\bullet$ ", year, " 2: $144\$$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.recognize_percentages.1.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("money_in")
            self.add_shift_sound(0.5)
            self.play(money.animate.shift(5*RIGHT), run_time=0.5)
            
            self.wait_until_bookmark("dollars_1_in")
            self.play(Write(bullets[0]), run_time=.5)

            self.wait_until_bookmark("dollars_2_in")
            self.play(Write(bullets[1]), run_time=.5)

        self.wait(4)

class Func_6_P_recognize_percentages_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        cursor=AltCursor()

        money = ImageMobject(assets_folder / "img" / "colors_money_in_bank.png")
        money = money.scale(4/money.get_width()).set_y(1.4)
        self.add(money)
        year = self.translate("words.year")

        interest_1 = MathTex("f(x)=", "a", "\\cdot", "b", "^x", color=c1t, font_size=fs2)
        interest_2 = MathTex("f(x)=", "100", "\\cdot", "b", "^x", color=c1t, font_size=fs2)
        interest_3 = MathTex("f(x)=", "100", "\\cdot", "1.2", "^x", color=c1t, font_size=fs2)
        interests = VGroup(interest_1, interest_2, interest_3).set_y(2)

        f_0 = MathTex("f(0)=", "a", "\\cdot b^0", "=", "100", color=BLUE_D, font_size=fs2)
        implication_1 = MathTex("\\Downarrow", "b^0=1", color=BLUE_D, font_size=fs2)
        a = MathTex("a=", "100", color=BLUE_D, font_size=fs2)
        step_1 = VGroup(f_0, implication_1, a).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(interests, DOWN, buff=.4)
        implication_1[1].scale(0.7)


        f_2 = MathTex("f(2)=", "100", "\\cdot b^2", "=144", color=GREEN_D, font_size=fs2)
        implication_2 = MathTex("\\Downarrow", "\\tfrac{\\Box}{100}", color=GREEN_D, font_size=fs2)
        b = MathTex("b^2=", "1.44", color=GREEN_D, font_size=fs2)
        implication_3 = MathTex("\\Downarrow", "\\sqrt{\\Box}", color=GREEN_D, font_size=fs2)
        b_2 = MathTex("b=", "1.2", color=GREEN_D, font_size=fs2)
        step_2 = VGroup(f_2, implication_2, b, implication_3, b_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(interests, DOWN, buff=.4)
        implication_2[1].scale(0.7)

        

        bullets = VGroup(Tex("$\\bullet$ ", year, " 0: ", "$100$", "\$", color=c1t, font_size=fs2), Tex("$\\bullet$ ", year, " 2: $144\$$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)
        self.add(bullets)
        
        interest = self.translate("words.interest")
        sol = Tex(interest, ": $20\%$", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_6_P.recognize_percentages.1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("money_out")
            self.add_shift_sound(0.5)
            self.play(money.animate.shift(5*RIGHT), run_time=0.5)
            self.play(Write(interest_1))

            self.wait_until_bookmark("zero_highlight")
            self.play(bullets[0].animate.set_color(BLUE_D), run_time=.5)
            
            self.wait_until_bookmark("f_0")
            self.play(Write(f_0[:-1]), bullets[0].animate.set_color(c1t), run_time=.5)

            self.wait_until_bookmark("f_0_100")
            self.play(ReplacementTransform(bullets[0][-2].copy(), f_0[-1]), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("a_in")
            x,y,_ = a[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(a), run_time=.5)
            cursor.idle=True
            
            self.wait_until_bookmark("transition_1")
            self.add_shift_sound(0.5)
            self.play(VGroup(f_0, implication_1, a[0]).animate.shift(5*UP), run_time=.5)
            a[1].generate_target().move_to(interest_2[1])
            self.play(MoveToTarget(a[1]), Unwrite(interest_1[1]), ReplacementTransform(interest_1[0], interest_2[0]), ReplacementTransform(interest_1[2], interest_2[2]), ReplacementTransform(interest_1[3], interest_2[3]), ReplacementTransform(interest_1[4], interest_2[4]))

            self.wait_until_bookmark("two_highlight")
            self.play(bullets[1].animate.set_color(GREEN_D), run_time=.5)

            self.wait_until_bookmark("f_2")
            self.play(bullets[1].animate.set_color(c1t), Write(f_2), run_time=.5)

            self.wait_until_bookmark("implication_2_in")
            cursor.idle=False
            x,y,_ = implication_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(implication_2), run_time=.5)

            self.wait_until_bookmark("bullets_out")
            self.play(Unwrite(bullets), run_time=.5)

            self.wait_until_bookmark("b_in")
            x,y,_ = b[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(b), run_time=.5)

            self.wait_until_bookmark("implication_3_in")
            x,y,_ = implication_3[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(implication_3), run_time=.5)

            self.wait_until_bookmark("b_2_in")
            x,y,_ = b_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(b_2), run_time=.5)
            cursor.idle=True

            self.wait_until_bookmark("transition_2")
            self.add_shift_sound(0.5)
            self.play(VGroup(f_2, implication_2, b, b_2[0], implication_3).animate.shift(6*UP), run_time=.5)
            b_2[1].generate_target().move_to(interest_3[3])
            a[1].generate_target().move_to(interest_3[1])
            self.play(MoveToTarget(a[1]), MoveToTarget(b_2[1]), Unwrite(interest_2[3]), ReplacementTransform(interest_2[0], interest_3[0]), ReplacementTransform(interest_2[2], interest_3[2]), ReplacementTransform(interest_2[4], interest_3[4]), bullets.animate.shift(5*RIGHT))
            self.play(Write(sol))

        self.wait(4)

class Func_6_P_recognize_percentages_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        cursor=AltCursor()

        money = ImageMobject(assets_folder / "img" / "colors_money_in_bank.png")
        money = money.scale(4/money.get_width()).set_y(1.4)
        self.add(money)
        year = self.translate("words.year")

        interest_1 = MathTex("f(x)=", "a", "\\cdot", "b", "^x", color=c1t, font_size=fs2)
        interest_2 = MathTex("f(x)=", "100", "\\cdot", "b", "^x", color=c1t, font_size=fs2)
        interest_3 = MathTex("f(x)=", "100", "\\cdot", "1.2", "^x", color=c1t, font_size=fs2)
        interests = VGroup(interest_1, interest_2, interest_3).set_y(2)

        f_0 = MathTex("f(0)=", "a", "\\cdot b^0", "=", "100", color=BLUE_D, font_size=fs2)
        implication_1 = MathTex("\\Downarrow", "b^0=1", color=BLUE_D, font_size=fs2)
        a = MathTex("a=", "100", color=BLUE_D, font_size=fs2)
        step_1 = VGroup(f_0, implication_1, a).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(interests, DOWN, buff=.4)
        implication_1[1].scale(0.7)


        f_2 = MathTex("f(2)=", "100", "\\cdot b^2", "=144", color=GREEN_D, font_size=fs2)
        implication_2 = MathTex("\\Downarrow", "\\tfrac{\\Box}{100}", color=GREEN_D, font_size=fs2)
        b = MathTex("b^2=", "1.44", color=GREEN_D, font_size=fs2)
        implication_3 = MathTex("\\Downarrow", "\\sqrt{\\Box}", color=GREEN_D, font_size=fs2)
        b_2 = MathTex("b=", "1.2", color=GREEN_D, font_size=fs2)
        step_2 = VGroup(f_2, implication_2, b, implication_3, b_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(interests, DOWN, buff=.4)
        implication_2[1].scale(0.7)

        

        bullets = VGroup(Tex("$\\bullet$ ", year, " 0: ", "$100$", "\$", color=c1t, font_size=fs2), Tex("$\\bullet$ ", year, " 2: $144\$$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)
        self.add(bullets)
        
        interest = self.translate("words.interest")
        sol = Tex(interest, ": $20\%$", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_P.recognize_percentages.1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("money_out")
            self.add_shift_sound(0.5)
            self.play(money.animate.shift(5*RIGHT), run_time=0.5)
            self.play(Write(interest_1))

            self.wait_until_bookmark("zero_highlight")
            self.play(bullets[0].animate.set_color(BLUE_D), run_time=.5)
            
            self.wait_until_bookmark("f_0")
            self.play(Write(f_0[:-1]), bullets[0].animate.set_color(c1t), run_time=.5)

            self.wait_until_bookmark("f_0_100")
            self.play(ReplacementTransform(bullets[0][-2].copy(), f_0[-1]), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("a_in")
            x,y,_ = a[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(a), run_time=.5)
            cursor.idle=True
            
            self.wait_until_bookmark("transition_1")
            self.add_shift_sound(0.5)
            self.play(VGroup(f_0, implication_1, a[0]).animate.shift(5*UP), run_time=.5)
            a[1].generate_target().move_to(interest_2[1])
            self.play(MoveToTarget(a[1]), Unwrite(interest_1[1]), ReplacementTransform(interest_1[0], interest_2[0]), ReplacementTransform(interest_1[2], interest_2[2]), ReplacementTransform(interest_1[3], interest_2[3]), ReplacementTransform(interest_1[4], interest_2[4]))

            self.wait_until_bookmark("two_highlight")
            self.play(bullets[1].animate.set_color(GREEN_D), run_time=.5)

            self.wait_until_bookmark("f_2")
            self.play(bullets[1].animate.set_color(c1t), Write(f_2), run_time=.5)

            self.wait_until_bookmark("implication_2_in")
            cursor.idle=False
            x,y,_ = implication_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(implication_2), run_time=.5)

            self.wait_until_bookmark("bullets_out")
            self.play(Unwrite(bullets), run_time=.5)

            self.wait_until_bookmark("b_in")
            x,y,_ = b[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(b), run_time=.5)

            self.wait_until_bookmark("implication_3_in")
            x,y,_ = implication_3[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(implication_3), run_time=.5)

            self.wait_until_bookmark("b_2_in")
            x,y,_ = b_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(b_2), run_time=.5)
            cursor.idle=True

            self.wait_until_bookmark("transition_2")
            self.add_shift_sound(0.5)
            self.play(VGroup(f_2, implication_2, b, b_2[0], implication_3).animate.shift(6*UP), run_time=.5)
            b_2[1].generate_target().move_to(interest_3[3])
            a[1].generate_target().move_to(interest_3[1])
            self.play(MoveToTarget(a[1]), MoveToTarget(b_2[1]), Unwrite(interest_2[3]), ReplacementTransform(interest_2[0], interest_3[0]), ReplacementTransform(interest_2[2], interest_3[2]), ReplacementTransform(interest_2[4], interest_3[4]), bullets.animate.shift(5*RIGHT))
            self.play(Write(sol))

        self.wait(4)

#####################################
#####################################
class Func_6_P_recognize_percentages_2_q(SophiaCursorScene):


    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$200$", "$0$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_P_recognize_percentages.2.q.question-text"),
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

        city = ImageMobject(assets_folder / "img" / "city_using_energy.png")
        city = city.scale(3/city.get_width()).move_to([-5, 1.4, 0])
        year = self.translate("words.year")
        
        bullets = VGroup(Tex("$\\bullet$ ", " $3000$ MWh", color=c1t, font_size=fs2), Tex("$\\bullet$ $3\\times / $", year, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.recognize_percentages.2.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("city_in")
            self.add_shift_sound(0.5)
            self.play(city.animate.shift(5*RIGHT), run_time=0.5)
            
            self.wait_until_bookmark("bullet_1_in")
            self.play(Write(bullets[0]), run_time=.5)

            self.wait_until_bookmark("bullet_2_in")
            self.play(Write(bullets[1]), run_time=.5)

        self.wait(4)


class Func_6_P_recognize_percentages_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        city = ImageMobject(assets_folder / "img" / "city_using_energy.png")
        city = city.scale(3/city.get_width()).set_y(1.4)
        self.add(city)
        year = self.translate("words.year")
        factor = self.translate("words.factor")
        
        bullets = VGroup(Tex("$\\bullet$ ", " $3000$ MWh", color=c1t, font_size=fs2), Tex("$\\bullet$ ", "$3\\times$", "$ / $", year, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)
        self.add(bullets)

        factors = VGroup(Tex(factor+": ", "$3\\times$", color=c1t, font_size=fs2), MathTex("\\Updownarrow", color=c1t, font_size=fs2), MathTex("\\left(", "3", "-1)", "\\cdot", "100\%", "=", "200\%", color=c1t, font_size=fs2)).arrange(DOWN, buff=.4).set_y(1)

        cursor = AltCursor(idle=True, y=-2.4)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_6")+self.translate("Func_6_P.recognize_percentages.2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("value_out")
            x,y,_ = bullets[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.add_shift_sound(0.5)
            self.play(city.animate.shift(5*RIGHT), bullets[0].animate.shift(5*RIGHT), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("factor_in")
            x,y,_ = factors[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(factors[0][0]), ReplacementTransform(bullets[1][1], factors[0][1]), Unwrite(bullets[1][0]), Unwrite(bullets[1][2]), Unwrite(bullets[1][3]), run_time=.5)

            self.wait_until_bookmark("take_3")
            x,y,_ = factors[2][1].get_center()+0.4*DOWN
            self.play(Write(factors[1]), ReplacementTransform(factors[0][1].copy(), factors[2][1]), CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("subtract_one")
            x,y,_ = factors[2][2].get_center()+0.4*DOWN
            self.play(Write(factors[2][0]), Write(factors[2][2]), CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("multiply_100")
            x,y,_ = factors[2][4].get_center()+0.4*DOWN
            self.play(Write(factors[2][3]), Write(factors[2][4]), CursorMoveToCurved(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("200_percent")
            x,y,_ = factors[2][6].get_center()+0.4*DOWN
            self.play(Write(factors[2][5]), Write(factors[2][6]), CursorMoveToCurved(cursor, x, y), run_time=.5)
            cursor.idle=True

        self.wait(4)

class Func_6_P_recognize_percentages_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        city = ImageMobject(assets_folder / "img" / "city_using_energy.png")
        city = city.scale(3/city.get_width()).set_y(1.4)
        self.add(city)
        year = self.translate("words.year")
        factor = self.translate("words.factor")
        
        bullets = VGroup(Tex("$\\bullet$ ", " $3000$ MWh", color=c1t, font_size=fs2), Tex("$\\bullet$ ", "$3\\times$", "$ / $", year, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)
        self.add(bullets)

        factors = VGroup(Tex(factor+": ", "$3\\times$", color=c1t, font_size=fs2), MathTex("\\Updownarrow", color=c1t, font_size=fs2), MathTex("\\left(", "3", "-1)", "\\cdot", "100\%", "=", "200\%", color=c1t, font_size=fs2)).arrange(DOWN, buff=.4).set_y(1)

        cursor = AltCursor(idle=True, y=-2.4)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6")+self.translate("Func_6_P.recognize_percentages.2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("value_out")
            x,y,_ = bullets[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.add_shift_sound(0.5)
            self.play(city.animate.shift(5*RIGHT), bullets[0].animate.shift(5*RIGHT), CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("factor_in")
            x,y,_ = factors[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(factors[0][0]), ReplacementTransform(bullets[1][1], factors[0][1]), Unwrite(bullets[1][0]), Unwrite(bullets[1][2]), Unwrite(bullets[1][3]), run_time=.5)

            self.wait_until_bookmark("take_3")
            x,y,_ = factors[2][1].get_center()+0.4*DOWN
            self.play(Write(factors[1]), ReplacementTransform(factors[0][1].copy(), factors[2][1]), CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("subtract_one")
            x,y,_ = factors[2][2].get_center()+0.4*DOWN
            self.play(Write(factors[2][0]), Write(factors[2][2]), CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("multiply_100")
            x,y,_ = factors[2][4].get_center()+0.4*DOWN
            self.play(Write(factors[2][3]), Write(factors[2][4]), CursorMoveToCurved(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("200_percent")
            x,y,_ = factors[2][6].get_center()+0.4*DOWN
            self.play(Write(factors[2][5]), Write(factors[2][6]), CursorMoveToCurved(cursor, x, y), run_time=.5)
            cursor.idle=True

        self.wait(4)

#####################################
#####################################
class Func_6_P_recognize_percentages_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\sqrt[20]{2.2}$", "$0$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_P_recognize_percentages.2.q.question-text"),
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

        city = ImageMobject(assets_folder / "img" / "city_using_energy.png")
        city = city.scale(3/city.get_width()).move_to([-5, 1.4, 0])
        year = self.translate("words.year")
        after_20_years = self.translate("Func_6_P.recognize_percentages.3.q.after-20-years")
        
        bullets = VGroup(Tex("$\\bullet$ ", " $8000$ MWh", color=c1t, font_size=fs2), Tex("$\\bullet$ $2.2\\times $", after_20_years, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.recognize_percentages.3.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("city_in")
            self.add_shift_sound(0.5)
            self.play(city.animate.shift(5*RIGHT), run_time=0.5)
            
            self.wait_until_bookmark("bullet_1_in")
            self.play(Write(bullets[0]), run_time=.5)

            self.wait_until_bookmark("bullet_2_in")
            self.play(Write(bullets[1]), run_time=.5)

        self.wait(4)


class Func_6_P_recognize_percentages_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        city = ImageMobject(assets_folder / "img" / "city_using_energy.png")
        city = city.scale(3/city.get_width()).set_y(1.8)
        self.add(city)
        
        after = self.translate("words.after")
        years = self.translate("words.years")
        
        bullets = VGroup(Tex("$\\bullet$ ", " $8000$ MWh", color=c1t, font_size=fs2), Tex("$\\bullet$ ", "$2.2$", "$\\times$ ", after, " $20$ ", years, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)
        self.add(bullets)

        equation_0 = MathTex("b", "^x", "=", "c", color=c1t, font_size=fs1)
        equation_1 = MathTex("b", "^{20}", "=", "c", color=c1t, font_size=fs1)
        equation_2 = MathTex("b", "^{20}", "=", "2.2", color=c1t, font_size=fs1)
        equations = VGroup(equation_0, equation_1, equation_2).set_y(1.2)
        step_1 = MathTex("\\Downarrow", "\\sqrt[20]{\\Box}", color=BLUE, font_size=fs2).next_to(equations, DOWN, buff=.4)
        equation_3 = MathTex("b", "=", "\\sqrt[20]{2.2}", color=c1t, font_size=fs1).next_to(step_1, DOWN, buff=.4)
        sol_solved = MathTex("=1.04", color=c1t, font_size=fs1).next_to(equation_3, RIGHT, buff=.1)
        
        cursor = AltCursor(idle=True, y=-2.4)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_6")+self.translate("Func_6_P.recognize_percentages.3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("highlight_factor")
            x,y,_ = bullets[1][1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), Unwrite(bullets[0]), run_time=.5)

            self.wait_until_bookmark("highlight_time")
            x,y,_ = bullets[1][-2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("equation_0_in")
            self.add_shift_sound(0.5)
            self.play(Write(equation_0), city.animate.shift(5*RIGHT), bullets[1].animate.shift(UP), run_time=.5)

            self.wait_until_bookmark("x")
            x,y,_ = equation_0[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("c")
            x,y,_ = equation_0[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)
            cursor.idle=True

            self.wait_until_bookmark("20_for_x")
            self.play(ReplacementTransform(equation_0[0], equation_1[0]), ReplacementTransform(equation_0[2], equation_1[2]), ReplacementTransform(equation_0[3], equation_1[3]), ReplacementTransform(bullets[1][4].copy(), equation_1[1]), Unwrite(equation_0[1]))

            self.wait_until_bookmark("2p2_for_c")
            self.play(ReplacementTransform(equation_1[0], equation_2[0]), ReplacementTransform(equation_1[1], equation_2[1]), ReplacementTransform(equation_1[2], equation_2[2]), ReplacementTransform(bullets[1][1].copy(), equation_2[3]), Unwrite(equation_1[3]))

            self.wait_until_bookmark("equation")
            cursor.idle=False
            self.play(CursorUnderline(cursor, equation_2), Unwrite(bullets[1]), run_time=.5)

            self.wait_until_bookmark("take_root")
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), Write(step_1), run_time=.5)
            
            self.wait_until_bookmark("equation_3")
            x,y,_ = equation_3[1].get_center()+0.5*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(equation_3), run_time=.5)

            self.wait_until_bookmark("digits_in")
            
            self.add_shift_sound(.3)
            self.play(equation_3.animate.shift(.7*LEFT), run_time=.5)
            x,y,_ = sol_solved.get_center()+[-.7,-.5,0]
            self.play(CursorMoveToCurved(cursor, x, y), Write(sol_solved.shift(.7*LEFT)), run_time=.5)
            cursor.idle=True

        self.wait(4)

class Func_6_P_recognize_percentages_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        city = ImageMobject(assets_folder / "img" / "city_using_energy.png")
        city = city.scale(3/city.get_width()).set_y(1.8)
        self.add(city)
        
        after = self.translate("words.after")
        years = self.translate("words.years")
        
        bullets = VGroup(Tex("$\\bullet$ ", " $8000$ MWh", color=c1t, font_size=fs2), Tex("$\\bullet$ ", "$2.2$", "$\\times$ ", after, " $20$ ", years, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)
        self.add(bullets)

        equation_0 = MathTex("b", "^x", "=", "c", color=c1t, font_size=fs1)
        equation_1 = MathTex("b", "^{20}", "=", "c", color=c1t, font_size=fs1)
        equation_2 = MathTex("b", "^{20}", "=", "2.2", color=c1t, font_size=fs1)
        equations = VGroup(equation_0, equation_1, equation_2).set_y(1.2)
        step_1 = MathTex("\\Downarrow", "\\sqrt[20]{\\Box}", color=BLUE, font_size=fs2).next_to(equations, DOWN, buff=.4)
        equation_3 = MathTex("b", "=", "\\sqrt[20]{2.2}", color=c1t, font_size=fs1).next_to(step_1, DOWN, buff=.4)
        sol_solved = MathTex("=1.04", color=c1t, font_size=fs1).next_to(equation_3, RIGHT, buff=.1)
        
        cursor = AltCursor(idle=True, y=-2.4)
        self.add(cursor)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6")+self.translate("Func_6_P.recognize_percentages.3.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("highlight_factor")
            x,y,_ = bullets[1][1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), Unwrite(bullets[0]), run_time=.5)

            self.wait_until_bookmark("highlight_time")
            x,y,_ = bullets[1][-2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("equation_0_in")
            self.add_shift_sound(0.5)
            self.play(Write(equation_0), city.animate.shift(5*RIGHT), bullets[1].animate.shift(UP), run_time=.5)

            self.wait_until_bookmark("x")
            x,y,_ = equation_0[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("c")
            x,y,_ = equation_0[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)
            cursor.idle=True

            self.wait_until_bookmark("20_for_x")
            self.play(ReplacementTransform(equation_0[0], equation_1[0]), ReplacementTransform(equation_0[2], equation_1[2]), ReplacementTransform(equation_0[3], equation_1[3]), ReplacementTransform(bullets[1][4].copy(), equation_1[1]), Unwrite(equation_0[1]))

            self.wait_until_bookmark("2p2_for_c")
            self.play(ReplacementTransform(equation_1[0], equation_2[0]), ReplacementTransform(equation_1[1], equation_2[1]), ReplacementTransform(equation_1[2], equation_2[2]), ReplacementTransform(bullets[1][1].copy(), equation_2[3]), Unwrite(equation_1[3]))

            self.wait_until_bookmark("equation")
            cursor.idle=False
            self.play(CursorUnderline(cursor, equation_2), Unwrite(bullets[1]), run_time=.5)

            self.wait_until_bookmark("take_root")
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor, x, y), Write(step_1), run_time=.5)
            
            self.wait_until_bookmark("equation_3")
            x,y,_ = equation_3[1].get_center()+0.5*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(equation_3), run_time=.5)

            self.wait_until_bookmark("digits_in")
            
            self.add_shift_sound(.3)
            self.play(equation_3.animate.shift(.7*LEFT), run_time=.5)
            x,y,_ = sol_solved.get_center()+[-.7,-.5,0]
            self.play(CursorMoveToCurved(cursor, x, y), Write(sol_solved.shift(.7*LEFT)), run_time=.5)
            cursor.idle=True

        self.wait(4)

#####################################
#####################################
class Func_6_P_recognize_percentages_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\frac{100000}{1.05^{20}}$", "$0$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_P_recognize_percentages.4.q.question-text"),
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

        interest = self.translate("words.interest")
        years = self.translate("words.years")
        bank = ImageMobject(assets_folder / "img" / "bank.png")
        bank = bank.scale(3/bank.get_width()).move_to([-5, 1.4, 0])

        bullets = VGroup(Tex("$\\bullet$ ", " $5\%$ ", interest, color=c1t, font_size=fs2), Tex("$\\bullet$ ", " $100.000$\\texteuro ", color=c1t, font_size=fs2), Tex("$\\bullet$ $20$ ", years, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(bank, DOWN, buff=.4).set_x(0)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.recognize_percentages.4.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("bank_in")
            self.add_shift_sound(0.5)
            self.play(bank.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("percent_in")
            self.play(Write(bullets[0]))

            self.wait_until_bookmark("hundredthousand_in")
            self.play(Write(bullets[1]))

            self.wait_until_bookmark("years_in")
            self.play(Write(bullets[2]))

        self.wait(4)


class Func_6_P_recognize_percentages_4_a(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        interest = self.translate("words.interest")
        years = self.translate("words.years")
        bank = ImageMobject(assets_folder / "img" / "bank.png")
        bank = bank.scale(3/bank.get_width()).set_y(1.4)
        self.add(bank)
        func_0 = MathTex("f(x)=", "a", "\\cdot", "b", "^x", color=c1t, font_size=fs2).set_y(2)
        func_1 = MathTex("f(x)=", "a", "\\cdot", "1.05", "^x", color=c1t, font_size=fs2).move_to(func_0)
        func_2 = MathTex("f(20)=", "a", "\\cdot", "1.05", "^{20}", color=c1t, font_size=fs2).move_to(func_0)
        func_3 = MathTex("100.000=", "a", "\\cdot", "1.05", "^{20}", color=c1t, font_size=fs2).move_to(func_0)
        step_1 = MathTex("\\Downarrow", "\\frac{\\Box}{1.05^{20}}", color=BLUE, font_size=fs2).next_to(func_3, DOWN, buff=.4)
        sol = MathTex("a", "=", "\\frac{100.000}{1.05^{20}}", "", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.4)
        sol_approx = MathTex("a", "=", "\\frac{100.000}{1.05^{20}}", "\\approx38000", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.4)


        cursor = AltCursor(idle=True)
        self.add(cursor)


        bullets = VGroup(Tex("$\\bullet$ ", " $5\%$ ", interest, color=c1t, font_size=fs2), Tex("$\\bullet$ ", " $100.000$\\texteuro ", color=c1t, font_size=fs2), Tex("$\\bullet$ $20$ ", years, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(bank, DOWN, buff=.4).set_x(0)
        self.add(bullets)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_6")+self.translate("Func_6_P.recognize_percentages.4.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("function_in")
            self.add_shift_sound(.5)
            self.play(bank.animate.shift(12*RIGHT), Write(func_0), run_time=.5)

            self.wait_until_bookmark("highlight_a")
            x,y,_ = func_0[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("highlight_interest")
            x,y,_ = bullets[0][1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("plug_in_b")
            self.play(ReplacementTransform(bullets[0][1].copy(), func_1[3]), ReplacementTransform(func_0[0], func_1[0]), ReplacementTransform(func_0[1], func_1[1]), ReplacementTransform(func_0[2], func_1[2]), Unwrite(func_0[3]), ReplacementTransform(func_0[4], func_1[4]), run_time=.5)

            self.wait_until_bookmark("highlight_time")
            x,y,_ = bullets[2][1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)
            
            self.wait_until_bookmark("plug_in_x")
            self.play(ReplacementTransform(bullets[2][1].copy(), func_2[4]), ReplacementTransform(func_1[0], func_2[0]), ReplacementTransform(func_1[1], func_2[1]), ReplacementTransform(func_1[2], func_2[2]), ReplacementTransform(func_1[3], func_2[3]), Unwrite(func_1[4]), run_time=.5)

            self.wait_until_bookmark("highlight_100k")
            x,y,_ = bullets[1][1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("transform_f")
            self.play(Unwrite(func_2[0]), ReplacementTransform(bullets[1][1].copy(), func_3[0]), ReplacementTransform(func_2[1], func_3[1]), ReplacementTransform(func_2[2], func_3[2]), ReplacementTransform(func_2[3], func_3[3]), ReplacementTransform(func_2[4], func_3[4]), run_time=.5)

            self.wait_until_bookmark("step")
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            self.play(Unwrite(bullets), CursorMoveResize(cursor, x, y), Write(step_1), run_time=.5)

            self.wait_until_bookmark("sol_in")
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(sol), run_time=.5)
            cursor.idle=True

            self.wait_until_bookmark("approx")
            self.play(TransformMatchingTex(sol, sol_approx))
            x,y,_ = sol_approx[3].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.5)
            cursor.idle=True

        self.wait(4)
        
class Func_6_P_recognize_percentages_4_b(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        interest = self.translate("words.interest")
        years = self.translate("words.years")
        bank = ImageMobject(assets_folder / "img" / "bank.png")
        bank = bank.scale(3/bank.get_width()).set_y(1.4)
        self.add(bank)
        func_0 = MathTex("f(x)=", "a", "\\cdot", "b", "^x", color=c1t, font_size=fs2).set_y(2)
        func_1 = MathTex("f(x)=", "a", "\\cdot", "1.05", "^x", color=c1t, font_size=fs2).move_to(func_0)
        func_2 = MathTex("f(20)=", "a", "\\cdot", "1.05", "^{20}", color=c1t, font_size=fs2).move_to(func_0)
        func_3 = MathTex("100.000=", "a", "\\cdot", "1.05", "^{20}", color=c1t, font_size=fs2).move_to(func_0)
        step_1 = MathTex("\\Downarrow", "\\frac{\\Box}{1.05^{20}}", color=BLUE, font_size=fs2).next_to(func_3, DOWN, buff=.4)
        sol = MathTex("a", "=", "\\frac{100.000}{1.05^{20}}", "", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.4)
        sol_approx = MathTex("a", "=", "\\frac{100.000}{1.05^{20}}", "\\approx38000", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.4)


        cursor = AltCursor(idle=True)
        self.add(cursor)


        bullets = VGroup(Tex("$\\bullet$ ", " $5\%$ ", interest, color=c1t, font_size=fs2), Tex("$\\bullet$ ", " $100.000$\\texteuro ", color=c1t, font_size=fs2), Tex("$\\bullet$ $20$ ", years, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(bank, DOWN, buff=.4).set_x(0)
        self.add(bullets)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6")+self.translate("Func_6_P.recognize_percentages.4.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("function_in")
            self.add_shift_sound(.5)
            self.play(bank.animate.shift(12*RIGHT), Write(func_0), run_time=.5)

            self.wait_until_bookmark("highlight_a")
            x,y,_ = func_0[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("highlight_interest")
            x,y,_ = bullets[0][1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("plug_in_b")
            self.play(ReplacementTransform(bullets[0][1].copy(), func_1[3]), ReplacementTransform(func_0[0], func_1[0]), ReplacementTransform(func_0[1], func_1[1]), ReplacementTransform(func_0[2], func_1[2]), Unwrite(func_0[3]), ReplacementTransform(func_0[4], func_1[4]), run_time=.5)

            self.wait_until_bookmark("highlight_time")
            x,y,_ = bullets[2][1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)
            
            self.wait_until_bookmark("plug_in_x")
            self.play(ReplacementTransform(bullets[2][1].copy(), func_2[4]), ReplacementTransform(func_1[0], func_2[0]), ReplacementTransform(func_1[1], func_2[1]), ReplacementTransform(func_1[2], func_2[2]), ReplacementTransform(func_1[3], func_2[3]), Unwrite(func_1[4]), run_time=.5)

            self.wait_until_bookmark("highlight_100k")
            x,y,_ = bullets[1][1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("transform_f")
            self.play(Unwrite(func_2[0]), ReplacementTransform(bullets[1][1].copy(), func_3[0]), ReplacementTransform(func_2[1], func_3[1]), ReplacementTransform(func_2[2], func_3[2]), ReplacementTransform(func_2[3], func_3[3]), ReplacementTransform(func_2[4], func_3[4]), run_time=.5)

            self.wait_until_bookmark("step")
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            self.play(Unwrite(bullets), CursorMoveResize(cursor, x, y), Write(step_1), run_time=.5)

            self.wait_until_bookmark("sol_in")
            x,y,_ = sol[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(sol), run_time=.5)
            cursor.idle=True

            self.wait_until_bookmark("approx")
            self.play(TransformMatchingTex(sol, sol_approx))
            x,y,_ = sol_approx[3].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveToCurved(cursor, x, y), run_time=.5)
            cursor.idle=True

        self.wait(4)


#####################################
class Func_6_P_recognize_percentages_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\sqrt[12]{\\frac{5000}{3600}}$", "$0$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_P_recognize_percentages.5.q.question-text"),
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

        twelve_years_ago = self.translate("Func_6_P_recognize_percentages.4.twelveyearsago")
        today = self.translate("words.today")
        interest = self.translate("words.interest")
        money = ImageMobject(assets_folder / "img" / "money_stacks.png")
        money = money.scale(4.6/money.get_width()).move_to([-5, 1.4, 0])

        bullets = VGroup(Tex("$\\bullet$ ", twelve_years_ago, ": $3600$\\texteuro", color=c1t, font_size=fs2), Tex("$\\bullet$ ", today, ": $5000$\\texteuro ", color=c1t, font_size=fs2), Tex("$\\bullet$ ", interest, " $=$???", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(money, DOWN, buff=.4).set_x(0)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.recognize_percentages.5.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("bank_in")
            self.add_shift_sound(0.5)
            self.play(money.animate.shift(5*RIGHT), Write(bullets[0]), run_time=0.5)

            self.wait_until_bookmark("five_thousand_in")
            self.play(Write(bullets[1]), run_time=.5)

            self.wait_until_bookmark("interest_in")
            self.play(Write(bullets[2]), run_time=.5)

        self.wait(4)


class Func_6_P_recognize_percentages_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        twelve_years_ago = self.translate("Func_6_P_recognize_percentages.4.twelveyearsago")
        today = self.translate("words.today")
        interest = self.translate("words.interest")
        money = ImageMobject(assets_folder / "img" / "money_stacks.png")
        money = money.scale(4.6/money.get_width()).set_y(1.4)
        self.add(money)

        bullets = VGroup(Tex("$\\bullet$ ", twelve_years_ago, ": ", "$3600$", "\\texteuro", color=c1t, font_size=fs2), Tex("$\\bullet$ ", today, ": ", "$5000$", "\\texteuro ", color=c1t, font_size=fs2), Tex("$\\bullet$ ", interest, " $=$???", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(money, DOWN, buff=.4).set_x(0)
        self.add(bullets)

        func_0 = MathTex("f(", "x", ")=", "a", "\\cdot", "b", "^x", color=c1t, font_size=fs2)
        func_1 = MathTex("f(", "12", ")=", "a", "\\cdot", "b", "^{12}", color=c1t, font_size=fs2)
        func_2 = MathTex("a", "\\cdot", "b", "^{12}", "=5000", color=c1t, font_size=fs2)
        func_3 = MathTex("3600", "\\cdot", "b", "^{12}", "=5000", color=c1t, font_size=fs2)
        funcs = VGroup(func_0, func_1, func_2, func_3).set_y(2.8)

        step_3 = MathTex("\\Downarrow", "\\frac{\\Box}{3600}", color=BLUE, font_size=fs2).next_to(func_3, DOWN, buff=.4)
        func_4 = MathTex("b", "^{12}", "=\\frac{5000}{3600}", color=c1t, font_size=fs2).next_to(step_3, DOWN, buff=.4)
        step_4 = MathTex("\\Downarrow", "\\sqrt[12]{\\Box}", color=BLUE, font_size=fs2).next_to(func_4, DOWN, buff=.4)
        func_5 = MathTex("b", "=", "\\sqrt[12]{\\frac{5000}{3600}}", color=c1t, font_size=fs2).next_to(step_4, DOWN, buff=.4)
        func_6 = MathTex("b", "=", "\\sqrt[12]{\\frac{5000}{3600}}", "\\approx1.028", color=c1t, font_size=fs2).move_to(func_5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_6")+self.translate("Func_6_P.recognize_percentages.5.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.add_shift_sound(.5)
            self.play(money.animate.shift(15*RIGHT), Write(func_0), rate_func=linear)

            self.wait_until_bookmark("plug_in_twelve")
            self.play(ReplacementTransform(bullets[0][1].copy(), func_1[1]), ReplacementTransform(bullets[0][1].copy(), func_1[6]), ReplacementTransform(func_0[0], func_1[0]), Unwrite(func_0[1]), ReplacementTransform(func_0[2], func_1[2]), ReplacementTransform(func_0[3], func_1[3]), ReplacementTransform(func_0[4], func_1[4]), ReplacementTransform(func_0[5], func_1[5]), Unwrite(func_0[6]))

            self.wait_until_bookmark("transform_f")
            self.play(ReplacementTransform(func_1[3:], func_2[:-1]), Unwrite(func_1[:3]))
            self.play(ReplacementTransform(bullets[1][3].copy(), func_2[-1]))

            self.wait_until_bookmark("a_plugged_in")
            self.play(ReplacementTransform(bullets[0][3].copy(), func_3[0]), Unwrite(func_2[0]), ReplacementTransform(func_2[1], func_3[1]), ReplacementTransform(func_2[2], func_3[2]), ReplacementTransform(func_2[3], func_3[3]), ReplacementTransform(func_2[4], func_3[4]))

            self.wait_until_bookmark("step_divide")
            self.play(Unwrite(bullets), Write(step_3), run_time=.5)

            self.wait_until_bookmark("divide")
            self.play(Write(func_4))

            self.wait_until_bookmark("step_take_root")
            self.play(Write(step_4), run_time=.5)

            self.wait_until_bookmark("take_root")
            self.play(Write(func_5))

            self.wait_until_bookmark("approx")
            self.play(TransformMatchingTex(func_5, func_6))

        self.wait(4)

class Func_6_P_recognize_percentages_5_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        twelve_years_ago = self.translate("Func_6_P_recognize_percentages.4.twelveyearsago")
        today = self.translate("words.today")
        interest = self.translate("words.interest")
        money = ImageMobject(assets_folder / "img" / "money_stacks.png")
        money = money.scale(4.6/money.get_width()).set_y(1.4)
        self.add(money)

        bullets = VGroup(Tex("$\\bullet$ ", twelve_years_ago, ": ", "$3600$", "\\texteuro", color=c1t, font_size=fs2), Tex("$\\bullet$ ", today, ": ", "$5000$", "\\texteuro ", color=c1t, font_size=fs2), Tex("$\\bullet$ ", interest, " $=$???", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(money, DOWN, buff=.4).set_x(0)
        self.add(bullets)

        func_0 = MathTex("f(", "x", ")=", "a", "\\cdot", "b", "^x", color=c1t, font_size=fs2)
        func_1 = MathTex("f(", "12", ")=", "a", "\\cdot", "b", "^{12}", color=c1t, font_size=fs2)
        func_2 = MathTex("a", "\\cdot", "b", "^{12}", "=5000", color=c1t, font_size=fs2)
        func_3 = MathTex("3600", "\\cdot", "b", "^{12}", "=5000", color=c1t, font_size=fs2)
        funcs = VGroup(func_0, func_1, func_2, func_3).set_y(3)

        step_3 = MathTex("\\Downarrow", "\\frac{\\Box}{3600}", color=BLUE, font_size=fs2).next_to(func_3, DOWN, buff=.4)
        func_4 = MathTex("b", "^{12}", "=\\frac{5000}{3600}", color=c1t, font_size=fs2).next_to(step_3, DOWN, buff=.4)
        step_4 = MathTex("\\Downarrow", "\\sqrt[12]{\\Box}", color=BLUE, font_size=fs2).next_to(func_4, DOWN, buff=.4)
        func_5 = MathTex("b", "=", "\\sqrt[12]{\\frac{5000}{3600}}", color=c1t, font_size=fs2).next_to(step_4, DOWN, buff=.4)
        func_6 = MathTex("b", "=", "\\sqrt[12]{\\frac{5000}{3600}}", "\\approx1.028", color=c1t, font_size=fs2).move_to(func_5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6")+self.translate("Func_6_P.recognize_percentages.5.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.add_shift_sound(.5)
            self.play(money.animate.shift(15*RIGHT), Write(func_0), rate_func=linear)

            self.wait_until_bookmark("plug_in_twelve")
            self.play(ReplacementTransform(bullets[0][1].copy(), func_1[1]), ReplacementTransform(bullets[0][1].copy(), func_1[6]), ReplacementTransform(func_0[0], func_1[0]), Unwrite(func_0[1]), ReplacementTransform(func_0[2], func_1[2]), ReplacementTransform(func_0[3], func_1[3]), ReplacementTransform(func_0[4], func_1[4]), ReplacementTransform(func_0[5], func_1[5]), Unwrite(func_0[6]))

            self.wait_until_bookmark("transform_f")
            self.play(ReplacementTransform(func_1[3:], func_2[:-1]), Unwrite(func_1[:3]))
            self.play(ReplacementTransform(bullets[1][3].copy(), func_2[-1]))

            self.wait_until_bookmark("a_plugged_in")
            self.play(ReplacementTransform(bullets[0][3].copy(), func_3[0]), Unwrite(func_2[0]), ReplacementTransform(func_2[1], func_3[1]), ReplacementTransform(func_2[2], func_3[2]), ReplacementTransform(func_2[3], func_3[3]), ReplacementTransform(func_2[4], func_3[4]))

            self.wait_until_bookmark("step_divide")
            self.play(Unwrite(bullets), Write(step_3), run_time=.5)

            self.wait_until_bookmark("divide")
            self.play(Write(func_4))

            self.wait_until_bookmark("step_take_root")
            self.play(Write(step_4), run_time=.5)

            self.wait_until_bookmark("take_root")
            self.play(Write(func_5))

            self.wait_until_bookmark("approx")
            self.play(TransformMatchingTex(func_5, func_6))

        self.wait(4)


###################################################################Exercises for Rules Chapter ##########################

##################################### Exercise Level: Easy (1)
#####################################
class Func_6_P_exp_rules_1_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\tfrac{3^x}{3^2}$", "$(\\sqrt3)^{^x}$", "$\\tfrac{3^x}{3^{-2}}$", "$3^x\\cdot3^{\\frac12}$"],
            correctAnswerIndex = 1,
            questionText=self.translate("Func_6_P.211.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor()
        self.add(cursor)

        expression = MathTex("3^{\\tfrac x2}", color=c1t, font_size=fs1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.211.q.voiceover")

        ) as tracker:
            
            self.wait_until_bookmark("expression_in")
            self.play(Write(expression), CursorUnderline(cursor, expression), run_time=.5)

            self.wait_until_bookmark("q_in")
            self.draw_qmark(cursor, DOWN*2, run_time=3)

        self.wait(4)

class Func_6_P_exp_rules_1_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule = MathTex("(a^x)^{^y}=a^{x\\cdot y}", color=BLUE_D, font_size=fs2).set_y(3)
        expression_step1 = MathTex("3^{\\tfrac x2}", "=", "3^{\\tfrac12\\cdot x}", color=c1t, font_size=fs1)
        implication_1 = MathTex("\\Downarrow", "\\substack{a=3\\\\y=\\tfrac12}", color=BLUE_D, font_size=fs2) 
        expression_step2 = MathTex("3^{\\tfrac x2}", "=", "(3^{\\tfrac12})^{^x}", color=c1t, font_size=fs1)
        implication_2 = MathTex("\\Downarrow", "3^{\\tfrac12}=\\sqrt3", color=BLUE_D, font_size=fs2)
        implication_2[1].scale(.7), implication_1[1].scale(.7)
        expression_step3 = MathTex("3^{\\tfrac x2}", "=", "(\\sqrt3)^{^x}", color=c1t, font_size=fs1).move_to(expression_step2)
        steps = VGroup(expression_step1, implication_1, expression_step2, implication_2, expression_step3).arrange(DOWN, buff=.4)
        implication_1.shift(implication_1[0].get_x()*LEFT), implication_2.shift(implication_2[0].get_x()*LEFT), expression_step1.shift(expression_step1[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT), expression_step3.shift(expression_step3[1].get_x()*LEFT)
        
        expression = MathTex("3^{\\tfrac x2}", color=c1t, font_size=fs1)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_6_P.211.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("expression_in")
            self.play(ReplacementTransform(expression, expression_step1[0]), Write(expression_step1[1]), Write(expression_step1[2]))
            
            self.wait_until_bookmark("rule_in")
            self.play(Write(rule), CursorUnderline(cursor, rule), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveResize(cursor,x,y), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("expression2_in")
            x,y,_ = expression_step2[1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(implication_2), run_time=.5)
            
            self.wait_until_bookmark("expression3_in")
            x,y,_ = expression_step3[-1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(expression_step3), run_time=.4)
            cursor.idle=True


        self.wait(4)

class Func_6_P_exp_rules_1_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule = MathTex("(a^x)^{^y}=a^{x\\cdot y}", color=BLUE_D, font_size=fs2).set_y(3)
        expression_step1 = MathTex("3^{\\tfrac x2}", "=", "3^{\\tfrac12\\cdot x}", color=c1t, font_size=fs1)
        implication_1 = MathTex("\\Downarrow", "\\substack{a=3\\\\y=\\tfrac12}", color=BLUE_D, font_size=fs2) 
        expression_step2 = MathTex("3^{\\tfrac x2}", "=", "(3^{\\tfrac12})^{^x}", color=c1t, font_size=fs1)
        implication_2 = MathTex("\\Downarrow", "3^{\\tfrac12}=\\sqrt3", color=BLUE_D, font_size=fs2)
        implication_2[1].scale(.7), implication_1[1].scale(.7)
        expression_step3 = MathTex("3^{\\tfrac x2}", "=", "(\\sqrt3)^{^x}", color=c1t, font_size=fs1).move_to(expression_step2)
        steps = VGroup(expression_step1, implication_1, expression_step2, implication_2, expression_step3).arrange(DOWN, buff=.4)
        implication_1.shift(implication_1[0].get_x()*LEFT), implication_2.shift(implication_2[0].get_x()*LEFT), expression_step1.shift(expression_step1[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT), expression_step3.shift(expression_step3[1].get_x()*LEFT)
        
        expression = MathTex("3^{\\tfrac x2}", color=c1t, font_size=fs1)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_1")+self.translate("Func_6_P.211.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("expression_in")
            self.play(ReplacementTransform(expression, expression_step1[0]), Write(expression_step1[1]), Write(expression_step1[2]))
            
            self.wait_until_bookmark("rule_in")
            self.play(Write(rule), CursorUnderline(cursor, rule), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveResize(cursor,x,y), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("expression2_in")
            x,y,_ = expression_step2[1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(implication_2), run_time=.5)
            
            self.wait_until_bookmark("expression3_in")
            x,y,_ = expression_step3[-1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(expression_step3), run_time=.4)
            cursor.idle=True


        self.wait(4)

class Func_6_P_exp_rules_1_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule = MathTex("(a^x)^{^y}=a^{x\\cdot y}", color=BLUE_D, font_size=fs2).set_y(3)
        expression_step1 = MathTex("3^{\\tfrac x2}", "=", "3^{\\tfrac12\\cdot x}", color=c1t, font_size=fs1)
        implication_1 = MathTex("\\Downarrow", "\\substack{a=3\\\\y=\\tfrac12}", color=BLUE_D, font_size=fs2) 
        expression_step2 = MathTex("3^{\\tfrac x2}", "=", "(3^{\\tfrac12})^{^x}", color=c1t, font_size=fs1)
        implication_2 = MathTex("\\Downarrow", "3^{\\tfrac12}=\\sqrt3", color=BLUE_D, font_size=fs2)
        implication_2[1].scale(.7), implication_1[1].scale(.7)
        expression_step3 = MathTex("3^{\\tfrac x2}", "=", "(\\sqrt3)^{^x}", color=c1t, font_size=fs1).move_to(expression_step2)
        steps = VGroup(expression_step1, implication_1, expression_step2, implication_2, expression_step3).arrange(DOWN, buff=.4)
        implication_1.shift(implication_1[0].get_x()*LEFT), implication_2.shift(implication_2[0].get_x()*LEFT), expression_step1.shift(expression_step1[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT), expression_step3.shift(expression_step3[1].get_x()*LEFT)
        
        expression = MathTex("3^{\\tfrac x2}", color=c1t, font_size=fs1)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_6_P.211.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("expression_in")
            self.play(ReplacementTransform(expression, expression_step1[0]), Write(expression_step1[1]), Write(expression_step1[2]))
            
            self.wait_until_bookmark("rule_in")
            self.play(Write(rule), CursorUnderline(cursor, rule), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveResize(cursor,x,y), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("expression2_in")
            x,y,_ = expression_step2[1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(implication_2), run_time=.5)
            
            self.wait_until_bookmark("expression3_in")
            x,y,_ = expression_step3[-1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(expression_step3), run_time=.4)
            cursor.idle=True


        self.wait(4)

class Func_6_P_exp_rules_1_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule = MathTex("(a^x)^{^y}=a^{x\\cdot y}", color=BLUE_D, font_size=fs2).set_y(3)
        expression_step1 = MathTex("3^{\\tfrac x2}", "=", "3^{\\tfrac12\\cdot x}", color=c1t, font_size=fs1)
        implication_1 = MathTex("\\Downarrow", "\\substack{a=3\\\\y=\\tfrac12}", color=BLUE_D, font_size=fs2) 
        expression_step2 = MathTex("3^{\\tfrac x2}", "=", "(3^{\\tfrac12})^{^x}", color=c1t, font_size=fs1)
        implication_2 = MathTex("\\Downarrow", "3^{\\tfrac12}=\\sqrt3", color=BLUE_D, font_size=fs2)
        implication_2[1].scale(.7), implication_1[1].scale(.7)
        expression_step3 = MathTex("3^{\\tfrac x2}", "=", "(\\sqrt3)^{^x}", color=c1t, font_size=fs1).move_to(expression_step2)
        steps = VGroup(expression_step1, implication_1, expression_step2, implication_2, expression_step3).arrange(DOWN, buff=.4)
        implication_1.shift(implication_1[0].get_x()*LEFT), implication_2.shift(implication_2[0].get_x()*LEFT), expression_step1.shift(expression_step1[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT), expression_step3.shift(expression_step3[1].get_x()*LEFT)
        
        expression = MathTex("3^{\\tfrac x2}", color=c1t, font_size=fs1)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_6_P.211.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("expression_in")
            self.play(ReplacementTransform(expression, expression_step1[0]), Write(expression_step1[1]), Write(expression_step1[2]))
            
            self.wait_until_bookmark("rule_in")
            self.play(Write(rule), CursorUnderline(cursor, rule), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveResize(cursor,x,y), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("expression2_in")
            x,y,_ = expression_step2[1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(implication_2), run_time=.5)
            
            self.wait_until_bookmark("expression3_in")
            x,y,_ = expression_step3[-1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(expression_step3), run_time=.4)
            cursor.idle=True


        self.wait(4)


#####################################
#####################################
class Func_6_P_exp_rules_1_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\tfrac{1}{\\left(x+2a\\right)^{3b}}$", "$x^{-3b}+2a^{3b}$", "$\\left(\\tfrac{x}{2a}\\right)^{-3b}$", "$\\tfrac{3b}{\\left(x+2a\\right)^{3b}}$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_P.212.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor()
        self.add(cursor)

        lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-7,0,0]).scale(0.6)

        expression = MathTex("\\left(x+2a\\right)^{-3b}", color=c1t, font_size=fs1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.212.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("expression_in")
            self.play(Write(expression), CursorUnderline(cursor, expression), run_time=.5)

            self.wait_until_bookmark("q_in")
            self.add_shift_sound(0.5)
            self.play(lion.animate.shift(RIGHT*7), CursorMoveResize(cursor, 0, -.4), run_time=0.5)
            cursor.idle=True
            self.wait(1)
            self.add_shift_sound(0.5)
            self.play(lion.animate.shift(RIGHT*7), run_time=0.5)

        self.wait(4)


class Func_6_P_exp_rules_1_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule = MathTex("a^{-x}=\\frac{1}{a^x}", color=BLUE_D, font_size=fs2).set_y(2)
        implication_1 = MathTex("\\Downarrow", "\\substack{a=x+2a\\\\x=-3b}", color=BLUE_D, font_size=fs2).set_y(1)
        implication_1[1].scale(.7)
        
        expression = MathTex("\\left(x+2a\\right)", "^{-3b}", "", color=c1t, font_size=fs1)
        expression_step = MathTex("\\left(x+2a\\right)", "^{-3b}", "=\\tfrac{1}{\\left(x+2a\\right)^{3b}}", color=c1t, font_size=fs2)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_2")+self.translate("Func_6_P.212.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("negative_exponent")
            x,y,_ = expression[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.4)

            self.wait_until_bookmark("rule_in")
            self.play(CursorUnderline(cursor, rule), Write(rule))

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            self.play(Write(implication_1), CursorMoveResize(cursor,x,y))

            self.wait_until_bookmark("cursor_park")
            cursor.idle=True

            self.wait_until_bookmark("expression2_in")
            x,y,_ = expression_step.get_center()+0.4*DOWN
            self.play(TransformMatchingTex(expression, expression_step))

        self.wait(4)

class Func_6_P_exp_rules_1_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule = MathTex("a^{-x}=\\frac{1}{a^x}", color=BLUE_D, font_size=fs2).set_y(2)
        implication_1 = MathTex("\\Downarrow", "\\substack{a=x+2a\\\\x=-3b}", color=BLUE_D, font_size=fs2).set_y(1)
        implication_1[1].scale(.7)
        
        expression = MathTex("\\left(x+2a\\right)", "^{-3b}", "", color=c1t, font_size=fs1)
        expression_step = MathTex("\\left(x+2a\\right)", "^{-3b}", "=\\tfrac{1}{\\left(x+2a\\right)^{3b}}", color=c1t, font_size=fs2)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_6_P.212.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("negative_exponent")
            x,y,_ = expression[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.4)

            self.wait_until_bookmark("rule_in")
            self.play(CursorUnderline(cursor, rule), Write(rule))

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            self.play(Write(implication_1), CursorMoveResize(cursor,x,y))

            self.wait_until_bookmark("cursor_park")
            cursor.idle=True

            self.wait_until_bookmark("expression2_in")
            x,y,_ = expression_step.get_center()+0.4*DOWN
            self.play(TransformMatchingTex(expression, expression_step))

        self.wait(4)

class Func_6_P_exp_rules_1_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule = MathTex("a^{-x}=\\frac{1}{a^x}", color=BLUE_D, font_size=fs2).set_y(2)
        implication_1 = MathTex("\\Downarrow", "\\substack{a=x+2a\\\\x=-3b}", color=BLUE_D, font_size=fs2).set_y(1)
        implication_1[1].scale(.7)
        
        expression = MathTex("\\left(x+2a\\right)", "^{-3b}", "", color=c1t, font_size=fs1)
        expression_step = MathTex("\\left(x+2a\\right)", "^{-3b}", "=\\tfrac{1}{\\left(x+2a\\right)^{3b}}", color=c1t, font_size=fs2)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_6_P.212.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("negative_exponent")
            x,y,_ = expression[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.4)

            self.wait_until_bookmark("rule_in")
            self.play(CursorUnderline(cursor, rule), Write(rule))

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            self.play(Write(implication_1), CursorMoveResize(cursor,x,y))

            self.wait_until_bookmark("cursor_park")
            cursor.idle=True

            self.wait_until_bookmark("expression2_in")
            x,y,_ = expression_step.get_center()+0.4*DOWN
            self.play(TransformMatchingTex(expression, expression_step))

        self.wait(4)

class Func_6_P_exp_rules_1_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule = MathTex("a^{-x}=\\frac{1}{a^x}", color=BLUE_D, font_size=fs2).set_y(2)
        implication_1 = MathTex("\\Downarrow", "\\substack{a=x+2a\\\\x=-3b}", color=BLUE_D, font_size=fs2).set_y(1)
        implication_1[1].scale(.7)
        
        expression = MathTex("\\left(x+2a\\right)", "^{-3b}", "", color=c1t, font_size=fs1)
        expression_step = MathTex("\\left(x+2a\\right)", "^{-3b}", "=\\tfrac{1}{\\left(x+2a\\right)^{3b}}", color=c1t, font_size=fs2)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_6_P.212.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("negative_exponent")
            x,y,_ = expression[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x, y), run_time=.4)

            self.wait_until_bookmark("rule_in")
            self.play(CursorUnderline(cursor, rule), Write(rule))

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            self.play(Write(implication_1), CursorMoveResize(cursor,x,y))

            self.wait_until_bookmark("cursor_park")
            cursor.idle=True

            self.wait_until_bookmark("expression2_in")
            x,y,_ = expression_step.get_center()+0.4*DOWN
            self.play(TransformMatchingTex(expression, expression_step))

        self.wait(4)

#####################################
#####################################
class Func_6_P_exp_rules_1_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a=\\frac{1}{25},b=5$", "$a=0,b=0$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_P.213.q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                answerOptionMatcher="$a=\key{a},b=\key{b}$",
                answerOptionsTypes={
                    "a": "number",
                    "b": "number"
                }
            )
        )


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor()
        self.add(cursor)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,0,0]).scale(0.8)

        expression = MathTex("5^{k-2}", color=c1t, font_size=fs1)
        general_form = MathTex("a\\cdot b^x", color=c1t, font_size=fs1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.213.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("expression_in")
            self.play(Write(expression), CursorUnderline(cursor, expression), run_time=.5)

            self.wait_until_bookmark("q_in")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(RIGHT*5), CursorMoveResize(cursor, 0, -.4), run_time=0.5)
            cursor.idle=True
            self.wait(1)
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("general_form_in")
            self.add_shift_sound(0.5)
            self.play(expression.animate.shift(UP), Write(general_form))

        self.wait(4)


class Func_6_P_exp_rules_1_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule = MathTex("a^{x-y}=\\frac{a^x}{a^y}", color=BLUE_D, font_size=fs2)
        implication_1 = MathTex("\\Downarrow", "\\substack{a=5\\\\x=k,\\\\y=2}", color=BLUE_D, font_size=fs2) 
        expression_step1 = MathTex("5^{k-2}", "=", "\\tfrac{5^k}{5^2}", color=c1t, font_size=fs1)
        implication_2 = MathTex("\\Downarrow", "5^2=25", color=BLUE_D, font_size=fs2)
        implication_2[1].scale(.7), implication_1[1].scale(.7)
        expression_step2 = MathTex("5^{k-2}", "=", "\\tfrac{1}{25}\\cdot 5^k", color=c1t, font_size=fs1)
        steps = VGroup(rule, implication_1, expression_step1, implication_2, expression_step2).arrange(DOWN, buff=.4)
        implication_1.shift(implication_1[0].get_x()*LEFT), implication_2.shift(implication_2[0].get_x()*LEFT), expression_step1.shift(expression_step1[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT)

        
        expression = MathTex("5^{k-2}", color=c1t, font_size=fs1)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_6_P.213.a.voiceover")
        ) as tracker:
 
            self.wait_until_bookmark("rule_in")
            self.play(Write(rule), CursorUnderline(cursor, rule), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveResize(cursor,x,y), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("step_1_transform")
            x,y,_ = expression_step1[0].get_center()+0.6*DOWN
            self.play(ReplacementTransform(expression, expression_step1[0]), CursorMoveTo(cursor, x,y), run_time=.4)

            self.wait_until_bookmark("step_1_in")
            x,y,_ = expression_step1[2].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step1[1]), Write(expression_step1[2]), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(implication_2), run_time=.5)

            self.wait_until_bookmark("step_2_1_in")
            x,y,_ = expression_step2[0].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[0]), run_time=.4)

            self.wait_until_bookmark("step_2_in")
            x,y,_ = expression_step2[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[1]), Write(expression_step2[2]), run_time=.4)
            cursor.idle=True

        self.wait(4)

class Func_6_P_exp_rules_1_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule = MathTex("a^{x-y}=\\frac{a^x}{a^y}", color=BLUE_D, font_size=fs2)
        implication_1 = MathTex("\\Downarrow", "\\substack{a=5\\\\x=k,\\\\y=2}", color=BLUE_D, font_size=fs2) 
        expression_step1 = MathTex("5^{k-2}", "=", "\\tfrac{5^k}{5^2}", color=c1t, font_size=fs1)
        implication_2 = MathTex("\\Downarrow", "5^2=25", color=BLUE_D, font_size=fs2)
        implication_2[1].scale(.7), implication_1[1].scale(.7)
        expression_step2 = MathTex("5^{k-2}", "=", "\\tfrac{1}{25}\\cdot 5^k", color=c1t, font_size=fs1)
        steps = VGroup(rule, implication_1, expression_step1, implication_2, expression_step2).arrange(DOWN, buff=.4)
        implication_1.shift(implication_1[0].get_x()*LEFT), implication_2.shift(implication_2[0].get_x()*LEFT), expression_step1.shift(expression_step1[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT)

        
        expression = MathTex("5^{k-2}", color=c1t, font_size=fs1)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_P.213.a.voiceover")
        ) as tracker:
 
            self.wait_until_bookmark("rule_in")
            self.play(Write(rule), CursorUnderline(cursor, rule), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveResize(cursor,x,y), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("step_1_transform")
            x,y,_ = expression_step1[0].get_center()+0.6*DOWN
            self.play(ReplacementTransform(expression, expression_step1[0]), CursorMoveTo(cursor, x,y), run_time=.4)

            self.wait_until_bookmark("step_1_in")
            x,y,_ = expression_step1[2].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step1[1]), Write(expression_step1[2]), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(implication_2), run_time=.5)

            self.wait_until_bookmark("step_2_1_in")
            x,y,_ = expression_step2[0].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[0]), run_time=.4)

            self.wait_until_bookmark("step_2_in")
            x,y,_ = expression_step2[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[1]), Write(expression_step2[2]), run_time=.4)
            cursor.idle=True

        self.wait(4)

#####################################
#####################################
class Func_6_P_exp_rules_1_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$x^{\\tfrac{1+3a}{2}}$", "$x^{2a}$", "$x^{0.75a}$", "$x^{1.5+0.5a}$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_P.214.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor()
        self.add(cursor)

        baboon = ImageMobject(assets_folder / "img" / "baboon_thinking.png").move_to([-7,0,0]).scale(0.6)

        expression = MathTex("\\sqrt x \\cdot x^{1.5a}", color=c1t, font_size=fs1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.214.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("expression_in")
            self.play(Write(expression), CursorUnderline(cursor, expression), run_time=.5)

            self.wait_until_bookmark("q_in")
            self.add_shift_sound(0.5)
            self.play(baboon.animate.shift(RIGHT*7), CursorMoveResize(cursor, 0, -.4), run_time=0.5)
            cursor.idle=True
            self.wait(1)
            self.add_shift_sound(0.5)
            self.play(baboon.animate.shift(RIGHT*7), run_time=0.5)

        self.wait(4)


class Func_6_P_exp_rules_1_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule = MathTex("a^x\\cdot a^y=a^{x+y}", color=BLUE_D, font_size=fs2).set_y(3)
        expression_step1 = MathTex("\\sqrt x \\cdot x^{1.5a}", "=", " x^{\\tfrac12} \\cdot x^{1.5a}", color=c1t, font_size=fs2)
        implication_1 = MathTex("\\Downarrow", "\\substack{a=x\\\\x=\\tfrac12, y=1.5a}", color=BLUE_D, font_size=fs2) 
        expression_step2 = MathTex("\\sqrt x \\cdot x^{1.5a}", "=", "x^{\\tfrac12+1.5a}", color=c1t, font_size=fs2)
        implication_2 = MathTex("\\Downarrow", "\\substack{\\tfrac12+1.5a\\\\=\\tfrac{1+3a}{2}}", color=BLUE_D, font_size=fs2)
        implication_2[1].scale(.7), implication_1[1].scale(.7)
        expression_step3 = MathTex("\\sqrt x \\cdot x^{1.5a}", "=", "x^{\\tfrac{1+3a}{2}}", color=c1t, font_size=fs2).move_to(expression_step2)
        steps = VGroup(expression_step1, implication_1, expression_step2, implication_2, expression_step3).arrange(DOWN, buff=.4)
        implication_1.shift(implication_1[0].get_x()*LEFT), implication_2.shift(implication_2[0].get_x()*LEFT), expression_step1.shift(expression_step1[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT), expression_step3.shift(expression_step3[1].get_x()*LEFT)
        
        expression = MathTex("\\sqrt x \\cdot x^{1.5a}", color=c1t, font_size=fs1)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_4")+self.translate("Func_6_P.214.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("expression_in_1")
            self.play(ReplacementTransform(expression, expression_step1[0]))

            self.wait_until_bookmark("expression_in_2")
            self.play(Write(expression_step1[1]), Write(expression_step1[2]))
            
            self.wait_until_bookmark("rule_in")
            self.play(Write(rule), CursorUnderline(cursor, rule), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveResize(cursor,x,y), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("expression2_in_1")
            x,y,_ = expression_step2[0].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[0]), run_time=.4)

            self.wait_until_bookmark("expression2_in_2")
            x,y,_ = expression_step2[2].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[1]), Write(expression_step2[2]), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_2[1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(implication_2), run_time=.5)
            
            self.wait_until_bookmark("expression3_in")
            x,y,_ = expression_step3[-1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(expression_step3), run_time=.4)
            cursor.idle=True


        self.wait(4)

class Func_6_P_exp_rules_1_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule = MathTex("a^x\\cdot a^y=a^{x+y}", color=BLUE_D, font_size=fs2).set_y(3)
        expression_step1 = MathTex("\\sqrt x \\cdot x^{1.5a}", "=", " x^{\\tfrac12} \\cdot x^{1.5a}", color=c1t, font_size=fs2)
        implication_1 = MathTex("\\Downarrow", "\\substack{a=x\\\\x=\\tfrac12, y=1.5a}", color=BLUE_D, font_size=fs2) 
        expression_step2 = MathTex("\\sqrt x \\cdot x^{1.5a}", "=", "x^{\\tfrac12+1.5a}", color=c1t, font_size=fs2)
        implication_2 = MathTex("\\Downarrow", "\\substack{\\tfrac12+1.5a\\\\=\\tfrac{1+3a}{2}}", color=BLUE_D, font_size=fs2)
        implication_2[1].scale(.7), implication_1[1].scale(.7)
        expression_step3 = MathTex("\\sqrt x \\cdot x^{1.5a}", "=", "x^{\\tfrac{1+3a}{2}}", color=c1t, font_size=fs2).move_to(expression_step2)
        steps = VGroup(expression_step1, implication_1, expression_step2, implication_2, expression_step3).arrange(DOWN, buff=.4)
        implication_1.shift(implication_1[0].get_x()*LEFT), implication_2.shift(implication_2[0].get_x()*LEFT), expression_step1.shift(expression_step1[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT), expression_step3.shift(expression_step3[1].get_x()*LEFT)
        
        expression = MathTex("\\sqrt x \\cdot x^{1.5a}", color=c1t, font_size=fs1)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_6_P.214.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("expression_in_1")
            self.play(ReplacementTransform(expression, expression_step1[0]))

            self.wait_until_bookmark("expression_in_2")
            self.play(Write(expression_step1[1]), Write(expression_step1[2]))
            
            self.wait_until_bookmark("rule_in")
            self.play(Write(rule), CursorUnderline(cursor, rule), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveResize(cursor,x,y), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("expression2_in_1")
            x,y,_ = expression_step2[0].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[0]), run_time=.4)

            self.wait_until_bookmark("expression2_in_2")
            x,y,_ = expression_step2[2].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[1]), Write(expression_step2[2]), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_2[1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(implication_2), run_time=.5)
            
            self.wait_until_bookmark("expression3_in")
            x,y,_ = expression_step3[-1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(expression_step3), run_time=.4)
            cursor.idle=True


        self.wait(4)

class Func_6_P_exp_rules_1_4_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule = MathTex("a^x\\cdot a^y=a^{x+y}", color=BLUE_D, font_size=fs2).set_y(3)
        expression_step1 = MathTex("\\sqrt x \\cdot x^{1.5a}", "=", " x^{\\tfrac12} \\cdot x^{1.5a}", color=c1t, font_size=fs2)
        implication_1 = MathTex("\\Downarrow", "\\substack{a=x\\\\x=\\tfrac12, y=1.5a}", color=BLUE_D, font_size=fs2) 
        expression_step2 = MathTex("\\sqrt x \\cdot x^{1.5a}", "=", "x^{\\tfrac12+1.5a}", color=c1t, font_size=fs2)
        implication_2 = MathTex("\\Downarrow", "\\substack{\\tfrac12+1.5a\\\\=\\tfrac{1+3a}{2}}", color=BLUE_D, font_size=fs2)
        implication_2[1].scale(.7), implication_1[1].scale(.7)
        expression_step3 = MathTex("\\sqrt x \\cdot x^{1.5a}", "=", "x^{\\tfrac{1+3a}{2}}", color=c1t, font_size=fs2).move_to(expression_step2)
        steps = VGroup(expression_step1, implication_1, expression_step2, implication_2, expression_step3).arrange(DOWN, buff=.4)
        implication_1.shift(implication_1[0].get_x()*LEFT), implication_2.shift(implication_2[0].get_x()*LEFT), expression_step1.shift(expression_step1[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT), expression_step3.shift(expression_step3[1].get_x()*LEFT)
        
        expression = MathTex("\\sqrt x \\cdot x^{1.5a}", color=c1t, font_size=fs1)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_6_P.214.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("expression_in_1")
            self.play(ReplacementTransform(expression, expression_step1[0]))

            self.wait_until_bookmark("expression_in_2")
            self.play(Write(expression_step1[1]), Write(expression_step1[2]))
            
            self.wait_until_bookmark("rule_in")
            self.play(Write(rule), CursorUnderline(cursor, rule), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveResize(cursor,x,y), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("expression2_in_1")
            x,y,_ = expression_step2[0].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[0]), run_time=.4)

            self.wait_until_bookmark("expression2_in_2")
            x,y,_ = expression_step2[2].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[1]), Write(expression_step2[2]), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_2[1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(implication_2), run_time=.5)
            
            self.wait_until_bookmark("expression3_in")
            x,y,_ = expression_step3[-1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(expression_step3), run_time=.4)
            cursor.idle=True


        self.wait(4)

class Func_6_P_exp_rules_1_4_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule = MathTex("a^x\\cdot a^y=a^{x+y}", color=BLUE_D, font_size=fs2).set_y(3)
        expression_step1 = MathTex("\\sqrt x \\cdot x^{1.5a}", "=", " x^{\\tfrac12} \\cdot x^{1.5a}", color=c1t, font_size=fs2)
        implication_1 = MathTex("\\Downarrow", "\\substack{a=x\\\\x=\\tfrac12, y=1.5a}", color=BLUE_D, font_size=fs2) 
        expression_step2 = MathTex("\\sqrt x \\cdot x^{1.5a}", "=", "x^{\\tfrac12+1.5a}", color=c1t, font_size=fs2)
        implication_2 = MathTex("\\Downarrow", "\\substack{\\tfrac12+1.5a\\\\=\\tfrac{1+3a}{2}}", color=BLUE_D, font_size=fs2)
        implication_2[1].scale(.7), implication_1[1].scale(.7)
        expression_step3 = MathTex("\\sqrt x \\cdot x^{1.5a}", "=", "x^{\\tfrac{1+3a}{2}}", color=c1t, font_size=fs2).move_to(expression_step2)
        steps = VGroup(expression_step1, implication_1, expression_step2, implication_2, expression_step3).arrange(DOWN, buff=.4)
        implication_1.shift(implication_1[0].get_x()*LEFT), implication_2.shift(implication_2[0].get_x()*LEFT), expression_step1.shift(expression_step1[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT), expression_step3.shift(expression_step3[1].get_x()*LEFT)
        
        expression = MathTex("\\sqrt x \\cdot x^{1.5a}", color=c1t, font_size=fs1)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_6_P.214.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("expression_in_1")
            self.play(ReplacementTransform(expression, expression_step1[0]))

            self.wait_until_bookmark("expression_in_2")
            self.play(Write(expression_step1[1]), Write(expression_step1[2]))
            
            self.wait_until_bookmark("rule_in")
            self.play(Write(rule), CursorUnderline(cursor, rule), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveResize(cursor,x,y), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("expression2_in_1")
            x,y,_ = expression_step2[0].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[0]), run_time=.4)

            self.wait_until_bookmark("expression2_in_2")
            x,y,_ = expression_step2[2].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[1]), Write(expression_step2[2]), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_2[1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(implication_2), run_time=.5)
            
            self.wait_until_bookmark("expression3_in")
            x,y,_ = expression_step3[-1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(expression_step3), run_time=.4)
            cursor.idle=True


        self.wait(4)

##################################### Exercise Level: Medium (2)
#####################################
class Func_6_P_exp_rules_2_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a=\\frac{1}{16},b=2$", "$a=0,b=0$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_6_P.221.q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                answerOptionMatcher="$a=\key{a},b=\key{b}$",
                answerOptionsTypes={
                    "a": "number",
                    "b": "number"
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor()
        self.add(cursor)

        expression = MathTex("4^{\\tfrac x2 -2}", color=c1t, font_size=fs1).set_y(2)
        downarrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).set_y(1)
        general_form = MathTex("a\\cdot b^x", color=GREEN_D, font_size=fs1).set_y(0)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.221.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("expression_in")
            self.play(Write(expression), CursorUnderline(cursor, expression), run_time=.5)

            self.wait_until_bookmark("general_form_in")
            x,y,_ = general_form.get_center()+0.5*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(general_form), Write(downarrow), run_time=.5)

            self.wait_until_bookmark("q_in")
            self.draw_qmark(cursor, DOWN*2, run_time=3)

        self.wait(4)


class Func_6_P_exp_rules_2_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule_1 = MathTex("a^{x-y}=\\frac{a^x}{a^y}", color=BLUE_D, font_size=fs1).set_y(2)
        rule_2 = MathTex("(a^x)^{^y}=a^{x\\cdot y}", color=BLUE_D, font_size=fs1).set_y(3)

        implication_1_1 = MathTex("\\Downarrow", "\\substack{a=4\\\\x=x/2,\, y=2}", color=BLUE_D, font_size=fs2) 
        expression_step1 = MathTex("4^{x/2 -2}", "=", "\\tfrac{4^{x/2}}{4^2}", color=c1t, font_size=fs1)
        implication_1_2 = MathTex("\\Downarrow", "4^2=16", color=BLUE_D, font_size=fs2)
        expression_step2 = MathTex("4^{x/2 -2}", "=", "\\tfrac{1}{16}\\cdot 4^{x/2}", color=c1t, font_size=fs1)

        expression_step3 = MathTex("4^{\\tfrac x2 -2}", "=", "\\tfrac{1}{16}\\cdot 4^{1/2\\cdot x}", color=c1t, font_size=fs1)
        implication_2_1 = MathTex("\\Downarrow", "\\substack{a=4\\\\x=x/2,\,y=x}", color=BLUE_D, font_size=fs2)
        expression_step4 = MathTex("4^{\\tfrac x2 -2}", "=", "\\tfrac{1}{16}\\cdot \\left(4^{1/2}\\right)^{^x}", color=c1t, font_size=fs1).scale(0.9)
        implication_2_2 = MathTex("\\Downarrow", "4^{\\tfrac12}=\\sqrt4=2", color=BLUE_D, font_size=fs2)
        expression_step5 = MathTex("4^{\\tfrac x2 -2}", "=", "\\tfrac{1}{16}\\cdot 2^{x}", color=c1t, font_size=fs1)

        steps_1 = VGroup(rule_1, implication_1_1, expression_step1, implication_1_2, expression_step2).arrange(DOWN, buff=.4).shift(UP)
        steps_2 = VGroup(rule_2, expression_step3, implication_2_1, expression_step4,  implication_2_2, expression_step5).arrange(DOWN, buff=.4)

        expression = MathTex("4^{\\tfrac x2 -2}", color=c1t, font_size=fs1)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_6_P.221.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("rule_in")
            self.play(Write(rule_1), CursorUnderline(cursor, rule_1), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1_1[1].get_center()+0.6*DOWN
            cursor.idle=False
            self.play(CursorMoveResize(cursor,x,y), Write(implication_1_1), run_time=.5)

            self.wait_until_bookmark("step_1_transform")
            x,y,_ = expression_step1[0].get_center()+0.6*DOWN
            self.play(ReplacementTransform(expression, expression_step1[0]), CursorMoveTo(cursor, x,y), run_time=.4)

            self.wait_until_bookmark("step_1_in")
            x,y,_ = expression_step1[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step1[1]), Write(expression_step1[2]), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_1_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(implication_1_2), run_time=.5)

            self.wait_until_bookmark("step_2_1_in")
            x,y,_ = expression_step2[0].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[0]), run_time=.4)

            self.wait_until_bookmark("step_2_in")
            x,y,_ = expression_step2[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[1]), Write(expression_step2[2]), run_time=.4)

            self.wait_until_bookmark("clean_up")
            upshift = expression_step3.get_center()-expression_step2.get_center()
            self.add_shift_sound(0.5)
            expression_step2 = expression_step2.copy()
            self.play(expression_step2.animate.shift(upshift), FadeOut(steps_1), run_time=.5)
            
            self.wait_until_bookmark("step_3_1_in")
            x,y,_ = expression_step3[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), TransformMatchingTex(expression_step2, expression_step3))

            self.wait_until_bookmark("rule_2_in")
            self.play(Write(rule_2), CursorUnderline(cursor, rule_2), run_time=.5)

            self.wait_until_bookmark("implication_3_in")
            x,y,_ = implication_2_1[1].get_center()+0.6*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(implication_2_1), run_time=.5)

            self.wait_until_bookmark("step_4_1_in")
            x,y,_ = expression_step4[0].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step4[0]), run_time=.4)

            self.wait_until_bookmark("step_4_in")
            x,y,_ = expression_step4[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step4[1]), Write(expression_step4[2]), run_time=.4)

            self.wait_until_bookmark("implication_4_in")
            self.add_shift_sound(0.5)
            self.play(rule_2.animate.shift(5*UP), implication_2_1.animate.shift(5*UP), expression_step3.animate.shift(5*UP), expression_step4.animate.shift(3*UP), CursorMoveResize(cursor, 0, -.4), run_time=.5)
            implication_2_2.shift(3*UP), expression_step5.shift(3*UP)
            x,y,_ = implication_2_2[1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(implication_2_2), run_time=.5)

            self.wait_until_bookmark("step_5_1_in")
            x,y,_ = expression_step5[0].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step5[0]), run_time=.4)

            self.wait_until_bookmark("step_5_in")
            x,y,_ = expression_step5[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step5[1]), Write(expression_step5[2]), run_time=.4)
            cursor.idle=True

        self.wait(4)

class Func_6_P_exp_rules_2_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule_1 = MathTex("a^{x-y}=\\frac{a^x}{a^y}", color=BLUE_D, font_size=fs1).set_y(2)
        rule_2 = MathTex("(a^x)^{^y}=a^{x\\cdot y}", color=BLUE_D, font_size=fs1).set_y(3)

        implication_1_1 = MathTex("\\Downarrow", "\\substack{a=4\\\\x=x/2,\, y=2}", color=BLUE_D, font_size=fs2) 
        expression_step1 = MathTex("4^{x/2 -2}", "=", "\\tfrac{4^{x/2}}{4^2}", color=c1t, font_size=fs1)
        implication_1_2 = MathTex("\\Downarrow", "4^2=16", color=BLUE_D, font_size=fs2)
        expression_step2 = MathTex("4^{x/2 -2}", "=", "\\tfrac{1}{16}\\cdot 4^{x/2}", color=c1t, font_size=fs1)

        expression_step3 = MathTex("4^{\\tfrac x2 -2}", "=", "\\tfrac{1}{16}\\cdot 4^{1/2\\cdot x}", color=c1t, font_size=fs1)
        implication_2_1 = MathTex("\\Downarrow", "\\substack{a=4\\\\x=x/2,\,y=x}", color=BLUE_D, font_size=fs2)
        expression_step4 = MathTex("4^{\\tfrac x2 -2}", "=", "\\tfrac{1}{16}\\cdot \\left(4^{1/2}\\right)^{^x}", color=c1t, font_size=fs1).scale(0.9)
        implication_2_2 = MathTex("\\Downarrow", "4^{\\tfrac12}=\\sqrt4=2", color=BLUE_D, font_size=fs2)
        expression_step5 = MathTex("4^{\\tfrac x2 -2}", "=", "\\tfrac{1}{16}\\cdot 2^{x}", color=c1t, font_size=fs1)

        steps_1 = VGroup(rule_1, implication_1_1, expression_step1, implication_1_2, expression_step2).arrange(DOWN, buff=.4).shift(UP)
        steps_2 = VGroup(rule_2, expression_step3, implication_2_1, expression_step4,  implication_2_2, expression_step5).arrange(DOWN, buff=.4)

        expression = MathTex("4^{\\tfrac x2 -2}", color=c1t, font_size=fs1)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_P.221.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("rule_in")
            self.play(Write(rule_1), CursorUnderline(cursor, rule_1), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1_1[1].get_center()+0.6*DOWN
            cursor.idle=False
            self.play(CursorMoveResize(cursor,x,y), Write(implication_1_1), run_time=.5)

            self.wait_until_bookmark("step_1_transform")
            x,y,_ = expression_step1[0].get_center()+0.6*DOWN
            self.play(ReplacementTransform(expression, expression_step1[0]), CursorMoveTo(cursor, x,y), run_time=.4)

            self.wait_until_bookmark("step_1_in")
            x,y,_ = expression_step1[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step1[1]), Write(expression_step1[2]), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_1_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(implication_1_2), run_time=.5)

            self.wait_until_bookmark("step_2_1_in")
            x,y,_ = expression_step2[0].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[0]), run_time=.4)

            self.wait_until_bookmark("step_2_in")
            x,y,_ = expression_step2[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[1]), Write(expression_step2[2]), run_time=.4)

            self.wait_until_bookmark("clean_up")
            upshift = expression_step3.get_center()-expression_step2.get_center()
            self.add_shift_sound(0.5)
            expression_step2 = expression_step2.copy()
            self.play(expression_step2.animate.shift(upshift), FadeOut(steps_1), run_time=.5)
            
            self.wait_until_bookmark("step_3_1_in")
            x,y,_ = expression_step3[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), TransformMatchingTex(expression_step2, expression_step3))

            self.wait_until_bookmark("rule_2_in")
            self.play(Write(rule_2), CursorUnderline(cursor, rule_2), run_time=.5)

            self.wait_until_bookmark("implication_3_in")
            x,y,_ = implication_2_1[1].get_center()+0.6*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(implication_2_1), run_time=.5)

            self.wait_until_bookmark("step_4_1_in")
            x,y,_ = expression_step4[0].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step4[0]), run_time=.4)

            self.wait_until_bookmark("step_4_in")
            x,y,_ = expression_step4[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step4[1]), Write(expression_step4[2]), run_time=.4)

            self.wait_until_bookmark("implication_4_in")
            self.add_shift_sound(0.5)
            self.play(rule_2.animate.shift(5*UP), implication_2_1.animate.shift(5*UP), expression_step3.animate.shift(5*UP), expression_step4.animate.shift(3*UP), CursorMoveResize(cursor, 0, -.4), run_time=.5)
            implication_2_2.shift(3*UP), expression_step5.shift(3*UP)
            x,y,_ = implication_2_2[1].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(implication_2_2), run_time=.5)

            self.wait_until_bookmark("step_5_1_in")
            x,y,_ = expression_step5[0].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step5[0]), run_time=.4)

            self.wait_until_bookmark("step_5_in")
            x,y,_ = expression_step5[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step5[1]), Write(expression_step5[2]), run_time=.4)
            cursor.idle=True

        self.wait(4)

#####################################
#####################################
class Func_6_P_exp_rules_2_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$2b^3 \\cdot \\left(\\tfrac{1}{b^3}\\right)^{x}$", "$\\left(\\tfrac{2}{b^3}\\right)^{x}$", "$\\tfrac{2}{b^3}\\cdot \\left(\\tfrac{1}{b^3}\\right)^{x}$", "$\\frac{2}{b^{3x+3}}$"],
            correctAnswerIndex = 2,
            questionText=self.translate("Func_6_P.22.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor()
        self.add(cursor)

        expression = MathTex("2\\cdot b^{-3x -3}", color=c1t, font_size=fs1).set_y(2)
        downarrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).set_y(1)
        general_form = MathTex("a\\cdot b^x", color=GREEN_D, font_size=fs1).set_y(0)

        giraffe = ImageMobject(assets_folder / "img" / "giraffe_thinking.png").move_to([-5,-1.6,0]).scale(0.7)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.22.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("expression_in")
            self.play(Write(expression), CursorUnderline(cursor, expression), run_time=.5)

            self.wait_until_bookmark("general_form_in")
            x,y,_ = general_form.get_center()+0.5*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(general_form), Write(downarrow), run_time=.5)

            self.wait_until_bookmark("q_in")
            self.add_shift_sound(0.5)
            self.play(giraffe.animate.shift(RIGHT*5), CursorMoveResize(cursor, 0, -.4), run_time=0.5)
            cursor.idle=True
            self.wait(1)
            self.add_shift_sound(0.5)
            self.play(giraffe.animate.shift(RIGHT*5), run_time=0.5)

        self.wait(4)


class Func_6_P_exp_rules_2_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        expression_step1 = MathTex("2\\cdot b^{-3x -3}", "=", " 2\\cdot b^{-3(x+1)}}", color=c1t, font_size=fs3)
        implication_1 = MathTex("\\Downarrow", "a^{(x\\cdot y)}=\\left(a^x\\right)^{^y}", color=BLUE_D, font_size=fs2) 
        expression_step2 = MathTex("2\\cdot b^{-3x -3}", "=", " 2\\cdot \\left(b^{-3}\\right)^{(x+1)}}", color=c1t, font_size=fs3)
        implication_2 = MathTex("\\Downarrow", "a^{(x+y)}=a^x\\cdot a^y", color=BLUE_D, font_size=fs2)
        expression_step3 = MathTex("2\\cdot b^{-3x -3}", "=", " 2b^{-3}\\cdot \\left(b^{-3}\\right)^{x}}", color=c1t, font_size=fs3)
        implication_3 = MathTex("\\Downarrow", "a^{-x}=\\tfrac1{a^x}", color=BLUE_D, font_size=fs2)
        expression_step4 = MathTex("2\\cdot b^{-3x -3}", "=", " \\tfrac2{b^3}\\cdot \\left(\\tfrac1{b^3}\\right)^{x}}", color=c1t, font_size=fs3)
        steps = VGroup(expression_step1, implication_1, expression_step2, implication_2, expression_step3, implication_3, expression_step4).arrange(DOWN, buff=.4)
        expression_step1.shift(expression_step1[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT), expression_step3.shift(expression_step3[1].get_x()*LEFT)
        implication_1[1].scale(.7), implication_2[1].scale(.7), implication_3[1].scale(.7)
        implication_1.shift((implication_1[0].get_x()+1)*LEFT), implication_2.shift((implication_2[0].get_x()+1)*LEFT), implication_3.shift((implication_3[0].get_x()+1)*LEFT)
        expression = MathTex("2\\cdot b^{-3x -3}", color=c1t, font_size=fs1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_P.22.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("step_0")
            x,y,_ = expression_step1[0].get_center()+0.4*DOWN
            self.play(ReplacementTransform(expression, expression_step1[0]))
            self.play(CursorMoveTo(cursor, x,y), run_time=.4)

            self.wait_until_bookmark("step_1_in")
            x,y,_ = expression_step1[-1].get_center()+0.4*DOWN
            self.play(Write(expression_step1[1]), Write(expression_step1[2]), CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            self.play(Write(implication_1), CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("step_2_in")
            x,y,_ = expression_step2[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[0]), run_time=.4)

            self.wait_until_bookmark("step_2_1_in")
            x,y,_ = expression_step2[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[1]), Write(expression_step2[2]), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_2[1].get_center()+0.4*DOWN
            self.play(Write(implication_2), CursorMoveResize(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_3_in")
            x,y,_ = expression_step3[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step3[0]), run_time=.4)

            self.wait_until_bookmark("step_3_1_in")
            x,y,_ = expression_step3[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step3[1]), Write(expression_step3[2]), run_time=.4)

            self.wait_until_bookmark("clean_up")
            upshift = expression_step1.get_center()-expression_step3.get_center()
            self.add_shift_sound(0.5)
            self.play(VGroup(expression_step1, expression_step2, implication_1, implication_2).animate.shift(5*UP), expression_step3.animate.shift(upshift), run_time=.5)
            implication_3.shift(upshift), expression_step4.shift(upshift)

            self.wait_until_bookmark("implication_3_in")
            x,y,_ = implication_3[1].get_center()+0.4*DOWN
            self.play(Write(implication_3), CursorMoveResize(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_4_in")
            x,y,_ = expression_step4[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step4[0]), run_time=.4)

            self.wait_until_bookmark("step_4_1_in")
            x,y,_ = expression_step4[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step4[1]), Write(expression_step4[2]), run_time=.4)
            cursor.idle=True

        self.wait(4)

class Func_6_P_exp_rules_2_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        expression_step1 = MathTex("2\\cdot b^{-3x -3}", "=", " 2\\cdot b^{-3(x+1)}}", color=c1t, font_size=fs3)
        implication_1 = MathTex("\\Downarrow", "a^{(x\\cdot y)}=\\left(a^x\\right)^{^y}", color=BLUE_D, font_size=fs2) 
        expression_step2 = MathTex("2\\cdot b^{-3x -3}", "=", " 2\\cdot \\left(b^{-3}\\right)^{(x+1)}}", color=c1t, font_size=fs3)
        implication_2 = MathTex("\\Downarrow", "a^{(x+y)}=a^x\\cdot a^y", color=BLUE_D, font_size=fs2)
        expression_step3 = MathTex("2\\cdot b^{-3x -3}", "=", " 2b^{-3}\\cdot \\left(b^{-3}\\right)^{x}}", color=c1t, font_size=fs3)
        implication_3 = MathTex("\\Downarrow", "a^{-x}=\\tfrac1{a^x}", color=BLUE_D, font_size=fs2)
        expression_step4 = MathTex("2\\cdot b^{-3x -3}", "=", " \\tfrac2{b^3}\\cdot \\left(\\tfrac1{b^3}\\right)^{x}}", color=c1t, font_size=fs3)
        steps = VGroup(expression_step1, implication_1, expression_step2, implication_2, expression_step3, implication_3, expression_step4).arrange(DOWN, buff=.4)
        expression_step1.shift(expression_step1[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT), expression_step3.shift(expression_step3[1].get_x()*LEFT)
        implication_1[1].scale(.7), implication_2[1].scale(.7), implication_3[1].scale(.7)
        implication_1.shift((implication_1[0].get_x()+1)*LEFT), implication_2.shift((implication_2[0].get_x()+1)*LEFT), implication_3.shift((implication_3[0].get_x()+1)*LEFT)
        expression = MathTex("2\\cdot b^{-3x -3}", color=c1t, font_size=fs1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_P.22.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("step_0")
            x,y,_ = expression_step1[0].get_center()+0.4*DOWN
            self.play(ReplacementTransform(expression, expression_step1[0]))
            self.play(CursorMoveTo(cursor, x,y), run_time=.4)

            self.wait_until_bookmark("step_1_in")
            x,y,_ = expression_step1[-1].get_center()+0.4*DOWN
            self.play(Write(expression_step1[1]), Write(expression_step1[2]), CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            self.play(Write(implication_1), CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("step_2_in")
            x,y,_ = expression_step2[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[0]), run_time=.4)

            self.wait_until_bookmark("step_2_1_in")
            x,y,_ = expression_step2[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[1]), Write(expression_step2[2]), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_2[1].get_center()+0.4*DOWN
            self.play(Write(implication_2), CursorMoveResize(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_3_in")
            x,y,_ = expression_step3[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step3[0]), run_time=.4)

            self.wait_until_bookmark("step_3_1_in")
            x,y,_ = expression_step3[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step3[1]), Write(expression_step3[2]), run_time=.4)

            self.wait_until_bookmark("clean_up")
            upshift = expression_step1.get_center()-expression_step3.get_center()
            self.add_shift_sound(0.5)
            self.play(VGroup(expression_step1, expression_step2, implication_1, implication_2).animate.shift(5*UP), expression_step3.animate.shift(upshift), run_time=.5)
            implication_3.shift(upshift), expression_step4.shift(upshift)

            self.wait_until_bookmark("implication_3_in")
            x,y,_ = implication_3[1].get_center()+0.4*DOWN
            self.play(Write(implication_3), CursorMoveResize(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_4_in")
            x,y,_ = expression_step4[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step4[0]), run_time=.4)

            self.wait_until_bookmark("step_4_1_in")
            x,y,_ = expression_step4[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step4[1]), Write(expression_step4[2]), run_time=.4)
            cursor.idle=True

        self.wait(4)

class Func_6_P_exp_rules_2_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        expression_step1 = MathTex("2\\cdot b^{-3x -3}", "=", " 2\\cdot b^{-3(x+1)}}", color=c1t, font_size=fs3)
        implication_1 = MathTex("\\Downarrow", "a^{(x\\cdot y)}=\\left(a^x\\right)^{^y}", color=BLUE_D, font_size=fs2) 
        expression_step2 = MathTex("2\\cdot b^{-3x -3}", "=", " 2\\cdot \\left(b^{-3}\\right)^{(x+1)}}", color=c1t, font_size=fs3)
        implication_2 = MathTex("\\Downarrow", "a^{(x+y)}=a^x\\cdot a^y", color=BLUE_D, font_size=fs2)
        expression_step3 = MathTex("2\\cdot b^{-3x -3}", "=", " 2b^{-3}\\cdot \\left(b^{-3}\\right)^{x}}", color=c1t, font_size=fs3)
        implication_3 = MathTex("\\Downarrow", "a^{-x}=\\tfrac1{a^x}", color=BLUE_D, font_size=fs2)
        expression_step4 = MathTex("2\\cdot b^{-3x -3}", "=", " \\tfrac2{b^3}\\cdot \\left(\\tfrac1{b^3}\\right)^{x}}", color=c1t, font_size=fs3)
        steps = VGroup(expression_step1, implication_1, expression_step2, implication_2, expression_step3, implication_3, expression_step4).arrange(DOWN, buff=.4)
        expression_step1.shift(expression_step1[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT), expression_step3.shift(expression_step3[1].get_x()*LEFT)
        implication_1[1].scale(.7), implication_2[1].scale(.7), implication_3[1].scale(.7)
        implication_1.shift((implication_1[0].get_x()+1)*LEFT), implication_2.shift((implication_2[0].get_x()+1)*LEFT), implication_3.shift((implication_3[0].get_x()+1)*LEFT)
        expression = MathTex("2\\cdot b^{-3x -3}", color=c1t, font_size=fs1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_3")+self.translate("Func_6_P.22.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("step_0")
            x,y,_ = expression_step1[0].get_center()+0.4*DOWN
            self.play(ReplacementTransform(expression, expression_step1[0]))
            self.play(CursorMoveTo(cursor, x,y), run_time=.4)

            self.wait_until_bookmark("step_1_in")
            x,y,_ = expression_step1[-1].get_center()+0.4*DOWN
            self.play(Write(expression_step1[1]), Write(expression_step1[2]), CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            self.play(Write(implication_1), CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("step_2_in")
            x,y,_ = expression_step2[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[0]), run_time=.4)

            self.wait_until_bookmark("step_2_1_in")
            x,y,_ = expression_step2[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[1]), Write(expression_step2[2]), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_2[1].get_center()+0.4*DOWN
            self.play(Write(implication_2), CursorMoveResize(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_3_in")
            x,y,_ = expression_step3[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step3[0]), run_time=.4)

            self.wait_until_bookmark("step_3_1_in")
            x,y,_ = expression_step3[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step3[1]), Write(expression_step3[2]), run_time=.4)

            self.wait_until_bookmark("clean_up")
            upshift = expression_step1.get_center()-expression_step3.get_center()
            self.add_shift_sound(0.5)
            self.play(VGroup(expression_step1, expression_step2, implication_1, implication_2).animate.shift(5*UP), expression_step3.animate.shift(upshift), run_time=.5)
            implication_3.shift(upshift), expression_step4.shift(upshift)

            self.wait_until_bookmark("implication_3_in")
            x,y,_ = implication_3[1].get_center()+0.4*DOWN
            self.play(Write(implication_3), CursorMoveResize(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_4_in")
            x,y,_ = expression_step4[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step4[0]), run_time=.4)

            self.wait_until_bookmark("step_4_1_in")
            x,y,_ = expression_step4[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step4[1]), Write(expression_step4[2]), run_time=.4)
            cursor.idle=True

        self.wait(4)

class Func_6_P_exp_rules_2_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        expression_step1 = MathTex("2\\cdot b^{-3x -3}", "=", " 2\\cdot b^{-3(x+1)}}", color=c1t, font_size=fs3)
        implication_1 = MathTex("\\Downarrow", "a^{(x\\cdot y)}=\\left(a^x\\right)^{^y}", color=BLUE_D, font_size=fs2) 
        expression_step2 = MathTex("2\\cdot b^{-3x -3}", "=", " 2\\cdot \\left(b^{-3}\\right)^{(x+1)}}", color=c1t, font_size=fs3)
        implication_2 = MathTex("\\Downarrow", "a^{(x+y)}=a^x\\cdot a^y", color=BLUE_D, font_size=fs2)
        expression_step3 = MathTex("2\\cdot b^{-3x -3}", "=", " 2b^{-3}\\cdot \\left(b^{-3}\\right)^{x}}", color=c1t, font_size=fs3)
        implication_3 = MathTex("\\Downarrow", "a^{-x}=\\tfrac1{a^x}", color=BLUE_D, font_size=fs2)
        expression_step4 = MathTex("2\\cdot b^{-3x -3}", "=", " \\tfrac2{b^3}\\cdot \\left(\\tfrac1{b^3}\\right)^{x}}", color=c1t, font_size=fs3)
        steps = VGroup(expression_step1, implication_1, expression_step2, implication_2, expression_step3, implication_3, expression_step4).arrange(DOWN, buff=.4)
        expression_step1.shift(expression_step1[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT), expression_step3.shift(expression_step3[1].get_x()*LEFT)
        implication_1[1].scale(.7), implication_2[1].scale(.7), implication_3[1].scale(.7)
        implication_1.shift((implication_1[0].get_x()+1)*LEFT), implication_2.shift((implication_2[0].get_x()+1)*LEFT), implication_3.shift((implication_3[0].get_x()+1)*LEFT)
        expression = MathTex("2\\cdot b^{-3x -3}", color=c1t, font_size=fs1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_3")+self.translate("Func_6_P.22.d_note.voiceover")+self.translate("Func_6_P.22.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("step_0")
            x,y,_ = expression_step1[0].get_center()+0.4*DOWN
            self.play(ReplacementTransform(expression, expression_step1[0]))
            self.play(CursorMoveTo(cursor, x,y), run_time=.4)

            self.wait_until_bookmark("step_1_in")
            x,y,_ = expression_step1[-1].get_center()+0.4*DOWN
            self.play(Write(expression_step1[1]), Write(expression_step1[2]), CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            self.play(Write(implication_1), CursorMoveTo(cursor, x, y), run_time=.5)

            self.wait_until_bookmark("step_2_in")
            x,y,_ = expression_step2[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[0]), run_time=.4)

            self.wait_until_bookmark("step_2_1_in")
            x,y,_ = expression_step2[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[1]), Write(expression_step2[2]), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_2[1].get_center()+0.4*DOWN
            self.play(Write(implication_2), CursorMoveResize(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_3_in")
            x,y,_ = expression_step3[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step3[0]), run_time=.4)

            self.wait_until_bookmark("step_3_1_in")
            x,y,_ = expression_step3[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step3[1]), Write(expression_step3[2]), run_time=.4)

            self.wait_until_bookmark("clean_up")
            upshift = expression_step1.get_center()-expression_step3.get_center()
            self.add_shift_sound(0.5)
            self.play(VGroup(expression_step1, expression_step2, implication_1, implication_2).animate.shift(5*UP), expression_step3.animate.shift(upshift), run_time=.5)
            implication_3.shift(upshift), expression_step4.shift(upshift)

            self.wait_until_bookmark("implication_3_in")
            x,y,_ = implication_3[1].get_center()+0.4*DOWN
            self.play(Write(implication_3), CursorMoveResize(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_4_in")
            x,y,_ = expression_step4[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step4[0]), run_time=.4)

            self.wait_until_bookmark("step_4_1_in")
            x,y,_ = expression_step4[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step4[1]), Write(expression_step4[2]), run_time=.4)
            cursor.idle=True

        self.wait(4)

#####################################
#####################################
class Func_6_P_exp_rules_2_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$a=2\\pi,b=\\frac{1}{\\pi^2}$", "$a=0,b=0$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_P.23.q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                answerOptionMatcher="$a=\key{a},b=\key{b}$",
                answerOptionsTypes={
                    "a": "number",
                    "b": "number"
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor()
        self.add(cursor)

        expression = MathTex("2\\cdot \\pi^{-2x +1}", color=c1t, font_size=fs1).set_y(2)
        downarrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).set_y(1)
        general_form = MathTex("a\\cdot b^x", color=GREEN_D, font_size=fs1).set_y(0)

        sloth = ImageMobject(assets_folder / "img" / "sloth_thinking.png").move_to([-5,-1.6,0]).scale(0.5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.23.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("expression_in")
            self.play(Write(expression), CursorUnderline(cursor, expression), run_time=.5)

            self.wait_until_bookmark("general_form_in")
            x,y,_ = general_form.get_center()+0.5*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(general_form), Write(downarrow), run_time=.5)

            self.wait_until_bookmark("q_in")
            self.add_shift_sound(0.5)
            self.play(sloth.animate.shift(RIGHT*5), CursorMoveResize(cursor, 0, -.4), run_time=0.5)
            cursor.idle=True
            self.wait(1)
            self.add_shift_sound(0.5)
            self.play(sloth.animate.shift(RIGHT*5), run_time=0.5)

        self.wait(4)


class Func_6_P_exp_rules_2_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule = MathTex("a^{x-y}=\\frac{a^x}{a^y}", color=BLUE_D, font_size=fs2)
        implication_1 = MathTex("\\Downarrow", "\\substack{a=\\pi\\\\x=1,\\\\y=2x}", color=BLUE_D, font_size=fs2) 
        expression_step1 = MathTex("2\\cdot \\pi^{-2x +1}", "=", "2\\cdot\\tfrac{\\pi^1}{\\pi^{2x}}", color=c1t, font_size=fs2)
        implication_2 = MathTex("\\Downarrow", "", color=BLUE_D, font_size=fs2)
        expression_step2 = MathTex("2\\cdot \\pi^{-2x +1}", "=", "2\\pi\\cdot\\tfrac{1}{\\pi^{2x}}", color=c1t, font_size=fs2)
        implication_3 = MathTex("\\Downarrow", "a^{x\\cdot y}=(a^x)^y", color=BLUE_D, font_size=fs2)
        expression_step3 = MathTex("2\\cdot \\pi^{-2x +1}", "=", "2\\pi\\cdot\\tfrac{1}{\\left(\\pi^2\\right)^x}", color=c1t, font_size=fs2)
        implication_4 = MathTex("\\Downarrow", "\\tfrac1{a^x}=\\left(\\tfrac1a\\right)^x", color=BLUE_D, font_size=fs2)
        expression_step4 = MathTex("2\\cdot \\pi^{-2x +1}", "=", "2\\pi\\cdot\\left(\\tfrac{1}{\\pi^2}\\right)^{x}", color=c1t, font_size=fs2)
        steps = VGroup(rule, implication_1, expression_step1, implication_2, expression_step2, implication_3, expression_step3, implication_4, expression_step4).arrange(DOWN, buff=.4).shift(DOWN)
        implication_1[1].scale(.7), implication_3[1].scale(.7)
        implication_1.shift(implication_1[0].get_x()*LEFT), implication_2.shift(implication_2[0].get_x()*LEFT), expression_step1.shift(expression_step1[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT)

        
        expression = MathTex("2\\cdot \\pi^{-2x +1}", color=c1t, font_size=fs1)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_5")+self.translate("Func_6_P.23.a.voiceover")
        ) as tracker:
 
            self.wait_until_bookmark("rule_in")
            self.play(Write(rule), CursorUnderline(cursor, rule), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveResize(cursor,x,y), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("step_1_transform")
            x,y,_ = expression_step1[0].get_center()+0.6*DOWN
            self.play(ReplacementTransform(expression, expression_step1[0]), CursorMoveTo(cursor, x,y), run_time=.4)

            self.wait_until_bookmark("step_1_in")
            x,y,_ = expression_step1[2].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step1[1]), Write(expression_step1[2]), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_2.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(implication_2), run_time=.5)

            self.wait_until_bookmark("step_2_1_in")
            x,y,_ = expression_step2[0].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[0]), run_time=.4)

            self.wait_until_bookmark("step_2_in")
            x,y,_ = expression_step2[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[1]), Write(expression_step2[2]), run_time=.4)

            self.wait_until_bookmark("clean_up")
            upshift = rule.get_center()-expression_step2.get_center()
            self.add_shift_sound(0.5)
            self.play(VGroup(rule, implication_1, expression_step1, implication_2,).animate.shift(5*UP), expression_step2.animate.shift(upshift), run_time=.5)
            expression_step3.shift(upshift), implication_3.shift(upshift), expression_step4.shift(upshift), implication_4.shift(upshift), 

            self.wait_until_bookmark("implication_3_in")
            x,y,_ = implication_3[1].get_center()+0.4*DOWN
            self.play(Write(implication_3), CursorMoveResize(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_3_1_in")
            x,y,_ = expression_step3[0].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step3[0]), run_time=.4)

            self.wait_until_bookmark("step_3_in")
            x,y,_ = expression_step3[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step3[1]), Write(expression_step3[2]), run_time=.4)

            self.wait_until_bookmark("implication_4_in")
            x,y,_ = implication_4[1].get_center()+0.4*DOWN
            self.play(Write(implication_4), CursorMoveResize(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_4_in")
            x,y,_ = expression_step4[0].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step4[0]), run_time=.4)

            self.wait_until_bookmark("step_4_1_in")
            x,y,_ = expression_step4[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step4[1]), Write(expression_step4[2]), run_time=.4)

        self.wait(4)

class Func_6_P_exp_rules_2_3_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cursor = AltCursor(idle=True, y=-1)
        self.add(cursor)

        rule = MathTex("a^{x-y}=\\frac{a^x}{a^y}", color=BLUE_D, font_size=fs2)
        implication_1 = MathTex("\\Downarrow", "\\substack{a=\\pi\\\\x=1,\\\\y=2x}", color=BLUE_D, font_size=fs2) 
        expression_step1 = MathTex("2\\cdot \\pi^{-2x +1}", "=", "2\\cdot\\tfrac{\\pi^1}{\\pi^{2x}}", color=c1t, font_size=fs2)
        implication_2 = MathTex("\\Downarrow", "", color=BLUE_D, font_size=fs2)
        expression_step2 = MathTex("2\\cdot \\pi^{-2x +1}", "=", "2\\pi\\cdot\\tfrac{1}{\\pi^{2x}}", color=c1t, font_size=fs2)
        implication_3 = MathTex("\\Downarrow", "a^{x\\cdot y}=(a^x)^y", color=BLUE_D, font_size=fs2)
        expression_step3 = MathTex("2\\cdot \\pi^{-2x +1}", "=", "2\\pi\\cdot\\tfrac{1}{\\left(\\pi^2\\right)^x}", color=c1t, font_size=fs2)
        implication_4 = MathTex("\\Downarrow", "\\tfrac1{a^x}=\\left(\\tfrac1a\\right)^x", color=BLUE_D, font_size=fs2)
        expression_step4 = MathTex("2\\cdot \\pi^{-2x +1}", "=", "2\\pi\\cdot\\left(\\tfrac{1}{\\pi^2}\\right)^{x}", color=c1t, font_size=fs2)
        steps = VGroup(rule, implication_1, expression_step1, implication_2, expression_step2, implication_3, expression_step3, implication_4, expression_step4).arrange(DOWN, buff=.4).shift(DOWN)
        implication_1[1].scale(.7), implication_3[1].scale(.7)
        implication_1.shift(implication_1[0].get_x()*LEFT), implication_2.shift(implication_2[0].get_x()*LEFT), expression_step1.shift(expression_step1[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT), expression_step2.shift(expression_step2[1].get_x()*LEFT)

        
        expression = MathTex("2\\cdot \\pi^{-2x +1}", color=c1t, font_size=fs1)
        self.add(expression)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_6_P.23.a.voiceover")
        ) as tracker:
 
            self.wait_until_bookmark("rule_in")
            self.play(Write(rule), CursorUnderline(cursor, rule), run_time=.5)

            self.wait_until_bookmark("implication_1_in")
            x,y,_ = implication_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveResize(cursor,x,y), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("step_1_transform")
            x,y,_ = expression_step1[0].get_center()+0.6*DOWN
            self.play(ReplacementTransform(expression, expression_step1[0]), CursorMoveTo(cursor, x,y), run_time=.4)

            self.wait_until_bookmark("step_1_in")
            x,y,_ = expression_step1[2].get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step1[1]), Write(expression_step1[2]), run_time=.4)

            self.wait_until_bookmark("implication_2_in")
            x,y,_ = implication_2.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(implication_2), run_time=.5)

            self.wait_until_bookmark("step_2_1_in")
            x,y,_ = expression_step2[0].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[0]), run_time=.4)

            self.wait_until_bookmark("step_2_in")
            x,y,_ = expression_step2[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step2[1]), Write(expression_step2[2]), run_time=.4)

            self.wait_until_bookmark("clean_up")
            upshift = rule.get_center()-expression_step2.get_center()
            self.add_shift_sound(0.5)
            self.play(VGroup(rule, implication_1, expression_step1, implication_2,).animate.shift(5*UP), expression_step2.animate.shift(upshift), run_time=.5)
            expression_step3.shift(upshift), implication_3.shift(upshift), expression_step4.shift(upshift), implication_4.shift(upshift), 

            self.wait_until_bookmark("implication_3_in")
            x,y,_ = implication_3[1].get_center()+0.4*DOWN
            self.play(Write(implication_3), CursorMoveResize(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_3_1_in")
            x,y,_ = expression_step3[0].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step3[0]), run_time=.4)

            self.wait_until_bookmark("step_3_in")
            x,y,_ = expression_step3[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step3[1]), Write(expression_step3[2]), run_time=.4)

            self.wait_until_bookmark("implication_4_in")
            x,y,_ = implication_4[1].get_center()+0.4*DOWN
            self.play(Write(implication_4), CursorMoveResize(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_4_in")
            x,y,_ = expression_step4[0].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step4[0]), run_time=.4)

            self.wait_until_bookmark("step_4_1_in")
            x,y,_ = expression_step4[2].get_center()+0.8*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(expression_step4[1]), Write(expression_step4[2]), run_time=.4)

        self.wait(4)
       

#####################################
#####################################


###############Exercises for Logarithm Chapter ##########################


##################################### Exercise Level: Easy (1)

##################################### THIS IS COPIED FROM LOGARITHM INSTRUCTION CHAPTER
#####################################
# class findLogExpressionQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

#     # Main method for constructing the animation
#     @abstractmethod
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         self.add_title(self.translate("Func_6_3.I2.title"))

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         x,y,_ = 0,0,0
#         cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         sixtwentyfive = MathTex(f"{self.result}", "=", f"{self.base}^?", color=c1t, font_size=fs2).shift(UP*0.4)
        
#         qmark = ImageMobject(assets_folder / "img" / "qmark.png")
#         qmark = qmark.scale(2/qmark.get_width()).move_to([-5, -1.4, 0])

#         # Action Sequence
#         with self.voiceover(
#                 text=self.evaluate_string(self.translate("Func_6_3.findLogExpressionQuestionScene.voiceover"))
#         ) as tracker:
            
#             self.wait_until_bookmark("result_1")
#             x,y,_ = sixtwentyfive[0].get_center()+0.4*DOWN
#             cursor.idle=False
#             self.play(CursorMoveTo(cursor,x,y), Write(sixtwentyfive[0]), run_time=0.3)
#             cursor.idle=True

#             self.wait_until_bookmark("result_2")
#             cursor.idle=False
#             x,y,_ = sixtwentyfive[2].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), Write(sixtwentyfive[1]), Write(sixtwentyfive[2]), run_time=0.3)
#             cursor.idle=True

#             self.wait_until_bookmark("qmark")
#             self.play(qmark.animate.shift(5*RIGHT), run_time=0.3)

#         self.wait(4)

# class findLogExpressionAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

#     # Main method for constructing the animation
#     @abstractmethod
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         self.add_title(self.translate("Func_6_3.I2.title"))

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         x,y,_ = 0,0,0
#         cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         sixtwentyfive = MathTex(f"{self.result}", "=", f"{self.base}^?", color=c1t, font_size=fs2).shift(UP*0.4)
#         sol_1 = MathTex(f"{self.base}^x", "=", f"{self.result}", color=c1t, font_size=fs2).next_to(sixtwentyfive, DOWN, buff=0.4)
#         sol_2 = MathTex("\\Rightarrow", f"x=\\log_{{{self.base}}}{({self.result})}", color=c1t, font_size=fs2).next_to(sol_1, DOWN, buff=0.2)
#         self.add(sixtwentyfive)


#         start_base = np.array([.4,-1.2,0])
#         start_log = np.array([1,-0.5,0])

#         base = Bubble(texts = [self.evaluate_string(self.translate("Func_6_3.Func_6_3.I2.title.base"))], center=np.array([.6,-2.6, 0]), start_point=start_base, loc="t1", width=3, height=0.8)
#         log = Bubble(texts = [self.evaluate_string(self.translate("Func_6_3.Func_6_3.I2.title.log"))], center=np.array([0,0.2, 0]), start_point=start_log, width=3, height=0.8)

#         # Action Sequence
#         with self.voiceover(
#                 text=self.evaluate_string(self.translate("Func_6_3.findLogExpressionAnswerScene.voiceover"))
#         ) as tracker:
            
#             self.wait_until_bookmark("sol_1")
#             x,y,_ = sol_1[0].get_center()+0.4*DOWN
#             cursor.idle=False
#             self.play(CursorMoveTo(cursor,x,y), Write(sol_1[0]), run_time=0.3)

#             self.wait_until_bookmark("sol_2")
#             x,y,_ = sol_1[2].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), Write(sol_1[1]), Write(sol_1[2]), run_time=0.3)
#             cursor.idle=True

#             self.wait_until_bookmark("sol_3")
#             cursor.idle=False
#             x,y,_ = sol_2[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), Write(sol_2[0]), Write(sol_2[1]), run_time=0.3)
#             cursor.idle=True

#             self.wait_until_bookmark("clean")
#             self.play(FadeOut(sol_1), FadeOut(sixtwentyfive), run_time=0.3)

#             self.wait_until_bookmark("bubble_1")
#             x,y,_ = start_base
#             cursor.idle=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(base.get_end())))
#             self.add_pencil_sound(1.5)
#             self.play(Create(base), Create(base.text))
#             cursor.idle=True

#             self.wait_until_bookmark("bubble_2")
#             x,y,_ = start_log
#             cursor.idle=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(log.get_end())))
#             self.add_pencil_sound(1.5)
#             self.play(Create(log), Create(log.text))
#             cursor.idle=True

#         self.wait(4)

# #####################################
# #####################################
# class Func_6_P_3_1_1_q(findLogExpressionQuestionScene):
        
#     def task_definition(self) -> SophiaTaskDefinition:
#         return SophiaTaskDefinition(
#             answerOptions = ["$x=\log_{256}{4}$", "$x=\log_4{256}$", "$x=\sqrt[4]{256}$", "$x=\sqrt[256]{4}$"],
#             correctAnswerIndex = 1,
#             questionText=self.translate("Func_6_3.P1.q.question-text")
#         )
    
#     # Main method for constructing the animation
#     def construct(self):

#         self.result = 256
#         self.base = 4
#         self.intro = self.translate("Func_6_3.P1.q.intro")

#         super().construct()


# class Func_6_P_3_1_1_a(findLogExpressionAnswerScene):

#         # Main method for constructing the animation
#         def construct(self):

#             self.result = 256
#             self.base = 4
#             self.intro = self.translate("Func_6_3.P1.a.intro")

#             super().construct()

# class Func_6_P_3_1_1_b(findLogExpressionAnswerScene):

#         # Main method for constructing the animation
#         def construct(self):

#             self.result = 256
#             self.base = 4
#             self.intro = self.translate("Func_6_3.P1.b.intro")

#             super().construct()

# class Func_6_P_3_1_1_c(findLogExpressionAnswerScene):

#         # Main method for constructing the animation
#         def construct(self):

#             self.result = 256
#             self.base = 4
#             self.intro = self.translate("Func_6_3.P1.a.intro")

#             super().construct()

# class Func_6_P_3_1_1_d(findLogExpressionAnswerScene):

#         # Main method for constructing the animation
#         def construct(self):

#             self.result = 256
#             self.base = 4
#             self.intro = self.translate("Func_6_3.P1.a.intro")

#             super().construct()


# #####################################
# #####################################
# class Func_6_P_3_1_2_q(findLogExpressionQuestionScene):
        
#     def task_definition(self) -> SophiaTaskDefinition:
#         return SophiaTaskDefinition(
#             answerOptions = ["$x=\log_\\frac12{\\frac{1}{16}}$", "$x=\log_{\\frac{1}{16}}{\\frac12}$", "$x=\sqrt[\\frac12]{\\frac{1}{16}}$", "$x=\sqrt[25\\frac{1}{16}]{\\frac12}$"],
#             correctAnswerIndex = 0,
#             questionText=self.translate("Func_6_3.P2.q.question-text")
#         )
    
#         # Main method for constructing the animation
#     def construct(self):

#         self.result = 1/16
#         self.base = 1/2
#         self.intro = self.translate("Func_6_3.P2.q.intro")

#         super().construct()


# class Func_6_P_3_1_2_a(findLogExpressionAnswerScene):

#         # Main method for constructing the animation
#         def construct(self):

#             self.result = 1/16
#             self.base = 1/2
#             self.intro = self.translate("Func_6_3.P2.a.intro")

#             super().construct()

# class Func_6_P_3_1_2_b(findLogExpressionAnswerScene):

#         # Main method for constructing the animation
#         def construct(self):

#             self.result = 1/16
#             self.base = 1/2
#             self.intro = self.translate("Func_6_3.P2.b.intro")

#             super().construct()

# class Func_6_P_3_1_2_c(findLogExpressionAnswerScene):

#         # Main method for constructing the animation
#         def construct(self):

#             self.result = 1/16
#             self.base = 1/2
#             self.intro = self.translate("Func_6_3.P2.b.intro")

#             super().construct()

# class Func_6_P_3_1_2_d(findLogExpressionAnswerScene):
        
#         # Main method for constructing the animation
#         def construct(self):

#             self.result = 256
#             self.base = 4
#             self.intro = self.translate("Func_6_3.P2.b.intro")

#             super().construct()


# #####################################
# #####################################
# class Func_6_P_3_1_3_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         balloon = ImageMobject(assets_folder / "img" / "hot_air_balloon.png")
#         balloon = balloon.scale(3/balloon.get_width()).set_y(-6.5)


#         per_minute = self.translate("general.per_minute")
#         increase = self.translate("words.increase")

#         bullets = VGroup(Tex("$\\bullet$ ", "t=0: $100$m", color=c1t, font_size=fs2), Tex("$\\bullet$ ", "$20\%$ ", increase, per_minute, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
# You're <bookmark mark="balloon_in"/>in a hot air baloon which at t equals 0 is at an altitude of <bookmark mark="altitude_in"/>100 meters. Every minute, the altitude of the baloon<bookmark mark="increase_in"/> increases by twenty percent. After how many minutes have you reached an altitude of 300 meters?
# """
#         ) as tracker:
            
#             self.wait_until_bookmark("balloon_in")
#             self.play(balloon.animate.shift(8*UP), run_time=3)
            
#             self.wait_until_bookmark("altitude_in")
#             self.play(Write(bullets[0]), run_time=.5)

#             self.wait_until_bookmark("increase_in")
#             self.play(Write(bullets[1]), run_time=.5)

#         self.wait(4)

# class Func_6_P_3_1_3_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         balloon = ImageMobject(assets_folder / "img" / "hot_air_balloon.png")
#         balloon = balloon.scale(3/balloon.get_width()).set_y(1.5)
#         self.add(balloon)


#         per_minute = self.translate("general.per_minute")
#         increase = self.translate("words.increase")

#         func_0 = MathTex("f(x)=", "a", "\\cdot ", "b", "^x", color=c1t, font_size=fs2)
#         func_1 = MathTex("f(x)=", "100", "\\cdot ", "b", "^x", color=c1t, font_size=fs2)
#         func_2 = MathTex("f(x)=", "100", "\\cdot ", "1.2", "^x", color=c1t, font_size=fs2)
#         funcs = VGroup(func_0, func_1, func_2).set_y(2)
#         ud = MathTex("\\Updownarrow", "f(x)=300", color=c1t, font_size=fs2).next_to(funcs, DOWN, buff=.6)
#         log = MathTex("x=\\log", "_{1.2}", "(3)", color=c1t, font_size=fs1).next_to(ud, DOWN, buff=.6)

#         bullets = VGroup(Tex("$\\bullet$ t=0: ", "$100$", "m", color=c1t, font_size=fs2), Tex("$\\bullet$ ", "$20\%$ ", increase, per_minute, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)
#         self.add(bullets)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
# We'll model the height of the baloon using an exponential function of the <bookmark mark="func_in"/>form f of x equals a times b to the power of x. ... Since <bookmark mark="a_1"/>at t equals zero, the height of the baloon is 100, we <bookmark mark="a_2"/> set a to 100. ... And since the height of the baloon increases<bookmark mark="b_1"/> by 20 percent every minute, we set <bookmark mark="b_2"/>b to 1.2. ...
# <bookmark mark="clean_up"/>Now we want the value of <bookmark mark="ud_in"/>x for which f of x equals 300. ... We can find <bookmark mark="log_x_in"/>x by using the logarithm. The base of the logarithm <bookmark mark="base_in"/> is equal to 1 point 2, because that's the base of the exponential function. ... And the argument of the logarithm is <bookmark mark="argument_in"/>equal to 3, because we want the height to triple. ... Therefore, the value of x is equal to the logarithm of 3, to the base of 1 point 2. 
# """
#         ) as tracker:
            
#             self.wait_until_bookmark("func_in")
#             self.play(balloon.animate.shift(6*UP), Write(func_0), run_time=3)
            
#             self.wait_until_bookmark("a_1")
#             self.play(bullets[0][1].animate.set_color(BLUE_D), run_time=.5)

#             self.wait_until_bookmark("a_2")
#             bc_1 = bullets[0][1].copy()
#             bc_1.generate_target().move_to(func_1[1])
#             self.play(MoveToTarget(bc_1), Unwrite(func_0[1]), ReplacementTransform(func_0[0], func_1[0]), ReplacementTransform(func_0[2], func_1[2]), ReplacementTransform(func_0[3], func_1[3]), ReplacementTransform(func_0[4], func_1[4]), run_time=1)

#             self.wait_until_bookmark("b_1")
#             self.play(bullets[1][1].animate.set_color(GREEN_D), run_time=.5)

#             self.wait_until_bookmark("b_2")
#             bc_2 = bullets[1][1].copy()
#             bc_1.generate_target().move_to(func_2[1])
#             self.play(MoveToTarget(bc_1), Unwrite(func_1[3]), ReplacementTransform(bc_2, func_2[3].set_color(GREEN_D)), ReplacementTransform(func_1[0], func_2[0]), ReplacementTransform(func_1[2], func_2[2]), ReplacementTransform(func_1[4], func_2[4]), run_time=1)

#             self.wait_until_bookmark("clean_up")
#             self.play(FadeOut(bullets), run_time=.5)

#             self.wait_until_bookmark("ud_in")
#             self.play(Write(ud), run_time=.5)

#             self.wait_until_bookmark("log_x_in")
#             self.play(Write(log[0]), run_time=.5)

#             self.wait_until_bookmark("base_in")
#             self.play(Write(log[1]), run_time=.5)

#             self.wait_until_bookmark("argument_in")
#             self.play(Write(log[2]), run_time=.5)

#         self.wait(4)


# #####################################
# #####################################
# class Func_6_P_3_1_4_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         design = ImageMobject(assets_folder / "img" / "designer_clothes.png")
#         design = design.scale(2.6/design.get_width()).move_to([-5,1.6,0])


#         year = self.translate("words.year")
#         decrease = self.translate("words.decrease")
#         value = self.translate("words.value")
#         budget = self.translate("words.budget")

#         bullets = VGroup(Tex("$\\bullet$ ", value, ": $200$", color=c1t, font_size=fs2), Tex("$\\bullet$ ", budget, ": $50\$$", color=c1t, font_size=fs2), Tex("$\\bullet$ ", decrease, ": $40$\%", year, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
# I want to buy a <bookmark mark="clothing_in"/>fancy piece of clothing which <bookmark mark="cost_in"/>costs 200 dollars. Sadly, I can't afford it, because I only have a <bookmark mark="budget_in"/>budget of 50 dollars. Luckily, the value of the clothing<bookmark mark="decrease_in"/> decreases by 40 percent every year. After how many years will I be able to afford the piece?
# """
#         ) as tracker:
            
#             self.wait_until_bookmark("clothing_in")
#             self.add_shift_sound(0.5)
#             self.play(design.animate.shift(5*RIGHT), run_time=.5)

#             self.wait_until_bookmark("cost_in")
#             self.play(Write(bullets[0]), run_time=.5)

#             self.wait_until_bookmark("budget_in")
#             self.play(Write(bullets[1]), run_time=.5)

#             self.wait_until_bookmark("decrease_in")
#             self.play(Write(bullets[2]), run_time=.5)

#         self.wait(4)

# class Func_6_P_3_1_4_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         design = ImageMobject(assets_folder / "img" / "designer_clothes.png")
#         design = design.scale(2.6/design.get_width()).move_to([0,1.6,0])
#         self.add(design)

#         year = self.translate("words.year")
#         decrease = self.translate("words.decrease")
#         value = self.translate("words.value")
#         budget = self.translate("words.budget")

#         func_0 = MathTex("f(x)=", "a", "\\cdot ", "b", "^x", color=c1t, font_size=fs2)
#         func_1 = MathTex("f(x)=", "200", "\\cdot ", "b", "^x", color=c1t, font_size=fs2)
#         func_2 = MathTex("f(x)=", "200", "\\cdot ", "0.6", "^x", color=c1t, font_size=fs2)
#         funcs = VGroup(func_0, func_1, func_2).set_y(2)
#         ud = MathTex("\\Updownarrow", "f(x)=50", color=c1t, font_size=fs2).next_to(funcs, DOWN, buff=.6)
#         log = MathTex("x=\\log", "_{0.6}", "(\\tfrac{1}{4})", color=c1t, font_size=fs1).next_to(ud, DOWN, buff=.6)

#         bullets = VGroup(Tex("$\\bullet$ ", value+": ", "$200$", "\$", color=c1t, font_size=fs2), Tex("$\\bullet$ ", budget, ": $50\$$", color=c1t, font_size=fs2), Tex("$\\bullet$ ", decrease, ": ", "$40$", "\%", year, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)
#         self.add(bullets)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
# We'll model the depreciation of the clothing's value using an exponential function of the <bookmark mark="func_in"/>form f of x equals "a" times b to the power of x. ... Since <bookmark mark="a_1"/>initially, the clothing is worth 200 dollars, we <bookmark mark="a_2"/> set a to 200. ... And since the value decreases<bookmark mark="b_1"/> by 40 percent every year, we set <bookmark mark="b_2"/>b to 0.6, because if fourty percent of the value dissappear, sixty percent remain. ...
# <bookmark mark="clean_up"/>Now we want to findthe value of <bookmark mark="ud_in"/>x for which f of x equals 50. ... We can find <bookmark mark="log_x_in"/>x by using the logarithm. The base of the logarithm <bookmark mark="base_in"/> is equal to 0.6, because that's the base of the exponential function. ... And the argument of the logarithm is <bookmark mark="argument_in"/>equal to one-fourth, because we want the value to reduce from 200 to 50, which is a quarter of its original value. ... Therefore, the value of x is equal to the logarithm of one-fourth, to the base of 0.6. 
# """
#         ) as tracker:
            
#             self.wait_until_bookmark("func_in")
#             self.play(design.animate.shift(5*LEFT), Write(func_0))
            
#             self.wait_until_bookmark("a_1")
#             self.play(bullets[0][2].animate.set_color(BLUE_D), run_time=.5)

#             self.wait_until_bookmark("a_2")
#             bc_1 = bullets[0][2].copy()
#             self.play(ReplacementTransform(bc_1, func_0[1]), ReplacementTransform(func_0[0], func_1[0]), ReplacementTransform(func_0[2], func_1[2]), ReplacementTransform(func_0[3], func_1[3]), ReplacementTransform(func_0[4], func_1[4]), run_time=1)

#             self.wait_until_bookmark("b_1")
#             self.play(bullets[2][3].animate.set_color(GREEN_D), run_time=.5)

#             self.wait_until_bookmark("b_2")
#             bc_2 = bullets[2][3].copy()
#             bc_1.generate_target().move_to(func_2[1])
#             self.play(MoveToTarget(bc_1), Unwrite(func_1[3]), ReplacementTransform(bc_2, func_2[3].set_color(GREEN_D)), ReplacementTransform(func_1[0], func_2[0]), ReplacementTransform(func_1[2], func_2[2]), ReplacementTransform(func_1[4], func_2[4]), run_time=1)

#             self.wait_until_bookmark("clean_up")
#             self.play(FadeOut(bullets), run_time=.5)

#             self.wait_until_bookmark("ud_in")
#             self.play(Write(ud), run_time=.5)

#             self.wait_until_bookmark("log_x_in")
#             self.play(Write(log[0]), run_time=.5)

#             self.wait_until_bookmark("base_in")
#             self.play(Write(log[1]), run_time=.5)

#             self.wait_until_bookmark("argument_in")
#             self.play(Write(log[2]), run_time=.5)

#         self.wait(4)

###############Exercises for Rules of Log Chapter ##########################
        
#####################################
#####################################
class Func_6_P_log_rules_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$-11$", "$0$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_6_P_log_rules.1.q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$\key{a}$",
                answerOptionsTypes={
                    "a": "number",
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        term = MathTex("\\log_2\\left({\\tfrac{1}{2048}}\\right)", color=c1t, font_size=fs1).set_y(2.6)

        beaver = ImageMobject(assets_folder / "img" / "beaver_abacus.png")
        beaver = beaver.scale(4/beaver.get_width()).set_x(-5)

        cursor = AltCursor(idle=True, y=-2)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.log_rules_1_q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("term_in")
            self.play(Write(term))
            
            self.wait_until_bookmark("beaver_in")
            self.add_shift_sound(0.5)
            self.play(beaver.animate.shift(5*RIGHT), run_time=.5)

        self.wait(4)


class Func_6_P_log_rules_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        term_1 = MathTex("\\log_2\\left({\\tfrac{1}{2048}}\\right)", color=c1t, font_size=fs1).set_y(2.6)
        step_1 = MathTex("\\Downarrow", "\\log_a\\left(\\tfrac{1}{b}\\right)=-\\log_a(b)", color=BLUE_D, font_size=fs2).next_to(term_1, DOWN, buff=.4)
        step_1[1].scale(.9)
        term_2 = MathTex("-\\log_2\\left({2048}\\right)", color=c1t, font_size=fs1).next_to(step_1, DOWN, buff=.4)
        step_2 = MathTex("\\Downarrow", color=BLUE_D, font_size=fs2).next_to(term_2, DOWN, buff=.4).set_x(step_1[0].get_x())
        powers = VGroup(*[MathTex(f"2^{{{idx}}}={2**idx}", color=BLUE_D, font_size=fs2).scale(.9).next_to(step_2, RIGHT) for idx in range(12)])
        term_3 = MathTex("\\log_2\\left({\\tfrac{1}{2048}}\\right)=-11", color=c1t, font_size=fs1).next_to(step_2, DOWN, buff=.4).set_x(0)

        beaver = ImageMobject(assets_folder / "img" / "beaver_abacus.png")
        beaver = beaver.scale(4/beaver.get_width())

        cursor = AltCursor(idle=True, y=-2)
        self.add(cursor, term_1, beaver)


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_1")+self.translate("Func_6_P.log_rules_1_a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("step_1_in")
            self.add_shift_sound(0.5)
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(beaver.animate.shift(5*RIGHT), CursorMoveTo(cursor,x,y), Write(step_1), run_time=.5)

            self.wait_until_bookmark("term_2")
            x,y,_ = term_2.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(term_2), run_time=.5)

            self.wait_until_bookmark("step_2")
            x,y,_ = step_2.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(step_2), run_time=.5)

            self.wait_until_bookmark("power_0")
            x,y,_ = powers[0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(powers[0]), run_time=.5)

            self.wait_until_bookmark("power_1")
            self.play(ReplacementTransform(powers[0], powers[1]))
    
            for idx in range(2,12):
                self.play(ReplacementTransform(powers[idx-1], powers[idx]), run_time=.2)
                self.wait(.3)

            self.wait_until_bookmark("sol")
            x,y,_ = term_3.get_center()+0.5*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(term_3), run_time=.5)
            cursor.idle=True

        self.wait(4)

class Func_6_P_log_rules_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        term_1 = MathTex("\\log_2\\left({\\tfrac{1}{2048}}\\right)", color=c1t, font_size=fs1).set_y(2.6)
        step_1 = MathTex("\\Downarrow", "\\log_a\\left(\\tfrac{1}{b}\\right)=-\\log_a(b)", color=BLUE_D, font_size=fs2).next_to(term_1, DOWN, buff=.4)
        step_1[1].scale(.9)
        term_2 = MathTex("-\\log_2\\left({2048}\\right)", color=c1t, font_size=fs1).next_to(step_1, DOWN, buff=.4)
        step_2 = MathTex("\\Downarrow", color=BLUE_D, font_size=fs2).next_to(term_2, DOWN, buff=.4).set_x(step_1[0].get_x())
        powers = VGroup(*[MathTex(f"2^{{{idx}}}={2**idx}", color=BLUE_D, font_size=fs2).scale(.9).next_to(step_2, RIGHT) for idx in range(12)])
        term_3 = MathTex("\\log_2\\left({\\tfrac{1}{2048}}\\right)=-11", color=c1t, font_size=fs1).next_to(step_2, DOWN, buff=.4).set_x(0)

        beaver = ImageMobject(assets_folder / "img" / "beaver_abacus.png")
        beaver = beaver.scale(4/beaver.get_width())

        cursor = AltCursor(idle=True, y=-2)
        self.add(cursor, term_1, beaver)


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_6_P.log_rules_1_a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("step_1_in")
            self.add_shift_sound(0.5)
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(beaver.animate.shift(5*RIGHT), CursorMoveTo(cursor,x,y), Write(step_1), run_time=.5)

            self.wait_until_bookmark("term_2")
            x,y,_ = term_2.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(term_2), run_time=.5)

            self.wait_until_bookmark("step_2")
            x,y,_ = step_2.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(step_2), run_time=.5)

            self.wait_until_bookmark("power_0")
            x,y,_ = powers[0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(powers[0]), run_time=.5)

            self.wait_until_bookmark("power_1")
            self.play(ReplacementTransform(powers[0], powers[1]))
    
            for idx in range(2,12):
                self.play(ReplacementTransform(powers[idx-1], powers[idx]), run_time=.2)
                self.wait(.3)

            self.wait_until_bookmark("sol")
            x,y,_ = term_3.get_center()+0.5*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(term_3), run_time=.5)
            cursor.idle=True

        self.wait(4)

#####################################
#####################################
class Func_6_P_log_rules_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$1$", "$0$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_6_P_log_rules.2.q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$\key{a}$",
                answerOptionsTypes={
                    "a": "number",
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        term_1 = MathTex("\\log_5\\left(60a\\right)-\\log_5\\left(12a\\right)", color=c1t, font_size=fs2).set_y(2.6)

        seagull = ImageMobject(assets_folder / "img" / "seagull_writing.png")
        seagull = seagull.scale(4/seagull.get_width()).set_x(-5)

        cursor = AltCursor(idle=True, y=-2)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.log_rules_2_q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("term_in")
            self.play(Write(term_1))
            self.play(CursorUnderline(cursor, term_1))
            
            self.wait_until_bookmark("seagull_in")
            self.add_shift_sound(0.5)
            self.play(seagull.animate.shift(5*RIGHT), CursorMoveResize(cursor,0,-2), run_time=.5)

        self.wait(4)


class Func_6_P_log_rules_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        term_1 = MathTex("\\log_5\\left(60a\\right)-\\log_5\\left(12a\\right)", color=c1t, font_size=fs2).set_y(2.6)
        step_1 = MathTex("\\Downarrow", "\\log_a(b)-\\log_a(c)=\\log_a\\left(\\tfrac{b}{c}\\right)", color=BLUE_D, font_size=fs3).next_to(term_1, DOWN, buff=.4)
        step_1[1].scale(.9)
        term_2 = MathTex("\\log_5\\left(\\tfrac{60a}{12a}\\right)", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.4)
        step_2 = MathTex("\\Downarrow", color=BLUE_D, font_size=fs3).next_to(term_2, DOWN, buff=.4)
        term_3 = MathTex("\\log_5\\left(5\\right)=1", color=c1t, font_size=fs2).next_to(step_2, DOWN, buff=.4)

        seagull = ImageMobject(assets_folder / "img" / "seagull_writing.png")
        seagull = seagull.scale(4/seagull.get_width())

        cursor = AltCursor(idle=True, y=-2)
        self.add(cursor, seagull, term_1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_6")+self.translate("Func_6_P.log_rules_2_a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("step_1")
            self.add_shift_sound(0.5)
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(seagull.animate.shift(5*RIGHT), CursorMoveTo(cursor,x,y), Write(step_1), run_time=.5)

            self.wait_until_bookmark("term_2")
            x,y,_ = term_2.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(term_2), run_time=.5)

            self.wait_until_bookmark("step_2")
            x,y,_ = step_2.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(step_2), run_time=.5)

            self.wait_until_bookmark("solution")
            x,y,_ = term_3.get_center()+0.5*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(term_3), run_time=.5)
            cursor.idle=True
            

        self.wait(4)

class Func_6_P_log_rules_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        term_1 = MathTex("\\log_5\\left(60a\\right)-\\log_5\\left(12a\\right)", color=c1t, font_size=fs2).set_y(2.6)
        step_1 = MathTex("\\Downarrow", "\\log_a(b)-\\log_a(c)=\\log_a\\left(\\tfrac{b}{c}\\right)", color=BLUE_D, font_size=fs3).next_to(term_1, DOWN, buff=.4)
        step_1[1].scale(.9)
        term_2 = MathTex("\\log_5\\left(\\tfrac{60a}{12a}\\right)", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.4)
        step_2 = MathTex("\\Downarrow", color=BLUE_D, font_size=fs3).next_to(term_2, DOWN, buff=.4)
        term_3 = MathTex("\\log_5\\left(5\\right)=1", color=c1t, font_size=fs2).next_to(step_2, DOWN, buff=.4)

        seagull = ImageMobject(assets_folder / "img" / "seagull_writing.png")
        seagull = seagull.scale(4/seagull.get_width())

        cursor = AltCursor(idle=True, y=-2)
        self.add(cursor, seagull, term_1)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6")+self.translate("Func_6_P.log_rules_2_a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("step_1")
            self.add_shift_sound(0.5)
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(seagull.animate.shift(5*RIGHT), CursorMoveTo(cursor,x,y), Write(step_1), run_time=.5)

            self.wait_until_bookmark("term_2")
            x,y,_ = term_2.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(term_2), run_time=.5)

            self.wait_until_bookmark("step_2")
            x,y,_ = step_2.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(step_2), run_time=.5)

            self.wait_until_bookmark("solution")
            x,y,_ = term_3.get_center()+0.5*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(term_3), run_time=.5)
            cursor.idle=True
            

        self.wait(4)

###############Exercises for LN Chapter ##########################
        
#####################################
#####################################
# TODO: Add translation (C)
class Func_6_P_ln_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$125$", "$0$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_6_P.ln_1_q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$\key{a}$",
                answerOptionsTypes={
                    "a": "number",
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        term = MathTex("e^{-3\\ln(0.2)}", color=c1t, font_size=fs1).set_y(2.6)

        albatross = ImageMobject(assets_folder / "img" / "albatross_calculating.png")
        albatross = albatross.scale(4/albatross.get_width()).set_x(-5)

        cursor = AltCursor(idle=True, y=-2)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.ln_1_q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("term_in")
            self.play(Write(term))
            
            self.wait_until_bookmark("albatross_in")
            self.add_shift_sound(0.5)
            self.play(albatross.animate.shift(5*RIGHT), run_time=.5)

        self.wait(4)


class Func_6_P_ln_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        term = MathTex("e^{-3\\ln(0.2)}", color=c1t, font_size=fs1).set_y(2.6)
        self.add(term)

        albatross = ImageMobject(assets_folder / "img" / "albatross_calculating.png")
        albatross = albatross.scale(4/albatross.get_width())
        self.add(albatross)

        term_1 = MathTex("e^{\\ln(0.2)\\cdot (-3)}", color=c1t, font_size=fs1).move_to(term)
        step_1 = MathTex("\\Downarrow", "e^{\\ln(a)}=a", color=BLUE_D, font_size=fs2).next_to(term_1, DOWN, buff=.4)
        step_1[1].scale(.9)
        term_2 = MathTex("0.2^{-3}}", color=c1t, font_size=fs1).next_to(step_1, DOWN, buff=.4)
        step_2 = MathTex("\\Downarrow", color=BLUE_D, font_size=fs2).next_to(term_2, DOWN, buff=.4)
        term_3 = MathTex("125", color=c1t, font_size=fs1).next_to(step_2, DOWN, buff=.4)

        term_fin = MathTex("e^{-3\\ln(0.2)}", color=c1t, font_size=fs1).move_to(step_1)
        eq_fin = MathTex("=", color=BLUE_D, font_size=fs2).move_to(term_2)

        cursor = AltCursor(idle=True, y=-2)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_1")+self.translate("Func_6_P.ln_1_a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("term_1")
            self.play(ReplacementTransform(term, term_1))

            self.wait_until_bookmark("step_1")
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.add_shift_sound(.5)
            self.play(Write(step_1), albatross.animate.shift(5*RIGHT), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_2")
            x,y,_ = term_2.get_center()+0.6*DOWN
            self.play(Write(term_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_3")
            x,y,_ = term_3.get_center()+0.4*DOWN
            self.play(Write(term_3), Write(step_2), CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.idle=True

            self.wait_until_bookmark("sol_1")
            self.play(ReplacementTransform(term_1, term_fin), Unwrite(step_1), Unwrite(step_2), Unwrite(term_2), run_time=.5)

            self.wait_until_bookmark("sol_2")
            term_3.generate_target().move_to(step_2)
            self.add_shift_sound(0.5)
            self.play(MoveToTarget(term_3), Write(eq_fin), run_time=.5)
            solution_rectangle = SurroundingRectangle(VGroup(term_fin, eq_fin, term_3), buff=.2, corner_radius=.1, color=PURE_BLUE)
            x,y,_ = solution_rectangle.get_start()
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(solution_rectangle.get_end())))
            cursor.idle=True
            self.add_pencil_sound(1.5)
            self.play(Create(solution_rectangle))

        self.wait(4)

class Func_6_P_ln_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        term = MathTex("e^{-3\\ln(0.2)}", color=c1t, font_size=fs1).set_y(2.6)
        self.add(term)

        albatross = ImageMobject(assets_folder / "img" / "albatross_calculating.png")
        albatross = albatross.scale(4/albatross.get_width())
        self.add(albatross)

        term_1 = MathTex("e^{\\ln(0.2)\\cdot (-3)}", color=c1t, font_size=fs1).move_to(term)
        step_1 = MathTex("\\Downarrow", "e^{\\ln(a)}=a", color=BLUE_D, font_size=fs2).next_to(term_1, DOWN, buff=.4)
        step_1[1].scale(.9)
        term_2 = MathTex("0.2^{-3}}", color=c1t, font_size=fs1).next_to(step_1, DOWN, buff=.4)
        step_2 = MathTex("\\Downarrow", color=BLUE_D, font_size=fs2).next_to(term_2, DOWN, buff=.4)
        term_3 = MathTex("125", color=c1t, font_size=fs1).next_to(step_2, DOWN, buff=.4)

        term_fin = MathTex("e^{-3\\ln(0.2)}", color=c1t, font_size=fs1).move_to(step_1)
        eq_fin = MathTex("=", color=BLUE_D, font_size=fs2).move_to(term_2)

        cursor = AltCursor(idle=True, y=-2)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_1")+self.translate("Func_6_P.ln_1_a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("term_1")
            self.play(ReplacementTransform(term, term_1))

            self.wait_until_bookmark("step_1")
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.add_shift_sound(.5)
            self.play(Write(step_1), albatross.animate.shift(5*RIGHT), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_2")
            x,y,_ = term_2.get_center()+0.6*DOWN
            self.play(Write(term_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_3")
            x,y,_ = term_3.get_center()+0.4*DOWN
            self.play(Write(term_3), Write(step_2), CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.idle=True

            self.wait_until_bookmark("sol_1")
            self.play(ReplacementTransform(term_1, term_fin), Unwrite(step_1), Unwrite(step_2), Unwrite(term_2), run_time=.5)

            self.wait_until_bookmark("sol_2")
            term_3.generate_target().move_to(step_2)
            self.add_shift_sound(0.5)
            self.play(MoveToTarget(term_3), Write(eq_fin), run_time=.5)
            solution_rectangle = SurroundingRectangle(VGroup(term_fin, eq_fin, term_3), buff=.2, corner_radius=.1, color=PURE_BLUE)
            x,y,_ = solution_rectangle.get_start()
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(solution_rectangle.get_end())))
            cursor.idle=True
            self.add_pencil_sound(1.5)
            self.play(Create(solution_rectangle))

        self.wait(4)


###############Exercises for modeling with log terms Chapter ##########################
        
#####################################
#####################################
class Func_6_P_model_log_terms_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\log_{1.05}(2)$", "$0$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_6_P.model_log_terms_1_q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$\key{a}$",
                answerOptionsTypes={
                    "a": "number",
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        interest = self.translate("words.interest")
        increase = self.translate("words.increase")
        bank = ImageMobject(assets_folder / "img" / "bank.png")
        bank = bank.scale(3/bank.get_width()).move_to([-5,1.4,0])

        cursor = AltCursor(idle=True)
        self.add(cursor)


        bullets = VGroup(Tex("$\\bullet$ ", " $5\%$ ", interest, color=c1t, font_size=fs2), Tex("$\\bullet$ ", "$2\\times$ ", increase, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(bank, DOWN, buff=.4).set_x(0)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.model_log_terms_1_q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("bank")
            self.add_shift_sound(.5)
            self.play(bank.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("interest_in")
            x,y,_ = bullets[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(bullets[0]), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("increase_in")
            x,y,_ = bullets[1].get_center()+0.4*DOWN
            self.play(Write(bullets[1]), CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.idle=True

        self.wait(4)


class Func_6_P_model_log_terms_1_a(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        interest = self.translate("words.interest")
        increase = self.translate("words.increase")
        bank = ImageMobject(assets_folder / "img" / "bank.png")
        bank = bank.scale(3/bank.get_width()).set_y(1.4)

        cursor = AltCursor(idle=True)
        self.add(cursor)

        bullets = VGroup(Tex("$\\bullet$ ", " $5\%$ ", interest, color=c1t, font_size=fs2), Tex("$\\bullet$ ", "$2\\times$ ", increase, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(bank, DOWN, buff=.4).set_x(0)
        
        func = MathTex("f(x)=", "b", "^x", color=c1t, font_size=fs2).set_y(2.4)
        func_b = MathTex("f(x)=", "1.05", "^x", color=c1t, font_size=fs2).move_to(func)
        func_2 = MathTex("1.05", "^x", "=2", color=c1t, font_size=fs2).move_to(func)
        step_1 = MathTex("\\Downarrow", "\\log_{1.05}", "\\left(\\Box\\right)", color=BLUE_D, font_size=fs3).next_to(func, DOWN, buff=.4)
        func_log = MathTex("\\log_{1.05}\\left(1.05", "^x\\right)", "=\\log_{1.05}(2)", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.4)
        step_2 = MathTex("\\Downarrow", "\\log_{a}\\left(a^b\\right)=b", color=BLUE_D, font_size=fs3).next_to(func_log, DOWN, buff=.4)
        solution = MathTex("x", "=\\log_{1.05}(2)", color=c1t, font_size=fs2).next_to(step_2, DOWN, buff=.4)
        sol_calculated = MathTex("x", "=\\log_{1.05}(2)", "\\approx14.21", color=c1t, font_size=fs2).move_to(solution)
        self.add(bank, bullets)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_2")+self.translate("Func_6_P.model_log_terms_1_a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.add_shift_sound(0.5)
            x,y,_ = func.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(bank.animate.shift(5*RIGHT), Write(func), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("highlight_interest")
            x,y,_ = bullets[0][1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), bullets[1].animate.shift(0.4*DOWN), run_time=.5)

            self.wait_until_bookmark("set_b")
            bc_1 = bullets[0][1].copy()
            x,y,_ = func_b[1].get_center()+0.4*DOWN
            self.play(ReplacementTransform(func[0], func_b[0]), ReplacementTransform(bc_1, func_b[1]), Unwrite(func[1]), ReplacementTransform(func[2], func_b[2]), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("transform")
            bc_2 = bullets[1][1].copy()
            x,y,_ = func_2[-1].get_center()+0.4*DOWN
            self.play(ReplacementTransform(func_b[0], func_2[0]), ReplacementTransform(func_b[1], func_2[1]), Unwrite(func_b[2]), ReplacementTransform(bc_2, func_2[-1]), run_time=.5)

            self.wait_until_bookmark("step_1")
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            self.play(Write(step_1), Unwrite(bullets), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("func_log")
            x,y,_ = func_log.get_center()+0.4*DOWN
            self.play(Write(func_log), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_2")
            x,y,_ = step_2[1].get_center()+0.4*DOWN
            self.play(Write(step_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("solution")
            x,y,_ = solution[1].get_center()+0.4*DOWN
            self.play(Write(solution), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("approx")
            x,y,_ = sol_calculated[-1].get_center()+0.4*DOWN    
            self.play(ReplacementTransform(solution, sol_calculated), CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.idle=True

        self.wait(4)

class Func_6_P_model_log_terms_1_b(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        interest = self.translate("words.interest")
        increase = self.translate("words.increase")
        bank = ImageMobject(assets_folder / "img" / "bank.png")
        bank = bank.scale(3/bank.get_width()).set_y(1.4)

        cursor = AltCursor(idle=True)
        self.add(cursor)

        bullets = VGroup(Tex("$\\bullet$ ", " $5\%$ ", interest, color=c1t, font_size=fs2), Tex("$\\bullet$ ", "$2\\times$ ", increase, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(bank, DOWN, buff=.4).set_x(0)
        
        func = MathTex("f(x)=", "b", "^x", color=c1t, font_size=fs2).set_y(2.4)
        func_b = MathTex("f(x)=", "1.05", "^x", color=c1t, font_size=fs2).move_to(func)
        func_2 = MathTex("1.05", "^x", "=2", color=c1t, font_size=fs2).move_to(func)
        step_1 = MathTex("\\Downarrow", "\\log_{1.05}", "\\left(\\Box\\right)", color=BLUE_D, font_size=fs3).next_to(func, DOWN, buff=.4)
        func_log = MathTex("\\log_{1.05}\\left(1.05", "^x\\right)", "=\\log_{1.05}(2)", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.4)
        step_2 = MathTex("\\Downarrow", "\\log_{a}\\left(a^b\\right)=b", color=BLUE_D, font_size=fs3).next_to(func_log, DOWN, buff=.4)
        solution = MathTex("x", "=\\log_{1.05}(2)", color=c1t, font_size=fs2).next_to(step_2, DOWN, buff=.4)
        sol_calculated = MathTex("x", "=\\log_{1.05}(2)", "\\approx14.21", color=c1t, font_size=fs2).move_to(solution)
        self.add(bank, bullets)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_2")+self.translate("Func_6_P.model_log_terms_1_a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.add_shift_sound(0.5)
            x,y,_ = func.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(bank.animate.shift(5*RIGHT), Write(func), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("highlight_interest")
            x,y,_ = bullets[0][1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), bullets[1].animate.shift(0.4*DOWN), run_time=.5)

            self.wait_until_bookmark("set_b")
            bc_1 = bullets[0][1].copy()
            x,y,_ = func_b[1].get_center()+0.4*DOWN
            self.play(ReplacementTransform(func[0], func_b[0]), ReplacementTransform(bc_1, func_b[1]), Unwrite(func[1]), ReplacementTransform(func[2], func_b[2]), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("transform")
            bc_2 = bullets[1][1].copy()
            x,y,_ = func_2[-1].get_center()+0.4*DOWN
            self.play(ReplacementTransform(func_b[0], func_2[0]), ReplacementTransform(func_b[1], func_2[1]), Unwrite(func_b[2]), ReplacementTransform(bc_2, func_2[-1]), run_time=.5)

            self.wait_until_bookmark("step_1")
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            self.play(Write(step_1), Unwrite(bullets), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("func_log")
            x,y,_ = func_log.get_center()+0.4*DOWN
            self.play(Write(func_log), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_2")
            x,y,_ = step_2[1].get_center()+0.4*DOWN
            self.play(Write(step_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("solution")
            x,y,_ = solution[1].get_center()+0.4*DOWN
            self.play(Write(solution), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("approx")
            x,y,_ = sol_calculated[-1].get_center()+0.4*DOWN    
            self.play(ReplacementTransform(solution, sol_calculated), CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.idle=True

        self.wait(4)

#####################################
#####################################
class Func_6_P_model_log_terms_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\log_{0.9}(0.25)$", "$0$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_6_P.model_log_terms_2_q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$\key{a}$",
                answerOptionsTypes={
                    "a": "number",
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        loan_text = self.translate("words.loan")
        repayment = self.translate("words.repayment")
        year = self.translate("words.year")

        loan = ImageMobject(assets_folder / "img" / "loan.png")
        loan = loan.scale(3/loan.get_width()).move_to([-5,1.4,0])

        cursor = AltCursor(idle=True)
        self.add(cursor)


        bullets = VGroup(Tex("$\\bullet$ "," $200\$$ ", loan_text, color=c1t, font_size=fs2), Tex("$\\bullet$ "," $10\%$ ", repayment, "/ ", year, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(loan, DOWN, buff=.6).set_x(0).scale(0.9)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.model_log_terms_2_q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("loan")
            self.add_shift_sound(.5)
            self.play(loan.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("loan_in")
            x,y,_ = bullets[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(Write(bullets[0]), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("payback_in")
            x,y,_ = bullets[1].get_center()+0.4*DOWN
            self.play(Write(bullets[1]), CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.idle=True

        self.wait(4)


class Func_6_P_model_log_terms_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        loan_text = self.translate("words.loan")
        repayment = self.translate("words.repayment")
        year = self.translate("words.year")

        loan = ImageMobject(assets_folder / "img" / "loan.png")
        loan = loan.scale(3/loan.get_width()).set_y(1.4)

        cursor = AltCursor(idle=True)
        self.add(cursor)

        bullets = VGroup(Tex("$\\bullet$ "," $200\$$ ", loan_text, color=c1t, font_size=fs2), Tex("$\\bullet$ "," $10\%$ ", repayment, "/ ", year, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(loan, DOWN, buff=.6).set_x(0).scale(0.9)
        
        func = MathTex("f(x)=a\\cdot", "b", "^x", color=c1t, font_size=fs2).set_y(2.4)
        func_b = MathTex("f(x)=200\\cdot", "0.9", "^x", color=c1t, font_size=fs2).move_to(func)
        func_2 = MathTex("200\\cdot 0.9", "^x", "=50", color=c1t, font_size=fs2).move_to(func)
        func_3 = MathTex("0.9", "^x", "=0.25", color=c1t, font_size=fs2).move_to(func)
        step_1 = MathTex("\\Downarrow", "\\log_{0.9}", "\\left(\\Box\\right)", color=BLUE_D, font_size=fs3).next_to(func, DOWN, buff=.4)
        func_log = MathTex("\\log_{0.9}\\left(0.9", "^x\\right)", "=\\log_{0.9}(0.25)", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.4)
        step_2 = MathTex("\\Downarrow", "\\log_{a}\\left(a^b\\right)=b", color=BLUE_D, font_size=fs3).next_to(func_log, DOWN, buff=.4)
        solution = MathTex("x", "=\\log_{0.9}(0.25)", color=c1t, font_size=fs2).next_to(step_2, DOWN, buff=.4)
        sol_calculated = MathTex("x", "=\\log_{0.9}(0.25)", "\\approx13.16", color=c1t, font_size=fs2).move_to(solution)
        self.add(loan, bullets)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_4")+self.translate("Func_6_P.model_log_terms_2_a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.add_shift_sound(0.5)
            x,y,_ = func.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(loan.animate.shift(5*RIGHT), Write(func), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("highlight_repay")
            x,y,_ = bullets[1][1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("set_b")
            bc_1 = bullets[1][1].copy()
            x,y,_ = func_b[1].get_center()+0.4*DOWN
            self.play(ReplacementTransform(func[0], func_b[0]), ReplacementTransform(bc_1, func_b[1]), Unwrite(func[1]), ReplacementTransform(func[2], func_b[2]), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("transform")
            bc_2 = bullets[0][1].copy()
            x,y,_ = func_2[-1].get_center()+0.4*DOWN
            self.play(ReplacementTransform(func_b[0], func_2[0]), ReplacementTransform(func_b[1], func_2[1]), Unwrite(func_b[2]), ReplacementTransform(bc_2, func_2[-1]), run_time=.5)

            self.wait_until_bookmark("transform_2")
            self.play(TransformMatchingTex(func_2, func_3))

            self.wait_until_bookmark("step_1")
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            self.play(Write(step_1), Unwrite(bullets), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("func_log")
            x,y,_ = func_log.get_center()+0.4*DOWN
            self.play(Write(func_log), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_2")
            x,y,_ = step_2[1].get_center()+0.4*DOWN
            self.play(Write(step_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("solution")
            x,y,_ = solution[1].get_center()+0.4*DOWN
            self.play(Write(solution), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("approx")
            x,y,_ = sol_calculated[-1].get_center()+0.4*DOWN    
            self.play(ReplacementTransform(solution, sol_calculated), CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.idle=True

        self.wait(4)

class Func_6_P_model_log_terms_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        loan_text = self.translate("words.loan")
        repayment = self.translate("words.repayment")
        year = self.translate("words.year")

        loan = ImageMobject(assets_folder / "img" / "loan.png")
        loan = loan.scale(3/loan.get_width()).set_y(1.4)

        cursor = AltCursor(idle=True)
        self.add(cursor)

        bullets = VGroup(Tex("$\\bullet$ "," $200\$$ ", loan_text, color=c1t, font_size=fs2), Tex("$\\bullet$ "," $10\%$ ", repayment, "/ ", year, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(loan, DOWN, buff=.6).set_x(0).scale(0.9)
        
        func = MathTex("f(x)=a\\cdot", "b", "^x", color=c1t, font_size=fs2).set_y(2.4)
        func_b = MathTex("f(x)=200\\cdot", "0.9", "^x", color=c1t, font_size=fs2).move_to(func)
        func_2 = MathTex("200\\cdot 0.9", "^x", "=50", color=c1t, font_size=fs2).move_to(func)
        func_3 = MathTex("0.9", "^x", "=0.25", color=c1t, font_size=fs2).move_to(func)
        step_1 = MathTex("\\Downarrow", "\\log_{0.9}", "\\left(\\Box\\right)", color=BLUE_D, font_size=fs3).next_to(func, DOWN, buff=.4)
        func_log = MathTex("\\log_{0.9}\\left(0.9", "^x\\right)", "=\\log_{0.9}(0.25)", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.4)
        step_2 = MathTex("\\Downarrow", "\\log_{a}\\left(a^b\\right)=b", color=BLUE_D, font_size=fs3).next_to(func_log, DOWN, buff=.4)
        solution = MathTex("x", "=\\log_{0.9}(0.25)", color=c1t, font_size=fs2).next_to(step_2, DOWN, buff=.4)
        sol_calculated = MathTex("x", "=\\log_{0.9}(0.25)", "\\approx13.16", color=c1t, font_size=fs2).move_to(solution)
        self.add(loan, bullets)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_4")+self.translate("Func_6_P.model_log_terms_2_a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.add_shift_sound(0.5)
            x,y,_ = func.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(loan.animate.shift(5*RIGHT), Write(func), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("highlight_repay")
            x,y,_ = bullets[1][1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("set_b")
            bc_1 = bullets[1][1].copy()
            x,y,_ = func_b[1].get_center()+0.4*DOWN
            self.play(ReplacementTransform(func[0], func_b[0]), ReplacementTransform(bc_1, func_b[1]), Unwrite(func[1]), ReplacementTransform(func[2], func_b[2]), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("transform")
            bc_2 = bullets[0][1].copy()
            x,y,_ = func_2[-1].get_center()+0.4*DOWN
            self.play(ReplacementTransform(func_b[0], func_2[0]), ReplacementTransform(func_b[1], func_2[1]), Unwrite(func_b[2]), ReplacementTransform(bc_2, func_2[-1]), run_time=.5)

            self.wait_until_bookmark("transform_2")
            self.play(TransformMatchingTex(func_2, func_3))

            self.wait_until_bookmark("step_1")
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            self.play(Write(step_1), Unwrite(bullets), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("func_log")
            x,y,_ = func_log.get_center()+0.4*DOWN
            self.play(Write(func_log), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_2")
            x,y,_ = step_2[1].get_center()+0.4*DOWN
            self.play(Write(step_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("solution")
            x,y,_ = solution[1].get_center()+0.4*DOWN
            self.play(Write(solution), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("approx")
            x,y,_ = sol_calculated[-1].get_center()+0.4*DOWN    
            self.play(ReplacementTransform(solution, sol_calculated), CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.idle=True

        self.wait(4)

###############Exercises for Exp and Log Chapter ##########################
        
#####################################
#####################################
class Func_6_P_exp_log_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\log_{5}(3)$", "$0$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_6_P.Func_6_P_exp_log_1_q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$\key{a}$",
                answerOptionsTypes={
                    "a": "number",
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        term = MathTex("25^x-3\\left(5^x\\right)=0", color=c1t, font_size=fs1).set_y(2.6)

        dog = ImageMobject(assets_folder / "img" / "dog_looking_for_x.png")
        dog = dog.scale(4/dog.get_width()).set_x(-5)

        cursor = AltCursor(idle=True, y=-2)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.Func_6_P_exp_log_1_q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("term_in")
            self.play(Write(term))
            cursor.idle=False
            self.play(CursorUnderline(cursor, term))
            
            self.wait_until_bookmark("dog_in")
            self.add_shift_sound(0.5)
            self.play(dog.animate.shift(5*RIGHT), CursorMoveResize(cursor, 0, -2), run_time=.5)
            cursor.idle=True

        self.wait(4)
#

class Func_6_P_exp_log_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        term_1 = MathTex("25^x-3\\left(5^x\\right)=0", color=c1t, font_size=fs2).set_y(2.6)
        step_1 = MathTex("25^x=5^{2x}", "\\Downarrow", "+3\\left(5^x\\right)", color=BLUE_D, font_size=fs3).next_to(term_1, DOWN, buff=.4)
        step_1[1].scale(1.1)
        step_1[2].scale(.9)
        step_1[0].scale(.9)
        term_2 = MathTex("5^{2x}=3\\left(5^x\\right)", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.4)
        step_2 = MathTex("\\Downarrow", "5^{2x}=\\left(5^{x}\\right)^{^2}", color=BLUE_D, font_size=fs3).next_to(term_2, DOWN, buff=.4)
        step_2[1].scale(.9)
        term_3 = MathTex("\\left(5^{x}\\right)^2=3\\left(5^x\\right)", color=c1t, font_size=fs2).next_to(step_2, DOWN, buff=.4)
        step_3 = MathTex("\\Downarrow", "\\Box/5^x", color=BLUE_D, font_size=fs3).next_to(term_3, DOWN, buff=.4).shift(2.4*UP)
        term_4 = MathTex("5^x=3", color=c1t, font_size=fs2).next_to(step_3, DOWN, buff=.4)
        step_4 = MathTex("\\Downarrow", "\\log_5", color=BLUE_D, font_size=fs3).next_to(term_4, DOWN, buff=.4)
        term_5 = MathTex("x=\\log_5(3)", color=c1t, font_size=fs2).next_to(step_4, DOWN, buff=.4)

        dog = ImageMobject(assets_folder / "img" / "dog_looking_for_x.png")
        dog = dog.scale(4/dog.get_width())

        cursor = AltCursor(idle=True, y=-2)
        self.add(cursor, term_1, dog)


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_5")+self.translate("Func_6_P.Func_6_P_exp_log_1_a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("step_1_0")
            self.add_shift_sound(0.5)
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(dog.animate.shift(5*RIGHT), Write(step_1[1]), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_1_1")
            x,y,_ = step_1[2].get_center()+0.4*DOWN
            self.play(Write(step_1[2]), CursorMoveToCurved(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_1_2")
            x,y,_ = step_1[0].get_center()+0.4*DOWN
            self.play(Write(step_1[0]), CursorMoveToCurved(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_2")
            x,y,_ = term_2.get_center()+0.4*DOWN
            self.play(Write(term_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_2")
            x,y,_ = step_2[1].get_center()+0.4*DOWN
            self.play(Write(step_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_3")
            x,y,_ = term_3.get_center()+0.4*DOWN
            self.play(Write(term_3), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_3")
            self.add_shift_sound(.5)
            self.play(term_3.animate.shift(2.4*UP), Unwrite(step_2), Unwrite(step_1), Unwrite(term_1), Unwrite(term_2), run_time=.5)
            x,y,_ = step_3[1].get_center()+0.4*DOWN
            self.play(Write(step_3), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_4")
            x,y,_ = term_4.get_center()+0.4*DOWN
            self.play(Write(term_4), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_4")
            x,y,_ = step_4[1].get_center()+0.4*DOWN
            self.play(Write(step_4), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("solution")
            x,y,_ = term_5.get_center()+0.4*DOWN
            self.play(Write(term_5), CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.idle=True

        self.wait(4)

class Func_6_P_exp_log_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        term_1 = MathTex("25^x-3\\left(5^x\\right)=0", color=c1t, font_size=fs2).set_y(2.6)
        step_1 = MathTex("25^x=5^{2x}", "\\Downarrow", "+3\\left(5^x\\right)", color=BLUE_D, font_size=fs3).next_to(term_1, DOWN, buff=.4)
        step_1[1].scale(1.1)
        step_1[2].scale(.9)
        step_1[0].scale(.9)
        term_2 = MathTex("5^{2x}=3\\left(5^x\\right)", color=c1t, font_size=fs2).next_to(step_1, DOWN, buff=.4)
        step_2 = MathTex("\\Downarrow", "5^{2x}=\\left(5^{x}\\right)^{^2}", color=BLUE_D, font_size=fs3).next_to(term_2, DOWN, buff=.4)
        step_2[1].scale(.9)
        term_3 = MathTex("\\left(5^{x}\\right)^2=3\\left(5^x\\right)", color=c1t, font_size=fs2).next_to(step_2, DOWN, buff=.4)
        step_3 = MathTex("\\Downarrow", "\\Box/5^x", color=BLUE_D, font_size=fs3).next_to(term_3, DOWN, buff=.4).shift(2.4*UP)
        term_4 = MathTex("5^x=3", color=c1t, font_size=fs2).next_to(step_3, DOWN, buff=.4)
        step_4 = MathTex("\\Downarrow", "\\log_5", color=BLUE_D, font_size=fs3).next_to(term_4, DOWN, buff=.4)
        term_5 = MathTex("x=\\log_5(3)", color=c1t, font_size=fs2).next_to(step_4, DOWN, buff=.4)

        dog = ImageMobject(assets_folder / "img" / "dog_looking_for_x.png")
        dog = dog.scale(4/dog.get_width())

        cursor = AltCursor(idle=True, y=-2)
        self.add(cursor, term_1, dog)


        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_5")+self.translate("Func_6_P.Func_6_P_exp_log_1_a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("step_1_0")
            self.add_shift_sound(0.5)
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(dog.animate.shift(5*RIGHT), Write(step_1[1]), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_1_1")
            x,y,_ = step_1[2].get_center()+0.4*DOWN
            self.play(Write(step_1[2]), CursorMoveToCurved(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_1_2")
            x,y,_ = step_1[0].get_center()+0.4*DOWN
            self.play(Write(step_1[0]), CursorMoveToCurved(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_2")
            x,y,_ = term_2.get_center()+0.4*DOWN
            self.play(Write(term_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_2")
            x,y,_ = step_2[1].get_center()+0.4*DOWN
            self.play(Write(step_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_3")
            x,y,_ = term_3.get_center()+0.4*DOWN
            self.play(Write(term_3), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_3")
            self.add_shift_sound(.5)
            self.play(term_3.animate.shift(2.4*UP), Unwrite(step_2), Unwrite(step_1), Unwrite(term_1), Unwrite(term_2), run_time=.5)
            x,y,_ = step_3[1].get_center()+0.4*DOWN
            self.play(Write(step_3), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_4")
            x,y,_ = term_4.get_center()+0.4*DOWN
            self.play(Write(term_4), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_4")
            x,y,_ = step_4[1].get_center()+0.4*DOWN
            self.play(Write(step_4), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("solution")
            x,y,_ = term_5.get_center()+0.4*DOWN
            self.play(Write(term_5), CursorMoveTo(cursor,x,y), run_time=.5)
            cursor.idle=True

        self.wait(4)

#####################################
#####################################
class Func_6_P_exp_log_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$5$", "$0$"],
            correctAnswerIndex = 0,
            questionText = self.translate("Func_6_P.Func_6_P_exp_log_2_q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$\key{a}$",
                answerOptionsTypes={
                    "a": "number",
                }
            )
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        term = MathTex("9^{\\log_3\\sqrt5}", color=c1t, font_size=fs1).set_y(2.6)

        turtle = ImageMobject(assets_folder / "img" / "turtle_thinking.png")
        turtle = turtle.scale(4/turtle.get_width()).set_x(-5).set_y(.6)

        cursor = AltCursor(idle=True, y=-2)
        self.add(cursor) 


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_P.Func_6_P_exp_log_2_q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("term_in")
            self.play(Write(term))
            cursor.idle=False
            self.play(CursorUnderline(cursor, term))
            
            self.wait_until_bookmark("turtle_in")
            self.add_shift_sound(0.5)
            self.play(turtle.animate.shift(5*RIGHT), CursorMoveResize(cursor, 0, -2), run_time=.5)
            cursor.idle=True

        self.wait(4)


class Func_6_P_exp_log_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        term_1 = MathTex("9", "^{\\log", "_3", "\\sqrt5}", color=c1t, font_size=fs1).set_y(2.6)
        step_1 = MathTex("\\Downarrow", "9=3^2", color=BLUE_D, font_size=fs2).next_to(term_1, DOWN, buff=.4)
        step_1[1].scale(.9)
        term_2 = MathTex("\\left(3^2\\right)", "^{\\log", "_3", "\\sqrt5}", color=c1t, font_size=fs1).next_to(step_1, DOWN, buff=.4)
        step_2 = MathTex("\\Downarrow", "\\left(a^b\\right)^c=a^{b\\cdot c}", color=BLUE_D, font_size=fs2).next_to(term_2, DOWN, buff=.4)
        step_2[1].scale(.9)
        term_3_1 = MathTex("3^{", "2", "\\cdot", "\\log_3\\sqrt5}", color=c1t, font_size=fs1).next_to(step_2, DOWN, buff=.4)
        term_3_2 = MathTex("3^{", "\\log_3\\sqrt5", "\\cdot", "2}", color=c1t, font_size=fs1).move_to(term_3_1)
        upshift = term_1.get_y() - term_3_1.get_y()
        step_3 = MathTex("\\Downarrow", "a^{\\log_ab}=b", color=BLUE_D, font_size=fs2).next_to(term_3_2, DOWN, buff=.4).shift(UP*upshift)
        step_3[1].scale(.9)
        term_4_1 = MathTex("\\sqrt5", "^2", color=c1t, font_size=fs1).next_to(step_3, DOWN, buff=.4)
        term_4_2 = MathTex("5", color=c1t, font_size=fs1).move_to(term_4_1)

        turtle = ImageMobject(assets_folder / "img" / "turtle_thinking.png")
        turtle = turtle.scale(4/turtle.get_width()).set_y(.6)

        cursor = AltCursor(idle=True, y=-2)
        self.add(cursor, turtle, term_1) 

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_6")+self.translate("Func_6_P.Func_6_P_exp_log_2_a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("step_1")
            self.add_shift_sound(0.5)
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(turtle.animate.shift(5*RIGHT), Write(step_1), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_2")
            x,y,_ = term_2.get_center()+0.4*DOWN
            self.play(Write(term_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_2")
            x,y,_ = step_2[1].get_center()+0.4*DOWN
            self.play(Write(step_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_3_1")
            x,y,_ = term_3_1.get_center()+0.4*DOWN
            self.play(Write(term_3_1), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_3_2")
            self.play(TransformMatchingTex(term_3_1, term_3_2))

            self.wait_until_bookmark("cleanup_1")
            self.add_shift_sound(.5)
            self.play(VGroup(term_1, step_1, term_2, step_2).animate.shift(UP*6), term_3_2.animate.shift(UP*upshift), run_time=.5)

            self.wait_until_bookmark("step_3")
            x,y,_ = step_3[1].get_center()+0.4*DOWN
            self.play(Write(step_3), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_4_1")
            x,y,_ = term_4_1.get_center()+0.4*DOWN
            self.play(Write(term_4_1), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_4_2")
            self.play(TransformMatchingTex(term_4_1, term_4_2))

            self.wait_until_bookmark("solution")
            term_1 = MathTex("9", "^{\\log", "_3", "\\sqrt5}", color=c1t, font_size=fs1).set_y(1.4)
            step_1 = MathTex("=", color=BLUE_D, font_size=fs2).next_to(term_1, DOWN, buff=.4)
            solution = MathTex("5", color=c1t, font_size=fs1).next_to(step_1, DOWN, buff=.4)
            term_4_2.generate_target()
            term_4_2.target.move_to(solution)
            self.play(Write(term_1), Write(step_1), MoveToTarget(term_4_2), Unwrite(VGroup(term_3_2, step_3)), run_time=.5)

            self.wait_until_bookmark("rectangle")
            sol_rectangle = SurroundingRectangle(VGroup(term_1, step_1, solution), color=PURE_BLUE, corner_radius=.1, buff=.2)
            x,y,_ = sol_rectangle.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)
            self.add(cursor.copy()._start_fading(3).add_updater(lambda m: m.move_to(sol_rectangle.get_end())))
            self.add_pencil_sound(1)
            self.play(Create(sol_rectangle), run_time=1)

        self.wait(4)

class Func_6_P_exp_log_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        term_1 = MathTex("9", "^{\\log", "_3", "\\sqrt5}", color=c1t, font_size=fs1).set_y(2.6)
        step_1 = MathTex("\\Downarrow", "9=3^2", color=BLUE_D, font_size=fs2).next_to(term_1, DOWN, buff=.4)
        step_1[1].scale(.9)
        term_2 = MathTex("\\left(3^2\\right)", "^{\\log", "_3", "\\sqrt5}", color=c1t, font_size=fs1).next_to(step_1, DOWN, buff=.4)
        step_2 = MathTex("\\Downarrow", "\\left(a^b\\right)^c=a^{b\\cdot c}", color=BLUE_D, font_size=fs2).next_to(term_2, DOWN, buff=.4)
        step_2[1].scale(.9)
        term_3_1 = MathTex("3^{", "2", "\\cdot", "\\log_3\\sqrt5}", color=c1t, font_size=fs1).next_to(step_2, DOWN, buff=.4)
        term_3_2 = MathTex("3^{", "\\log_3\\sqrt5", "\\cdot", "2}", color=c1t, font_size=fs1).move_to(term_3_1)
        upshift = term_1.get_y() - term_3_1.get_y()
        step_3 = MathTex("\\Downarrow", "a^{\\log_ab}=b", color=BLUE_D, font_size=fs2).next_to(term_3_2, DOWN, buff=.4).shift(UP*upshift)
        step_3[1].scale(.9)
        term_4_1 = MathTex("\\sqrt5", "^2", color=c1t, font_size=fs1).next_to(step_3, DOWN, buff=.4)
        term_4_2 = MathTex("5", color=c1t, font_size=fs1).move_to(term_4_1)

        turtle = ImageMobject(assets_folder / "img" / "turtle_thinking.png")
        turtle = turtle.scale(4/turtle.get_width()).set_y(.6)

        cursor = AltCursor(idle=True, y=-2)
        self.add(cursor, turtle, term_1) 

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.incorrect_6")+self.translate("Func_6_P.Func_6_P_exp_log_2_a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("step_1")
            self.add_shift_sound(0.5)
            x,y,_ = step_1[1].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(turtle.animate.shift(5*RIGHT), Write(step_1), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_2")
            x,y,_ = term_2.get_center()+0.4*DOWN
            self.play(Write(term_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("step_2")
            x,y,_ = step_2[1].get_center()+0.4*DOWN
            self.play(Write(step_2), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_3_1")
            x,y,_ = term_3_1.get_center()+0.4*DOWN
            self.play(Write(term_3_1), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_3_2")
            self.play(TransformMatchingTex(term_3_1, term_3_2))

            self.wait_until_bookmark("cleanup_1")
            self.add_shift_sound(.5)
            self.play(VGroup(term_1, step_1, term_2, step_2).animate.shift(UP*6), term_3_2.animate.shift(UP*upshift), run_time=.5)

            self.wait_until_bookmark("step_3")
            x,y,_ = step_3[1].get_center()+0.4*DOWN
            self.play(Write(step_3), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_4_1")
            x,y,_ = term_4_1.get_center()+0.4*DOWN
            self.play(Write(term_4_1), CursorMoveTo(cursor,x,y), run_time=.5)

            self.wait_until_bookmark("term_4_2")
            self.play(TransformMatchingTex(term_4_1, term_4_2))

            self.wait_until_bookmark("solution")
            term_1 = MathTex("9", "^{\\log", "_3", "\\sqrt5}", color=c1t, font_size=fs1).set_y(1.4)
            step_1 = MathTex("=", color=BLUE_D, font_size=fs2).next_to(term_1, DOWN, buff=.4)
            solution = MathTex("5", color=c1t, font_size=fs1).next_to(step_1, DOWN, buff=.4)
            term_4_2.generate_target()
            term_4_2.target.move_to(solution)
            self.play(Write(term_1), Write(step_1), MoveToTarget(term_4_2), Unwrite(VGroup(term_3_2, step_3)), run_time=.5)

            self.wait_until_bookmark("rectangle")
            sol_rectangle = SurroundingRectangle(VGroup(term_1, step_1, solution), color=PURE_BLUE, corner_radius=.1, buff=.2)
            x,y,_ = sol_rectangle.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=.5)
            self.add(cursor.copy()._start_fading(3).add_updater(lambda m: m.move_to(sol_rectangle.get_end())))
            self.add_pencil_sound(1)
            self.play(Create(sol_rectangle), run_time=1)

        self.wait(4)


#####################################
#####################################
class test(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        c = Circle(color=RED, fill_color=RED, fill_opacity=1).scale(1.4)
        self.add(c)

        # Action Sequence
        with self.voiceover(
                text="""
Fantastic work on those exercises! You're really getting the hang of exponential functions. But there's still more to explore.
In our next session, we'll focus on understanding how exponential growth and decay happen in different scenarios. We'll use examples like a city's energy consumption and the growth of a savings account. For instance, we'll calculate the interest rate required for a savings account to grow to a certain amount over a period of years, or how much energy a city will use in the future based on current trends.
These examples aren't just numbers; they represent real-life situations where exponential functions play a key role. So, get ready to apply your skills in even more practical ways! See you in the next session!
"""
        ) as tracker:
            for idx in range(20):
                self.play(ApplyWave(c, amplitude=.4), run_time=.4)
                self.play(ApplyWave(c, amplitude=.5), run_time=.2)
                self.play(ApplyWave(c, amplitude=.8), run_time=.7)
                self.play(ApplyWave(c, amplitude=.7), run_time=.5)
                self.wait(.1)

        self.wait(4)







PROTOTYPES=[
########################################################################## Practice: Recognizing Exponential Growth
    PagePrototypeVideo.from_scene(Func_6_P_recognize_growth_1_q),
    PagePrototypeQuestion.from_scene(Func_6_P_recognize_growth_1_q),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_growth_1_a),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_growth_1_b),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_growth_1_c),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_growth_1_d),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_growth_2_q),
    PagePrototypeQuestion.from_scene(Func_6_P_recognize_growth_2_q),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_growth_2_a),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_growth_2_b),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_growth_2_c),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_growth_2_d),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_growth_3_q),
    PagePrototypeQuestion.from_scene(Func_6_P_recognize_growth_3_q),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_growth_3_a),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_growth_3_b),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_growth_3_c),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_growth_3_d),
########################################################################## Practice: Growth Factor <-> Graph
    PagePrototypeVideo.from_scene(Func_6_2_P_2_q),
    PagePrototypeQuestion.from_scene(Func_6_2_P_2_q),
    PagePrototypeVideo.from_scene(Func_6_2_P_2_a),
    PagePrototypeVideo.from_scene(Func_6_2_P_2_b),
    PagePrototypeVideo.from_scene(Func_6_2_P_2_c),
    PagePrototypeVideo.from_scene(Func_6_2_P_3_q),
    PagePrototypeQuestion.from_scene(Func_6_2_P_3_q),
    PagePrototypeVideo.from_scene(Func_6_2_P_3_a),
    PagePrototypeVideo.from_scene(Func_6_2_P_3_b),
    PagePrototypeVideo.from_scene(Func_6_2_P_3_c),
    PagePrototypeVideo.from_scene(Func_6_2_P_3_d),
    PagePrototypeVideo.from_scene(Func_6_2_P_4_q),
    PagePrototypeQuestion.from_scene(Func_6_2_P_4_q),
    PagePrototypeVideo.from_scene(Func_6_2_P_4_a),
    PagePrototypeVideo.from_scene(Func_6_2_P_4_b),
    PagePrototypeVideo.from_scene(Func_6_2_P_4_c),
    PagePrototypeVideo.from_scene(Func_6_2_P_5_q),
    PagePrototypeQuestion.from_scene(Func_6_2_P_5_q),
    PagePrototypeVideo.from_scene(Func_6_2_P_5_a),
    PagePrototypeVideo.from_scene(Func_6_2_P_5_b),
    PagePrototypeVideo.from_scene(Func_6_2_P_5_c),
    PagePrototypeVideo.from_scene(Func_6_2_P_5_d),
    PagePrototypeVideo.from_scene(Func_6_2_P_6_q),
    PagePrototypeQuestion.from_scene(Func_6_2_P_6_q),
    PagePrototypeVideo.from_scene(Func_6_2_P_6_a),
    PagePrototypeVideo.from_scene(Func_6_2_P_6_b),
    PagePrototypeVideo.from_scene(Func_6_2_P_6_c),
########################################################################## Practice: Modelling with EXP
    PagePrototypeVideo.from_scene(Func_6_P_general_form_1_1_q),
    PagePrototypeQuestion.from_scene(Func_6_P_general_form_1_1_q),
    PagePrototypeVideo.from_scene(Func_6_P_general_form_1_1_a),
    PagePrototypeVideo.from_scene(Func_6_P_general_form_1_1_b),
    PagePrototypeVideo.from_scene(Func_6_P_general_form_1_2_q),
    PagePrototypeQuestion.from_scene(Func_6_P_general_form_1_2_q),
    PagePrototypeVideo.from_scene(Func_6_P_general_form_1_2_a),
    PagePrototypeVideo.from_scene(Func_6_P_general_form_1_2_b),
    PagePrototypeVideo.from_scene(Func_6_P_general_form_1_3_q),
    PagePrototypeQuestion.from_scene(Func_6_P_general_form_1_3_q),
    PagePrototypeVideo.from_scene(Func_6_P_general_form_1_3_a),
    PagePrototypeVideo.from_scene(Func_6_P_general_form_1_3_b),
    PagePrototypeVideo.from_scene(Func_6_P_general_form_1_4_q),
    PagePrototypeQuestion.from_scene(Func_6_P_general_form_1_4_q),
    PagePrototypeVideo.from_scene(Func_6_P_general_form_1_4_a),
    PagePrototypeVideo.from_scene(Func_6_P_general_form_1_4_b),
########################################################################## Practice: Graphs to terms
    PagePrototypeVideo.from_scene(Func_6_P_graphs_1_q),
    PagePrototypeQuestion.from_scene(Func_6_P_graphs_1_q),
    PagePrototypeVideo.from_scene(Func_6_P_graphs_1_a),
    PagePrototypeVideo.from_scene(Func_6_P_graphs_1_b),
    PagePrototypeVideo.from_scene(Func_6_P_graphs_2_q),
    PagePrototypeQuestion.from_scene(Func_6_P_graphs_2_q),
    PagePrototypeVideo.from_scene(Func_6_P_graphs_2_a),
    PagePrototypeVideo.from_scene(Func_6_P_graphs_2_b),
########################################################################## Practice: Percentages and Interest
    PagePrototypeVideo.from_scene(Func_6_P_recognize_percentages_1_q),
    PagePrototypeQuestion.from_scene(Func_6_P_recognize_percentages_1_q),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_percentages_1_a),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_percentages_1_b),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_percentages_2_q),
    PagePrototypeQuestion.from_scene(Func_6_P_recognize_percentages_2_q),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_percentages_2_a),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_percentages_2_b),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_percentages_3_q),
    PagePrototypeQuestion.from_scene(Func_6_P_recognize_percentages_3_q),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_percentages_3_a),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_percentages_3_b),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_percentages_4_q),
    PagePrototypeQuestion.from_scene(Func_6_P_recognize_percentages_4_q),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_percentages_4_a),
    PagePrototypeVideo.from_scene(Func_6_P_recognize_percentages_4_b),
##########################################################################CHAPTER: Rules for Exponenial Functions: Easy
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_1_q),
    PagePrototypeQuestion.from_scene(Func_6_P_exp_rules_1_1_q),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_1_a),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_1_b),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_1_c),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_1_d),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_2_q),
    PagePrototypeQuestion.from_scene(Func_6_P_exp_rules_1_2_q),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_2_a),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_2_b),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_2_c),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_2_d),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_3_q),
    PagePrototypeQuestion.from_scene(Func_6_P_exp_rules_1_3_q),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_3_a),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_3_b),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_4_q),
    PagePrototypeQuestion.from_scene(Func_6_P_exp_rules_1_4_q),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_4_a),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_4_b),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_4_c),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_1_4_d),
##########################################################################CHAPTER: Rules for Exponenial Functions: Medium
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_2_1_q),
    PagePrototypeQuestion.from_scene(Func_6_P_exp_rules_2_1_q),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_2_1_a),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_2_1_b),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_2_2_q),
    PagePrototypeQuestion.from_scene(Func_6_P_exp_rules_2_2_q),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_2_2_a),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_2_2_b),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_2_2_c),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_2_2_d),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_2_3_q),
    PagePrototypeQuestion.from_scene(Func_6_P_exp_rules_2_3_q),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_2_3_a),
    PagePrototypeVideo.from_scene(Func_6_P_exp_rules_2_3_b),
##########################################################################CHAPTER: Rules for Logarithm
    PagePrototypeVideo.from_scene(Func_6_P_log_rules_1_q),
    PagePrototypeQuestion.from_scene(Func_6_P_log_rules_1_q),
    PagePrototypeVideo.from_scene(Func_6_P_log_rules_1_a),
    PagePrototypeVideo.from_scene(Func_6_P_log_rules_1_b),
    PagePrototypeVideo.from_scene(Func_6_P_log_rules_2_q),
    PagePrototypeQuestion.from_scene(Func_6_P_log_rules_2_q),
    PagePrototypeVideo.from_scene(Func_6_P_log_rules_2_a),
    PagePrototypeVideo.from_scene(Func_6_P_log_rules_2_b),
##########################################################################CHAPTER: Modelling with Logarithm
    PagePrototypeVideo.from_scene(Func_6_P_model_log_terms_1_q),
    PagePrototypeQuestion.from_scene(Func_6_P_model_log_terms_1_q),
    PagePrototypeVideo.from_scene(Func_6_P_model_log_terms_1_a),
    PagePrototypeVideo.from_scene(Func_6_P_model_log_terms_1_b),
    PagePrototypeVideo.from_scene(Func_6_P_model_log_terms_2_q),
    PagePrototypeQuestion.from_scene(Func_6_P_model_log_terms_2_q),
    PagePrototypeVideo.from_scene(Func_6_P_model_log_terms_2_a),
    PagePrototypeVideo.from_scene(Func_6_P_model_log_terms_2_b),
##########################################################################CHAPTER: Exp and Log
    PagePrototypeVideo.from_scene(Func_6_P_exp_log_1_q),
    PagePrototypeQuestion.from_scene(Func_6_P_exp_log_1_q),
    PagePrototypeVideo.from_scene(Func_6_P_exp_log_1_a),
    PagePrototypeVideo.from_scene(Func_6_P_exp_log_1_b),
]