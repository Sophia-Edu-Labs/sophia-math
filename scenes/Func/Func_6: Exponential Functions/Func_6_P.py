# 6_2: Exponential Functions: Logarithm

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


# - recognizing exponential growth
# - Determining the growth factor
# - Modelling situations using exponential functions
# - Graphs of exponential functions
# - interests and percentages
# - Terms involving exponential functions
# - Working with Logarithms
# - Terms involving Logarithms
# - General practice

###############Exercises for recognizing exponential growth ##########################

##################################### Exercise Level: Easy (1)
#####################################
class Func_6_P_recognize_growth_1_q(SophiaCursorScene):

    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions = ["$\\tfrac{3^x}{3^2}$", "$(\\sqrt3)^{^x}$", "$\\tfrac{3^x}{3^{-2}}$", "$3^x\\cdot3^{\\frac12}$"],
    #         correctAnswerIndex = 1,
    #         questionText=self.translate("Func_6_P.211.q.question-text")
    #     )

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
                text=
"""
I'm going to show you <bookmark mark="three_in"/>three function graphs. Exactly one of them belongs to an exponential function. <bookmark mark="cords_in"/>Can you tell which one? Is <bookmark mark="orange_in"/> it the orange graph, or is it <bookmark mark="green_in"/> the green graph, or is it <bookmark mark="blue_in"/> the blue graph?
"""
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

    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions = ["$\\tfrac{3^x}{3^2}$", "$(\\sqrt3)^{^x}$", "$\\tfrac{3^x}{3^{-2}}$", "$3^x\\cdot3^{\\frac12}$"],
    #         correctAnswerIndex = 1,
    #         questionText=self.translate("Func_6_P.211.q.question-text")
    #     )

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

        # Action Sequence
        with self.voiceover(
                text=
"""
So the <bookmark mark="blue_in"/>blue graph is simply a straight line. That means, that it's a linear function. So it can't be an exponential function. <bookmark mark="orange_in"/>The orange graph is a square root function. So it can't be an exponential function either. We can also see that the orange graph is not an exponential function by <bookmark mark="slow_increase"/>recognizing, that it is increasing more and more slowly. An exponential function on the other hand would increase more and more quickly. Which brings us to <bookmark mark="green_in"/>the green graph. It is an exponential function. You can see how it increases at an increasing rate, so the growth factor is greater than one.
"""
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

    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions = ast.literal_eval((self.translate("Func_6_P.recognize_growth.2.q.answer-options"))),
    #         correctAnswerIndex = 1,
    #         questionText=self.translate("Func_6_P.recognize_growth.2.q.question-text")
    #     )
#out of <bookmark mark="overview"/>these three situations, which is not described by an exponential function?
    #Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        func_1 = MathTex("f(x)=2^{x-1}", color=c1t, font_size=fs1)
        func_2 = MathTex("h(y)=2^{y/2}", color=c1t, font_size=fs1)
        func_3 = MathTex("g(z)=z^{x+1}", color=c1t, font_size=fs1)
        funcs = VGroup(func_1, func_2, func_3).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(0.4)

        # Action Sequence
        with self.voiceover(
                text=
"""
I'm now going to show you three function terms. Which of them does not describe an exponential function?
Is it the <bookmark mark="f_1_in"/>function f of x equals two to the power of x minus one? Or is it the <bookmark mark="f_2_in"/>function h of y equals to two to the power of y over two? Or is it the <bookmark mark="f_3_in"/>function g of z, which is equal to two times z plus two to the power of x plus one?
"""
        ) as tracker:
            
            self.wait_until_bookmark("f_1_in")
            self.play(Write(func_1))

            self.wait_until_bookmark("f_2_in")
            self.play(Write(func_2))

            self.wait_until_bookmark("f_3_in")
            self.play(Write(func_3))

        self.wait(5)

###############Exercises for Percentages Chapter ##########################

##################################### Exercise Level: Easy (1)
#####################################
# class Func_6_P_1_1_1_q(SophiaCursorScene):

#     # def task_definition(self) -> SophiaTaskDefinition:
#     #     return SophiaTaskDefinition(
#     #         answerOptions = ["$x=\sqrt[5]{625}$", "$x=\sqrt[625]{5}$", "$x=\log_{625}{5}$", "$x=\log_5{625}$"],
#     #         correctAnswerIndex = 3,
#     #         questionText=self.translate("Func_6_3.I4.q.question-text")
#     #     )

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         money = ImageMobject(assets_folder / "img" / "colors_money_in_bank.png")
#         money = money.scale(4/money.get_width()).move_to([-5, 1.4, 0])
#         year = self.translate("words.year")
        
#         bullets = VGroup(Tex("$\\bullet$ ", year, " 0: $100\$$", color=c1t, font_size=fs2), Tex("$\\bullet$ ", year, " 2: $144\$$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
# You have<bookmark mark="money_in"/> a bank account, that you <bookmark mark="dollars_1_in"/>put 100 Dollars into. Every year, you get the same amount of interest. After two years, you have <bookmark mark="dollars_2_in"/>144 Dollars in your account. What is the interest rate in percent?
# """
#         ) as tracker:
            
#             self.wait_until_bookmark("money_in")
#             self.add_shift_sound(0.5)
#             self.play(money.animate.shift(5*RIGHT), run_time=0.5)
            
#             self.wait_until_bookmark("dollars_1_in")
#             self.play(Write(bullets[0]), run_time=.5)

#             self.wait_until_bookmark("dollars_2_in")
#             self.play(Write(bullets[1]), run_time=.5)

#         self.wait(4)

# class Func_6_P_1_1_1_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         cursor=AltCursor()

#         money = ImageMobject(assets_folder / "img" / "colors_money_in_bank.png")
#         money = money.scale(4/money.get_width()).set_y(1.4)
#         self.add(money)
#         year = self.translate("words.year")

#         interest_1 = MathTex("f(x)=", "a", "\\cdot", "b", "^x", color=c1t, font_size=fs2)
#         interest_2 = MathTex("f(x)=", "100", "\\cdot", "b", "^x", color=c1t, font_size=fs2)
#         interest_3 = MathTex("f(x)=", "100", "\\cdot", "1.2", "^x", color=c1t, font_size=fs2)
#         interests = VGroup(interest_1, interest_2, interest_3).set_y(2)

#         f_0 = MathTex("f(0)=", "a", "\\cdot b^0", "=100", color=BLUE_D, font_size=fs2)
#         implication_1 = MathTex("\\Downarrow", "b^0=1", color=BLUE_D, font_size=fs2)
#         a = MathTex("a=", "100", color=BLUE_D, font_size=fs2)
#         step_1 = VGroup(f_0, implication_1, a).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(interests, DOWN, buff=.4)
#         implication_1[1].scale(0.7)


#         f_2 = MathTex("f(2)=", "100", "\\cdot b^2", "=144", color=GREEN_D, font_size=fs2)
#         implication_2 = MathTex("\\Downarrow", "b^2=1.44", color=GREEN_D, font_size=fs2)
#         b = MathTex("b=", "1.2", color=GREEN_D, font_size=fs2)
#         step_2 = VGroup(f_2, implication_2, b).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(interests, DOWN, buff=.4)
#         implication_2[1].scale(0.7)

#         bullets = VGroup(Tex("$\\bullet$ ", year, " 0: $100\$$", color=c1t, font_size=fs2), Tex("$\\bullet$ ", year, " 2: $144\$$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)
#         self.add(bullets)
        
#         interest = self.translate("words.interest")
#         sol = Tex(interest, ": $20\%$", color=c1t, font_size=fs2)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
# So the function describing the amount of money we have with yearly interest is<bookmark mark="money_out"/> f of x equals a times b to the power of x. We know that<bookmark mark="zero_highlight"/> after zero years, we have 100 dollars, so we get <bookmark mark="f_0"/>that f of zero, which equals a times b to the zero is equal to 100. Since <bookmark mark="implication_1_in"/>b to the power of 0 is 1, we can see <bookmark mark="a_in"/>that a is equal to 100...
# We<bookmark mark="transition_1"/> also know that <bookmark mark="two_highlight"/>after two years, we have 144 dollars, so we get that <bookmark mark="f_2"/>f of two, which equals 100 times b to the power of two is equal to 144. So <bookmark mark="implication_2_in"/>b squared is equal to 1 point 4 4. Since the square root of 1 point 4 4 is 1 point 2, b is equal<bookmark mark="b_in"/> to 1.2. Therefore, <bookmark mark="transition_2"/>since b is 1 point 2, the interest rate is 20 percent.
# """
#         ) as tracker:
            
#             self.wait_until_bookmark("money_out")
#             self.add_shift_sound(0.5)
#             self.play(money.animate.shift(5*RIGHT), run_time=0.5)
#             self.play(Write(interest_1))

#             self.wait_until_bookmark("zero_highlight")
#             self.play(bullets[0].animate.set_color(BLUE_D), run_time=.5)
            
#             self.wait_until_bookmark("f_0")
#             self.play(Write(f_0), bullets[0].animate.set_color(c1t), run_time=.5)

#             self.wait_until_bookmark("implication_1_in")
#             x,y,_ = implication_1[1].get_center()+0.4*DOWN
#             self.play(CursorMoveResize(cursor,x,y), Write(implication_1), run_time=.5)

#             self.wait_until_bookmark("a_in")
#             x,y,_ = a[1].get_center()+0.4*DOWN
#             self.play(CursorMoveResize(cursor,x,y), Write(a), run_time=.5)
#             cursor.idle=True
            
#             self.wait_until_bookmark("transition_1")
#             self.add_shift_sound(0.5)
#             self.play(VGroup(f_0, implication_1, a[0]).animate.shift(5*UP), run_time=.5)
#             a[1].generate_target().move_to(interest_2[1])
#             self.play(MoveToTarget(a[1]), Unwrite(interest_1[1]), ReplacementTransform(interest_1[0], interest_2[0]), ReplacementTransform(interest_1[2], interest_2[2]), ReplacementTransform(interest_1[3], interest_2[3]), ReplacementTransform(interest_1[4], interest_2[4]))

#             self.wait_until_bookmark("two_highlight")
#             self.play(bullets[1].animate.set_color(GREEN_D), run_time=.5)

#             self.wait_until_bookmark("f_2")
#             self.play(bullets[1].animate.set_color(c1t), Write(f_2), run_time=.5)

#             self.wait_until_bookmark("implication_2_in")
#             cursor.idle=False
#             x,y,_ = implication_2[1].get_center()+0.4*DOWN
#             self.play(CursorMoveResize(cursor,x,y), Write(implication_2), run_time=.5)

#             self.wait_until_bookmark("b_in")
#             x,y,_ = b[1].get_center()+0.4*DOWN
#             self.play(CursorMoveResize(cursor,x,y), Write(b), run_time=.5)
#             cursor.idle=True

#             self.wait_until_bookmark("transition_2")
#             self.add_shift_sound(0.5)
#             self.play(VGroup(f_2, implication_2, b[0]).animate.shift(5*UP), run_time=.5)
#             b[1].generate_target().move_to(interest_3[3])
#             a[1].generate_target().move_to(interest_3[1])
#             self.play(MoveToTarget(a[1]), MoveToTarget(b[1]), Unwrite(interest_2[3]), ReplacementTransform(interest_2[0], interest_3[0]), ReplacementTransform(interest_2[2], interest_3[2]), ReplacementTransform(interest_2[4], interest_3[4]), bullets.animate.shift(5*RIGHT))
#             self.play(Write(sol))

#         self.wait(4)






###############Exercises for Rules Chapter ##########################

##################################### Exercise Level: Easy (1)
#####################################
class Func_6_P_2_1_1_q(SophiaCursorScene):

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

class Func_6_P_2_1_1_a(SophiaCursorScene):

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

class Func_6_P_2_1_1_b(SophiaCursorScene):

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

class Func_6_P_2_1_1_c(SophiaCursorScene):

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

class Func_6_P_2_1_1_d(SophiaCursorScene):

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
class Func_6_P_2_1_2_q(SophiaCursorScene):

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


class Func_6_P_2_1_2_a(SophiaCursorScene):

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

class Func_6_P_2_1_2_b(SophiaCursorScene):

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

class Func_6_P_2_1_2_c(SophiaCursorScene):

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

class Func_6_P_2_1_2_d(SophiaCursorScene):

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
class Func_6_P_2_1_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\tfrac{5^2}{5^k}$", "$\\sqrt{5}^{-2}$", "$\\tfrac{1}{5^k}$", "$\\tfrac{1}{25}\\cdot 5^k$"],
            correctAnswerIndex = 3,
            questionText=self.translate("Func_6_P.213.q.question-text")
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

        self.wait(4)


class Func_6_P_2_1_3_a(SophiaCursorScene):

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

class Func_6_P_2_1_3_b(SophiaCursorScene):

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

class Func_6_P_2_1_3_c(SophiaCursorScene):

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

class Func_6_P_2_1_3_d(SophiaCursorScene):

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


#####################################
#####################################
class Func_6_P_2_1_4_q(SophiaCursorScene):

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


class Func_6_P_2_1_4_a(SophiaCursorScene):

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

class Func_6_P_2_1_4_b(SophiaCursorScene):

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

class Func_6_P_2_1_4_c(SophiaCursorScene):

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

class Func_6_P_2_1_4_d(SophiaCursorScene):

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
class Func_6_P_2_2_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\tfrac{2^x}{(-4)^2}$", "$\\left(\\tfrac{1}{4}\\right)^x$", "$\\tfrac{1}{16}\\cdot 2^{x}$", "$\\left(\\tfrac{1}{8}\\right)^x$"],
            correctAnswerIndex = 2,
            questionText=self.translate("Func_6_P.221.q.question-text")
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

class Func_6_P_2_2_1_a(SophiaCursorScene):

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

class Func_6_P_2_2_1_b(SophiaCursorScene):

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

class Func_6_P_2_2_1_c(SophiaCursorScene):

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

class Func_6_P_2_2_1_d(SophiaCursorScene):

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
class Func_6_P_2_2_2_q(SophiaCursorScene):

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


class Func_6_P_2_2_2_a(SophiaCursorScene):

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

class Func_6_P_2_2_2_b(SophiaCursorScene):

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

class Func_6_P_2_2_2_c(SophiaCursorScene):

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

class Func_6_P_2_2_2_d(SophiaCursorScene):

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
class Func_6_P_2_2_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\tfrac{2}{\\pi^2}2\\cdot\\pi^{x}$", "$\\left(\\tfrac{2\\pi}{\\pi^2}\\right)^{x}$", "$2\\cdot\\left(\\tfrac{1}{\\pi^2}\\right)^{x}$", "$2\\pi\\cdot\\left(\\tfrac{1}{\\pi^2}\\right)^{x}$"],
            correctAnswerIndex = 3,
            questionText=self.translate("Func_6_P.23.q.question-text")
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


class Func_6_P_2_2_3_a(SophiaCursorScene):

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

class Func_6_P_2_2_3_b(SophiaCursorScene):

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

class Func_6_P_2_2_3_c(SophiaCursorScene):

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

class Func_6_P_2_2_3_d(SophiaCursorScene):

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



PROTOTYPES=[
##########################################################################CHAPTER: Rules for Exponenial Functions: Easy
    PagePrototypeVideo.from_scene(Func_6_P_2_1_1_q),
    PagePrototypeQuestion.from_scene(Func_6_P_2_1_1_q),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_1_a),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_1_b),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_1_c),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_1_d),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_2_q),
    PagePrototypeQuestion.from_scene(Func_6_P_2_1_2_q),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_2_a),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_2_b),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_2_c),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_2_d),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_3_q),
    PagePrototypeQuestion.from_scene(Func_6_P_2_1_3_q),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_3_a),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_3_b),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_3_c),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_3_d),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_4_q),
    PagePrototypeQuestion.from_scene(Func_6_P_2_1_4_q),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_4_a),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_4_b),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_4_c),
    PagePrototypeVideo.from_scene(Func_6_P_2_1_4_d),
##########################################################################CHAPTER: Rules for Exponenial Functions: Medium
    PagePrototypeVideo.from_scene(Func_6_P_2_2_1_q),
    PagePrototypeQuestion.from_scene(Func_6_P_2_2_1_q),
    PagePrototypeVideo.from_scene(Func_6_P_2_2_1_a),
    PagePrototypeVideo.from_scene(Func_6_P_2_2_1_b),
    PagePrototypeVideo.from_scene(Func_6_P_2_2_1_c),
    PagePrototypeVideo.from_scene(Func_6_P_2_2_1_d),
    PagePrototypeVideo.from_scene(Func_6_P_2_2_2_q),
    PagePrototypeQuestion.from_scene(Func_6_P_2_2_2_q),
    PagePrototypeVideo.from_scene(Func_6_P_2_2_2_a),
    PagePrototypeVideo.from_scene(Func_6_P_2_2_2_b),
    PagePrototypeVideo.from_scene(Func_6_P_2_2_2_c),
    PagePrototypeVideo.from_scene(Func_6_P_2_2_2_d),
    PagePrototypeVideo.from_scene(Func_6_P_2_2_3_q),
    PagePrototypeQuestion.from_scene(Func_6_P_2_2_3_q),
    PagePrototypeVideo.from_scene(Func_6_P_2_2_3_a),
    PagePrototypeVideo.from_scene(Func_6_P_2_2_3_b),
    PagePrototypeVideo.from_scene(Func_6_P_2_2_3_c),
    PagePrototypeVideo.from_scene(Func_6_P_2_2_3_d),
]



















# #####################################
# # Exercise 1: On Money (compare Aufgabe 5, Manuel Benz)
# class Func_6_4_I_1_1_q(SophiaCursorScene):

#     # def task_definition(self) -> SophiaTaskDefinition:
#     #     return SophiaTaskDefinition(
#     #         answerOptions = ["$x=\sqrt[5]{625}$", "$x=\sqrt[625]{5}$", "$x=\log_{625}{5}$", "$x=\log_5{625}$"],
#     #         correctAnswerIndex = 3,
#     #         questionText=self.translate("Func_6_3.I4.q.question-text")
#     #     )

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         x,y,_ = 0,0,0
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         capital = self.translate("words.capital")
#         interest = self.translate("words.interest")
#         years = self.translate("words.years")
#         compound_interest = self.translate("words.compound_interest")
#         bullets = VGroup(Tex(f"$\\bullet$ {capital}: 500\\$", color=c1t, font_size=fs2), Tex(f"$\\bullet$ {interest}: 10\\%", color=c1t, font_size=fs2), Tex("$\\bullet$ $10$ {years}", color=c1t, font_size=fs2))
#         title = Tex(compound_interest, color=c1t, font_size=fs2).next_to(bullets, UP, buff=0.6)
#         # Action Sequence
#         with self.voiceover(
#                 text="""
# In the realm of finance and investment, a common question arises: what is the future value of an investment under<bookmark mark="compound_in"/> compound interest conditions? For instance, consider the following scenario: An initial capital <bookmark mark="capital_in"/>of 500 Dollars is invested at an interest rate <bookmark mark="interest_in"/>of 5 percent. The interest is compounded annually. What would be the total amount of this capital after a <bookmark mark="time_in"/>period of 10 years?
# """
#         ) as tracker:
            
#             self.wait_until_bookmark("compound_in")
#             self.play(Write(title))

#             self.wait_until_bookmark("capital_in")
#             x,y,_ = bullets[0].get_center()+0.4*DOWN
#             cursor.idle=False
#             self.play(CursorMoveTo(cursor, x,y), Write(bullets[0]), run_time=.5)

#             self.wait_until_bookmark("interest_in")
#             x,y,_ = bullets[1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x,y), Write(bullets[1]), run_time=.5)

#             self.wait_until_bookmark("time_in")
#             x,y,_ = bullets[2].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x,y), Write(bullets[2]), run_time=.5)
#             cursor.idle=True

#         self.wait(4)