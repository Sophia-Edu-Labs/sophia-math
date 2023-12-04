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

###############Exercises for Percentages Chapter ##########################

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

        money = ImageMobject(assets_folder / "img" / "colors_money_in_bank.png")
        money = money.scale(4/money.get_width()).move_to([-5, 1.4, 0])
        year = self.translate("words.year")
        
        bullets = VGroup(Tex("$\\bullet$ ", year, " 0: $100\$$", color=c1t, font_size=fs2), Tex("$\\bullet$ ", year, " 2: $144\$$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)

        # Action Sequence
        with self.voiceover(
                text="""
You have<bookmark mark="money_in"/> a bank account, that you <bookmark mark="dollars_1_in"/>put 100 Dollars into. Every year, you get the same amount of interest. After two years, you have <bookmark mark="dollars_2_in"/>144 Dollars in your account. What is the interest rate in percent?
"""
        ) as tracker:
            
            self.wait_until_bookmark("money_in")
            self.add_shift_sound(0.5)
            self.play(money.animate.shift(5*RIGHT), run_time=0.5)
            
            self.wait_until_bookmark("dollars_1_in")
            self.play(Write(bullets[0]), run_time=.5)

            self.wait_until_bookmark("dollars_2_in")
            self.play(Write(bullets[1]), run_time=.5)

        self.wait(4)

class Func_6_P_1_1_1_a(SophiaCursorScene):

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

        f_0 = MathTex("f(0)=", "a", "\\cdot b^0", "=100", color=BLUE_D, font_size=fs2)
        implication_1 = MathTex("\\Downarrow", "b^0=1", color=BLUE_D, font_size=fs2)
        a = MathTex("a=", "100", color=BLUE_D, font_size=fs2)
        step_1 = VGroup(f_0, implication_1, a).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(interests, DOWN, buff=.4)
        implication_1[1].scale(0.7)


        f_2 = MathTex("f(2)=", "100", "\\cdot b^2", "=144", color=GREEN_D, font_size=fs2)
        implication_2 = MathTex("\\Downarrow", "b^2=1.44", color=GREEN_D, font_size=fs2)
        b = MathTex("b=", "1.2", color=GREEN_D, font_size=fs2)
        step_2 = VGroup(f_2, implication_2, b).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(interests, DOWN, buff=.4)
        implication_2[1].scale(0.7)

        bullets = VGroup(Tex("$\\bullet$ ", year, " 0: $100\$$", color=c1t, font_size=fs2), Tex("$\\bullet$ ", year, " 2: $144\$$", color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)
        self.add(bullets)
        
        interest = self.translate("words.interest")
        sol = Tex(interest, ": $20\%$", color=c1t, font_size=fs2)

        # Action Sequence
        with self.voiceover(
                text="""
So the function describing the amount of money we have with yearly interest is<bookmark mark="money_out"/> f of x equals a times b to the power of x. We know that<bookmark mark="zero_highlight"/> after zero years, we have 100 dollars, so we get <bookmark mark="f_0"/>that f of zero, which equals a times b to the zero is equal to 100. Since <bookmark mark="implication_1_in"/>b to the power of 0 is 1, we can see <bookmark mark="a_in"/>that a is equal to 100...
We<bookmark mark="transition_1"/> also know that <bookmark mark="two_highlight"/>after two years, we have 144 dollars, so we get that <bookmark mark="f_2"/>f of two, which equals 100 times b to the power of two is equal to 144. So <bookmark mark="implication_2_in"/>b squared is equal to 1 point 4 4. Since the square root of 1 point 4 4 is 1 point 2, b is equal<bookmark mark="b_in"/> to 1.2. Therefore, <bookmark mark="transition_2"/>since b is 1 point 2, the interest rate is 20 percent.
"""
        ) as tracker:
            
            self.wait_until_bookmark("money_out")
            self.add_shift_sound(0.5)
            self.play(money.animate.shift(5*RIGHT), run_time=0.5)
            self.play(Write(interest_1))

            self.wait_until_bookmark("zero_highlight")
            self.play(bullets[0].animate.set_color(BLUE_D), run_time=.5)
            
            self.wait_until_bookmark("f_0")
            self.play(Write(f_0), bullets[0].animate.set_color(c1t), run_time=.5)

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

            self.wait_until_bookmark("b_in")
            x,y,_ = b[1].get_center()+0.4*DOWN
            self.play(CursorMoveResize(cursor,x,y), Write(b), run_time=.5)
            cursor.idle=True

            self.wait_until_bookmark("transition_2")
            self.add_shift_sound(0.5)
            self.play(VGroup(f_2, implication_2, b[0]).animate.shift(5*UP), run_time=.5)
            b[1].generate_target().move_to(interest_3[3])
            a[1].generate_target().move_to(interest_3[1])
            self.play(MoveToTarget(a[1]), MoveToTarget(b[1]), Unwrite(interest_2[3]), ReplacementTransform(interest_2[0], interest_3[0]), ReplacementTransform(interest_2[2], interest_3[2]), ReplacementTransform(interest_2[4], interest_3[4]), bullets.animate.shift(5*RIGHT))
            self.play(Write(sol))

        self.wait(4)






###############Exercises for Rules Chapter ##########################

##################################### Exercise Level: Easy (1)
#####################################
class Func_6_P_2_1_1_q(SophiaCursorScene):

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

class Func_6_P_2_1_a(SophiaCursorScene):

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
class Func_6_P_2_1_1_2_q(SophiaCursorScene):

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
class Func_6_P_2_1_1_3_q(SophiaCursorScene):

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
class Func_6_P_2_1_1_4_q(SophiaCursorScene):

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

class Func_6_P_2_4_a(SophiaCursorScene):

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
class Func_6_P_2_2_1_q(SophiaCursorScene):

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

        expression = MathTex("2\\cdot b^{-3x -3}", color=c1t, font_size=fs1).set_y(2)
        downarrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).set_y(1)
        general_form = MathTex("a\\cdot b^x", color=GREEN_D, font_size=fs1).set_y(0)

        giraffe = ImageMobject(assets_folder / "img" / "giraffe_thinking.png").move_to([-5,-1.6,0]).scale(0.7)

        # Action Sequence
        with self.voiceover(
                text="""
Now we have the <bookmark mark="expression_in"/>expression 2 times b to the power of negative 3 x minus 3. What expression of the form <bookmark mark="general_form_in"/>a times b to the power of x is<bookmark mark="q_in"/> it equivalent to?"""
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


class Func_6_P_2_2_a(SophiaCursorScene):

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
                text="""
The first thing we can do <bookmark mark="step_0"/>is write the negative 3 x minus 3 in the exponent <bookmark mark="step_1_in"/>as negative 3 times x plus 1. Then we can use the rule that <bookmark mark="implication_1_in"/>the power of a power is the product of the powers. So , we get <bookmark mark="step_2_in"/>that 2 times b to the power of negative 3 x minus 3 is <bookmark mark="step_2_1_in"/>equal to 2 times b to the power of negative 3, all to the power of x plus 1. Next we can <bookmark mark="implication_2_in"/>use the rule stating that a to the power of x plus y is equal to a to the power of x times a to the power of y. Thus, we get that <bookmark mark="step_3_in"/>2 times b to the power of negative 3 x minus 3 is <bookmark mark="step_3_1_in"/>equal to 2 times b to the power of negative 3, times b to the power of negative three, to the power of x.<bookmark mark="clean_up"/> Finally, we can use the <bookmark mark="implication_3_in"/>rule stating that a to the power of negative x is equal to one over a to the power of x. This leads us to our final result, which is <bookmark mark="step_4_in"/>that 2 times b to the power of negative 3 x minus 3 is <bookmark mark="step_4_1_in"/>equal to two over b to the power of 3, times one over b to the power of 3, all to the power of x.
"""
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

        expression = MathTex("2\\cdot \\pi^{-2x +1}", color=c1t, font_size=fs1).set_y(2)
        downarrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).set_y(1)
        general_form = MathTex("a\\cdot b^x", color=GREEN_D, font_size=fs1).set_y(0)

        sloth = ImageMobject(assets_folder / "img" / "sloth_thinking.png").move_to([-5,-1.6,0]).scale(0.5)

        # Action Sequence
        with self.voiceover(
                text="""
Check out the <bookmark mark="expression_in"/>expression 2 pi to the power of negative two x plus one. What expression of the form <bookmark mark="general_form_in"/>a times b to the power of x can<bookmark mark="q_in"/> we transform it into using the rules for exponential functions?"""
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
                text="""
We start by applying the rule <bookmark mark="rule_in"/>that a to the power of x minus y is equal to a to the power of x divided by a to the power of y. If we set<bookmark mark="implication_1_in"/> a equal to pi, x equal to 1, and y equal to 2 x, we get <bookmark mark="step_1_transform"/>that 2 times pi to the power of negative two x plus one is <bookmark mark="step_1_in"/>equal to 2 times pi to the power of one, divided by pi to the power of two x. Then, we can <bookmark mark="implication_2_in"/>rewrite pi to the power of one as pi, and we see <bookmark mark="step_2_1_in"/>that 2 times pi to the power of negative two x plus one is <bookmark mark="step_2_in"/>equal to 2 pi times one over pi to the power of two x.
<bookmark mark="clean_up"/>Next, we use the <bookmark mark="implication_3_in"/>rule that a to the power of x times y equals a to the power of x, raised to the power of y. We'll apply it to the pi to the power of two x in the denominator, and turn it into pi squared, raised to the power of x. This way, we get <bookmark mark="step_3_1_in"/>that 2 times pi to the power of negative two x plus one is <bookmark mark="step_3_in"/>equal to 2 pi times one over pi squared to the power of x. Finally, we can <bookmark mark="implication_4_in"/>raise the entire fraction to the power of x, because one over a to the power of x is equal to open bracket one over a, close bracket, all to the power of x. This leads us to our final result, which is <bookmark mark="step_4_in"/>that 2 times pi to the power of negative two x plus one is <bookmark mark="step_4_1_in"/>equal to 2 pi times one over pi squared, raised to the power of x.
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
class findLogExpressionQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_3.I2.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        sixtwentyfive = MathTex(f"{self.result}", "=", f"{self.base}^?", color=c1t, font_size=fs2).shift(UP*0.4)
        
        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2/qmark.get_width()).move_to([-5, -1.4, 0])

        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_6_3.findLogExpressionQuestionScene.voiceover"))
        ) as tracker:
            
            self.wait_until_bookmark("result_1")
            x,y,_ = sixtwentyfive[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(sixtwentyfive[0]), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("result_2")
            cursor.idle=False
            x,y,_ = sixtwentyfive[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sixtwentyfive[1]), Write(sixtwentyfive[2]), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("qmark")
            self.play(qmark.animate.shift(5*RIGHT), run_time=0.3)

        self.wait(4)

class findLogExpressionAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_6_3.I2.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        sixtwentyfive = MathTex(f"{self.result}", "=", f"{self.base}^?", color=c1t, font_size=fs2).shift(UP*0.4)
        sol_1 = MathTex(f"{self.base}^x", "=", f"{self.result}", color=c1t, font_size=fs2).next_to(sixtwentyfive, DOWN, buff=0.4)
        sol_2 = MathTex("\\Rightarrow", f"x=\\log_{{{self.base}}}{({self.result})}", color=c1t, font_size=fs2).next_to(sol_1, DOWN, buff=0.2)
        self.add(sixtwentyfive)


        start_base = np.array([.4,-1.2,0])
        start_log = np.array([1,-0.5,0])

        base = Bubble(texts = [self.evaluate_string(self.translate("Func_6_3.Func_6_3.I2.title.base"))], center=np.array([.6,-2.6, 0]), start_point=start_base, loc="t1", width=3, height=0.8)
        log = Bubble(texts = [self.evaluate_string(self.translate("Func_6_3.Func_6_3.I2.title.log"))], center=np.array([0,0.2, 0]), start_point=start_log, width=3, height=0.8)

        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_6_3.findLogExpressionAnswerScene.voiceover"))
        ) as tracker:
            
            self.wait_until_bookmark("sol_1")
            x,y,_ = sol_1[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(sol_1[0]), run_time=0.3)

            self.wait_until_bookmark("sol_2")
            x,y,_ = sol_1[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_1[1]), Write(sol_1[2]), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("sol_3")
            cursor.idle=False
            x,y,_ = sol_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_2[0]), Write(sol_2[1]), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("clean")
            self.play(FadeOut(sol_1), FadeOut(sixtwentyfive), run_time=0.3)

            self.wait_until_bookmark("bubble_1")
            x,y,_ = start_base
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(base.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(base), Create(base.text))
            cursor.idle=True

            self.wait_until_bookmark("bubble_2")
            x,y,_ = start_log
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(log.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(log), Create(log.text))
            cursor.idle=True

        self.wait(4)

#####################################
#####################################
class Func_6_P_3_1_1_q(findLogExpressionQuestionScene):
        
    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$x=\log_{256}{4}$", "$x=\log_4{256}$", "$x=\sqrt[4]{256}$", "$x=\sqrt[256]{4}$"],
            correctAnswerIndex = 1,
            questionText=self.translate("Func_6_3.P1.q.question-text")
        )
    
    # Main method for constructing the animation
    def construct(self):

        self.result = 256
        self.base = 4
        self.intro = self.translate("Func_6_3.P1.q.intro")

        super().construct()


class Func_6_P_3_1_1_a(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 256
            self.base = 4
            self.intro = self.translate("Func_6_3.P1.a.intro")

            super().construct()

class Func_6_P_3_1_1_b(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 256
            self.base = 4
            self.intro = self.translate("Func_6_3.P1.b.intro")

            super().construct()

class Func_6_P_3_1_1_c(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 256
            self.base = 4
            self.intro = self.translate("Func_6_3.P1.a.intro")

            super().construct()

class Func_6_P_3_1_1_d(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 256
            self.base = 4
            self.intro = self.translate("Func_6_3.P1.a.intro")

            super().construct()


#####################################
#####################################
class Func_6_P_3_1_2_q(findLogExpressionQuestionScene):
        
    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$x=\log_\\frac12{\\frac{1}{16}}$", "$x=\log_{\\frac{1}{16}}{\\frac12}$", "$x=\sqrt[\\frac12]{\\frac{1}{16}}$", "$x=\sqrt[25\\frac{1}{16}]{\\frac12}$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_6_3.P2.q.question-text")
        )
    
        # Main method for constructing the animation
    def construct(self):

        self.result = 1/16
        self.base = 1/2
        self.intro = self.translate("Func_6_3.P2.q.intro")

        super().construct()


class Func_6_P_3_1_2_a(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 1/16
            self.base = 1/2
            self.intro = self.translate("Func_6_3.P2.a.intro")

            super().construct()

class Func_6_P_3_1_2_b(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 1/16
            self.base = 1/2
            self.intro = self.translate("Func_6_3.P2.b.intro")

            super().construct()

class Func_6_P_3_1_2_c(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 1/16
            self.base = 1/2
            self.intro = self.translate("Func_6_3.P2.b.intro")

            super().construct()

class Func_6_P_3_1_2_d(findLogExpressionAnswerScene):
        
        # Main method for constructing the animation
        def construct(self):

            self.result = 256
            self.base = 4
            self.intro = self.translate("Func_6_3.P2.b.intro")

            super().construct()


#####################################
#####################################
class Func_6_P_3_1_3_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        balloon = ImageMobject(assets_folder / "img" / "hot_air_balloon.png")
        balloon = balloon.scale(3/balloon.get_width()).set_y(-6.5)


        per_minute = self.translate("general.per_minute")
        increase = self.translate("words.increase")

        bullets = VGroup(Tex("$\\bullet$ ", "t=0: $100$m", color=c1t, font_size=fs2), Tex("$\\bullet$ ", "$20\%$ ", increase, per_minute, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)

        # Action Sequence
        with self.voiceover(
                text="""
You're <bookmark mark="balloon_in"/>in a hot air baloon which at t equals 0 is at an altitude of <bookmark mark="altitude_in"/>100 meters. Every minute, the altitude of the baloon<bookmark mark="increase_in"/> increases by twenty percent. After how many minutes have you reached an altitude of 300 meters?
"""
        ) as tracker:
            
            self.wait_until_bookmark("balloon_in")
            self.play(balloon.animate.shift(8*UP), run_time=3)
            
            self.wait_until_bookmark("altitude_in")
            self.play(Write(bullets[0]), run_time=.5)

            self.wait_until_bookmark("increase_in")
            self.play(Write(bullets[1]), run_time=.5)

        self.wait(4)

class Func_6_P_3_1_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        balloon = ImageMobject(assets_folder / "img" / "hot_air_balloon.png")
        balloon = balloon.scale(3/balloon.get_width()).set_y(1.5)
        self.add(balloon)


        per_minute = self.translate("general.per_minute")
        increase = self.translate("words.increase")

        func_0 = MathTex("f(x)=", "a", "\\cdot ", "b", "^x", color=c1t, font_size=fs2)
        func_1 = MathTex("f(x)=", "100", "\\cdot ", "b", "^x", color=c1t, font_size=fs2)
        func_2 = MathTex("f(x)=", "100", "\\cdot ", "1.2", "^x", color=c1t, font_size=fs2)
        funcs = VGroup(func_0, func_1, func_2).set_y(2)
        ud = MathTex("\\Updownarrow", "f(x)=300", color=c1t, font_size=fs2).next_to(funcs, DOWN, buff=.6)
        log = MathTex("x=\\log", "_{1.2}", "(3)", color=c1t, font_size=fs1).next_to(ud, DOWN, buff=.6)

        bullets = VGroup(Tex("$\\bullet$ t=0: ", "$100$", "m", color=c1t, font_size=fs2), Tex("$\\bullet$ ", "$20\%$ ", increase, per_minute, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)
        self.add(bullets)

        # Action Sequence
        with self.voiceover(
                text="""
We'll model the height of the baloon using an exponential function of the <bookmark mark="func_in"/>form f of x equals a times b to the power of x. ... Since <bookmark mark="a_1"/>at t equals zero, the height of the baloon is 100, we <bookmark mark="a_2"/> set a to 100. ... And since the height of the baloon increases<bookmark mark="b_1"/> by 20 percent every minute, we set <bookmark mark="b_2"/>b to 1.2. ...
<bookmark mark="clean_up"/>Now we want the value of <bookmark mark="ud_in"/>x for which f of x equals 300. ... We can find <bookmark mark="log_x_in"/>x by using the logarithm. The base of the logarithm <bookmark mark="base_in"/> is equal to 1 point 2, because that's the base of the exponential function. ... And the argument of the logarithm is <bookmark mark="argument_in"/>equal to 3, because we want the height to triple. ... Therefore, the value of x is equal to the logarithm of 3, to the base of 1 point 2. 
"""
        ) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(balloon.animate.shift(6*UP), Write(func_0), run_time=3)
            
            self.wait_until_bookmark("a_1")
            self.play(bullets[0][1].animate.set_color(BLUE_D), run_time=.5)

            self.wait_until_bookmark("a_2")
            bc_1 = bullets[0][1].copy()
            bc_1.generate_target().move_to(func_1[1])
            self.play(MoveToTarget(bc_1), Unwrite(func_0[1]), ReplacementTransform(func_0[0], func_1[0]), ReplacementTransform(func_0[2], func_1[2]), ReplacementTransform(func_0[3], func_1[3]), ReplacementTransform(func_0[4], func_1[4]), run_time=1)

            self.wait_until_bookmark("b_1")
            self.play(bullets[1][1].animate.set_color(GREEN_D), run_time=.5)

            self.wait_until_bookmark("b_2")
            bc_2 = bullets[1][1].copy()
            bc_1.generate_target().move_to(func_2[1])
            self.play(MoveToTarget(bc_1), Unwrite(func_1[3]), ReplacementTransform(bc_2, func_2[3].set_color(GREEN_D)), ReplacementTransform(func_1[0], func_2[0]), ReplacementTransform(func_1[2], func_2[2]), ReplacementTransform(func_1[4], func_2[4]), run_time=1)

            self.wait_until_bookmark("clean_up")
            self.play(FadeOut(bullets), run_time=.5)

            self.wait_until_bookmark("ud_in")
            self.play(Write(ud), run_time=.5)

            self.wait_until_bookmark("log_x_in")
            self.play(Write(log[0]), run_time=.5)

            self.wait_until_bookmark("base_in")
            self.play(Write(log[1]), run_time=.5)

            self.wait_until_bookmark("argument_in")
            self.play(Write(log[2]), run_time=.5)

        self.wait(4)


#####################################
#####################################
class Func_6_P_3_1_4_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        design = ImageMobject(assets_folder / "img" / "designer_clothes.png")
        design = design.scale(2.6/design.get_width()).move_to([-5,1.6,0])


        year = self.translate("words.year")
        decrease = self.translate("words.decrease")
        value = self.translate("words.value")
        budget = self.translate("words.budget")

        bullets = VGroup(Tex("$\\bullet$ ", value, ": $200$", color=c1t, font_size=fs2), Tex("$\\bullet$ ", budget, ": $50\$$", color=c1t, font_size=fs2), Tex("$\\bullet$ ", decrease, ": $40$\%", year, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)

        # Action Sequence
        with self.voiceover(
                text="""
I want to buy a <bookmark mark="clothing_in"/>fancy piece of clothing which <bookmark mark="cost_in"/>costs 200 dollars. Sadly, I can't afford it, because I only have a <bookmark mark="budget_in"/>budget of 50 dollars. Luckily, the value of the clothing<bookmark mark="decrease_in"/> decreases by 40 percent every year. After how many years will I be able to afford the piece?
"""
        ) as tracker:
            
            self.wait_until_bookmark("clothing_in")
            self.add_shift_sound(0.5)
            self.play(design.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("cost_in")
            self.play(Write(bullets[0]), run_time=.5)

            self.wait_until_bookmark("budget_in")
            self.play(Write(bullets[1]), run_time=.5)

            self.wait_until_bookmark("decrease_in")
            self.play(Write(bullets[2]), run_time=.5)

        self.wait(4)

class Func_6_P_3_1_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        design = ImageMobject(assets_folder / "img" / "designer_clothes.png")
        design = design.scale(2.6/design.get_width()).move_to([0,1.6,0])
        self.add(design)

        year = self.translate("words.year")
        decrease = self.translate("words.decrease")
        value = self.translate("words.value")
        budget = self.translate("words.budget")

        func_0 = MathTex("f(x)=", "a", "\\cdot ", "b", "^x", color=c1t, font_size=fs2)
        func_1 = MathTex("f(x)=", "200", "\\cdot ", "b", "^x", color=c1t, font_size=fs2)
        func_2 = MathTex("f(x)=", "200", "\\cdot ", "0.6", "^x", color=c1t, font_size=fs2)
        funcs = VGroup(func_0, func_1, func_2).set_y(2)
        ud = MathTex("\\Updownarrow", "f(x)=50", color=c1t, font_size=fs2).next_to(funcs, DOWN, buff=.6)
        log = MathTex("x=\\log", "_{0.6}", "(\\tfrac{1}{4})", color=c1t, font_size=fs1).next_to(ud, DOWN, buff=.6)

        bullets = VGroup(Tex("$\\bullet$ ", value+": ", "$200$", "\$", color=c1t, font_size=fs2), Tex("$\\bullet$ ", budget, ": $50\$$", color=c1t, font_size=fs2), Tex("$\\bullet$ ", decrease, ": ", "$40$", "\%", year, color=c1t, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(-1.2)
        self.add(bullets)

        # Action Sequence
        with self.voiceover(
                text="""
We'll model the depreciation of the clothing's value using an exponential function of the <bookmark mark="func_in"/>form f of x equals "a" times b to the power of x. ... Since <bookmark mark="a_1"/>initially, the clothing is worth 200 dollars, we <bookmark mark="a_2"/> set a to 200. ... And since the value decreases<bookmark mark="b_1"/> by 40 percent every year, we set <bookmark mark="b_2"/>b to 0.6, because if fourty percent of the value dissappear, sixty percent remain. ...
<bookmark mark="clean_up"/>Now we want to findthe value of <bookmark mark="ud_in"/>x for which f of x equals 50. ... We can find <bookmark mark="log_x_in"/>x by using the logarithm. The base of the logarithm <bookmark mark="base_in"/> is equal to 0.6, because that's the base of the exponential function. ... And the argument of the logarithm is <bookmark mark="argument_in"/>equal to one-fourth, because we want the value to reduce from 200 to 50, which is a quarter of its original value. ... Therefore, the value of x is equal to the logarithm of one-fourth, to the base of 0.6. 
"""
        ) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(design.animate.shift(5*LEFT), Write(func_0))
            
            self.wait_until_bookmark("a_1")
            self.play(bullets[0][2].animate.set_color(BLUE_D), run_time=.5)

            self.wait_until_bookmark("a_2")
            bc_1 = bullets[0][2].copy()
            self.play(ReplacementTransform(bc_1, func_0[1]), ReplacementTransform(func_0[0], func_1[0]), ReplacementTransform(func_0[2], func_1[2]), ReplacementTransform(func_0[3], func_1[3]), ReplacementTransform(func_0[4], func_1[4]), run_time=1)

            self.wait_until_bookmark("b_1")
            self.play(bullets[2][3].animate.set_color(GREEN_D), run_time=.5)

            self.wait_until_bookmark("b_2")
            bc_2 = bullets[2][3].copy()
            bc_1.generate_target().move_to(func_2[1])
            self.play(MoveToTarget(bc_1), Unwrite(func_1[3]), ReplacementTransform(bc_2, func_2[3].set_color(GREEN_D)), ReplacementTransform(func_1[0], func_2[0]), ReplacementTransform(func_1[2], func_2[2]), ReplacementTransform(func_1[4], func_2[4]), run_time=1)

            self.wait_until_bookmark("clean_up")
            self.play(FadeOut(bullets), run_time=.5)

            self.wait_until_bookmark("ud_in")
            self.play(Write(ud), run_time=.5)

            self.wait_until_bookmark("log_x_in")
            self.play(Write(log[0]), run_time=.5)

            self.wait_until_bookmark("base_in")
            self.play(Write(log[1]), run_time=.5)

            self.wait_until_bookmark("argument_in")
            self.play(Write(log[2]), run_time=.5)

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