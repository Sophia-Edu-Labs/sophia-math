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
class LinAlg_1_5_I_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")

        mat_1 = MathTex("\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} 1 \\\\ 0 \\end{pmatrix}", "=\\begin{pmatrix} 1 \\\\ 0 \\end{pmatrix}", color=c1t, font_size=fs2)
        mat_2 = MathTex("\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} 0 \\\\ 1 \\end{pmatrix}", "=\\begin{pmatrix} ? \\\\ ? \\end{pmatrix}", color=c1t, font_size=fs2).move_to(mat_1)

        # Action Sequence
        with self.voiceover(
                text=""" 
                Wir haben ja bereits gesehen, dass wir eine Matrix auch als lineare Abbildung auffassen können.
                Betrachten wir als Beispiel die Matrix <bookmark mark="mat_1"/> 1 0 0 2.
                Wenden wir jetzt die Matrix auf den Vektor <bookmark mark="vec_1_in"/> 1 0 an.
                Dafür <bookmark mark="multiply"/> multiplizieren wir ja die Matrix mit dem Vektor. <break time="0.8s"/>.
                Da ist das Ergebnis ja der Vektor <bookmark mark="sol_in"/> 1 0, also bleibt der Vektor gleich.
                <bookmark mark="cleanup"/>
                Betrachten wir jetzt ein anderes Beispiel, nämlich den Vektor <bookmark mark="vec_2_in"/> 0 1.
                Auf welchen<bookmark mark="qmark_in"/> Vektor wird dieser Vektor abgebildet?
                """
        ) as tracker:

            self.wait_until_bookmark("mat_1")
            self.play(Write(mat_1[0]), run_time=2)

            self.wait_until_bookmark("vec_1_in")
            self.play(Write(mat_1[2]), run_time=2)

            self.wait_until_bookmark("multiply")
            self.play(Write(mat_1[1]), run_time=2)

            self.wait_until_bookmark("sol_in")
            self.play(Write(mat_1[3]), run_time=2)

            self.wait_until_bookmark("cleanup")
            self.add(mat_2[0])
            self.play(FadeOut(mat_1), run_time=2)

            self.wait_until_bookmark("vec_2_in")
            self.play(Write(mat_2[2]), run_time=2)

            self.wait_until_bookmark("qmark_in")
            self.play(Write(mat_2[3]), Write(mat_2[1]), run_time=2)

            # Wait for 4 seconds at the end of the animation
            self.wait(4)