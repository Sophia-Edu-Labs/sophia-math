# # 4_6: Quadratic Functions: Three points to parabola.

# # Import necessary libraries and modules
# from abc import ABCMeta, abstractmethod
# from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
# from sophialib.styles.sophiascene import (CursorMoveToCurved, CursorPositionTracker,
#                                           CursorPositionTracking,
#                                           CursorResizeDefault, SophiaScene, Cursor,
#                                           assets_folder, avatars_folder,
#                                           generated_avatars_folder, AltCursor,
#                                           SophiaCursorScene, CursorMoveTo,
#                                           CursorMoveResize, Notepad, CursorMarkAxis, Bubble)
# from sophialib.styles.styleconstants import *
# from sophialib.styles.sophiaobjects import *
# from manim import *
# from PIL import Image
# import numpy as np
# from pathlib import Path
# from sophialib.tasks.sophiataskdefinition import SophiaTaskDefinition



# #####################################
# #####################################
# TASK_Func_4_6_I_1_q = SophiaTaskDefinition(
#     answerOptions = ["$f(x)=2x+2$", "f(x)=x+4", "f(x)=2x", "f(x)=x^2"],
#     correctAnswerIndex = 2,
#     questionText = "What is the term of the linear function that goes through (0,0) and (2,4)?"
# )
# class Func_4_6_I_1_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         self.add_title("Quadratic Functions")
        
#         #Create the coordinate system
#         cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
#         plane = cords[0]

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         x,y,_ = plane.c2p(0,-4)
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = False
#         cursor.add_updater(cursor_sound_updater)
#         cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
#         self.add(cursor)

#         f = MathTex("f", "(x)", "=", "a", "x", "+","b", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=1)


#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 We want to find out: How many points do you need, to determine the term of a quadratic function?
#                 If you have a linear function, you can compute the term and plot it using only two points
#                 on that line. <bookmark mark="cords"/>As an example, say f goes through the <bookmark mark="point1"/>
#                 points (0, 0)and <bookmark mark="point2"/>(2, 4). From these <bookmark mark="cursorBack"/>two points, we can
#                 infer the termm of the linear function <bookmark mark="f"/>f of <bookmark mark="fx"/>x equals
#                 <bookmark mark="a"/>a x plus <bookmark mark="b"/>b.
#                 What is it?
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("cords")
#             self.play(Create(cords))

#             self.wait_until_bookmark("point1")
#             x,y,_ = plane.c2p(0,0)
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             self.add(cursor.copy().set_color(GREEN).clear_updaters())

#             self.wait_until_bookmark("point2")
#             x,y,_ = plane.c2p(2,4)
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             self.add(cursor.copy().set_color(GREEN).clear_updaters())

#             self.wait_until_bookmark("cursorBack")
#             x,y,_ = plane.c2p(0,-4)
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("f")
#             cursor.blinking=False
#             x,y,_ = f[0].get_center()+0.4*DOWN
#             self.play(Create(f), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("fx")
#             x,y,_ = f[1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("a")
#             x,y,_ = f[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("b")
#             x,y,_ = f[6].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)


# class Func_4_6_I_1_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         self.add_title("Quadratic Functions")
        
#         #Create the coordinate system
#         cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
#         plane = cords[0]
#         self.add(cords)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         x,y,_ = plane.c2p(0,-4)
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = False
#         cursor.add_updater(cursor_sound_updater)
#         cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
#         self.add(cursor)

#         f = MathTex("f", "(x)", "=", "a", "x", "+","b", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.4)
#         fTrue = MathTex("f", "(x)", "=", "2", "x", color=c1t, font_size=fs2).move_to(f)
#         f1 = MathTex("f", "(0)", "=", "a\\cdot0", "+b=", "0", color=c1t, font_size=fs2).next_to(f, DOWN, buff=0.4)
#         follows = Tex("$\\Rightarrow$ b = 0", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.1)
#         f2 = MathTex("f", "(2)", "=", "a", "\\cdot2", "=4", color=c1t, font_size=fs2).next_to(follows, DOWN, buff=0.4)
#         follows2 = Tex("$\\Rightarrow$ a = 2", color=c1t, font_size=fs2).next_to(f2, DOWN, buff=0.1)
#         c1 = Dot(radius = 0.1, color=GREEN).move_to(plane.c2p(0,0))
#         c2 = Dot(radius = 0.1, color=GREEN).move_to(plane.c2p(2,4))

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not the right function term. 
#                 So we know the term has the form<bookmark mark="f"/> f of<bookmark mark="x"/> x equals<bookmark mark="a"/>
#                 a x<bookmark mark="b"/> plus b.
#                 Now, we can plug the two points into the term. The first point<bookmark mark="p1"/> is (0, 0), so we get <bookmark mark="f2"/>
#                 f of<bookmark mark="02"/> 0 equals<bookmark mark="a2"/> "a" times<bookmark mark="022"/> 0 plus b.
#                 We can see that<bookmark mark="follows1"/> b equals 0, because 0 times anything is 0.
#                 The second point<bookmark mark="p2"/> is (2, 4), so we get<bookmark mark="f3"/> f of<bookmark mark="03"/> 2
#                 equals<bookmark mark="a3"/> "a" times<bookmark mark="023"/> 2 which is equal to<bookmark mark="b3"/> 4.
#                 Now we can see that<bookmark mark="follows2"/> "a" equals 2, because we need "a" times two to be equal to four.
#                 So, the linear function that goes through the two points<bookmark mark="fin"/> is f of x equals 2 x.
#                 """
#         ) as tracker:
            

#             self.wait_until_bookmark("f")
#             cursor.blinking=False
#             x,y,_ = f[0].get_center()+0.4*DOWN
#             self.play(Create(f), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("x")
#             x,y,_ = f[1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("a")
#             x,y,_ = f[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("b")
#             x,y,_ = f[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("p1")
#             cursor.blinking=False
#             x,y,_ = plane.c2p(0,0)
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             self.add(c1)
#             cursor.blinking=True

#             self.wait_until_bookmark("f2")
#             cursor.blinking=False
#             x,y,_ = f1[0].get_center()+0.4*DOWN
#             self.play(Create(f1), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("02")
#             x,y,_ = f1[1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("a2")
#             x,y,_ = f1[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("022")
#             x,y,_ = f1[4].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("follows1")
#             cursor.blinking=False
#             x,y,_ = follows.get_center()+0.4*DOWN
#             self.play(Write(follows), CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("p2")
#             cursor.blinking=False
#             x,y,_ = plane.c2p(2,4)
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             self.add(c2)
#             cursor.blinking=True

#             self.wait_until_bookmark("f3")
#             cursor.blinking=False
#             x,y,_ = f2[0].get_center()+0.4*DOWN
#             self.play(Create(f2), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("03")
#             x,y,_ = f2[1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("a3")
#             x,y,_ = f2[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("023")
#             x,y,_ = f2[4].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("b3")
#             x,y,_ = f2[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("follows2")
#             cursor.blinking=False
#             x,y,_ = follows2.get_center()+0.4*DOWN
#             self.play(Write(follows2), CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("fin")
#             cursor.blinking=False
#             x,y,_ = fTrue.get_center()+0.4*DOWN
#             self.play(ReplacementTransform(f,fTrue), CursorMoveTo(cursor,x,y), Unwrite(f1), Unwrite(f2), Unwrite(follows), Unwrite(follows2), run_time=0.3)
#             cursor.blinking=True

#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)


# class Func_4_6_I_1_b(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         self.add_title("Quadratic Functions")
        
#         #Create the coordinate system
#         cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
#         plane = cords[0]
#         self.add(cords)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         x,y,_ = plane.c2p(0,-4)
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = False
#         cursor.add_updater(cursor_sound_updater)
#         cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
#         self.add(cursor)

#         f = MathTex("f", "(x)", "=", "a", "x", "+","b", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.4)
#         fTrue = MathTex("f", "(x)", "=", "2", "x", color=c1t, font_size=fs2).move_to(f)
#         f1 = MathTex("f", "(0)", "=", "a\\cdot0", "+b=", "0", color=c1t, font_size=fs2).next_to(f, DOWN, buff=0.4)
#         follows = Tex("$\\Rightarrow$ b = 0", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.1)
#         f2 = MathTex("f", "(2)", "=", "a", "\\cdot2", "=4", color=c1t, font_size=fs2).next_to(follows, DOWN, buff=0.4)
#         follows2 = Tex("$\\Rightarrow$ a = 2", color=c1t, font_size=fs2).next_to(f2, DOWN, buff=0.1)
#         c1 = Dot(radius = 0.1, color=GREEN).move_to(plane.c2p(0,0))
#         c2 = Dot(radius = 0.1, color=GREEN).move_to(plane.c2p(2,4))

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not the right function term. 
#                 So we know the term has the form<bookmark mark="f"/> f of<bookmark mark="x"/> x equals<bookmark mark="a"/>
#                 a x<bookmark mark="b"/> plus b.
#                 Now, we can plug the two points into the term. The first point<bookmark mark="p1"/> is (0, 0), so we get <bookmark mark="f2"/>
#                 f of<bookmark mark="02"/> 0 equals<bookmark mark="a2"/> "a" times<bookmark mark="022"/> 0 plus b.
#                 We can see that<bookmark mark="follows1"/> b equals 0, because 0 times anything is 0.
#                 The second point<bookmark mark="p2"/> is (2, 4), so we get<bookmark mark="f3"/> f of<bookmark mark="03"/> 2
#                 equals<bookmark mark="a3"/> "a" times<bookmark mark="023"/> 2 which is equal to<bookmark mark="b3"/> 4.
#                 Now we can see that<bookmark mark="follows2"/> "a" equals 2, because we need "a" times two to be equal to four.
#                 So, the linear function that goes through the two points<bookmark mark="fin"/> is f of x equals 2 x.
#                 """
#         ) as tracker:
            

#             self.wait_until_bookmark("f")
#             cursor.blinking=False
#             x,y,_ = f[0].get_center()+0.4*DOWN
#             self.play(Create(f), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("x")
#             x,y,_ = f[1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("a")
#             x,y,_ = f[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("b")
#             x,y,_ = f[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("p1")
#             cursor.blinking=False
#             x,y,_ = plane.c2p(0,0)
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             self.add(c1)
#             cursor.blinking=True

#             self.wait_until_bookmark("f2")
#             cursor.blinking=False
#             x,y,_ = f1[0].get_center()+0.4*DOWN
#             self.play(Create(f1), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("02")
#             x,y,_ = f1[1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("a2")
#             x,y,_ = f1[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("022")
#             x,y,_ = f1[4].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("follows1")
#             cursor.blinking=False
#             x,y,_ = follows.get_center()+0.4*DOWN
#             self.play(Write(follows), CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("p2")
#             cursor.blinking=False
#             x,y,_ = plane.c2p(2,4)
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             self.add(c2)
#             cursor.blinking=True

#             self.wait_until_bookmark("f3")
#             cursor.blinking=False
#             x,y,_ = f2[0].get_center()+0.4*DOWN
#             self.play(Create(f2), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("03")
#             x,y,_ = f2[1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("a3")
#             x,y,_ = f2[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("023")
#             x,y,_ = f2[4].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("b3")
#             x,y,_ = f2[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("follows2")
#             cursor.blinking=False
#             x,y,_ = follows2.get_center()+0.4*DOWN
#             self.play(Write(follows2), CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("fin")
#             cursor.blinking=False
#             x,y,_ = fTrue.get_center()+0.4*DOWN
#             self.play(ReplacementTransform(f,fTrue), CursorMoveTo(cursor,x,y), Unwrite(f1), Unwrite(f2), Unwrite(follows), Unwrite(follows2), run_time=0.3)
#             cursor.blinking=True

#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)


# class Func_4_6_I_1_c(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         self.add_title("Quadratic Functions")
        
#         #Create the coordinate system
#         cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
#         plane = cords[0]
#         self.add(cords)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         x,y,_ = plane.c2p(0,-4)
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = False
#         cursor.add_updater(cursor_sound_updater)
#         cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
#         self.add(cursor)

#         f = MathTex("f", "(x)", "=", "a", "x", "+","b", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.4)
#         fTrue = MathTex("f", "(x)", "=", "2", "x", color=c1t, font_size=fs2).move_to(f)
#         f1 = MathTex("f", "(0)", "=", "a\\cdot0", "+b=", "0", color=c1t, font_size=fs2).next_to(f, DOWN, buff=0.4)
#         follows = Tex("$\\Rightarrow$ b = 0", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.1)
#         f2 = MathTex("f", "(2)", "=", "a", "\\cdot2", "=4", color=c1t, font_size=fs2).next_to(follows, DOWN, buff=0.4)
#         follows2 = Tex("$\\Rightarrow$ a = 2", color=c1t, font_size=fs2).next_to(f2, DOWN, buff=0.1)
#         c1 = Dot(radius = 0.1, color=GREEN).move_to(plane.c2p(0,0))
#         c2 = Dot(radius = 0.1, color=GREEN).move_to(plane.c2p(2,4))

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Yep, that's the right function term. 
#                 So we know the term has the form<bookmark mark="f"/> f of<bookmark mark="x"/> x equals<bookmark mark="a"/>
#                 a x<bookmark mark="b"/> plus b.
#                 Now, we can plug the two points into the term. The first point<bookmark mark="p1"/> is (0, 0), so we get <bookmark mark="f2"/>
#                 f of<bookmark mark="02"/> 0 equals<bookmark mark="a2"/> "a" times<bookmark mark="022"/> 0 plus b.
#                 We can see that<bookmark mark="follows1"/> b equals 0, because 0 times anything is 0.
#                 The second point<bookmark mark="p2"/> is (2, 4), so we get<bookmark mark="f3"/> f of<bookmark mark="03"/> 2
#                 equals<bookmark mark="a3"/> "a" times<bookmark mark="023"/> 2 which is equal to<bookmark mark="b3"/> 4.
#                 Now we can see that<bookmark mark="follows2"/> "a" equals 2, because we need "a" times two to be equal to four.
#                 So, the linear function that goes through the two points<bookmark mark="fin"/> is f of x equals 2 x.
#                 """
#         ) as tracker:
            

#             self.wait_until_bookmark("f")
#             cursor.blinking=False
#             x,y,_ = f[0].get_center()+0.4*DOWN
#             self.play(Create(f), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("x")
#             x,y,_ = f[1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("a")
#             x,y,_ = f[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("b")
#             x,y,_ = f[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("p1")
#             cursor.blinking=False
#             x,y,_ = plane.c2p(0,0)
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             self.add(c1)
#             cursor.blinking=True

#             self.wait_until_bookmark("f2")
#             cursor.blinking=False
#             x,y,_ = f1[0].get_center()+0.4*DOWN
#             self.play(Create(f1), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("02")
#             x,y,_ = f1[1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("a2")
#             x,y,_ = f1[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("022")
#             x,y,_ = f1[4].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("follows1")
#             cursor.blinking=False
#             x,y,_ = follows.get_center()+0.4*DOWN
#             self.play(Write(follows), CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("p2")
#             cursor.blinking=False
#             x,y,_ = plane.c2p(2,4)
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             self.add(c2)
#             cursor.blinking=True

#             self.wait_until_bookmark("f3")
#             cursor.blinking=False
#             x,y,_ = f2[0].get_center()+0.4*DOWN
#             self.play(Create(f2), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("03")
#             x,y,_ = f2[1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("a3")
#             x,y,_ = f2[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("023")
#             x,y,_ = f2[4].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("b3")
#             x,y,_ = f2[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("follows2")
#             cursor.blinking=False
#             x,y,_ = follows2.get_center()+0.4*DOWN
#             self.play(Write(follows2), CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("fin")
#             cursor.blinking=False
#             x,y,_ = fTrue.get_center()+0.4*DOWN
#             self.play(ReplacementTransform(f,fTrue), CursorMoveTo(cursor,x,y), Unwrite(f1), Unwrite(f2), Unwrite(follows), Unwrite(follows2), run_time=0.3)
#             cursor.blinking=True

#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)


# class Func_4_6_I_1_d(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         self.add_title("Quadratic Functions")
        
#         #Create the coordinate system
#         cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
#         plane = cords[0]
#         self.add(cords)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         x,y,_ = plane.c2p(0,-4)
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = False
#         cursor.add_updater(cursor_sound_updater)
#         cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
#         self.add(cursor)

#         f = MathTex("f", "(x)", "=", "a", "x", "+","b", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.4)
#         fTrue = MathTex("f", "(x)", "=", "2", "x", color=c1t, font_size=fs2).move_to(f)
#         f1 = MathTex("f", "(0)", "=", "a\\cdot0", "+b=", "0", color=c1t, font_size=fs2).next_to(f, DOWN, buff=0.4)
#         follows = Tex("$\\Rightarrow$ b = 0", color=c1t, font_size=fs2).next_to(f1, DOWN, buff=0.1)
#         f2 = MathTex("f", "(2)", "=", "a", "\\cdot2", "=4", color=c1t, font_size=fs2).next_to(follows, DOWN, buff=0.4)
#         follows2 = Tex("$\\Rightarrow$ a = 2", color=c1t, font_size=fs2).next_to(f2, DOWN, buff=0.1)
#         c1 = Dot(radius = 0.1, color=GREEN).move_to(plane.c2p(0,0))
#         c2 = Dot(radius = 0.1, color=GREEN).move_to(plane.c2p(2,4))

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not the right function term. 
#                 So we know the term has the form<bookmark mark="f"/> f of<bookmark mark="x"/> x equals<bookmark mark="a"/>
#                 a x<bookmark mark="b"/> plus b.
#                 Now, we can plug the two points into the term. The first point<bookmark mark="p1"/> is (0, 0), so we get <bookmark mark="f2"/>
#                 f of<bookmark mark="02"/> 0 equals<bookmark mark="a2"/> "a" times<bookmark mark="022"/> 0 plus b.
#                 We can see that<bookmark mark="follows1"/> b equals 0, because 0 times anything is 0.
#                 The second point<bookmark mark="p2"/> is (2, 4), so we get<bookmark mark="f3"/> f of<bookmark mark="03"/> 2
#                 equals<bookmark mark="a3"/> "a" times<bookmark mark="023"/> 2 which is equal to<bookmark mark="b3"/> 4.
#                 Now we can see that<bookmark mark="follows2"/> "a" equals 2, because we need "a" times two to be equal to four.
#                 So, the linear function that goes through the two points<bookmark mark="fin"/> is f of x equals 2 x.
#                 """
#         ) as tracker:
            

#             self.wait_until_bookmark("f")
#             cursor.blinking=False
#             x,y,_ = f[0].get_center()+0.4*DOWN
#             self.play(Create(f), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("x")
#             x,y,_ = f[1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("a")
#             x,y,_ = f[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("b")
#             x,y,_ = f[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("p1")
#             cursor.blinking=False
#             x,y,_ = plane.c2p(0,0)
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             self.add(c1)
#             cursor.blinking=True

#             self.wait_until_bookmark("f2")
#             cursor.blinking=False
#             x,y,_ = f1[0].get_center()+0.4*DOWN
#             self.play(Create(f1), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("02")
#             x,y,_ = f1[1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("a2")
#             x,y,_ = f1[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("022")
#             x,y,_ = f1[4].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("follows1")
#             cursor.blinking=False
#             x,y,_ = follows.get_center()+0.4*DOWN
#             self.play(Write(follows), CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("p2")
#             cursor.blinking=False
#             x,y,_ = plane.c2p(2,4)
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             self.add(c2)
#             cursor.blinking=True

#             self.wait_until_bookmark("f3")
#             cursor.blinking=False
#             x,y,_ = f2[0].get_center()+0.4*DOWN
#             self.play(Create(f2), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("03")
#             x,y,_ = f2[1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("a3")
#             x,y,_ = f2[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("023")
#             x,y,_ = f2[4].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("b3")
#             x,y,_ = f2[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("follows2")
#             cursor.blinking=False
#             x,y,_ = follows2.get_center()+0.4*DOWN
#             self.play(Write(follows2), CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("fin")
#             cursor.blinking=False
#             x,y,_ = fTrue.get_center()+0.4*DOWN
#             self.play(ReplacementTransform(f,fTrue), CursorMoveTo(cursor,x,y), Unwrite(f1), Unwrite(f2), Unwrite(follows), Unwrite(follows2), run_time=0.3)
#             cursor.blinking=True

#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)


# #####################################
# #####################################
# class Func_4_6_I_2(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         self.add_title("Quadratic Functions")
        
#         #Create the coordinate system
#         cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
#         plane = cords[0]

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         x,y,_ = plane.c2p(0,-4)
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = False
#         cursor.add_updater(cursor_sound_updater)
#         cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
#         c1 = Dot(radius = 0.1, color=GREEN).move_to(plane.c2p(0,0))
#         c2 = Dot(radius = 0.1, color=GREEN).move_to(plane.c2p(2,4))

#         self.add(cords, cursor, c1, c2)

#         fLinear = lambda x: 2*x
#         gLinear = plane.plot(fLinear, color=BLUE).reverse_points()

#         fQuadratic1 = lambda x: x**2
#         gQuadratic1 = plane.plot(fQuadratic1, color=BLUE).reverse_points()
#         fQuadratic2 = lambda x: -x**2+4*x
#         gQuadratic2 = plane.plot(fQuadratic2, color=PURPLE, x_range=[-1, 2, 0.001]).reverse_points()

#         fQ1 = MathTex("f", "(x)", "=", "x", "^2", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.4)
#         fQ2 = MathTex("g", "(x)", "=", "-", "x", "^2", "+", "4", "x", color=c1t, font_size=fs2).next_to(fQ1, DOWN, buff=0.2)

        
#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Now for a linear function, two points are enough to determine the function term.
#                 The reason for that is very intuitive: If you have two points, you can <bookmark mark="Line"/>
#                 draw a line through them. And a linear function is just a line. With a quadratic function,
#                 it's not that easy. 
#                 The <bookmark mark="g1"/> graph you see now belongs to the unit parabola function<bookmark mark="f1"/>
#                 f of<bookmark mark="fx1"/> x equals <bookmark mark="x21"/>x squared and as you can see, it goes
#                 through the two green points. Now consider the function <bookmark mark="fx2"/> g of x equals<bookmark mark="x22"/>
#                 minus x squared plus<bookmark mark="4x2"/> 4 x . <bookmark mark="cursor"/> If you look at
#                 <bookmark mark="graph2"/> the graph of this function, you can see that it also goes through the two green points.
#                 So you see, two points are not enough to determine a quadratic function. In fact, you need three points.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("Line")
#             self.add_pencil_sound(1)
#             self.play(Create(gLinear), run_time=1)

#             self.wait_until_bookmark("g1")
#             cursor.blinking=False
#             x,y,_ = gQuadratic1.get_start()
#             self.play(Unwrite(gLinear), CursorMoveTo(cursor,x,y), run_time=0.5)
#             self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(gQuadratic1.get_end())))
#             self.add_pencil_sound(1.5)
#             self.play(Create(gQuadratic1))
#             cursor.blinking=True

#             self.wait_until_bookmark("f1")
#             cursor.blinking=False
#             x,y,_ = fQ1[0].get_center()+0.4*DOWN
#             self.play(Create(fQ1), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("fx1")
#             x,y,_ = fQ1[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("x21")
#             x,y,_ = fQ1[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("fx2")
#             cursor.blinking=False
#             x,y,_ = fQ2[0].get_center()+0.4*DOWN
#             self.play(Create(fQ2), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("x22")
#             x,y,_ = fQ2[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("4x2")
#             x,y,_ = fQ2[7].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("cursor")
#             cursor.blinking=False
#             x,y,_ = gQuadratic2.get_start()
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

#             self.wait_until_bookmark("graph2")
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
#             self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(gQuadratic2.get_end())))
#             self.add_pencil_sound(1.5)
#             self.play(Create(gQuadratic2))
#             cursor.blinking=True

#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)


# #####################################
# #####################################
# TASK_Func_4_6_I_3_q = SophiaTaskDefinition(
#     answerOptions = ["$f(x)=2x+2$", "f(x)=x+4", "f(x)=2x", "f(x)=x^2"],
#     correctAnswerIndex = 2,
#     questionText = "What is the term of the quadratic function that goes through (-2,-2), (0,2) and (2,-2)?"
# )
# class Func_4_6_I_3_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         self.add_title("Quadratic Functions")
        
#         #Create the coordinate system
#         cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
#         plane = cords[0]

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         x,y,_ = plane.c2p(0,0)
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = False
#         cursor.add_updater(cursor_sound_updater)
#         cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)

#         self.add(cords, cursor)

#         fQuadratic1 = lambda x: -x**2+2
#         gQuadratic1 = plane.plot(fQuadratic1, color=BLUE)
#         p1 = Dot(radius = 0.1, color=GREEN).move_to(plane.c2p(-2,-2))
#         p2 = Dot(radius = 0.1, color=GREEN).move_to(plane.c2p(0,2))
#         p3 = Dot(radius = 0.1, color=GREEN).move_to(plane.c2p(2,-2))
        
#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Consider the following three points: <bookmark mark="p1"/> (-2, -2), <bookmark mark="p2"/> 
#                 (0, 2) and <bookmark mark="p3"/>(2, -2). There is<bookmark mark="cursorPos"/> exactly one
#                 quadratic <bookmark mark="plot"/>function that goes through all three points. 
#                 What is the term of that function?
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("p1")
#             cursor.blinking=False
#             x,y,_ = p1.get_center()
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
#             self.add(p1)
            
#             self.wait_until_bookmark("p2")
#             x,y,_ = p2.get_center()
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
#             self.add(p2)

#             self.wait_until_bookmark("p3")
#             x,y,_ = p3.get_center()
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
#             self.add(p3)
#             cursor.blinking=True

#             self.wait_until_bookmark("cursorPos")
#             cursor.blinking=False
#             x,y,_ = gQuadratic1.get_start()
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
#             self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(gQuadratic1.get_end())))
#             self.add_pencil_sound(1.5)
#             self.play(Create(gQuadratic1))
#             Qmark = self.draw_qmark(cursor, DOWN*2, 3.5, apply_waves=0)
#             self.play(ApplyWave(Qmark))
#             self.play(ApplyWave(Qmark))

#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)


# class Func_4_6_I_3_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Quadratic Functions")
        
#         #Create the coordinate system
#         cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
#         plane = cords[0]

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         x,y,_ = plane.c2p(0,0)
#         cursor = AltCursor(stroke_width=0.0, blinking=False, x=x, y=y)
#         cursor.autoFadeBackground = False
#         cursor.add_updater(cursor_sound_updater)
#         cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)

#         self.add(cords, cursor)

#         fQuadratic1 = lambda x: -x**2+2
#         gQuadratic1 = plane.plot(fQuadratic1, color=BLUE)
#         p1 = Dot(radius = 0.1, color=GREEN).move_to(plane.c2p(-2,-2))
#         p2 = Dot(radius = 0.1, color=GREEN).move_to(plane.c2p(0,2))
#         p3 = Dot(radius = 0.1, color=GREEN).move_to(plane.c2p(2,-2))
#         points = VGroup(p1, p2, p3)

#         f_sol = MathTex("f", "(x)", "=", "-", "x", "^2", "+", "2", color=c1t, font_size=fs2).next_to(plane, DOWN, buff=0.4)
#         f_sol2 = MathTex("\\Rightarrow", "f", "(x)", "=", "-", "x", "^2", "+", "2", color=c1t, font_size=fs2)
#         f_general = MathTex("f", "(x)", "=", "a", "x", "^2", "+", "b", "x", "+", "c", color=c1t, font_size=fs2).move_to(f_sol)

#         e01a = MathTex("f", "(-2)", "=", "a", "(-2)", "^2", "+", "b", "(-2)", "+", "c", color=c1t, font_size=fs3).next_to(f_general, DOWN, buff=0.6).shift(UP*3)
#         e01b = MathTex("1)\\,", "4a", "-2b", "+", "c", "=-2", color=c1t, font_size=fs3).next_to(e01a, DOWN, buff=0.2)
#         e01c = MathTex("1)\\,", "4a", "-2b", "+", "2", "=-2", color=c1t, font_size=fs3)

#         e02a = MathTex("f", "(0)", "=", "a", "(0)", "^2", "+", "b", "(0)", "+", "c", color=c1t, font_size=fs3).next_to(e01b, DOWN, buff=0.6)
#         e02b = MathTex("2)\\,","c", "=2", color=c1t, font_size=fs3).next_to(e02a, DOWN, buff=0.2)

#         e03a = MathTex("f", "(2)", "=", "a", "(2)", "^2", "+", "b", "(2)", "+", "c", color=c1t, font_size=fs3).next_to(e02b, DOWN, buff=0.6)
#         e03b = MathTex("3)\\,","4a", "+2b", "+", "c", "=-2", color=c1t, font_size=fs3).next_to(e03a, DOWN, buff=0.2)
#         e03c = MathTex("3)\\,","4a", "+2b", "+", "2", "=-2", color=c1t, font_size=fs3)

#         e04 = MathTex("4","8a", "+", "4", "=-4", color=c1t, font_size=fs3)
#         e04b = MathTex("\\Rightarrow","a", "=-1", color=c1t, font_size=fs3)
#         e04c = MathTex("\\Rightarrow","b", "=0", color=c1t, font_size=fs3)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 That is correct. Well done!
#                 The term<bookmark mark="unWriteSmile"/> of the <bookmark mark="plot"/>quadratic function that goes through the
#                 <bookmark mark="points"/>three points is <bookmark mark="fS"/> f of <bookmark mark="xSol"/> x equals minus 
#                 <bookmark mark="xSquaredSol"/>x squared plus<bookmark mark="twoSol"/> 2... But how do we get there?
#                 Two options. The first one is to guess and then plug in the values to see if it's actually correct.
#                 The second way is a bit more involved.
#                 We start with the general form of squared functions:<bookmark mark="fG"/> f of x equals<bookmark mark="xG"/> a x squared
#                 plus<bookmark mark="bG"/> b x plus<bookmark mark="cG"/> c. Now we plug in the three points and get three equations.
#                 <bookmark mark="shiftUp"/>We get the first equation by plugging in the first point (-2, -2). We then get <bookmark mark="f01a"/>
#                 f of <bookmark mark="fx01a"/> negative two equals<bookmark mark="a01a"/> a times<bookmark mark="x01a"/> negative two squared
#                 plus<bookmark mark="b01a"/> b times negative two plus <bookmark mark="c01a"/> c. We can simplify this to <bookmark mark="a01b"/>
#                 4a minus 2b plus c equals negative two.
#                 """
#         ) as tracker:

#             cursor, smile = self.draw_smile(cursor, loc=DOWN*2, run_time=2.5)
#             self.play(CursorMoveTo(cursor,x,y))
#             cursor.blinking=True

#             self.wait_until_bookmark("unWriteSmile")
#             self.play(Unwrite(smile), run_time=0.5)

#             self.wait_until_bookmark("plot")
#             cursor.blinking=False
#             x,y,_ = gQuadratic1.get_start()
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             self.add(cursor.copy()._start_fading(1.5).add_updater(lambda m: m.move_to(gQuadratic1.get_end())))
#             self.add_pencil_sound(1)
#             self.play(Create(gQuadratic1), run_time=1)
#             cursor.blinking=True

#             self.wait_until_bookmark("points")
#             self.play(Write(points))

#             self.wait_until_bookmark("fS")
#             cursor.blinking=False
#             x,y,_ = f_sol[0].get_center()+0.4*DOWN
#             self.play(Create(f_sol), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("xSol")
#             x,y,_ = f_sol[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("xSquaredSol")
#             x,y,_ = f_sol[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("twoSol")
#             x,y,_ = f_sol[7].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("fG")
#             cursor.blinking=False
#             x,y,_ = f_general[0].get_center()+0.4*DOWN
#             self.play(TransformMatchingTex(f_sol,f_general), CursorMoveTo(cursor,x,y), run_time=0.8)

#             self.wait_until_bookmark("xG")
#             x,y,_ = f_general[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("bG")
#             x,y,_ = f_general[7].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("cG")
#             x,y,_ = f_general[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("shiftUp")
#             self.play(Unwrite(points), f_general.animate.shift(UP*3), Unwrite(cords), Unwrite(gQuadratic1), run_time=0.5)

#             self.wait_until_bookmark("f01a")
#             cursor.blinking=False
#             x,y,_ = e01a[0].get_center()+0.4*DOWN
#             self.play(Create(e01a), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("fx01a")
#             x,y,_ = e01a[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("a01a")
#             x,y,_ = e01a[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("x01a")
#             x,y,_ = e01a[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("b01a")
#             x,y,_ = e01a[7].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            
#             self.wait_until_bookmark("c01a")
#             x,y,_ = e01a[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("a01b")
#             cursor.blinking=False
#             x,y,_ = e01b.get_center()+0.4*DOWN
#             self.play(Create(e01b), CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True
            

#         with self.voiceover(
#                 text="""
#                 We get the second equation by plugging in the second point (0, 2). We then get <bookmark mark="f02a"/> f of <bookmark mark="fx02a"/>
#                 zero equals<bookmark mark="a02a"/> a times<bookmark mark="x02a"/> zero squared plus<bookmark mark="b02a"/> b times zero plus
#                 <bookmark mark="c02a"/> c. We can simplify this to <bookmark mark="c02b"/> c equals two.
#                 We get the third equation by plugging in the third point (2, -2). We then get <bookmark mark="f03a"/> f of <bookmark mark="fx03a"/>
#                 two equals<bookmark mark="a03a"/> a times<bookmark mark="x03a"/> two squared plus<bookmark mark="b03a"/> b times two plus
#                 <bookmark mark="c03a"/> c. We can simplify this to <bookmark mark="a03b"/> 4a plus 2b plus c equals negative two.
#                 <bookmark mark="decoration"/>
#                 Now we have three equations with three unknowns. We can solve this system of equations to get the values for a, b and c.
#                 So let's <bookmark mark="clean"/> clean up a bit so that we only have the three simplified equations left.
#                 Now the first thing we can do, is <bookmark mark="cEq2"/> plug in c equals 2 into the first and third equation.
#                 This gives us <bookmark mark="plugInC"/> 4a minus 2b plus two equals negative two <bookmark mark="and"/>and 4a plus 2b plus two equals negative two.
#                 Next, we add <bookmark mark="add"/> the two equations together. This gives us <bookmark mark="e04"/> 8a plus four equals negative four.
#                 We can then <bookmark mark="solveA"/> solve for a and get a equals negative one. Finally, if we plug in a equals negative one into
#                 the first equation, we get that <bookmark mark="b0"/> b equals zero. So the term of the quadratic function that goes through the three points
#                 is <bookmark mark="fSol"/> f of x equals minus x squared plus two.
#                 """
#             ) as tracker:


#             self.wait_until_bookmark("f02a")
#             cursor.blinking=False
#             x,y,_ = e02a[0].get_center()+0.4*DOWN
#             self.play(Create(e02a), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("fx02a")
#             x,y,_ = e02a[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("a02a")
#             x,y,_ = e02a[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("x02a")
#             x,y,_ = e02a[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("b02a")
#             x,y,_ = e02a[7].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("c02a")
#             x,y,_ = e02a[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("c02b")
#             cursor.blinking=False
#             x,y,_ = e02b.get_center()+0.4*DOWN
#             self.play(Create(e02b), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("f03a")
#             x,y,_ = e03a[0].get_center()+0.4*DOWN
#             self.play(Create(e03a), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("fx03a")
#             x,y,_ = e03a[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("a03a")
#             x,y,_ = e03a[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("x03a")
#             x,y,_ = e03a[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("b03a")
#             x,y,_ = e03a[7].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("c03a")
#             x,y,_ = e03a[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("a03b")
#             cursor.blinking=False
#             x,y,_ = e03b.get_center()+0.4*DOWN
#             self.play(Create(e03b), CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("decoration")
#             decoration = self.draw_decorative_line(cursor, downshift=3, run_time=4)

#             self.wait_until_bookmark("clean")
#             self.play(Unwrite(e01a), Unwrite(e02a),  Unwrite(e03a), Unwrite(f_general), e01b.animate.next_to(title, DOWN, buff=1), e02b.animate.next_to(title, DOWN, buff=1.6), e03b.animate.next_to(title, DOWN, buff=2.2))
#             self.play(e03b.animate.shift(RIGHT*(e01b.get_left()-e03b.get_left())), e02b.animate.shift(RIGHT*(e01b.get_left()-e02b.get_left())), Unwrite(decoration), run_time=0.5)

#             self.wait_until_bookmark("cEq2")
#             cursor.blinking=False
#             x,y,_ = e02b.get_right()+0.4*RIGHT
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("plugInC")
#             x,y,_ = e01c.get_left()+0.4*LEFT
#             cursor.blinking=False
#             self.play(TransformMatchingTex(e01b, e01c.move_to(e01b)), TransformMatchingTex(e03b, e03c.move_to(e03b)), CursorMoveTo(cursor,x,y), run_time=1)

#             self.wait_until_bookmark("and")
#             x,y,_ = e03c.get_left()+0.4*LEFT
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("add")
#             x,y,_ = e01c.get_left()+0.4*LEFT
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("e04")
#             cursor.blinking=False
#             e04.next_to(e03c, DOWN, buff=0.4).shift(RIGHT*((e01c.get_left()-e04.get_left())))
#             x,y,_ = e04.get_center()+0.4*DOWN
#             self.play(Create(e04), CursorMoveTo(cursor,x,y), run_time=0.3)

#             self.wait_until_bookmark("solveA")
#             cursor.blinking=False
#             e04b.next_to(e04, DOWN, buff=0.4).shift(RIGHT*((e01c.get_left()-e04b.get_left())))
#             x,y,_ = e04b.get_center()+0.4*DOWN
#             self.play(Write(e04b), CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("b0")
#             cursor.blinking=False
#             e04c.next_to(e04b, DOWN, buff=0.4).shift(RIGHT*((e01c.get_left()-e04c.get_left())))
#             x,y,_ = e04c.get_center()+0.4*DOWN
#             self.play(Write(e04c), CursorMoveTo(cursor,x,y), run_time=0.3)
#             cursor.blinking=True
            
#             self.wait_until_bookmark("fSol")
#             cursor.blinking=False
#             f_sol2.next_to(e04c, DOWN, buff=0.4).shift(RIGHT*((e01c.get_left()-f_sol2.get_left())))
#             x,y,_ = f_sol2[0].get_center()+0.4*DOWN
#             self.play(Write(f_sol2), CursorMoveTo(cursor,x,y), run_time=0.3)


#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)



# ####################################
# ####################################
# #### Prototypes ####################
# ####################################
# ####################################
# PROTOTYPES = [
#     PagePrototypeVideo.from_scene(Func_4_6_I_1_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_4_6_I_1_q, Func_4_6_I_1_q.__name__),
#     PagePrototypeVideo.from_scene(Func_4_6_I_1_a),
#     PagePrototypeVideo.from_scene(Func_4_6_I_1_b),
#     PagePrototypeVideo.from_scene(Func_4_6_I_1_c),
#     PagePrototypeVideo.from_scene(Func_4_6_I_2),
#     PagePrototypeVideo.from_scene(Func_4_6_I_3_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_4_6_I_3_q, Func_4_6_I_3_q.__name__),
#     PagePrototypeVideo.from_scene(Func_4_6_I_3_a),
#     PagePrototypeVideo.from_scene(Func_4_6_I_3_b),
#     PagePrototypeVideo.from_scene(Func_4_6_I_3_c),
#     PagePrototypeVideo.from_scene(Func_4_6_I_3_d),
#     PagePrototypeVideo.from_scene(Func_4_6_I_4_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_4_6_I_4_q, Func_4_6_I_4_q.__name__),
#     PagePrototypeVideo.from_scene(Func_4_6_I_4_a),
#     PagePrototypeVideo.from_scene(Func_4_6_I_4_b),
#     PagePrototypeVideo.from_scene(Func_4_6_I_4_c),
#     PagePrototypeVideo.from_scene(Func_4_6_I_4_d),
#     PagePrototypeVideo.from_scene(Func_4_6_I_5_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_4_6_I_5_q, Func_4_6_I_5_q.__name__),
#     PagePrototypeVideo.from_scene(Func_4_6_I_5_a),
#     PagePrototypeVideo.from_scene(Func_4_6_I_5_b),
#     PagePrototypeVideo.from_scene(Func_4_6_I_5_c),
#     PagePrototypeVideo.from_scene(Func_4_6_I_6_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_4_6_I_6_q, Func_4_6_I_6_q.__name__),
#     PagePrototypeVideo.from_scene(Func_4_6_I_6_a),
#     PagePrototypeVideo.from_scene(Func_4_6_I_6_b),
#     PagePrototypeVideo.from_scene(Func_4_6_I_6_c),
#     PagePrototypeVideo.from_scene(Func_4_6_I_6_d),
#     PagePrototypeVideo.from_scene(Func_4_6_I_7_q),
#     PagePrototypeQuestion.from_task_definition(TASK_Func_4_6_I_7_q, Func_4_6_I_7_q.__name__),
#     PagePrototypeVideo.from_scene(Func_4_6_I_7_a),
#     PagePrototypeVideo.from_scene(Func_4_6_I_7_b),
#     PagePrototypeVideo.from_scene(Func_4_6_I_7_c),
#     PagePrototypeVideo.from_scene(Func_4_6_I_7_d),

# ]