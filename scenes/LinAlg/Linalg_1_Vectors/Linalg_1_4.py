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
from sophialib.tasks.sophiataskdefinition import SophiaTaskDefinition
import ast

#####################################
#####################################
class LinAlg_1_4_I_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Lineare Abhängigkeit")

        vec_1 = MathTex("\Bigg\{","\\begin{pmatrix} 1 \\\\ 0 \\\\ 0  \\end{pmatrix}",","," \\begin{pmatrix} 0 \\\\ 1 \\\\ 0  \\end{pmatrix}","\Bigg\}", color=c1t, font_size=fs2).next_to(title, DOWN, buff=.6)
        vec_new_1 = MathTex("\\begin{pmatrix} ? \\\\ ? \\\\ ?  \\end{pmatrix}", color=c1t, font_size=fs2).next_to(vec_1, DOWN, buff=.6).next_to(vec_1[1], DOWN, buff=.4)
        vec_new_2 = MathTex("\\begin{pmatrix} 1 \\\\ 1 \\\\ 0  \\end{pmatrix}", color=c1t, font_size=fs2).next_to(vec_new_1, DOWN, buff=.6).move_to(vec_new_1)

        vec_sum = MathTex("\\begin{pmatrix} 1 \\\\ 0 \\\\ 0  \\end{pmatrix}","+"," \\begin{pmatrix} 0 \\\\ 1 \\\\ 0  \\end{pmatrix}", color=c1t, font_size=fs2).next_to(vec_1, DOWN, buff=.4)
        eq_vec_sum = MathTex("=", color=c1t, font_size=fs2).next_to(vec_sum, LEFT, buff=.1)
        lin_dep = MathTex("\\text{linear abhängig}", color=RED, font_size=fs2).next_to(vec_sum, DOWN, buff=.4)
        lin_indep = MathTex("\\text{linear unabhängig}", color=GREEN, font_size=fs2).next_to(vec_sum, DOWN, buff=.4)

        vec_new_3 = MathTex("\\begin{pmatrix} ? \\\\ ? \\\\ ?  \\end{pmatrix}", color=c1t, font_size=fs2).next_to(vec_1, DOWN, buff=.6).next_to(vec_1[1], DOWN, buff=.4)
        vec_new_4 = MathTex("\\begin{pmatrix} 0 \\\\ 0 \\\\ 1  \\end{pmatrix}", color=c1t, font_size=fs2).next_to(vec_new_3, DOWN, buff=.6).move_to(vec_new_3)
        
        # Action Sequence
        with self.voiceover(
                text=""" Betrachte die zwei<bookmark mark="vec_1"/> Vektoren 1 0 0 <break time="0.6s"/><bookmark mark="vec_2"/>und 0 1 0.
                        Nehmen wir nun einen<bookmark mark="vec_new_in"/> dritten Vektor hinzu, und fragen uns, ob wir diesen Vektor als Linearkombination der beiden anderen Vektoren darstellen können.
                        Betrachten wir zum Beispiel den <bookmark mark="vec_new_transform"/>Vektor 1 1 0. Dieser <bookmark mark="shift_left"/>lässt sich als Linearkombination der beiden anderen Vektoren darstellen, nämlich als <bookmark mark="sum_1"/>ein mal der erste Vektor plus <bookmark mark="sum_2"/>ein mal der zweite Vektor.
                        In diesem Fall sagt man, <bookmark mark="dep"/>dass die drei Vektoren linear abhängig sind.
                        <break time="2s"/>
                        <bookmark mark="cleanup"/>
                        Betrachten wir jetzt den Vektor <bookmark mark="vec_new_in_2"/>0 0 1. Man kann einfach sehen, dass sich dieser Vektor nicht als Linearkombination der beiden anderen Vektoren darstellen lässt. In diesem Fall sagt man, dass die drei Vektoren <bookmark mark="indep"/>linear unabhängig sind.
                """
        ) as tracker:

            self.wait_until_bookmark("vec_1")
            self.play(Write(VGroup(vec_1[0], vec_1[1])), run_time=2)

            self.wait_until_bookmark("vec_2")
            self.play(Write(VGroup(vec_1[2], vec_1[3], vec_1[4])), run_time=2)

            self.wait_until_bookmark("vec_new_in")
            self.play(Write(vec_new_1), run_time=2)

            self.wait_until_bookmark("vec_new_transform")
            self.play(Transform(vec_new_1, vec_new_2), run_time=2)

            self.wait_until_bookmark("shift_left")
            self.remove(vec_new_2)
            self.play(vec_new_2.animate.next_to(eq_vec_sum, LEFT, buff=.1), run_time=.6)

            self.wait_until_bookmark("sum_1")
            vec_1[1].set_color(PURE_BLUE)
            self.play(Write(eq_vec_sum), Write(vec_sum[0]), run_time=.6)
            self.wait(1)
            vec_1[1].set_color(c1t)

            self.wait_until_bookmark("sum_2")
            vec_1[3].set_color(PURE_BLUE)
            self.play(Write(VGroup(vec_sum[1], vec_sum[2])), run_time=.6)
            self.wait(1)
            vec_1[3].set_color(c1t)

            self.wait_until_bookmark("dep")
            self.play(Write(lin_dep))

            self.wait_until_bookmark("cleanup")
            self.play(FadeOut(VGroup(vec_sum, eq_vec_sum, lin_dep, vec_new_2)), Write(vec_new_1), run_time=2)

            self.wait_until_bookmark("vec_new_in_2")
            self.play(Write(vec_new_3), run_time=2)

            self.wait_until_bookmark("indep")
            self.play(Write(lin_indep), run_time=2)


            # Wait for 4 seconds at the end of the animation
            self.wait(4)