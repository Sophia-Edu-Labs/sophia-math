# Import necessary libraries and modules
from abc import ABCMeta, abstractmethod
from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
from sophialib.styles.sophiascene import (CursorMoveToCurved, CursorPositionTracker,
                                          CursorPositionTracking,
                                          CursorResizeDefault, SophiaScene,
                                          assets_folder, AltCursor,
                                          SophiaCursorScene, CursorMoveTo,
                                          CursorMoveResize, Notepad, CursorMarkAxis, Bubble)
from sophialib.styles.styleconstants import *
from sophialib.styles.sophiaobjects import *
from manim import *
from PIL import Image
import numpy as np
from pathlib import Path
from sophialib.tasks.sophiataskdefinition import SophiaFreeTextTaskDetail, SophiaTaskDefinition
import ast 

##################################### intro numbers 1: Overview
#####################################
class Calc_1_numbers_theory_intro_and_naturals_I_1_q(SophiaCursorScene):

    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions=ast.literal_eval(self.translate("Calc_1.Sequences.1q.answer-options")),
    #         correctAnswerIndex=1,
    #         questionText = self.translate("Calc_1.Sequences.1q.question-text")
    #     )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Calc_1.Sequences.1q.title"))

        naturals = MathTex("\\mathbb N: ", "\\,1, 2, 3, 4, 5, \\hdots", color=c1t, font_size=fs2)
        integers = MathTex("\\mathbb Z: ", "\\,\\hdots, -2, -1, 0, 1, \\hdots", color=c1t, font_size=fs2)
        rationals = MathTex("\\mathbb Q: ", "\\,\\tfrac{1}{2}, \\tfrac{2}{3}, -\\tfrac{3}{4}, \\hdots", color=c1t, font_size=fs2)
        reals = MathTex("\\mathbb R: ", "\\,\\pi, \\sqrt{2}, -1, \\hdots", color=c1t, font_size=fs2)
        number_systems = VGroup(naturals, integers, rationals, reals).scale(.9).arrange(DOWN, buff=0.4, aligned_edge=LEFT).set_y(1.2)

        numbers = ImageMobject(assets_folder / "img" / "numbers.png").scale(0.7).move_to([-5,0,0])
        example_1 = MathTex("-2", color=c1t, font_size=fs2).next_to(number_systems, DOWN, buff=0.6)
        example_2 = MathTex("\\frac34", color=c1t, font_size=fs2).next_to(number_systems, DOWN, buff=0.6)

        # Action Sequence
        with self.voiceover(
                text=
                """
Let's talk <bookmark mark="numbers_in"/>about numbers. There are different kinds of number systemts that are used in mathematics. Here are some of the most important examples:
There are <bookmark mark="naturals_in"/>natural numbers, which are the numbers we use to count things. <bookmark mark="naturals_count"/>One, two, three, four, five, and so on. Sometimes the zero is included in the natural numbers, and sometimes it is not.
Then there are <bookmark mark="integers_in"/>integers, which are the natural numbers, but also their negative counterparts. <bookmark mark="integers_count"/>So, negative two, negative one, zero, one, two, and so on.
Then there are <bookmark mark="rationals_in"/>rational numbers, which are numbers that can be expressed as a fraction of two integers. <bookmark mark="rationals_count"/>For example, one half, two thirds, negative three quarters, and so on.
And finally, there are <bookmark mark="reals_in"/>real numbers, which are all the numbers that can be expressed as a decimal number. <bookmark mark="reals_count"/>For example, pi, the square root of two, negative one, and so on.
As an example, consider the <bookmark mark="neg_two_in"/>number negative two. It is <bookmark mark="naturals_red"/>not a natural number, because it is negative, and negative numbers are always positive, or zero. It is <bookmark mark="integers_green"/>an integer, because it is the negative of a natural number. It is <bookmark mark="rationals_green"/>also a rational number, because it can be expressed as a fraction of two integers, for example as negative two, divided by one. And it is also <bookmark mark="reals_green"/>a real number, because it can be expressed as a decimal number.
Now it's your turn: Consider the number <bookmark mark="example_2"/>three quarters. Which of the number systems does it belong to?
"""
        ) as tracker:
            
            self.play(Write(title))
            
            self.wait_until_bookmark("numbers_in")
            self.add_shift_sound(.5)
            self.play(numbers.animate.shift(RIGHT*5), run_time=.5)

            self.wait_until_bookmark("naturals_in")
            self.add_shift_sound(.5)
            self.play(numbers.animate.shift(RIGHT*5), Write(naturals[0]), run_time=.5)

            self.wait_until_bookmark("naturals_count")
            self.play(Write(naturals[1]))

            self.wait_until_bookmark("integers_in")
            self.play(Write(integers[0]))

            self.wait_until_bookmark("integers_count")
            self.play(Write(integers[1]))

            self.wait_until_bookmark("rationals_in")
            self.play(Write(rationals[0]))

            self.wait_until_bookmark("rationals_count")
            self.play(Write(rationals[1]))

            self.wait_until_bookmark("reals_in")
            self.play(Write(reals[0]))

            self.wait_until_bookmark("reals_count")
            self.play(Write(reals[1]))

            self.wait_until_bookmark("neg_two_in")
            self.play(Write(example_1))

            self.wait_until_bookmark("naturals_red")
            self.play(naturals.animate.set_color(RED))

            self.wait_until_bookmark("integers_green")
            self.play(integers.animate.set_color(GREEN))

            self.wait_until_bookmark("rationals_green")
            self.play(rationals.animate.set_color(GREEN))

            self.wait_until_bookmark("reals_green")
            self.play(reals.animate.set_color(GREEN))

            self.wait_until_bookmark("example_2")
            self.play(ReplacementTransform(example_1, example_2), number_systems.animate.set_color(c1t))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

        
class Calc_1_numbers_theory_intro_and_naturals_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Calc_1.Sequences.1q.title"))
        self.add(title)

        naturals = MathTex("\\mathbb N: ", "\\,1, 2, 3, 4, 5, \\hdots", color=c1t, font_size=fs2)
        integers = MathTex("\\mathbb Z: ", "\\,\\hdots, -2, -1, 0, 1, \\hdots", color=c1t, font_size=fs2)
        rationals = MathTex("\\mathbb Q: ", "\\,\\tfrac{1}{2}, \\tfrac{2}{3}, -\\tfrac{3}{4}, \\hdots", color=c1t, font_size=fs2)
        reals = MathTex("\\mathbb R: ", "\\,\\pi, \\sqrt{2}, -1, \\hdots", color=c1t, font_size=fs2)
        number_systems = VGroup(naturals, integers, rationals, reals).scale(.9).arrange(DOWN, buff=0.4, aligned_edge=LEFT).set_y(1.2)
        self.add(number_systems)

        example_2 = MathTex("\\frac34", color=c1t, font_size=fs2).next_to(number_systems, DOWN, buff=0.6)
        self.add(example_2)

        x_in_n = MathTex("x \\in \\mathbb N", color=c1t, font_size=fs2)
        downarrow_1 = MathTex("\\Downarrow", color=c3t, font_size=fs3)
        x_in_z = MathTex("x \\in \\mathbb Z", color=c1t, font_size=fs2)
        downarrow_2 = MathTex("\\Downarrow", color=c3t, font_size=fs3)
        x_in_Q = MathTex("x \\in \\mathbb Q", color=c1t, font_size=fs2)
        downarrow_3 = MathTex("\\Downarrow", color=c3t, font_size=fs3)
        x_in_R = MathTex("x \\in \\mathbb R", color=c1t, font_size=fs2)
        x_in = VGroup(x_in_n, downarrow_1, x_in_z, downarrow_2, x_in_Q, downarrow_3, x_in_R).arrange(DOWN, buff=.2).set_y(1.2)

        # Action Sequence
        with self.voiceover(
                text=
                """
The fraction three quarters is<bookmark mark="naturals_red"/> not a natural number, because it is not a positive whole number. And it's not a negative whole number either, so it is <bookmark mark="integers_red"/>not an integer. But it is <bookmark mark="rationals_green"/>a rational number, because it can be expressed as a fraction of two integers, for example as three divided by four. And it is also <bookmark mark="reals_green"/>a real number, because it can be expressed as a decimal number, for example as 0.75.
In general, we can say that<bookmark mark="x_in_n_in"/> if a number x is an element of the natural number, which we denote with this sign that looks like an e, then <bookmark mark="x_in_z"/>it is also an element of the integers. If a number is an element of the integers, then <bookmark mark="x_in_Q"/>it is also an element of the rational numbers. And if a number is an element of the rational numbers, then <bookmark mark="x_in_R"/>it is also an element of the real numbers.
"""
        ) as tracker:
            
            self.wait_until_bookmark("naturals_red")
            self.play(naturals.animate.set_color(RED))

            self.wait_until_bookmark("integers_red")
            self.play(integers.animate.set_color(RED))

            self.wait_until_bookmark("rationals_green")
            self.play(rationals.animate.set_color(GREEN))

            self.wait_until_bookmark("reals_green")
            self.play(reals.animate.set_color(GREEN))
            
            self.wait_until_bookmark("x_in_n_in")
            self.add_shift_sound(.5)
            self.play(number_systems.animate.shift(5*RIGHT), Unwrite(example_2), Write(x_in_n), run_time=.5)

            self.wait_until_bookmark("x_in_z")
            self.play(Write(downarrow_1), Write(x_in_z))

            self.wait_until_bookmark("x_in_Q")
            self.play(Write(downarrow_2), Write(x_in_Q))

            self.wait_until_bookmark("x_in_R")
            self.play(Write(downarrow_3), Write(x_in_R))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)

##################################### intro numbers 1: Overview
#####################################
class Calc_1_numbers_theory_intro_and_naturals_I_2_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        natural_numbers = self.translate("Calc_1.Sequences.2q.natural-numbers")
        title = self.add_title(natural_numbers+" $\\mathbb N$")

        slow_numbers = ImageMobject(assets_folder / "img" / "slow_numbers.png").scale(0.6).set_y(1)

        # Action Sequence
        with self.voiceover(
                text=
                """
Ok, but now let's take things a bit more slowly. Why do we need these different number systems? We'll start with the natural numbers, that are written <bookmark mark="title_in"/>
"""
        ) as tracker:
            
            self.play(FadeIn(slow_numbers))

            self.wait_until_bookmark("title_in")
            self.play(Write(title), FadeOut(slow_numbers))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#



##################################### intro numbers 1: Overview
#####################################
class it_test_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        natural_numbers = self.translate("Calc_1.Sequences.2q.natural-numbers")
        title = self.add_title(natural_numbers+" $\\mathbb N$")

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").scale(0.8).set_y(1)

        x_0_1 = Tex("$X:0$ or $1$", color=c1t, font_size=fs2).set_y(1)
        align_1 = MathTex("X \\sim \\text{Coin}\\left(\\tfrac 12\\right), \\\\ \\text{i.e.} P{X = 0} = P{X =1} = \\tfrac 12  \\,.", color=c1t, font_size=fs3).set_y(1)
        align_2 = MathTex(r"H=1", color=c1t, font_size=fs3).set_y(1)

        # Action Sequence
        with self.voiceover(
                text=
                """
<bookmark mark="question"/>Question: What is information? We will provide a precise answer to this deep question, but we start with something very simple: a coin toss or <bookmark mark="x_0_1"/>a random bit X with two outcomes, which we will refer to as 0 and 1. Before observing the outcome, we consider both alternatives to be equally likely.
<bookmark mark="align_in"/>Upon observing X, we have received one bit of information, which we take as the reference point (i.e.~unit) for everything else.
This leads to our first insight:
A single random bit <bookmark mark="align_2"/>provides H equals 1 bit of information.
"""
        ) as tracker:
            
            self.wait_until_bookmark("question")
            self.play(FadeIn(qmark))

            self.wait_until_bookmark("x_0_1")
            self.play(Write(x_0_1), FadeOut(qmark))

            self.wait_until_bookmark("align_in")
            self.play(Write(align_1), Unwrite(x_0_1))

            self.wait_until_bookmark("align_2")
            self.play(Write(align_2), Unwrite(align_1))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
#####################################
class it_test_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        natural_numbers = self.translate("Calc_1.Sequences.2q.natural-numbers")
        title = self.add_title(natural_numbers+" $\\mathbb N$")

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").scale(0.8).set_y(1)
        align_1 = MathTex(r"X_i \stackrel{iid}{\sim} \text{Coin}\left( \tfrac 12 \right), \quad i =1,\dots,n", color=c1t, font_size=fs3).set_y(1)

        

        # Action Sequence
        with self.voiceover(
                text=
                """
Now: <bookmark mark="question"/>What if we repeat the process and generate a sequence of n independent random bits? 
... ... ...<bookmark mark="align"/>
We expect to gain $n$ bits of information. Additivity of information for independent random events is a normative assertion (or axiom) about what we call information.
This leads us to our next insight: ...
n independent random bits provide $H=n$ bits of information
...
"""
        ) as tracker:
            
            self.wait_until_bookmark("question")
            self.play(FadeIn(qmark))

            self.wait_until_bookmark("align")
            self.play(Write(align_1), FadeOut(qmark))


        self.wait(4)
#
        

#####################################
class it_test_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        natural_numbers = self.translate("Calc_1.Sequences.2q.natural-numbers")
        title = self.add_title(natural_numbers+" $\\mathbb N$")

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").scale(0.8).set_y(1)
        align_1 = MathTex(r"x=(x_1, \dots, x_n) \in \{0,1\}^n, \\ |\{0,1\}|^n = 2^n", color=c1t, font_size=fs3).set_y(1)
        align_2 = MathTex(r"H=\log m", color=c1t, font_size=fs3).set_y(1)
        

        # Action Sequence
        with self.voiceover(
                text=
                """
The next thing we ask is this: <bookmark mark="question"/> How can we translate this insight into a mathematical definition of information? We see that the space of possible outcomes grows exponentially with the number of random <bookmark mark="align"/>bits n: ...
... ... ...
Now that suggests that information should be related to the logarithm of the number of possible outcomes. 
This leads us to our next insight: 
An event with  m equally likely outcomes<bookmark mark="align_2"/> conveys H equals log m bits of information.
...
"""
        ) as tracker:
            
            self.wait_until_bookmark("question")
            self.play(FadeIn(qmark))

            self.wait_until_bookmark("align")
            self.play(Write(align_1), FadeOut(qmark))

            self.wait_until_bookmark("align_2")
            self.play(Write(align_2), Unwrite(align_1))

        self.wait(4)
#    

##################################### intro numbers 4: Units of Information
#####################################
class it_test_4(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        natural_numbers = self.translate("Calc_1.Sequences.2q.natural-numbers")
        title = self.add_title(natural_numbers+" $\\mathbb N$")

        align_1 = MathTex("\\text{ld} \\, m = \\log_2 m  \\quad \\longrightarrow \\quad \\text{Bits}", color=c1t, font_size=fs3).set_y(1)
        align_2 = MathTex("\\ln m = \\log_e m  \\quad \\longrightarrow \\quad \\text{Nats}", color=c1t, font_size=fs3).set_y(0)
        align_3 = MathTex("\\log_{256} m  \\quad \\longrightarrow \\quad \\text{Bytes}", color=c1t, font_size=fs3).set_y(-1)

        # Action Sequence
        with self.voiceover(
                text=
                '''
To use bits as the units of information is common, but not a necessity. The unit depends on the base of the logarithm, which is conventional. For instance,
<bookmark mark="align_1"/> Using the base 2, we get Bits; 
<bookmark mark="align_2"/> base e, we get Nats;
<bookmark mark="align_3"/> and base 256, we get Bytes.
We will always assume base 2, unless a different base is explicitly specified. 
'''
        ) as tracker:
            
            self.wait_until_bookmark("align_1")
            self.play(Write(align_1))

            self.wait_until_bookmark("align_2")
            self.play(Write(align_2))

            self.wait_until_bookmark("align_3")
            self.play(Write(align_3))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class it_test_4(SophiaCursorScene):
    def construct(self):
        super().construct()
        self.add_mathgrid()
        natural_numbers = self.translate("Calc_1.Sequences.2q.natural-numbers")
        title = self.add_title(natural_numbers + " $\mathbb N$")
        qmark = ImageMobject(assets_folder / "img" / "qmark.png").scale(0.8).set_y(1)
        align_1 = MathTex(r"\text{To use bits as the units of information is common, but not a necessity. The unit depends on the base of the logarithm, which is conventional, for instance}", color=c1t, font_size=fs3).set_y(1)
        align_2 = MathTex(r"\text{ld} , m = \log_2 m & \quad \longrightarrow \quad \text{Bits}\\", color=c1t, font_size=fs3).set_y(1)
        align_3 = MathTex(r"\text{ln} m = \log_e m & \quad \longrightarrow \quad \text{Nats}\\", color=c1t, font_size=fs3).set_y(1)
        align_4 = MathTex(r"\log_{256} m & \quad \longrightarrow \quad \text{Bytes}", color=c1t, font_size=fs3).set_y(1)
        with self.voiceover(
        text=
        """
        Remark: To use bits as the units of information is common, but not a necessity. The unit depends on the base of the logarithm, which is conventional, for instance:

        ld m equals log base 2 m goes to bits,
        ln m equals log base e m goes to nats,
        log base 256 m goes to bytes.
        We will always assume base 2, unless a different base is explicitly specified.
        """
        ) as tracker:
            self.wait_until_bookmark("question")
            self.play(FadeIn(qmark))
            self.wait_until_bookmark("align_1")
            self.play(Write(align_1), FadeOut(qmark))
            self.wait_until_bookmark("align_2")
            self.play(Write(align_2), Unwrite(align_1))
            self.wait_until_bookmark("align_3")
            self.play(Write(align_3), Unwrite(align_2))
            self.wait_until_bookmark("align_4")
            self.play(Write(align_4), Unwrite(align_3))
        self.wait(4)

#####################################


class it_test_4(SophiaCursorScene):
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Title for the video
        title = self.add_title("Units of Information")

        # Creating the text for the remark
        remark_text = Text("Remark:", color=BLUE, font_size=fs2).set_y(2)

        # Creating the LaTeX for the different units of information
        units_of_info = MathTex(
            r"\text{ld} \, m = \log_2 m & \quad \longrightarrow \quad \text{Bits}\\",
            r"\ln m = \log_e m & \quad \longrightarrow \quad \text{Nats}\\",
            r"\log_{256} m & \quad \longrightarrow \quad \text{Bytes}",
            font_size=fs3, color=c1t
        ).next_to(remark_text, DOWN)

        # Base assumption text
        base_assumption = Text(
            "We will always assume base 2, unless otherwise specified.",
            font_size=fs2, color=c1t
        ).next_to(units_of_info, DOWN)

        # Action Sequence
        with self.voiceover(
            text=
            """
            <bookmark mark="remark"/>In the study of information, we commonly use bits as the unit of information. However, this is not a necessity. The unit of information depends on the base of the logarithm used. For instance,
            <bookmark mark="units_of_info"/>if we use base 2, we get bits. If we use the natural logarithm, we get nats. And for base 256, the unit is bytes. 
            <bookmark mark="base_assumption"/>In our discussions, we will always assume base 2, unless a different base is explicitly specified.
            """
        ) as tracker:

            self.wait_until_bookmark("remark")
            self.play(Write(remark_text))

            self.wait_until_bookmark("units_of_info")
            self.play(Write(units_of_info))

            self.wait_until_bookmark("base_assumption")
            self.play(Write(base_assumption))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)




class it_test_5(SophiaCursorScene):
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Title for the video
        title = self.add_title("Examples of Calculating Information")
        self.add(title)

        # Creating the LaTeX for the Dice example
        dice_example = MathTex(
            r"\text{Dice: }",
            r"H = \log 6 = 1 + \log 3 \approx 2.585 \, \text{bit}",
            font_size=fs3, color=c1t
        ).set_y(2)

        # Creating the LaTeX for the Swiss Lotto example
        lotto_example = MathTex(
            r"\text{Swiss Lotto: }\\",
            r"m = \binom{42}{6} = \frac{42!}{6!\, 36!} = 5,245,786,\\",
            r"\quad H = \log m \approx 22.3227",
            font_size=fs3, color=c1t
        ).next_to(dice_example, DOWN, buff=1)

        # Action Sequence
        with self.voiceover(
            text=
            """
            <bookmark mark="dice_example"/>Let's consider two examples. First, imagine rolling a fair dice. Each outcome has a probability of one-sixth. The amount of information provided in this case is about 2.585 bits.
            <bookmark mark="lotto_example"/>Next, let's look at the Swiss Lotto, which draws 6 balls from 42 without replacement. The number of possible outcomes here is over 5 million, translating to approximately 22.3227 bits of information.
            """
        ) as tracker:

            self.wait_until_bookmark("dice_example")
            self.play(Write(dice_example))

            self.wait_until_bookmark("lotto_example")
            self.play(Write(lotto_example))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


# #####################################
# class it_test_6(SophiaCursorScene):
# def construct(self):
# super().construct()
# self.add_mathgrid()
# natural_numbers = self.translate("Calc_1.Sequences.2q.natural-numbers")
# title = self.add_title(natural_numbers + " $\mathbb N$")
# qmark = ImageMobject(assets_folder / "img" / "qmark.png").scale(0.8).set_y(1)
# align_1 = MathTex(r"\text{Example: Swiss Lotto draws } 6 \text{ balls from } 42 \text{ balls uniformly at random without replacement. The number of possible outcomes and the information provided in the news every week is}", color=c1t, font_size=fs3).set_y(1)
# align_2 = MathTex(r"m = \binom {42} 6 = \frac{42!}{6!, 36!} = 5,245,786, \quad H = \log m \approx 22.3227", color=c1t, font_size=fs3).set_y(1)
# Action Sequence
# with self.voiceover(
# text=
# """
# Example: Swiss Lotto draws 6 balls from 42 balls uniformly at random without replacement. The number of possible outcomes and the information provided in the news every week is

# m equals 42 choose 6 equals 42 factorial over 6 factorial times 36 factorial equals 5,245,786,
# H equals log m approximately 22.3227
# """
# ) as tracker:
# self.wait_until_bookmark("question")
# self.play(FadeIn(qmark))
# self.wait_until_bookmark("align_1")
# self.play(Write(align_1), FadeOut(qmark))
# self.wait_until_bookmark("align_2")
# self.play(Write(align_2), Unwrite(align_1))
# self.wait(4)
# #####################################
# class it_test_7(SophiaCursorScene):
# def construct(self):
# super().construct()
# self.add_mathgrid()
# natural_numbers = self.translate("Calc_1.Sequences.2q.natural-numbers")
# title = self.add_title(natural_numbers + " $\mathbb N$")
# qmark = ImageMobject(assets_folder / "img" / "qmark.png").scale(0.8).set_y(1)
# align_1 = MathTex(r"\text{Question: How can information be defined, if outcomes are not equally likely?}", color=c1t, font_size=fs3).set_y(1)
# Action Sequence
# with self.voiceover(
# text=
# """
# Question: How can information be defined, if outcomes are not equally likely?
# """
# ) as tracker:
# self.wait_until_bookmark("question")
# self.play(FadeIn(qmark))
# self.wait_until_bookmark("align_1")
# self.play(Write(align_1), FadeOut(qmark))
# self.wait(4)
# #####################################
# class it_test_8(SophiaCursorScene):
# def construct(self):
# super().construct()
# self.add_mathgrid()
# natural_numbers = self.translate("Calc_1.Sequences.2q.natural-numbers")
# title = self.add_title(natural_numbers + " $\mathbb N$")
# qmark = ImageMobject(assets_folder / "img" / "qmark.png").scale(0.8).set_y(1)
# align_1 = MathTex(r"\text{Example: Imagine a binary event with asymmetric outcomes}", color=c1t, font_size=fs3).set_y(1)
# align_2 = MathTex(r"\Prob{X=0} = \tfrac{1}{1024} = 2^{-10}, \quad \Prob{X=1} = \tfrac{1023}{1024} = 1- 2^{-10}", color=c1t, font_size=fs3).set_y(1)
# align_3 = MathTex(r"\text{To be consistent with our previous definition, the information associated with observing } 0 \text{ should be } 10 \text{ bits}.", color=c1t, font_size=fs3).set_y(1)
# Action Sequence
# with self.voiceover(
# text=
# """
# Example: Imagine a binary event with asymmetric outcomes

# Probability of X equals 0 is 1/1024 equals 2 to the power of negative 10,
# Probability of X equals 1 is 1023/1024 equals 1 minus 2 to the power of negative 10

# To be consistent with our previous definition, the information associated with observing 0 should be 10 bits.
# """
# ) as tracker:
# self.wait_until_bookmark("question")
# self.play(FadeIn(qmark))
# self.wait_until_bookmark("align_1")
# self.play(Write(align_1), FadeOut(qmark))
# self.wait_until_bookmark("align_2")
# self.play(Write(align_2), Unwrite(align_1))
# self.wait_until_bookmark("align_3")
# self.play(Write(align_3), Unwrite(align_2))
# self.wait(4)
        

#####################################
# Example 2.3: Binary Event with Asymmetric Outcomes
#####################################
class Example2_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title_text = "Example"
        title = self.add_title(title_text)

        # Defining the math expressions
        prob_0 = MathTex(r"P(X=0) = \frac{1}{1024} = 2^{-10}", color=c1t, font_size=fs3).set_y(1)
        prob_1 = MathTex(r"P(X=1) = \frac{1023}{1024} = 1 - 2^{-10}", color=c1t, font_size=fs3).set_y(0)

        # Explanation text
        explanation_text = Text(
            "To be consistent with our previous definition, the information "
            "associated with observing 0 should be 10 bits. There could be an "
            "underlying event space with $2^{10}$ equally likely outcomes, "
            "where X = 1 would group 1023 outcomes. However, upon observing one "
            "outcome, it should not matter, how or whether we group the remaining "
            "ones, in particular if they are not actually observed!",
            color=c1t, font_size=fs2
        ).set_y(-1)

        # Action Sequence
        with self.voiceover(
                text=
                '''
In Example 2.3, we imagine a binary event with asymmetric outcomes: 
<bookmark mark="prob_0"/> The probability of X equals 0 is one over 1024, which is 2 to the power of negative 10.
<bookmark mark="prob_1"/> Conversely, the probability of X equals 1 is 1023 over 1024, equal to 1 minus 2 to the power of negative 10.
To align with our prior definition, observing 0 represents 10 bits of information.
There might be an underlying space of events with 2 to the power of 10 equally possible outcomes, where X equals 1 clusters 1023 outcomes.
Yet, when one outcome is seen, the grouping of the rest should not influence, especially if they are unobserved.
'''
        ) as tracker:

            self.wait_until_bookmark("prob_0")
            self.play(Write(prob_0))

            self.wait_until_bookmark("prob_1")
            self.play(Write(prob_1))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
# Definition of Conditional Probability
#####################################
class ConditionalProbabilityDefinition(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Add title
        definition_title = "Conditional probability"
        title = self.add_title(definition_title + " 2.2.1")

        # Define the conditional probability formula
        conditional_probability_formula = MathTex(
            r"P(A|B) = \frac{P(A \cap B)}{P(B)}",
            color=c1t, font_size=fs3
        ).set_y(0)


        # Action Sequence
        with self.voiceover(
                text=
                """
In probability theory, the conditional probability is a fundamental concept. 
<bookmark mark="def_title"/>Definition 2.2.1: Conditional Probability. <bookmark mark="formula"/>If \( A \) and \( B \) are events with \( P(B) > 0 \),
then the conditional probability of \( A \) given \( B \), denoted by \( P(A|B) \), is defined as the ratio of the probability of \( A \) intersect \( B \) to the probability of \( B \).
The formula is \( P(A|B) = P(A \cap B) / P(B) \).
Let's break this down. 
<bookmark mark="prior_posterior"/>Here \( A \) is the event whose uncertainty we want to update, and \( B \) is the evidence we observe. We call \( P(A) \) the prior probability of \( A \) and \( P(A|B) \) the posterior probability of \( A \). The terms "prior" and "posterior" are used to signify before and after updating our belief based on the new evidence \( B \).
"""
        ) as tracker:

            self.wait_until_bookmark("def_title")
            self.play(Write(title))

            self.wait_until_bookmark("formula")
            self.play(Write(conditional_probability_formula))


        # Wait for a few seconds at the end of the animation
        self.wait(4)


#####################################
# Class for the Sets and Numbers Scene
#####################################
#####################################
# Class for the Sets and Numbers Scene with Stacked Elements
#####################################
class StackedSetsAndNumbersScene(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # MathTex objects for the sets, stacked below each other
        natural_numbers_set = MathTex(r"\mathbb{N} := \{0, 1, 2, 3, \ldots\}", color=c1t, font_size=fs3).to_edge(UP, buff=1)
        even_numbers_set = MathTex(r"\mathbb{G} := \{0, 2, 4, 6, \ldots\}", color=c1t, font_size=fs3).next_to(natural_numbers_set, DOWN, buff=0.5)
        set_notation_example = MathTex(r"\mathbb{G} = \{n \in \mathbb{N} \mid n \text{ even}\}", color=c1t, font_size=fs3).next_to(even_numbers_set, DOWN, buff=0.5)
        real_numbers_set = MathTex(r"\mathbb{R} = \{x \mid x \text{ is a real number}\}", color=c1t, font_size=fs3).next_to(set_notation_example, DOWN, buff=0.5)
        sine_function_set = MathTex(r"\sin \in \{f \mid f \text{ real function and } f'' = -f\}", color=c1t, font_size=fs3).next_to(real_numbers_set, DOWN, buff=0.5)

        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        Sets can be described by listing their elements. For this purpose, one customarily uses curly braces: 
        <bookmark mark="natural_numbers"/> For example, N is defined as curly brackets zero, one, two, three, and so on.
        <bookmark mark="even_numbers"/> G is defined as curly brackets zero, two, four, six, and so on.
        Writing it in set-builder form we have ...
        <bookmark mark="real_numbers"/> The set of real numbers is represented as curly brackets x such that x is a real number.
        <bookmark mark="sine_function"/> and the set of all functions where the second derivative is the negative of the function itself includes the sine function.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            # Display the natural numbers set
            self.wait_until_bookmark("natural_numbers")
            self.play(Write(natural_numbers_set))

            # Display the even numbers set
            self.wait_until_bookmark("even_numbers")
            self.play(Write(even_numbers_set))

            # Display the set notation example
            self.play(Write(set_notation_example))

            # Display the real numbers set
            self.wait_until_bookmark("real_numbers")
            self.play(Write(real_numbers_set))

            # Display the sine function set
            self.wait_until_bookmark("sine_function")
            self.play(Write(sine_function_set))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

#####################################


#####################################
