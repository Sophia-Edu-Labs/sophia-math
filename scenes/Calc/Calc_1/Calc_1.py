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

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=["Nachkommastellen von $\\Pi$", "Gerade natürliche Zahlen", "Unendliche Würfelwürfe", "Alle drei sind Folgen."],
            correctAnswerIndex=1,
            questionText = "Welches der folgenden Beispiele ist KEINE Folge?"
        )

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

# class Calc_1_Sequences_1_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("Folgen")
#         self.add(title)

#         example_1 = Tex("$1)$ Nachkommastellen von $\\Pi$", color=c1t, font_size=fs2)
#         example_2 = Tex("$2)$ Gerade natürliche Zahlen", color=c1t, font_size=fs2)
#         example_3 = Tex("$3)$ Unendliche Würfelwürfe", color=c1t, font_size=fs2)
#         examples = VGroup(example_1, example_2, example_3).arrange(DOWN, buff=.4, aligned_edge=LEFT).scale(0.85).set_y(1)

#         sequence_1 = MathTex("1, 4, 1, 5, 9, \\hdots", color=c1t, font_size=fs2).next_to(examples, DOWN, buff=.8)
#         sequence_2_1 = MathTex("2, 4, 6, 8, \\hdots", color=c1t, font_size=fs2).next_to(examples, DOWN, buff=.8)
#         sequence_2_2 = MathTex("4, 2, 8, 6, \\hdots", color=c1t, font_size=fs2).next_to(sequence_2_1, DOWN, buff=.4)


#         self.add(examples)

#         # Action Sequence
#         with self.voiceover(
#                 text="""Das ist leider falsch.
# Die <bookmark mark="example_1_green"/>Nachkommastellen von Pi sind eine Folge, wenn man sie in ihrer Reihenfolge ordnet:<bookmark mark="example_1_sequence"/>1, 4, 1, 5, 9, 2, ... und so weiter...
# Die <bookmark mark="example_2_red"/>geraden natürlichen Zahlen sind keine Folge, da sie nicht unbedingt geordnet sind: So stellt <bookmark mark="example_2_sequence_1"/>2, 4, 6, 8, und so weiter die geraden natürlichen Zahlen dar, aber auch <bookmark mark="example_2_sequence_2"/>4, 2, 8, 6, und so weiter stellt die geraden natürlichen Zahlen dar. Die geraden natürlichen Zahlen sind also keine Folge, da sie keine Reihenfolge haben. Wenn wir allerdings die geraden natürlichen Zahlen in aufsteigender Reihenfolge aufschreiben, dann <bookmark mark="example_2_sequence_1_green"/>haben wir eine Folge, weil wir eine Reihenfolge haben: 2, 4, 6, 8, und so weiter...
# Schließlich stellen die Augenzahlen der <bookmark mark="example_3_green"/>unendlichen Würfelwürfe auch eine Folge dar, wenn wir sie in der Reihenfolge aufschreiben, in der sie gewürfelt wurden.
# """
#         ) as tracker:
            
#             self.wait_until_bookmark("example_1_green")
#             self.play(example_1.animate.set_color(GREEN))

#             self.wait_until_bookmark("example_1_sequence")
#             self.play(Write(sequence_1))

#             self.wait_until_bookmark("example_2_red")
#             self.play(example_2.animate.set_color(RED), Unwrite(sequence_1))

#             self.wait_until_bookmark("example_2_sequence_1")
#             self.play(Write(sequence_2_1))

#             self.wait_until_bookmark("example_2_sequence_2")
#             self.play(Write(sequence_2_2))

#             self.wait_until_bookmark("example_2_sequence_1_green")
#             self.play(sequence_2_1.animate.set_color(GREEN), Unwrite(sequence_2_2))

#             self.wait_until_bookmark("example_3_green")
#             self.play(example_3.animate.set_color(GREEN), Unwrite(sequence_2_1))


#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)
# #
# class Calc_1_Sequences_1_b(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("Folgen")
#         self.add(title)

#         example_1 = Tex("$1)$ Nachkommastellen von $\\Pi$", color=c1t, font_size=fs2)
#         example_2 = Tex("$2)$ Gerade natürliche Zahlen", color=c1t, font_size=fs2)
#         example_3 = Tex("$3)$ Unendliche Würfelwürfe", color=c1t, font_size=fs2)
#         examples = VGroup(example_1, example_2, example_3).arrange(DOWN, buff=.4, aligned_edge=LEFT).scale(0.85).set_y(1)

#         sequence_1 = MathTex("1, 4, 1, 5, 9, \\hdots", color=c1t, font_size=fs2).next_to(examples, DOWN, buff=.8)
#         sequence_2_1 = MathTex("2, 4, 6, 8, \\hdots", color=c1t, font_size=fs2).next_to(examples, DOWN, buff=.8)
#         sequence_2_2 = MathTex("4, 2, 8, 6, \\hdots", color=c1t, font_size=fs2).next_to(sequence_2_1, DOWN, buff=.4)


#         self.add(examples)

#         # Action Sequence
#         with self.voiceover(
#                 text="""Super, das ist richtig!
# Die <bookmark mark="example_1_green"/>Nachkommastellen von Pi sind eine Folge, wenn man sie in ihrer Reihenfolge ordnet:<bookmark mark="example_1_sequence"/>1, 4, 1, 5, 9, 2, ... und so weiter...
# Die <bookmark mark="example_2_red"/>geraden natürlichen Zahlen sind keine Folge, da sie nicht unbedingt geordnet sind: So stellt <bookmark mark="example_2_sequence_1"/>2, 4, 6, 8, und so weiter die geraden natürlichen Zahlen dar, aber auch <bookmark mark="example_2_sequence_2"/>4, 2, 8, 6, und so weiter stellt die geraden natürlichen Zahlen dar. Die geraden natürlichen Zahlen sind also keine Folge, da sie keine Reihenfolge haben. Wenn wir allerdings die geraden natürlichen Zahlen in aufsteigender Reihenfolge aufschreiben, dann <bookmark mark="example_2_sequence_1_green"/>haben wir eine Folge, weil wir eine Reihenfolge haben: 2, 4, 6, 8, und so weiter...
# Schließlich stellen die Augenzahlen der <bookmark mark="example_3_green"/>unendlichen Würfelwürfe auch eine Folge dar, wenn wir sie in der Reihenfolge aufschreiben, in der sie gewürfelt wurden.
# """
#         ) as tracker:
            
#             self.wait_until_bookmark("example_1_green")
#             self.play(example_1.animate.set_color(GREEN))

#             self.wait_until_bookmark("example_1_sequence")
#             self.play(Write(sequence_1))

#             self.wait_until_bookmark("example_2_red")
#             self.play(example_2.animate.set_color(RED), Unwrite(sequence_1))

#             self.wait_until_bookmark("example_2_sequence_1")
#             self.play(Write(sequence_2_1))

#             self.wait_until_bookmark("example_2_sequence_2")
#             self.play(Write(sequence_2_2))

#             self.wait_until_bookmark("example_2_sequence_1_green")
#             self.play(sequence_2_1.animate.set_color(GREEN), Unwrite(sequence_2_2))

#             self.wait_until_bookmark("example_3_green")
#             self.play(example_3.animate.set_color(GREEN), Unwrite(sequence_2_1))


#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)
# #      
# class Calc_1_Sequences_1_c(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("Folgen")
#         self.add(title)

#         example_1 = Tex("$1)$ Nachkommastellen von $\\Pi$", color=c1t, font_size=fs2)
#         example_2 = Tex("$2)$ Gerade natürliche Zahlen", color=c1t, font_size=fs2)
#         example_3 = Tex("$3)$ Unendliche Würfelwürfe", color=c1t, font_size=fs2)
#         examples = VGroup(example_1, example_2, example_3).arrange(DOWN, buff=.4, aligned_edge=LEFT).scale(0.85).set_y(1)

#         sequence_1 = MathTex("1, 4, 1, 5, 9, \\hdots", color=c1t, font_size=fs2).next_to(examples, DOWN, buff=.8)
#         sequence_2_1 = MathTex("2, 4, 6, 8, \\hdots", color=c1t, font_size=fs2).next_to(examples, DOWN, buff=.8)
#         sequence_2_2 = MathTex("4, 2, 8, 6, \\hdots", color=c1t, font_size=fs2).next_to(sequence_2_1, DOWN, buff=.4)


#         self.add(examples)

#         # Action Sequence
#         with self.voiceover(
#                 text=""" Das ist leider falsch.
# Die <bookmark mark="example_1_green"/>Nachkommastellen von Pi sind eine Folge, wenn man sie in ihrer Reihenfolge ordnet:<bookmark mark="example_1_sequence"/>1, 4, 1, 5, 9, 2, ... und so weiter...
# Die <bookmark mark="example_2_red"/>geraden natürlichen Zahlen sind keine Folge, da sie nicht unbedingt geordnet sind: So stellt <bookmark mark="example_2_sequence_1"/>2, 4, 6, 8, und so weiter die geraden natürlichen Zahlen dar, aber auch <bookmark mark="example_2_sequence_2"/>4, 2, 8, 6, und so weiter stellt die geraden natürlichen Zahlen dar. Die geraden natürlichen Zahlen sind also keine Folge, da sie keine Reihenfolge haben. Wenn wir allerdings die geraden natürlichen Zahlen in aufsteigender Reihenfolge aufschreiben, dann <bookmark mark="example_2_sequence_1_green"/>haben wir eine Folge, weil wir eine Reihenfolge haben: 2, 4, 6, 8, und so weiter...
# Schließlich stellen die Augenzahlen der <bookmark mark="example_3_green"/>unendlichen Würfelwürfe auch eine Folge dar, wenn wir sie in der Reihenfolge aufschreiben, in der sie gewürfelt wurden.
# """
#         ) as tracker:
            
#             self.wait_until_bookmark("example_1_green")
#             self.play(example_1.animate.set_color(GREEN))

#             self.wait_until_bookmark("example_1_sequence")
#             self.play(Write(sequence_1))

#             self.wait_until_bookmark("example_2_red")
#             self.play(example_2.animate.set_color(RED), Unwrite(sequence_1))

#             self.wait_until_bookmark("example_2_sequence_1")
#             self.play(Write(sequence_2_1))

#             self.wait_until_bookmark("example_2_sequence_2")
#             self.play(Write(sequence_2_2))

#             self.wait_until_bookmark("example_2_sequence_1_green")
#             self.play(sequence_2_1.animate.set_color(GREEN), Unwrite(sequence_2_2))

#             self.wait_until_bookmark("example_3_green")
#             self.play(example_3.animate.set_color(GREEN), Unwrite(sequence_2_1))


#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)
# #       
# class Calc_1_Sequences_1_d(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("Folgen")
#         self.add(title)

#         example_1 = Tex("$1)$ Nachkommastellen von $\\Pi$", color=c1t, font_size=fs2)
#         example_2 = Tex("$2)$ Gerade natürliche Zahlen", color=c1t, font_size=fs2)
#         example_3 = Tex("$3)$ Unendliche Würfelwürfe", color=c1t, font_size=fs2)
#         examples = VGroup(example_1, example_2, example_3).arrange(DOWN, buff=.4, aligned_edge=LEFT).scale(0.85).set_y(1)

#         sequence_1 = MathTex("1, 4, 1, 5, 9, \\hdots", color=c1t, font_size=fs2).next_to(examples, DOWN, buff=.8)
#         sequence_2_1 = MathTex("2, 4, 6, 8, \\hdots", color=c1t, font_size=fs2).next_to(examples, DOWN, buff=.8)
#         sequence_2_2 = MathTex("4, 2, 8, 6, \\hdots", color=c1t, font_size=fs2).next_to(sequence_2_1, DOWN, buff=.4)


#         self.add(examples)

#         # Action Sequence
#         with self.voiceover(
#                 text=""" Das ist leider falsch.
# Die <bookmark mark="example_1_green"/>Nachkommastellen von Pi sind eine Folge, wenn man sie in ihrer Reihenfolge ordnet:<bookmark mark="example_1_sequence"/>1, 4, 1, 5, 9, 2, ... und so weiter...
# Die <bookmark mark="example_2_red"/>geraden natürlichen Zahlen sind keine Folge, da sie nicht unbedingt geordnet sind: So stellt <bookmark mark="example_2_sequence_1"/>2, 4, 6, 8, und so weiter die geraden natürlichen Zahlen dar, aber auch <bookmark mark="example_2_sequence_2"/>4, 2, 8, 6, und so weiter stellt die geraden natürlichen Zahlen dar. Die geraden natürlichen Zahlen sind also keine Folge, da sie keine Reihenfolge haben. Wenn wir allerdings die geraden natürlichen Zahlen in aufsteigender Reihenfolge aufschreiben, dann <bookmark mark="example_2_sequence_1_green"/>haben wir eine Folge, weil wir eine Reihenfolge haben: 2, 4, 6, 8, und so weiter...
# Schließlich stellen die Augenzahlen der <bookmark mark="example_3_green"/>unendlichen Würfelwürfe auch eine Folge dar, wenn wir sie in der Reihenfolge aufschreiben, in der sie gewürfelt wurden.
# """
#         ) as tracker:
            
#             self.wait_until_bookmark("example_1_green")
#             self.play(example_1.animate.set_color(GREEN))

#             self.wait_until_bookmark("example_1_sequence")
#             self.play(Write(sequence_1))

#             self.wait_until_bookmark("example_2_red")
#             self.play(example_2.animate.set_color(RED), Unwrite(sequence_1))

#             self.wait_until_bookmark("example_2_sequence_1")
#             self.play(Write(sequence_2_1))

#             self.wait_until_bookmark("example_2_sequence_2")
#             self.play(Write(sequence_2_2))

#             self.wait_until_bookmark("example_2_sequence_1_green")
#             self.play(sequence_2_1.animate.set_color(GREEN), Unwrite(sequence_2_2))

#             self.wait_until_bookmark("example_3_green")
#             self.play(example_3.animate.set_color(GREEN), Unwrite(sequence_2_1))


#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)
# #

# ##################################### 
# #####################################
# class Calc_1_Sequences_2(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("Definition: Folge")

#         definition_1 = Tex("Funktion $a$", "$:\\mathbb N$", "$\\rightarrow$", " $\\mathbb R$", color=c1t, font_size=fs2)
#         definition_2 = MathTex("n", "\\mapsto", "a_n", color=c1t, font_size=fs2).next_to(definition_1, DOWN, buff=.4)
#         definition_2.shift((definition_1[-2].get_x()-definition_2[1].get_x())*RIGHT)
#         definition = VGroup(definition_1, definition_2)
#         def_n = Tex("$n$: Index", color=c3t, font_size=fs3)
#         def_a_n = Tex("$a_n$: Glied an Stelle $n$", color=c3t, font_size=fs3)
#         added_defs = VGroup(def_n, def_a_n).arrange(DOWN, buff=.2, aligned_edge=LEFT)
#         full_def = VGroup(definition, added_defs).arrange(DOWN, buff=.6, aligned_edge=LEFT).set_y(1)
#         def_rectangle = SurroundingRectangle(full_def, color=BLUE, buff=.2, corner_radius=.2)
#         sequence_general = MathTex("a_1, a_2, a_3, \\hdots", color=c1t, font_size=fs2).next_to(def_rectangle, DOWN, buff=.8).set_x(0)
        
        

#         self.add(title)

#         # Action Sequence
#         with self.voiceover(
#                 text=""" 
# Formal definiert ist eine Folge nichts anderes <bookmark mark="definition_in_1"/>als eine Funktion a, die von <bookmark mark="definition_in_2"/>den natürlichen Zahlen <bookmark mark="definition_in_3"/>in die re-ellen Zahlen abbildet. Konkret wird jede natürliche <bookmark mark="n_in"/>Zahl n auf eine reelle <bookmark mark="a_in"/>Zahl a-n abgebildet.
# Wir bezeichnen <bookmark mark="highlight_n"/>dann n als den Index <bookmark mark="highlight_a"/>und a-n als das Glied an der Stelle n.
# Wir schreiben die Folge dann allgemein <bookmark mark="sequence_in"/>als a 1, a 2, a 3, und so weiter... Dann steht a 1 für das erste Glied, a 2 für das zweite Glied, und so weiter...
# """
#         ) as tracker:
            
#             self.wait_until_bookmark("definition_in_1")
#             self.play(Write(definition_1[0]), run_time=.5)

#             self.wait_until_bookmark("definition_in_2")
#             self.play(Write(definition_1[1]), run_time=.5)

#             self.wait_until_bookmark("definition_in_3")
#             self.play(Write(definition_1[2]), run_time=.5)
#             self.play(Write(definition_1[3]), run_time=.5)

#             self.wait_until_bookmark("n_in")
#             self.play(Write(definition_2[0]), run_time=.5)

#             self.wait_until_bookmark("a_in")
#             self.play(Write(definition_2[1]), run_time=.5)
#             self.play(Write(definition_2[2]), run_time=.5)

#             self.wait_until_bookmark("highlight_n")
#             self.play(Indicate(definition_2[0], scale_factor=1.5, color=RED), Write(def_n))

#             self.wait_until_bookmark("highlight_a")
#             self.play(Indicate(definition_2[2], scale_factor=1.5, color=RED), Write(def_a_n))
#             self.wait(.2)
#             self.add_pencil_sound(1)
#             self.play(Create(def_rectangle), run_time=1)

#             self.wait_until_bookmark("sequence_in")
#             self.play(Write(sequence_general))


#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)
# #
        
# ##################################### 
# #####################################
# # class Calc_1_Sequences_3_q(SophiaCursorScene):

# #     # Main method for constructing the animation
# #     def construct(self):
# #         # Adding initial components to the scene
# #         super().construct()
# #         self.add_mathgrid()

# #         title = self.add_title("Explizit definierte Folgen")

# #         definition = VGroup(MathTex("\\Downarrow", color=c1t, font_size=fs2), Tex("Jedes Folgenglied einzeln bestimmbar", color=c1t, font_size=fs3).scale(.95)).arrange(DOWN, buff=.2).next_to(title, DOWN, buff=.8)

# #         example_1 = MathTex("a_n", "=", "n", color=c1t, font_size=fs2).set_y(1)
# #         example_1_values = VGroup(MathTex("a_1", "=", "1", color=c3t, font_size=fs3), MathTex("a_2", "=", "2", color=c3t, font_size=fs3), MathTex("a_3", "=", "3", color=c3t, font_size=fs3), MathTex("\\vdots", color=c1t, font_size=fs3)).arrange(DOWN, buff=.2).next_to(example_1, DOWN, buff=.4)
# #         example_2 = MathTex("b_n", "=", "n^2", color=c1t, font_size=fs2)
# #         examples = VGroup(example_1, example_2).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1)
# #         example_2.shift((example_1[1].get_x()-example_2[1].get_x())*RIGHT)
# #         b_3 = MathTex("b_3", "=", "?", color=BLUE, font_size=fs2).next_to(example_2, DOWN, buff=.4)
# #         b_3.shift((example_2[1].get_x()-b_3[1].get_x())*RIGHT)
        

# #         self.add(title)

# #         # Action Sequence
# #         with self.voiceover(
# #                 text=""" 
# # Eine wichtige Art von Folgen sind explizit definierte Folgen. Das heißt, dass wir <bookmark mark="def_in"/>jedes Folgenglied durch eine Regel explizit bestimmen können.
# # Ein Beispiel ist <bookmark mark="example_1_1"/>die Folge a n, die wir durch die Regel <bookmark mark="example_1_2"/>a-n gleich n definieren. Das heißt, dass das <bookmark mark="example_1_value_1"/>erste Glied a 1 gleich 1 ist, das <bookmark mark="example_1_value_2"/>zweite Glied a 2 gleich 2 ist, das <bookmark mark="example_1_value_3"/>dritte Glied a 3 gleich 3 ist, und so weiter...
# # Ein<bookmark mark="clean_up"/> weiteres Beispiel ist <bookmark mark="example_2_1"/>die Folge b n, die wir durch die Regel b-n <bookmark mark="example_2_2"/>gleich n quadrat definieren. Jetzt wieder eine Frage an dich: ... Was ist der <bookmark mark="b_3"/>Wert b 3, also das dritte Glied der Folge b n?
# # """
# #         ) as tracker:
            
# #             self.wait_until_bookmark("def_in")
# #             self.play(Write(definition[0]), run_time=.5)
# #             self.play(Write(definition[1]), run_time=.5)
            
# #             self.wait_until_bookmark("example_1_1")
# #             self.play(Unwrite(definition), Write(example_1[0]))

# #             self.wait_until_bookmark("example_1_2")
# #             self.play(Write(example_1[1]), Write(example_1[2]), run_time=.5)

# #             self.wait_until_bookmark("example_1_value_1")
# #             self.play(Write(example_1_values[0]), run_time=.5)

# #             self.wait_until_bookmark("example_1_value_2")
# #             self.play(Write(example_1_values[1]), run_time=.5)

# #             self.wait_until_bookmark("example_1_value_3")
# #             self.play(Write(example_1_values[2]), Write(example_1_values[3]), run_time=.5)

# #             self.wait_until_bookmark("clean_up")
# #             self.play(Unwrite(example_1_values), run_time=.5)

# #             self.wait_until_bookmark("example_2_1")
# #             self.play(Write(example_2[0]))

# #             self.wait_until_bookmark("example_2_2")
# #             self.play(Write(example_2[1]), Write(example_2[2]), run_time=.5)

# #             self.wait_until_bookmark("b_3")
# #             self.play(Write(b_3))

# #         # Wait for 4 seconds at the end of the animation
# #         self.wait(4)
# # #
        
# ##################################### 
# #####################################
# class Calc_1_Sequences_3_q(SophiaCursorScene):

#     def task_definition(self) -> SophiaTaskDefinition:
#         return SophiaTaskDefinition(
#             answerOptions = ["$9$", "$0$"],
#             correctAnswerIndex = 0,
#             questionText = self.translate("Calc_1.Sequences.3q.question-text"),
#             freeTextDetail=SophiaFreeTextTaskDetail(
#                 fallbackOptionIndex=1,
#                 answerOptionMatcher="$\key{a}$",
#                 answerOptionsTypes={
#                     "a": "number"
#                 }
#             )
#         )

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("Explizit definierte Folgen")

#         definition = VGroup(MathTex("\\Downarrow", color=c1t, font_size=fs2), Tex("Jedes Folgenglied einzeln bestimmbar", color=c1t, font_size=fs3).scale(.95)).arrange(DOWN, buff=.2).next_to(title, DOWN, buff=.8)

#         example_1 = MathTex("a_n", "=", "n", color=c1t, font_size=fs2).set_y(1)
#         example_1_values = VGroup(MathTex("a_1", "=", "1", color=c3t, font_size=fs3), MathTex("a_2", "=", "2", color=c3t, font_size=fs3), MathTex("a_3", "=", "3", color=c3t, font_size=fs3), MathTex("\\vdots", color=c1t, font_size=fs3)).arrange(DOWN, buff=.2).next_to(example_1, DOWN, buff=.4)
#         example_2 = MathTex("b_n", "=", "n^2", color=c1t, font_size=fs2)
#         examples = VGroup(example_1, example_2).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1)
#         example_2.shift((example_1[1].get_x()-example_2[1].get_x())*RIGHT)
#         b_3 = MathTex("b_3", "=", "?", color=BLUE, font_size=fs2).next_to(example_2, DOWN, buff=.4)
#         b_3.shift((example_2[1].get_x()-b_3[1].get_x())*RIGHT)
        

#         self.add(title)

#         # Action Sequence
#         with self.voiceover(
#                 text=""" 
# Eine wichtige Art von Folgen sind explizit definierte Folgen. Das heißt, dass wir <bookmark mark="def_in"/>jedes Folgenglied durch eine Regel explizit bestimmen können.
# Ein Beispiel ist <bookmark mark="example_1_1"/>die Folge a n, die wir durch die Regel <bookmark mark="example_1_2"/>a-n gleich n definieren. Das heißt, dass das <bookmark mark="example_1_value_1"/>erste Glied a 1 gleich 1 ist, das <bookmark mark="example_1_value_2"/>zweite Glied a 2 gleich 2 ist, das <bookmark mark="example_1_value_3"/>dritte Glied a 3 gleich 3 ist, und so weiter...
# Ein<bookmark mark="clean_up"/> weiteres Beispiel ist <bookmark mark="example_2_1"/>die Folge b n, die wir durch die Regel b-n <bookmark mark="example_2_2"/>gleich n quadrat definieren. Jetzt wieder eine Frage an dich: ... Was ist der <bookmark mark="b_3"/>Wert b 3, also das dritte Glied der Folge b n?
# """
#         ) as tracker:
            
#             self.wait_until_bookmark("def_in")
#             self.play(Write(definition[0]), run_time=.5)
#             self.play(Write(definition[1]), run_time=.5)
            
#             self.wait_until_bookmark("example_1_1")
#             self.play(Unwrite(definition), Write(example_1[0]))

#             self.wait_until_bookmark("example_1_2")
#             self.play(Write(example_1[1]), Write(example_1[2]), run_time=.5)

#             self.wait_until_bookmark("example_1_value_1")
#             self.play(Write(example_1_values[0]), run_time=.5)

#             self.wait_until_bookmark("example_1_value_2")
#             self.play(Write(example_1_values[1]), run_time=.5)

#             self.wait_until_bookmark("example_1_value_3")
#             self.play(Write(example_1_values[2]), Write(example_1_values[3]), run_time=.5)

#             self.wait_until_bookmark("clean_up")
#             self.play(Unwrite(example_1_values), run_time=.5)

#             self.wait_until_bookmark("example_2_1")
#             self.play(Write(example_2[0]))

#             self.wait_until_bookmark("example_2_2")
#             self.play(Write(example_2[1]), Write(example_2[2]), run_time=.5)

#             self.wait_until_bookmark("b_3")
#             self.play(Write(b_3))

#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)
# #
        
# class Calc_1_Sequences_3_a(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("Explizit definierte Folgen")

#         definition = VGroup(MathTex("\\Downarrow", color=c1t, font_size=fs2), Tex("Jedes Folgenglied einzeln bestimmbar", color=c1t, font_size=fs3).scale(.95)).arrange(DOWN, buff=.2).next_to(title, DOWN, buff=.8)

#         example_1 = MathTex("a_n", "=", "n", color=c1t, font_size=fs2).set_y(1)
#         example_2 = MathTex("b_n", "=", "n^2", color=c1t, font_size=fs2)
#         examples = VGroup(example_1, example_2).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1)
#         b_3 = MathTex("b_3", "=", "?", color=BLUE, font_size=fs2).next_to(example_2, DOWN, buff=.4)
#         b_3.shift((example_2[1].get_x()-b_3[1].get_x())*RIGHT)
#         b_3_three_squared = MathTex("b_3", "=", "3^2", "=9", color=BLUE, font_size=fs2).move_to(b_3)
#         b_3_three_squared.shift((b_3[1].get_x()-b_3_three_squared[1].get_x())*RIGHT)
#         self.add(example_2, b_3, title)

#         # Action Sequence
#         with self.voiceover(
#                 text=""" Super, das ist richtig.
# b_n ist ja gleich n quadrat. Also ist <bookmark mark="three_squared"/>b 3 gleich 3 quadrat, <bookmark mark="three_squared"/>also gleich 9.
# """
#         ) as tracker:
            
#             self.wait_until_bookmark("three_squared")
#             self.play(Transform(b_3, b_3_three_squared[:-1]))

#             self.wait_until_bookmark("three_squared")
#             self.play(Write(b_3_three_squared[-1]))

#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)
# #
        
# class Calc_1_Sequences_3_b(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("Explizit definierte Folgen")

#         definition = VGroup(MathTex("\\Downarrow", color=c1t, font_size=fs2), Tex("Jedes Folgenglied einzeln bestimmbar", color=c1t, font_size=fs3).scale(.95)).arrange(DOWN, buff=.2).next_to(title, DOWN, buff=.8)

#         example_1 = MathTex("a_n", "=", "n", color=c1t, font_size=fs2).set_y(1)
#         example_2 = MathTex("b_n", "=", "n^2", color=c1t, font_size=fs2)
#         examples = VGroup(example_1, example_2).arrange(DOWN, buff=.4, aligned_edge=LEFT).set_y(1)
#         b_3 = MathTex("b_3", "=", "?", color=BLUE, font_size=fs2).next_to(example_2, DOWN, buff=.4)
#         b_3.shift((example_2[1].get_x()-b_3[1].get_x())*RIGHT)
#         b_3_three_squared = MathTex("b_3", "=", "3^2", "=9", color=BLUE, font_size=fs2).move_to(b_3)
#         b_3_three_squared.shift((b_3[1].get_x()-b_3_three_squared[1].get_x())*RIGHT)
#         self.add(example_2, b_3, title)

#         # Action Sequence
#         with self.voiceover(
#                 text=""" Das ist leider falsch.
# b_n ist ja gleich n quadrat. Also ist <bookmark mark="three_squared"/>b 3 gleich 3 quadrat, <bookmark mark="three_squared"/>also gleich 9.
# """
#         ) as tracker:
            
#             self.wait_until_bookmark("three_squared")
#             self.play(Transform(b_3, b_3_three_squared[:-1]))

#             self.wait_until_bookmark("three_squared")
#             self.play(Write(b_3_three_squared[-1]))

#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)
# #

# PROTOTYPES=[
# ##########################################################################
#     PagePrototypeVideo.from_scene(Calc_1_Sequences_1_q),
#     PagePrototypeQuestion.from_scene(Calc_1_Sequences_1_q),
#     PagePrototypeVideo.from_scene(Calc_1_Sequences_1_a),
#     PagePrototypeVideo.from_scene(Calc_1_Sequences_1_b),
#     PagePrototypeVideo.from_scene(Calc_1_Sequences_1_c),
#     PagePrototypeVideo.from_scene(Calc_1_Sequences_1_d),
#     PagePrototypeVideo.from_scene(Calc_1_Sequences_2),
#     PagePrototypeVideo.from_scene(Calc_1_Sequences_3_q),
#     PagePrototypeQuestion.from_scene(Calc_1_Sequences_3_q),
#     PagePrototypeVideo.from_scene(Calc_1_Sequences_3_a),
#     PagePrototypeVideo.from_scene(Calc_1_Sequences_3_b),
# ]