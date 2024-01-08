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

##################################### SUBCHAPTER 1: Sequences
#####################################
class Calc_1_Sequences_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Folgen")

       

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").shift(LEFT*5).scale(.8)
        sequence_1 = MathTex("1, 2, 3, 4, \\hdots", color=c1t, font_size=fs2)
        sequence_2 = MathTex("1, 4, 9, 16, \\hdots", color=c1t, font_size=fs2)
        sequence_3 = MathTex("2, 3, 5, 7, 11 \\hdots", color=c1t, font_size=fs2)
        sequences_start = VGroup(sequence_1, sequence_2, sequence_3).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1)

        application_area_1 = Tex("$\\bullet$ Mathematik", color=c1t, font_size=fs2)
        application_area_2 = Tex("$\\bullet$ Statistik \\& Wirtschaft", color=c1t, font_size=fs2)
        application_area_3 = Tex("$\\bullet$ Informatik", color=c1t, font_size=fs2)
        application_areas = VGroup(application_area_1, application_area_2, application_area_3).arrange(DOWN, buff=.4, aligned_edge=LEFT).scale(0.95).move_to(sequences_start)

        example_1 = Tex("$1)$ Nachkommastellen von $\\Pi$", color=c1t, font_size=fs2)
        example_2 = Tex("$2)$ Gerade natürliche Zahlen", color=c1t, font_size=fs2)
        example_3 = Tex("$3)$ Unendliche Würfelwürfe", color=c1t, font_size=fs2)
        examples = VGroup(example_1, example_2, example_3).arrange(DOWN, buff=.4, aligned_edge=LEFT).scale(0.85).move_to(sequences_start)

        # Action Sequence
        with self.voiceover(
                text=""" 
Kurzer Überblick zum <bookmark mark="title_in"/> Thema Folgen: Was ist<bookmark mark="qmark_in"/> eine Folge, und wofür benutzen wir sie?
Eine Folge ist intuitiv gesagt eine Menge von Zahlen, die irgendwie geordnet sind. <bookmark mark="qmark_out"/>Zum Beispiel kann man <bookmark mark="sequence_1_in"/>die Natürlichen Zahlen von klein nach groß als Folge aufschreiben: 1, 2, 3, 4, und so weiter...
Eine weitere Folge sind die Quadratzahlen <bookmark mark="sequence_2_in"/>in aufsteigender Reihenfolge: 1, 4, 9, 16, 25, und so weiter... Oder die Primzahlen in aufsteigender <bookmark mark="sequence_3_in"/>Reihenfolge: 2, 3, 5, 7, 11, 13, und so weiter...
Folgen sind in den verschiedensten Bereichen sehr <bookmark mark="unwrite_sequences"/>wichtig: <bookmark mark="application_area_1"/>In der Mathematik verwendet man Folgen um Grenzwerte oder die Ableitung zu definieren. In <bookmark mark="application_area_2"/>der Statistik und in Wirtschaft werden Folgen verwendet um Zeitreihen zu modellieren, zum Beispiel Aktienkurse. Und in <bookmark mark="application_area_3"/>der Informatik werden Folgen verwendet um die Laufzeit von Algorithmen zu analysieren.
Jetzt du: Was von den folgenden Beispielen ist KEINE Folge:<bookmark mark="example_1"/>
Erstes Beispiel: Die Nachkommastellen von $\\Pi$: 1,4,1,5,9 in der Reihenfolge, wie sie auftreten. <bookmark mark="example_2"/>Zweites Beispiel: Die geraden natürlichen Zahlen: also alle positiven ganzen Zahlen, die durch zwei teilbar sind. ... Und schließlich:<bookmark mark="example_3"/>Drittes Beispiel. Ein unendlich alter Affe würfelt unendlich oft einen Würfel und schreibt jedes mal die Augenzahl auf, die er gewürfelt hat.
Also: ... Welches der Beispiele ist keine Folge?
"""
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            self.wait_until_bookmark("qmark_in")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(RIGHT*5), run_time=.5)

            self.wait_until_bookmark("qmark_out")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(RIGHT*5), run_time=.5)

            self.wait_until_bookmark("sequence_1_in")
            self.play(Write(sequence_1))

            self.wait_until_bookmark("sequence_2_in")
            self.play(Write(sequence_2))

            self.wait_until_bookmark("sequence_3_in")
            self.play(Write(sequence_3))

            self.wait_until_bookmark("unwrite_sequences")
            self.play(Unwrite(sequences_start), run_time=.5)

            self.wait_until_bookmark("application_area_1")
            self.play(Write(application_area_1))

            self.wait_until_bookmark("application_area_2")
            self.play(Write(application_area_2))

            self.wait_until_bookmark("application_area_3")
            self.play(Write(application_area_3))

            self.wait_until_bookmark("example_1")
            self.play(Unwrite(application_areas), run_time=.5)
            self.play(Write(example_1))

            self.wait_until_bookmark("example_2")
            self.play(Write(example_2))

            self.wait_until_bookmark("example_3")
            self.play(Write(example_3))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_1_Sequences_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Folgen")
        self.add(title)

        example_1 = Tex("$1)$ Nachkommastellen von $\\Pi$", color=c1t, font_size=fs2)
        example_2 = Tex("$2)$ Gerade natürliche Zahlen", color=c1t, font_size=fs2)
        example_3 = Tex("$3)$ Unendliche Würfelwürfe", color=c1t, font_size=fs2)
        examples = VGroup(example_1, example_2, example_3).arrange(DOWN, buff=.4, aligned_edge=LEFT).scale(0.85).set_y(1)

        sequence_1 = MathTex("1, 4, 1, 5, 9, \\hdots", color=c1t, font_size=fs2).next_to(examples, DOWN, buff=.8)
        sequence_2_1 = MathTex("2, 4, 6, 8, \\hdots", color=c1t, font_size=fs2).next_to(examples, DOWN, buff=.8)
        sequence_2_2 = MathTex("4, 2, 8, 6, \\hdots", color=c1t, font_size=fs2).next_to(sequence_2_1, DOWN, buff=.4)


        self.add(examples)

        # Action Sequence
        with self.voiceover(
                text=""" 
Die <bookmark mark="example_1_green"/>Nachkommastellen von Pi sind eine Folge, wenn man sie in ihrer Reihenfolge ordnet:<bookmark mark="example_1_sequence"/>1, 4, 1, 5, 9, 2, ... und so weiter...
Die <bookmark mark="example_2_red"/>geraden natürlichen Zahlen sind keine Folge, da sie nicht unbedingt geordnet sind: So stellt <bookmark mark="example_2_sequence_1"/>2, 4, 6, 8, und so weiter die geraden natürlichen Zahlen dar, aber auch <bookmark mark="example_2_sequence_2"/>4, 2, 8, 6, und so weiter stellt die geraden natürlichen Zahlen dar. Die geraden natürlichen Zahlen sind also keine Folge, da sie keine Reihenfolge haben. Wenn wir allerdings die geraden natürlichen Zahlen in aufsteigender Reihenfolge aufschreiben, dann <bookmark mark="example_2_sequence_1_green"/>haben wir eine Folge, weil wir eine Reihenfolge haben: 2, 4, 6, 8, und so weiter...
Schließlich stellen die Augenzahlen der <bookmark mark="example_3_green"/>unendlichen Würfelwürfe auch eine Folge dar, wenn wir sie in der Reihenfolge aufschreiben, in der sie gewürfelt wurden.
"""
        ) as tracker:
            
            self.wait_until_bookmark("example_1_green")
            self.play(example_1.animate.set_color(GREEN))

            self.wait_until_bookmark("example_1_sequence")
            self.play(Write(sequence_1))

            self.wait_until_bookmark("example_2_red")
            self.play(example_2.animate.set_color(RED), Unwrite(sequence_1))

            self.wait_until_bookmark("example_2_sequence_1")
            self.play(Write(sequence_2_1))

            self.wait_until_bookmark("example_2_sequence_2")
            self.play(Write(sequence_2_2))

            self.wait_until_bookmark("example_2_sequence_1_green")
            self.play(sequence_2_1.animate.set_color(GREEN), Unwrite(sequence_2_2))

            self.wait_until_bookmark("example_3_green")
            self.play(example_3.animate.set_color(GREEN), Unwrite(sequence_2_1))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### 
#####################################
class Calc_1_Sequences_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Definition: Folge")

        definition_1 = Tex("Funktion $a$", "$:\\mathbb N$", "$\\rightarrow$", " $\\mathbb R$", color=c1t, font_size=fs2).set_y(2)
        definition_2 = MathTex("n", "\\mapsto", "a_n", color=c1t, font_size=fs2).next_to(definition_1, DOWN, buff=.4)
        definition_2.shift((definition_1[-2].get_x()-definition_2[1].get_x())*RIGHT)
        definition = VGroup(definition_1, definition_2)
        def_rectangle = SurroundingRectangle(definition, color=BLUE, buff=.2, corner_radius=.2)
        sequence_general = MathTex("a_1, a_2, a_3, \\hdots", color=c1t, font_size=fs2).next_to(definition_2, DOWN, buff=.8).set_x(0)
        
        def_n = Tex("$n$: Index", color=c3t, font_size=fs2)
        def_a_n = Tex("$a_n$: Glied an Stelle $n$", color=c3t, font_size=fs2)
        added_defs = VGroup(def_n, def_a_n).arrange(DOWN, buff=.2, aligned_edge=LEFT).next_to(sequence_general, DOWN, buff=.8)

        self.add(title)

        # Action Sequence
        with self.voiceover(
                text=""" 
Formal definiert ist eine Folge nichts anderes <bookmark mark="definition_in_1"/>als eine Funktion a, die von <bookmark mark="definition_in_2"/>den natürlichen Zahlen <bookmark mark="definition_in_3"/>in die re-ellen Zahlen abbildet. Konkret wird jede natürliche <bookmark mark="n_in"/>Zahl n auf eine reelle <bookmark mark="a_in"/>Zahl a-n abgebildet.
Wir bezeichnen <bookmark mark="highlight_n"/>dann n als den Index <bookmark mark="highlight_a"/>und a-n als das Glied an der Stelle n.
Wir schreiben die Folge dann allgemein <bookmark mark="sequence_in"/>als a-1, a-2, a-3, und so weiter... Dann steht a-1 für das erste Glied, a-2 für das zweite Glied, und so weiter...
Betrachten wir zum Beispiel die Folge, die <bookmark mark="example_in"/>mit 1, 1, 2, 3, 5 beginnt. Was ist das Glied a-4 in dieser Folge?
"""
        ) as tracker:
            
            self.wait_until_bookmark("definition_in_1")
            self.play(Write(definition_1[0]), run_time=.5)

            self.wait_until_bookmark("definition_in_2")
            self.play(Write(definition_1[1]), run_time=.5)

            self.wait_until_bookmark("definition_in_3")
            self.play(Write(definition_1[2]), run_time=.5)
            self.play(Write(definition_1[3]), run_time=.5)

            self.wait_until_bookmark("n_in")
            self.play(Write(definition_2[0]), run_time=.5)

            self.wait_until_bookmark("a_in")
            self.play(Write(definition_2[1]), run_time=.5)
            self.play(Write(definition_2[2]), run_time=.5)
            self.wait(.2)
            self.add_pencil_sound(1)
            self.play(Create(def_rectangle), run_time=1)

            self.wait_until_bookmark("highlight_n")
            self.play(Indicate(definition_2[0], scale_factor=1.5, color=RED), Write(def_n))

            self.wait_until_bookmark("highlight_a")
            self.play(Indicate(definition_2[2], scale_factor=1.5, color=RED), Write(def_a_n))

            self.wait_until_bookmark("sequence_in")
            self.play(Write(sequence_general))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)

PROTOTYPES=[
########################################################################## Practice: Recognizing Exponential Growth
    PagePrototypeVideo.from_scene(Calc_1_Sequences_1_q),
]