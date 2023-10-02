# # 7_5: Trigonometric Functions: Shifting

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
# TASK_Func_7_5_I_1_q = SophiaTaskDefinition(
#     answerOptions = ["Add $1$: $f(x)=\sin(x)+1$", "Multiply by $2$: $f(x)=2\sin(x)$", "Multiply by $\tfrac{1}{2}$: $f(x)=\tfrac{1}{2}\sin(x)$", "Subtract $\tfrac{1}{2}$: $f(x)=\sin(x)-\tfrac{1}{2}$"],
#     correctAnswerIndex = 1,
#     questionText = "How do we change the function $f(x)=\sin(x)$, so that its values reach from $0$ to $2$?"
# )
# class Func_7_5_I_1_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Sine \& Cosine: Shifting")

#         cords = self.add_cords([-.5, 2*np.pi, np.pi], [-1.5, 1.5, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(1.6*DOWN)
#         plane = cords[0]
#         self.add(cords)

#         x,y,_ = plane.c2p(-0.5,np.cos(-0.5))
#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=False, x=x, y=y)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         graph_blue = plane.plot(lambda x: np.cos(x), color=BLUE)

#         line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
#         line_2 = Line(plane.c2p(0,0), plane.c2p(0,2), color=GREEN)

#         functerm = MathTex("f","(x)",  "=", "\\cos", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Look at this graph of a cosine function.
#                 The values of the cosine function range<bookmark mark="neg_1"/> from negative <bookmark mark="pos_1"/>one to one.

#                 Now we want to change the function, so that its values <bookmark mark="neg_2"/>range from zero
#                 <bookmark mark="pos_2"/> to two.

#                 How do we change the <bookmark mark="f"/> term f <bookmark mark="fx"/> of x<bookmark mark="cos"/> equals cosine
#                 <bookmark mark="x"/> of x, so that the values of the function range from negative
#                 two to two?
#                 """
#         ) as tracker:
            
            
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(graph_blue.get_end()))._start_fading(2))
#             self.add_pencil_sound(1.5)
#             self.play(Create(graph_blue))
#             cursor.blinking=True

#             self.wait_until_bookmark("neg_1")
#             x,y,_ = line_1.get_start()
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("pos_1")
#             cursor.blinking=False
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(line_1.get_end()))._start_fading(2))
#             self.play(Create(line_1), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("neg_2")
#             x,y,_ = line_2.get_start()
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("pos_2")
#             cursor.blinking=False
#             self.add(cursor.copy().add_updater(lambda m: m.move_to(line_2.get_end()))._start_fading(2))
#             self.play(Create(line_2), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("f")
#             x,y,_ = functerm[0].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(Write(functerm), CursorMoveTo(cursor,x,y), run_time=.5)

#             self.wait_until_bookmark("fx")
#             x,y,_ = functerm[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)

#             self.wait_until_bookmark("cos")
#             x,y,_ = functerm[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)

#             self.wait_until_bookmark("x")
#             x,y,_ = functerm[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
#             cursor.blinking=True

#         self.wait(4)



# class Func_7_5_I_1_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Sine \& Cosine: Shifting")

#         cords = self.add_cords([-.5, 2*np.pi, np.pi], [-1.5, 1.5, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(1.6*DOWN)
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

#         graph_blue = plane.plot(lambda x: np.cos(x), color=BLUE)

#         a = ValueTracker(0)
#         graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()+np.cos(x), color=BLUE))

#         ones = VGroup(MathTex("1", color=c1t, font_size=fs2), MathTex("-1", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=RIGHT)
#         arrows = VGroup(MathTex("\\Rightarrow", color=c1t, font_size=fs2), MathTex("\\Rightarrow", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=LEFT)
#         twos = VGroup(MathTex("2", color=c1t, font_size=fs2), MathTex("0", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=RIGHT)
#         ones_to_twos = VGroup(ones, arrows, twos).arrange(RIGHT, buff=0.4).next_to(title, DOWN, buff=0.4)
#         row_one = VGroup(ones_to_twos[0][0], ones_to_twos[1][0], ones_to_twos[2][0])
#         row_two = VGroup(ones_to_twos[0][1], ones_to_twos[1][1], ones_to_twos[2][1])

#         functerm = MathTex("f","(x)",  "=", "\\cos", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         functerm_2 = MathTex("f","(x)",  "=", "\\cos", "(x)", "+", "1", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)

#         self.add(functerm, graph_blue)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 That's not right.
#                 We want the values of the function to range from zero to two, instead of from negative one to one.
#                 This means, that wherever the function<bookmark mark="row_1_a"/> has a value of one, we want it
#                 <bookmark mark="row_1_b"/>to have a value of two instead.

#                 And wherever the function<bookmark mark="row_2_a"/> has a value of negative one, we want it <bookmark mark="row_2_b"/>
#                 to have a value of zero instead.

#                 Clearly, we can achieve this by <bookmark mark="transform_term"/> adding one to the function.
#                 If we do that, <bookmark mark="stretch_func"/> the function will be shifted vertically up by one.
#                 And that's exactly what we want.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("row_1_a")
#             cursor.blinking=False
#             x,y,_ = row_one[0].get_center()+0.4*DOWN
#             self.play(Create(row_one), CursorMoveTo(cursor,x,y), run_time=.5)

#             self.wait_until_bookmark("row_1_b")
#             x,y,_ = row_one[2].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("row_2_a")
#             cursor.blinking=False
#             x,y,_ = row_two[0].get_center()+0.4*DOWN
#             self.play(Create(row_two), CursorMoveTo(cursor,x,y), run_time=.5)
            
#             self.wait_until_bookmark("row_2_b")
#             x,y,_ = row_two[2].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("transform_term")
#             x,y,_ = functerm_2[6].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(TransformMatchingTex(functerm, functerm_2), CursorMoveTo(cursor,x,y), run_time=.5)

#             self.wait_until_bookmark("stretch_func")
#             x,y,_ = plane.c2p(0,1)
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.5)
#             start = plane.c2p(0,1)+OUT
#             self.add(Updown_Arrow(start, vert=True).add_updater(lambda m: m.put_start_and_end_on(start, plane.c2p(0,a.get_value()+1))))
#             cursor.add_updater(lambda m: m.move_to(plane.c2p(0,a.get_value()+1)))
#             self.remove(graph_blue)
#             self.add(graph_blue_updated)
#             self.add_move_sound(direction="forward", duration=1)
#             self.play(a.animate.set_value(1), run_time=2)
#             cursor.blinking=True


#         self.wait(4)


# class Func_7_5_I_1_b(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Sine \& Cosine: Shifting")

#         cords = self.add_cords([-.5, 2*np.pi, np.pi], [-1.5, 1.5, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(1.6*DOWN)
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

#         graph_blue = plane.plot(lambda x: np.cos(x), color=BLUE)

#         a = ValueTracker(0)
#         graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()+np.cos(x), color=BLUE))

#         ones = VGroup(MathTex("1", color=c1t, font_size=fs2), MathTex("-1", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=RIGHT)
#         arrows = VGroup(MathTex("\\Rightarrow", color=c1t, font_size=fs2), MathTex("\\Rightarrow", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=LEFT)
#         twos = VGroup(MathTex("2", color=c1t, font_size=fs2), MathTex("0", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=RIGHT)
#         ones_to_twos = VGroup(ones, arrows, twos).arrange(RIGHT, buff=0.4).next_to(title, DOWN, buff=0.4)
#         row_one = VGroup(ones_to_twos[0][0], ones_to_twos[1][0], ones_to_twos[2][0])
#         row_two = VGroup(ones_to_twos[0][1], ones_to_twos[1][1], ones_to_twos[2][1])

#         functerm = MathTex("f","(x)",  "=", "\\cos", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         functerm_2 = MathTex("f","(x)",  "=", "\\cos", "(x)", "+", "1", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)

#         self.add(functerm, graph_blue)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 That's correct. Great job.
#                 We want the values of the function to range from zero to two, instead of from negative one to one.
#                 This means, that wherever the function<bookmark mark="row_1_a"/> has a value of one, we want it
#                 <bookmark mark="row_1_b"/>to have a value of two instead.

#                 And wherever the function<bookmark mark="row_2_a"/> has a value of negative one, we want it <bookmark mark="row_2_b"/>
#                 to have a value of zero instead.

#                 Clearly, we can achieve this by <bookmark mark="transform_term"/> adding one to the function.
#                 If we do that, <bookmark mark="stretch_func"/> the function will be shifted vertically up by one.
#                 And that's exactly what we want.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("row_1_a")
#             cursor.blinking=False
#             x,y,_ = row_one[0].get_center()+0.4*DOWN
#             self.play(Create(row_one), CursorMoveTo(cursor,x,y), run_time=.5)

#             self.wait_until_bookmark("row_1_b")
#             x,y,_ = row_one[2].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("row_2_a")
#             cursor.blinking=False
#             x,y,_ = row_two[0].get_center()+0.4*DOWN
#             self.play(Create(row_two), CursorMoveTo(cursor,x,y), run_time=.5)
            
#             self.wait_until_bookmark("row_2_b")
#             x,y,_ = row_two[2].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("transform_term")
#             x,y,_ = functerm_2[6].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(TransformMatchingTex(functerm, functerm_2), CursorMoveTo(cursor,x,y), run_time=.5)

#             self.wait_until_bookmark("stretch_func")
#             x,y,_ = plane.c2p(0,1)
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.5)
#             start = plane.c2p(0,1)+OUT
#             self.add(Updown_Arrow(start, vert=True).add_updater(lambda m: m.put_start_and_end_on(start, plane.c2p(0,a.get_value()+1))))
#             cursor.add_updater(lambda m: m.move_to(plane.c2p(0,a.get_value()+1)))
#             self.remove(graph_blue)
#             self.add(graph_blue_updated)
#             self.add_move_sound(direction="forward", duration=1)
#             self.play(a.animate.set_value(1), run_time=2)
#             cursor.blinking=True


#         self.wait(4)


# class Func_7_5_I_1_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Sine \& Cosine: Shifting")

#         cords = self.add_cords([-.5, 2*np.pi, np.pi], [-1.5, 1.5, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(1.6*DOWN)
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

#         graph_blue = plane.plot(lambda x: np.cos(x), color=BLUE)

#         a = ValueTracker(0)
#         graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()+np.cos(x), color=BLUE))

#         ones = VGroup(MathTex("1", color=c1t, font_size=fs2), MathTex("-1", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=RIGHT)
#         arrows = VGroup(MathTex("\\Rightarrow", color=c1t, font_size=fs2), MathTex("\\Rightarrow", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=LEFT)
#         twos = VGroup(MathTex("2", color=c1t, font_size=fs2), MathTex("0", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=RIGHT)
#         ones_to_twos = VGroup(ones, arrows, twos).arrange(RIGHT, buff=0.4).next_to(title, DOWN, buff=0.4)
#         row_one = VGroup(ones_to_twos[0][0], ones_to_twos[1][0], ones_to_twos[2][0])
#         row_two = VGroup(ones_to_twos[0][1], ones_to_twos[1][1], ones_to_twos[2][1])

#         functerm = MathTex("f","(x)",  "=", "\\cos", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         functerm_2 = MathTex("f","(x)",  "=", "\\cos", "(x)", "+", "1", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)

#         self.add(functerm, graph_blue)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not right.
#                 We want the values of the function to range from zero to two, instead of from negative one to one.
#                 This means, that wherever the function<bookmark mark="row_1_a"/> has a value of one, we want it
#                 <bookmark mark="row_1_b"/>to have a value of two instead.

#                 And wherever the function<bookmark mark="row_2_a"/> has a value of negative one, we want it <bookmark mark="row_2_b"/>
#                 to have a value of zero instead.

#                 Clearly, we can achieve this by <bookmark mark="transform_term"/> adding one to the function.
#                 If we do that, <bookmark mark="stretch_func"/> the function will be shifted vertically up by one.
#                 And that's exactly what we want.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("row_1_a")
#             cursor.blinking=False
#             x,y,_ = row_one[0].get_center()+0.4*DOWN
#             self.play(Create(row_one), CursorMoveTo(cursor,x,y), run_time=.5)

#             self.wait_until_bookmark("row_1_b")
#             x,y,_ = row_one[2].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("row_2_a")
#             cursor.blinking=False
#             x,y,_ = row_two[0].get_center()+0.4*DOWN
#             self.play(Create(row_two), CursorMoveTo(cursor,x,y), run_time=.5)
            
#             self.wait_until_bookmark("row_2_b")
#             x,y,_ = row_two[2].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("transform_term")
#             x,y,_ = functerm_2[6].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(TransformMatchingTex(functerm, functerm_2), CursorMoveTo(cursor,x,y), run_time=.5)

#             self.wait_until_bookmark("stretch_func")
#             x,y,_ = plane.c2p(0,1)
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.5)
#             start = plane.c2p(0,1)+OUT
#             self.add(Updown_Arrow(start, vert=True).add_updater(lambda m: m.put_start_and_end_on(start, plane.c2p(0,a.get_value()+1))))
#             cursor.add_updater(lambda m: m.move_to(plane.c2p(0,a.get_value()+1)))
#             self.remove(graph_blue)
#             self.add(graph_blue_updated)
#             self.add_move_sound(direction="forward", duration=1)
#             self.play(a.animate.set_value(1), run_time=2)
#             cursor.blinking=True


#         self.wait(4)


# class Func_7_5_I_1_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Sine \& Cosine: Shifting")

#         cords = self.add_cords([-.5, 2*np.pi, np.pi], [-1.5, 1.5, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-1,1]).shift(1.6*DOWN)
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

#         graph_blue = plane.plot(lambda x: np.cos(x), color=BLUE)

#         a = ValueTracker(0)
#         graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()+np.cos(x), color=BLUE))

#         ones = VGroup(MathTex("1", color=c1t, font_size=fs2), MathTex("-1", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=RIGHT)
#         arrows = VGroup(MathTex("\\Rightarrow", color=c1t, font_size=fs2), MathTex("\\Rightarrow", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=LEFT)
#         twos = VGroup(MathTex("2", color=c1t, font_size=fs2), MathTex("0", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.2, aligned_edge=RIGHT)
#         ones_to_twos = VGroup(ones, arrows, twos).arrange(RIGHT, buff=0.4).next_to(title, DOWN, buff=0.4)
#         row_one = VGroup(ones_to_twos[0][0], ones_to_twos[1][0], ones_to_twos[2][0])
#         row_two = VGroup(ones_to_twos[0][1], ones_to_twos[1][1], ones_to_twos[2][1])

#         functerm = MathTex("f","(x)",  "=", "\\cos", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         functerm_2 = MathTex("f","(x)",  "=", "\\cos", "(x)", "+", "1", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)

#         self.add(functerm, graph_blue)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not right.
#                 We want the values of the function to range from zero to two, instead of from negative one to one.
#                 This means, that wherever the function<bookmark mark="row_1_a"/> has a value of one, we want it
#                 <bookmark mark="row_1_b"/>to have a value of two instead.

#                 And wherever the function<bookmark mark="row_2_a"/> has a value of negative one, we want it <bookmark mark="row_2_b"/>
#                 to have a value of zero instead.

#                 Clearly, we can achieve this by <bookmark mark="transform_term"/> adding one to the function.
#                 If we do that, <bookmark mark="stretch_func"/> the function will be shifted vertically up by one.
#                 And that's exactly what we want.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("row_1_a")
#             cursor.blinking=False
#             x,y,_ = row_one[0].get_center()+0.4*DOWN
#             self.play(Create(row_one), CursorMoveTo(cursor,x,y), run_time=.5)

#             self.wait_until_bookmark("row_1_b")
#             x,y,_ = row_one[2].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("row_2_a")
#             cursor.blinking=False
#             x,y,_ = row_two[0].get_center()+0.4*DOWN
#             self.play(Create(row_two), CursorMoveTo(cursor,x,y), run_time=.5)
            
#             self.wait_until_bookmark("row_2_b")
#             x,y,_ = row_two[2].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor,x,y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("transform_term")
#             x,y,_ = functerm_2[6].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(TransformMatchingTex(functerm, functerm_2), CursorMoveTo(cursor,x,y), run_time=.5)

#             self.wait_until_bookmark("stretch_func")
#             x,y,_ = plane.c2p(0,1)
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.5)
#             start = plane.c2p(0,1)+OUT
#             self.add(Updown_Arrow(start, vert=True).add_updater(lambda m: m.put_start_and_end_on(start, plane.c2p(0,a.get_value()+1))))
#             cursor.add_updater(lambda m: m.move_to(plane.c2p(0,a.get_value()+1)))
#             self.remove(graph_blue)
#             self.add(graph_blue_updated)
#             self.add_move_sound(direction="forward", duration=1)
#             self.play(a.animate.set_value(1), run_time=2)
#             cursor.blinking=True


#         self.wait(4)


# #####################################
# #####################################
# class Func_7_5_I_2(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Sine \& Cosine: Shifting")

#         cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

#         a = ValueTracker(0)
#         graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()+np.cos(x), color=BLUE))

#         line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
#         line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

#         functerm = MathTex("f","(x)",  "=", "\\sin", "(x)", "+","a", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         a_val = VGroup(MathTex("a=", color=c1t, font_size=fs1), DecimalNumber(1).scale(.9).set_color(c1t).add_updater(lambda m: m.set_value(a.get_value()))).arrange(RIGHT, buff=0.2).next_to(functerm, DOWN, buff=0.4)
#         a_val[1].shift((a_val[0].get_bottom()-a_val[1].get_bottom())[1]*UP)
#         self.add(graph_blue_updated, functerm, a_val)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 In general, we can shift the cosine function <bookmark mark="y_axis"/> in y-direction by simply
#                 adding  <bookmark mark="scale_a"/> a constant factor a.<bookmark mark="move_cursor"/>.
#                 If <bookmark mark="a_1"/>a is positive, the function will be shifted up.
#                 And if <bookmark mark="a_2"/>a is negative, the function will be shifted down.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("y_axis")
#             cursor.blinking = False
#             self.play(CursorMarkAxis(cursor, plane, "y"), run_time=.5)

#             self.wait_until_bookmark("scale_a")
#             x,y,_ = functerm[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveResize(cursor,x,y, 0.2, 0.2), run_time=.5)
#             cursor.blinking = True

#             self.wait_until_bookmark("move_cursor")
#             x,y,_ = plane.c2p(np.pi/2,0)
#             cursor.blinking = False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.5)
#             cursor.add_updater(lambda m: m.move_to(plane.c2p(np.pi/2,a.get_value())))

#             self.wait_until_bookmark("a_1")
#             self.add_move_sound(direction="forward", duration=1.5)
#             start = plane.c2p(np.pi/2,0)+OUT
#             self.add(Updown_Arrow(start, vert=True).add_updater(lambda m: m.put_start_and_end_on(start, plane.c2p(np.pi/2,a.get_value()))))
#             self.play(a.animate.set_value(1))
#             cursor.blinking=True

#             self.wait_until_bookmark("a_2")
#             cursor.blinking=False
#             self.add_move_sound(direction="backward", duration=1.5)
#             self.play(a.animate.set_value(-1))
#             cursor.blinking=True


#         self.wait(4)


# #####################################
# #####################################
# TASK_Func_7_5_P_1_q = SophiaTaskDefinition(
#     answerOptions = ["$a=2$", "$a=\tfrac{1}{2}$", "$a=-2$", "$a=-\tfrac{1}{2}$"],
#     correctAnswerIndex = 2,
#     questionText = "What value do we choose for $a$, to stretch the function vertically by a factor of two and reflect it at the x-axis?",
# )
# class Func_7_5_P_1_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Sine \& Cosine: Shifting")

#         cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

#         a = ValueTracker(0)
#         graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()+np.sin(x), color=BLUE))

#         qmark = ImageMobject(assets_folder / "img" / "qmark.png")
#         qmark = qmark.scale(3.2/qmark.get_width()).move_to([-5, 1, 0])

#         functerm = MathTex("f","(x)",  "=", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         self.add(graph_blue_updated, functerm)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Consider the <bookmark mark="f"/> function f <bookmark mark="fx"/> of x <bookmark mark="sin"/>equals
#                 sine <bookmark mark="x"/> of x.

#                 Now we want to shift the <bookmark mark="shift_down"/>function down by two.

#                 <bookmark mark="qmark"/>What does the term of the shifted function look like?
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("f")
#             cursor.blinking = False
#             x,y,_ = functerm[0].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("fx")
#             x,y,_ = functerm[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin")
#             x,y,_ = functerm[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("x")
#             x,y,_ = functerm[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("shift_down")
#             x,y,_ = plane.c2p(np.pi,0)
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor, x, y), run_time=.5)
#             start = plane.c2p(np.pi,0)+OUT
#             cursor.add_updater(lambda m: m.move_to(plane.c2p(np.pi,a.get_value())))
#             self.add(Updown_Arrow(start, vert=True).add_updater(lambda m: m.put_start_and_end_on(start, plane.c2p(np.pi,a.get_value()))))
#             self.add_move_sound(direction="backward", duration=.5)
#             self.play(a.animate.set_value(-2), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("qmark")
#             self.play(qmark.animate.shift(5*RIGHT), run_time=.5)
#             self.wait(1)
#             self.play(qmark.animate.shift(5*RIGHT), run_time=.5)


#         self.wait(4)


# class Func_7_5_P_1_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Sine \& Cosine: Shifting")

#         cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

#         a = ValueTracker(0)
#         graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()+np.sin(x), color=BLUE))

#         qmark = ImageMobject(assets_folder / "img" / "qmark.png")
#         qmark = qmark.scale(3.2/qmark.get_width()).move_to([-5, 1, 0])

#         functerm = MathTex("f","(x)",  "=", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         functerm_shifted = MathTex("f","(x)",  "=", "\\sin", "(x)", "-","2", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         self.add(graph_blue_updated, functerm)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Yep, that's right.
#                 We're starting with the function <bookmark mark="f"/> f <bookmark mark="fx"/> of x <bookmark mark="sin"/>equals
#                 sine <bookmark mark="x"/> of x and we want to <bookmark mark="shift_down"/>shift it down by two.

#                 This means, that we want to decrease every value by two, so <bookmark mark="subtract_two"/> we subtract
#                 two from the entire function.

#                 So, the new term will <bookmark mark="f_final"/> be f <bookmark mark="fx_final"/> of x
#                 <bookmark mark="sin_final"/>equals sine <bookmark mark="x_final"/> of x <bookmark mark="minus_two"/> minus two.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("f")
#             cursor.blinking = False
#             x,y,_ = functerm[0].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("fx")
#             x,y,_ = functerm[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin")
#             x,y,_ = functerm[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("x")
#             x,y,_ = functerm[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("shift_down")
#             x,y,_ = plane.c2p(np.pi,0)
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor, x, y), run_time=.5)
#             start = plane.c2p(np.pi,0)+OUT
#             cursor_updater = lambda m: m.move_to(plane.c2p(np.pi,a.get_value()))
#             cursor.add_updater(cursor_updater)
#             self.add(Updown_Arrow(start, vert=True).add_updater(lambda m: m.put_start_and_end_on(start, plane.c2p(np.pi,a.get_value()))))
#             self.add_move_sound(direction="backward", duration=.5)
#             self.play(a.animate.set_value(-2), run_time=.5)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True

#             self.wait_until_bookmark("subtract_two")
#             x,y,_ = functerm_shifted[-1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(TransformMatchingTex(functerm, functerm_shifted), CursorMoveTo(cursor, x, y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("f_final")
#             cursor.blinking=False
#             x,y,_ = functerm_shifted[0].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("fx_final")
#             x,y,_ = functerm_shifted[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin_final")
#             x,y,_ = functerm_shifted[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("x_final")
#             x,y,_ = functerm_shifted[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("minus_two")
#             x,y,_ = functerm_shifted[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)
#             cursor.blinking=True


#         self.wait(4)

# class Func_7_5_P_1_b(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Sine \& Cosine: Shifting")

#         cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

#         a = ValueTracker(0)
#         graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()+np.sin(x), color=BLUE))

#         qmark = ImageMobject(assets_folder / "img" / "qmark.png")
#         qmark = qmark.scale(3.2/qmark.get_width()).move_to([-5, 1, 0])

#         functerm = MathTex("f","(x)",  "=", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         functerm_shifted = MathTex("f","(x)",  "=", "\\sin", "(x)", "-","2", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         self.add(graph_blue_updated, functerm)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not correct.
#                 We're starting with the function <bookmark mark="f"/> f <bookmark mark="fx"/> of x <bookmark mark="sin"/>equals
#                 sine <bookmark mark="x"/> of x and we want to <bookmark mark="shift_down"/>shift it down by two.

#                 This means, that we want to decrease every value by two, so <bookmark mark="subtract_two"/> we subtract
#                 two from the entire function.

#                 So, the new term will <bookmark mark="f_final"/> be f <bookmark mark="fx_final"/> of x
#                 <bookmark mark="sin_final"/>equals sine <bookmark mark="x_final"/> of x <bookmark mark="minus_two"/> minus two.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("f")
#             cursor.blinking = False
#             x,y,_ = functerm[0].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("fx")
#             x,y,_ = functerm[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin")
#             x,y,_ = functerm[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("x")
#             x,y,_ = functerm[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("shift_down")
#             x,y,_ = plane.c2p(np.pi,0)
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor, x, y), run_time=.5)
#             start = plane.c2p(np.pi,0)+OUT
#             cursor_updater = lambda m: m.move_to(plane.c2p(np.pi,a.get_value()))
#             cursor.add_updater(cursor_updater)
#             self.add(Updown_Arrow(start, vert=True).add_updater(lambda m: m.put_start_and_end_on(start, plane.c2p(np.pi,a.get_value()))))
#             self.add_move_sound(direction="backward", duration=.5)
#             self.play(a.animate.set_value(-2), run_time=.5)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True

#             self.wait_until_bookmark("subtract_two")
#             x,y,_ = functerm_shifted[-1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(TransformMatchingTex(functerm, functerm_shifted), CursorMoveTo(cursor, x, y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("f_final")
#             cursor.blinking=False
#             x,y,_ = functerm_shifted[0].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("fx_final")
#             x,y,_ = functerm_shifted[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin_final")
#             x,y,_ = functerm_shifted[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("x_final")
#             x,y,_ = functerm_shifted[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("minus_two")
#             x,y,_ = functerm_shifted[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)
#             cursor.blinking=True


#         self.wait(4)


# class Func_7_5_P_1_c(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Sine \& Cosine: Shifting")

#         cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

#         a = ValueTracker(0)
#         graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()+np.sin(x), color=BLUE))

#         qmark = ImageMobject(assets_folder / "img" / "qmark.png")
#         qmark = qmark.scale(3.2/qmark.get_width()).move_to([-5, 1, 0])

#         functerm = MathTex("f","(x)",  "=", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         functerm_shifted = MathTex("f","(x)",  "=", "\\sin", "(x)", "-","2", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         self.add(graph_blue_updated, functerm)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not correct.
#                 We're starting with the function <bookmark mark="f"/> f <bookmark mark="fx"/> of x <bookmark mark="sin"/>equals
#                 sine <bookmark mark="x"/> of x and we want to <bookmark mark="shift_down"/>shift it down by two.

#                 This means, that we want to decrease every value by two, so <bookmark mark="subtract_two"/> we subtract
#                 two from the entire function.

#                 So, the new term will <bookmark mark="f_final"/> be f <bookmark mark="fx_final"/> of x
#                 <bookmark mark="sin_final"/>equals sine <bookmark mark="x_final"/> of x <bookmark mark="minus_two"/> minus two.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("f")
#             cursor.blinking = False
#             x,y,_ = functerm[0].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("fx")
#             x,y,_ = functerm[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin")
#             x,y,_ = functerm[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("x")
#             x,y,_ = functerm[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("shift_down")
#             x,y,_ = plane.c2p(np.pi,0)
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor, x, y), run_time=.5)
#             start = plane.c2p(np.pi,0)+OUT
#             cursor_updater = lambda m: m.move_to(plane.c2p(np.pi,a.get_value()))
#             cursor.add_updater(cursor_updater)
#             self.add(Updown_Arrow(start, vert=True).add_updater(lambda m: m.put_start_and_end_on(start, plane.c2p(np.pi,a.get_value()))))
#             self.add_move_sound(direction="backward", duration=.5)
#             self.play(a.animate.set_value(-2), run_time=.5)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True

#             self.wait_until_bookmark("subtract_two")
#             x,y,_ = functerm_shifted[-1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(TransformMatchingTex(functerm, functerm_shifted), CursorMoveTo(cursor, x, y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("f_final")
#             cursor.blinking=False
#             x,y,_ = functerm_shifted[0].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("fx_final")
#             x,y,_ = functerm_shifted[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin_final")
#             x,y,_ = functerm_shifted[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("x_final")
#             x,y,_ = functerm_shifted[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("minus_two")
#             x,y,_ = functerm_shifted[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)
#             cursor.blinking=True


#         self.wait(4)



# class Func_7_5_P_1_d(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Sine \& Cosine: Shifting")

#         cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

#         a = ValueTracker(0)
#         graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()+np.sin(x), color=BLUE))

#         qmark = ImageMobject(assets_folder / "img" / "qmark.png")
#         qmark = qmark.scale(3.2/qmark.get_width()).move_to([-5, 1, 0])

#         functerm = MathTex("f","(x)",  "=", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         functerm_shifted = MathTex("f","(x)",  "=", "\\sin", "(x)", "-","2", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         self.add(graph_blue_updated, functerm)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's not correct.
#                 We're starting with the function <bookmark mark="f"/> f <bookmark mark="fx"/> of x <bookmark mark="sin"/>equals
#                 sine <bookmark mark="x"/> of x and we want to <bookmark mark="shift_down"/>shift it down by two.

#                 This means, that we want to decrease every value by two, so <bookmark mark="subtract_two"/> we subtract
#                 two from the entire function.

#                 So, the new term will <bookmark mark="f_final"/> be f <bookmark mark="fx_final"/> of x
#                 <bookmark mark="sin_final"/>equals sine <bookmark mark="x_final"/> of x <bookmark mark="minus_two"/> minus two.
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("f")
#             cursor.blinking = False
#             x,y,_ = functerm[0].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("fx")
#             x,y,_ = functerm[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin")
#             x,y,_ = functerm[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("x")
#             x,y,_ = functerm[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("shift_down")
#             x,y,_ = plane.c2p(np.pi,0)
#             cursor.blinking=False
#             self.play(CursorMoveTo(cursor, x, y), run_time=.5)
#             start = plane.c2p(np.pi,0)+OUT
#             cursor_updater = lambda m: m.move_to(plane.c2p(np.pi,a.get_value()))
#             cursor.add_updater(cursor_updater)
#             self.add(Updown_Arrow(start, vert=True).add_updater(lambda m: m.put_start_and_end_on(start, plane.c2p(np.pi,a.get_value()))))
#             self.add_move_sound(direction="backward", duration=.5)
#             self.play(a.animate.set_value(-2), run_time=.5)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True

#             self.wait_until_bookmark("subtract_two")
#             x,y,_ = functerm_shifted[-1].get_center()+0.4*DOWN
#             cursor.blinking=False
#             self.play(TransformMatchingTex(functerm, functerm_shifted), CursorMoveTo(cursor, x, y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("f_final")
#             cursor.blinking=False
#             x,y,_ = functerm_shifted[0].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("fx_final")
#             x,y,_ = functerm_shifted[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin_final")
#             x,y,_ = functerm_shifted[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("x_final")
#             x,y,_ = functerm_shifted[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("minus_two")
#             x,y,_ = functerm_shifted[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)
#             cursor.blinking=True


#         self.wait(4)



# #####################################
# #####################################
# TASK_Func_7_5_I_3_q = SophiaTaskDefinition(
#     answerOptions = ["$f(x)=\sin(x+b), b>0$", "$f(x)=\sin(x+b), b<0$", "$f(x)=\sin(x\cdot b), b<0$", "$f(x)=\sin(x\cdot b), b>0$", ],
#     correctAnswerIndex = 0,
#     questionText = "What does the function $f(x)=\sin(x)$ look like, after it was shifted to the left?"
# )
# class Func_7_5_I_3_q(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Sine \& Cosine: Shifting")

#         cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

#         a = ValueTracker(0)
#         b = ValueTracker(0)
#         graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()+np.sin(b.get_value()+x), color=BLUE))

#         line_1 = Line(plane.c2p(0,-1), plane.c2p(0,1), color=GREY)
#         line_2 = Line(plane.c2p(0,-2), plane.c2p(0,2), color=GREEN)

#         functerm = MathTex("f","(x)",  "=", "\\sin", "(x)", "+", "a", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         functerm_2 = MathTex("f","(x)",  "=", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         self.add(graph_blue_updated, functerm)

#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 <bookmark mark="start"/>
#                 We can shift the sine function <bookmark mark="y_axis"/> in y-direction by simply
#                 adding a <bookmark mark="shift_a"/>constant factor a to the entire function.

#                 Now, what if we want to shift the <bookmark mark="x_axis"/> function in x-direction?
#                 For example: How do we change the <bookmark mark="f"/> function term f <bookmark mark="fx"/>of x <bookmark mark="sin"/>equals
#                 sine <bookmark mark="x"/> of x, so that <bookmark mark="shift_b"/>f is shifted to the left?
#                 """
#         ) as tracker:
            
#             self.wait_until_bookmark("start")
#             x,y,_ = plane.c2p(np.pi/2,1)
#             cursor.blinking = False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/2,1+a.get_value()))
#             cursor.add_updater(cursor_updater)
#             ud_1 = Updown_Arrow(plane.c2p(np.pi/2,1), vert=True).add_updater(lambda m: m.put_start_and_end_on(plane.c2p(np.pi/2,1), plane.c2p(np.pi/2,1+a.get_value())))
#             self.add(ud_1)
#             self.add_move_sound(direction="forward", duration=.8)
#             self.play(a.animate.set_value(2), run_time=.8)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True
            
#             self.wait_until_bookmark("y_axis")
#             cursor.blinking = False
#             self.play(CursorMarkAxis(cursor, plane, "y"), run_time=.5)
#             self.wait(1)
#             x,y,_ = plane.c2p(0,0)
#             self.play(CursorMoveResize(cursor,x,y,0.2,0.2), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("shift_a")
#             cursor.blinking = False
#             x,y,_ = functerm[-1].get_center()+0.4*DOWN
#             self.play(CursorMoveResize(cursor,x,y, 0.2, 0.2), run_time=.5)
#             cursor.blinking = True


#             self.wait_until_bookmark("x_axis")
#             cursor.blinking = False
#             self.play(a.animate(run_time=.4).set_value(0), CursorMarkAxis(cursor, plane, "x"), run_time=1)
#             self.remove(ud_1)

#             self.wait_until_bookmark("f")
#             cursor.blinking = False
#             x,y,_ = functerm_2[0].get_center()+0.4*DOWN
#             self.play(TransformMatchingTex(functerm, functerm_2), CursorMoveResize(cursor, x, y, 0.2, 0.2), run_time=.5)

#             self.wait_until_bookmark("fx")
#             x,y,_ = functerm_2[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin")
#             x,y,_ = functerm_2[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

#             self.wait_until_bookmark("x")
#             x,y,_ = functerm_2[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)
#             cursor.blinking=True

#             self.wait_until_bookmark("shift_b")
#             x,y,_ = plane.c2p(np.pi,0)
#             cursor.blinking = False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.5)
#             cursor_updater = lambda m: m.move_to(plane.c2p(np.pi-b.get_value(),0))
#             cursor.add_updater(cursor_updater)
#             ud_2 = Updown_Arrow(plane.c2p(np.pi,0), vert=False).add_updater(lambda m: m.put_start_and_end_on(plane.c2p(np.pi,0), plane.c2p(np.pi-b.get_value(),0)))
#             self.add(ud_2)
#             self.add_move_sound(direction="forward", duration=2.5)
#             self.play(b.animate.set_value(2.5), run_time=2.5)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True

#         self.wait(4)



# class Func_7_5_I_3_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Sine \& Cosine: Shifting")

#         cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

#         a = ValueTracker(0)
#         b = ValueTracker(0)
#         graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()+np.sin(b.get_value()+x), color=BLUE))
#         graph_grey = plane.plot(lambda x: np.sin(x), color=GREY, stroke_width=1)

#         arrow_1 = Line(plane.c2p(2*np.pi,0), plane.c2p(np.pi,0), color=ORANGE)
#         arrow_2 = Line(plane.c2p(3/2*np.pi,-1), plane.c2p(np.pi/2,-1), color=ORANGE)

#         functerm = MathTex("f","(x)",  "=", "\\sin", "(x+", "\\pi",")", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         functerm_general = MathTex("f","(x)",  "=", "\\sin", "(x+", "b",")", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         functerm_general_neg = MathTex("b>0", color=c1t, font_size=fs1).next_to(functerm_general, DOWN, buff=.2)
#         functerm_2 = MathTex("f","(x)",  "=", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         self.add(graph_grey, graph_blue_updated, functerm_2)


#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Yep, that is correct...

#                 We want to shift the<bookmark mark="f"/> function f <bookmark mark="fx"/>of x <bookmark mark="sin"/>equals
#                 sine <bookmark mark="x"/> of x <bookmark mark="shift_b"/>to the left...
                
#                 This means, for example, that the point that used to be <bookmark mark="two_pi"/>at two pi will now
#                 <bookmark mark="pi"/>be at x equals pi, and that the point that used to be <bookmark mark="onepfive"/>
#                 at one and a half pi will now be<bookmark mark="half_pi"/> at half pi.

#                 So  we need the value of pi to be what the value of two pi used to be, and the value of half pi to be
#                 what the value of one and a half pi used to be.
#                 We can achiev this by <bookmark mark="add_b"/>adding pi to x.

#                 This means that the term of the shifted <bookmark mark="f_final"/>function will be f
#                 <bookmark mark="fx_final"/>of x <bookmark mark="sin_final"/>equals sine <bookmark mark="x_final"/>of open
#                 bracket x <bookmark mark="plus_pi"/>plus pi close bracket.

#                 So if we just want to shift it to the left, the general term will be f of x equals sine of
#                 <bookmark mark="x_plus_b"/>x plus b, <bookmark mark="b_pos"/> where b is a positive number.
#                 """
#         ) as tracker:
            

#             self.wait_until_bookmark("f")
#             cursor.blinking = False
#             x,y,_ = functerm_2[0].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.5)

#             self.wait_until_bookmark("fx")
#             x,y,_ = functerm_2[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin")
#             x,y,_ = functerm_2[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

#             self.wait_until_bookmark("x")
#             x,y,_ = functerm_2[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)
#             cursor.blinking=True

#             self.wait_until_bookmark("shift_b")
#             x,y,_ = plane.c2p(np.pi,0)
#             cursor.blinking = False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.5)
#             cursor_updater = lambda m: m.move_to(plane.c2p(np.pi-b.get_value(),0))
#             cursor.add_updater(cursor_updater)
#             ud_2 = Updown_Arrow(plane.c2p(np.pi,0), vert=False).add_updater(lambda m: m.put_start_and_end_on(plane.c2p(np.pi,0), plane.c2p(np.pi-b.get_value(),0)))
#             self.add(ud_2)
#             self.add_move_sound(direction="forward", duration=2.5)
#             self.play(b.animate.set_value(np.pi), run_time=2.5)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True

#             self.wait_until_bookmark("two_pi")
#             cursor.blinking = False
#             x,y,_ = plane.c2p(2*np.pi,0)
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("pi")
#             cursor.blinking = False
#             cursor_updater = lambda m: m.move_to(arrow_1.get_end())
#             cursor.add_updater(cursor_updater)
#             self.play(Create(arrow_1), run_time=.3)
#             arrow_1.add_tip(tip_length=0.2)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True

#             self.wait_until_bookmark("onepfive")
#             cursor.blinking = False
#             x,y,_ = plane.c2p(3/2*np.pi,-1)
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("half_pi")
#             cursor.blinking = False
#             cursor_updater = lambda m: m.move_to(arrow_2.get_end())
#             cursor.add_updater(cursor_updater)
#             self.play(Create(arrow_2), run_time=.3)
#             arrow_2.add_tip(tip_length=0.2)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True

#             self.wait_until_bookmark("add_b")
#             cursor.blinking = False
#             x,y,_ = functerm[-2].get_center()+0.4*DOWN
#             self.play(TransformMatchingTex(functerm_2, functerm), CursorMoveTo(cursor, x, y), run_time=.5)
#             cursor.blinking=True


#             self.wait_until_bookmark("f_final")
#             cursor.blinking = False
#             x,y,_ = functerm[0].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("fx_final")
#             x,y,_ = functerm[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin_final")
#             x,y,_ = functerm[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

#             self.wait_until_bookmark("x_final")
#             x,y,_ = functerm[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

#             self.wait_until_bookmark("plus_pi")
#             x,y,_ = functerm[-2].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("x_plus_b")
#             cursor.blinking = False
#             x,y,_ = functerm_general[4].get_center()+0.4*DOWN
#             self.play(TransformMatchingTex(functerm, functerm_general), CursorMoveTo(cursor, x, y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("b_pos")
#             cursor.blinking = False
#             x,y,_ = functerm_general_neg.get_center()+0.4*DOWN
#             self.play(Write(functerm_general_neg), CursorMoveTo(cursor, x, y), run_time=.5)
#             cursor.blinking=True

#         self.wait(4)


# class Func_7_5_I_3_b(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Sine \& Cosine: Shifting")

#         cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

#         a = ValueTracker(0)
#         b = ValueTracker(0)
#         graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()+np.sin(b.get_value()+x), color=BLUE))
#         graph_grey = plane.plot(lambda x: np.sin(x), color=GREY, stroke_width=1)

#         arrow_1 = Line(plane.c2p(2*np.pi,0), plane.c2p(np.pi,0), color=ORANGE)
#         arrow_2 = Line(plane.c2p(3/2*np.pi,-1), plane.c2p(np.pi/2,-1), color=ORANGE)

#         functerm = MathTex("f","(x)",  "=", "\\sin", "(x+", "\\pi",")", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         functerm_general = MathTex("f","(x)",  "=", "\\sin", "(x+", "b",")", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         functerm_general_neg = MathTex("b>0", color=c1t, font_size=fs1).next_to(functerm_general, DOWN, buff=.2)
#         functerm_2 = MathTex("f","(x)",  "=", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         self.add(graph_grey, graph_blue_updated, functerm_2)


#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's right.

#                 We want to shift the<bookmark mark="f"/> function f <bookmark mark="fx"/>of x <bookmark mark="sin"/>equals
#                 sine <bookmark mark="x"/> of x <bookmark mark="shift_b"/>to the left...
                
#                 This means, for example, that the point that used to be <bookmark mark="two_pi"/>at two pi will now
#                 <bookmark mark="pi"/>be at x equals pi, and that the point that used to be <bookmark mark="onepfive"/>
#                 at one and a half pi will now be<bookmark mark="half_pi"/> at half pi.

#                 So  we need the value of pi to be what the value of two pi used to be, and the value of half pi to be
#                 what the value of one and a half pi used to be.
#                 We can achiev this by <bookmark mark="add_b"/>adding pi to x.

#                 This means that the term of the shifted <bookmark mark="f_final"/>function will be f
#                 <bookmark mark="fx_final"/>of x <bookmark mark="sin_final"/>equals sine <bookmark mark="x_final"/>of open
#                 bracket x <bookmark mark="plus_pi"/>plus pi close bracket.

#                 So if we just want to shift it to the left, the general term will be f of x equals sine of
#                 <bookmark mark="x_plus_b"/>x plus b, <bookmark mark="b_pos"/> where b is a positive number.
#                 """
#         ) as tracker:
            

#             self.wait_until_bookmark("f")
#             cursor.blinking = False
#             x,y,_ = functerm_2[0].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.5)

#             self.wait_until_bookmark("fx")
#             x,y,_ = functerm_2[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin")
#             x,y,_ = functerm_2[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

#             self.wait_until_bookmark("x")
#             x,y,_ = functerm_2[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)
#             cursor.blinking=True

#             self.wait_until_bookmark("shift_b")
#             x,y,_ = plane.c2p(np.pi,0)
#             cursor.blinking = False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.5)
#             cursor_updater = lambda m: m.move_to(plane.c2p(np.pi-b.get_value(),0))
#             cursor.add_updater(cursor_updater)
#             ud_2 = Updown_Arrow(plane.c2p(np.pi,0), vert=False).add_updater(lambda m: m.put_start_and_end_on(plane.c2p(np.pi,0), plane.c2p(np.pi-b.get_value(),0)))
#             self.add(ud_2)
#             self.add_move_sound(direction="forward", duration=2.5)
#             self.play(b.animate.set_value(np.pi), run_time=2.5)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True

#             self.wait_until_bookmark("two_pi")
#             cursor.blinking = False
#             x,y,_ = plane.c2p(2*np.pi,0)
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("pi")
#             cursor.blinking = False
#             cursor_updater = lambda m: m.move_to(arrow_1.get_end())
#             cursor.add_updater(cursor_updater)
#             self.play(Create(arrow_1), run_time=.3)
#             arrow_1.add_tip(tip_length=0.2)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True

#             self.wait_until_bookmark("onepfive")
#             cursor.blinking = False
#             x,y,_ = plane.c2p(3/2*np.pi,-1)
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("half_pi")
#             cursor.blinking = False
#             cursor_updater = lambda m: m.move_to(arrow_2.get_end())
#             cursor.add_updater(cursor_updater)
#             self.play(Create(arrow_2), run_time=.3)
#             arrow_2.add_tip(tip_length=0.2)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True

#             self.wait_until_bookmark("add_b")
#             cursor.blinking = False
#             x,y,_ = functerm[-2].get_center()+0.4*DOWN
#             self.play(TransformMatchingTex(functerm_2, functerm), CursorMoveTo(cursor, x, y), run_time=.5)
#             cursor.blinking=True


#             self.wait_until_bookmark("f_final")
#             cursor.blinking = False
#             x,y,_ = functerm[0].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("fx_final")
#             x,y,_ = functerm[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin_final")
#             x,y,_ = functerm[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

#             self.wait_until_bookmark("x_final")
#             x,y,_ = functerm[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

#             self.wait_until_bookmark("plus_pi")
#             x,y,_ = functerm[-2].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("x_plus_b")
#             cursor.blinking = False
#             x,y,_ = functerm_general[4].get_center()+0.4*DOWN
#             self.play(TransformMatchingTex(functerm, functerm_general), CursorMoveTo(cursor, x, y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("b_pos")
#             cursor.blinking = False
#             x,y,_ = functerm_general_neg.get_center()+0.4*DOWN
#             self.play(Write(functerm_general_neg), CursorMoveTo(cursor, x, y), run_time=.5)
#             cursor.blinking=True

#         self.wait(4)


# class Func_7_5_I_3_c(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Sine \& Cosine: Shifting")

#         cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

#         a = ValueTracker(0)
#         b = ValueTracker(0)
#         graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()+np.sin(b.get_value()+x), color=BLUE))
#         graph_grey = plane.plot(lambda x: np.sin(x), color=GREY, stroke_width=1)

#         arrow_1 = Line(plane.c2p(2*np.pi,0), plane.c2p(np.pi,0), color=ORANGE)
#         arrow_2 = Line(plane.c2p(3/2*np.pi,-1), plane.c2p(np.pi/2,-1), color=ORANGE)

#         functerm = MathTex("f","(x)",  "=", "\\sin", "(x+", "\\pi",")", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         functerm_general = MathTex("f","(x)",  "=", "\\sin", "(x+", "b",")", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         functerm_general_neg = MathTex("b>0", color=c1t, font_size=fs1).next_to(functerm_general, DOWN, buff=.2)
#         functerm_2 = MathTex("f","(x)",  "=", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         self.add(graph_grey, graph_blue_updated, functerm_2)


#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's right.

#                 We want to shift the<bookmark mark="f"/> function f <bookmark mark="fx"/>of x <bookmark mark="sin"/>equals
#                 sine <bookmark mark="x"/> of x <bookmark mark="shift_b"/>to the left...
                
#                 This means, for example, that the point that used to be <bookmark mark="two_pi"/>at two pi will now
#                 <bookmark mark="pi"/>be at x equals pi, and that the point that used to be <bookmark mark="onepfive"/>
#                 at one and a half pi will now be<bookmark mark="half_pi"/> at half pi.

#                 So  we need the value of pi to be what the value of two pi used to be, and the value of half pi to be
#                 what the value of one and a half pi used to be.
#                 We can achiev this by <bookmark mark="add_b"/>adding pi to x.

#                 This means that the term of the shifted <bookmark mark="f_final"/>function will be f
#                 <bookmark mark="fx_final"/>of x <bookmark mark="sin_final"/>equals sine <bookmark mark="x_final"/>of open
#                 bracket x <bookmark mark="plus_pi"/>plus pi close bracket.

#                 So if we just want to shift it to the left, the general term will be f of x equals sine of
#                 <bookmark mark="x_plus_b"/>x plus b, <bookmark mark="b_pos"/> where b is a positive number.
#                 """
#         ) as tracker:
            

#             self.wait_until_bookmark("f")
#             cursor.blinking = False
#             x,y,_ = functerm_2[0].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.5)

#             self.wait_until_bookmark("fx")
#             x,y,_ = functerm_2[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin")
#             x,y,_ = functerm_2[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

#             self.wait_until_bookmark("x")
#             x,y,_ = functerm_2[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)
#             cursor.blinking=True

#             self.wait_until_bookmark("shift_b")
#             x,y,_ = plane.c2p(np.pi,0)
#             cursor.blinking = False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.5)
#             cursor_updater = lambda m: m.move_to(plane.c2p(np.pi-b.get_value(),0))
#             cursor.add_updater(cursor_updater)
#             ud_2 = Updown_Arrow(plane.c2p(np.pi,0), vert=False).add_updater(lambda m: m.put_start_and_end_on(plane.c2p(np.pi,0), plane.c2p(np.pi-b.get_value(),0)))
#             self.add(ud_2)
#             self.add_move_sound(direction="forward", duration=2.5)
#             self.play(b.animate.set_value(np.pi), run_time=2.5)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True

#             self.wait_until_bookmark("two_pi")
#             cursor.blinking = False
#             x,y,_ = plane.c2p(2*np.pi,0)
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("pi")
#             cursor.blinking = False
#             cursor_updater = lambda m: m.move_to(arrow_1.get_end())
#             cursor.add_updater(cursor_updater)
#             self.play(Create(arrow_1), run_time=.3)
#             arrow_1.add_tip(tip_length=0.2)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True

#             self.wait_until_bookmark("onepfive")
#             cursor.blinking = False
#             x,y,_ = plane.c2p(3/2*np.pi,-1)
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("half_pi")
#             cursor.blinking = False
#             cursor_updater = lambda m: m.move_to(arrow_2.get_end())
#             cursor.add_updater(cursor_updater)
#             self.play(Create(arrow_2), run_time=.3)
#             arrow_2.add_tip(tip_length=0.2)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True

#             self.wait_until_bookmark("add_b")
#             cursor.blinking = False
#             x,y,_ = functerm[-2].get_center()+0.4*DOWN
#             self.play(TransformMatchingTex(functerm_2, functerm), CursorMoveTo(cursor, x, y), run_time=.5)
#             cursor.blinking=True


#             self.wait_until_bookmark("f_final")
#             cursor.blinking = False
#             x,y,_ = functerm[0].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("fx_final")
#             x,y,_ = functerm[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin_final")
#             x,y,_ = functerm[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

#             self.wait_until_bookmark("x_final")
#             x,y,_ = functerm[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

#             self.wait_until_bookmark("plus_pi")
#             x,y,_ = functerm[-2].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("x_plus_b")
#             cursor.blinking = False
#             x,y,_ = functerm_general[4].get_center()+0.4*DOWN
#             self.play(TransformMatchingTex(functerm, functerm_general), CursorMoveTo(cursor, x, y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("b_pos")
#             cursor.blinking = False
#             x,y,_ = functerm_general_neg.get_center()+0.4*DOWN
#             self.play(Write(functerm_general_neg), CursorMoveTo(cursor, x, y), run_time=.5)
#             cursor.blinking=True

#         self.wait(4)


# class Func_7_5_I_3_d(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Sine \& Cosine: Shifting")

#         cords = self.add_cords([-.5, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[0, np.pi, 2*np.pi], x_labels=["0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

#         a = ValueTracker(0)
#         b = ValueTracker(0)
#         graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()+np.sin(b.get_value()+x), color=BLUE))
#         graph_grey = plane.plot(lambda x: np.sin(x), color=GREY, stroke_width=1)

#         arrow_1 = Line(plane.c2p(2*np.pi,0), plane.c2p(np.pi,0), color=ORANGE)
#         arrow_2 = Line(plane.c2p(3/2*np.pi,-1), plane.c2p(np.pi/2,-1), color=ORANGE)

#         functerm = MathTex("f","(x)",  "=", "\\sin", "(x+", "\\pi",")", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         functerm_general = MathTex("f","(x)",  "=", "\\sin", "(x+", "b",")", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         functerm_general_neg = MathTex("b>0", color=c1t, font_size=fs1).next_to(functerm_general, DOWN, buff=.2)
#         functerm_2 = MathTex("f","(x)",  "=", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=1)
#         self.add(graph_grey, graph_blue_updated, functerm_2)


#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 No, that's right.

#                 We want to shift the<bookmark mark="f"/> function f <bookmark mark="fx"/>of x <bookmark mark="sin"/>equals
#                 sine <bookmark mark="x"/> of x <bookmark mark="shift_b"/>to the left...
                
#                 This means, for example, that the point that used to be <bookmark mark="two_pi"/>at two pi will now
#                 <bookmark mark="pi"/>be at x equals pi, and that the point that used to be <bookmark mark="onepfive"/>
#                 at one and a half pi will now be<bookmark mark="half_pi"/> at half pi.

#                 So  we need the value of pi to be what the value of two pi used to be, and the value of half pi to be
#                 what the value of one and a half pi used to be.
#                 We can achiev this by <bookmark mark="add_b"/>adding pi to x.

#                 This means that the term of the shifted <bookmark mark="f_final"/>function will be f
#                 <bookmark mark="fx_final"/>of x <bookmark mark="sin_final"/>equals sine <bookmark mark="x_final"/>of open
#                 bracket x <bookmark mark="plus_pi"/>plus pi close bracket.

#                 So if we just want to shift it to the left, the general term will be f of x equals sine of
#                 <bookmark mark="x_plus_b"/>x plus b, <bookmark mark="b_pos"/> where b is a positive number.
#                 """
#         ) as tracker:
            

#             self.wait_until_bookmark("f")
#             cursor.blinking = False
#             x,y,_ = functerm_2[0].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.5)

#             self.wait_until_bookmark("fx")
#             x,y,_ = functerm_2[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin")
#             x,y,_ = functerm_2[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

#             self.wait_until_bookmark("x")
#             x,y,_ = functerm_2[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)
#             cursor.blinking=True

#             self.wait_until_bookmark("shift_b")
#             x,y,_ = plane.c2p(np.pi,0)
#             cursor.blinking = False
#             self.play(CursorMoveTo(cursor,x,y), run_time=.5)
#             cursor_updater = lambda m: m.move_to(plane.c2p(np.pi-b.get_value(),0))
#             cursor.add_updater(cursor_updater)
#             ud_2 = Updown_Arrow(plane.c2p(np.pi,0), vert=False).add_updater(lambda m: m.put_start_and_end_on(plane.c2p(np.pi,0), plane.c2p(np.pi-b.get_value(),0)))
#             self.add(ud_2)
#             self.add_move_sound(direction="forward", duration=2.5)
#             self.play(b.animate.set_value(np.pi), run_time=2.5)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True

#             self.wait_until_bookmark("two_pi")
#             cursor.blinking = False
#             x,y,_ = plane.c2p(2*np.pi,0)
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("pi")
#             cursor.blinking = False
#             cursor_updater = lambda m: m.move_to(arrow_1.get_end())
#             cursor.add_updater(cursor_updater)
#             self.play(Create(arrow_1), run_time=.3)
#             arrow_1.add_tip(tip_length=0.2)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True

#             self.wait_until_bookmark("onepfive")
#             cursor.blinking = False
#             x,y,_ = plane.c2p(3/2*np.pi,-1)
#             self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("half_pi")
#             cursor.blinking = False
#             cursor_updater = lambda m: m.move_to(arrow_2.get_end())
#             cursor.add_updater(cursor_updater)
#             self.play(Create(arrow_2), run_time=.3)
#             arrow_2.add_tip(tip_length=0.2)
#             cursor.remove_updater(cursor_updater)
#             cursor.blinking=True

#             self.wait_until_bookmark("add_b")
#             cursor.blinking = False
#             x,y,_ = functerm[-2].get_center()+0.4*DOWN
#             self.play(TransformMatchingTex(functerm_2, functerm), CursorMoveTo(cursor, x, y), run_time=.5)
#             cursor.blinking=True


#             self.wait_until_bookmark("f_final")
#             cursor.blinking = False
#             x,y,_ = functerm[0].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("fx_final")
#             x,y,_ = functerm[1].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.3)

#             self.wait_until_bookmark("sin_final")
#             x,y,_ = functerm[3].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

#             self.wait_until_bookmark("x_final")
#             x,y,_ = functerm[4].get_center()+0.4*DOWN
#             self.play(CursorMoveToCurved(cursor, x, y), run_time=.2)

#             self.wait_until_bookmark("plus_pi")
#             x,y,_ = functerm[-2].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x, y), run_time=.3)
#             cursor.blinking=True

#             self.wait_until_bookmark("x_plus_b")
#             cursor.blinking = False
#             x,y,_ = functerm_general[4].get_center()+0.4*DOWN
#             self.play(TransformMatchingTex(functerm, functerm_general), CursorMoveTo(cursor, x, y), run_time=.5)
#             cursor.blinking=True

#             self.wait_until_bookmark("b_pos")
#             cursor.blinking = False
#             x,y,_ = functerm_general_neg.get_center()+0.4*DOWN
#             self.play(Write(functerm_general_neg), CursorMoveTo(cursor, x, y), run_time=.5)
#             cursor.blinking=True

#         self.wait(4)


# #####################################
# #####################################
# class Func_7_5_I_4(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()
#         title = self.add_title("Shifting Sideways")

#         cords = self.add_cords([-2*np.pi, 2*np.pi, np.pi], [-2, 2, 1], x_ticks=[-2*np.pi, -np.pi, 0, np.pi, 2*np.pi], x_labels=["-2\\Pi", "-\\Pi","0", "\\Pi", "2\\Pi"], y_ticks=[-2,-1,1,2]).shift(DOWN)
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

#         a = ValueTracker(0)
#         b = ValueTracker(0)
#         graph_blue_updated = always_redraw(lambda: plane.plot(lambda x: a.get_value()+np.sin(b.get_value()+x), color=BLUE))
#         graph_grey = plane.plot(lambda x: np.sin(x), color=GREY, stroke_width=1)

#         arrow_1 = Line(plane.c2p(2*np.pi,0), plane.c2p(np.pi,0), color=ORANGE)
#         arrow_2 = Line(plane.c2p(3/2*np.pi,-1), plane.c2p(np.pi/2,-1), color=ORANGE)
#         arrow_3 = Line(plane.c2p(0,0), plane.c2p(np.pi,0), color=ORANGE)
#         arrow_4 = Line(plane.c2p(np.pi/2,1), plane.c2p(3*np.pi/2,1), color=ORANGE)

#         functerm_add = MathTex("f","(x)",  "=", "\\sin", "(x-", "b",")", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=.6)
#         functerm_subtract = MathTex("f","(x)",  "=", "\\sin", "(x+", "b",")", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=.6)
#         functerm = MathTex("f","(x)",  "=", "\\sin", "(x)", color=c1t, font_size=fs1).next_to(cords, DOWN, buff=.6)
#         self.add(graph_grey, graph_blue_updated, functerm)


#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 Quick summary: Shifting sine and cosine functions along<bookmark mark="x_axis"/> the x-axis,
#                 so shifting them left, or right.         

#                 If we want to shift <bookmark mark="shift_left"/> the function to the left,
#                 we have <bookmark mark="add"/>to add the amount we want to shift by from x.

#                 Why is that?
#                 For example, let's say we want to shift the sine function to the left by pi.
#                 This means, that the point that used to<bookmark mark="two_pi"/> be at two pi will
#                 <bookmark mark="pi"/>now be at pi. And the point that used to be <bookmark mark="onepfive"/>
#                 at one and a half pi will now <bookmark mark="half_pi"/>be at half pi.

#                 To make the value of pi equal to that of two pi, or the value of half pi equal to that of one and a half pi,
#                 we have to add pi to x. So to shift the function left, we subtract from x.
#                 <bookmark mark="reset"/>
#                 If we want to <bookmark mark="shift_right"/>shift the function to the right, we have to subtract the amount we want to shift by from x.
                
#                 Again, why is that the case?
#                 Let's say we want to shift the sine function to the right by pi.
#                 This means, that the point that used to<bookmark mark="zero_right"/> be at zero will
#                 now be <bookmark mark="pi_right"/> pi. And the point that used to <bookmark mark="pihalf_right"/>be
#                 at half pi will now <bookmark mark="onepfive_right"/>be at one point five pi.
#                 """
#         ) as tracker:            
                
#                 self.wait_until_bookmark("x_axis")
#                 cursor.blinking = False
#                 self.play(CursorMarkAxis(cursor,plane), run_time=.5)
#                 self.wait(1)
#                 self.play(CursorMoveResize(cursor,x,y,0.2,0.2), run_time=.5)
#                 cursor.blinking=True

#                 self.wait_until_bookmark("shift_left")
#                 cursor.blinking = False
#                 x,y,_ = plane.c2p(np.pi/2,1)
#                 self.play(CursorMoveTo(cursor,x,y), run_time=.5)
#                 cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/2-b.get_value(),1))
#                 cursor.add_updater(cursor_updater)
#                 self.play(b.animate.set_value(np.pi))
#                 cursor.remove_updater(cursor_updater)
#                 cursor.blinking=True

#                 self.wait_until_bookmark("add")
#                 cursor.blinking = False
#                 x,y,_ = functerm_subtract[-2].get_center()+0.4*DOWN
#                 self.play(TransformMatchingTex(functerm, functerm_subtract), CursorMoveTo(cursor, x, y), run_time=.5)
#                 cursor.blinking=True

#                 self.wait_until_bookmark("two_pi")
#                 cursor.blinking = False
#                 x,y,_ = plane.c2p(2*np.pi,0)
#                 self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#                 cursor.blinking=True

#                 self.wait_until_bookmark("pi")
#                 cursor.blinking = False
#                 cursor_updater = lambda m: m.move_to(arrow_1.get_end())
#                 cursor.add_updater(cursor_updater)
#                 self.play(Create(arrow_1), run_time=.3)
#                 arrow_1.add_tip(tip_length=0.2)
#                 cursor.remove_updater(cursor_updater)
#                 cursor.blinking=True

#                 self.wait_until_bookmark("onepfive")
#                 cursor.blinking = False
#                 x,y,_ = plane.c2p(3/2*np.pi,-1)
#                 self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#                 cursor.blinking=True

#                 self.wait_until_bookmark("half_pi")
#                 cursor.blinking = False
#                 cursor_updater = lambda m: m.move_to(arrow_2.get_end())
#                 cursor.add_updater(cursor_updater)
#                 self.play(Create(arrow_2), run_time=.3)
#                 arrow_2.add_tip(tip_length=0.2)
#                 cursor.remove_updater(cursor_updater)
#                 cursor.blinking=True

#                 self.wait_until_bookmark("reset")
#                 cursor.blinking = False
#                 x,y,_ = plane.c2p(0,0)
#                 self.play(TransformMatchingTex(functerm_subtract, functerm), CursorMoveTo(cursor, x, y), b.animate.set_value(0), Unwrite(arrow_1), Unwrite(arrow_2), run_time=.5)
#                 cursor.blinking=True

#                 self.wait_until_bookmark("shift_right")
#                 cursor.blinking = False
#                 x,y,_ = plane.c2p(np.pi/2,1)
#                 self.play(CursorMoveTo(cursor,x,y), run_time=.5)
#                 cursor_updater = lambda m: m.move_to(plane.c2p(np.pi/2-b.get_value(),1))
#                 cursor.add_updater(cursor_updater)
#                 self.play(b.animate.set_value(-np.pi))
#                 cursor.remove_updater(cursor_updater)
#                 cursor.blinking=True

#                 self.wait_until_bookmark("zero_right")
#                 cursor.blinking = False
#                 x,y,_ = plane.c2p(0,0)
#                 self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#                 cursor.blinking=True

#                 self.wait_until_bookmark("pi_right")
#                 cursor.blinking = False
#                 cursor_updater = lambda m: m.move_to(arrow_3.get_end())
#                 cursor.add_updater(cursor_updater)
#                 self.play(Create(arrow_3), run_time=.3)
#                 arrow_3.add_tip(tip_length=0.2)
#                 cursor.remove_updater(cursor_updater)
#                 cursor.blinking=True

#                 self.wait_until_bookmark("pihalf_right")
#                 cursor.blinking = False
#                 x,y,_ = plane.c2p(np.pi/2,1)
#                 self.play(CursorMoveTo(cursor,x,y), run_time=.3)
#                 cursor.blinking=True

#                 self.wait_until_bookmark("onepfive_right")
#                 cursor.blinking = False
#                 cursor_updater = lambda m: m.move_to(arrow_4.get_end())
#                 cursor.add_updater(cursor_updater)
#                 self.play(Create(arrow_4), run_time=.3)
#                 arrow_4.add_tip(tip_length=0.2)
#                 cursor.remove_updater(cursor_updater)
#                 cursor.blinking=True

#         self.wait(4)






# # PROTOTYPES=[
# #     PagePrototypeVideo.from_scene(Func_7_3_I_1_q),
# #     PagePrototypeQuestion.from_task_definition(TASK_Func_7_3_I_1_q, Func_7_3_I_1_q.__name__),
# #     PagePrototypeVideo.from_scene(Func_7_3_I_1_a),
# #     PagePrototypeVideo.from_scene(Func_7_3_I_1_b),
# #     PagePrototypeVideo.from_scene(Func_7_3_I_2_q),
# #     PagePrototypeQuestion.from_task_definition(TASK_Func_7_3_I_2_q, Func_7_3_I_2_q.__name__),
# #     PagePrototypeVideo.from_scene(Func_7_3_I_2_a),
# #     PagePrototypeVideo.from_scene(Func_7_3_I_2_b),
# #     PagePrototypeVideo.from_scene(Func_7_3_I_2_c),
# #     PagePrototypeVideo.from_scene(Func_7_3_I_2_d),
# #     PagePrototypeVideo.from_scene(Func_7_3_I_3),
# #     PagePrototypeVideo.from_scene(Func_7_3_I_4),
# #     PagePrototypeVideo.from_scene(Func_7_3_I_4),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_1_q),
# #     PagePrototypeQuestion.from_task_definition(TASK_Func_7_3_P_1_q, Func_7_3_P_1_q.__name__),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_1_a),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_1_b),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_1_c),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_1_d),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_2_q),
# #     PagePrototypeQuestion.from_task_definition(TASK_Func_7_3_P_2_q, Func_7_3_P_2_q.__name__),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_2_a),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_2_b),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_2_c),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_2_d),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_3_q),
# #     PagePrototypeQuestion.from_task_definition(TASK_Func_7_3_P_3_q, Func_7_3_P_3_q.__name__),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_3_a),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_3_b),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_3_c),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_3_d),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_4_q),
# #     PagePrototypeQuestion.from_task_definition(TASK_Func_7_3_P_4_q, Func_7_3_P_4_q.__name__),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_4_a),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_4_b),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_4_c),
# #     PagePrototypeVideo.from_scene(Func_7_3_P_4_d),
# # ]
