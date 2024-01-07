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

##################################### SUBCHAPTER 1: Intro Determinants
#####################################
class LinAlg_1_Determinant_intro_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Determinante")

        question = Text(
            "Wann ist \n"
            "eine \n"
            "quadratische \n"
            "Matrix \n"
            "invertierbar?",
            color=BLACK,
        ).scale(0.8)
        question_box = SurroundingRectangle(question, color=YELLOW, buff=MED_LARGE_BUFF)

        mat_1 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 0  \\end{pmatrix}","=", "0", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1.2)
        mat_2 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}","=", "2", color=c1t, font_size=fs2).next_to(mat_1, DOWN, buff=.6)
        mat_3 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\ 3 \\\\ 0 \\ 2 \\ 0 \\\\ 1 \\ 0 \\ 1  \\end{pmatrix}","=","-4", color=c1t, font_size=fs2).next_to(mat_2, DOWN, buff=.6)

        copy_1, copy_2, copy_3 = mat_1[1].copy(), mat_2[1].copy(), mat_3[1].copy()     

        qnark = ImageMobject(assets_folder / "img" / "qmark.png").shift(LEFT*5).scale(.8)

        #det_1 = MathTex("A", "\\longmapsto", "\\det(A)", color=c1t, font_size=fs1)
        invert = MathTex("\\text{A invertierbar}", color=c1t, font_size=fs1).next_to(title, DOWN, buff=2)
        updownarrow = MathTex("\\Updownarrow", color=c1t, font_size=fs1).next_to(invert, DOWN, buff=.6)
        det_2 = MathTex("\\det(A) \\neq 0", color=c1t, font_size=fs1).next_to(updownarrow, DOWN, buff=.6)

        # Action Sequence
        with self.voiceover(
                text=""" 
                In diesem <bookmark mark="title_in"/> Kapitel lernen wir, was die Determinante einer Matrix ist. Unsere Leitfrage zur Determinante lautet: <bookmark mark="quest"/>Wann ist eine quadratische Matrix invertierbar? <bookmark mark="fade_out_quest"/> 
                Zuersteinmal macht die Determinante <bookmark mark="mat"/> aus jeder quadratischen Matrix <bookmark mark="number"/>  <break time="0.4s"/> eine Zahl. Wir nennen diese Zahl <bookmark mark="det"/> die Determinante der Matrix. 
                Wir werden sehen, dass diese Zahl wichtige Informationen über die Matrix codiert.
                Wie hängt die <bookmark mark="qmark_1"/> Determinante einer Matrix nun aber <bookmark mark="qmark_2"/> mit unserer Leitfrage zusammen? Die <bookmark mark="fade_out_1"/> Antwort ist: <bookmark mark="not_zero"/> eine Matrix A ist genau dann invertierbar, wenn ihre Determinante nicht null ist. 
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            self.wait_until_bookmark("quest")
            self.play(Write(question))
            #Hab hier die beiden Animationen getrennt und zur zweiten ein Geräusch hinzugefügt
            self.add_pencil_sound(1)
            self.play(Create(question_box), run_time=1)

            self.wait_until_bookmark("fade_out_quest")
            self.play(Unwrite(question), Uncreate(question_box), run_time=.6)

            self.wait_until_bookmark("mat")
            self.play(Write(mat_1[1]), run_time=.6)
            self.play(Write(mat_2[1]), run_time=.6)
            self.play(Write(mat_3[1]), run_time=.6)

            self.wait_until_bookmark("number")
            self.play(ReplacementTransform(copy_1, mat_1[3]), run_time=.6)
            self.play(ReplacementTransform(copy_2, mat_2[3]), run_time=.6)
            self.play(ReplacementTransform(copy_3, mat_3[3]), run_time=.6)

            self.wait_until_bookmark("det")
            self.play(Write(mat_1[0]), Write(mat_1[2]), run_time=.6)
            self.play(Write(mat_2[0]), Write(mat_2[2]), run_time=.6)
            self.play(Write(mat_3[0]), Write(mat_3[2]), run_time=.6)

            self.wait_until_bookmark("qmark_1")
            self.add_shift_sound(0.5)
            self.play(qnark.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("qmark_2")
            #Wenn du einen Sound hinzufügst, macht es oft Sinn, dass der Sound genauso lang ist wie die Animation, zu der der Sound gehört
            self.add_shift_sound(0.5)
            self.play(qnark.animate(run_time=0.5).shift(5*RIGHT), run_time=.5)


            self.wait_until_bookmark("fade_out_1")
            self.play(FadeOut(mat_1,mat_2,mat_3), run_time=1)

            self.wait_until_bookmark("not_zero")
            self.play(Write(invert), run_time=.6)
            self.play(Write(updownarrow), run_time=.6)
            self.play(Write(det_2), run_time=.6)

            # Wait for 4 seconds at the end of the animation
            self.wait(4)

#####################################
#####################################
class LinAlg_1_Determinant_intro_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Determinante")

        blist = BulletedList(" 2x2 Matrix", " Animation", " 3x3 Matrix", " Eigenschaften", font_size=fs1).next_to(title, DOWN, buff=1.5)
        blist.set_color_by_tex("2x2 Matrix", RED)
        blist.set_color_by_tex("Animation", RED)
        blist.set_color_by_tex("3x3 Matrix", RED)
        blist.set_color_by_tex("Eigenschaften", RED)
        #self.add(blist)

        viel = MathTex("\\text{Viel Spaß!}", color=c1t, font_size=fs1).next_to(blist, DOWN, buff=1.2)
    
        # Action Sequence
        with self.voiceover(
                text=""" 
                Wir beginnen <bookmark mark="title_in"/> dieses Kapitel mit dem einfachsten Fall: <bookmark mark="2times2"/> nämlich mit der Berechnung der Determinante einer 2 Kreuz 2 Matrix.
                Sobald wir das gemeistert haben, werden wir in <bookmark mark="geometric"/> einer Animation sehen, dass wir uns die Determinante einer Matrix auch geometrisch vorstellen können.
                Dann zeigen wir, wie man die Determinante <bookmark mark="3times3"/> von 3 Kreuz 3 und anderen  Matrizen berechnet. 
                Am Ende dieses Kapitels schauen wir uns dann <bookmark mark="properties"/> noch weitere wichtige Eigenschaften der Determinante an. <bookmark mark="viel"/> Viel Spaß!
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))
        
            self.wait_until_bookmark("2times2")
            self.play(Write(blist[0]), run_time=1)

            self.wait_until_bookmark("geometric")
            self.play(Write(blist[1]), run_time=1)

            self.wait_until_bookmark("3times3")
            self.play(Write(blist[2]), run_time=1)

            self.wait_until_bookmark("properties")
            self.play(Write(blist[3]), run_time=1)

            self.wait_until_bookmark("viel")
            self.play(Write(viel), run_time=1)

            # Wait for 4 seconds at the end of the animation
            self.wait(4)

#####################################
#####################################
# Die Endungen für Fragen und Antwortmöglichkeiten sind in Kleinbuchstaben
# Ich habe die Klassen mal alle umbenannt (habe ich in meinen Klassen auch gemacht, so ist es übersichtlicher)
# Ich habe die folgenden (vormals beiden) Videos zu einem Video zusammengefasst.
# Ich habe das 3_a Video komplett neu gemacht, auf Grundlage des 3_q Videos.
class LinAlg_1_Determinant_intro_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$-19$", "$0$"],
            correctAnswerIndex = 0,
            questionText = self.translate("LinAlg_1.Determinant_intro.3q.question-text"),
            freeTextDetail=SophiaFreeTextTaskDetail(
                fallbackOptionIndex=1,
                answerOptionMatcher="$\key{a}$",
                answerOptionsTypes={
                    "a": "number"
                }
            )
        )
#
    
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Determinante")
        self.add(title)

        mat_1 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 0  \\end{pmatrix}","=", "0", color=c1t, font_size=fs2)
        mat_2 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}","=", "2", color=c1t, font_size=fs2)
        mat_3 = MathTex("\det","\\begin{pmatrix} 1 \\ 3 \\\\ 7 \\ 2  \\end{pmatrix}","=","-19", color=c1t, font_size=fs2)
        # Anstatt jede Matrix unter die vorherige zu schreiben, kannst du sie mit der VGroup arrangen, das ist praktischer.
        # Dann kannst du auch mit aligned_edge=LEFT angeben, dass sie linksbündig auf dem gleichen x-Wert beginnen, das sieht sauberer aus.
        matrices = VGroup(mat_1, mat_2, mat_3).arrange(DOWN, buff=.6, aligned_edge=LEFT).next_to(title, DOWN, buff=1.2)

        copy_1, copy_2, copy_3 = mat_1[1].copy(), mat_2[1].copy(), mat_3[1].copy()     
    
        mat_4 = MathTex("\det","\\begin{pmatrix} a \\ b \\\\ c \\ d  \\end{pmatrix}","=","a\\cdot d", "-", "b\\cdot c", color=c1t, font_size=fs2).next_to(mat_1, DOWN, buff=.6).set_x(0)
        mat_4[1][1].set_color(RED), mat_4[1][4].set_color(RED), mat_4[3][0].set_color(RED),  mat_4[3][2].set_color(RED)
        reds = VGroup(mat_4[1][1], mat_4[1][4], mat_4[3][0], mat_4[3][2])
        mat_4[1][2].set_color(BLUE), mat_4[1][3].set_color(BLUE), mat_4[5][0].set_color(BLUE), mat_4[5][2].set_color(BLUE)
        blues = VGroup(mat_4[1][2], mat_4[1][3], mat_4[5][0], mat_4[5][2])

        # Ich trenne die Spalten in der Matrix immer mit dem Ampersand (&) und das scheint auch besser zu klappen in Manim
        ex_1 = MathTex("\\det","\\begin{pmatrix}1&0\\\\0&2\\end{pmatrix}","=", "1 \\cdot 2", "-", "0 \\cdot 0", color=c1t, font_size=fs2).scale(.95)
        ex_1[-1].set_color(BLUE), ex_1[-3].set_color(RED)
        sol_1 = MathTex("\\det","\\begin{pmatrix}1&0\\\\0&2\\end{pmatrix}","=", "2", color=c1t, font_size=fs2).scale(.95)
        # Damit die linksbündig sind
        sol_1.shift((ex_1.get_left()[0]-sol_1.get_left()[0])*RIGHT)
        # Haupt und Nebendiagonalen, um die beim Rechenweg zu markieren
        ex_1_diag_1 = VGroup(ex_1[1][1], ex_1[1][4])
        ex_1_diag_2 = VGroup(ex_1[1][2], ex_1[1][3])
        ex_2 = MathTex("\\det\\begin{pmatrix}1&3\\\\7&2\\end{pmatrix}","=", "1 \\cdot 2", "-", "7 \\cdot 3", color=c1t, font_size=fs2).scale(.95)

        # Action Sequence
        with self.voiceover(
                text=""" 
Schauen wir uns also an, wie man die <bookmark mark="number"/> Determinante von 2 Kreuz 2 Matrizen berechnet. ...
Dafür gibt <bookmark mark="fade_out_1"/> es nämlich eine einfache Formel. ...
<bookmark mark="det_1"/>Die Determinante einer Matrix a b c d ist gegeben<bookmark mark="det_2"/> durch a Mal d<bookmark mark="det_3"/> Minus b Mal c. ...
Wir multiplizieren also die <bookmark mark="indicate_reds"/>Einträge a und d auf der Hauptdiagonale und ziehen <bookmark mark="indicate_blues"/>das Produkt der Einträge b und c auf der Nebendiagonale davon ab.
<bookmark mark="clean_up"/>Zum Beispiel ist die Determinante <bookmark mark="example_1_1"/>der Matrix 1 0 0 2 gleich dem<bookmark mark="example_1_2"/>Produkt Eins Mal Zwei minus dem <bookmark mark="example_1_3"/>Produkt Null Mal Null, also gleich <bookmark mark="solution_1"/>Zwei. ...
Jetzt <bookmark mark="example_1_out"/>du: ... Was ist die Determinante der Matrix 1 3 7 2?
                """ 
        ) as tracker:
            
            # Ich würde den Titel weglassen, oder er ist von Anfang an drin (siehe self.add(title))
            # self.wait_until_bookmark("title_in")
            # self.play(Write(title))

            # Würde mit diesen Animationen direkt am Anfang beginnen.
            # self.wait_until_bookmark("mat")
            # Wenn du einmal Write und dann FadeIn benutzt sieht das komich aus, ich würde da konsequent sein
            # Ich finde Write() und Create() schöner als FadeIn()...
            self.play(Write(mat_1[0:2]), run_time=1)
            # Du kannst statt VGroup(mat_1[0], mat_1[1], mat_1[2]) auch einfach mat_1[0:2] benutzen
            self.play(Write(mat_2[0:2]), run_time=1)
            self.play(Write(mat_3[0:2]), run_time=1)

            self.wait_until_bookmark("number")
            # Hab [3] zu [2:] geändert, damit das "=" Zeichen mitkommt.
            self.play(ReplacementTransform(copy_1, mat_1[2:]), run_time=.6)
            self.play(ReplacementTransform(copy_2, mat_2[2:]), run_time=.6)
            self.play(ReplacementTransform(copy_3, mat_3[2:]), run_time=.6)

            # Hätte die erst entfernt unmittelbar bevor es weitergeht. Ich finde "leeren" screen immer schlecht.
            # self.wait_until_bookmark("fade_out_1")
            # self.play(Unwrite(VGroup(mat_1,mat_2,mat_3)), run_time=1)

            self.wait_until_bookmark("det_1")
            self.play(Unwrite(VGroup(mat_1,mat_2,mat_3)), run_time=.5)
            self.play(Write(mat_4[0]), Write(mat_4[1]), run_time=1)

            self.wait_until_bookmark("det_2")
            self.play(Write(mat_4[2]), Write(mat_4[3]), run_time=.6)

            self.wait_until_bookmark("det_3")
            self.play(Write(mat_4[4]), run_time=.4)
            self.play(Write(mat_4[5]), run_time=1)

            self.wait_until_bookmark("indicate_reds")
            self.play(*[Indicate(red, scale_factor=1.6, color=RED) for red in reds], run_time=2)

            self.wait_until_bookmark("indicate_blues")
            self.play(*[Indicate(blue, scale_factor=1.6, color=BLUE) for blue in blues], run_time=2)

            self.wait_until_bookmark("clean_up")
            mat_4.generate_target().next_to(title, DOWN, buff=.6)
            self.add_shift_sound(.5)
            self.play(MoveToTarget(mat_4), run_time=.5)

            self.wait_until_bookmark("example_1_1")
            self.play(Write(ex_1[0]), Write(ex_1[1]), run_time=.6)

            self.wait_until_bookmark("example_1_2")
            self.play(Write(ex_1[2]), Write(ex_1[3]), *[Indicate(diag, scale_factor=1.6, color=RED) for diag in ex_1_diag_1], run_time=1.5)

            self.wait_until_bookmark("example_1_3")
            self.play(Write(ex_1[4]), Write(ex_1[5]), *[Indicate(diag, scale_factor=1.6, color=BLUE) for diag in ex_1_diag_2], run_time=1.5)

            self.wait_until_bookmark("solution_1")
            self.play(TransformMatchingTex(ex_1, sol_1))

            self.wait_until_bookmark("example_1_out")
            self.play(Unwrite(sol_1), run_time=.6)
            self.play(Write(ex_2[0]))

        self.wait(4)

class LinAlg_1_Determinant_intro_3_a(SophiaCursorScene):
    
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Determinante")
        self.add(title)
    
        mat_4 = MathTex("\det","\\begin{pmatrix} a \\ b \\\\ c \\ d  \\end{pmatrix}","=","a\\cdot d", "-", "b\\cdot c", color=c1t, font_size=fs2).next_to(title, DOWN, buff=.6)
        mat_4[1][1].set_color(RED), mat_4[1][4].set_color(RED), mat_4[3][0].set_color(RED),  mat_4[3][2].set_color(RED)
        mat_4[1][2].set_color(BLUE), mat_4[1][3].set_color(BLUE), mat_4[5][0].set_color(BLUE), mat_4[5][2].set_color(BLUE)
        self.add(mat_4)

        # Ich trenne die Spalten in der Matrix immer mit dem Ampersand (&) und das scheint auch besser zu klappen in Manim
        ex_2 = MathTex("\det","\\begin{pmatrix}1&3\\\\7&2\\end{pmatrix}","=", "1 \\cdot 2", "-", "3 \\cdot 7", color=c1t, font_size=fs2).scale(.95)
        ex_2[-1].set_color(BLUE), ex_2[-3].set_color(RED)
        sol_2 = MathTex("\det","\\begin{pmatrix}1&3\\\\7&2\\end{pmatrix}","=", "-19", color=c1t, font_size=fs2).scale(.95)
        sol_2.shift((ex_2.get_left()[0]-sol_2.get_left()[0])*RIGHT)
        ex_2_diag_1 = VGroup(ex_2[1][1], ex_2[1][4])
        ex_2_diag_2 = VGroup(ex_2[1][2], ex_2[1][3])
        self.add(ex_2[:2])
        

        # Action Sequence
        with self.voiceover(
                text=""" 
Super, das ist richtig. Wir wenden zur Berechnung der Determinante einfach die Formel an. Die Determinante der Matrix 1 3 7 2 ist also gleich dem Produkt<bookmark mark="example_2_1"/> Eins Mal Zwei minus dem Produkt<bookmark mark="example_2_2"/> Drei mal sieben. Das ganze ergibt dann ja Minus Neunzehn, also ist die Determinante <bookmark mark="solution_2"/>gleich minus 19.
""" 
        ) as tracker:

            self.wait_until_bookmark("example_2_1")
            self.play(Write(ex_2[2]), Write(ex_2[3]), *[Indicate(diag, scale_factor=1.6, color=RED) for diag in ex_2_diag_1])

            self.wait_until_bookmark("example_2_2")
            self.play(Write(ex_2[4]), Write(ex_2[5]), *[Indicate(diag, scale_factor=1.6, color=BLUE) for diag in ex_2_diag_2])

            self.wait_until_bookmark("solution_2")
            self.play(TransformMatchingTex(ex_2, sol_2))

        self.wait(4)

class LinAlg_1_Determinant_intro_3_b(SophiaCursorScene):
    
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Determinante")
        self.add(title)
    
        mat_4 = MathTex("\det","\\begin{pmatrix} a \\ b \\\\ c \\ d  \\end{pmatrix}","=","a\\cdot d", "-", "b\\cdot c", color=c1t, font_size=fs2).next_to(title, DOWN, buff=.6)
        mat_4[1][1].set_color(RED), mat_4[1][4].set_color(RED), mat_4[3][0].set_color(RED),  mat_4[3][2].set_color(RED)
        mat_4[1][2].set_color(BLUE), mat_4[1][3].set_color(BLUE), mat_4[5][0].set_color(BLUE), mat_4[5][2].set_color(BLUE)
        self.add(mat_4)

        # Ich trenne die Spalten in der Matrix immer mit dem Ampersand (&) und das scheint auch besser zu klappen in Manim
        ex_2 = MathTex("\det","\\begin{pmatrix}1&3\\\\7&2\\end{pmatrix}","=", "1 \\cdot 2", "-", "3 \\cdot 7", color=c1t, font_size=fs2).scale(.95)
        ex_2[-1].set_color(BLUE), ex_2[-3].set_color(RED)
        sol_2 = MathTex("\det","\\begin{pmatrix}1&3\\\\7&2\\end{pmatrix}","=", "-19", color=c1t, font_size=fs2).scale(.95)
        sol_2.shift((ex_2.get_left()[0]-sol_2.get_left()[0])*RIGHT)
        ex_2_diag_1 = VGroup(ex_2[1][1], ex_2[1][4])
        ex_2_diag_2 = VGroup(ex_2[1][2], ex_2[1][3])
        self.add(ex_2[:2])
        

        # Action Sequence
        with self.voiceover(
                text=""" 
Das ist leider falsch. Wir wenden zur Berechnung der Determinante einfach die Formel an. Die Determinante der Matrix 1 3 7 2 ist also gleich dem Produkt<bookmark mark="example_2_1"/> Eins Mal Zwei minus dem Produkt<bookmark mark="example_2_2"/> Drei mal sieben. Das ganze ergibt dann ja Minus Neunzehn, also ist die Determinante <bookmark mark="solution_2"/>gleich minus 19.
""" 
        ) as tracker:

            self.wait_until_bookmark("example_2_1")
            self.play(Write(ex_2[2]), Write(ex_2[3]), *[Indicate(diag, scale_factor=1.6, color=RED) for diag in ex_2_diag_1])

            self.wait_until_bookmark("example_2_2")
            self.play(Write(ex_2[4]), Write(ex_2[5]), *[Indicate(diag, scale_factor=1.6, color=BLUE) for diag in ex_2_diag_2])

            self.wait_until_bookmark("solution_2")
            self.play(TransformMatchingTex(ex_2, sol_2))

        self.wait(4)

#####################################
#####################################
# Hier könnte man noch ein Übungs + Lösungsvideo ergänzen, mit etwas "schwereren" Zahlen, z.b. Vorzeichen, Brüche, oä.
# Außerdem könnte man die "Kreuz-Visualisierung" nochmal zeigen (siehe https://www.algebrapracticeproblems.com/wp-content/uploads/2021/01/how-to-find-the-determinant-of-a-2x2-matrix.png)
#TODO:
# class LinAlg_1_Determinant_intro_4_q(SophiaCursorScene):
# class LinAlg_1_Determinant_intro_4_a(SophiaCursorScene):

#####################################
#####################################
# Mach das Video als Abschlussvideo und Wiederhol nochmal den wichtigsten Inhalt von Kapitel 1.
# Den Ausblick auf Kapitel 2 würde ich nur am Ende ganz kurz in einem Satz machen.
# Allgemeine Sachen:
# - Wenn du Sachen schon in vorherigen Videos drin hattest (Überschrift, Formel), dann füg sie mit self.add() vor Beginn hinzu, anstatt sie zu animeren
# - Ich finde die meisten Animationen sehen besser aus, wenn die run_time bei ca. 0.5s liegt    
class LinAlg_1_Determinant_intro_5(SophiaCursorScene):
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Determinante")

        mat_1 = MathTex("\det","\\begin{pmatrix} a \\ b \\\\ c \\ d  \\end{pmatrix}","=","a\\cdot d", "-", "b\\cdot c", color=c1t, font_size=fs2).next_to(title, DOWN, buff=.6)
        mat_1[1][1].set_color(RED), mat_1[1][4].set_color(RED), mat_1[3][0].set_color(RED),  mat_1[3][2].set_color(RED)
        mat_1[1][2].set_color(BLUE), mat_1[1][3].set_color(BLUE), mat_1[5][0].set_color(BLUE), mat_1[5][2].set_color(BLUE)

        cursor = AltCursor(stroke_width=0.0, idle=True)

        lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").shift(LEFT*5).scale(.4)

        tex = Text(
            "Matrix-Vektor- \n"
            "Multiplikation",
            color=BLACK,
        ).scale(0.6)
        box = SurroundingRectangle(tex, color=YELLOW, buff=MED_SMALL_BUFF)
        mobject = VGroup(box, tex)
        
        # Action Sequence
        with self.voiceover(
                text=""" 
                Wir haben <bookmark mark="title_in"/> jetzt die Berechnung <bookmark mark="mat_1"/> der Determinante von 2 Kreuz 2 Matrizen <bookmark mark="smile"/>gemeistert. Super!  <break time="1.5s"/>
                Die Formel für die <bookmark mark="lion_1"/> Determinante einer 2 Kreuz 2 Matrix ist aber noch etwas mysteriös. <bookmark mark="lion_2"/> Deshalb zeigen wir dir in einer Animation, dass diese Formel eine geometrische Bedeutung hat. 
                <bookmark mark="mat_vec_mult"/> Für diese Animation müssen wir aber zuerst die Matrix-Vektor-Multiplikation wiederholen und genau das machen wir im nächsten Video.
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title), Write(mat_1))

            self.wait_until_bookmark("smile")
            cursor, smile = self.draw_smile(cursor, ORIGIN, run_time=3)
            self.wait(1)
            self.play(FadeOut(cursor,smile))

            self.wait_until_bookmark("lion_1")
            self.add_shift_sound(1.5)
            self.play(lion.animate.shift(5*RIGHT))

            self.wait_until_bookmark("lion_2")
            self.add_shift_sound(0.5)
            self.play(lion.animate(run_time=0.5).shift(5*RIGHT), run_time=1)

            self.wait_until_bookmark("mat_vec_mult")
            self.play(FadeOut(mat_1), run_time=0.6)
            self.wait(1)
            self.play(Write(mobject), run_time=1)
            # Wait for 4 seconds at the end of the animation
            self.wait(4)


##################################### SUBCHAPTER 2: Geometric Interpretation
#####################################
# Punkte zu diesem Video:
# Gelb / Hellgrau auf weiß sieht man nicht so gut -> mehr Kontrast
# Überschrift entweder ganz weglassen (preferred), oder nicht animieren, sondern mit self.add() hinzufügen. Animieren nur wenns wirklich passt
# Es sieht immer gut aus, am Rand etwas Abstand zu lassen. Im Zweifel mit self.scale(0.95) etwas Platz schaffen.
# Da das ja das erste Video im neuen Kapitel ist, gerne eine Kapitel Intro (was ja davor so ein wenig auch im letzten Video des ersten Kapitels war)
# Wie oben: Führ das Erklärvideo und das Übungsvideo zu einem Video zusammen
class LinAlg_1_Determinant_geo_1_q(SophiaCursorScene):
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Determinante")

        tex = Text(
            "Matrix-Vektor- \n"
            "Multiplikation",
            color=BLACK,
        ).scale(0.6).next_to(title, DOWN, buff=1.5)
        box = SurroundingRectangle(tex, color=YELLOW, buff=MED_SMALL_BUFF)
        mobject = VGroup(box, tex)
        
        mat_1 = MathTex("\\begin{pmatrix} a \\ b \\\\ c \\ d \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} x \\\\ y \\end{pmatrix}", "=\\begin{pmatrix} ? \\\\ ? \\end{pmatrix}", color=c1t, font_size=fs2).next_to(mobject, DOWN, buff=1)
        
        copy_1, copy_3 = mat_1[0][1:3].copy(), mat_1[2].copy()

        vec_1 = MathTex("\\begin{pmatrix} a \\ b \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} x \\\\ y \\end{pmatrix}", "=", "a x", "+", "b y", color=c1t, font_size=fs2).next_to(mat_1, DOWN, buff=.6)
        
        mat_sol_1 = MathTex("\\begin{pmatrix} a \\ b \\\\ c \\ d  \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} x \\\\ y \\end{pmatrix}", "=\\begin{pmatrix} ax + by \\\\ ? \\end{pmatrix}", color=c1t, font_size=fs2).move_to(mat_1)
        
        copy_2, copy_4 = mat_sol_1[0][3:5].copy(), mat_sol_1[2].copy()

        vec_2 = MathTex("\\begin{pmatrix} c \\ d \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} x \\\\ y \\end{pmatrix}", "=", "c x", "+", "d y", color=c1t, font_size=fs2).next_to(mat_sol_1, DOWN, buff=.6)
        
        mat_sol_2 = MathTex("\\begin{pmatrix} a \\ b \\\\ c \\ d  \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} x \\\\ y \\end{pmatrix}", "=\\begin{pmatrix} ax + by \\\\ cx + dy \\end{pmatrix}", color=c1t, font_size=fs2).move_to(mat_sol_1)
        
        # Action Sequence
        with self.voiceover(
                text=""" 
                In diesem Video <bookmark mark="title_in"/> wiederholen wir <bookmark mark="tex"/> also die Matrix-Vektor-Multiplikation. <break time="1.5s"/>
                Welchen Vektor erhalten <bookmark mark="qmark"/> wir also, wenn wir die Matrix a b c d mit dem Vektor x ypsilon multiplizieren? <break time="1.5s"/>
                Um den ersten Eintrag zu berechnen, nehmen wir <bookmark mark="vec_1_1"/> die erste Zeile der Matrix, also a b, und <bookmark mark="vec_1_2"/> den Vektor x ypsilon und bilden <bookmark mark="scalar_1"/> das Skalarprodukt, das heißt, wir <bookmark mark="calc_1"/> rechnen a Mal x und b mal ypsilon und summieren. Also ist der <bookmark mark="transform_1"/> erste Eintrag a Mal x plus b Mal ypsilon.
                Um den zweiten <bookmark mark="clean_up"/> Eintrag zu berechnen, nehmen wir anstatt der ersten, <bookmark mark="vec_2_1"/> die zweite Zeile der Matrix, also c d, und <bookmark mark="vec_2_2"/> den Vektor x ypsilon und bilden <bookmark mark="scalar_2"/> erneut das Skalarprodukt, <bookmark mark="calc_2"/> also c Mal x und d mal ypsilon und summieren. Deshalb ist der <bookmark mark="transform_2"/> zweite Eintrag c Mal x plus d Mal ypsilon.
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            self.wait_until_bookmark("tex")
            self.play(Write(mobject), run_time=1)

            self.wait_until_bookmark("qmark")
            self.play(Write(mat_1), run_time=2)

            self.wait_until_bookmark("vec_1_1")
            self.play(Transform(copy_1, vec_1[0]), run_time=2)

            self.wait_until_bookmark("vec_1_2")
            self.play(Transform(copy_3, vec_1[2]), run_time=2)

            self.wait_until_bookmark("scalar_1")
            self.play(Write(vec_1[1]), Write(vec_1[3]), run_time=.6)
            
            self.wait_until_bookmark("calc_1")
            self.play(Write(vec_1[4]), run_time=.6)
            self.play(Write(vec_1[6]), run_time=.6)
            self.play(Write(vec_1[5]), run_time=.6)

            self.wait_until_bookmark("transform_1")
            self.play(TransformMatchingTex(mat_1, mat_sol_1), run_time=3)

            self.wait_until_bookmark("clean_up")
            self.play(FadeOut(vec_1, copy_1, copy_3), run_time=.6)

            self.wait_until_bookmark("vec_2_1")
            self.play(Transform(copy_2, vec_2[0]), run_time=2)

            self.wait_until_bookmark("vec_2_2")
            self.play(Transform(copy_4, vec_2[2]), run_time=2)

            self.wait_until_bookmark("scalar_2")
            self.play(Write(vec_2[1]), Write(vec_2[3]), run_time=.6)
            
            self.wait_until_bookmark("calc_2")
            self.play(Write(vec_2[4]), run_time=.6)
            self.play(Write(vec_2[6]), run_time=.6)
            self.play(Write(vec_2[5]), run_time=.6)

            self.wait_until_bookmark("transform_2")
            self.play(TransformMatchingTex(mat_sol_1, mat_sol_2), run_time=3)
            self.play(FadeOut(vec_2, copy_2, copy_4), run_time=1.5)
            # Wait for 4 seconds at the end of the animation
            self.wait(4)

class LinAlg_1_5_I_3_Q(SophiaCursorScene):
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Determinante")

        mat_formula = MathTex("\\begin{pmatrix} a \\ b \\\\ c \\ d  \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} x \\\\ y \\end{pmatrix}", "=\\begin{pmatrix} ax + by \\\\ cx + dy \\end{pmatrix}", color=c1t, font_size=fs2).next_to(title, DOWN, buff=.6)

        mat_1 = MathTex("\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} 1 \\\\ 0 \\end{pmatrix}", "=\\begin{pmatrix} 1 \\\\ 0 \\end{pmatrix}", color=c1t, font_size=fs2).next_to(mat_formula, DOWN, buff=.6)
        mat_2 = MathTex("\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} 0 \\\\ 1 \\end{pmatrix}", "=\\begin{pmatrix} ? \\\\ ? \\end{pmatrix}", color=c1t, font_size=fs2).next_to(mat_1, DOWN, buff=.6)

        # Action Sequence
        with self.voiceover(
                text="""Jetzt schauen <bookmark mark="title_in"/> wir uns zwei Beispiele zur Matrix-Vektor-Multiplikation an. Zur <bookmark mark="mat_vec_mult"/> Hilfe schreiben wir nochmal die Definition der Matrix-Vektor-Multiplikation hin. <break time="1.5s"/>
                Betrachten wir als erstes Beispiel die Matrix <bookmark mark="mat_1"/> 1 0 0 2.
                Multiplizieren wir jetzt die Matrix mit dem Vektor <bookmark mark="vec_1_in"/> 1 0. <break time="1.5s"/>
                Mit der obigen Definition kannst du leicht überprüfen, dass das Ergebnis ja der Vektor <bookmark mark="sol_in"/> 1 0 ist, also bleibt der Vektor gleich. <break time="1.5s"/>
                <bookmark mark="cleanup"/>
                Betrachten wir jetzt ein anderes Beispiel, nämlich den Vektor <bookmark mark="vec_2_in"/> 0 1.
                Was ist nun <bookmark mark="qmark_in"/> das Ergebnis der Matrix-Vektor-Multiplikation?
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title), run_time=.6)

            self.wait_until_bookmark("mat_vec_mult")
            self.play(Write(mat_formula), run_time=.6)

            self.wait_until_bookmark("mat_1")
            self.play(Write(mat_1[0]), run_time=.6)

            self.wait_until_bookmark("vec_1_in")
            self.play(Write(mat_1[1]), Write(mat_1[2]), run_time=.6)

            self.wait_until_bookmark("sol_in")
            self.play(Write(mat_1[3]), run_time=.6)

            self.wait_until_bookmark("cleanup")
            self.play(Write(mat_2[0]), run_time=.6)
            #self.play(FadeOut(mat_1), run_time=.6)

            self.wait_until_bookmark("vec_2_in")
            self.play(Write(mat_2[2]), run_time=.6)

            self.wait_until_bookmark("qmark_in")
            self.play(Write(mat_2[3]), Write(mat_2[1]), run_time=.6)

            # Wait for 4 seconds at the end of the animation
            self.wait(4)


class LinAlg_1_Determinant_geo_1_a(SophiaCursorScene):
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Determinante")

        mat_2 = MathTex("\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} 0 \\\\ 1 \\end{pmatrix}", "=\\begin{pmatrix} ? \\\\ ? \\end{pmatrix}", color=c1t, font_size=fs2)
        mat_sol = MathTex("\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} 0 \\\\ 1 \\end{pmatrix}", "=\\begin{pmatrix} 0 \\\\ 2 \\end{pmatrix}", color=c1t, font_size=fs2).move_to(mat_2)
        
        
        # Action Sequence
        with self.voiceover(
                text=""" 
                Richtig! Wenn wir <bookmark mark="title_in"/> die Matrix 1 null null zwei mit dem Vektor 0 1 multiplizieren, dann <bookmark mark="transform"/>erhalten wir den Vektor 0 2.
                Das ist ja das doppelte des ursprünglichen Vektors. Also wird der Vektor 0 1 durch die Matrix 1 0 0 2 um den Faktor zwei gestreckt.
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))
            self.play(Write(mat_2))

            self.wait_until_bookmark("transform")
            self.play(TransformMatchingTex(mat_2, mat_sol), run_time=3)

            # Wait for 4 seconds at the end of the animation
            self.wait(4)

#####################################
#####################################
class LinAlg_1_Determinant_geo_2(SophiaCursorScene):
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")

        mat = MathTex("\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}", color=c1t, font_size=fs2)
        self.add(mat)
        
        # Action Sequence
        with self.voiceover(
                text=""" 
                Betrachte die <bookmark mark="title_in"/> zwei Vektoren eins null und null eins im zwei-dimensionalen Koordinatensystem. 
                Wir färben das Einheitsquadrat, das von diesen beiden Vektoren aufgespannt wird, blau ein. 
                Jetzt wenden wir die Matrix eins null null zwei auf diese beiden Vektoren an und schauen was mit dem blauen Quadrat passiert. 
                Wie du leicht erkennen kannst, ist der Flächeninhalt des resultierenden roten Rechtecks gleich zwei. Also gleich der Determinante der Matrix eins null null zwei.

                Wir sehen also, dass die Determinante dieser Matrix gleich der Zahl ist, mit der der Flächeninhalt des blauen Quadrats gestreckt wird. 
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            # Wait for 4 seconds at the end of the animation
            self.wait(4)

class LinAlg_1_Determinant_geo_3(SophiaCursorScene):
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")

        mat = MathTex("\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}", color=c1t, font_size=fs2)
        self.add(mat)
        
        # Action Sequence
        with self.voiceover(
                text=""" 
                Du hast <bookmark mark="title_in"/> dir vielleicht bereits folgende Frage gestellt: Was ist die geometrische Interpretation einer negativen Determinante einer Matrix? 
                Im Beispiel zuvor war die Determinante der Matrix eins null null zwei ja gegeben durch 2 und der Flächeninhalt des blauen Einheitsquadrats wurde im 2 gestreckt.

                Schauen wir uns nun die Matrix minus eins null null zwei an. Wie du leicht sehen kannst, ist die Determinante dieser Matrix gleich minus zwei.
                Was geschieht, wenn wir diese Matrix auf das blaue Einheitsquadrat anwenden? Der Flächeninhalt wird immer noch um den Faktor 2 gestreckt, aber die Orientierung hat sich geändert.
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            # Wait for 4 seconds at the end of the animation
            self.wait(4)
            
class LinAlg_1_Determinant_geo_4(SophiaCursorScene):
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")

        mat = MathTex("\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}", color=c1t, font_size=fs2)
        self.add(mat)
        
        # Action Sequence
        with self.voiceover(
                text=""" 
                Zusammenfassend gilt <bookmark mark="title_in"/> also folgender Zusammenhang: Eine 2 Kreuz 2 Matrix a b c d streckt das blaue Einheitsquadrat gerade um einen Faktor gleich dem Betrag ihrer Determinante. 
                Das heißt, dass wenn wir den Flächeninhalt des resultierenden roten Rechecks berechnung würden, dann wäre dieser gerade gegeben durch den Betrag der Determinante der Matrix a b c d. 
                """
        ) as tracker:

            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            # Wait for 4 seconds at the end of the animation
            self.wait(4)

class LinAlg_1_Determinant_geo_5(SophiaCursorScene):
    
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")

        mat_1 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\ 0 \\\\ 0 \\ 0 \\ 0 \\\\ 0 \\ 1 \\ 1 \\end{pmatrix}","=", "0", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1.2).shift(0.2*LEFT)
        mat_2 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\ 0 \\\\ 0 \\ 1 \\ 0 \\\\ 0 \\ 0 \\ 1  \\end{pmatrix}","=", "1", color=c1t, font_size=fs2).next_to(mat_1, DOWN, buff=.6)
        mat_3 = MathTex("\det","\\begin{pmatrix} 1 \\ -3 \\ 0 \\\\ 7 \\ -2 \\ 1 \\\\ 1 \\ -1 \\ 0 \\end{pmatrix}","=","-2", color=c1t, font_size=fs2).next_to(mat_2, DOWN, buff=.6)

        copy_1, copy_2, copy_3 = mat_1[1].copy(), mat_2[1].copy(), mat_3[1].copy()     

        sarrus = MathTex("\\text{Regel von Sarrus}", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1.2)

        mat_4 = MathTex("A = ","\\begin{pmatrix} a_{11} \\ a_{12}  \\ a_{13} \\\\ a_{21} \\ a_{22}  \\ a_{23} \\\\ a_{31} \\ a_{32}  \\ a_{33} \\end{pmatrix}", color=c1t, font_size=fs2).next_to(sarrus, DOWN, buff=1.2)
    
        #m0 = Matrix([[a_{11}, a_{12}, a_{13}], [a_{21}, a_{22}, a_{23}], [a_{31}, a_{32}, a_{33}]])
        #m0.add(SurroundingRectangle(m0.get_rows()[1]))
        #self.add(m0)

        det = MathTex("\det(A) = ", color=c1t, font_size=fs2).next_to(mat_4, DOWN, buff=.6)

        # Action Sequence
        with self.voiceover(
                text=""" 
                Jetzt zeigen <bookmark mark="title_in"/> wir dir, <bookmark mark="mat"/> wie du die <bookmark mark="number"/> Determinante einer 3 Kreuz 3 Matrix berechnen kannst. <break time="0.8s"/>  
                Dafür gibt es auch eine <bookmark mark="fade_out_1"/> einfache Formel, <bookmark mark="sarrus"/> die sich die Regel von Sarrus nennt. <break time="0.4s"/>
                Wir betrachten <bookmark mark="A"/> also eine allgemeine 3 Kreuz 3 Matrix A. Die Determinante von A berechnet sich dann wie folgt. 
                Wir betrachten die erweiterte Matrix, wo wir die ersten zwei Spalten der Matrix A nochmal hinter dranhängen. 
                Wir hängen die beiden ersten Spalten nochmal hinten an die Matrix dran.
                Die Determinante ist dann gegeben durch: a Mal d <break time="0.4s"/> Minus b Mal c.<break time="0.4s"/>  
                Wir multiplizieren also die Einträge a und d auf der Hauptdiagonale und ziehen das Produkt der Einträge b und c auf der Nebendiagonale davon ab. 
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            self.wait_until_bookmark("mat")
            self.play(Write(mat_1[0], mat_1[1], mat_1[2]), run_time=1)
            self.play(Write(mat_2[0], mat_2[1], mat_2[2]), run_time=1)
            self.play(Write(mat_3[0], mat_3[1], mat_3[2]), run_time=1)

            self.wait_until_bookmark("number")
            self.play(ReplacementTransform(copy_1, mat_1[3]), run_time=.6)
            self.play(ReplacementTransform(copy_2, mat_2[3]), run_time=.6)
            self.play(ReplacementTransform(copy_3, mat_3[3]), run_time=.6)

            self.wait_until_bookmark("fade_out_1")
            self.play(FadeOut(mat_1,mat_2,mat_3), run_time=1)

            self.wait_until_bookmark("sarrus")
            self.play(Write(sarrus), run_time=1)

            self.wait_until_bookmark("A")
            self.play(Write(mat_4[0], mat_4[1]), run_time=.6)

            #self.wait_until_bookmark("formula")
            #self.play(Write(mat_4[3]), run_time=.6)

            # Wait for 4 seconds at the end of the animation
            self.wait(4)
            

class LinAlg_1_5_I_4_Q(SophiaCursorScene):
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")

        mat_1 = MathTex("\det","\\begin{pmatrix} a \\ b \\\\ c \\ d  \\end{pmatrix}","=", "a \\cdot d - b \\cdot c", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1.2)
        mat_2 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}","=", "1 \\cdot 2 - 0 \\cdot 0", color=c1t, font_size=fs2).next_to(mat_1, DOWN, buff=1.2)
        mat_3 = MathTex("\det","\\begin{pmatrix} 1 \\ 3 \\\\ 7 \\ 2  \\end{pmatrix}","=", " ?", color=c1t, font_size=fs2).next_to(mat_1, DOWN, buff=1.2)
        # Action Sequence
        with self.voiceover(
                text=""" 
                Betrachten wir <bookmark mark="title_in"/> nun als Beispiel die <bookmark mark="mat_2"/> Matrix 1 0 0 2.
                Mit der Regel von Sarrus <bookmark mark="formula_example"/> erhalten wir für die Determinante Eins Mal 2 Minus null Mal null.
                Also ist die Determinante der Matrix Eins null <break time="0.4s"/> null 2 <break time="0.4s"/> gleich 2. <break time="0.8s"/>
                Betrachten <bookmark mark="cleanup"/> wir jetzt ein anderes Beispiel, nämlich die Matrix <bookmark mark="mat_3"/> 1 3 <break time="0.4s"/> 7 2.
                Was<bookmark mark="qmark_in"/> ist die Determinante dieser Matrix?
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            # Wait for 4 seconds at the end of the animation
            self.wait(4)


class LinAlg_1_5_I_4_A(SophiaCursorScene):
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")

        mat_qmark = MathTex("\det","\\begin{pmatrix} 1 \\ 3 \\\\ 7 \\ 2  \\end{pmatrix}","=", " ?", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1.2)
        mat_1 = MathTex("\det","\\begin{pmatrix} 1 \\ 3 \\\\ 7 \\ 2  \\end{pmatrix}","=", " 1 \\cdot 2 - 3 \\cdot 7", color=c1t, font_size=fs2).move_to(mat_qmark)
        mat_sol = MathTex("\det","\\begin{pmatrix} 1 \\ 3 \\\\ 7 \\ 2  \\end{pmatrix}","=", " -19", color=c1t, font_size=fs2).move_to(mat_qmark)
        
        # Action Sequence
        with self.voiceover(
                text=""" 
                Wir wollen <bookmark mark="title_in"/> die Determinante der<bookmark mark="mat_1"/>  Matrix eins drei sieben zwei berechnen. 
                Das ist ja <bookmark mark="transform_1"/>  eins Mal zwei Minus drei Mal sieben. Also ist die Determinante dieser Matrix <bookmark mark="transform_2"/> gleich Minus neunzehn. 
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            # Wait for 4 seconds at the end of the animation
            self.wait(4)

class LinAlg_1_5_I_4_I_2(SophiaCursorScene):
    
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")

        # Action Sequence
        with self.voiceover(
                text=""" 
                Bis jetzt <bookmark mark="title_in"/> haben wir gelernt, <bookmark mark="mat"/> wie man die Determinante <bookmark mark="number"/> von 2 Kreuz 2 und 3 Kreuz 3 Matrizen berechnet.
                Jetzt zeigen wir dir, wie du die Determinante einer allgemeinen n Kreuz n Matrix berechnen kannst. <break time="0.8s"/>  
                Dazu verwenden wir den Laplace'schen Entwicklungsatz. Dieser ist ein Algorithmus of reduction and expansion utilizing minors and cofactors.

                Dafür gibt es auch eine <bookmark mark="fade_out_1"/> einfache Formel, <bookmark mark="sarrus"/> die sich die Regel von Sarrus nennt. <break time="0.4s"/>
                Wir betrachten <bookmark mark="A"/> also eine allgemeine 3 Kreuz 3 Matrix A. Die Determinante von A berechnet sich dann wie folgt. 
                Wir betrachten die erweiterte Matrix, wo wir die ersten zwei Spalten der Matrix A nochmal hinter dranhängen. 
                Wir hängen die beiden ersten Spalten nochmal hinten an die Matrix dran.
                Die Determinante ist dann gegeben durch: a Mal d <break time="0.4s"/> Minus b Mal c.<break time="0.4s"/>  
                Wir multiplizieren also die Einträge a und d auf der Hauptdiagonale und ziehen das Produkt der Einträge b und c auf der Nebendiagonale davon ab. 
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            # Wait for 4 seconds at the end of the animation
            self.wait(4)

class LinAlg_1_5_I_5_I_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")
        
        # Action Sequence
        with self.voiceover(
                text=""" 
                Als nächstes <bookmark mark="title_in"/> schauen wir uns wichtige Eigenschaften der Determinante einer Matrix an. 
                Wir schreiben Mat n R für die Menge der n Kreuz n Matrizen mit reellen Einträgen.
                
                Sei A eine n Kreuz n Matrix. Wenn B die Matrix ist, die entsteht durch Multiplikation eines jeden Eintrags einer Spalte oder Zeile von A mit einem Skalar k, dann gilt,
                dass die Determinante von B gleich k Mal der Determinante von A ist. Ist insbesondere eine Zeile oder eine Spalte von A gleich null, so ist die Determinante von A gleich null.
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            # Wait for 4 seconds at the end of the animation
            self.wait(4)

class LinAlg_1_5_I_5_I_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")
        
        # Action Sequence
        with self.voiceover(
                text=""" 
                Sei A eine <bookmark mark="title_in"/> n Kreuz n Matrix. Wenn B die Matrix ist, die entsteht indem man ein Vielfaches einer Zeile oder Spalte von A zu einer anderen Zeile oder Spalte von A dazurechnet, dann gilt,
                dass die Determinante von B gleich der Determinante von A ist. Sind insbesondere zwei Zeilen oder zwei Spalte von A proportional, so ist die Determinante von A gleich null.
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            # Wait for 4 seconds at the end of the animation
            self.wait(4)

class LinAlg_1_5_I_5_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")
        
        # Action Sequence
        with self.voiceover(
                text=""" 
                Sei A eine <bookmark mark="title_in"/> n Kreuz n Matrix. Wenn B die Matrix ist, die entsteht indem man zwei Spalten oder zwei Zeilen von A vertauscht, dann gilt,
                dass die Determinante von B gleich Minus der Determinante von A ist. Sind insbesondere zwei Zeilen oder zwei Spalte von A gleich, so ist die Determinante von A gleich null.
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            # Wait for 4 seconds at the end of the animation
            self.wait(4)


class LinAlg_1_5_I_5_I_4(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")
        
        # Action Sequence
        with self.voiceover(
                text=""" 
                Sind A und B <bookmark mark="title_in"/> zwei n Kreuz n Matrizen, so gilt, dass die Determinante des Produkts A Mal B gleich dem Produkt der Determinanten von A und B ist. 
                Daraus können wir zwei weitere Eigenschaften ableiten. Erstens: Die Determinante von A mal B ist immer gleich der Determinante von B mal A. Und Zweitens: Ist A invertierbar, so gilt, dass
                die Determinante der Inversen von A gegeben ist durch Eins durch die Determiante von A.
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            # Wait for 4 seconds at the end of the animation
            self.wait(4)

class LinAlg_1_5_I_5_I_5(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")
        
        # Action Sequence
        with self.voiceover(
                text=""" 
                Ist A eine <bookmark mark="title_in"/> n Kreuz n Matrix, so gilt, dass die Determinante der Transponierten von A gleich der Determinante von A ist.
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            # Wait for 4 seconds at the end of the animation
            self.wait(4)


class LinAlg_1_5_I_5_I_5(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")
        
        # Action Sequence
        with self.voiceover(
                text=""" 
                Ist A eine <bookmark mark="title_in"/> n Kreuz n Matrix und r ein Skalar, so gilt, dass die Determinante von r mal A gleich r hoch n mal der Determinante von A ist.
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            # Wait for 4 seconds at the end of the animation
            self.wait(4)

PROTOTYPES=[
########################################################################## Practice: Recognizing Exponential Growth
    PagePrototypeVideo.from_scene(LinAlg_1_Determinant_intro_1),
    PagePrototypeVideo.from_scene(LinAlg_1_Determinant_intro_2),
    PagePrototypeVideo.from_scene(LinAlg_1_Determinant_intro_3_q),
    PagePrototypeQuestion.from_scene(LinAlg_1_Determinant_intro_3_q),
    PagePrototypeVideo.from_scene(LinAlg_1_Determinant_intro_3_a),
    PagePrototypeVideo.from_scene(LinAlg_1_Determinant_intro_3_b)
]