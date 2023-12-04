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


##################################### Chapter: The Logarithm
#####################################
class Func_6_3_I_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_6_3.I1.q.answer-options")),
            correctAnswerIndex=1,
            questionText=self.translate("Func_6_3.I1.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_3.I1.q.title"))
        self.add(title)

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
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_3.I1.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("two_add_1")
            x,y,_ = two_add.get_center()+0.6*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(two_add))

            self.wait_until_bookmark("two_add_2")
            x,y,_ = four_add.get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(four_add), Write(arrow_add), Write(add_two))

            self.wait_until_bookmark("two_add_3")
            x,y,_ = two_add.get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(arrow_subtract), Write(subtract_two))
            cursor.idle=True

            self.wait_until_bookmark("clear_1")
            self.play(addition.animate.scale(0.5), run_time=0.3)
            self.play(addition.animate.shift(UP), run_time=0.3)

            self.wait_until_bookmark("three_mul_1")
            cursor.idle=False
            x,y,_ = three_mul.get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(three_mul))

            self.wait_until_bookmark("three_mul_2")
            x,y,_ = nine_mul.get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(nine_mul), Write(arrow_mul), Write(mul_three))

            self.wait_until_bookmark("three_mul_3")
            x,y,_ = three_mul.get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(arrow_div), Write(div_three))
            cursor.idle=True

            self.wait_until_bookmark("clear_2")
            self.play(multiplication.animate.scale(0.5), run_time=0.3)
            self.play(multiplication.animate.next_to(addition, DOWN, buff=0.4), run_time=0.3)

            self.wait_until_bookmark("four_pow_1")
            cursor.idle=False
            x,y,_ = four_pow.get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(four_pow))

            self.wait_until_bookmark("four_pow_2")
            x,y,_ = two_pow.get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(two_pow), Write(arrow_pow), Write(pow_two))

            self.wait_until_bookmark("four_pow_3")
            x,y,_ = four_pow.get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(arrow_root), Write(root_two))
            cursor.idle=True

        self.wait(4)

class Func_6_3_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_3.I1.q.title"))
        self.add(title)

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
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_3.I1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("raise")
            x,y,_ = pow_root[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(pow_root[0]))

            self.wait_until_bookmark("root")
            x,y,_ = pow_root[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(pow_root[1]), Write(pow_root[2]))
            cursor.idle=True

            self.wait_until_bookmark("sol_raise")
            cursor.idle=False
            x,y,_ = pow_two.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y))

            self.wait_until_bookmark("sol_root")
            x,y,_ = root_two.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), ReplacementTransform(root_two, MathTex("\\sqrt{\\Box}", color=c1t, font_size=fs2).move_to(root_two)))
            cursor.idle=True

        self.wait(4)

class Func_6_3_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_3.I1.q.title"))
        self.add(title)

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
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_3.I1.b.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("raise")
            x,y,_ = pow_root[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(pow_root[0]))

            self.wait_until_bookmark("root")
            x,y,_ = pow_root[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(pow_root[1]), Write(pow_root[2]))
            cursor.idle=True

            self.wait_until_bookmark("sol_raise")
            cursor.idle=False
            x,y,_ = pow_two.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y))

            self.wait_until_bookmark("sol_root")
            x,y,_ = root_two.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), ReplacementTransform(root_two, MathTex("\\sqrt{\\Box}", color=c1t, font_size=fs2).move_to(root_two)))
            cursor.idle=True

        self.wait(4)

class Func_6_3_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_3.I1.q.title"))
        self.add(title)

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
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_3.I1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("raise")
            x,y,_ = pow_root[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(pow_root[0]))

            self.wait_until_bookmark("root")
            x,y,_ = pow_root[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(pow_root[1]), Write(pow_root[2]))
            cursor.idle=True

            self.wait_until_bookmark("sol_raise")
            cursor.idle=False
            x,y,_ = pow_two.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y))

            self.wait_until_bookmark("sol_root")
            x,y,_ = root_two.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), ReplacementTransform(root_two, MathTex("\\sqrt{\\Box}", color=c1t, font_size=fs2).move_to(root_two)))
            cursor.idle=True

        self.wait(4)

class Func_6_3_I_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_3.I1.q.title"))
        self.add(title)

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
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_3.I1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("raise")
            x,y,_ = pow_root[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(pow_root[0]))

            self.wait_until_bookmark("root")
            x,y,_ = pow_root[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(pow_root[1]), Write(pow_root[2]))
            cursor.idle=True

            self.wait_until_bookmark("sol_raise")
            cursor.idle=False
            x,y,_ = pow_two.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y))

            self.wait_until_bookmark("sol_root")
            x,y,_ = root_two.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), ReplacementTransform(root_two, MathTex("\\sqrt{\\Box}", color=c1t, font_size=fs2).move_to(root_two)))
            cursor.idle=True

        self.wait(4)


#####################################
#####################################
class Func_6_3_I_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_3.I2.title"))
        self.add(title)

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
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_3.I2.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("take_number")
            x,y,_ = four_pow.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(four_pow))

            self.wait_until_bookmark("raise_4")
            x,y,_ = two_pow.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(two_pow), Write(arrow_pow), Write(exp_two))

            self.wait_until_bookmark("take_log")
            x,y,_ = four_pow.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(arrow_root), Write(log_two))
            cursor.idle=True

            self.wait_until_bookmark("inverse_raise")
            cursor.idle=False
            x,y,_ = exp_log[0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(exp_log[0]))

            self.wait_until_bookmark("inverse_log")
            x,y,_ = exp_log[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(exp_log[1]), Write(exp_log[2]))
            cursor.idle=True

        self.wait(4)


#####################################
#####################################
class Func_6_3_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_3.I2.title"))
        self.add(title)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        two_to_the_x = MathTex("2", "\\cdot2", "\\cdot2", "\\cdot2", "\\cdot2", "=", "2^5", "=", "32", color=c1t, font_size=fs2).set_y(1.6)
        thirtytwo = MathTex("32", "=", "2^?", color=c1t, font_size=fs2).next_to(two_to_the_x, DOWN, buff=0.4)
        logarithm = MathTex("\\log_2{32}", "=", "5", color=c1t, font_size=fs2).next_to(thirtytwo, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_3.I3.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("two_1")
            x,y,_ = two_to_the_x[0].get_center()+0.4*DOWN
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("thirtytwo_1")
            x,y,_ = thirtytwo[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(thirtytwo[0]), run_time=0.3)

            self.wait_until_bookmark("thirtytwo_2")
            x,y,_ = thirtytwo[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(thirtytwo[1]), Write(thirtytwo[2]), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("sol_1")
            x,y,_ = logarithm[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(logarithm[0]), run_time=0.3)

            self.wait_until_bookmark("sol_2")
            x,y,_ = logarithm[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(logarithm[1]), Write(logarithm[2]), run_time=0.3)
            cursor.idle=True

        self.wait(4)


#####################################
#####################################
class Func_6_3_I_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$x=\sqrt[5]{625}$", "$x=\sqrt[625]{5}$", "$x=\log_{625}{5}$", "$x=\log_5{625}$"],
            correctAnswerIndex = 3,
            questionText=self.translate("Func_6_3.I4.q.question-text")
        )

    # Main method for constructing the animation
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

        sixtwentyfive = MathTex("625", "=", "5^?", color=c1t, font_size=fs2).shift(UP*0.4)
        
        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2/qmark.get_width()).move_to([-5, -1.4, 0])

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_3.I4.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("sixtwofive_1")
            x,y,_ = sixtwentyfive[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(sixtwentyfive[0]), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("sixtwofive_2")
            cursor.idle=False
            x,y,_ = sixtwentyfive[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sixtwentyfive[1]), Write(sixtwentyfive[2]), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("qmark")
            self.add_shift_sound(0.3)
            self.play(qmark.animate.shift(5*RIGHT), run_time=0.3)

        self.wait(4)


class Func_6_3_I_4_a(SophiaCursorScene):

    # Main method for constructing the animation
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

        sixtwentyfive = MathTex("625", "=", "5^?", color=c1t, font_size=fs2).shift(UP*0.4)
        sol_1 = MathTex("5^x", "=", "625", color=c1t, font_size=fs2).next_to(sixtwentyfive, DOWN, buff=0.4)
        sol_2 = MathTex("\\Rightarrow", "x=\\log_5{(625)}", color=c1t, font_size=fs2).next_to(sol_1, DOWN, buff=0.2)
        self.add(sixtwentyfive)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_3.I4.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("sol_1")
            x,y,_ = sol_1[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(sol_1[0]), run_time=0.3)

            self.wait_until_bookmark("sol_2")
            x,y,_ = sol_1[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_1[1]), Write(sol_1[2]), run_time=0.3)

            self.wait_until_bookmark("sol_3")
            x,y,_ = sol_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_2[0]), Write(sol_2[1]), run_time=0.3)
            cursor.idle=True

        self.wait(4)

class Func_6_3_I_4_b(SophiaCursorScene):

    # Main method for constructing the animation
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

        sixtwentyfive = MathTex("625", "=", "5^?", color=c1t, font_size=fs2).shift(UP*0.4)
        sol_1 = MathTex("5^x", "=", "625", color=c1t, font_size=fs2).next_to(sixtwentyfive, DOWN, buff=0.4)
        sol_2 = MathTex("\\Rightarrow", "x=\\log_5{(625)}", color=c1t, font_size=fs2).next_to(sol_1, DOWN, buff=0.2)
        self.add(sixtwentyfive)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_3.I4.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("sol_1")
            x,y,_ = sol_1[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(sol_1[0]), run_time=0.3)

            self.wait_until_bookmark("sol_2")
            x,y,_ = sol_1[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_1[1]), Write(sol_1[2]), run_time=0.3)

            self.wait_until_bookmark("sol_3")
            x,y,_ = sol_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_2[0]), Write(sol_2[1]), run_time=0.3)
            cursor.idle=True

        self.wait(4)

class Func_6_3_I_4_c(SophiaCursorScene):

    # Main method for constructing the animation
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

        sixtwentyfive = MathTex("625", "=", "5^?", color=c1t, font_size=fs2).shift(UP*0.4)
        sol_1 = MathTex("5^x", "=", "625", color=c1t, font_size=fs2).next_to(sixtwentyfive, DOWN, buff=0.4)
        sol_2 = MathTex("\\Rightarrow", "x=\\log_5{(625)}", color=c1t, font_size=fs2).next_to(sol_1, DOWN, buff=0.2)
        self.add(sixtwentyfive)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_3.I4.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("sol_1")
            x,y,_ = sol_1[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(sol_1[0]), run_time=0.3)

            self.wait_until_bookmark("sol_2")
            x,y,_ = sol_1[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_1[1]), Write(sol_1[2]), run_time=0.3)

            self.wait_until_bookmark("sol_3")
            x,y,_ = sol_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_2[0]), Write(sol_2[1]), run_time=0.3)
            cursor.idle=True

        self.wait(4)

class Func_6_3_I_4_d(SophiaCursorScene):

    # Main method for constructing the animation
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

        sixtwentyfive = MathTex("625", "=", "5^?", color=c1t, font_size=fs2).shift(UP*0.4)
        sol_1 = MathTex("5^x", "=", "625", color=c1t, font_size=fs2).next_to(sixtwentyfive, DOWN, buff=0.4)
        sol_2 = MathTex("\\Rightarrow", "x=\\log_5{(625)}", color=c1t, font_size=fs2).next_to(sol_1, DOWN, buff=0.2)
        self.add(sixtwentyfive)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_3.I4.d.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("sol_1")
            x,y,_ = sol_1[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(sol_1[0]), run_time=0.3)

            self.wait_until_bookmark("sol_2")
            x,y,_ = sol_1[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_1[1]), Write(sol_1[2]), run_time=0.3)

            self.wait_until_bookmark("sol_3")
            x,y,_ = sol_2[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_2[0]), Write(sol_2[1]), run_time=0.3)
            cursor.idle=True

        self.wait(4)


#####################################
#####################################
class Func_6_3_I_5(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        title = self.add_title(self.translate("Func_6_3.I2.title"))

        cursor = AltCursor(idle=True)
        self.add(cursor)

        sol_1 = MathTex("a^x", "=", "b", color=c1t, font_size=fs2).set_y(3.2)
        sol_2 = MathTex("\\Rightarrow x=\\log_a{(b)}", color=c1t, font_size=fs2).set_y(.7)

        start_base = np.array([.4,.3,0])
        start_log = np.array([1,1,0])
        base = Bubble(texts = [self.translate("Func_6_3.I5.base")], center=np.array([0.4,-1.1, 0]), start_point=start_base, loc="t1", width=3, height=0.8)
        log = Bubble(texts = [self.translate("Func_6_3.I5.log")], center=np.array([0,1.9, 0]), start_point=start_log, width=3, height=0.8)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_3.I5.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("intro_1")
            x,y,_ = sol_1[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(sol_1[0]), run_time=0.3)

            self.wait_until_bookmark("intro_2")
            x,y,_ = sol_1[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_1[1]), Write(sol_1[2]), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("sol_in")
            x,y,_ = sol_2.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(sol_2), run_time=0.3)
            cursor.idle=True

            self.wait_until_bookmark("base")
            x,y,_ = start_base
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(base.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(base), Create(base.text))
            cursor.idle=True

            self.wait_until_bookmark("log")
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
class Func_6_3_I_6_X(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_6_3.I2.title"))
        self.add(title)

        cursor = AltCursor(idle=True)
        self.add(cursor)


        sol_1 = MathTex("a", "^x", "=", "b", color=c1t, font_size=fs1)
        ud_arrows = MathTex("\\Updownarrow", color=c1t, font_size=fs2)
        sol_2 = MathTex("\\Rightarrow x=", "\\log_", "a", "{(b)}", color=c1t, font_size=fs1)
        steps = VGroup(sol_1, ud_arrows, sol_2).arrange(DOWN, buff=0.4).set_y(0.6)

        buffalo = ImageMobject(assets_folder / "img" / "buffalo_thumbs.png")
        buffalo = buffalo.scale(4/buffalo.get_width()).move_to([-5, .6, 0])

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_6_3.I6.X.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("expression_in")
            x,y,_ = sol_1.get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor,x,y), Write(sol_1), run_time=1)

            self.wait_until_bookmark("log_in")
            x,y,_ = sol_2.get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), Write(sol_2), Write(ud_arrows), run_time=1)

            self.wait_until_bookmark("mark_b")
            self.play(sol_1[-1].animate.set_color(BLUE_D), sol_2[-1].animate.set_color(BLUE_D), run_time=.2)

            self.wait_until_bookmark("mark_a")
            self.play(sol_1[-1].animate.set_color(c1t), sol_2[-1].animate.set_color(c1t), sol_1[0].animate.set_color(BLUE_D), sol_2[2].animate.set_color(BLUE_D), run_time=.2)

            self.wait_until_bookmark("unmark")
            self.play(sol_1[0].animate.set_color(c1t), sol_2[2].animate.set_color(c1t), run_time=.2)

            self.wait_until_bookmark("buffalo_in")
            self.add_shift_sound(.5)
            self.play(buffalo.animate.shift(5*RIGHT), Unwrite(steps), run_time=0.5)

        self.add_shift_sound(.5)
        self.play(buffalo.animate.shift(5*RIGHT), run_time=0.5)
        self.wait(4)



####################################################################################################################################################
# Chapter: Rules for exponential functions I - same base ###########################################################################################
#####################################
#####################################
class Func_6_3_I_7_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rules_book = ImageMobject(assets_folder / "img" / "rules_book.png")
        rules_book = rules_book.scale(4/rules_book.get_width()).move_to([-5, 1, 0])

        rule_1 = Tex("$1$) ", "$\\log_a(x\\cdot y)=\\log_a(x)+\\log_a(y)$", color=c1t, font_size=fs3)
        rule_2 = Tex("$2$) ", "$\\log_a(\\frac xy)=\\log_a(x)-\\log_a(y)$", color=c1t, font_size=fs3)
        rule_3 = Tex("$3$) ", "$\\log_a(x)^y=y\\cdot \\log_a(x)$", color=c1t, font_size=fs3)
        rules = VGroup(rule_1, rule_2, rule_3).arrange(DOWN, buff=.4, aligned_edge=LEFT)


        # Action Sequence
        with self.voiceover(
                text=
"""
When you deal with logarithms, there are certain <bookmark mark="rules_in"/>rules that can make your life easier. I'll start by showing them all to you, and then we'll look at each rule in detail.
The <bookmark mark="rule_1"/>first rule states that the logarithm of a product is equal to the sum of the logarithms of the factors.
The <bookmark mark="rule_2"/>second rule states that the logarithm of a quotient is equal to the difference of the logarithms of the numerator and the denominator.
And the <bookmark mark="rule_3"/>third rule states that the logarithm of a power is equal to the power times the logarithm of the base.
Now try to memorize these three rules, and let's practice!
"""
        ) as tracker:
            
            self.wait_until_bookmark("rules_in")
            self.add_shift_sound(0.5)
            self.play(rules_book.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("rule_1")
            self.add_shift_sound(1)
            self.play(rules_book.animate.shift(5*RIGHT), Write(rule_1), run_time=1)

            self.wait_until_bookmark("rule_2")
            self.play(Write(rule_2), run_time=1)

            self.wait_until_bookmark("rule_3")
            self.play(Write(rule_3), run_time=1)

        self.wait(4)

#####################################
#####################################
class Func_6_3_I_7_2_q(SophiaCursorScene):

    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions = ["$4^{ab}$", "$\\left(4^{a}\\right)^b$", "$4^{a+b}$", "$4^{a}+4^b$"],
    #         correctAnswerIndex = 2,
    #         questionText=self.translate("Func_6_2.I42.q.question-text")
    #     )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        rule = Tex("$\\log_a(x\\cdot y)=\\log_a(x)+\\log_a(y)$", color=c1t, font_size=fs3)
        implication_1 = Tex("$\\Updownarrow$ ",  "$a^\\Box$", color=BLUE_D, font_size=fs3)
        step_1 = Tex("$a^{\\log_a(x\\cdot y)}=a^{\\log_a(x)+\\log_a(y)}$", color=c1t, font_size=fs2).scale(.95)
        implication_2 = Tex("$a^{\\log_a(x)}=x$", " $\\Updownarrow$ ", "$a^{x+y}=a^x\\cdot a^y$", color=BLUE_D, font_size=fs3)
        step_2 = Tex("$xy$", "$=$", "$a^{\\log_a(x)}\\cdot a^{\\log_a(y)}$", color=c1t, font_size=fs2).scale(.95)
        implication_3 = Tex("$\\Updownarrow$", color=BLUE_D, font_size=fs3)
        step_3 = Tex("$xy=xy$", color=c1t, font_size=fs2).scale(.95)
        steps = VGroup(rule, implication_1, step_1, implication_2, step_2, implication_3, step_3).arrange(DOWN, buff=.4).set_y(0.6)
        implication_1.shift(implication_1[0].get_x()*LEFT), implication_2.shift(implication_2[1].get_x()*LEFT), implication_3.shift(implication_3[0].get_x()*LEFT)
        implication_1[0].scale(1.1), implication_2[1].scale(1.1), implication_3[0].scale(1.1)     

        #example = MathTex("4^a\\cdot 4^b=\\,\\,\\,\\,???", color=c1t, font_size=fs1)

        # Action Sequence
        with self.voiceover(
                text="""
Let's start with the rule stating that<bookmark mark="rule_in"/> the base a logarithm of x times y is equal to the base "a" logarithm of x plus the base "a" logarithm of y.
If we raise both sides <bookmark mark="implication_1_in"/>to the power of "a", we get the following expression, which is equivalent: <bookmark mark="step_1_in"/>a to the power of log base "a" of x times y is equal to a to the power of log base "a" of x plus log base "a" of y.
We can then <bookmark mark="implication_2_1_in"/>rewrite the left side of the equation as x times y, because raising something to the power of the logarithm of the same base is equal to the argument of the logarithm. And we can rewrite the right side of the equation as <bookmark mark="implication_2_2_in"/>a to the power of log base "a" of x times a to the power of log base "a" of y, because something raised to power of a sum is equal to the product of the same thing raised to the power of the summands.
We can <bookmark mark="implication_3_in"/>then rewrite the right side of the equation as <bookmark mark="step_3_in"/>x times y, because a to the power of log base "a" of x is equal to x, and a to the power of log base "a" of y is equal to y.
So each of these steps is equivalent to the previous one, and we can conclude that the rule is true.
"""
        ) as tracker:
            
            self.wait_until_bookmark("rule_in")
            self.play(Write(rule))

            self.wait_until_bookmark("implication_1_in")
            self.play(Write(implication_1))

            self.wait_until_bookmark("step_1_in")
            self.play(Write(step_1))

            self.wait_until_bookmark("implication_2_1_in")
            self.play(Write(implication_2[0]), Write(implication_2[1]), Write(step_2[0]))

            self.wait_until_bookmark("implication_2_2_in")
            self.play(Write(step_2[1]), Write(step_2[2]), Write(implication_2[2]))

            self.wait_until_bookmark("implication_3_in")
            self.play(Write(implication_3))

            self.wait_until_bookmark("step_3_in")
            self.play(Write(step_3))

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
class Func_6_3_P_1_q(findLogExpressionQuestionScene):
        
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


class Func_6_3_P_1_a(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 256
            self.base = 4
            self.intro = self.translate("Func_6_3.P1.a.intro")

            super().construct()

class Func_6_3_P_1_b(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 256
            self.base = 4
            self.intro = self.translate("Func_6_3.P1.b.intro")

            super().construct()

class Func_6_3_P_1_c(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 256
            self.base = 4
            self.intro = self.translate("Func_6_3.P1.a.intro")

            super().construct()


class Func_6_3_P_1_d(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 256
            self.base = 4
            self.intro = self.translate("Func_6_3.P1.a.intro")

            super().construct()


#####################################
#####################################
class Func_6_3_P_2_q(findLogExpressionQuestionScene):
        
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


class Func_6_3_P_2_a(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 1/16
            self.base = 1/2
            self.intro = self.translate("Func_6_3.P2.a.intro")

            super().construct()

class Func_6_3_P_2_b(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 1/16
            self.base = 1/2
            self.intro = self.translate("Func_6_3.P2.b.intro")

            super().construct()

class Func_6_3_P_2_c(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 1/16
            self.base = 1/2
            self.intro = self.translate("Func_6_3.P2.b.intro")

            super().construct()


class Func_6_3_P_2_d(findLogExpressionAnswerScene):

        # Main method for constructing the animation
        def construct(self):

            self.result = 256
            self.base = 4
            self.intro = self.translate("Func_6_3.P2.b.intro")

            super().construct()

PROTOTYPES=[
    #############################################
    PagePrototypeVideo.from_scene(Func_6_3_I_1_q),
    PagePrototypeQuestion.from_scene(Func_6_3_I_1_q),
    PagePrototypeVideo.from_scene(Func_6_3_I_1_a),
    PagePrototypeVideo.from_scene(Func_6_3_I_1_b),
    PagePrototypeVideo.from_scene(Func_6_3_I_1_c),
    PagePrototypeVideo.from_scene(Func_6_3_I_1_d),
    PagePrototypeVideo.from_scene(Func_6_3_I_2),
    PagePrototypeVideo.from_scene(Func_6_3_I_3),
    PagePrototypeVideo.from_scene(Func_6_3_I_4_q),
    PagePrototypeQuestion.from_scene(Func_6_3_I_4_q),
    PagePrototypeVideo.from_scene(Func_6_3_I_4_a),
    PagePrototypeVideo.from_scene(Func_6_3_I_4_b),
    PagePrototypeVideo.from_scene(Func_6_3_I_4_c),
    PagePrototypeVideo.from_scene(Func_6_3_I_4_d),
    PagePrototypeVideo.from_scene(Func_6_3_I_5),
    PagePrototypeVideo.from_scene(Func_6_3_I_6_X),
    #############################################
    PagePrototypeVideo.from_scene(Func_6_3_P_1_q),
    PagePrototypeQuestion.from_scene(Func_6_3_P_1_q),
    PagePrototypeVideo.from_scene(Func_6_3_P_1_a),
    PagePrototypeVideo.from_scene(Func_6_3_P_1_b),
    PagePrototypeVideo.from_scene(Func_6_3_P_1_c),
    PagePrototypeVideo.from_scene(Func_6_3_P_1_d),
    PagePrototypeVideo.from_scene(Func_6_3_P_2_q),
    PagePrototypeQuestion.from_scene(Func_6_3_P_2_q),
    PagePrototypeVideo.from_scene(Func_6_3_P_2_a),
    PagePrototypeVideo.from_scene(Func_6_3_P_2_b),
    PagePrototypeVideo.from_scene(Func_6_3_P_2_c),
    PagePrototypeVideo.from_scene(Func_6_3_P_2_d),
]