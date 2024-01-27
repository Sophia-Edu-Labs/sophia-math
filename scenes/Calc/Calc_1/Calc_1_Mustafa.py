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

class Calc_1_Derivative_1_q(SophiaCursorScene):
    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Calc_1_Derivative_1_q.answer-options")),
            correctAnswerIndex=1,
            questionText = self.translate("Calc_1.Derivative.1q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Calc_1.Derivative.1q.title"))
        
        qmark = ImageMobject(assets_folder / "img" / "qmark.png").shift(LEFT*5).scale(.8)
        eq = MathTex(r'f(x) = |x|sin(x)', color=c1t, font_size=fs2)
        maps = MathTex(r'f: \mathbb{R} \rightarrow \mathbb{R}', color=c1t, font_size=fs2).next_to(eq, DOWN*1.3, aligned_edge=LEFT)
        diff = Tex(self.translate("Calc_1.Derivative.1q.question"), color=c1t, font_size=fs3).next_to(eq, UP*1.3, aligned_edge=LEFT)
        # Action Sequence
        with self.voiceover(
                text=self.translate("Calc_1.Derivative.1q.voiceover")
        ) as tracker:
            
            self.play(Write(title))
            self.wait_until_bookmark("qstart")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(RIGHT*5), run_time=.5)
            self.add_shift_sound(0.5)
            self.wait_until_bookmark("qend")
            self.play(qmark.animate.shift(RIGHT*5), run_time=.5)
            self.wait_until_bookmark("function")
            self.play(Write(eq))
            self.wait_until_bookmark("diff")
            self.play(Write(diff))
            self.wait_until_bookmark("real")
            self.play(Write(maps))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


# class Calc_1_Derivative_1_a(SophiaCursorScene):

#     def task_definition(self) -> SophiaTaskDefinition:
#         return SophiaTaskDefinition(
#             answerOptions=ast.literal_eval(self.translate("Calc_1_Derivative_1_q.answer-options")),
#             correctAnswerIndex=1,
#             questionText = self.translate("Calc_1.Sequences.1q.question-text")
#         )

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title(self.translate("Calc_1.Derivative.1q.title"))

#         qmark = ImageMobject(assets_folder / "img" / "qmark.png").shift(LEFT*5).scale(.8)
#         sequence_1 = MathTex("1, 2, 3, 4, \\hdots", color=c1t, font_size=fs2)
#         sequence_2 = MathTex("1, 4, 9, 16, \\hdots", color=c1t, font_size=fs2)
#         sequence_3 = MathTex("2, 3, 5, 7, 11 \\hdots", color=c1t, font_size=fs2)
#         sequences_start = VGroup(sequence_1, sequence_2, sequence_3).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1)

#         mathematics, stats_and_econ, cs = self.translate("Calc_1.Sequences.1q.application-areas").split("|||")
#         application_area_1 = Tex(f"$\\bullet$ {mathematics}", color=c1t, font_size=fs2)
#         application_area_2 = Tex(f"$\\bullet$ {stats_and_econ}", color=c1t, font_size=fs2)
#         application_area_3 = Tex(f"$\\bullet$ {cs}", color=c1t, font_size=fs2)
#         application_areas = VGroup(application_area_1, application_area_2, application_area_3).arrange(DOWN, buff=.4, aligned_edge=LEFT).scale(0.95).move_to(sequences_start)

#         decimal_places, even_numbers, infinite_dice_rolls = self.translate("Calc_1.Sequences.1q.examples").split("|||")
#         example_1 = Tex(f"$1)$ {decimal_places}", color=c1t, font_size=fs2)
#         example_2 = Tex(f"$2)$ {even_numbers}", color=c1t, font_size=fs2)
#         example_3 = Tex(f"$3)$ {infinite_dice_rolls}", color=c1t, font_size=fs2)
#         examples = VGroup(example_1, example_2, example_3).arrange(DOWN, buff=.4, aligned_edge=LEFT).scale(0.85).move_to(sequences_start)

#         # Action Sequence
#         with self.voiceover(
#                 text=self.translate("Calc_1.Derivative.1a.voiceover")
#         ) as tracker:
            
#             self.wait_until_bookmark("title_in")
#             self.play(Write(title))

#             self.wait_until_bookmark("qmark_in")
#             self.add_shift_sound(0.5)
#             self.play(qmark.animate.shift(RIGHT*5), run_time=.5)

#             self.wait_until_bookmark("qmark_out")
#             self.add_shift_sound(0.5)
#             self.play(qmark.animate.shift(RIGHT*5), run_time=.5)

#             self.wait_until_bookmark("sequence_1_in")
#             self.play(Write(sequence_1))

#             self.wait_until_bookmark("sequence_2_in")
#             self.play(Write(sequence_2))

#             self.wait_until_bookmark("sequence_3_in")
#             self.play(Write(sequence_3))

#             self.wait_until_bookmark("unwrite_sequences")
#             self.play(Unwrite(sequences_start), run_time=.5)

#             self.wait_until_bookmark("application_area_1")
#             self.play(Write(application_area_1))

#             self.wait_until_bookmark("application_area_2")
#             self.play(Write(application_area_2))

#             self.wait_until_bookmark("application_area_3")
#             self.play(Write(application_area_3))

#             self.wait_until_bookmark("example_1")
#             self.play(Unwrite(application_areas), run_time=.5)
#             self.play(Write(example_1))

#             self.wait_until_bookmark("example_2")
#             self.play(Write(example_2))

#             self.wait_until_bookmark("example_3")
#             self.play(Write(example_3))

#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)