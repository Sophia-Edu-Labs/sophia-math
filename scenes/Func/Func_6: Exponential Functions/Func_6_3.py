# 6_2: Exponential Functions: Logarithm

# Import necessary libraries and modules
from abc import ABCMeta, abstractmethod
from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
from sophialib.styles.sophiascene import (CursorMoveToCurved, CursorPositionTracker,
                                          CursorPositionTracking,
                                          CursorResizeDefault, SophiaScene, Cursor,
                                          assets_folder, AltCursor,
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
TASK_Func_6_3_I_1_q = SophiaTaskDefinition(
    answerOptions = ["Applying the square again $(\Box^2)^2$", "Taking the root $\sqrt{\Box^2}$", "Dividing by two $\Box/2$", "Multiplying by two $\Box\times 2$"],
    correctAnswerIndex = 1,
    questionText = "What operation can we apply to undo the squaring ($\Box^2$)?"
)
class Func_6_3_I_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Inverse Functions")

        two_add = MathTex("2", color=c1t, font_size=fs1).move_to([-1,1,0])
        four_add = MathTex("4", color=c1t, font_size=fs1).move_to([1,1,0])
        l = two_add.get_right()+0.2*RIGHT
        r = four_add.get_left()-0.2*RIGHT
        arrow_add = ArcBetweenPoints(l, r, color=c1t, angle=-PI/2).add_tip(tip_length=0.2, tip_width=0.1).shift(0.2*UP)
        arrow_subtract = ArcBetweenPoints(r, l, color=c1t, angle=-PI/2).add_tip(tip_length=0.2, tip_width=0.1).shift(0.2*DOWN)
        add_two = MathTex("+2", color=c1t, font_size=fs2).next_to(arrow_add, UP, buff=0.1)
        subtract_two = MathTex("-2", color=c1t, font_size=fs2).next_to(arrow_subtract, DOWN, buff=0.1)
        addition = VGroup(two_add, four_add, arrow_add, arrow_subtract, add_two, subtract_two)


        three_mul = MathTex("3", color=c1t, font_size=fs1).move_to([-1,1,0])
        nine_mul = MathTex("9", color=c1t, font_size=fs1).move_to([1,1,0])
        l = three_mul.get_right()+0.2*RIGHT
        r = nine_mul.get_left()-0.2*RIGHT
        arrow_mul = ArcBetweenPoints(l, r, color=c1t, angle=-PI/2).add_tip(tip_length=0.2, tip_width=0.1).shift(0.2*UP)
        arrow_div = ArcBetweenPoints(r, l, color=c1t, angle=-PI/2).add_tip(tip_length=0.2, tip_width=0.1).shift(0.2*DOWN)
        mul_three = MathTex("\\times 3", color=c1t, font_size=fs2).next_to(arrow_mul, UP, buff=0.1)
        div_three = MathTex("\\div 3", color=c1t, font_size=fs2).next_to(arrow_div, DOWN, buff=0.1)
        multiplication = VGroup(three_mul, nine_mul, arrow_mul, arrow_div, mul_three, div_three).shift(DOWN)


        four_pow = MathTex("4", color=c1t, font_size=fs1).move_to([-1,0,0])
        two_pow = MathTex("2", color=c1t, font_size=fs1).move_to([1,0,0])
        l = four_pow.get_right()+0.2*RIGHT
        r = two_pow.get_left()-0.2*RIGHT
        arrow_pow = ArcBetweenPoints(l, r, color=c1t, angle=-PI/2).add_tip(tip_length=0.2, tip_width=0.1).shift(0.2*UP)
        arrow_root = ArcBetweenPoints(r, l, color=c1t, angle=-PI/2).add_tip(tip_length=0.2, tip_width=0.1).shift(0.2*DOWN)
        pow_two = MathTex("\\Box^2", color=c1t, font_size=fs2).next_to(arrow_pow, UP, buff=0.1)
        root_two = MathTex("?", color=c1t, font_size=fs2).next_to(arrow_root, DOWN, buff=0.1)
        power = VGroup(four_pow, two_pow, arrow_pow, arrow_root, pow_two, root_two).shift(1.4*DOWN)

        

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text="""
                If we think about different mathematical operations, they always come in pairs, that can cancel each other out.
                For example, there's addition and subtraction. If you<bookmark mark="two_add_1"/>take a number, say two, and add something, say
                two <bookmark mark="two_add_2"/>to the original number,
                you can then <bookmark mark="two_add_3"/> subtract 2 from the result and get the original number back.
                
                <bookmark mark="clear_1"/>
                Another example is multiplication and division.
                Again, if you take a <bookmark mark="three_mul_1"/>number, like three, and multiply it by something, <bookmark mark="three_mul_2"/>say three,
                <bookmark mark="three_mul_3"/>you can then divide the result by three and get the original number back.

                <bookmark mark="clear_2"/>
                Do you know the inverse operation for raising something to a power?
                If we raise<bookmark mark="four_pow_1"/> a number, say four, to a power, like <bookmark mark="four_pow_2"/>two for example,
                <bookmark mark="four_pow_3"/>
                What operation do we need to apply to undo the squaring?
                """
        ) as tracker:
            
            self.wait_until_bookmark("two_add_1")
            x,y,_ = two_add.get_center()+0.6*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(two_add))

            self.wait_until_bookmark("two_add_2")
            x,y,_ = four_add.get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(four_add), Write(arrow_add), Write(add_two))

            self.wait_until_bookmark("two_add_3")
            x,y,_ = two_add.get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(arrow_subtract), Write(subtract_two))
            cursor.blinking=True

            self.wait_until_bookmark("clear_1")
            self.play(addition.animate.scale(0.5), run_time=0.3)
            self.play(addition.animate.shift(UP), run_time=0.3)

            self.wait_until_bookmark("three_mul_1")
            cursor.blinking=False
            x,y,_ = three_mul.get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(three_mul))

            self.wait_until_bookmark("three_mul_2")
            x,y,_ = nine_mul.get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(nine_mul), Write(arrow_mul), Write(mul_three))

            self.wait_until_bookmark("three_mul_3")
            x,y,_ = three_mul.get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(arrow_div), Write(div_three))
            cursor.blinking=True

            self.wait_until_bookmark("clear_2")
            self.play(multiplication.animate.scale(0.5), run_time=0.3)
            self.play(multiplication.animate.next_to(addition, DOWN, buff=0.4), run_time=0.3)

            self.wait_until_bookmark("four_pow_1")
            cursor.blinking=False
            x,y,_ = four_pow.get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(four_pow))

            self.wait_until_bookmark("four_pow_2")
            x,y,_ = two_pow.get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(two_pow), Write(arrow_pow), Write(pow_two))

            self.wait_until_bookmark("four_pow_3")
            x,y,_ = four_pow.get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(arrow_root), Write(root_two))
            cursor.blinking=True

        self.wait(4)

class Func_6_3_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Inverse Functions")

        four_pow = MathTex("2", color=c1t, font_size=fs1).move_to([-1,0,0])
        two_pow = MathTex("4", color=c1t, font_size=fs1).move_to([1,0,0])
        l = four_pow.get_right()+0.2*RIGHT
        r = two_pow.get_left()-0.2*RIGHT
        arrow_pow = ArcBetweenPoints(l, r, color=c1t, angle=-PI/2).add_tip(tip_length=0.2, tip_width=0.1).shift(0.2*UP)
        arrow_root = ArcBetweenPoints(r, l, color=c1t, angle=-PI/2).add_tip(tip_length=0.2, tip_width=0.1).shift(0.2*DOWN)
        pow_two = MathTex("\\Box^2", color=c1t, font_size=fs2).next_to(arrow_pow, UP, buff=0.1)
        root_two = MathTex("?", color=c1t, font_size=fs2).next_to(arrow_root, DOWN, buff=0.1)
        power = VGroup(four_pow, two_pow, arrow_pow, arrow_root, pow_two, root_two).shift(0.4*UP)
        self.add(power)

        pow_root = MathTex("\\Box ^2", "\\Leftrightarrow", "\\sqrt{\\Box}", color=c1t, font_size=fs2).move_to([0,-1,0])        

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text="""
                Unfortunately, that's not right.
                The inverse operation <bookmark mark="raise"/>for raising something to a power <bookmark mark="root"/>is taking the root.
                If we raise <bookmark mark="sol_raise"/>a number like four to the second power, we can undo that operation
                by <bookmark mark="sol_root"/>taking the second root of the result.

                So the inverse operation of raising a number to a power is taking the root.
                """
        ) as tracker:
            
            self.wait_until_bookmark("raise")
            x,y,_ = pow_root[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(pow_root[0]))

            self.wait_until_bookmark("root")
            x,y,_ = pow_root[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(pow_root[1]), Write(pow_root[2]))
            cursor.blinking=True

            self.wait_until_bookmark("sol_raise")
            cursor.blinking=False
            x,y,_ = pow_two.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y))

            self.wait_until_bookmark("sol_root")
            x,y,_ = root_two.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), ReplacementTransform(root_two, MathTex("\\sqrt{\\Box}", color=c1t, font_size=fs2).move_to(root_two)))
            cursor.blinking=True

        self.wait(4)


class Func_6_3_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Inverse Functions")

        four_pow = MathTex("2", color=c1t, font_size=fs1).move_to([-1,0,0])
        two_pow = MathTex("4", color=c1t, font_size=fs1).move_to([1,0,0])
        l = four_pow.get_right()+0.2*RIGHT
        r = two_pow.get_left()-0.2*RIGHT
        arrow_pow = ArcBetweenPoints(l, r, color=c1t, angle=-PI/2).add_tip(tip_length=0.2, tip_width=0.1).shift(0.2*UP)
        arrow_root = ArcBetweenPoints(r, l, color=c1t, angle=-PI/2).add_tip(tip_length=0.2, tip_width=0.1).shift(0.2*DOWN)
        pow_two = MathTex("\\Box^2", color=c1t, font_size=fs2).next_to(arrow_pow, UP, buff=0.1)
        root_two = MathTex("?", color=c1t, font_size=fs2).next_to(arrow_root, DOWN, buff=0.1)
        power = VGroup(four_pow, two_pow, arrow_pow, arrow_root, pow_two, root_two).shift(0.4*UP)
        self.add(power)

        pow_root = MathTex("\\Box ^2", "\\Leftrightarrow", "\\sqrt{\\Box}", color=c1t, font_size=fs2).move_to([0,-1,0])        

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text="""
                Yes, that is correct!
                The inverse operation <bookmark mark="raise"/>for raising something to a power <bookmark mark="root"/>is taking the root.
                If we raise <bookmark mark="sol_raise"/>a number like four to the second power, we can undo that operation
                by <bookmark mark="sol_root"/>taking the second root of the result.

                So the inverse operation of raising a number to a power is taking the root.
                """
        ) as tracker:
            
            self.wait_until_bookmark("raise")
            x,y,_ = pow_root[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(pow_root[0]))

            self.wait_until_bookmark("root")
            x,y,_ = pow_root[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(pow_root[1]), Write(pow_root[2]))
            cursor.blinking=True

            self.wait_until_bookmark("sol_raise")
            cursor.blinking=False
            x,y,_ = pow_two.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y))

            self.wait_until_bookmark("sol_root")
            x,y,_ = root_two.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), ReplacementTransform(root_two, MathTex("\\sqrt{\\Box}", color=c1t, font_size=fs2).move_to(root_two)))
            cursor.blinking=True

        self.wait(4)


class Func_6_3_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Inverse Functions")

        four_pow = MathTex("2", color=c1t, font_size=fs1).move_to([-1,0,0])
        two_pow = MathTex("4", color=c1t, font_size=fs1).move_to([1,0,0])
        l = four_pow.get_right()+0.2*RIGHT
        r = two_pow.get_left()-0.2*RIGHT
        arrow_pow = ArcBetweenPoints(l, r, color=c1t, angle=-PI/2).add_tip(tip_length=0.2, tip_width=0.1).shift(0.2*UP)
        arrow_root = ArcBetweenPoints(r, l, color=c1t, angle=-PI/2).add_tip(tip_length=0.2, tip_width=0.1).shift(0.2*DOWN)
        pow_two = MathTex("\\Box^2", color=c1t, font_size=fs2).next_to(arrow_pow, UP, buff=0.1)
        root_two = MathTex("?", color=c1t, font_size=fs2).next_to(arrow_root, DOWN, buff=0.1)
        power = VGroup(four_pow, two_pow, arrow_pow, arrow_root, pow_two, root_two).shift(0.4*UP)
        self.add(power)

        pow_root = MathTex("\\Box ^2", "\\Leftrightarrow", "\\sqrt{\\Box}", color=c1t, font_size=fs2).move_to([0,-1,0])        

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text="""
                Unfortunately, that's not right.
                The inverse operation <bookmark mark="raise"/>for raising something to a power <bookmark mark="root"/>is taking the root.
                If we raise <bookmark mark="sol_raise"/>a number like four to the second power, we can undo that operation
                by <bookmark mark="sol_root"/>taking the second root of the result.

                So the inverse operation of raising a number to a power is taking the root.
                """
        ) as tracker:
            
            self.wait_until_bookmark("raise")
            x,y,_ = pow_root[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(pow_root[0]))

            self.wait_until_bookmark("root")
            x,y,_ = pow_root[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(pow_root[1]), Write(pow_root[2]))
            cursor.blinking=True

            self.wait_until_bookmark("sol_raise")
            cursor.blinking=False
            x,y,_ = pow_two.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y))

            self.wait_until_bookmark("sol_root")
            x,y,_ = root_two.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), ReplacementTransform(root_two, MathTex("\\sqrt{\\Box}", color=c1t, font_size=fs2).move_to(root_two)))
            cursor.blinking=True

        self.wait(4)


class Func_6_3_I_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Inverse Functions")

        four_pow = MathTex("2", color=c1t, font_size=fs1).move_to([-1,0,0])
        two_pow = MathTex("4", color=c1t, font_size=fs1).move_to([1,0,0])
        l = four_pow.get_right()+0.2*RIGHT
        r = two_pow.get_left()-0.2*RIGHT
        arrow_pow = ArcBetweenPoints(l, r, color=c1t, angle=-PI/2).add_tip(tip_length=0.2, tip_width=0.1).shift(0.2*UP)
        arrow_root = ArcBetweenPoints(r, l, color=c1t, angle=-PI/2).add_tip(tip_length=0.2, tip_width=0.1).shift(0.2*DOWN)
        pow_two = MathTex("\\Box^2", color=c1t, font_size=fs2).next_to(arrow_pow, UP, buff=0.1)
        root_two = MathTex("?", color=c1t, font_size=fs2).next_to(arrow_root, DOWN, buff=0.1)
        power = VGroup(four_pow, two_pow, arrow_pow, arrow_root, pow_two, root_two).shift(0.4*UP)
        self.add(power)

        pow_root = MathTex("\\Box ^2", "\\Leftrightarrow", "\\sqrt{\\Box}", color=c1t, font_size=fs2).move_to([0,-1,0])        

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text="""
                Unfortunately, that's not right.
                The inverse operation <bookmark mark="raise"/>for raising something to a power <bookmark mark="root"/>is taking the root.
                If we raise <bookmark mark="sol_raise"/>a number like four to the second power, we can undo that operation
                by <bookmark mark="sol_root"/>taking the second root of the result.

                So the inverse operation of raising a number to a power is taking the root.
                """
        ) as tracker:
            
            self.wait_until_bookmark("raise")
            x,y,_ = pow_root[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(pow_root[0]))

            self.wait_until_bookmark("root")
            x,y,_ = pow_root[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(pow_root[1]), Write(pow_root[2]))
            cursor.blinking=True

            self.wait_until_bookmark("sol_raise")
            cursor.blinking=False
            x,y,_ = pow_two.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y))

            self.wait_until_bookmark("sol_root")
            x,y,_ = root_two.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), ReplacementTransform(root_two, MathTex("\\sqrt{\\Box}", color=c1t, font_size=fs2).move_to(root_two)))
            cursor.blinking=True

        self.wait(4)


#####################################
#####################################
class Func_6_3_I_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Logarithm")

        four_pow = MathTex("3", color=c1t, font_size=fs1).move_to([-1,0,0])
        two_pow = MathTex("64", color=c1t, font_size=fs1).move_to([1,0,0])
        l = four_pow.get_right()+0.2*RIGHT
        r = two_pow.get_left()-0.2*RIGHT
        arrow_pow = ArcBetweenPoints(l, r, color=c1t, angle=-PI/2).add_tip(tip_length=0.2, tip_width=0.1).shift(0.2*UP)
        arrow_root = ArcBetweenPoints(r, l, color=c1t, angle=-PI/2).add_tip(tip_length=0.2, tip_width=0.1).shift(0.2*DOWN)
        exp_two = MathTex("4^\\Box", color=c1t, font_size=fs2).next_to(arrow_pow, UP, buff=0.1)
        log_two = MathTex("\\log_4{\\Box}", color=c1t, font_size=fs2).next_to(arrow_root, DOWN, buff=0.1)
        exp = VGroup(four_pow, two_pow, arrow_pow, arrow_root, exp_two, log_two).shift(0.4*UP)

        exp_log = MathTex("k^\\Box", "\\Leftrightarrow", "\\log_k{\\Box}", color=c1t, font_size=fs2).move_to([0,-2,0])        

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text="""
                Now similarly, you might ask yourself: What is the inverse operation for exponential functions?

                For example, I take <bookmark mark="take_number"/>a number, say three, and <bookmark mark="raise_4"/>raise four to the power of three.
                Then I will have 64. But what operation can I use, to get back to three? What is the inverse operation of raising something to a power?

                The answer is: <bookmark mark="take_log"/>Taking the logarithm. So if I raise four to the power of three I get 64.
                If I then take the base four logarithm of 64, I get three back. So <bookmark mark="inverse_raise"/>the inverse operation of raising a
                number k to a <bookmark mark="inverse_log"/>power is taking the base k logarithm.

                What exactly that means, we will see in the next video.
                """
        ) as tracker:
            
            self.wait_until_bookmark("take_number")
            x,y,_ = four_pow.get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(four_pow))

            self.wait_until_bookmark("raise_4")
            x,y,_ = two_pow.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(two_pow), Write(arrow_pow), Write(exp_two))

            self.wait_until_bookmark("take_log")
            x,y,_ = four_pow.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(arrow_root), Write(log_two))
            cursor.blinking=True

            self.wait_until_bookmark("inverse_raise")
            cursor.blinking=False
            x,y,_ = exp_log[0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(exp_log[0]))

            self.wait_until_bookmark("inverse_log")
            x,y,_ = exp_log[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(exp_log[1]), Write(exp_log[2]))
            cursor.blinking=True

        self.wait(4)



#####################################
#####################################
class Func_6_3_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Logarithm")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        two_to_the_x = MathTex("2", "\\cdot2", "\\cdot2", "\\cdot2", "\\cdot2", "=", "2^5", "=", "32", color=c1t, font_size=fs2).move_to([0,0,0])
        thirtytwo = MathTex("32", "=", "2^?", color=c1t, font_size=fs2).next_to(two_to_the_x, DOWN, buff=0.4)
        logarithm = MathTex("\\log_2{32}", "=", "5", color=c1t, font_size=fs2).next_to(thirtytwo, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text="""
                So what does the logarithm actually do.

                We take a number,<bookmark mark="two_1"/> say two, and multiply it by itself one,
                <bookmark mark="two_2"/>two, <bookmark mark="two_3"/>three <bookmark mark="two_4"/>four,
                <bookmark mark="two_5"/>five times, to <bookmark mark="two_pow_5"/> get two to the power
                of five<bookmark mark="two_32"/>, which equals 32.

                But what if we want to go in the opposite direction?
                So say we <bookmark mark="thirtytwo_1"/> have 32, and we want to know
                how many times we have to multiply <bookmark mark="thirtytwo_2"/>two by itself to get 32.

                We can find this number by computing the<bookmark mark="sol_1"/> base two logarithm of 32.
                The base two logarithm of 32 is the number, to which we have to raise two
                to get 32. <bookmark mark="sol_2"/>And that number is five...
                """
        ) as tracker:
            
            self.wait_until_bookmark("two_1")
            x,y,_ = two_to_the_x[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(two_to_the_x[0]), run_time=0.3)

            self.wait_until_bookmark("two_2")
            x,y,_ = two_to_the_x[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(two_to_the_x[1]), run_time=0.3)

            self.wait_until_bookmark("two_3")
            x,y,_ = two_to_the_x[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(two_to_the_x[2]), run_time=0.3)

            self.wait_until_bookmark("two_4")
            x,y,_ = two_to_the_x[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(two_to_the_x[3]), run_time=0.3)
            
            self.wait_until_bookmark("two_5")
            x,y,_ = two_to_the_x[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(two_to_the_x[4]), run_time=0.3)

            self.wait_until_bookmark("two_pow_5")
            x,y,_ = two_to_the_x[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(two_to_the_x[5]), Write(two_to_the_x[6]), run_time=0.3)

            self.wait_until_bookmark("two_32")
            x,y,_ = two_to_the_x[8].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(two_to_the_x[7]), Write(two_to_the_x[8]), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("thirtytwo_1")
            x,y,_ = thirtytwo[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(thirtytwo[0]), run_time=0.3)

            self.wait_until_bookmark("thirtytwo_2")
            x,y,_ = thirtytwo[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(thirtytwo[1]), Write(thirtytwo[2]), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol_1")
            x,y,_ = logarithm[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(logarithm[0]), run_time=0.3)

            self.wait_until_bookmark("sol_2")
            x,y,_ = logarithm[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(logarithm[1]), Write(logarithm[2]), run_time=0.3)
            cursor.blinking=True

        self.wait(4)


#####################################
#####################################
TASK_Func_6_3_I_4_q = SophiaTaskDefinition(
    answerOptions = ["x=\sqrt[5]{625}", "x=\sqrt[625]{5}", "$x=\log_{625}{5}$", "$x=\log_5{625}$"],
    correctAnswerIndex = 3,
    questionText = "For what value of x does $5^x=625$ hold?"
)
class Func_6_3_I_4_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Logarithm")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        sixtwentyfive = MathTex("625", "=", "5^?", color=c1t, font_size=fs2).shift(UP*0.4)
        
        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2/qmark.get_width()).move_to([-5, -1.4, 0])

        # Action Sequence
        with self.voiceover(
                text="""
                Let's try to use the logarithm ourself!
                We'll start with the <bookmark mark="sixtwofive_1"/>number 625.
                We want to know, to what power we have to raise <bookmark mark="sixtwofive_2"/>the number five to get 625.
                <bookmark mark="qmark"/>How do we find that number using the logarithm?
                """
        ) as tracker:
            
            self.wait_until_bookmark("sixtwofive_1")
            x,y,_ = sixtwentyfive[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(sixtwentyfive[0]), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sixtwofive_2")
            cursor.blinking=False
            x,y,_ = sixtwentyfive[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sixtwentyfive[1]), Write(sixtwentyfive[2]), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("qmark")
            self.play(qmark.animate.shift(5*RIGHT), run_time=0.3)

        self.wait(4)


class Func_6_3_I_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Logarithm")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        sixtwentyfive = MathTex("625", "=", "5^?", color=c1t, font_size=fs2).shift(UP*0.4)
        sol_1 = MathTex("5^x", "=", "625", color=c1t, font_size=fs2).next_to(sixtwentyfive, DOWN, buff=0.4)
        sol_2 = MathTex("\\Rightarrow", "x=\\log_5{(625)}", color=c1t, font_size=fs2).next_to(sol_1, DOWN, buff=0.2)
        self.add(sixtwentyfive)


        # Action Sequence
        with self.voiceover(
                text="""
                That's not right.
                So we want to know to what power we have to raise five to get 625.
                We can reformulate this as the equation <bookmark mark="sol_1"/>five to the power of x <bookmark mark="sol_2"/>equals 625.
                This can then be solved as <bookmark mark="sol_3"/>x is equal to the base five logarithm of 625.
                The base of the logarithm is the number, which is the base of the power, in this case five.
                And the number which we take the logarithm of is the number we want to get, in this case 625.
                """
        ) as tracker:
            
            self.wait_until_bookmark("sol_1")
            x,y,_ = sol_1[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(sol_1[0]), run_time=0.3)

            self.wait_until_bookmark("sol_2")
            x,y,_ = sol_1[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_1[1]), Write(sol_1[2]), run_time=0.3)

            self.wait_until_bookmark("sol_3")
            x,y,_ = sol_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_2[0]), Write(sol_2[1]), run_time=0.3)
            cursor.blinking=True

        self.wait(4)

class Func_6_3_I_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Logarithm")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        sixtwentyfive = MathTex("625", "=", "5^?", color=c1t, font_size=fs2).shift(UP*0.4)
        sol_1 = MathTex("5^x", "=", "625", color=c1t, font_size=fs2).next_to(sixtwentyfive, DOWN, buff=0.4)
        sol_2 = MathTex("\\Rightarrow", "x=\\log_5{(625)}", color=c1t, font_size=fs2).next_to(sol_1, DOWN, buff=0.2)
        self.add(sixtwentyfive)


        # Action Sequence
        with self.voiceover(
                text="""
                That's not right.
                So we want to know to what power we have to raise five to get 625.
                We can reformulate this as the equation <bookmark mark="sol_1"/>five to the power of x <bookmark mark="sol_2"/>equals 625.
                This can then be solved as <bookmark mark="sol_3"/>x is equal to the base five logarithm of 625.
                The base of the logarithm is the number, which is the base of the power, in this case five.
                And the number which we take the logarithm of is the number we want to get, in this case 625.
                """
        ) as tracker:
            
            self.wait_until_bookmark("sol_1")
            x,y,_ = sol_1[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(sol_1[0]), run_time=0.3)

            self.wait_until_bookmark("sol_2")
            x,y,_ = sol_1[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_1[1]), Write(sol_1[2]), run_time=0.3)

            self.wait_until_bookmark("sol_3")
            x,y,_ = sol_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_2[0]), Write(sol_2[1]), run_time=0.3)
            cursor.blinking=True

        self.wait(4)

class Func_6_3_I_4_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Logarithm")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        sixtwentyfive = MathTex("625", "=", "5^?", color=c1t, font_size=fs2).shift(UP*0.4)
        sol_1 = MathTex("5^x", "=", "625", color=c1t, font_size=fs2).next_to(sixtwentyfive, DOWN, buff=0.4)
        sol_2 = MathTex("\\Rightarrow", "x=\\log_5{(625)}", color=c1t, font_size=fs2).next_to(sol_1, DOWN, buff=0.2)
        self.add(sixtwentyfive)


        # Action Sequence
        with self.voiceover(
                text="""
                That's not right.
                So we want to know to what power we have to raise five to get 625.
                We can reformulate this as the equation <bookmark mark="sol_1"/>five to the power of x <bookmark mark="sol_2"/>equals 625.
                This can then be solved as <bookmark mark="sol_3"/>x is equal to the base five logarithm of 625.
                The base of the logarithm is the number, which is the base of the power, in this case five.
                And the number which we take the logarithm of is the number we want to get, in this case 625.
                """
        ) as tracker:
            
            self.wait_until_bookmark("sol_1")
            x,y,_ = sol_1[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(sol_1[0]), run_time=0.3)

            self.wait_until_bookmark("sol_2")
            x,y,_ = sol_1[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_1[1]), Write(sol_1[2]), run_time=0.3)

            self.wait_until_bookmark("sol_3")
            x,y,_ = sol_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_2[0]), Write(sol_2[1]), run_time=0.3)
            cursor.blinking=True

        self.wait(4)

class Func_6_3_I_4_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Logarithm")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        sixtwentyfive = MathTex("625", "=", "5^?", color=c1t, font_size=fs2).shift(UP*0.4)
        sol_1 = MathTex("5^x", "=", "625", color=c1t, font_size=fs2).next_to(sixtwentyfive, DOWN, buff=0.4)
        sol_2 = MathTex("\\Rightarrow", "x=\\log_5{(625)}", color=c1t, font_size=fs2).next_to(sol_1, DOWN, buff=0.2)
        self.add(sixtwentyfive)


        # Action Sequence
        with self.voiceover(
                text="""
                Yes, that is correct!
                So we want to know to what power we have to raise five to get 625.
                We can reformulate this as the equation <bookmark mark="sol_1"/>five to the power of x <bookmark mark="sol_2"/>equals 625.
                This can then be solved as <bookmark mark="sol_3"/>x is equal to the base five logarithm of 625.
                The base of the logarithm is the number, which is the base of the power, in this case five.
                And the number which we take the logarithm of is the number we want to get, in this case 625.
                """
        ) as tracker:
            
            self.wait_until_bookmark("sol_1")
            x,y,_ = sol_1[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(sol_1[0]), run_time=0.3)

            self.wait_until_bookmark("sol_2")
            x,y,_ = sol_1[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_1[1]), Write(sol_1[2]), run_time=0.3)

            self.wait_until_bookmark("sol_3")
            x,y,_ = sol_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_2[0]), Write(sol_2[1]), run_time=0.3)
            cursor.blinking=True

        self.wait(4)


#####################################
#####################################
class Func_6_3_I_5(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Logarithm")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        sol_1 = MathTex("a^x", "=", "b", color=c1t, font_size=fs2).move_to([0,1.5,0])
        sol_2 = MathTex("\\Rightarrow x=\\log_a{(b)}", color=c1t, font_size=fs2).move_to([0,-1,0])

        start_base = np.array([.4,-1.4,0])
        start_log = np.array([1,-0.7,0])
        base = Bubble(texts = ["a: Base of the logarithm"], center=np.array([0.4,-2.8, 0]), start_point=start_base, loc="t1", width=3, height=0.8)
        log = Bubble(texts = ["b: Number we want to get"], center=np.array([0,0.2, 0]), start_point=start_log, width=3, height=0.8)


        # Action Sequence
        with self.voiceover(
                text="""
                Now a bit more formally: Logarithms.
                We have a <bookmark mark="intro_1"/>base a, and we want to raise it to some power to get 
                <bookmark mark="intro_2"/>the number b as a result.
                Now that number x is what we're looking for.

                This is where the logarithm comes in. The <bookmark mark="sol_in"/>logarithm tells us, to what number we have to
                raise the base a, if we want to get the number b.

                The logarithm has two parts.
                <bookmark mark="base"/> The base "a", which is written as an index, which describes the base of the power,
                so the number that we want to raise to some power.
                <bookmark mark="log"/> And the number b, which is written in brackets, which is the number we want to get...
                """
        ) as tracker:
            
            self.wait_until_bookmark("intro_1")
            x,y,_ = sol_1[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(sol_1[0]), run_time=0.3)

            self.wait_until_bookmark("intro_2")
            x,y,_ = sol_1[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_1[1]), Write(sol_1[2]), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol_in")
            x,y,_ = sol_2.get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(sol_2), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("base")
            x,y,_ = start_base
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(base.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(base), Create(base.text))
            cursor.blinking=True

            self.wait_until_bookmark("log")
            x,y,_ = start_log
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(log.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(log), Create(log.text))
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
class findLogExpressionQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Logarithm")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        sixtwentyfive = MathTex(f"{self.result}", "=", f"{self.base}^?", color=c1t, font_size=fs2).shift(UP*0.4)
        
        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2/qmark.get_width()).move_to([-5, -1.4, 0])

        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.intro}
                We'll start with the <bookmark mark="result_1"/>number {self.result}.
                We want to know, to what power we have to raise <bookmark mark="result_2"/>the number {self.base} to get {self.result}.
                <bookmark mark="qmark"/>How do we find that number using the logarithm?
                """
        ) as tracker:
            
            self.wait_until_bookmark("result_1")
            x,y,_ = sixtwentyfive[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(sixtwentyfive[0]), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("result_2")
            cursor.blinking=False
            x,y,_ = sixtwentyfive[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sixtwentyfive[1]), Write(sixtwentyfive[2]), run_time=0.3)
            cursor.blinking=True

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

        self.add_title("Logarithm")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        sixtwentyfive = MathTex(f"{self.result}", "=", f"{self.base}^?", color=c1t, font_size=fs2).shift(UP*0.4)
        sol_1 = MathTex(f"{self.base}^x", "=", f"{self.result}", color=c1t, font_size=fs2).next_to(sixtwentyfive, DOWN, buff=0.4)
        sol_2 = MathTex("\\Rightarrow", f"x=\\log_{{{self.base}}}{({self.result})}", color=c1t, font_size=fs2).next_to(sol_1, DOWN, buff=0.2)
        self.add(sixtwentyfive)


        start_base = np.array([.4,-1.2,0])
        start_log = np.array([1,-0.5,0])

        base = Bubble(texts = [f"{self.base}: Base of the logarithm"], center=np.array([.6,-2.6, 0]), start_point=start_base, loc="t1", width=3, height=0.8)
        log = Bubble(texts = [f"{self.result}: Number we want to get"], center=np.array([0,0.2, 0]), start_point=start_log, width=3, height=0.8)

        # Action Sequence
        with self.voiceover(
                text=f"""
                {self.intro}
                So we want to know to what power we have to raise {self.base} to get {self.result}.
                We can reformulate this as the equation <bookmark mark="sol_1"/>{self.base} to the power of x
                <bookmark mark="sol_2"/>equals {self.result}. This can then be solved as
                <bookmark mark="sol_3"/>x is equal to the base {self.base} logarithm of {self.result}. <bookmark mark="clean"/>
                The <bookmark mark="bubble_1"/>base of the logarithm is the number, which is the base of the power, in this case {self.base}.
                And the <bookmark mark="bubble_2"/>number which we take the logarithm of is the number we want to get, in this case {self.result}.
                """
        ) as tracker:
            
            self.wait_until_bookmark("sol_1")
            x,y,_ = sol_1[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), Write(sol_1[0]), run_time=0.3)

            self.wait_until_bookmark("sol_2")
            x,y,_ = sol_1[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_1[1]), Write(sol_1[2]), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sol_3")
            cursor.blinking=False
            x,y,_ = sol_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_2[0]), Write(sol_2[1]), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("clean")
            self.play(FadeOut(sol_1), FadeOut(sixtwentyfive), run_time=0.3)

            self.wait_until_bookmark("bubble_1")
            x,y,_ = start_base
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(base.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(base), Create(base.text))
            cursor.blinking=True

            self.wait_until_bookmark("bubble_2")
            x,y,_ = start_log
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(log.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(log), Create(log.text))
            cursor.blinking=True

        self.wait(4)

#####################################
#####################################
TASK_Func_6_3_P_1_q = SophiaTaskDefinition(
    answerOptions = ["$x=\log_{256}{4}$", "$x=\log_4{256}$", "x=\sqrt[4]{256}", "x=\sqrt[256]{4}"],
    correctAnswerIndex = 1,
    questionText = "For what value of x does $4^x=256$ hold?"
)

class Func_6_3_P_1_q(findLogExpressionQuestionScene):
    
        # Main method for constructing the animation
        def construct(self):

            self.result = 256
            self.base = 4
            self.intro = "Another example to practice:"

            super().construct()


class Func_6_3_P_1_a(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 256
            self.base = 4
            self.intro = "No, that's not right..."

            super().construct()

class Func_6_3_P_1_b(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 256
            self.base = 4
            self.intro = "Yes, you got it!"

            super().construct()

class Func_6_3_P_1_c(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 256
            self.base = 4
            self.intro = "No, that's not right..."

            super().construct()


class Func_6_3_P_1_d(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 256
            self.base = 4
            self.intro = "No, that's not right..."

            super().construct()


#####################################
#####################################
TASK_Func_6_3_P_2_q = SophiaTaskDefinition(
    answerOptions = ["$x=\log_\frac12{\\frac{1}{16}}$", "$x=\log_{\frac{1}{16}}{\frac12}$", "x=\sqrt[\frac12]{\frac{1}{16}}", "x=\sqrt[25\frac{1}{16}]{\frac12}"],
    correctAnswerIndex = 1,
    questionText = "For what value of x does $\frac12^x=\frac{1}{16}$ hold?"
)

class Func_6_3_P_2_q(findLogExpressionQuestionScene):
    
        # Main method for constructing the animation
        def construct(self):

            self.result = 1/16
            self.base = 1/2
            self.intro = "Another example to practice:"

            super().construct()


class Func_6_3_P_2_a(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 1/16
            self.base = 1/2
            self.intro = "Yes, you got it!"

            super().construct()

class Func_6_3_P_2_b(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 1/16
            self.base = 1/2
            self.intro = "No, that's not right..."

            super().construct()

class Func_6_3_P_2_c(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 1/16
            self.base = 1/2
            self.intro = "No, that's not right..."

            super().construct()


class Func_6_3_P_2_d(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 256
            self.base = 4
            self.intro = "No, that's not right..."

            super().construct()

PROTOTYPES=[
    PagePrototypeVideo.from_scene(Func_6_3_I_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_6_3_I_1_q, Func_6_3_I_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_6_3_I_1_a),
    PagePrototypeVideo.from_scene(Func_6_3_I_1_b),
    PagePrototypeVideo.from_scene(Func_6_3_I_1_c),
    PagePrototypeVideo.from_scene(Func_6_3_I_1_d),
    PagePrototypeVideo.from_scene(Func_6_3_I_2),
    PagePrototypeVideo.from_scene(Func_6_3_I_3),
    PagePrototypeVideo.from_scene(Func_6_3_I_4_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_6_3_I_4_q, Func_6_3_I_4_q.__name__),
    PagePrototypeVideo.from_scene(Func_6_3_I_4_a),
    PagePrototypeVideo.from_scene(Func_6_3_I_4_b),
    PagePrototypeVideo.from_scene(Func_6_3_I_4_c),
    PagePrototypeVideo.from_scene(Func_6_3_I_4_d),
    PagePrototypeVideo.from_scene(Func_6_3_I_5),
    PagePrototypeVideo.from_scene(Func_6_3_P_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_6_3_P_1_q, Func_6_3_P_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_6_3_P_1_a),
    PagePrototypeVideo.from_scene(Func_6_3_P_1_b),
    PagePrototypeVideo.from_scene(Func_6_3_P_1_c),
    PagePrototypeVideo.from_scene(Func_6_3_P_1_d),
    PagePrototypeVideo.from_scene(Func_6_3_P_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_6_3_P_2_q, Func_6_3_P_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_6_3_P_2_a),
    PagePrototypeVideo.from_scene(Func_6_3_P_2_b),
    PagePrototypeVideo.from_scene(Func_6_3_P_2_c),
    PagePrototypeVideo.from_scene(Func_6_3_P_2_d),
]