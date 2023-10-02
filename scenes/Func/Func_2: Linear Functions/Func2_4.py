# 2_3: Linear Functions: Functions and Linear Inequalities

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


#####################################
#####################################
# TASK_Func_2_3_I_1_q = SophiaTaskDefinition(
#     answerOptions=["$f(x)=5x+15, \,g(x)=20x$", "$f(x)=15x+15, \,g(x)=20x$","$f(x)=15x+5, \,g(x)=20x$", "$f(x)=15x+15, \,g(x)=20+x$"],
#     correctAnswerIndex=2,
#     questionText="Which function describes the distances you and your friend have traveled?"
# )

# class Func_2_3_I_1_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         self.add_title("Functions and Linear Equations")

#         bike = ImageMobject(assets_folder / "img" / "bike.jpg")
#         bike = bike.scale(3.2/bike.get_width()).move_to([-5, 1, 0])

#         f1 = Tex("Your Friend:", color=c1t, font_size=fs2).next_to(bike, DOWN, buff=0.6).shift(5*RIGHT)
#         f2 = BulletedList("$5$km Head start", "$15$km/h speed", buff=0.2, font_size=fs2).set_color(c1t).next_to(f1, DOWN)
#         y1 = Tex("You:", color=c1t, font_size=fs2).next_to(f2, DOWN)
#         y2 = BulletedList("$20$km/h speed", color=c1t, font_size=fs2).set_color(c1t).next_to(y1, DOWN)
#         comparison = VGroup(f1, f2, y1, y2).arrange(DOWN, center=False, aligned_edge=LEFT).shift(0.2*LEFT)
        
#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Neww topic! In this chapter, we are looking at linear functions and linear equations,
#                 and what these two have to do with each other.
#                 
#                 And what better way to find out, what the connection is, than to look at a real world example.
#                 
#                 This is the scenario: You and your friend are both <bookmark mark="bike"/> cycling to the beach from your house.
#                 
#                 <bookmark mark="f1"/>
#                 Your friend has a <bookmark mark="f2"/> head start of 5 kilometers, and she is cycling <bookmark mark="f3"/> at a speed of 15 kilometers per hour.
#                 
#                 <bookmark mark="y1"/>
#                 You on the other hand are cycling at <bookmark mark="y2"/> a speed of 20 kilometers per hour, but you get no head start.
#                 
#                 Question Number one, and this is mainly about functions: What functions f and g describe the distance your friend and you have traveled?
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("bike")
#             self.play(bike.animate.shift(5*RIGHT))

#             self.wait_until_bookmark("f1")
#             self.play(Write(f1))

#             self.wait_until_bookmark("f2")
#             self.play(Write(f2[0]))

#             self.wait_until_bookmark("f3")
#             self.play(Write(f2[1]))

#             self.wait_until_bookmark("y1")
#             self.play(Write(y1))

#             self.wait_until_bookmark("y2")
#             self.play(Write(y2[0]))

#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)


# class Func_2_3_I_1_T(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("Correct!")

#         f1 = Tex("Your Friend:", color=c1t, font_size=fs2).next_to(title, DOWN, buff=0.6)
#         f2 = BulletedList("$5$km Head start", "$15$km/h speed", buff=0.2, font_size=fs2).set_color(c1t).next_to(f1, DOWN)
#         f3 = MathTex("\\downarrow", color=c1t, font_size=fs2).next_to(f2, DOWN)


#         y1 = Tex("You:", color=c1t, font_size=fs2).next_to(title, DOWN)
#         y2 = BulletedList("$20$km/h speed", color=c1t, font_size=fs2).set_color(c1t).next_to(y1, DOWN)
#         y3 = MathTex("\\downarrow", color=c1t, font_size=fs2).next_to(y2, DOWN)

#         # comparison = VGroup(f1, f2, y1, y2).arrange(aligned_edge=LEFT).shift(0.2*LEFT)

#         funcFriend = MathTex("f(x)=15x","+5", color=c1t, font_size=fs2).next_to(f3, DOWN)
#         funcYou = MathTex("g(x)=20x", color=c1t, font_size=fs2).next_to(y3, DOWN)
        
#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 That's right, good job!
#                 
#                 <bookmark mark="friend"/>
#                 Your friend cycles at a speed of 15 kilometers per hour, and if x stands for the number of hours cycled,
#                 we can write her function as <bookmark mark="friendfunc1"/> f of x equals fifteen times x.
#                 
#                 And since she has a head start of 5 kilometers, we have to <bookmark mark="friendfunc2"/> add 5 to the function.
#                 So the function describing the distance your friend has traveled is f of x equals fifteen times x plus five.
#                 
#                 Next, let's look at your function. <bookmark mark="you"/>
#                 You cycle at a speed of 20 kilometers per hour.
#                 
#                 Since you have no head start, your function is simply <bookmark mark="yourfunc"/> g of x equals twenty times x.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("friend")
#             self.play(Write(f1), Write(f2))
            
#             self.wait_until_bookmark("friendfunc1")
#             self.play(Write(funcFriend[0]), Write(f3))

#             self.wait_until_bookmark("friendfunc2")
#             self.play(Write(funcFriend[1]))

#             self.wait_until_bookmark("you")
#             self.play(Unwrite(f1), Unwrite(f2), Unwrite(f3), Unwrite(funcFriend), run_time=0.5)
#             self.play(Write(y1), Write(y2), run_time=1)

#             self.wait_until_bookmark("yourfunc")
#             self.play(Write(funcYou), Write(y3))

#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)

# class Func_2_3_I_1_F(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("Not quite right...")

#         f1 = Tex("Your Friend:", color=c1t, font_size=fs2).next_to(title, DOWN, buff=0.6)
#         f2 = BulletedList("$5$km Head start", "$15$km/h speed", buff=0.2, font_size=fs2).set_color(c1t).next_to(f1, DOWN)
#         f3 = MathTex("\\downarrow", color=c1t, font_size=fs2).next_to(f2, DOWN)


#         y1 = Tex("You:", color=c1t, font_size=fs2).next_to(title, DOWN)
#         y2 = BulletedList("$20$km/h speed", color=c1t, font_size=fs2).set_color(c1t).next_to(y1, DOWN)
#         y3 = MathTex("\\downarrow", color=c1t, font_size=fs2).next_to(y2, DOWN)

#         # comparison = VGroup(f1, f2, y1, y2).arrange(aligned_edge=LEFT).shift(0.2*LEFT)

#         funcFriend = MathTex("f(x)=15x","+5", color=c1t, font_size=fs2).next_to(f3, DOWN)
#         funcYou = MathTex("g(x)=20x", color=c1t, font_size=fs2).next_to(y3, DOWN)
        
#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Mhmmm, that's not quite right. Let's solve this together.
#                 
#                 <bookmark mark="friend"/>
#                 Your friend cycles at a speed of 15 kilometers per hour, and if x stands for the number of hours cycled,
#                 we can write her function as <bookmark mark="friendfunc1"/> f of x equals fifteen times x.
#                 
#                 And since she also has a head start of 5 kilometers, we have to <bookmark mark="friendfunc2"/> add 5 to the function.
#                 So the function describing the distance your friend has traveled is f of x equals fifteen times x plus five.
#                 
#                 Next, let's look at your function. <bookmark mark="you"/>
#                 You cycle at a speed of 20 kilometers per hour.
#                 
#                 Since you have no head start, your function is simply <bookmark mark="yourfunc"/> g of x equals twenty times x.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("friend")
#             self.play(Write(f1), Write(f2))
            
#             self.wait_until_bookmark("friendfunc1")
#             self.play(Write(funcFriend[0]), Write(f3))

#             self.wait_until_bookmark("friendfunc2")
#             self.play(Write(funcFriend[1]))

#             self.wait_until_bookmark("you")
#             self.play(Unwrite(f1), Unwrite(f2), Unwrite(f3), Unwrite(funcFriend), run_time=0.5)
#             self.play(Write(y1), Write(y2), run_time=1)

#             self.wait_until_bookmark("yourfunc")
#             self.play(Write(funcYou), Write(y3))

#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)


# #####################################
# #####################################
# class Func_2_3_I_2(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("When will you meet?")

#         bikeMeet = ImageMobject(assets_folder / "img" / "cyclistsmeet.png")
#         bikeRace = ImageMobject(assets_folder / "img" / "cyclistsrace.png")
#         bikeMeet = bikeMeet.scale(3.2/bikeMeet.get_width()).move_to([-5, 0.5, 0])
#         bikeRace = bikeRace.scale(3.2/bikeRace.get_width()).move_to([5, -1.5, 0])
#         # comparison = VGroup(f1, f2, y1, y2).arrange(aligned_edge=LEFT).shift(0.2*LEFT)

#         # funcFriend = MathTex("f(x)=15x","+5", color=c1t, font_size=fs2).next_to(f3, DOWN)
#         # funcYou = MathTex("g(x)=20x", color=c1t, font_size=fs2).next_to(y3, DOWN)
        
#         Q1 = Text("→ At what point in time", color=RED, font_size=fs3, weight=BOLD).next_to(bikeMeet, DOWN, buff=0.6).shift(RIGHT*5)
#         Q2 = Text("will you have traveled", color=RED, font_size=fs3, weight=BOLD).next_to(Q1, DOWN, buff=0.1)
#         Q3 = Text("the same distance?", color=RED, font_size=fs3, weight=BOLD).next_to(Q2, DOWN, buff=0.1)        
#         Q = VGroup(Q1, Q2, Q3).arrange(DOWN, buff=0.1, center=False, aligned_edge=RIGHT).shift(LEFT*0.1)
#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Ok, so why are we doing this? And what does it have to do with equations?
#                 
#                 Think about this: <bookmark mark="race"/> Since you're both cycling in the same direction, but your friend had a head start,
#                 you two will meet at some point - because you are cycling faster than her.
#                 
#                 But when <bookmark mark="meet"/> will you two meet?
#                 
#                 Clearly, you'll meet at the point in time when both of you have traveled the exact same distance.
#                 <bookmark mark="Q"/>
#                 
#                 Think about how we can find that point in time using the two functions we just wrote.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("race")
#             self.play(bikeRace.animate.shift(5*LEFT))
            
#             self.wait_until_bookmark("meet")
#             self.play(bikeMeet.animate.shift(5*RIGHT), bikeRace.animate.shift(5*LEFT))

#             self.wait_until_bookmark("Q")
#             self.play(Write(Q), run_time=0.75)

#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)


# #####################################
# #####################################
# class Func_2_3_I_3(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("When will you meet?")

#         # comparison = VGroup(f1, f2, y1, y2).arrange(aligned_edge=LEFT).shift(0.2*LEFT)

#         funcFriend = MathTex("f(x)=15x","+5", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1)
#         textFriend1 = Text("→Describes the distance", color=RED, font_size=fs3, slant=ITALIC).next_to(funcFriend, DOWN, buff=0.2)
#         textFriend2 = Text("your friend has traveled", color=RED, font_size=fs3, slant=ITALIC).next_to(textFriend1, DOWN, buff=0.1)
#         textFriend = VGroup(textFriend1, textFriend2).arrange(DOWN, buff=0.1, center=False, aligned_edge=RIGHT).shift(RIGHT*0.2)

#         funcYou = MathTex("g(x)=20x", color=c1t, font_size=fs2).next_to(textFriend, DOWN)
#         funcYou = funcYou.shift(LEFT*(funcYou.get_left()[0]-funcFriend.get_left()[0]))
#         textYou1 = Text("→Describes the distance", color=RED, font_size=fs3, slant=ITALIC).next_to(funcYou, DOWN, buff=0.2)
#         textYou2 = Text("you have traveled", color=RED, font_size=fs3, slant=ITALIC).next_to(textYou1, DOWN, buff=0.1)
#         textYou = VGroup(textYou1, textYou2).arrange(DOWN, buff=0.1, center=False, aligned_edge=RIGHT).shift(RIGHT*0.2)
#         textYou = textYou.shift(LEFT*(textYou.get_left()[0]-textFriend.get_left()[0]))

#         funcBoth = MathTex("f(x)=g(x)", color=c1t, font_size=fs2).next_to(textYou, DOWN, buff=1)
#         funcBoth = funcBoth.shift(LEFT*(funcBoth.get_left()[0]-funcFriend.get_left()[0]))
#         textBoth1 = Text("→Describes the time", color=RED, font_size=fs3, slant=ITALIC).next_to(funcBoth, DOWN, buff=0.2)
#         textBoth2 = Text("when you meet", color=RED, font_size=fs3, slant=ITALIC).next_to(textBoth1, DOWN, buff=0.1)
#         textBoth = VGroup(textBoth1, textBoth2).arrange(DOWN, buff=0.1, center=False, aligned_edge=RIGHT).shift(RIGHT*0.2)
#         textBoth = textBoth.shift(LEFT*(textBoth.get_left()[0]-textFriend.get_left()[0]))

#         friendBikeWave = ImageMobject(assets_folder / "img" / "friendbikewave.png")
#         youBikeWave = ImageMobject(assets_folder / "img" / "youbikewave.png")
#         friendBikeWave = friendBikeWave.scale(3.2/friendBikeWave.get_width()).next_to(textFriend, DOWN, buff=0.2).shift(LEFT*5)
#         youBikeWave = youBikeWave.scale(3.2/youBikeWave.get_width()).next_to(textYou, DOWN, buff=0.2).shift(LEFT*5)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Let's think back to what we already know.
#                 
#                 The function <bookmark mark="f"/> f of x describes the distance your friend has traveled at time x.
#                 
#                 The function <bookmark mark="g"/> g of x on the other hand describes the distance YOU have traveled
#                 at time x.
#                 
#                 <bookmark mark="youLeave"/>
#                 Since you and your friend meet, when you have traveled the same distance, we can say that
#                 <bookmark mark="both"/> you meet when f of x is equal to g of x.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("f")
#             self.play(Write(funcFriend), run_time=0.5)
#             self.play(Write(textFriend), friendBikeWave.animate(run_time=1.5).shift(RIGHT*5), run_time=0.5)

#             self.wait_until_bookmark("g")
#             textFriend.set_color(c3t)
#             self.play(friendBikeWave.animate(run_time=0.3).shift(RIGHT*5), Write(funcYou), run_time=0.5)
#             self.play(Write(textYou), youBikeWave.animate(run_time=1.5).shift(RIGHT*5), run_time=0.5)

#             self.wait_until_bookmark("youLeave")
#             self.play(youBikeWave.animate.shift(RIGHT*5))

#             self.wait_until_bookmark("both")
#             textYou.set_color(c3t)
#             self.play(Write(funcBoth), run_time=0.5)
#             self.play(Write(textBoth), run_time=0.5)


#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)


# #####################################
# #####################################
# class Func_2_3_I_4(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("When will you meet?")

#         # comparison = VGroup(f1, f2, y1, y2).arrange(aligned_edge=LEFT).shift(0.2*LEFT)

#         funcFriend = MathTex("f(x)=15x","+5", color=c1t, font_size=fs1).next_to(title, DOWN, buff=0.8)
#         funcYou = MathTex("g(x)=20x", color=c1t, font_size=fs1).next_to(funcFriend, DOWN, buff=0.2)
#         funcYou = funcYou.shift(LEFT*(funcYou.get_left()[0]-funcFriend.get_left()[0]))

#         upShiftBoth = 1.2

#         funcBoth = MathTex("f(x)=g(x)", color=c1t, font_size=fs1).next_to(funcYou, DOWN, buff=0.8)
#         funcBoth.set_x(0)
#         fBA1 = MathTex("\\downarrow", color=c1t, font_size=fs1).next_to(funcBoth, DOWN, buff=0.2).shift(upShiftBoth*UP)
#         fB1 = MathTex("15x+5=20x", color=c1t, font_size=fs1).next_to(fBA1, DOWN, buff=0.2)
#         fbA2 = MathTex("\\downarrow", color=c1t, font_size=fs1).next_to(fB1, DOWN, buff=0.2)
#         fB2 = MathTex("5=5x", color=c1t, font_size=fs1).next_to(fbA2, DOWN, buff=0.2)
#         fbA3 = MathTex("\\downarrow", color=c1t, font_size=fs1).next_to(fB2, DOWN, buff=0.2)
#         fB3 = MathTex("x=1", color=RED, font_size=fs1).next_to(fbA3, DOWN, buff=0.2)


#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Ok, now we know how to find the time when you meet your friend: We just compute
#                 the value of x where <bookmark mark="both"/> f of x is equal to g of x, because f describes the distance
#                 your friend has traveled and g describes the distance YOU have traveled.
#                 
#                 Remember: f of x is <bookmark mark="f"/> equal to fifteen times x plus five, -
#                 and g of x is <bookmark mark="g"/> equal to twenty times x.
#                 
#                 Now we want to find the value of x where <bookmark mark="calculate"/>
#                 f of x is equal to g of x.
#                 
#                 The first step <bookmark mark="step1a"/> is to <bookmark mark="step1b"/> plug in the terms of f and g.
#                 We get the equation 15x plus 5 is equal to 20x.
#                 
#                 Next, <bookmark mark="step2a"/> we subtract 15x from both sides, which leaves
#                 us with <bookmark mark="step2b"/> the equation 5 equals 5x.
#                 
#                 Finally, <bookmark mark="step3a"/> we divide both sides by 5, which results in
#                 the final solution, <bookmark mark="step3b"/> that x is equal to 1.
#                 
#                 We can now say that you and your friend meet after one hour.
#                 
#                 Puh, that was intense. Let's take a deeeeeep breath.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("both")
#             self.play(Write(funcBoth), run_time=0.5)
            
#             self.wait_until_bookmark("f")
#             self.play(Write(funcFriend), run_time=0.5)

#             self.wait_until_bookmark("g")
#             self.play(Write(funcYou), run_time=0.5)

#             self.wait_until_bookmark("calculate")
#             self.play(funcBoth.animate.shift(UP*upShiftBoth), Unwrite(funcFriend), Unwrite(funcYou), run_time=0.5)

#             self.wait_until_bookmark("step1a")
#             self.play(Write(fBA1), run_time=0.5)

#             self.wait_until_bookmark("step1b")
#             self.play(Write(fB1), run_time=0.5)

#             self.wait_until_bookmark("step2a")
#             self.play(Write(fbA2), run_time=0.5)

#             self.wait_until_bookmark("step2b")
#             self.play(Write(fB2), run_time=0.5)

#             self.wait_until_bookmark("step3a")
#             self.play(Write(fbA3), run_time=0.5)

#             self.wait_until_bookmark("step3b")
#             self.play(Write(fB3), run_time=0.5)

            
#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)



# #####################################
# #####################################
# class Func_2_3_I_5(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):

#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("Functions & Equations")

#         qmark = ImageMobject(assets_folder / "img" / "qmark.png")
#         qmark = qmark.scale(3.2/qmark.get_width()).move_to([-5, 1, 0])

#         function = Text("Functions", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1).shift(LEFT*0.4)
#         tf1 = Text("→ Used to describe", color=RED, font_size=fs3, slant=ITALIC).next_to(function, DOWN, buff=0.2)
#         tf2 = Text("real world scenarios", color=RED, font_size=fs3, slant=ITALIC).next_to(tf1, DOWN, buff=0.1)
#         tf = VGroup(tf1, tf2).arrange(DOWN, buff=0.1, center=False, aligned_edge=RIGHT).shift(RIGHT*0.4)

#         equation = Text("Equations", color=c1t, font_size=fs2).next_to(tf, DOWN)
#         equation = equation.shift(LEFT*(equation.get_left()[0]-function.get_left()[0]))
#         te1 = Text("→ Used to find specific", color=RED, font_size=fs3, slant=ITALIC).next_to(equation, DOWN, buff=0.2)
#         te2 = Text("value of a variable", color=RED, font_size=fs3, slant=ITALIC).next_to(te1, DOWN, buff=0.1)
#         te = VGroup(te1, te2).arrange(DOWN, buff=0.1, center=False, aligned_edge=RIGHT).shift(RIGHT*0.2)
#         te = te.shift(LEFT*(te.get_left()[0]-tf.get_left()[0]))

#         handshake = ImageMobject(assets_folder / "img" / "handshake.png")
#         handshake = handshake.scale(1.2/handshake.get_width()).move_to([-5, 1, 0])
#         fLeft = Text("Functions", color=c1t, font_size=fs3).next_to(handshake, LEFT, buff=0.1)
#         eRight = Text("Equations", color=c1t, font_size=fs3).next_to(handshake, RIGHT, buff=0.1)
#         shakeGroup = Group(handshake, fLeft, eRight).scale(0.8).next_to(te, DOWN, buff=0.5)
#         ts1 = Text("→ Combine the two to", color=RED, font_size=fs3, slant=ITALIC).next_to(shakeGroup, DOWN, buff=0.2)
#         ts2 = Text("compare real world", color=RED, font_size=fs3, slant=ITALIC).next_to(ts1, DOWN, buff=0.1)
#         ts3 = Text("scenarios", color=RED, font_size=fs3, slant=ITALIC).next_to(ts2, DOWN, buff=0.1)
#         ts = VGroup(ts1, ts2, ts3).arrange(DOWN, buff=0.1, center=False, aligned_edge=RIGHT).shift(RIGHT*0.2)
#         ts = ts.shift(LEFT*(ts.get_left()[0]-te.get_left()[0]))
#         shakeGroup.shift(3*RIGHT)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 So, let's recap <bookmark mark="qmark"/> what we just did, and what it has to do with functions and equations.
#                 
#                 <bookmark mark="functions"/> Functions are often used to describe real world scenarios. For example, a function can describe
#                 the distance you have traveled after some time.
#                 
#                 <bookmark mark="equation"/>
#                 Equations are used to find the value of a variable. For example, an equation can be used to
#                 determine the point in time at which you have traveled twenty kilometers.
#                 
#                 Now, we can <bookmark mark="handshake"/> put these two concepts together to determine at what point in time
#                 two real world scenarios, that are both described by functions, are equal.
#                 
#                 In the example we just looked at, we had two functions, describing the distance you and your friend
#                 have traveled at any point in time. We then used an equation to determine at what point in time
#                 you and your friend have traveled the same distance.
#                 
#                 We do this, by simply setting the terms of the two functions equal to each other,
#                 and then solving the equation for the variable, in our case for x.
#                 """
#         ) as tracker:


#             self.wait_until_bookmark("qmark")
#             self.play(qmark.animate.shift(5*RIGHT), run_time=1)

#             self.wait_until_bookmark("functions")
#             self.play(qmark.animate.shift(5*RIGHT), run_time=0.4)
#             self.play(Write(function), Write(tf))

#             self.wait_until_bookmark("equation")
#             self.play(Write(equation), Write(te))

#             self.wait_until_bookmark("handshake")
#             self.play(shakeGroup.animate.shift(3.2*LEFT))
#             self.play(Write(ts))

            
#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)


# #####################################
# #####################################
# TASK_Func_2_3_I_6_q = SophiaTaskDefinition(
#     answerOptions=["(1,20)", "(0,5)", "(20,20)", "(1,1)"],
#     correctAnswerIndex=0,
#     questionText="Where do the functions intersect?"
# )

# class Func_2_3_I_6_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):

#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("Graphical solution")

#         cords = self.add_cords([0, 2, 1], [0, 40, 5], x_ticks=[1,2], y_ticks=[10,20,30,40])
#         plane = cords[0]

#         note = Notepad(texts=["Problem can also be solved graphically", "Consider the plots of $g$ and $f$","Where do the two functions intersect?"])
#         self.add(note)

#         funcTexf = MathTex("f(x) = 15x + 5", color=c1t, font_size=fs1).next_to(plane, DOWN, buff=0.5)
#         funcTexg = MathTex("g(x) = 20x", color=c2t, font_size=fs1).move_to(funcTexf)
#         funcTexg = funcTexg.shift(LEFT*(funcTexg.get_left()[0]-funcTexf.get_left()[0]))
#         f = lambda x: 15*x + 5
#         g = lambda x: 20*x
#         plot_f = plane.plot(f, color=BLUE)
#         plot_g = plane.plot(g, color=GREEN)

#         intersection = plane.c2p(1,20)
#         intersectionDot = Dot(intersection, color=RED)

#         xo, yo, _ = plane.x_axis.n2p(0)
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.move_to([xo, yo, 0])

#         with self.voiceover(
#                 text="""
#                 There is another way we can solve these kinds of problems: <bookmark mark="note1"/> Visually, by using the
#                 <bookmark mark="cords"/> graph of the functions.
#                 
#                 Remember, we want to find the values of x for which two functions are equal.
#                 
#                 We can do this by looking at the graph of the two functions, and finding the point at which
#                 the two functions have the same y-value, so the point at which the two functions meet.
#                 
#                 Let's return to our bike example, for the last time, i promise!!!
#                 
#                 Remember, the function describing the distance your friend has traveled is given by
#                 <bookmark mark="f"/> f of x equals fifteen times x plus five,
#                 and the function describing the distance you have traveled is given by
#                 <bookmark mark="g"/> g of x equals twenty times x.
#                 
#                 Now, let's <bookmark mark="plot"/> plot the two functions. <bookmark mark="note2"/> Where do the two functions intersect?
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("note1")
#             note.change_colors([0])
            
#             self.wait_until_bookmark("cords")
#             self.play(Write(cords))
#             self.add(cursor)

#             self.wait_until_bookmark("f")
#             self.play(Write(funcTexf))

#             self.wait_until_bookmark("g")
#             self.play(ReplacementTransform(funcTexf, funcTexg))

#             self.wait_until_bookmark("plot")
#             note.change_colors([0,1])
#             self.play(Write(plot_f), Write(plot_g))

#             self.wait_until_bookmark("note2")
#             note.change_colors([1,2])
            
#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)

# class Func_2_3_I_6_T(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):

#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("Graphical solution")

#         cords = self.add_cords([0, 2, 1], [0, 40, 5], x_ticks=[1,2], y_ticks=[10,20,30,40])
#         plane = cords[0]

#         note = Notepad(texts=[["Follow one of the graphs", "until both intersect"], "Intersection at $(1,20)$","$\\rightarrow$ You meet after $x=1$ hour"])
#         self.add(note)

#         funcTexf = MathTex("f(x) = 15x + 5", color=c1t, font_size=fs1).next_to(plane, DOWN, buff=0.5)
#         funcTexg = MathTex("g(x) = 20x", color=c2t, font_size=fs1).move_to(funcTexf)
#         funcTexg = funcTexg.shift(LEFT*(funcTexg.get_left()[0]-funcTexf.get_left()[0]))
#         f = lambda x: 15*x + 5
#         g = lambda x: 20*x
#         plot_f = plane.plot(f, color=BLUE)
#         plot_g = plane.plot(g, color=GREEN)

#         ix, iy, _ = plane.c2p(1,20)
#         # intersectionDot = Dot(intersection, color=RED)

#         xo, yo, _ = plane.x_axis.n2p(0)
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.move_to([xo, yo, 0])

#         self.add(cursor, cords, plot_f, plot_g)

#         xdown, ydown, _ = plane.c2p(1,0)
#         xleft, yleft, _ = plane.c2p(0,20)

#         dashed1 = DashedLine([xleft, iy, 0], [ix, iy, 0], color=c2t)
#         dashed2 = DashedLine([ix, ydown, 0], [ix, iy, 0], color=c2t)

#         with self.voiceover(
#                 text="""
#                 Yes! That's correct, very good!
#                 
#                 If we <bookmark mark="note1"/> follow one of the graphs <bookmark mark="intersectLoc"/> until it intersects the other graph, we can see that
#                 the graphs of the two functions intersect at the point 1,20.
#                 
#                 <bookmark mark="cursorBack"/>
#                 The interpretation of that - as we already saw in a previous video - <bookmark mark="note2"/> is that
#                 you and your friends meet after x equals one hour. The y value - twenty - means that by that time
#                 you have traveled twenty kilometers, and your friend has traveled twenty kilometers as well.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("note1")
#             note.change_colors([0])
            
#             self.wait_until_bookmark("intersectLoc")
#             cursor.blinking=False
#             note.change_colors([0,1])
#             self.play(CursorMoveTo(cursor, ix, iy))
#             interCirc = Circle(radius=0.2, color=RED).move_to([ix, iy, 0])
#             self.play(Write(interCirc), Write(dashed1), Write(dashed2))

#             self.wait_until_bookmark("cursorBack")
#             self.play(CursorMoveTo(cursor, xo, yo))
#             self.wait(0.2)
#             cursor.blinking=True

#             self.wait_until_bookmark("note2")
#             note.change_colors([1,2])
            
#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)

# class Func_2_3_I_6_F(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):

#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("Graphical solution")

#         cords = self.add_cords([0, 2, 1], [0, 40, 5], x_ticks=[1,2], y_ticks=[10,20,30,40])
#         plane = cords[0]

#         note = Notepad(texts=[["Follow one of the graphs", "until both intersect"], "Intersection at $(1,20)$","$\\rightarrow$ You meet after $x=1$ hour"])
#         self.add(note)

#         funcTexf = MathTex("f(x) = 15x + 5", color=c1t, font_size=fs1).next_to(plane, DOWN, buff=0.5)
#         funcTexg = MathTex("g(x) = 20x", color=c2t, font_size=fs1).move_to(funcTexf)
#         funcTexg = funcTexg.shift(LEFT*(funcTexg.get_left()[0]-funcTexf.get_left()[0]))
#         f = lambda x: 15*x + 5
#         g = lambda x: 20*x
#         plot_f = plane.plot(f, color=BLUE)
#         plot_g = plane.plot(g, color=GREEN)

#         ix, iy, _ = plane.c2p(1,20)
#         # intersectionDot = Dot(intersection, color=RED)

#         xo, yo, _ = plane.x_axis.n2p(0)
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.move_to([xo, yo, 0])

#         self.add(cursor, cords, plot_f, plot_g)

#         xdown, ydown, _ = plane.c2p(1,0)
#         xleft, yleft, _ = plane.c2p(0,20)

#         dashed1 = DashedLine([xleft, iy, 0], [ix, iy, 0], color=c2t)
#         dashed2 = DashedLine([ix, ydown, 0], [ix, iy, 0], color=c2t)

#         with self.voiceover(
#                 text="""
#                 Mhm, that's not quite right. I'll show you the correct solution.
#                 
#                 If we <bookmark mark="note1"/> follow one of the graphs <bookmark mark="intersectLoc"/> until it intersects the other graph, we can see that
#                 the graphs of the two functions intersect at the point 1,20.
#                 
#                 <bookmark mark="cursorBack"/>
#                 The interpretation of that - as we already saw in a previous video - <bookmark mark="note2"/> is that
#                 you and your friends meet after x equals one hour. The y value - twenty - means that by that time
#                 you have traveled twenty kilometers, and your friend has traveled twenty kilometers as well.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("note1")
#             note.change_colors([0])
            
#             self.wait_until_bookmark("intersectLoc")
#             cursor.blinking=False
#             note.change_colors([0,1])
#             self.play(CursorMoveTo(cursor, ix, iy))
#             interCirc = Circle(radius=0.2, color=RED).move_to([ix, iy, 0])
#             self.play(Write(interCirc), Write(dashed1), Write(dashed2))

#             self.wait_until_bookmark("cursorBack")
#             self.play(CursorMoveTo(cursor, xo, yo))
#             self.wait(0.2)
#             cursor.blinking=True

#             self.wait_until_bookmark("note2")
#             note.change_colors([1,2])
            
#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)



#####################################
#####################################
#####################################
#####################################
# PROTOTYPES = [
#     PagePrototypeVideo.from_scene(Func_2_3_I_1_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_2_3_I_1_q, Func_2_3_I_1_q.__name__),
# ]