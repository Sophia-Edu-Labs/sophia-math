# # Import necessary libraries and modules
# from abc import ABCMeta, abstractmethod
# from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
# from sophialib.styles.sophiascene import (CursorMoveToCurved, CursorPositionTracker,
#                                           CursorPositionTracking,
#                                           CursorResizeDefault, SophiaScene,
#                                           assets_folder, AltCursor,
#                                           SophiaCursorScene, CursorMoveTo,
#                                           CursorMoveResize, Notepad, CursorMarkAxis, Bubble)
# from sophialib.styles.styleconstants import *
# from sophialib.styles.sophiaobjects import *
# from manim import *
# from PIL import Image
# import numpy as np
# from pathlib import Path
# from sophialib.tasks.sophiataskdefinition import SophiaTaskDefinition
# import ast

# #####################################
# #####################################
# class LinAlg_1_4_I_1(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()


#         title = self.add_title(self.translate("LinAlg.14I1.title"))

#         indep = self.translate("LinAlg.14I1.indep")
#         dep = self.translate("LinAlg.14I1.dep")

#         vec_1 = MathTex("\Bigg\{","\\begin{pmatrix} 1 \\\\ 0 \\\\ 0  \\end{pmatrix}","\\,,\\,"," \\begin{pmatrix} 0 \\\\ 1 \\\\ 0  \\end{pmatrix}","\Bigg\}", color=c1t, font_size=fs2).next_to(title, DOWN, buff=.6).shift(0.5*RIGHT)
#         copy_1, copy_2 = vec_1[1].copy(), vec_1[3].copy()

#         vec_new_1 = MathTex("\\begin{pmatrix} ? \\\\ ? \\\\ ?  \\end{pmatrix}", color=c1t, font_size=fs2).next_to(vec_1, DOWN, buff=.6).next_to(vec_1[1], DOWN, buff=.4)
#         vec_new_2 = MathTex("\\begin{pmatrix} 1 \\\\ 1 \\\\ 0  \\end{pmatrix}", color=c1t, font_size=fs2).next_to(vec_new_1, DOWN, buff=.6).move_to(vec_new_1)

#         vec_sum = MathTex("\\begin{pmatrix} 1 \\\\ 0 \\\\ 0  \\end{pmatrix}","+"," \\begin{pmatrix} 0 \\\\ 1 \\\\ 0  \\end{pmatrix}", color=c1t, font_size=fs2).next_to(vec_1, DOWN, buff=.4)
#         eq_vec_sum = MathTex("=", color=c1t, font_size=fs2).next_to(vec_sum, LEFT, buff=0.1)
#         lin_dep = MathTex(f"\\text{{{dep}}}", color=RED, font_size=fs2).next_to(vec_sum, DOWN, buff=.6).set_x(0)
#         lin_indep = MathTex(f"\\text{{{indep}}}", color=RED, font_size=fs2).next_to(vec_sum, DOWN, buff=.6).set_x(0)

#         vec_new_3 = MathTex("\\begin{pmatrix} ? \\\\ ? \\\\ ?  \\end{pmatrix}", color=c1t, font_size=fs2).next_to(vec_1, DOWN, buff=.6).next_to(vec_1[1], DOWN, buff=.4)
#         vec_new_4 = MathTex("\\begin{pmatrix} 0 \\\\ 0 \\\\ 1  \\end{pmatrix}", color=c1t, font_size=fs2).next_to(vec_new_3, DOWN, buff=.6).move_to(vec_new_3)
        
#         # Action Sequence
#         with self.voiceover(
#                 text=self.translate("LinAlg.14I1.voiceover")
#         ) as tracker:

#             self.wait_until_bookmark("vec_1")
#             self.play(Write(VGroup(vec_1[0], vec_1[1])), run_time=2)

#             self.wait_until_bookmark("vec_2")
#             self.play(Write(VGroup(vec_1[2], vec_1[3], vec_1[4])), run_time=2)

#             self.wait_until_bookmark("vec_new_in")
#             self.play(Write(vec_new_1), run_time=2)

#             self.wait_until_bookmark("vec_new_transform")
#             self.play(Transform(vec_new_1, vec_new_2), run_time=1)

#             self.wait_until_bookmark("shift_left")
#             self.remove(vec_new_1)
#             self.play(vec_new_2.animate.shift(LEFT*1.2), run_time=.6)

#             self.wait_until_bookmark("sum_1")
#             vec_1[1].set_color(PURE_BLUE)
#             self.play(ReplacementTransform(copy_1, vec_sum[0]), Write(eq_vec_sum), run_time=.6)
#             self.wait(1)
#             vec_1[1].set_color(c1t)

#             self.wait_until_bookmark("sum_2")
#             vec_1[3].set_color(PURE_BLUE)
#             self.play(Write(vec_sum[1]), ReplacementTransform(copy_2, vec_sum[2]), run_time=.6)
#             self.wait(1)
#             vec_1[3].set_color(c1t)

#             self.wait_until_bookmark("dep")
#             self.play(Write(lin_dep), run_time=1)

#             self.wait_until_bookmark("cleanup")
#             self.play(FadeOut(VGroup(vec_sum, eq_vec_sum, lin_dep, vec_new_2)), Write(vec_new_3), run_time=2)

#             self.wait_until_bookmark("vec_new_in_2")
#             self.play(Transform(vec_new_3, vec_new_4), run_time=2)

#             self.wait_until_bookmark("indep")
#             self.play(Write(lin_indep), run_time=1)


#             # Wait for 4 seconds at the end of the animation
#             self.wait(4)