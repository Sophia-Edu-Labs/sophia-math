# # 8_1: Polynomial Functions: Degree and Coefficients

# # Import necessary libraries and modules
# from abc import ABCMeta, abstractmethod
# from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
# from sophialib.styles.sophiascene import (CursorMoveToCurved, CursorPositionTracker,
#                                           CursorPositionTracking,
#                                           CursorResizeDefault, SophiaScene,
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
# TASK_Func_8_1_I_1_q = SophiaTaskDefinition(
#     answerOptions = ["$f(x)=\sin(x)", "$f(x)=\cos(x)", "$f(x)=\\frac{1}{2}x$", "$f(x)=x^2$"],
#     correctAnswerIndex = 2,
#     questionText = "What is a linear function we could use to model a roller coaster?"
# )
# class Func_8_1_I_1_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Polynomial Functions")

#         cords = self.add_cords([-2,2,1], [-2,2, 1], x_ticks=[-2,0,2], y_ticks=[-1,1])
#         plane = cords[0]

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         gero = ImageMobject(assets_folder / "img" / "gero.png")
#         gero = gero.scale(2.5/gero.get_width()).move_to([-5, 1.4, 0])
#         phone = ImageMobject(assets_folder / "img" / "phone.png")
#         phone = phone.scale(2.5/phone.get_width()).move_to([-5, 1.4, 0])
#         rollercoaster = ImageMobject(assets_folder / "img" / "rollercoaster.png")
#         rollercoaster = rollercoaster.scale(2.5/rollercoaster.get_width()).move_to([-5, -1.4, 0])

#         func = plane.plot(lambda x: x/2, color=BLUE)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 We're now combining the knowledge of functions that we've obtained so far, to cover a new
#                 topic: Polynomial Functions.

#                 We'll start with an example. <bookmark mark="gero_in"/>
#                 Meet Gero. Gero loves nothing more <bookmark mark="rollercoaster_in"/> than rollercoasters,
#                 so he decides to build one for his friends.
#                 <bookmark mark="phone_gero"/>
#                 He talked to a rollercoaster construction company, and they told him, that all he needs to
#                 do is tell them the term of a function, and they'll build a rollercoaster that follows that
#                 <bookmark mark="phone_out"/>function.

#                 Gero hasn't been using the sophia math app enough, so he only knows about
#                 linear functions. <bookmark mark="linear_func"/>What is a linear function he could use
#                 to model a rollercoaster?
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("gero_in")
#             self.play(gero.animate.shift(RIGHT*5))

#             self.wait_until_bookmark("rollercoaster_in")
#             self.play(rollercoaster.animate.shift(RIGHT*5))

#             self.wait_until_bookmark("phone_gero")
#             self.play(gero.animate.shift(RIGHT*5), phone.animate(run_time=0.5).shift(RIGHT*5))

#             self.wait_until_bookmark("phone_out")
#             self.play(phone.animate.shift(RIGHT*5))

#             self.wait_until_bookmark("linear_func")
#             x,y,_ = func.get_start()
#             cursor.blinking=False
#             self.play(Create(cords), CursorMoveTo(cursor,x,y))
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(func.get_end()))._start_fading(2))
#             self.add_pencil_sound(1.5)
#             self.play(Create(func))
#             cursor.blinking=True

#         self.wait(4)


# class Func_8_1_I_1_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Polynomial Functions")

#         cords = self.add_cords([-2,2,1], [-2,2, 1], x_ticks=[-2,0,2], y_ticks=[-1,1])
#         plane = cords[0]

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: x/2, color=BLUE)

#         lin = MathTex("ax", "+", "b", font_size=fs2, color=c1t).next_to(cords, DOWN, buff=.6)
#         sin = MathTex("\\sin(x),", "\\,\\cos(x)", font_size=fs2, color=c1t).next_to(lin, DOWN, buff=.4)
#         l,t,_ = sin.get_critical_point(UP+LEFT)
#         r,b,_ = sin.get_critical_point(DOWN+RIGHT)
#         cross_trigon = VGroup(Line([l,t,0], [r,b,0], color=RED, stroke_width=2), Line([l,b,0], [r,t,0], color=RED, stroke_width=2))
#         square = MathTex("x^2", font_size=fs2, color=c1t).next_to(sin, DOWN, buff=.4)
#         l,t, _ = square.get_critical_point(UP+LEFT)
#         r,b, _ = square.get_critical_point(DOWN+RIGHT)
#         cross_square = VGroup(Line([l,t,0], [r,b,0], color=RED, stroke_width=2), Line([l,b,0], [r,t,0], color=RED, stroke_width=2))
#         correct = MathTex("\\tfrac{1}{2}x", font_size=fs2, color=c1t).next_to(square, DOWN, buff=.4)

#         check = ImageMobject(assets_folder / "img" / "green_checkmark.png")
#         check = check.scale(1/check.get_width()).next_to(correct, RIGHT, buff=.4)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not a linear function.
#                 <bookmark mark="linear_func"/>
#                 A linear function is a function that has a constant slope. This means, it
#                 can only contain terms of the <bookmark mark="ax"/> form a
#                 times x <bookmark mark="b"/>plus b, where a and b are constants.
#                 <bookmark mark="sine"/>So the sine and the<bookmark mark="not_sine"/> cosine
#                 aren't linear, <bookmark mark="x_squared"/>and x squared <bookmark mark="not_x_squared"/>
#                 isn't linear either.
#                 <bookmark mark="sol"/> one half times x on the other hand, is linear,
#                 <bookmark mark="checkmark"/> so that is the correct answer.
#                 """
#         ) as tracker:
            
#             self.play(Create(cords))

#             self.wait_until_bookmark("linear_func")
#             x,y,_ = func.get_start()
#             cursor.blinking=False
#             self.play(Create(cords), CursorMoveTo(cursor,x,y))
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(func.get_end()))._start_fading(2))
#             self.add_pencil_sound(1.5)
#             self.play(Create(func))
#             cursor.blinking=True

#             self.wait_until_bookmark("ax")
#             x,y,_ = lin[0].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(lin), CursorMoveTo(cursor,x,y), run_time=.3)
            
#             self.wait_until_bookmark("b")
#             x,y,_ = lin[2].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("sine")
#             x,y,_ = sin.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(sin), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("not_sine")
#             self.play(Create(cross_trigon))

#             self.wait_until_bookmark("x_squared")
#             x,y,_ = square.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(square), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("not_x_squared")
#             self.play(Create(cross_square))

#             self.wait_until_bookmark("sol")
#             x,y,_ = correct.get_center()+0.5*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(correct), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("checkmark")
#             self.play(FadeIn(check), run_time=.5)

#         self.wait(4)


# class Func_8_1_I_1_b(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Polynomial Functions")

#         cords = self.add_cords([-2,2,1], [-2,2, 1], x_ticks=[-2,0,2], y_ticks=[-1,1])
#         plane = cords[0]

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: x/2, color=BLUE)

#         lin = MathTex("ax", "+", "b", font_size=fs2, color=c1t).next_to(cords, DOWN, buff=.6)
#         sin = MathTex("\\sin(x),", "\\,\\cos(x)", font_size=fs2, color=c1t).next_to(lin, DOWN, buff=.4)
#         l,t,_ = sin.get_critical_point(UP+LEFT)
#         r,b,_ = sin.get_critical_point(DOWN+RIGHT)
#         cross_trigon = VGroup(Line([l,t,0], [r,b,0], color=RED, stroke_width=2), Line([l,b,0], [r,t,0], color=RED, stroke_width=2))
#         square = MathTex("x^2", font_size=fs2, color=c1t).next_to(sin, DOWN, buff=.4)
#         l,t, _ = square.get_critical_point(UP+LEFT)
#         r,b, _ = square.get_critical_point(DOWN+RIGHT)
#         cross_square = VGroup(Line([l,t,0], [r,b,0], color=RED, stroke_width=2), Line([l,b,0], [r,t,0], color=RED, stroke_width=2))
#         correct = MathTex("\\tfrac{1}{2}x", font_size=fs2, color=c1t).next_to(square, DOWN, buff=.4)

#         check = ImageMobject(assets_folder / "img" / "green_checkmark.png")
#         check = check.scale(1/check.get_width()).next_to(correct, RIGHT, buff=.4)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not a linear function.
#                 <bookmark mark="linear_func"/>
#                 A linear function is a function that has a constant slope. This means, it
#                 can only contain terms of the <bookmark mark="ax"/> form a
#                 times x <bookmark mark="b"/>plus b, where a and b are constants.
#                 <bookmark mark="sine"/>So the sine and the<bookmark mark="not_sine"/> cosine
#                 aren't linear, <bookmark mark="x_squared"/>and x squared <bookmark mark="not_x_squared"/>
#                 isn't linear either.
#                 <bookmark mark="sol"/> one half times x on the other hand, is linear,
#                 <bookmark mark="checkmark"/> so that is the correct answer.
#                 """
#         ) as tracker:
            
#             self.play(Create(cords))

#             self.wait_until_bookmark("linear_func")
#             x,y,_ = func.get_start()
#             cursor.blinking=False
#             self.play(Create(cords), CursorMoveTo(cursor,x,y))
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(func.get_end()))._start_fading(2))
#             self.add_pencil_sound(1.5)
#             self.play(Create(func))
#             cursor.blinking=True

#             self.wait_until_bookmark("ax")
#             x,y,_ = lin[0].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(lin), CursorMoveTo(cursor,x,y), run_time=.3)
            
#             self.wait_until_bookmark("b")
#             x,y,_ = lin[2].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("sine")
#             x,y,_ = sin.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(sin), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("not_sine")
#             self.play(Create(cross_trigon))

#             self.wait_until_bookmark("x_squared")
#             x,y,_ = square.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(square), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("not_x_squared")
#             self.play(Create(cross_square))

#             self.wait_until_bookmark("sol")
#             x,y,_ = correct.get_center()+0.5*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(correct), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("checkmark")
#             self.play(FadeIn(check), run_time=.5)

#         self.wait(4)


# class Func_8_1_I_1_c(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Polynomial Functions")

#         cords = self.add_cords([-2,2,1], [-2,2, 1], x_ticks=[-2,0,2], y_ticks=[-1,1])
#         plane = cords[0]

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: x/2, color=BLUE)

#         lin = MathTex("ax", "+", "b", font_size=fs2, color=c1t).next_to(cords, DOWN, buff=.6)
#         sin = MathTex("\\sin(x),", "\\,\\cos(x)", font_size=fs2, color=c1t).next_to(lin, DOWN, buff=.4)
#         l,t,_ = sin.get_critical_point(UP+LEFT)
#         r,b,_ = sin.get_critical_point(DOWN+RIGHT)
#         cross_trigon = VGroup(Line([l,t,0], [r,b,0], color=RED, stroke_width=2), Line([l,b,0], [r,t,0], color=RED, stroke_width=2))
#         square = MathTex("x^2", font_size=fs2, color=c1t).next_to(sin, DOWN, buff=.4)
#         l,t, _ = square.get_critical_point(UP+LEFT)
#         r,b, _ = square.get_critical_point(DOWN+RIGHT)
#         cross_square = VGroup(Line([l,t,0], [r,b,0], color=RED, stroke_width=2), Line([l,b,0], [r,t,0], color=RED, stroke_width=2))
#         correct = MathTex("\\tfrac{1}{2}x", font_size=fs2, color=c1t).next_to(square, DOWN, buff=.4)

#         check = ImageMobject(assets_folder / "img" / "green_checkmark.png")
#         check = check.scale(1/check.get_width()).next_to(correct, RIGHT, buff=.4)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Yep, that's right.
#                 <bookmark mark="linear_func"/>
#                 A linear function is a function that has a constant slope. This means, it
#                 can only contain terms of the <bookmark mark="ax"/> form a
#                 times x <bookmark mark="b"/>plus b, where a and b are constants.
#                 <bookmark mark="sine"/>So the sine and the<bookmark mark="not_sine"/> cosine
#                 aren't linear, <bookmark mark="x_squared"/>and x squared <bookmark mark="not_x_squared"/>
#                 isn't linear either.
#                 <bookmark mark="sol"/> one half times x on the other hand, is linear,
#                 <bookmark mark="checkmark"/> so that is the correct answer.
#                 """
#         ) as tracker:
            
#             self.play(Create(cords))

#             self.wait_until_bookmark("linear_func")
#             x,y,_ = func.get_start()
#             cursor.blinking=False
#             self.play(Create(cords), CursorMoveTo(cursor,x,y))
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(func.get_end()))._start_fading(2))
#             self.add_pencil_sound(1.5)
#             self.play(Create(func))
#             cursor.blinking=True

#             self.wait_until_bookmark("ax")
#             x,y,_ = lin[0].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(lin), CursorMoveTo(cursor,x,y), run_time=.3)
            
#             self.wait_until_bookmark("b")
#             x,y,_ = lin[2].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("sine")
#             x,y,_ = sin.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(sin), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("not_sine")
#             self.play(Create(cross_trigon))

#             self.wait_until_bookmark("x_squared")
#             x,y,_ = square.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(square), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("not_x_squared")
#             self.play(Create(cross_square))

#             self.wait_until_bookmark("sol")
#             x,y,_ = correct.get_center()+0.5*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(correct), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("checkmark")
#             self.play(FadeIn(check), run_time=.5)

#         self.wait(4)


# class Func_8_1_I_1_d(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Polynomial Functions")

#         cords = self.add_cords([-2,2,1], [-2,2, 1], x_ticks=[-2,0,2], y_ticks=[-1,1])
#         plane = cords[0]

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: x/2, color=BLUE)

#         lin = MathTex("ax", "+", "b", font_size=fs2, color=c1t).next_to(cords, DOWN, buff=.6)
#         sin = MathTex("\\sin(x),", "\\,\\cos(x)", font_size=fs2, color=c1t).next_to(lin, DOWN, buff=.4)
#         l,t,_ = sin.get_critical_point(UP+LEFT)
#         r,b,_ = sin.get_critical_point(DOWN+RIGHT)
#         cross_trigon = VGroup(Line([l,t,0], [r,b,0], color=RED, stroke_width=2), Line([l,b,0], [r,t,0], color=RED, stroke_width=2))
#         square = MathTex("x^2", font_size=fs2, color=c1t).next_to(sin, DOWN, buff=.4)
#         l,t, _ = square.get_critical_point(UP+LEFT)
#         r,b, _ = square.get_critical_point(DOWN+RIGHT)
#         cross_square = VGroup(Line([l,t,0], [r,b,0], color=RED, stroke_width=2), Line([l,b,0], [r,t,0], color=RED, stroke_width=2))
#         correct = MathTex("\\tfrac{1}{2}x", font_size=fs2, color=c1t).next_to(square, DOWN, buff=.4)

#         check = ImageMobject(assets_folder / "img" / "green_checkmark.png")
#         check = check.scale(1/check.get_width()).next_to(correct, RIGHT, buff=.4)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not a linear function.
#                 <bookmark mark="linear_func"/>
#                 A linear function is a function that has a constant slope. This means, it
#                 can only contain terms of the <bookmark mark="ax"/> form a
#                 times x <bookmark mark="b"/>plus b, where a and b are constants.
#                 <bookmark mark="sine"/>So the sine and the<bookmark mark="not_sine"/> cosine
#                 aren't linear, <bookmark mark="x_squared"/>and x squared <bookmark mark="not_x_squared"/>
#                 isn't linear either.
#                 <bookmark mark="sol"/> one half times x on the other hand, is linear,
#                 <bookmark mark="checkmark"/> so that is the correct answer.
#                 """
#         ) as tracker:
            
#             self.play(Create(cords))

#             self.wait_until_bookmark("linear_func")
#             x,y,_ = func.get_start()
#             cursor.blinking=False
#             self.play(Create(cords), CursorMoveTo(cursor,x,y))
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(func.get_end()))._start_fading(2))
#             self.add_pencil_sound(1.5)
#             self.play(Create(func))
#             cursor.blinking=True

#             self.wait_until_bookmark("ax")
#             x,y,_ = lin[0].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(lin), CursorMoveTo(cursor,x,y), run_time=.3)
            
#             self.wait_until_bookmark("b")
#             x,y,_ = lin[2].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("sine")
#             x,y,_ = sin.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(sin), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("not_sine")
#             self.play(Create(cross_trigon))

#             self.wait_until_bookmark("x_squared")
#             x,y,_ = square.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(square), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("not_x_squared")
#             self.play(Create(cross_square))

#             self.wait_until_bookmark("sol")
#             x,y,_ = correct.get_center()+0.5*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(correct), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("checkmark")
#             self.play(FadeIn(check), run_time=.5)

#         self.wait(4)


# #####################################
# #####################################
# TASK_Func_8_1_I_2_q = SophiaTaskDefinition(
#     answerOptions = ["Multiply $f$ with $a>0$", "Remove the $\\tfrac{1}{2}x$ term from $f$", "Add a constant $c$ to $f$", "Add terms like $x^3, x^4$,... to $f$"],
#     correctAnswerIndex = 3,
#     questionText = "How can we add more curves to the rollercoaster?"
# )
# class Func_8_1_I_2_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Polynomial Functions")

#         cords = self.add_cords([-2,2,1], [-5,5, 2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4])
#         plane = cords[0]

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=False)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: x/2, color=BLUE)
#         func_squared = plane.plot(lambda x: x**2+x/2, color=PURPLE)

#         functerm_linear = MathTex("f(x)=", "\\tfrac{1}{2}", "x", font_size=fs2, color=c1t).next_to(cords, DOWN, buff=.6)
#         functerm_squared = MathTex("f(x)=", "x^2", "+\\tfrac{1}{2}x", font_size=fs2, color=c1t).move_to(functerm_linear)

#         qmark = ImageMobject(assets_folder / "img" / "qmark.png")
#         qmark = qmark.scale(2/qmark.get_width()).move_to([-5, 0, 0])

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Ok, now admittedly, that's a pretty boring rollercoaster.

#                 To make it more fun, we could <bookmark mark="add_square"/> add an
#                 x squared to the function. The function would then be of degree two,
#                 and contain a nice curve.

#                 Now that's a little better, but not much better. <bookmark mark="qmark"/>
#                 How could we add more curves to the rollercoaster? More ups and downs,
#                 to make it more fun?
#                 """
#         ) as tracker:
            
#             x,y,_ = func.get_start()
#             self.play(Create(cords), CursorMoveTo(cursor, x, y), run_time=.5)
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(func.get_end()))._start_fading(2))
#             self.add_pencil_sound(1.5)
#             self.play(Create(func), Write(functerm_linear), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("add_square")
#             self.play(Transform(func, func_squared), Transform(functerm_linear, functerm_squared))

#             self.wait_until_bookmark("qmark")
#             self.play(qmark.animate.shift(RIGHT*5), run_time=.5)
#             self.wait(1)
#             self.play(qmark.animate.shift(RIGHT*5)) 

#         self.wait(4)



# class Func_8_1_I_2_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Polynomial Functions")

#         cords = self.add_cords([-2,2,1], [-5,5, 2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN)
#         plane = cords[0]
#         self.add(cords)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         a_0, a_1, a_2, a_3, a_4, a_5, a_6 = ValueTracker(0), ValueTracker(0.5), ValueTracker(1), ValueTracker(0), ValueTracker(0), ValueTracker(0), ValueTracker(0)
#         a,b = ValueTracker(-2), ValueTracker(2)
#         f = lambda x: a_0.get_value()+a_1.get_value()*x+a_2.get_value()*x**2+a_3.get_value()*x**3+a_4.get_value()*x**4+a_5.get_value()*x**5+a_6.get_value()*x**6
#         func_squared = always_redraw(lambda: plane.plot(f, color=PURPLE,x_range=[a.get_value(),b.get_value(), 0.001]))
#         self.add(func_squared)


#         qmark = ImageMobject(assets_folder / "img" / "qmark.png")
#         qmark = qmark.scale(2/qmark.get_width()).move_to([-5, 0, 0])

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not the right solution.

#                 If we <bookmark mark="square_only"/>remove the x term from the function,
#                 it barely changes.<bookmark mark="reset_1"/>
#                 So that's not the right solution.

#                 If <bookmark mark="add"/> we add a constant to the function, or
#                 <bookmark mark="multiply"/> if we multiply the function with a constant,
#                 the function will only move up or down, or get stretched or compressed.
#                 But <bookmark mark="reset_2"/> we want to add more curves to the rollercoaster,
#                 so that's not the right solution either.

#                 What we can do however is add terms containing<bookmark mark="add_terms"/> x cubed
#                 or x to the power of four to the function. That way, the function will have
#                 more ups and downs, and the rollercoaster will be more fun.
#                 So the right solution is to add terms like x cubed or x to the power of four
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("square_only")
#             self.play(a_1.animate.set_value(0))

#             self.wait_until_bookmark("reset_1")
#             self.play(a_1.animate.set_value(0.5), run_time=.5)

#             self.wait_until_bookmark("add")
#             self.play(a_0.animate.set_value(2), run_time=.5)

#             self.wait_until_bookmark("multiply")
#             self.play(a_0.animate.set_value(0), a_1.animate.set_value(1/4), a_2.animate.set_value(0.5), run_time=2.5)

#             self.wait_until_bookmark("reset_2")
#             self.play(a_1.animate.set_value(0.5), a_2.animate.set_value(1), run_time=.5)

#             self.wait_until_bookmark("add_terms")
#             self.play(a.animate(run_time=1.5).set_value(-1.55), b.animate(run_time=1.5).set_value(1.45), a_6.animate.set_value(-2), a_4.animate.set_value(3), a_3.animate.set_value(-2),a_1.animate.set_value(3), run_time=3.5)

#         self.wait(4)


# class Func_8_1_I_2_b(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Polynomial Functions")

#         cords = self.add_cords([-2,2,1], [-5,5, 2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN)
#         plane = cords[0]
#         self.add(cords)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         a_0, a_1, a_2, a_3, a_4, a_5, a_6 = ValueTracker(0), ValueTracker(0.5), ValueTracker(1), ValueTracker(0), ValueTracker(0), ValueTracker(0), ValueTracker(0)
#         a,b = ValueTracker(-2), ValueTracker(2)
#         f = lambda x: a_0.get_value()+a_1.get_value()*x+a_2.get_value()*x**2+a_3.get_value()*x**3+a_4.get_value()*x**4+a_5.get_value()*x**5+a_6.get_value()*x**6
#         func_squared = always_redraw(lambda: plane.plot(f, color=PURPLE,x_range=[a.get_value(),b.get_value(), 0.001]))
#         self.add(func_squared)


#         qmark = ImageMobject(assets_folder / "img" / "qmark.png")
#         qmark = qmark.scale(2/qmark.get_width()).move_to([-5, 0, 0])

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not the right solution.

#                 If we <bookmark mark="square_only"/>remove the x term from the function,
#                 it barely changes.<bookmark mark="reset_1"/>
#                 So that's not the right solution.

#                 If <bookmark mark="add"/> we add a constant to the function, or
#                 <bookmark mark="multiply"/> if we multiply the function with a constant,
#                 the function will only move up or down, or get stretched or compressed.
#                 But <bookmark mark="reset_2"/> we want to add more curves to the rollercoaster,
#                 so that's not the right solution either.

#                 What we can do however is add terms containing<bookmark mark="add_terms"/> x cubed
#                 or x to the power of four to the function. That way, the function will have
#                 more ups and downs, and the rollercoaster will be more fun.
#                 So the right solution is to add terms like x cubed or x to the power of four
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("square_only")
#             self.play(a_1.animate.set_value(0))

#             self.wait_until_bookmark("reset_1")
#             self.play(a_1.animate.set_value(0.5), run_time=.5)

#             self.wait_until_bookmark("add")
#             self.play(a_0.animate.set_value(2), run_time=.5)

#             self.wait_until_bookmark("multiply")
#             self.play(a_0.animate.set_value(0), a_1.animate.set_value(1/4), a_2.animate.set_value(0.5), run_time=2.5)

#             self.wait_until_bookmark("reset_2")
#             self.play(a_1.animate.set_value(0.5), a_2.animate.set_value(1), run_time=.5)

#             self.wait_until_bookmark("add_terms")
#             self.play(a.animate(run_time=1.5).set_value(-1.55), b.animate(run_time=1.5).set_value(1.45), a_6.animate.set_value(-2), a_4.animate.set_value(3), a_3.animate.set_value(-2),a_1.animate.set_value(3), run_time=3.5)

#         self.wait(4)


# class Func_8_1_I_2_c(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Polynomial Functions")

#         cords = self.add_cords([-2,2,1], [-5,5, 2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN)
#         plane = cords[0]
#         self.add(cords)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         a_0, a_1, a_2, a_3, a_4, a_5, a_6 = ValueTracker(0), ValueTracker(0.5), ValueTracker(1), ValueTracker(0), ValueTracker(0), ValueTracker(0), ValueTracker(0)
#         a,b = ValueTracker(-2), ValueTracker(2)
#         f = lambda x: a_0.get_value()+a_1.get_value()*x+a_2.get_value()*x**2+a_3.get_value()*x**3+a_4.get_value()*x**4+a_5.get_value()*x**5+a_6.get_value()*x**6
#         func_squared = always_redraw(lambda: plane.plot(f, color=PURPLE,x_range=[a.get_value(),b.get_value(), 0.001]))
#         self.add(func_squared)


#         qmark = ImageMobject(assets_folder / "img" / "qmark.png")
#         qmark = qmark.scale(2/qmark.get_width()).move_to([-5, 0, 0])

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not the right solution.

#                 If we <bookmark mark="square_only"/>remove the x term from the function,
#                 it barely changes.<bookmark mark="reset_1"/>
#                 So that's not the right solution.

#                 If <bookmark mark="add"/> we add a constant to the function, or
#                 <bookmark mark="multiply"/> if we multiply the function with a constant,
#                 the function will only move up or down, or get stretched or compressed.
#                 But <bookmark mark="reset_2"/> we want to add more curves to the rollercoaster,
#                 so that's not the right solution either.

#                 What we can do however is add terms containing<bookmark mark="add_terms"/> x cubed
#                 or x to the power of four to the function. That way, the function will have
#                 more ups and downs, and the rollercoaster will be more fun.
#                 So the right solution is to add terms like x cubed or x to the power of four
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("square_only")
#             self.play(a_1.animate.set_value(0))

#             self.wait_until_bookmark("reset_1")
#             self.play(a_1.animate.set_value(0.5), run_time=.5)

#             self.wait_until_bookmark("add")
#             self.play(a_0.animate.set_value(2), run_time=.5)

#             self.wait_until_bookmark("multiply")
#             self.play(a_0.animate.set_value(0), a_1.animate.set_value(1/4), a_2.animate.set_value(0.5), run_time=2.5)

#             self.wait_until_bookmark("reset_2")
#             self.play(a_1.animate.set_value(0.5), a_2.animate.set_value(1), run_time=.5)

#             self.wait_until_bookmark("add_terms")
#             self.play(a.animate(run_time=1.5).set_value(-1.55), b.animate(run_time=1.5).set_value(1.45), a_6.animate.set_value(-2), a_4.animate.set_value(3), a_3.animate.set_value(-2),a_1.animate.set_value(3), run_time=3.5)

#         self.wait(4)


# class Func_8_1_I_2_d(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Polynomial Functions")

#         cords = self.add_cords([-2,2,1], [-5,5, 2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN)
#         plane = cords[0]
#         self.add(cords)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         a_0, a_1, a_2, a_3, a_4, a_5, a_6 = ValueTracker(0), ValueTracker(0.5), ValueTracker(1), ValueTracker(0), ValueTracker(0), ValueTracker(0), ValueTracker(0)
#         a,b = ValueTracker(-2), ValueTracker(2)
#         f = lambda x: a_0.get_value()+a_1.get_value()*x+a_2.get_value()*x**2+a_3.get_value()*x**3+a_4.get_value()*x**4+a_5.get_value()*x**5+a_6.get_value()*x**6
#         func_squared = always_redraw(lambda: plane.plot(f, color=PURPLE,x_range=[a.get_value(),b.get_value(), 0.001]))
#         self.add(func_squared)


#         qmark = ImageMobject(assets_folder / "img" / "qmark.png")
#         qmark = qmark.scale(2/qmark.get_width()).move_to([-5, 0, 0])

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Yes! That's right...

#                 If we <bookmark mark="square_only"/>remove the x term from the function,
#                 it barely changes.<bookmark mark="reset_1"/>
#                 So that's not the right solution.

#                 If <bookmark mark="add"/> we add a constant to the function, or
#                 <bookmark mark="multiply"/> if we multiply the function with a constant,
#                 the function will only move up or down, or get stretched or compressed.
#                 But <bookmark mark="reset_2"/> we want to add more curves to the rollercoaster,
#                 so that's not the right solution either.

#                 What we can do however is add terms containing<bookmark mark="add_terms"/> x cubed
#                 or x to the power of four to the function. That way, the function will have
#                 more ups and downs, and the rollercoaster will be more fun.
#                 So the right solution is to add terms like x cubed or x to the power of four
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("square_only")
#             self.play(a_1.animate.set_value(0))

#             self.wait_until_bookmark("reset_1")
#             self.play(a_1.animate.set_value(0.5), run_time=.5)

#             self.wait_until_bookmark("add")
#             self.play(a_0.animate.set_value(2), run_time=.5)

#             self.wait_until_bookmark("multiply")
#             self.play(a_0.animate.set_value(0), a_1.animate.set_value(1/4), a_2.animate.set_value(0.5), run_time=2.5)

#             self.wait_until_bookmark("reset_2")
#             self.play(a_1.animate.set_value(0.5), a_2.animate.set_value(1), run_time=.5)

#             self.wait_until_bookmark("add_terms")
#             self.play(a.animate(run_time=1.5).set_value(-1.55), b.animate(run_time=1.5).set_value(1.45), a_6.animate.set_value(-2), a_4.animate.set_value(3), a_3.animate.set_value(-2),a_1.animate.set_value(3), run_time=3.5)

#         self.wait(4)


# #####################################
# #####################################
# TASK_Func_8_1_I_3_q = SophiaTaskDefinition(
#     answerOptions = ["$6$", "$1$", "$-6$", "It doesn't have a degree"],
#     correctAnswerIndex = 0,
#     questionText = "What is the degree of the function $f(x)=-2x^6+3x^4-2x^3+x^2+3x$?"
# )
# class Func_8_1_I_3_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Polynomial Functions")

#         cords = self.add_cords([-2,2,1], [-5,5, 2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN*0.4)
#         plane = cords[0]
#         self.add(cords)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: -2*x**6+3*x**4-2*x**3+x**2+3*x, x_range=[-1.55,1.45,0.01], color=PURPLE)
#         func_tex = VGroup(MathTex("f(x)=", font_size=(fs2+fs3)/2, color=c1t), MathTex("-", "2x^6", "+", "3x^4", "-", "2x^3", "+", "x^2", "+", "3x", font_size=(fs2+fs3)/2, color=c1t)).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(cords, DOWN, buff=.8)

#         qmark = ImageMobject(assets_folder / "img" / "qmark.png")
#         qmark = qmark.scale(2/qmark.get_width()).move_to([-5, 0, 0])

#         deg_text = VGroup(Tex("Degree:", color=c1t, font_size=fs3), Tex("Highest power of x", color=c1t, font_size=fs3)).arrange(DOWN, aligned_edge=LEFT,buff=0.2).next_to(func_tex, DOWN, buff=.8)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 The function we have here
#                 is described by the <bookmark mark="term_in"/> term f of x equals
#                 <bookmark mark="sixth_degree"/>negative two times x to the power
#                 of six<bookmark mark="fourth_degree"/>  plus three times x to the power
#                 of four<bookmark mark="third_degree"/>  minus two times x to the power
#                 of three<bookmark mark="second_degree"/> plus x squared
#                 <bookmark mark="first_degree"/>plus three times x.

#                 This is a polynomial function. Let's take a closer look at the term.

#                 We'll start with the degree.
#                 <bookmark mark="degree"/>the degree of a polynomial function is the highest power of x,
#                 that appears in the function.
#                 <bookmark mark="qmark"/>
#                 What is the degree of the function that is shown here?
#                 """
#         ) as tracker:
            
#             x,y,_ = func.get_start()
#             self.play(CursorMoveTo(cursor, x, y), run_time=.5)
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(func.get_end()))._start_fading(2))
#             self.add_pencil_sound(1.5)
#             self.play(Create(func))
#             cursor.blinking=True
            
#             self.wait_until_bookmark("term_in")
#             self.play(Write(func_tex), run_time=.8)

#             self.wait_until_bookmark("sixth_degree")
#             x,y,_ = func_tex[1][1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            
#             self.wait_until_bookmark("fourth_degree")
#             x,y,_ = func_tex[1][3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("third_degree")
#             x,y,_ = func_tex[1][5].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("second_degree")
#             x,y,_ = func_tex[1][7].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("first_degree")
#             x,y,_ = func_tex[1][9].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("degree")
#             x,y,_ = deg_text[0].get_left()+0.2*LEFT
#             cursor.blinking = False
#             self.play(Write(deg_text), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("qmark")
#             self.play(qmark.animate.shift(RIGHT*5), run_time=.5)
#             self.wait(1)
#             self.play(qmark.animate.shift(RIGHT*5))


#         self.wait(4)


# class Func_8_1_I_3_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Polynomial Functions")

#         cords = self.add_cords([-2,2,1], [-5,5, 2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN*0.4)
#         plane = cords[0]
#         self.add(cords)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: -2*x**6+3*x**4-2*x**3+x**2+3*x, x_range=[-1.55,1.45,0.01], color=PURPLE)
#         func_tex = VGroup(MathTex("f(x)=", font_size=(fs2+fs3)/2, color=c1t), MathTex("-", "2x^6", "+", "3x^4", "-", "2x^3", "+", "x^2", "+", "3x", font_size=(fs2+fs3)/2, color=c1t)).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(cords, DOWN, buff=.8)

#         deg_text = VGroup(Tex("Degree:", color=c1t, font_size=fs3), Tex("Highest power of x", color=c1t, font_size=fs3)).arrange(DOWN, aligned_edge=LEFT,buff=0.2).next_to(func_tex, DOWN, buff=.8)

#         self.add(func_tex, deg_text)


#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Yep, that's it...

#                 We're looking for <bookmark mark="degree"/> the degree of the function,
#                 so we need to <bookmark mark="highest"/>find the highest power of x that appears in the function.

#                 So let's go through the parts of the function one by one.


#                 The first part is<bookmark mark="sixth_degree"/> negative two times x to the power
#                 of six, which is the power of six.
#                 We then have<bookmark mark="fourth_degree"/> three times x to the power
#                 of four, which is the power of four.
#                 Next, we have <bookmark mark="third_degree"/>  minus two times x to the power
#                 of three, which is third degree, <bookmark mark="second_degree"/> x squared,
#                 so the power of two and <bookmark mark="first_degree"/>lastly three times x,
#                 which is the power of one.

#                 So the highest power of x that appears in the function is
#                 <bookmark mark="final"/> six, because we have the component negative two times x to the power
#                 of six.
#                 """
#         ) as tracker:

#             self.wait_until_bookmark("degree")
#             x,y,_ = deg_text[0].get_left()+0.2*LEFT
#             cursor.blinking = False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("highest")
#             x,y,_ = deg_text[1].get_left()+0.2*LEFT
#             cursor.blinking = False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("sixth_degree")
#             x,y,_ = func_tex[1][1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            
#             self.wait_until_bookmark("fourth_degree")
#             x,y,_ = func_tex[1][3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("third_degree")
#             x,y,_ = func_tex[1][5].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("second_degree")
#             x,y,_ = func_tex[1][7].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("first_degree")
#             x,y,_ = func_tex[1][9].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("final")
#             x,y,_ = func_tex[1][1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#         self.wait(4)


# class Func_8_1_I_3_b(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Polynomial Functions")

#         cords = self.add_cords([-2,2,1], [-5,5, 2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN*0.4)
#         plane = cords[0]
#         self.add(cords)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: -2*x**6+3*x**4-2*x**3+x**2+3*x, x_range=[-1.55,1.45,0.01], color=PURPLE)
#         func_tex = VGroup(MathTex("f(x)=", font_size=(fs2+fs3)/2, color=c1t), MathTex("-", "2x^6", "+", "3x^4", "-", "2x^3", "+", "x^2", "+", "3x", font_size=(fs2+fs3)/2, color=c1t)).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(cords, DOWN, buff=.8)

#         deg_text = VGroup(Tex("Degree:", color=c1t, font_size=fs3), Tex("Highest power of x", color=c1t, font_size=fs3)).arrange(DOWN, aligned_edge=LEFT,buff=0.2).next_to(func_tex, DOWN, buff=.8)

#         self.add(func_tex, deg_text)


#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's wrong.

#                 We're looking for <bookmark mark="degree"/> the degree of the function,
#                 so we need to <bookmark mark="highest"/>find the highest power of x that appears in the function.

#                 So let's go through the parts of the function one by one.


#                 The first part is<bookmark mark="sixth_degree"/> negative two times x to the power
#                 of six, which is the power of six.
#                 We then have<bookmark mark="fourth_degree"/> three times x to the power
#                 of four, which is the power of four.
#                 Next, we have <bookmark mark="third_degree"/>  minus two times x to the power
#                 of three, which is third degree, <bookmark mark="second_degree"/> x squared,
#                 so the power of two and <bookmark mark="first_degree"/>lastly three times x,
#                 which is the power of one.

#                 So the highest power of x that appears in the function is
#                 <bookmark mark="final"/> six, because we have the component negative two times x to the power
#                 of six.
#                 """
#         ) as tracker:

#             self.wait_until_bookmark("degree")
#             x,y,_ = deg_text[0].get_left()+0.2*LEFT
#             cursor.blinking = False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("highest")
#             x,y,_ = deg_text[1].get_left()+0.2*LEFT
#             cursor.blinking = False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("sixth_degree")
#             x,y,_ = func_tex[1][1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            
#             self.wait_until_bookmark("fourth_degree")
#             x,y,_ = func_tex[1][3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("third_degree")
#             x,y,_ = func_tex[1][5].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("second_degree")
#             x,y,_ = func_tex[1][7].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("first_degree")
#             x,y,_ = func_tex[1][9].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("final")
#             x,y,_ = func_tex[1][1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#         self.wait(4)


# class Func_8_1_I_3_c(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Polynomial Functions")

#         cords = self.add_cords([-2,2,1], [-5,5, 2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN*0.4)
#         plane = cords[0]
#         self.add(cords)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: -2*x**6+3*x**4-2*x**3+x**2+3*x, x_range=[-1.55,1.45,0.01], color=PURPLE)
#         func_tex = VGroup(MathTex("f(x)=", font_size=(fs2+fs3)/2, color=c1t), MathTex("-", "2x^6", "+", "3x^4", "-", "2x^3", "+", "x^2", "+", "3x", font_size=(fs2+fs3)/2, color=c1t)).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(cords, DOWN, buff=.8)

#         deg_text = VGroup(Tex("Degree:", color=c1t, font_size=fs3), Tex("Highest power of x", color=c1t, font_size=fs3)).arrange(DOWN, aligned_edge=LEFT,buff=0.2).next_to(func_tex, DOWN, buff=.8)

#         self.add(func_tex, deg_text)


#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's wrong.

#                 We're looking for <bookmark mark="degree"/> the degree of the function,
#                 so we need to <bookmark mark="highest"/>find the highest power of x that appears in the function.

#                 So let's go through the parts of the function one by one.


#                 The first part is<bookmark mark="sixth_degree"/> negative two times x to the power
#                 of six, which is the power of six.
#                 We then have<bookmark mark="fourth_degree"/> three times x to the power
#                 of four, which is the power of four.
#                 Next, we have <bookmark mark="third_degree"/>  minus two times x to the power
#                 of three, which is third degree, <bookmark mark="second_degree"/> x squared,
#                 so the power of two and <bookmark mark="first_degree"/>lastly three times x,
#                 which is the power of one.

#                 So the highest power of x that appears in the function is
#                 <bookmark mark="final"/> six, because we have the component negative two times x to the power
#                 of six.
#                 """
#         ) as tracker:

#             self.wait_until_bookmark("degree")
#             x,y,_ = deg_text[0].get_left()+0.2*LEFT
#             cursor.blinking = False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("highest")
#             x,y,_ = deg_text[1].get_left()+0.2*LEFT
#             cursor.blinking = False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("sixth_degree")
#             x,y,_ = func_tex[1][1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            
#             self.wait_until_bookmark("fourth_degree")
#             x,y,_ = func_tex[1][3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("third_degree")
#             x,y,_ = func_tex[1][5].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("second_degree")
#             x,y,_ = func_tex[1][7].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("first_degree")
#             x,y,_ = func_tex[1][9].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("final")
#             x,y,_ = func_tex[1][1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#         self.wait(4)


# class Func_8_1_I_3_d(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Polynomial Functions")

#         cords = self.add_cords([-2,2,1], [-5,5, 2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN*0.4)
#         plane = cords[0]
#         self.add(cords)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: -2*x**6+3*x**4-2*x**3+x**2+3*x, x_range=[-1.55,1.45,0.01], color=PURPLE)
#         func_tex = VGroup(MathTex("f(x)=", font_size=(fs2+fs3)/2, color=c1t), MathTex("-", "2x^6", "+", "3x^4", "-", "2x^3", "+", "x^2", "+", "3x", font_size=(fs2+fs3)/2, color=c1t)).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(cords, DOWN, buff=.8)

#         deg_text = VGroup(Tex("Degree:", color=c1t, font_size=fs3), Tex("Highest power of x", color=c1t, font_size=fs3)).arrange(DOWN, aligned_edge=LEFT,buff=0.2).next_to(func_tex, DOWN, buff=.8)

#         self.add(func_tex, deg_text)


#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's wrong.

#                 We're looking for <bookmark mark="degree"/> the degree of the function,
#                 so we need to <bookmark mark="highest"/>find the highest power of x that appears in the function.

#                 So let's go through the parts of the function one by one.


#                 The first part is<bookmark mark="sixth_degree"/> negative two times x to the power
#                 of six, which is the power of six.
#                 We then have<bookmark mark="fourth_degree"/> three times x to the power
#                 of four, which is the power of four.
#                 Next, we have <bookmark mark="third_degree"/>  minus two times x to the power
#                 of three, which is third degree, <bookmark mark="second_degree"/> x squared,
#                 so the power of two and <bookmark mark="first_degree"/>lastly three times x,
#                 which is the power of one.

#                 So the highest power of x that appears in the function is
#                 <bookmark mark="final"/> six, because we have the component negative two times x to the power
#                 of six.
#                 """
#         ) as tracker:

#             self.wait_until_bookmark("degree")
#             x,y,_ = deg_text[0].get_left()+0.2*LEFT
#             cursor.blinking = False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("highest")
#             x,y,_ = deg_text[1].get_left()+0.2*LEFT
#             cursor.blinking = False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("sixth_degree")
#             x,y,_ = func_tex[1][1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            
#             self.wait_until_bookmark("fourth_degree")
#             x,y,_ = func_tex[1][3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("third_degree")
#             x,y,_ = func_tex[1][5].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("second_degree")
#             x,y,_ = func_tex[1][7].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("first_degree")
#             x,y,_ = func_tex[1][9].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("final")
#             x,y,_ = func_tex[1][1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#         self.wait(4)



# #####################################
# #####################################
# TASK_Func_8_1_I_4_q = SophiaTaskDefinition(
#     answerOptions = ["$x^3:1$, $x:1$", "$x^3:1$, $x:-1$", "$x^3:-1$, $x:1$", "$x^3:-1$, $x:-1"],
#     correctAnswerIndex = 1,
#     questionText = "What are the coefficients of $x^3$ and $x$??"
# )
# class Func_8_1_I_4_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Coefficients")

#         cords = self.add_cords([-2,2,1], [-10,10,4], x_ticks=[-2,0,2], y_ticks=[-8,-4,4,8]).shift(DOWN*0.4)
#         plane = cords[0]

#         x,y,_ = plane.c2p(0,0)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: 2*x**2-x, color=PINK)
#         func_2 = plane.plot(lambda x: x**3-x, color=GREEN_E)
#         func_tex = MathTex("f", "(x)", "=", "2", "x^2", "-", "x", font_size=fs2, color=c1t).next_to(cords, DOWN, buff=.8)
#         func_tex_2 = MathTex("f", "(x)", "=", "x^3", "-", "x", font_size=fs2, color=c1t).next_to(cords, DOWN, buff=.8)
#         da1 = MathTex("\\Downarrow", color=BLUE).next_to(func_tex[4], DOWN, buff=.2)
#         da2 = MathTex("\\Downarrow", color=GREEN).next_to(func_tex[6], DOWN, buff=.2)
#         c1 = MathTex("2", color=BLUE).next_to(da1, DOWN, buff=.2)
#         c2 = MathTex("-1", color=GREEN).next_to(da2, DOWN, buff=.2)


#         qmark = ImageMobject(assets_folder / "img" / "qmark.png")
#         qmark = qmark.scale(2.5/qmark.get_width()).move_to([-5, 1.4, 0])

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Moving on <bookmark mark="title"/>to: Coefficients:

#                 Each polynomial contains different expressions, like the ones, the exes, the x squareds and so on.

#                 Each of these expressions is multiplied by a number, which is called the coefficient of the expression.
#                 <bookmark mark="example"/>
#                 For example, for the <bookmark mark="function"/> function f <bookmark mark="fx"/> of x equals two
#                 <bookmark mark="x_sq"/>times x squared <bookmark mark="minus_x"/> minus x, the
#                 coefficient of the expression x squared <bookmark mark="x_sq_c"/>is two,
#                 and the coefficient of the expression x <bookmark mark="minus_x_c"/>is negative one.
#                 <bookmark mark="clean"/>
#                 Now consider<bookmark mark="example_2"/> the function f <bookmark mark="fx_2"/> of x equals
#                 <bookmark mark="x_cubed"/>x cubed <bookmark mark="minus_x_2"/>minus x.
#                 <bookmark mark="qmark"/>What is the coefficient of the <bookmark mark="c1_final"/>
#                 expression x cubed? And what is the <bookmark mark="c2_final"/>coefficient of x?
#                 """
#         ) as tracker:

#             self.wait_until_bookmark("title")
#             x,y,_ = title.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("example")
#             x,y,_ = func.get_start()
#             cursor.blinking=False
#             self.play(Create(cords), CursorMoveTo(cursor,x,y), run_time=.4)
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(func.get_end()))._start_fading(2))
#             self.add_pencil_sound(1.5)
#             self.play(Create(func), Write(func_tex))
#             cursor.blinking=True

#             self.wait_until_bookmark("function")
#             x,y,_ = func_tex[0].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("fx")
#             x,y,_ = func_tex[1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("x_sq")
#             x,y,_ = func_tex[4].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("minus_x")
#             x,y,_ = func_tex[6].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("x_sq_c")
#             x,y,_ = c1.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(da1), Write(c1), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("minus_x_c")
#             x,y,_ = c2.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(da2), Write(c2), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("clean")
#             self.play(FadeOut(func), FadeOut(func_tex), FadeOut(da1), FadeOut(da2), FadeOut(c1), FadeOut(c2))

#             self.wait_until_bookmark("example_2")
#             x,y,_ = func_2.get_start()
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(func_tex_2), run_time=.3)
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(func_2.get_end()))._start_fading(1.5))
#             self.add_pencil_sound(1)
#             self.play(Create(func_2), run_time=1)
#             cursor.blinking=True

#             self.wait_until_bookmark("fx_2")
#             x,y,_ = func_tex_2[1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("x_cubed")
#             x,y,_ = func_tex_2[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            
#             self.wait_until_bookmark("minus_x_2")
#             x,y,_ = func_tex_2[5].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("qmark")
#             self.play(qmark.animate.shift(RIGHT*5), run_time=.5)
#             self.wait(1)
#             self.play(qmark.animate.shift(RIGHT*5))

#             self.wait_until_bookmark("c1_final")
#             x,y,_ = func_tex_2[3].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            
#             self.wait_until_bookmark("c2_final")
#             x,y,_ = func_tex_2[5].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#         self.wait(4)


# class Func_8_1_I_4_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Coefficients")

#         cords = self.add_cords([-2,2,1], [-10,10,4], x_ticks=[-2,0,2], y_ticks=[-8,-4,4,8]).shift(DOWN*0.4)
#         plane = cords[0]
#         self.add(cords)

#         x,y,_ = plane.c2p(0,0)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: 2*x**2-x, color=PINK)
#         func_2 = plane.plot(lambda x: x**3-x, color=GREEN_E)
#         func_tex = MathTex("f", "(x)", "=", "x^3", "-", "x", font_size=fs2, color=c1t).next_to(cords, DOWN, buff=.8)
#         da1 = MathTex("\\Downarrow", color=BLUE).next_to(func_tex[3], DOWN, buff=.2)
#         da2 = MathTex("\\Downarrow", color=MAROON_D).next_to(func_tex[5], DOWN, buff=.2)
#         c1 = MathTex("1", color=BLUE).next_to(da1, DOWN, buff=.2)
#         c2 = MathTex("-1", color=MAROON_D).next_to(da2, DOWN, buff=.2)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not right.

#                 We're looking at<bookmark mark="example_2"/> the function f <bookmark mark="fx_2"/> of x equals
#                 <bookmark mark="x_cubed"/>x cubed <bookmark mark="minus_x_2"/>minus x.
                
#                 The coefficient of the expression x cubed is <bookmark mark="c1_final"/>one,
#                 because we have the component x cubed and don't multiply it with anything, which
#                 is the same as multiplying it with one.

#                 The coefficient of the expression x is <bookmark mark="c2_final"/>negative one,
#                 because we simply have the component x, but we subtract it, and don't add it.
#                 This is the same as adding negative one times x.
#                 """
#         ) as tracker:

#             x,y,_ = func_2.get_start()
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(func_tex), run_time=.3)
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(func_2.get_end()))._start_fading(1.5))
#             self.add_pencil_sound(1)
#             self.play(Create(func_2), run_time=1)
#             cursor.blinking=True

#             self.wait_until_bookmark("fx_2")
#             x,y,_ = func_tex[1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("x_cubed")
#             x,y,_ = func_tex[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            
#             self.wait_until_bookmark("minus_x_2")
#             x,y,_ = func_tex[5].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("c1_final")
#             x,y,_ = c1.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(da1), Write(c1), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("c2_final")
#             x,y,_ = c2.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(da2), Write(c2), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#         self.wait(4)

# class Func_8_1_I_4_b(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Coefficients")

#         cords = self.add_cords([-2,2,1], [-10,10,4], x_ticks=[-2,0,2], y_ticks=[-8,-4,4,8]).shift(DOWN*0.4)
#         plane = cords[0]
#         self.add(cords)

#         x,y,_ = plane.c2p(0,0)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: 2*x**2-x, color=PINK)
#         func_2 = plane.plot(lambda x: x**3-x, color=GREEN_E)
#         func_tex = MathTex("f", "(x)", "=", "x^3", "-", "x", font_size=fs2, color=c1t).next_to(cords, DOWN, buff=.8)
#         da1 = MathTex("\\Downarrow", color=BLUE).next_to(func_tex[3], DOWN, buff=.2)
#         da2 = MathTex("\\Downarrow", color=MAROON_D).next_to(func_tex[5], DOWN, buff=.2)
#         c1 = MathTex("1", color=BLUE).next_to(da1, DOWN, buff=.2)
#         c2 = MathTex("-1", color=MAROON_D).next_to(da2, DOWN, buff=.2)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Oui! Excuse my french. Yes, that's correct.

#                 We're looking at<bookmark mark="example_2"/> the function f <bookmark mark="fx_2"/> of x equals
#                 <bookmark mark="x_cubed"/>x cubed <bookmark mark="minus_x_2"/>minus x.
                
#                 The coefficient of the expression x cubed is <bookmark mark="c1_final"/>one,
#                 because we have the component x cubed and don't multiply it with anything, which
#                 is the same as multiplying it with one.

#                 The coefficient of the expression x is <bookmark mark="c2_final"/>negative one,
#                 because we simply have the component x, but we subtract it, and don't add it.
#                 This is the same as adding negative one times x.
#                 """
#         ) as tracker:

#             x,y,_ = func_2.get_start()
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(func_tex), run_time=.3)
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(func_2.get_end()))._start_fading(1.5))
#             self.add_pencil_sound(1)
#             self.play(Create(func_2), run_time=1)
#             cursor.blinking=True

#             self.wait_until_bookmark("fx_2")
#             x,y,_ = func_tex[1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("x_cubed")
#             x,y,_ = func_tex[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            
#             self.wait_until_bookmark("minus_x_2")
#             x,y,_ = func_tex[5].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("c1_final")
#             x,y,_ = c1.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(da1), Write(c1), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("c2_final")
#             x,y,_ = c2.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(da2), Write(c2), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#         self.wait(4)

# class Func_8_1_I_4_c(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Coefficients")

#         cords = self.add_cords([-2,2,1], [-10,10,4], x_ticks=[-2,0,2], y_ticks=[-8,-4,4,8]).shift(DOWN*0.4)
#         plane = cords[0]
#         self.add(cords)

#         x,y,_ = plane.c2p(0,0)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: 2*x**2-x, color=PINK)
#         func_2 = plane.plot(lambda x: x**3-x, color=GREEN_E)
#         func_tex = MathTex("f", "(x)", "=", "x^3", "-", "x", font_size=fs2, color=c1t).next_to(cords, DOWN, buff=.8)
#         da1 = MathTex("\\Downarrow", color=BLUE).next_to(func_tex[3], DOWN, buff=.2)
#         da2 = MathTex("\\Downarrow", color=MAROON_D).next_to(func_tex[5], DOWN, buff=.2)
#         c1 = MathTex("1", color=BLUE).next_to(da1, DOWN, buff=.2)
#         c2 = MathTex("-1", color=MAROON_D).next_to(da2, DOWN, buff=.2)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not right.

#                 We're looking at<bookmark mark="example_2"/> the function f <bookmark mark="fx_2"/> of x equals
#                 <bookmark mark="x_cubed"/>x cubed <bookmark mark="minus_x_2"/>minus x.
                
#                 The coefficient of the expression x cubed is <bookmark mark="c1_final"/>one,
#                 because we have the component x cubed and don't multiply it with anything, which
#                 is the same as multiplying it with one.

#                 The coefficient of the expression x is <bookmark mark="c2_final"/>negative one,
#                 because we simply have the component x, but we subtract it, and don't add it.
#                 This is the same as adding negative one times x.
#                 """
#         ) as tracker:

#             x,y,_ = func_2.get_start()
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(func_tex), run_time=.3)
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(func_2.get_end()))._start_fading(1.5))
#             self.add_pencil_sound(1)
#             self.play(Create(func_2), run_time=1)
#             cursor.blinking=True

#             self.wait_until_bookmark("fx_2")
#             x,y,_ = func_tex[1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("x_cubed")
#             x,y,_ = func_tex[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            
#             self.wait_until_bookmark("minus_x_2")
#             x,y,_ = func_tex[5].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("c1_final")
#             x,y,_ = c1.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(da1), Write(c1), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("c2_final")
#             x,y,_ = c2.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(da2), Write(c2), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#         self.wait(4)

# class Func_8_1_I_4_d(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Coefficients")

#         cords = self.add_cords([-2,2,1], [-10,10,4], x_ticks=[-2,0,2], y_ticks=[-8,-4,4,8]).shift(DOWN*0.4)
#         plane = cords[0]
#         self.add(cords)

#         x,y,_ = plane.c2p(0,0)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: 2*x**2-x, color=PINK)
#         func_2 = plane.plot(lambda x: x**3-x, color=GREEN_E)
#         func_tex = MathTex("f", "(x)", "=", "x^3", "-", "x", font_size=fs2, color=c1t).next_to(cords, DOWN, buff=.8)
#         da1 = MathTex("\\Downarrow", color=BLUE).next_to(func_tex[3], DOWN, buff=.2)
#         da2 = MathTex("\\Downarrow", color=MAROON_D).next_to(func_tex[5], DOWN, buff=.2)
#         c1 = MathTex("1", color=BLUE).next_to(da1, DOWN, buff=.2)
#         c2 = MathTex("-1", color=MAROON_D).next_to(da2, DOWN, buff=.2)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not right.

#                 We're looking at<bookmark mark="example_2"/> the function f <bookmark mark="fx_2"/> of x equals
#                 <bookmark mark="x_cubed"/>x cubed <bookmark mark="minus_x_2"/>minus x.
                
#                 The coefficient of the expression x cubed is <bookmark mark="c1_final"/>one,
#                 because we have the component x cubed and don't multiply it with anything, which
#                 is the same as multiplying it with one.

#                 The coefficient of the expression x is <bookmark mark="c2_final"/>negative one,
#                 because we simply have the component x, but we subtract it, and don't add it.
#                 This is the same as adding negative one times x.
#                 """
#         ) as tracker:

#             x,y,_ = func_2.get_start()
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(func_tex), run_time=.3)
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(func_2.get_end()))._start_fading(1.5))
#             self.add_pencil_sound(1)
#             self.play(Create(func_2), run_time=1)
#             cursor.blinking=True

#             self.wait_until_bookmark("fx_2")
#             x,y,_ = func_tex[1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("x_cubed")
#             x,y,_ = func_tex[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
            
#             self.wait_until_bookmark("minus_x_2")
#             x,y,_ = func_tex[5].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("c1_final")
#             x,y,_ = c1.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(da1), Write(c1), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("c2_final")
#             x,y,_ = c2.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(da2), Write(c2), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#         self.wait(4)



# #####################################
# #####################################
# TASK_Func_8_1_I_5_q = SophiaTaskDefinition(
#     answerOptions = ["$x^2:1$, $x:1$", "$x^3:1$, $x:0$", "$x^3:3$, $x:1$", "$x^3:1$, $x:-3"],
#     correctAnswerIndex = 1,
#     questionText = "What are the coefficients of $x^3$ and $x$??"
# )
# class Func_8_1_I_5_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Coefficients")

#         cords = self.add_cords([-2,2,1], [-4,4,2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN*0.4)
#         plane = cords[0]
#         self.add(cords)

#         x,y,_ = plane.c2p(0,0)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: x**2-3, color=GREEN)
#         func_tex = MathTex("f", "(x)", "=", "x^2", "-", "3", font_size=fs2, color=c1t).next_to(cords, DOWN, buff=.8)
#         da = MathTex("\\Downarrow", color=ORANGE).next_to(func_tex[-1], DOWN, buff=.2)
#         c = MathTex("-3", color=ORANGE).next_to(da, DOWN, buff=.2)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Another example:
#                 Look at the <bookmark mark="f"/> function f <bookmark mark="fx"/> of x 
#                 <bookmark mark="x_squared"/>equals x squared <bookmark mark="minus_three"/>minus three.
#                 <bookmark mark="draw_qmark"/>
#                 In this example, what is the coefficient of x?
#                 And what is the coefficient of one?
#                 """
#         ) as tracker:

#             x,y,_ = func.get_start()
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(func_tex), run_time=.3)
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(func.get_end()))._start_fading(1.5))
#             self.add_pencil_sound(1)
#             self.play(Create(func), run_time=1)
#             cursor.blinking=True

#             self.wait_until_bookmark("f")
#             x,y,_ = func_tex[0].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("fx")
#             x,y,_ = func_tex[1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("x_squared")
#             x,y,_ = func_tex[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)

#             self.wait_until_bookmark("minus_three")
#             x,y,_ = func_tex[5].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("draw_qmark")
#             self.draw_qmark(cursor, DOWN*2.8, 4)


#         self.wait(4)



# class Func_8_1_I_5_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Coefficients")

#         cords = self.add_cords([-2,2,1], [-4,4,2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN*0.4)
#         plane = cords[0]
#         self.add(cords)

#         x,y,_ = plane.c2p(0,0)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: x**2-3, color=GREEN)
#         func_tex = MathTex("f", "(x)", "=", "x^2", "-", "3", font_size=fs2, color=c1t).next_to(cords, DOWN, buff=.8)
#         da = MathTex("\\Downarrow", color=ORANGE, font_size=fs2).next_to(func_tex[-1], DOWN, buff=.2)
#         c = MathTex("-3", color=ORANGE, font_size=fs2).next_to(da, DOWN, buff=.2)
#         no_x = VGroup(Tex("No x-term", color=PURE_BLUE, font_size=fs2), Tex("$\\Rightarrow$ $x$-coefficient $=0$", color=PURE_BLUE, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(func_tex, DOWN, buff=1)
#         self.add(func, func_tex)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not right.
                
#                 First, what is the degree of x?
#                 This one's a bit tricky: We have an <bookmark mark="x_squared"/> x squared term,
#                 and <bookmark mark="const"/> minus three, which is a constant term or
#                 a "one" term. So <bookmark mark="no_x"/>since we have no x term, the coefficient of x is zero.

#                 The coefficient of the constant term is <bookmark mark="c_final"/>negative three,
#                 because we have the component minus three and don't multiply it with anything.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("x_squared")
#             x,y,_ = func_tex[3].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True
            
#             self.wait_until_bookmark("const")
#             x,y,_ = func_tex[5].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("no_x")
#             x,y,_ = no_x[1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(no_x), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("c_final")
#             x,y,_ = c.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(da), Write(c), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True


#         self.wait(4)


# class Func_8_1_I_5_b(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Coefficients")

#         cords = self.add_cords([-2,2,1], [-4,4,2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN*0.4)
#         plane = cords[0]
#         self.add(cords)

#         x,y,_ = plane.c2p(0,0)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: x**2-3, color=GREEN)
#         func_tex = MathTex("f", "(x)", "=", "x^2", "-", "3", font_size=fs2, color=c1t).next_to(cords, DOWN, buff=.8)
#         da = MathTex("\\Downarrow", color=ORANGE, font_size=fs2).next_to(func_tex[-1], DOWN, buff=.2)
#         c = MathTex("-3", color=ORANGE, font_size=fs2).next_to(da, DOWN, buff=.2)
#         no_x = VGroup(Tex("No x-term", color=PURE_BLUE, font_size=fs2), Tex("$\\Rightarrow$ $x$-coefficient $=0$", color=PURE_BLUE, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(func_tex, DOWN, buff=1)
#         self.add(func, func_tex)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Yep, that's right.
#                 But why?
#                 First, what is the degree of x?
#                 This one's a bit tricky: We have an <bookmark mark="x_squared"/> x squared term,
#                 and <bookmark mark="const"/> minus three, which is a constant term or
#                 a "one" term. So <bookmark mark="no_x"/>since we have no x term, the coefficient of x is zero.

#                 The coefficient of the constant term is <bookmark mark="c_final"/>negative three,
#                 because we have the component minus three and don't multiply it with anything.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("x_squared")
#             x,y,_ = func_tex[3].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True
            
#             self.wait_until_bookmark("const")
#             x,y,_ = func_tex[5].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("no_x")
#             x,y,_ = no_x[1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(no_x), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("c_final")
#             x,y,_ = c.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(da), Write(c), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True


#         self.wait(4)


# class Func_8_1_I_5_c(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Coefficients")

#         cords = self.add_cords([-2,2,1], [-4,4,2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN*0.4)
#         plane = cords[0]
#         self.add(cords)

#         x,y,_ = plane.c2p(0,0)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: x**2-3, color=GREEN)
#         func_tex = MathTex("f", "(x)", "=", "x^2", "-", "3", font_size=fs2, color=c1t).next_to(cords, DOWN, buff=.8)
#         da = MathTex("\\Downarrow", color=ORANGE, font_size=fs2).next_to(func_tex[-1], DOWN, buff=.2)
#         c = MathTex("-3", color=ORANGE, font_size=fs2).next_to(da, DOWN, buff=.2)
#         no_x = VGroup(Tex("No x-term", color=PURE_BLUE, font_size=fs2), Tex("$\\Rightarrow$ $x$-coefficient $=0$", color=PURE_BLUE, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(func_tex, DOWN, buff=1)
#         self.add(func, func_tex)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not right.
                
#                 First, what is the degree of x?
#                 This one's a bit tricky: We have an <bookmark mark="x_squared"/> x squared term,
#                 and <bookmark mark="const"/> minus three, which is a constant term or
#                 a "one" term. So <bookmark mark="no_x"/>since we have no x term, the coefficient of x is zero.

#                 The coefficient of the constant term is <bookmark mark="c_final"/>negative three,
#                 because we have the component minus three and don't multiply it with anything.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("x_squared")
#             x,y,_ = func_tex[3].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True
            
#             self.wait_until_bookmark("const")
#             x,y,_ = func_tex[5].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("no_x")
#             x,y,_ = no_x[1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(no_x), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("c_final")
#             x,y,_ = c.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(da), Write(c), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True


#         self.wait(4)


# class Func_8_1_I_5_d(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Coefficients")

#         cords = self.add_cords([-2,2,1], [-4,4,2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN*0.4)
#         plane = cords[0]
#         self.add(cords)

#         x,y,_ = plane.c2p(0,0)

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         func = plane.plot(lambda x: x**2-3, color=GREEN)
#         func_tex = MathTex("f", "(x)", "=", "x^2", "-", "3", font_size=fs2, color=c1t).next_to(cords, DOWN, buff=.8)
#         da = MathTex("\\Downarrow", color=ORANGE, font_size=fs2).next_to(func_tex[-1], DOWN, buff=.2)
#         c = MathTex("-3", color=ORANGE, font_size=fs2).next_to(da, DOWN, buff=.2)
#         no_x = VGroup(Tex("No x-term", color=PURE_BLUE, font_size=fs2), Tex("$\\Rightarrow$ $x$-coefficient $=0$", color=PURE_BLUE, font_size=fs2)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(func_tex, DOWN, buff=1)
#         self.add(func, func_tex)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not right.
                
#                 First, what is the degree of x?
#                 This one's a bit tricky: We have an <bookmark mark="x_squared"/> x squared term,
#                 and <bookmark mark="const"/> minus three, which is a constant term or
#                 a "one" term. So <bookmark mark="no_x"/>since we have no x term, the coefficient of x is zero.

#                 The coefficient of the constant term is <bookmark mark="c_final"/>negative three,
#                 because we have the component minus three and don't multiply it with anything.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("x_squared")
#             x,y,_ = func_tex[3].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True
            
#             self.wait_until_bookmark("const")
#             x,y,_ = func_tex[5].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("no_x")
#             x,y,_ = no_x[1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(no_x), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("c_final")
#             x,y,_ = c.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(da), Write(c), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True


#         self.wait(4)


# #####################################
# #####################################
# ###### Practice Part ################
# #####################################
# #####################################


# #####################################
# #####################################
# class PolynomialQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

#     # Main method for constructing the animation
#     @abstractmethod
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Polynomial Functions")

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         self.add(self.cords)
#         func_tex = MathTex(*self.func_tex, font_size=fs2, color=c1t).next_to(self.cords, DOWN, buff=.8)

#         # Action Sequence
#         with self.voiceover(
#                 text=f"""
#                 <bookmark mark="start"/>
#                 {self.intro}
#                 {self.func_text}
#                 <bookmark mark="qmark"/>
#                 What is the degree of that polynomial function?
#                 And what is the coefficient of {self.coefficient_text}?
#                 """
#         ) as tracker:

#             self.wait_until_bookmark("start")
#             x,y,_ = self.func.get_start()
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(self.func.get_end()))._start_fading(1.5))
#             self.add_pencil_sound(1)
#             self.play(Create(self.func), run_time=1)
#             cursor.blinking=True

#             self.wait_until_bookmark("fx")
#             x,y,_ = func_tex[1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(func_tex), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("el_1")
#             x,y,_ = func_tex[3].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("el_2")
#             x,y,_ = func_tex[5].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("el_3")
#             x,y,_ = func_tex[7].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("qmark")
#             cursor.blinking=False
#             self.draw_qmark(cursor, DOWN*2.8, 4)


#         self.wait(4)


# class PolynomialAnswerScene(SophiaCursorScene, metaclass=ABCMeta):


#     @abstractmethod
#     def construct(self):

#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Polynomial Functions")

#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         plane = self.cords[0]
#         self.add(self.cords)
#         func_tex = MathTex(*self.func_tex, font_size=fs2, color=c1t).next_to(self.cords, DOWN, buff=.6)

#         da = MathTex("\\Downarrow", color=ORANGE, font_size=fs2).next_to(func_tex[self.coefficient_idx], DOWN, buff=.2)
#         c = MathTex(self.coefficient, color=ORANGE, font_size=fs2).next_to(da, DOWN, buff=.2)
#         coef = Tex("Coefficient:", color=ORANGE, font_size=fs2).next_to(c, LEFT, buff=.1)
#         deg_group = VGroup(Tex(f"Highest power of x: {self.deg}", color=PURE_BLUE, font_size=fs3), Tex(f"$\\Rightarrow f$ has degree {self.deg}", color=PURE_BLUE, font_size=fs3)).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(func_tex, DOWN, buff=1.4)

#         # Action Sequence
#         with self.voiceover(
#                 text=f"""
#                 <bookmark mark="start"/>
#                 {self.intro}
#                 We're looking at the function
#                 {self.func_text}
            
#                 The <bookmark mark="show_coefficient"/>coefficient of {self.coefficient_text} is {self.coefficient},
#                 because the component {self.coefficient_text} is multiplied by {self.coefficient}.

#                 And the degree of the function <bookmark mark="show_degree"/> is {self.deg},
#                 because the highest exponent of x is {self.deg}, which we have for the expression {self.highest_term}.
#                 """
#         ) as tracker:

#             self.wait_until_bookmark("start")
#             x,y,_ = self.func.get_start()
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(self.func.get_end()))._start_fading(1.5))
#             self.add_pencil_sound(1)
#             self.play(Create(self.func), run_time=1)
#             cursor.blinking=True

#             self.wait_until_bookmark("fx")
#             x,y,_ = func_tex[1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(func_tex), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("el_1")
#             x,y,_ = func_tex[3].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("el_2")
#             x,y,_ = func_tex[5].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("el_3")
#             x,y,_ = func_tex[7].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("show_coefficient")
#             x,y,_ = c.get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(da), Write(c), Write(coef), CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True           

#             self.wait_until_bookmark("show_degree")
#             x,y,_ = deg_group[1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), Write(deg_group), run_time=.3)
#             cursor.blinking=True


#         self.wait(4)




# #####################################
# #####################################
# ###### Specific Qs ##################
# #####################################
# #####################################


# #####################################
# #####################################
# TASK_Func_8_1_I_1_q = SophiaTaskDefinition(
#     answerOptions = ["degree: $2$, coefficient: $2$", "degree: $1$, coefficient: $-3$", "degree: $2$, coefficient: $1$", "degree: $1$, coefficient: $2$"],
#     correctAnswerIndex = 2,
#     questionText = "What is the degree of the function $f(x)=2x-3\cdot x^2+1$? And what is the coefficient of $x$?"
# )
# class Func_8_1_P_1_q(PolynomialQuestionScene):


#     def construct(self):

#         self.intro = "Now, consider the function"
#         self.func_text = """f<bookmark mark="fx"/> of x equals <bookmark mark="el_1"/>
#                         two x<bookmark mark="el_2"/> minus three x squared <bookmark mark="el_3"/>
#                         plus one.
#                         """
#         self.func_tex = ["f", "(x)", "=", "2x", "-", "3x^2", "+", "1"]
#         self.coefficient_text = "x squared"
#         self.cords = self.add_cords([-2,2,1], [-4,4,2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN*0.4)
#         self.func = self.cords[0].plot(lambda x: 2*x-3*x**2+1, color=GREEN, x_range=[-1,1.66,0.01])

#         super().construct()


# class Func_8_1_P_1_a(PolynomialAnswerScene):

#     def construct(self):

#         self.intro = "Yep, that's right."
#         self.func_text = """f<bookmark mark="fx"/> of x equals <bookmark mark="el_1"/>
#                         two x<bookmark mark="el_2"/> minus three x squared <bookmark mark="el_3"/>
#                         plus one.
#                         """
#         self.func_tex = ["f", "(x)", "=", "2x", "-", "3x^2", "+", "1"]
#         self.coefficient_text = "x squared"
#         self.coefficient = "3"
#         self.cords = self.add_cords([-2,2,1], [-4,4,2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN*0.4)
#         self.func = self.cords[0].plot(lambda x: 2*x-3*x**2+1, color=GREEN, x_range=[-1,1.66,0.01])
#         self.coefficient_idx = 5
#         self.deg = 2
#         self.highest_term = "3 times x squared"

#         super().construct()

# class Func_8_1_P_1_b(PolynomialAnswerScene):

#     def construct(self):

#         self.intro = "No, that's not it."
#         self.func_text = """f<bookmark mark="fx"/> of x equals <bookmark mark="el_1"/>
#                         two x<bookmark mark="el_2"/> minus three x squared <bookmark mark="el_3"/>
#                         plus one.
#                         """
#         self.func_tex = ["f", "(x)", "=", "2x", "-", "3x^2", "+", "1"]
#         self.coefficient_text = "x squared"
#         self.coefficient = "3"
#         self.cords = self.add_cords([-2,2,1], [-4,4,2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN*0.4)
#         self.func = self.cords[0].plot(lambda x: 2*x-3*x**2+1, color=GREEN, x_range=[-1,1.66,0.01])
#         self.coefficient_idx = 5
#         self.deg = 2
#         self.highest_term = "3 times x squared"

#         super().construct()

# class Func_8_1_P_1_c(PolynomialAnswerScene):

#     def construct(self):

#         self.intro = "No, that's not it."
#         self.func_text = """f<bookmark mark="fx"/> of x equals <bookmark mark="el_1"/>
#                         two x<bookmark mark="el_2"/> minus three x squared <bookmark mark="el_3"/>
#                         plus one.
#                         """
#         self.func_tex = ["f", "(x)", "=", "2x", "-", "3x^2", "+", "1"]
#         self.coefficient_text = "x squared"
#         self.coefficient = "3"
#         self.cords = self.add_cords([-2,2,1], [-4,4,2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN*0.4)
#         self.func = self.cords[0].plot(lambda x: 2*x-3*x**2+1, color=GREEN, x_range=[-1,1.66,0.01])
#         self.coefficient_idx = 5
#         self.deg = 2
#         self.highest_term = "3 times x squared"

#         super().construct()

# class Func_8_1_P_1_d(PolynomialAnswerScene):

#     def construct(self):

#         self.intro = "No, that's not it."
#         self.func_text = """f<bookmark mark="fx"/> of x equals <bookmark mark="el_1"/>
#                         two x<bookmark mark="el_2"/> minus three x squared <bookmark mark="el_3"/>
#                         plus one.
#                         """
#         self.func_tex = ["f", "(x)", "=", "2x", "-", "3x^2", "+", "1"]
#         self.coefficient_text = "x squared"
#         self.coefficient = "3"
#         self.cords = self.add_cords([-2,2,1], [-4,4,2], x_ticks=[-2,0,2], y_ticks=[-4,-2,2,4]).shift(DOWN*0.4)
#         self.func = self.cords[0].plot(lambda x: 2*x-3*x**2+1, color=GREEN, x_range=[-1,1.66,0.01])
#         self.coefficient_idx = 5
#         self.deg = 2
#         self.highest_term = "3 times x squared"

#         super().construct()



# #####################################
# #####################################
# TASK_Func_8_1_P_2_q = SophiaTaskDefinition(
#     answerOptions = ["degree: $0$, coefficient: $2$", "degree: $1$, coefficient: $-3$", "degree: $4$, coefficient: $-3$", "degree: $4$, coefficient: $\\tfrac{1}{2}$"],
#     correctAnswerIndex = 2,
#     questionText = "What is the degree of the function $f(x)=2-3\cdot x+\\tfrac{1}{2}x^4$? And what is the coefficient of $x$?"
# )
# class Func_8_1_P_2_q(PolynomialQuestionScene):


#     def construct(self):

#         self.intro = "Next, look at the function"
#         self.func_text = """f<bookmark mark="fx"/> of x equals <bookmark mark="el_1"/> two
#                         <bookmark mark="el_2"/> minus three x<bookmark mark="el_3"/>
#                         plus one half times x to the power of four.
#                         """
#         self.func_tex = ["f", "(x)", "=", "2", "-", "3x", "+", "\\tfrac{1}{2}x^4"]
#         self.coefficient_text = "x"
#         self.coefficient = "3"
#         self.cords = self.add_cords([-2,2,1], [-8,8,4], x_ticks=[-2,0,2], y_ticks=[-8,-4,4,8]).shift(DOWN*0.4)
#         self.func = self.cords[0].plot(lambda x: 2-3*x+x**4/2, x_range=[-1.8,2,0.01], color=BLUE)

#         super().construct()



# class Func_8_1_P_2_a(PolynomialAnswerScene):

#     def construct(self):

#         self.intro = "No, that's not correct."
#         self.func_text = """f<bookmark mark="fx"/> of x equals <bookmark mark="el_1"/> two
#                         <bookmark mark="el_2"/> minus three x<bookmark mark="el_3"/>
#                         plus one half times x to the power of four.
#                         """
#         self.func_tex = ["f", "(x)", "=", "2", "-", "3x", "+", "\\tfrac{1}{2}x^4"]
#         self.coefficient_text = "x"
#         self.coefficient = "3"
#         self.cords = self.add_cords([-2,2,1], [-8,8,4], x_ticks=[-2,0,2], y_ticks=[-8,-4,4,8]).shift(DOWN*0.4)
#         self.func = self.cords[0].plot(lambda x: 2-3*x+x**4/2, x_range=[-1.8,2,0.01], color=BLUE)
#         self.coefficient_idx = 5
#         self.deg = 4
#         self.highest_term = "x to the power of four."

#         super().construct()

# class Func_8_1_P_2_b(PolynomialAnswerScene):

#     def construct(self):

#         self.intro = "No, that's not correct."
#         self.func_text = """f<bookmark mark="fx"/> of x equals <bookmark mark="el_1"/> two
#                         <bookmark mark="el_2"/> minus three x<bookmark mark="el_3"/>
#                         plus one half times x to the power of four.
#                         """
#         self.func_tex = ["f", "(x)", "=", "2", "-", "3x", "+", "\\tfrac{1}{2}x^4"]
#         self.coefficient_text = "x"
#         self.coefficient = "3"
#         self.cords = self.add_cords([-2,2,1], [-8,8,4], x_ticks=[-2,0,2], y_ticks=[-8,-4,4,8]).shift(DOWN*0.4)
#         self.func = self.cords[0].plot(lambda x: 2-3*x+x**4/2, x_range=[-1.8,2,0.01], color=BLUE)
#         self.coefficient_idx = 5
#         self.deg = 4
#         self.highest_term = "x to the power of four."

#         super().construct()

# class Func_8_1_P_2_c(PolynomialAnswerScene):

#     def construct(self):

#         self.intro = "Yep, that's right."
#         self.func_text = """f<bookmark mark="fx"/> of x equals <bookmark mark="el_1"/> two
#                         <bookmark mark="el_2"/> minus three x<bookmark mark="el_3"/>
#                         plus one half times x to the power of four.
#                         """
#         self.func_tex = ["f", "(x)", "=", "2", "-", "3x", "+", "\\tfrac{1}{2}x^4"]
#         self.coefficient_text = "x"
#         self.coefficient = "3"
#         self.cords = self.add_cords([-2,2,1], [-8,8,4], x_ticks=[-2,0,2], y_ticks=[-8,-4,4,8]).shift(DOWN*0.4)
#         self.func = self.cords[0].plot(lambda x: 2-3*x+x**4/2, x_range=[-1.8,2,0.01], color=BLUE)
#         self.coefficient_idx = 5
#         self.deg = 4
#         self.highest_term = "x to the power of four."

#         super().construct()

# class Func_8_1_P_2_d(PolynomialAnswerScene):

#     def construct(self):

#         self.intro = "No, that's not correct."
#         self.func_text = """f<bookmark mark="fx"/> of x equals <bookmark mark="el_1"/> two
#                         <bookmark mark="el_2"/> minus three x<bookmark mark="el_3"/>
#                         plus one half times x to the power of four.
#                         """
#         self.func_tex = ["f", "(x)", "=", "2", "-", "3x", "+", "\\tfrac{1}{2}x^4"]
#         self.coefficient_text = "x"
#         self.coefficient = "3"
#         self.cords = self.add_cords([-2,2,1], [-8,8,4], x_ticks=[-2,0,2], y_ticks=[-8,-4,4,8]).shift(DOWN*0.4)
#         self.func = self.cords[0].plot(lambda x: 2-3*x+x**4/2, x_range=[-1.8,2,0.01], color=BLUE)
#         self.coefficient_idx = 5
#         self.deg = 4
#         self.highest_term = "x to the power of four."

#         super().construct()
