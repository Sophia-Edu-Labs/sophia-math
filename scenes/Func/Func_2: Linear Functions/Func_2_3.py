# 2_3: Linear Functions: Functions and Linear Equalities

# Import necessary libraries and modules
from abc import ABCMeta, abstractmethod
from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
from sophialib.styles.sophiascene import (CursorMoveToCurved, CursorPositionTracker,
                                          CursorPositionTracking,
                                          CursorResizeDefault, SophiaScene,
                                          assets_folder, AltCursor,
                                          SophiaCursorScene, CursorMoveTo,
                                          CursorMoveResize, Notepad, CursorMarkAxis)
from sophialib.styles.styleconstants import *
from sophialib.styles.sophiaobjects import *
from manim import *
from PIL import Image
import numpy as np
from pathlib import Path
from sophialib.tasks.sophiataskdefinition import SophiaTaskDefinition
import ast


#####################################
#####################################
class Func_2_3_I_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=["$f(x)=5x+15, \,g(x)=20x$", "$f(x)=15x+15, \,g(x)=20x$","$f(x)=15x+5, \,g(x)=20x$", "$f(x)=15x+15, \,g(x)=20+x$"],
            correctAnswerIndex=2,
            questionText = self.translate("Func_2_3.I1.q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_2_3.I1.q.title"))

        bike = ImageMobject(assets_folder / "img" / "bike.jpg")
        bike = bike.scale(3.2/bike.get_width()).move_to([-5, 1, 0])

        f1 = Tex(self.translate("Func_2_3.I1.q.f1"), color=c1t, font_size=fs2).next_to(bike, DOWN, buff=0.6).shift(5*RIGHT)
        f2 = BulletedList(self.translate("Func_2_3.I1.q.f2a"), self.translate("Func_2_3.I1.q.f2b"), buff=0.2, font_size=fs3).set_color(c1t).next_to(f1, DOWN)
        y1 = Tex(self.translate("Func_2_3.I1.q.y1"), color=c1t, font_size=fs2).next_to(f2, DOWN)
        y2 = BulletedList(self.translate("Func_2_3.I1.q.y2"), color=c1t, font_size=fs3).set_color(c1t).next_to(y1, DOWN)
        comparison = VGroup(f1, f2, y1, y2).arrange(DOWN, center=False, aligned_edge=LEFT).shift(0.2*LEFT)
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_3.I1.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("bike")
            self.play(bike.animate.shift(5*RIGHT))

            self.wait_until_bookmark("f1")
            self.play(Write(f1))

            self.wait_until_bookmark("f2")
            self.play(Write(f2[0]))

            self.wait_until_bookmark("f3")
            self.play(Write(f2[1]))

            self.wait_until_bookmark("y1")
            self.play(Write(y1))

            self.wait_until_bookmark("y2")
            self.play(Write(y2[0]))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_2_3_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_2_3.I1.q.title"))

        f1 = Tex(self.translate("Func_2_3.I1.q.f1"), color=c1t, font_size=fs2).next_to(title, DOWN, buff=0.6)
        f2 = BulletedList(self.translate("Func_2_3.I1.q.f2a"), self.translate("Func_2_3.I1.q.f2b"), buff=0.2, font_size=fs3).set_color(c1t).next_to(f1, DOWN)
        f3 = MathTex("\\downarrow", color=c1t, font_size=fs2).next_to(f2, DOWN)


        y1 = Tex(self.translate("Func_2_3.I1.q.y1"), color=c1t, font_size=fs2).next_to(title, DOWN)
        y2 = BulletedList(self.translate("Func_2_3.I1.q.y2"), color=c1t, font_size=fs3).set_color(c1t).next_to(y1, DOWN)
        y3 = MathTex("\\downarrow", color=c1t, font_size=fs2).next_to(y2, DOWN)

        # comparison = VGroup(f1, f2, y1, y2).arrange(aligned_edge=LEFT).shift(0.2*LEFT)

        funcFriend = MathTex("f(x)=15x","+5", color=c1t, font_size=fs2).next_to(f3, DOWN)
        funcYou = MathTex("g(x)=20x", color=c1t, font_size=fs2).next_to(y3, DOWN)
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_3.I1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("friend")
            self.play(Write(f1), Write(f2))
            
            self.wait_until_bookmark("friendfunc1")
            self.play(Write(funcFriend[0]), Write(f3))

            self.wait_until_bookmark("friendfunc2")
            self.play(Write(funcFriend[1]))

            self.wait_until_bookmark("you")
            self.play(Unwrite(f1), Unwrite(f2), Unwrite(f3), Unwrite(funcFriend), run_time=0.5)
            self.play(Write(y1), Write(y2), run_time=1)

            self.wait_until_bookmark("yourfunc")
            self.play(Write(funcYou), Write(y3))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_2_3_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_2_3.I1.q.title"))

        f1 = Tex(self.translate("Func_2_3.I1.q.f1"), color=c1t, font_size=fs2).next_to(title, DOWN, buff=0.6)
        f2 = BulletedList(self.translate("Func_2_3.I1.q.f2a"), self.translate("Func_2_3.I1.q.f2b"), buff=0.2, font_size=fs3).set_color(c1t).next_to(f1, DOWN)
        f3 = MathTex("\\downarrow", color=c1t, font_size=fs2).next_to(f2, DOWN)


        y1 = Tex(self.translate("Func_2_3.I1.q.y1"), color=c1t, font_size=fs2).next_to(title, DOWN)
        y2 = BulletedList(self.translate("Func_2_3.I1.q.y2"), color=c1t, font_size=fs3).set_color(c1t).next_to(y1, DOWN)
        y3 = MathTex("\\downarrow", color=c1t, font_size=fs2).next_to(y2, DOWN)
        # comparison = VGroup(f1, f2, y1, y2).arrange(aligned_edge=LEFT).shift(0.2*LEFT)

        funcFriend = MathTex("f(x)=15x","+5", color=c1t, font_size=fs2).next_to(f3, DOWN)
        funcYou = MathTex("g(x)=20x", color=c1t, font_size=fs2).next_to(y3, DOWN)
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_3.I1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("friend")
            self.play(Write(f1), Write(f2))
            
            self.wait_until_bookmark("friendfunc1")
            self.play(Write(funcFriend[0]), Write(f3))

            self.wait_until_bookmark("friendfunc2")
            self.play(Write(funcFriend[1]))

            self.wait_until_bookmark("you")
            self.play(Unwrite(f1), Unwrite(f2), Unwrite(f3), Unwrite(funcFriend), run_time=0.5)
            self.play(Write(y1), Write(y2), run_time=1)

            self.wait_until_bookmark("yourfunc")
            self.play(Write(funcYou), Write(y3))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_2_3_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_2_3.I1.q.title"))

        f1 = Tex(self.translate("Func_2_3.I1.q.f1"), color=c1t, font_size=fs2).next_to(title, DOWN, buff=0.6)
        f2 = BulletedList(self.translate("Func_2_3.I1.q.f2a"), self.translate("Func_2_3.I1.q.f2b"), buff=0.2, font_size=fs3).set_color(c1t).next_to(f1, DOWN)
        f3 = MathTex("\\downarrow", color=c1t, font_size=fs2).next_to(f2, DOWN)


        y1 = Tex(self.translate("Func_2_3.I1.q.y1"), color=c1t, font_size=fs2).next_to(title, DOWN)
        y2 = BulletedList(self.translate("Func_2_3.I1.q.y2"), color=c1t, font_size=fs3).set_color(c1t).next_to(y1, DOWN)
        y3 = MathTex("\\downarrow", color=c1t, font_size=fs2).next_to(y2, DOWN)

        # comparison = VGroup(f1, f2, y1, y2).arrange(aligned_edge=LEFT).shift(0.2*LEFT)

        funcFriend = MathTex("f(x)=15x","+5", color=c1t, font_size=fs2).next_to(f3, DOWN)
        funcYou = MathTex("g(x)=20x", color=c1t, font_size=fs2).next_to(y3, DOWN)
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_3.I1.c.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("friend")
            self.play(Write(f1), Write(f2))
            
            self.wait_until_bookmark("friendfunc1")
            self.play(Write(funcFriend[0]), Write(f3))

            self.wait_until_bookmark("friendfunc2")
            self.play(Write(funcFriend[1]))

            self.wait_until_bookmark("you")
            self.play(Unwrite(f1), Unwrite(f2), Unwrite(f3), Unwrite(funcFriend), run_time=0.5)
            self.play(Write(y1), Write(y2), run_time=1)

            self.wait_until_bookmark("yourfunc")
            self.play(Write(funcYou), Write(y3))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_2_3_I_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_2_3.I1.q.title"))

        f1 = Tex(self.translate("Func_2_3.I1.q.f1"), color=c1t, font_size=fs2).next_to(title, DOWN, buff=0.6)
        f2 = BulletedList(self.translate("Func_2_3.I1.q.f2a"), self.translate("Func_2_3.I1.q.f2b"), buff=0.2, font_size=fs3).set_color(c1t).next_to(f1, DOWN)
        f3 = MathTex("\\downarrow", color=c1t, font_size=fs2).next_to(f2, DOWN)


        y1 = Tex(self.translate("Func_2_3.I1.q.y1"), color=c1t, font_size=fs2).next_to(title, DOWN)
        y2 = BulletedList(self.translate("Func_2_3.I1.q.y2"), color=c1t, font_size=fs3).set_color(c1t).next_to(y1, DOWN)
        y3 = MathTex("\\downarrow", color=c1t, font_size=fs2).next_to(y2, DOWN)

        # comparison = VGroup(f1, f2, y1, y2).arrange(aligned_edge=LEFT).shift(0.2*LEFT)

        funcFriend = MathTex("f(x)=15x","+5", color=c1t, font_size=fs2).next_to(f3, DOWN)
        funcYou = MathTex("g(x)=20x", color=c1t, font_size=fs2).next_to(y3, DOWN)
        
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_3.I1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("friend")
            self.play(Write(f1), Write(f2))
            
            self.wait_until_bookmark("friendfunc1")
            self.play(Write(funcFriend[0]), Write(f3))

            self.wait_until_bookmark("friendfunc2")
            self.play(Write(funcFriend[1]))

            self.wait_until_bookmark("you")
            self.play(Unwrite(f1), Unwrite(f2), Unwrite(f3), Unwrite(funcFriend), run_time=0.5)
            self.play(Write(y1), Write(y2), run_time=1)

            self.wait_until_bookmark("yourfunc")
            self.play(Write(funcYou), Write(y3))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_2_3_I_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_2_3.I2.title"))

        bikeMeet = ImageMobject(assets_folder / "img" / "cyclistsmeet.png")
        bikeRace = ImageMobject(assets_folder / "img" / "cyclistsrace.png")
        bikeMeet = bikeMeet.scale(3.2/bikeMeet.get_width()).move_to([-5, 0.5, 0])
        bikeRace = bikeRace.scale(3.2/bikeRace.get_width()).move_to([5, -1.5, 0])
        # comparison = VGroup(f1, f2, y1, y2).arrange(aligned_edge=LEFT).shift(0.2*LEFT)

        # funcFriend = MathTex("f(x)=15x","+5", color=c1t, font_size=fs2).next_to(f3, DOWN)
        # funcYou = MathTex("g(x)=20x", color=c1t, font_size=fs2).next_to(y3, DOWN)
        
        Q1 = Tex(self.translate("Func_2_3.I2.Q1"), color=RED, font_size=fs3).next_to(bikeMeet, DOWN, buff=0.6).shift(RIGHT*5)
        Q2 = Tex(self.translate("Func_2_3.I2.Q2"), color=RED, font_size=fs3).next_to(Q1, DOWN, buff=0.1)
        Q3 = Tex(self.translate("Func_2_3.I2.Q3"), color=RED, font_size=fs3).next_to(Q2, DOWN, buff=0.1)        
        Q = VGroup(Q1, Q2, Q3).arrange(DOWN, buff=0.1, center=False, aligned_edge=RIGHT).shift(LEFT*0.1)
        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_3.I2.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("race")
            self.play(bikeRace.animate.shift(5*LEFT))
            
            self.wait_until_bookmark("meet")
            self.play(bikeMeet.animate.shift(5*RIGHT), bikeRace.animate.shift(5*LEFT))

            self.wait_until_bookmark("Q")
            self.play(Write(Q), run_time=0.75)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_2_3_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_2_3.I3.title"))

        # comparison = VGroup(f1, f2, y1, y2).arrange(aligned_edge=LEFT).shift(0.2*LEFT)

        funcFriend = MathTex("f(x)=15x","+5", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1)
        textFriend1 = Tex(self.translate("Func_2_3.I3.tf1"), color=RED, font_size=fs3).next_to(funcFriend, DOWN, buff=0.2)
        textFriend2 = Tex(self.translate("Func_2_3.I3.tf2"), color=RED, font_size=fs3).next_to(textFriend1, DOWN, buff=0.1)
        textFriend = VGroup(textFriend1, textFriend2).arrange(DOWN, buff=0.1, center=False, aligned_edge=RIGHT).shift(RIGHT*0.2)

        funcYou = MathTex("g(x)=20x", color=c1t, font_size=fs2).next_to(textFriend, DOWN)
        funcYou = funcYou.shift(LEFT*(funcYou.get_left()[0]-funcFriend.get_left()[0]))
        textYou1 = Tex(self.translate("Func_2_3.I3.ty1"), color=RED, font_size=fs3).next_to(funcYou, DOWN, buff=0.2)
        textYou2 = Tex(self.translate("Func_2_3.I3.ty2"), color=RED, font_size=fs3).next_to(textYou1, DOWN, buff=0.1)
        textYou = VGroup(textYou1, textYou2).arrange(DOWN, buff=0.1, center=False, aligned_edge=RIGHT).shift(RIGHT*0.2)
        textYou = textYou.shift(LEFT*(textYou.get_left()[0]-textFriend.get_left()[0]))

        funcBoth = MathTex("f(x)=g(x)", color=c1t, font_size=fs2).next_to(textYou, DOWN, buff=1)
        funcBoth = funcBoth.shift(LEFT*(funcBoth.get_left()[0]-funcFriend.get_left()[0]))
        textBoth1 = Tex(self.translate("Func_2_3.I3.tb1"), color=RED, font_size=fs3).next_to(funcBoth, DOWN, buff=0.2)
        textBoth2 = Tex(self.translate("Func_2_3.I3.tb2"), color=RED, font_size=fs3).next_to(textBoth1, DOWN, buff=0.1)
        textBoth = VGroup(textBoth1, textBoth2).arrange(DOWN, buff=0.1, center=False, aligned_edge=RIGHT).shift(RIGHT*0.2)
        textBoth = textBoth.shift(LEFT*(textBoth.get_left()[0]-textFriend.get_left()[0]))

        friendBikeWave = ImageMobject(assets_folder / "img" / "friendbikewave.png")
        youBikeWave = ImageMobject(assets_folder / "img" / "youbikewave.png")
        friendBikeWave = friendBikeWave.scale(3.2/friendBikeWave.get_width()).next_to(textFriend, DOWN, buff=0.2).shift(LEFT*5)
        youBikeWave = youBikeWave.scale(3.2/youBikeWave.get_width()).next_to(textYou, DOWN, buff=0.2).shift(LEFT*5)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_3.I3.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(funcFriend), run_time=0.5)
            self.play(Write(textFriend), friendBikeWave.animate(run_time=1.5).shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("g")
            textFriend.set_color(c3t)
            self.play(friendBikeWave.animate(run_time=0.3).shift(RIGHT*5), Write(funcYou), run_time=0.5)
            self.play(Write(textYou), youBikeWave.animate(run_time=1.5).shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("youLeave")
            self.play(youBikeWave.animate.shift(RIGHT*5))

            self.wait_until_bookmark("both")
            textYou.set_color(c3t)
            self.play(Write(funcBoth), run_time=0.5)
            self.play(Write(textBoth), run_time=0.5)


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_2_3_I_4(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_2_3.I4.title"))

        # comparison = VGroup(f1, f2, y1, y2).arrange(aligned_edge=LEFT).shift(0.2*LEFT)

        funcFriend = MathTex("f(x)=15x","+5", color=c1t, font_size=fs1).next_to(title, DOWN, buff=0.8)
        funcYou = MathTex("g(x)=20x", color=c1t, font_size=fs1).next_to(funcFriend, DOWN, buff=0.2)
        funcYou = funcYou.shift(LEFT*(funcYou.get_left()[0]-funcFriend.get_left()[0]))

        upShiftBoth = 1.2

        funcBoth = MathTex("f(x)=g(x)", color=c1t, font_size=fs1).next_to(funcYou, DOWN, buff=0.8)
        funcBoth.set_x(0)
        fBA1 = MathTex("\\downarrow", color=c1t, font_size=fs1).next_to(funcBoth, DOWN, buff=0.2).shift(upShiftBoth*UP)
        fB1 = MathTex("15x+5=20x", color=c1t, font_size=fs1).next_to(fBA1, DOWN, buff=0.2)
        fbA2 = MathTex("\\downarrow", color=c1t, font_size=fs1).next_to(fB1, DOWN, buff=0.2)
        fB2 = MathTex("5=5x", color=c1t, font_size=fs1).next_to(fbA2, DOWN, buff=0.2)
        fbA3 = MathTex("\\downarrow", color=c1t, font_size=fs1).next_to(fB2, DOWN, buff=0.2)
        fB3 = MathTex("x=1", color=RED, font_size=fs1).next_to(fbA3, DOWN, buff=0.2)


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_3.I4.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("both")
            self.play(Write(funcBoth), run_time=0.5)
            
            self.wait_until_bookmark("f")
            self.play(Write(funcFriend), run_time=0.5)

            self.wait_until_bookmark("g")
            self.play(Write(funcYou), run_time=0.5)

            self.wait_until_bookmark("calculate")
            self.play(funcBoth.animate.shift(UP*upShiftBoth), Unwrite(funcFriend), Unwrite(funcYou), run_time=0.5)

            self.wait_until_bookmark("step1a")
            self.play(Write(fBA1), run_time=0.5)

            self.wait_until_bookmark("step1b")
            self.play(Write(fB1), run_time=0.5)

            self.wait_until_bookmark("step2a")
            self.play(Write(fbA2), run_time=0.5)

            self.wait_until_bookmark("step2b")
            self.play(Write(fB2), run_time=0.5)

            self.wait_until_bookmark("step3a")
            self.play(Write(fbA3), run_time=0.5)

            self.wait_until_bookmark("step3b")
            self.play(Write(fB3), run_time=0.5)

            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)



#####################################
#####################################
class Func_2_3_I_5(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):

        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_2_3.I5.title"))

        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(3.2/qmark.get_width()).move_to([-5, 1, 0])

        function = Tex(self.translate("Func_2_3.I5.functions"), color=c1t, font_size=fs2).next_to(title, DOWN, buff=1).shift(LEFT*0.4)
        tf1 = Tex(self.translate("Func_2_3.I5.tf1"), color=RED, font_size=fs3).next_to(function, DOWN, buff=0.2)
        tf2 = Tex(self.translate("Func_2_3.I5.tf2"), color=RED, font_size=fs3).next_to(tf1, DOWN, buff=0.1)
        tf = VGroup(tf1, tf2).arrange(DOWN, buff=0.1, center=False, aligned_edge=RIGHT).shift(RIGHT*0.4)

        equation = Tex(self.translate("Func_2_3.I5.equations"), color=c1t, font_size=fs2).next_to(tf, DOWN)
        equation = equation.shift(LEFT*(equation.get_left()[0]-function.get_left()[0]))
        te1 = Tex(self.translate("Func_2_3.I5.te1"), color=RED, font_size=fs3).next_to(equation, DOWN, buff=0.2)
        te2 = Tex(self.translate("Func_2_3.I5.te2"), color=RED, font_size=fs3).next_to(te1, DOWN, buff=0.1)
        te = VGroup(te1, te2).arrange(DOWN, buff=0.1, center=False, aligned_edge=RIGHT).shift(RIGHT*0.2)
        te = te.shift(LEFT*(te.get_left()[0]-tf.get_left()[0]))

        handshake = ImageMobject(assets_folder / "img" / "handshake.png")
        handshake = handshake.scale(1.2/handshake.get_width()).move_to([-5, 1, 0])
        fLeft = Tex(self.translate("Func_2_3.I5.functions"), color=c1t, font_size=fs3).next_to(handshake, LEFT, buff=0.1)
        eRight = Tex(self.translate("Func_2_3.I5.equations"), color=c1t, font_size=fs3).next_to(handshake, RIGHT, buff=0.1)
        shakeGroup = Group(handshake, fLeft, eRight).scale(0.8).next_to(te, DOWN, buff=0.5)
        ts1 = Tex(self.translate("Func_2_3.I5.ts1"), color=RED, font_size=fs3).next_to(shakeGroup, DOWN, buff=0.2)
        ts2 = Tex(self.translate("Func_2_3.I5.ts2"), color=RED, font_size=fs3).next_to(ts1, DOWN, buff=0.1)
        ts3 = Tex(self.translate("Func_2_3.I5.ts3"), color=RED, font_size=fs3).next_to(ts2, DOWN, buff=0.1)
        ts = VGroup(ts1, ts2, ts3).arrange(DOWN, buff=0.1, center=False, aligned_edge=RIGHT).shift(RIGHT*0.2)
        ts = ts.shift(LEFT*(ts.get_left()[0]-te.get_left()[0]))
        shakeGroup.shift(3*RIGHT)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_2_3.I5.voiceover")
        ) as tracker:


            self.wait_until_bookmark("qmark")
            self.play(qmark.animate.shift(5*RIGHT), run_time=1)

            self.wait_until_bookmark("functions")
            self.play(qmark.animate.shift(5*RIGHT), run_time=0.4)
            self.play(Write(function), Write(tf))

            self.wait_until_bookmark("equation")
            self.play(Write(equation), Write(te))

            self.wait_until_bookmark("handshake")
            self.play(shakeGroup.animate.shift(3.2*LEFT))
            self.play(Write(ts))

            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_2_3_I_6_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=["(1,20)", "(0,5)", "(20,20)", "(1,1)"],
            correctAnswerIndex=0,
            questionText = self.translate("Func_2_3.I6.q.question-text") 
        )

    # Main method for constructing the animation
    def construct(self):

        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_2_3.I6.q.title"))

        cords = self.add_cords([0, 3, 1], [0, 40, 5], x_ticks=[1,2,3], y_ticks=[10,20,30,40])
        plane = cords[0]

        # note = Notepad(texts=["Problem can also be solved graphically", "Consider the plots of $g$ and $f$","Where do the two functions intersect?"])
        # self.add(note)

        funcTexf = MathTex("f(x) = 15x + 5", color=c1t, font_size=fs1).next_to(plane, DOWN, buff=0.5)
        funcTexg = MathTex("g(x) = 20x", color=c2t, font_size=fs1).move_to(funcTexf)
        funcTexg = funcTexg.shift(LEFT*(funcTexg.get_left()[0]-funcTexf.get_left()[0]))
        f = lambda x: 15*x + 5
        g = lambda x: 20*x
        plot_f = plane.plot(f, color=BLUE)
        plot_g = plane.plot(g, color=GREEN)

        intersection = plane.c2p(1,20)
        intersectionDot = Dot(intersection, color=RED)

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])

        with self.voiceover(
                text=self.translate("Func_2_3.I6.q.voiceover")
        ) as tracker:
            
            
            self.wait_until_bookmark("cords")
            self.play(Write(cords))
            self.add(cursor)

            self.wait_until_bookmark("f")
            self.play(Write(funcTexf))

            self.wait_until_bookmark("g")
            self.play(ReplacementTransform(funcTexf, funcTexg))

            self.wait_until_bookmark("plot")
            self.play(Write(plot_f), Write(plot_g))
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_2_3_I_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):

        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_2_3.I6.q.title"))

        cords = self.add_cords([0, 3, 1], [0, 40, 5], x_ticks=[1,2,3], y_ticks=[10,20,30,40])
        plane = cords[0]

        # note = Notepad(texts=[["Follow one of the graphs", "until both intersect"], "Intersection at $(1,20)$","$\\rightarrow$ You meet after $x=1$ hour"])
        # self.add(note)

        funcTexf = MathTex("f(x) = 15x + 5", color=c1t, font_size=fs1).next_to(plane, DOWN, buff=0.5)
        funcTexg = MathTex("g(x) = 20x", color=c2t, font_size=fs1).move_to(funcTexf)
        funcTexg = funcTexg.shift(LEFT*(funcTexg.get_left()[0]-funcTexf.get_left()[0]))
        f = lambda x: 15*x + 5
        g = lambda x: 20*x
        plot_f = plane.plot(f, color=BLUE)
        plot_g = plane.plot(g, color=GREEN)

        ix, iy, _ = plane.c2p(1,20)
        # intersectionDot = Dot(intersection, color=RED)

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])

        self.add(cursor, cords, plot_f, plot_g)

        xdown, ydown, _ = plane.c2p(1,0)
        xleft, yleft, _ = plane.c2p(0,20)

        dashed1 = DashedLine([xleft, iy, 0], [ix, iy, 0], color=c2t)
        dashed2 = DashedLine([ix, ydown, 0], [ix, iy, 0], color=c2t)

        with self.voiceover(
                text=self.translate("Func_2_3.I6.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("intersectLoc")
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, ix, iy))
            interCirc = Circle(radius=0.2, color=RED).move_to([ix, iy, 0])
            self.play(Write(interCirc), Write(dashed1), Write(dashed2))

            self.wait_until_bookmark("cursorBack")
            self.play(CursorMoveTo(cursor, xo, yo))
            self.wait(0.2)
            cursor.blinking=True

            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_2_3_I_6_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):

        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_2_3.I6.q.title"))

        cords = self.add_cords([0, 3, 1], [0, 40, 5], x_ticks=[1,2,3], y_ticks=[10,20,30,40])
        plane = cords[0]

        # note = Notepad(texts=[["Follow one of the graphs", "until both intersect"], "Intersection at $(1,20)$","$\\rightarrow$ You meet after $x=1$ hour"])
        # self.add(note)

        funcTexf = MathTex("f(x) = 15x + 5", color=c1t, font_size=fs1).next_to(plane, DOWN, buff=0.5)
        funcTexg = MathTex("g(x) = 20x", color=c2t, font_size=fs1).move_to(funcTexf)
        funcTexg = funcTexg.shift(LEFT*(funcTexg.get_left()[0]-funcTexf.get_left()[0]))
        f = lambda x: 15*x + 5
        g = lambda x: 20*x
        plot_f = plane.plot(f, color=BLUE)
        plot_g = plane.plot(g, color=GREEN)

        ix, iy, _ = plane.c2p(1,20)
        # intersectionDot = Dot(intersection, color=RED)

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])

        self.add(cursor, cords, plot_f, plot_g)

        xdown, ydown, _ = plane.c2p(1,0)
        xleft, yleft, _ = plane.c2p(0,20)

        dashed1 = DashedLine([xleft, iy, 0], [ix, iy, 0], color=c2t)
        dashed2 = DashedLine([ix, ydown, 0], [ix, iy, 0], color=c2t)

        with self.voiceover(
                text=self.translate("Func_2_3.I6.b.voiceover")
        ) as tracker:

            
            self.wait_until_bookmark("intersectLoc")
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, ix, iy))
            interCirc = Circle(radius=0.2, color=RED).move_to([ix, iy, 0])
            self.play(Write(interCirc), Write(dashed1), Write(dashed2))

            self.wait_until_bookmark("cursorBack")
            self.play(CursorMoveTo(cursor, xo, yo))
            self.wait(0.2)
            cursor.blinking=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)



class Func_2_3_I_6_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):

        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_2_3.I6.q.title"))

        cords = self.add_cords([0, 3, 1], [0, 40, 5], x_ticks=[1,2,3], y_ticks=[10,20,30,40])
        plane = cords[0]

        # note = Notepad(texts=[["Follow one of the graphs", "until both intersect"], "Intersection at $(1,20)$","$\\rightarrow$ You meet after $x=1$ hour"])
        # self.add(note)

        funcTexf = MathTex("f(x) = 15x + 5", color=c1t, font_size=fs1).next_to(plane, DOWN, buff=0.5)
        funcTexg = MathTex("g(x) = 20x", color=c2t, font_size=fs1).move_to(funcTexf)
        funcTexg = funcTexg.shift(LEFT*(funcTexg.get_left()[0]-funcTexf.get_left()[0]))
        f = lambda x: 15*x + 5
        g = lambda x: 20*x
        plot_f = plane.plot(f, color=BLUE)
        plot_g = plane.plot(g, color=GREEN)

        ix, iy, _ = plane.c2p(1,20)
        # intersectionDot = Dot(intersection, color=RED)

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])

        self.add(cursor, cords, plot_f, plot_g)

        xdown, ydown, _ = plane.c2p(1,0)
        xleft, yleft, _ = plane.c2p(0,20)

        dashed1 = DashedLine([xleft, iy, 0], [ix, iy, 0], color=c2t)
        dashed2 = DashedLine([ix, ydown, 0], [ix, iy, 0], color=c2t)

        with self.voiceover(
                text=self.translate("Func_2_3.I6.b.voiceover")
        ) as tracker:

            
            self.wait_until_bookmark("intersectLoc")
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, ix, iy))
            interCirc = Circle(radius=0.2, color=RED).move_to([ix, iy, 0])
            self.play(Write(interCirc), Write(dashed1), Write(dashed2))

            self.wait_until_bookmark("cursorBack")
            self.play(CursorMoveTo(cursor, xo, yo))
            self.wait(0.2)
            cursor.blinking=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_2_3_I_6_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):

        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_2_3.I6.q.title"))

        cords = self.add_cords([0, 3, 1], [0, 40, 5], x_ticks=[1,2,3], y_ticks=[10,20,30,40])
        plane = cords[0]

        # note = Notepad(texts=[["Follow one of the graphs", "until both intersect"], "Intersection at $(1,20)$","$\\rightarrow$ You meet after $x=1$ hour"])
        # self.add(note)

        funcTexf = MathTex("f(x) = 15x + 5", color=c1t, font_size=fs1).next_to(plane, DOWN, buff=0.5)
        funcTexg = MathTex("g(x) = 20x", color=c2t, font_size=fs1).move_to(funcTexf)
        funcTexg = funcTexg.shift(LEFT*(funcTexg.get_left()[0]-funcTexf.get_left()[0]))
        f = lambda x: 15*x + 5
        g = lambda x: 20*x
        plot_f = plane.plot(f, color=BLUE)
        plot_g = plane.plot(g, color=GREEN)

        ix, iy, _ = plane.c2p(1,20)
        # intersectionDot = Dot(intersection, color=RED)

        xo, yo, _ = plane.x_axis.n2p(0)
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.move_to([xo, yo, 0])

        self.add(cursor, cords, plot_f, plot_g)

        xdown, ydown, _ = plane.c2p(1,0)
        xleft, yleft, _ = plane.c2p(0,20)

        dashed1 = DashedLine([xleft, iy, 0], [ix, iy, 0], color=c2t)
        dashed2 = DashedLine([ix, ydown, 0], [ix, iy, 0], color=c2t)

        with self.voiceover(
                text=self.translate("Func_2_3.I6.b.voiceover")
        ) as tracker:

            
            self.wait_until_bookmark("intersectLoc")
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, ix, iy))
            interCirc = Circle(radius=0.2, color=RED).move_to([ix, iy, 0])
            self.play(Write(interCirc), Write(dashed1), Write(dashed2))

            self.wait_until_bookmark("cursorBack")
            self.play(CursorMoveTo(cursor, xo, yo))
            self.wait(0.2)
            cursor.blinking=True
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
######### Practice Part #############
#####################################
#####################################

class linearFunctionEqualityQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):

        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_2_3.LinearFunctionEqualityQuestionScene.title"))

        self.get_num = get_num

        print(self.evaluate_string(self.translate("Func_2_3.LinearFunctionEqualityQuestionScene.fText")))
        print("XXX-PRint")
        self.fText = self.evaluate_string(self.translate("Func_2_3.LinearFunctionEqualityQuestionScene.fText"))
        self.gText = self.evaluate_string(self.translate("Func_2_3.LinearFunctionEqualityQuestionScene.gText"))
        fTex = f"f(x) = {str(self.fParams[0])}x {get_texNum(self.fParams[1])}"
        gTex = f"g(x) = {str(self.gParams[0])}x {get_texNum(self.gParams[1])}"

        f = MathTex(fTex, color=c1t, font_size=fs1).next_to(title, DOWN, buff=1.5)
        g = MathTex(gTex, color=c2t, font_size=fs1).next_to(f, DOWN, buff=0.2)
        g = g.shift(LEFT*(g.get_left()[0]-f.get_left()[0]))
        handshake = ImageMobject(assets_folder / "img" / "handshake.png")
        handshake = handshake.scale(1.2/handshake.get_width()).move_to([-5, 1, 0])
        fLeft = MathTex("f(x)", color=c1t, font_size=fs1).next_to(handshake, LEFT, buff=0.1)
        gRight = MathTex("g(x)", color=c1t, font_size=fs1).next_to(handshake, RIGHT, buff=0.1)
        equal = MathTex("=", color=c1t, font_size=fs1).next_to(handshake, DOWN, buff=0.1)
        shakeGroup = Group(handshake, fLeft, gRight, equal).scale(0.8).next_to(g, DOWN, buff=1.5).shift(3*RIGHT)

        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_2_3.LinearFunctionEqualityQuestionScene.voiceover"))
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(f))

            self.wait_until_bookmark("g")
            self.play(Write(g))

            self.wait_until_bookmark("handshake")
            if self.handShake:
                self.play(shakeGroup.animate.shift(LEFT*3))

            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class linearFunctionEqualityAnswerScene(SophiaCursorScene, metaclass=ABCMeta):


    # Main method for constructing the animation
    @abstractmethod
    def construct(self):

        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_2_3.LinearFunctionEqualityAnswerScene.title"))

        upshift = 2

        self.op1 = ast.literal_eval(self.translate("Func_2_3.LinearFunctionEqualityAnswerScene.op1a")) if self.fParams[1] < 0 else ast.literal_eval(self.translate("Func_2_3.LinearFunctionEqualityAnswerScene.op1b"))
        self.op2 = ast.literal_eval(self.translate("Func_2_3.LinearFunctionEqualityAnswerScene.op1a")) if self.gParams[0] < 0 else ast.literal_eval(self.translate("Func_2_3.LinearFunctionEqualityAnswerScene.op1b"))
        plane = self.cords[0]

        self.get_num = get_num

        neg, pos, pointstring = self.translate("Func_2_3.LinearFunctionEqualityAnswerScene.neg"), self.translate("Func_2_3.LinearFunctionEqualityAnswerScene.pos"), self.translate("Func_2_3.LinearFunctionEqualityAnswerScene.point")

        self.fText = self.evaluate_string(self.translate("Func_2_3.LinearFunctionEqualityAnswerScene.fText"))
        self.gText = self.evaluate_string(self.translate("Func_2_3.LinearFunctionEqualityAnswerScene.gText"))
        fTex = f"f(x) = {str(self.fParams[0])}x {get_texNum(self.fParams[1])}"
        gTex = f"g(x) = {str(self.gParams[0])}x {get_texNum(self.gParams[1])}"
        fEqGTex = f"{str(self.fParams[0])}x {get_texNum(self.fParams[1])}={str(self.gParams[0])}x {get_texNum(self.gParams[1])}"
        self.fEqGText = f"{get_num(self.fParams[0], negation=neg, point=pointstring)} 'x' {get_num(self.fParams[1], negation=neg, point=pointstring, pos=pos)} {self.translate('Func_2_3.LinearFunctionEqualityAnswerScene.equals')} {get_num(self.gParams[0], negation=neg, point=pointstring)} x {get_num(self.gParams[1], negation=neg, point=pointstring, pos=pos)}"
        f = MathTex(fTex, color=c1t, font_size=fs1).next_to(title, DOWN, buff=1.5)
        g = MathTex(gTex, color=c2t, font_size=fs1).next_to(f, DOWN, buff=0.2)
        fEqG = MathTex("f(x)=g(x)", color=c1t, font_size=fs2).next_to(g, DOWN, buff=0.8)
        downArrow = MathTex("\\downarrow", color=c1t, font_size=fs1).next_to(fEqG, DOWN, buff=0.2)
        fEqGNums = MathTex(fEqGTex, color=c2t, font_size=fs2).next_to(downArrow, DOWN, buff=0.2)
        group1 = Group(fEqG, downArrow, fEqGNums)
        finalG = Group(fEqG, downArrow, fEqGNums)
        prev = Circle(stroke_width=0, fill_opacity=0).move_to(fEqGNums)
        prev = prev.shift(UP*(fEqGNums.get_bottom()[1]-prev.get_bottom()[1])).shift(upshift*UP)

        downArrow2 = MathTex("\\downarrow", color=c1t, font_size=fs1).next_to(prev, DOWN, buff=0.2)
        eqATex = f"{str(self.fParams[0])}x ={str(self.gParams[0])}x {get_texNum(self.gParams[1]-self.fParams[1])}"
        self.eqAText = self.evaluate_string(self.translate("Func_2_3.LinearFunctionEqualityAnswerScene.eqAText"))
        eqA = MathTex(eqATex, color=c2t, font_size=fs2).next_to(downArrow2, DOWN, buff=0.2)
        stepA="""<bookmark mark="shiftUp"/><bookmark mark="add"/>"""
        if abs(self.fParams[1])!=0:
            stepA = self.evaluate_string(self.translate("Func_2_3.LinearFunctionEqualityAnswerScene.stepA"))
            prev = eqA
            finalG.add(downArrow2, eqA)

        downArrow3 = MathTex("\\downarrow", color=c1t, font_size=fs1).next_to(prev, DOWN, buff=0.2)
        eqBTex = f"{str(self.fParams[0]-self.gParams[0])}x ={self.gParams[1]-self.fParams[1]}"
        self.eqBText = f"{get_num(self.fParams[0]-self.gParams[0], negation='minus')} 'x' {self.translate('Func_2_3.LinearFunctionEqualityAnswerScene.equals')} {get_num(self.gParams[1]-self.fParams[1], negation=neg, point=pointstring)}"
        eqB = MathTex(eqBTex, color=c2t, font_size=fs2).next_to(downArrow3, DOWN, buff=0.2)
        stepB = """<bookmark mark="addx"/>"""
        if abs(self.gParams[0])!=0:
            stepB = self.evaluate_string(self.translate("Func_2_3.LinearFunctionEqualityAnswerScene.stepB"))
            prev = eqB
            finalG.add(downArrow3, eqB)
        
        downArrow4 = MathTex("\\downarrow", color=c1t, font_size=fs1).next_to(prev, DOWN, buff=0.2)
        eqCTex = f"x ={format((self.gParams[1]-self.fParams[1])/(self.fParams[0]-self.gParams[0]), '.2g')}"
        self.eqCText = f"'x' {self.translate('Func_2_3.LinearFunctionEqualityAnswerScene.equals')} {get_num((self.gParams[1]-self.fParams[1])/(self.fParams[0]-self.gParams[0]), negation=neg, point=pointstring)}"
        eqC = MathTex(eqCTex, color=c2t, font_size=fs2).next_to(downArrow4, DOWN, buff=0.2)
        stepC = """<bookmark mark="final"/>"""
        if (self.fParams[0]-self.gParams[0])!=1:
            stepC = self.evaluate_string(self.translate("Func_2_3.LinearFunctionEqualityAnswerScene.stepC"))
            finalG.add(downArrow4, eqC)


        g = g.shift(LEFT*(g.get_left()[0]-f.get_left()[0]))
        handshake = ImageMobject(assets_folder / "img" / "handshake.png")
        handshake = handshake.scale(1.2/handshake.get_width()).move_to([-5, 1, 0])
        fLeft = MathTex("f(x)", color=c1t, font_size=fs1).next_to(handshake, LEFT, buff=0.1)
        gRight = MathTex("g(x)", color=c1t, font_size=fs1).next_to(handshake, RIGHT, buff=0.1)
        equal = MathTex("=", color=c1t, font_size=fs1).next_to(handshake, DOWN, buff=0.1)
        shakeGroup = Group(handshake, fLeft, gRight, equal).scale(0.8).next_to(g, DOWN, buff=1.5).shift(3*RIGHT)

        func_f = lambda x: self.fParams[0]*x+self.fParams[1]
        func_g = lambda x: self.gParams[0]*x+self.gParams[1]
        fGraph = plane.plot(func_f, color=BLUE)
        gGraph = plane.plot(func_g, color=GREEN)

        x_sol = (self.gParams[1]-self.fParams[1])/(self.fParams[0]-self.gParams[0])
        x,y,_ = plane.c2p(x_sol, func_f(x_sol))
        circ = Circle(radius=0.1, color=RED).move_to([x,y,0])
        self.stepA = stepA
        self.stepB = stepB
        self.stepC = stepC
        self.x_sol = x_sol

        print("THE STRING", self.evaluate_string(self.translate("Func_2_3.LinearFunctionEqualityAnswerScene.voiceover")))

        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_2_3.LinearFunctionEqualityAnswerScene.voiceover"))
        ) as tracker:
            
            self.wait_until_bookmark("f")
            self.play(Write(f))

            self.wait_until_bookmark("g")
            self.play(Write(g))
            
            self.wait_until_bookmark("fEqG")
            self.play(Write(fEqG))

            self.wait_until_bookmark("fEqGNums")
            self.play(Write(fEqGNums), Write(downArrow))

            self.wait_until_bookmark("shiftUp")
            if abs(self.fParams[1])!=0:
                self.play(Unwrite(f), Unwrite(g), run_time=0.5)
                self.play(group1.animate.shift(UP*upshift))

            self.wait_until_bookmark("add")
            if abs(self.fParams[1])!=0:
                self.play(Write(downArrow2), Write(eqA))

            self.wait_until_bookmark("addx")
            if abs(self.gParams[0])!=0:
                self.play(Write(downArrow3), Write(eqB))

            self.wait_until_bookmark("final")
            if (self.fParams[0]-self.gParams[0])!=1:
                self.play(Write(downArrow4), Write(eqC))

            self.wait_until_bookmark("cords")
            self.play(finalG.animate(run_time=0.5).shift(RIGHT*5), Write(self.cords))

            self.wait_until_bookmark("plotF")
            self.play(Write(fGraph))

            self.wait_until_bookmark("plotG")
            self.play(Write(gGraph))

            self.wait_until_bookmark("confirm")
            self.play(Write(circ))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_2_3_P_1_q(linearFunctionEqualityQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=["$x=2$", "$x=0$","$x=-2$", "$x=-2.5$"],
            correctAnswerIndex=3,
            questionText = self.translate("Func_2_3.P1.q.question-text") 
        )
        
    def construct(self):
        self.fParams = [4, -2]
        self.gParams = [6, 3]
        self.handShake = True
        super().construct()

class Func_2_3_P_1_a(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [4, -2]
        self.gParams = [6, 3]
        self.tfIntro = self.translate("Func_2_3.P1.a.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

class Func_2_3_P_1_b(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [4, -2]
        self.gParams = [6, 3]
        self.tfIntro = self.translate("Func_2_3.P1.a.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

class Func_2_3_P_1_c(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [4, -2]
        self.gParams = [6, 3]
        self.tfIntro = self.translate("Func_2_3.P1.a.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()


class Func_2_3_P_1_d(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [4, -2]
        self.gParams = [6, 3]
        self.tfIntro = self.translate("Func_2_3.P1.d.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

#####################################
#####################################$
class Func_2_3_P_2_q(linearFunctionEqualityQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=["$x=2$", "$x=0$","$x=-2$", "$x=-2.5$"],
            correctAnswerIndex=0,
            questionText = self.translate("Func_2_3.P1.q.question-text") 
        )

        
    def construct(self):
        self.fParams = [3, -1]
        self.gParams = [6, -7]
        self.handShake = True
        super().construct()


class Func_2_3_P_2_a(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [3, -1]
        self.gParams = [6, -7]
        self.tfIntro = self.translate("Func_2_3.P2.a.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

class Func_2_3_P_2_b(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [3, -1]
        self.gParams = [6, -7]
        self.tfIntro = self.translate("Func_2_3.P2.b.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

class Func_2_3_P_2_c(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [3, -1]
        self.gParams = [6, -7]
        self.tfIntro = self.translate("Func_2_3.P2.b.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()
    
class Func_2_3_P_2_d(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [3, -1]
        self.gParams = [6, -7]
        self.tfIntro = self.translate("Func_2_3.P2.b.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

#####################################
#####################################
class Func_2_3_P_3_q(linearFunctionEqualityQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=["$x=2/3$", "$x=-1/3$", "$x=8/3$", "$x=5/3$"],
            correctAnswerIndex=2,
            questionText = self.translate("Func_2_3.P1.q.question-text") 
        )
        
    def construct(self):
        self.fParams = [2, 3]
        self.gParams = [5, -5]
        self.handShake = True
        super().construct()

class Func_2_3_P_3_a(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [2, 3]
        self.gParams = [5, -5]
        self.tfIntro = self.translate("Func_2_3.P3.a.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

class Func_2_3_P_3_b(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [2, 3]
        self.gParams = [5, -5]
        self.tfIntro = self.translate("Func_2_3.P3.a.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

class Func_2_3_P_3_c(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [2, 3]
        self.gParams = [5, -5]
        self.tfIntro = self.translate("Func_2_3.P3.c.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

class Func_2_3_P_3_d(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [2, 3]
        self.gParams = [5, -5]
        self.tfIntro = self.translate("Func_2_3.P3.a.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

#####################################
#####################################
class Func_2_3_P_4_q(linearFunctionEqualityQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=["$x=0$", "$x=0.25$", "$x=0.5$", "$x=-0.5$"],
            correctAnswerIndex=1,
            questionText = self.translate("Func_2_3.P1.q.question-text") 
        )
        
    def construct(self):
        self.fParams = [1, 4]
        self.gParams = [-3, 5]
        self.handShake = True
        super().construct()

class Func_2_3_P_4_a(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [1, 4]
        self.gParams = [-3, 5]
        self.tfIntro = self.translate("Func_2_3.P4.a.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

class Func_2_3_P_4_b(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [1, 4]
        self.gParams = [-3, 5]
        self.tfIntro = self.translate("Func_2_3.P4.b.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

class Func_2_3_P_4_c(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [1, 4]
        self.gParams = [-3, 5]
        self.tfIntro = self.translate("Func_2_3.P4.a.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

class Func_2_3_P_4_d(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [1, 4]
        self.gParams = [-3, 5]
        self.tfIntro = self.translate("Func_2_3.P4.a.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

#####################################
#####################################
class Func_2_3_P_5_q(linearFunctionEqualityQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=["$x=2/3$", "$x=4/3$", "$x=-2/3$", "$x=8/3$"],
            correctAnswerIndex=2,
            questionText = self.translate("Func_2_3.P1.q.question-text") 
        )
        
    def construct(self):
        self.fParams = [2, -3]
        self.gParams = [5, -1]
        self.handShake = True
        super().construct()

class Func_2_3_P_5_a(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [2, -3]
        self.gParams = [5, -1]
        self.tfIntro = self.translate("Func_2_3.P5.a.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

class Func_2_3_P_5_b(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [2, -3]
        self.gParams = [5, -1]
        self.tfIntro = self.translate("Func_2_3.P5.a.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

class Func_2_3_P_5_c(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [2, -3]
        self.gParams = [5, -1]
        self.tfIntro = self.translate("Func_2_3.P5.c.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

class Func_2_3_P_5_d(linearFunctionEqualityAnswerScene):
        
    def construct(self):
        self.fParams = [2, -3]
        self.gParams = [5, -1]
        self.tfIntro = self.translate("Func_2_3.P5.a.tfIntro")
        self.cords = self.add_cords([-4, 4, 2], [-24, 24, 6], x_ticks=[-4,-2,2,4], y_ticks=[-24,-12,12,24])
        super().construct()

#####################################
#####################################



#####################################
#####################################
PROTOTYPES = [
    PagePrototypeVideo.from_scene(Func_2_3_I_1_q),
    PagePrototypeQuestion.from_scene(Func_2_3_I_1_q),
    PagePrototypeVideo.from_scene(Func_2_3_I_1_a),
    PagePrototypeVideo.from_scene(Func_2_3_I_1_b),
    PagePrototypeVideo.from_scene(Func_2_3_I_1_c),
    PagePrototypeVideo.from_scene(Func_2_3_I_1_d),
    PagePrototypeVideo.from_scene(Func_2_3_I_2),
    PagePrototypeVideo.from_scene(Func_2_3_I_3),
    PagePrototypeVideo.from_scene(Func_2_3_I_4),
    PagePrototypeVideo.from_scene(Func_2_3_I_5),
    PagePrototypeVideo.from_scene(Func_2_3_I_6_q),
    PagePrototypeQuestion.from_scene(Func_2_3_I_6_q),
    PagePrototypeVideo.from_scene(Func_2_3_I_6_a),
    PagePrototypeVideo.from_scene(Func_2_3_I_6_b),
    PagePrototypeVideo.from_scene(Func_2_3_I_6_c),
    PagePrototypeVideo.from_scene(Func_2_3_I_6_d),
    PagePrototypeVideo.from_scene(Func_2_3_P_1_q),
    PagePrototypeQuestion.from_scene(Func_2_3_P_1_q),
    PagePrototypeVideo.from_scene(Func_2_3_P_1_a),
    PagePrototypeVideo.from_scene(Func_2_3_P_1_b),
    PagePrototypeVideo.from_scene(Func_2_3_P_1_c),
    PagePrototypeVideo.from_scene(Func_2_3_P_1_d),
    PagePrototypeVideo.from_scene(Func_2_3_P_2_q),
    PagePrototypeQuestion.from_scene(Func_2_3_P_2_q),
    PagePrototypeVideo.from_scene(Func_2_3_P_2_a),
    PagePrototypeVideo.from_scene(Func_2_3_P_2_b),
    PagePrototypeVideo.from_scene(Func_2_3_P_2_c),
    PagePrototypeVideo.from_scene(Func_2_3_P_2_d),
    PagePrototypeVideo.from_scene(Func_2_3_P_3_q),
    PagePrototypeQuestion.from_scene(Func_2_3_P_3_q),
    PagePrototypeVideo.from_scene(Func_2_3_P_3_a),
    PagePrototypeVideo.from_scene(Func_2_3_P_3_b),
    PagePrototypeVideo.from_scene(Func_2_3_P_3_c),
    PagePrototypeVideo.from_scene(Func_2_3_P_3_d),
    PagePrototypeVideo.from_scene(Func_2_3_P_4_q),
    PagePrototypeQuestion.from_scene(Func_2_3_P_4_q),
    PagePrototypeVideo.from_scene(Func_2_3_P_4_a),
    PagePrototypeVideo.from_scene(Func_2_3_P_4_b),
    PagePrototypeVideo.from_scene(Func_2_3_P_4_c),
    PagePrototypeVideo.from_scene(Func_2_3_P_4_d),
    PagePrototypeVideo.from_scene(Func_2_3_P_5_q),
    PagePrototypeQuestion.from_scene(Func_2_3_P_5_q),
    PagePrototypeVideo.from_scene(Func_2_3_P_5_a),
    PagePrototypeVideo.from_scene(Func_2_3_P_5_b),
    PagePrototypeVideo.from_scene(Func_2_3_P_5_c),
    PagePrototypeVideo.from_scene(Func_2_3_P_5_d),
]