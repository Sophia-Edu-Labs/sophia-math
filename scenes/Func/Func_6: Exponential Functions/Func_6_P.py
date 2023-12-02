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


##################################### Exercise Level: Easy (1)
#####################################
class Func_6_P_1_1_1_q(SophiaCursorScene):

    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions = ["$x=\sqrt[5]{625}$", "$x=\sqrt[625]{5}$", "$x=\log_{625}{5}$", "$x=\log_5{625}$"],
    #         correctAnswerIndex = 3,
    #         questionText=self.translate("Func_6_3.I4.q.question-text")
    #     )

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
                text="""
You're given the <bookmark mark="expression_in"/>expression 3 to the power of x over two.<bookmark mark="q_in"/> How can you rewrite this expression using the rules for exponential functions?"""
        ) as tracker:
            
            self.wait_until_bookmark("expression_in")
            self.play(Write(expression), CursorUnderline(cursor, expression), run_time=.5)

            self.wait_until_bookmark("q_in")
            self.draw_qmark(cursor, DOWN*2, run_time=3)

        self.wait(4)

class Func_6_P_1_1_a(SophiaCursorScene):

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
                text="""
First, notice that the expression 3 to the power of x over two is<bookmark mark="expression_in"/> equal to 3 to the power of one half times x. <bookmark mark="rule_in"/>You can then use the rule which states that the power of a power is the product of the powers to rewrite the expression.
If we apply this rule and <bookmark mark="implication_1_in"/>set a equal to 3 and y equal to one half, we get the expression <bookmark mark="expression2_in"/>3 to the power of x over two is equal to 3 to the power of one half, all to the power of x. Finally, we can <bookmark mark="implication_2_in"/>rewrite 3 to the power of one half as the square root of 3, and we see that <bookmark mark="expression3_in"/>the expression 3 to the power of x over two is equal to the square root of 3 raised to the power of x.
"""
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
class Func_6_P_1_1_1_2_q(SophiaCursorScene):

    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions = ["$x=\sqrt[5]{625}$", "$x=\sqrt[625]{5}$", "$x=\log_{625}{5}$", "$x=\log_5{625}$"],
    #         correctAnswerIndex = 3,
    #         questionText=self.translate("Func_6_3.I4.q.question-text")
    #     )

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
                text="""
Now look at the <bookmark mark="expression_in"/>expression x plus 2 "a" to the power of negative 3 b.<bookmark mark="q_in"/> How can you rewrite this expression using the rules for exponential functions?"""
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

class Func_6_P_1_1_2_a(SophiaCursorScene):

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
                text="""
You can see that the <bookmark mark="negative_exponent"/>sign of the exponent of this expression is negative. So we can apply the <bookmark mark="rule_in"/>rule stating that a to the power of negative x is equal to one over a to the power of x. <bookmark mark="implication_1_in"/>If we set a equal to x plus 2 "a" and x equal to negative 3 "b", we <bookmark mark="cursor_park"/>get that x plus 2 "a" to the power of negative 3 "b"<bookmark mark="expression2_in"/> is equal to one over x plus 2 "a" to the power of 3 "b".
"""
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
class Func_6_P_1_1_1_3_q(SophiaCursorScene):

    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions = ["$x=\sqrt[5]{625}$", "$x=\sqrt[625]{5}$", "$x=\log_{625}{5}$", "$x=\log_5{625}$"],
    #         correctAnswerIndex = 3,
    #         questionText=self.translate("Func_6_3.I4.q.question-text")
    #     )

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
                text="""
Now look at the <bookmark mark="expression_in"/>expression 5 to the power of k minus two.<bookmark mark="q_in"/> How can you rewrite this expression using the rules for exponential functions?"""
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


class Func_6_P_1_1_3_a(SophiaCursorScene):

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
                text="""
Since we're subtracting in the exponent, we can use the rule stating that <bookmark mark="rule_in"/>a to the power of x minus y is equal to a to the power of x divided by a to the power of y. <bookmark mark="implication_1_in"/>If we set "a" equal to 5, x equal to k, and y equal to 2, we get <bookmark mark="step_1_transform"/>that 5 to the power of k minus two is <bookmark mark="step_1_in"/>equal to 5 to the power of k divided by 5 to the power of 2. Finally, we can <bookmark mark="implication_2_in"/>rewrite 5 to the power of 2 as 25, and we see <bookmark mark="step_2_1_in"/>that 5 to the power of k minus two <bookmark mark="step_2_in"/>is equal to one over 25 times 5 to the power of k.
"""
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
class Func_6_P_1_1_1_4_q(SophiaCursorScene):

    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions = ["$x=\sqrt[5]{625}$", "$x=\sqrt[625]{5}$", "$x=\log_{625}{5}$", "$x=\log_5{625}$"],
    #         correctAnswerIndex = 3,
    #         questionText=self.translate("Func_6_3.I4.q.question-text")
    #     )

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
                text="""
Take the <bookmark mark="expression_in"/>expression square root of x times x to the power of one point five a.<bookmark mark="q_in"/> Following the rules for exponential functions, which expression is this equal to?"""
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

class Func_6_P_1_1_a(SophiaCursorScene):

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
                text="""
We start by rewriting the square root of x as x to the power of one half, and get that <bookmark mark="expression_in_1"/>the square root of x times x to the power of one point five a is <bookmark mark="expression_in_2"/>equal to x to the power of one half times x to the power of one point five a. We can then<bookmark mark="rule_in"/> use the rule stating that a to the power of x times a to the power of y is equal to a to the power of x plus y to rewrite the expression.
If we apply this rule and <bookmark mark="implication_1_in"/>set a equal to x, x equal to one half, and y equal to one point five a, we get that <bookmark mark="expression2_in_1"/>the square root of x times x to the power of one point five a is <bookmark mark="expression2_in_2"/>equal to x to the power of one half plus one point five a. Finally, we can <bookmark mark="implication_2_in"/>rewrite one half plus one point five a as one plus three a over two, and we see that <bookmark mark="expression3_in"/>the square root of x times x to the power of one point five a is equal to x to the power of one plus three a over two.
"""
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
class Func_6_P_1_2_1_q(SophiaCursorScene):

    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions = ["$x=\sqrt[5]{625}$", "$x=\sqrt[625]{5}$", "$x=\log_{625}{5}$", "$x=\log_5{625}$"],
    #         correctAnswerIndex = 3,
    #         questionText=self.translate("Func_6_3.I4.q.question-text")
    #     )

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
                text="""
Now we have the <bookmark mark="expression_in"/>expression 4 to the power of x over two minus two. What expression of the form <bookmark mark="general_form_in"/>a times b to the power of x is<bookmark mark="q_in"/> it equivalent to?"""
        ) as tracker:
            
            self.wait_until_bookmark("expression_in")
            self.play(Write(expression), CursorUnderline(cursor, expression), run_time=.5)

            self.wait_until_bookmark("general_form_in")
            x,y,_ = general_form.get_center()+0.5*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(general_form), Write(downarrow), run_time=.5)

            self.wait_until_bookmark("q_in")
            self.draw_qmark(cursor, DOWN*2, run_time=3)

        self.wait(4)

class Func_6_P_2_1_a(SophiaCursorScene):

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
                text="""
The first thing we can do is use the rule stating that <bookmark mark="rule_in"/>a to the power of x minus y is equal to a to the power of x divided by a to the power of y, because we're subtracting two from x over two in the exponent. If we set<bookmark mark="implication_1_in"/> a equal to 4, x equal to x over two, and y equal to 2, we get <bookmark mark="step_1_transform"/>that 4 to the power of x over two minus two is <bookmark mark="step_1_in"/>equal to 4 to the power of x over two divided by 4 to the power of 2. Then, we can <bookmark mark="implication_2_in"/>rewrite 4 to the power of 2 as 16, and we see <bookmark mark="step_2_1_in"/>that 4 to the power of x over two minus two <bookmark mark="step_2_in"/>is equal to one over 16 times 4 to the power of x over two.
The next step will <bookmark mark="clean_up"/>be that we write the x over two in the exponent as <bookmark mark="step_3_1_in"/>one half times x. Then we can use the rule stating that<bookmark mark="rule_2_in"/> the power of a power is the product of the powers. So if we <bookmark mark="implication_3_in"/>set a equal to 4, x equal to x over two, and y equal to x, we get <bookmark mark="step_4_1_in"/>that 4 to the power of x over two minus two is <bookmark mark="step_4_in"/>equal to one over 16 times 4 to the power of one half, all to the power of x. Finally, we can <bookmark mark="implication_4_in"/>rewrite 4 to the power of one half as the square root of 4, which is equal to two. Now we see that <bookmark mark="step_5_1_in"/>the expression 4 to the power of x over two minus two is <bookmark mark="step_5_in"/>equal to one over 16 times two to the power of x.
"""
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
            x,y,_ = implication_2_1[1].get_center()+0.4*DOWN
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