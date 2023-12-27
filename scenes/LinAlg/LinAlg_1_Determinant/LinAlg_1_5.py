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

class LinAlg_1_5_I_1_I(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")

        mat_1 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 0  \\end{pmatrix}","=", "0", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1.2)
        mat_2 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}","=", "2", color=c1t, font_size=fs2).next_to(mat_1, DOWN, buff=.6)
        mat_3 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\ 3 \\\\ 0 \\ 2 \\ 0 \\\\ 1 \\ 0 \\ 1  \\end{pmatrix}","=","-4", color=c1t, font_size=fs2).next_to(mat_2, DOWN, buff=.6)

        copy_1, copy_2, copy_3 = mat_1[1].copy(), mat_2[1].copy(), mat_3[1].copy()     

        #det_1 = MathTex("A", "\\longmapsto", "\\det(A)", color=c1t, font_size=fs1)
        invert = MathTex("\\text{A invertierbar}", color=c1t, font_size=fs1).next_to(title, DOWN, buff=2)
        updownarrow = MathTex("\\Updownarrow", color=c1t, font_size=fs1).next_to(invert, DOWN, buff=.6)
        det_2 = MathTex("\\det(A) \\neq 0", color=c1t, font_size=fs1).next_to(updownarrow, DOWN, buff=.6)

        # Action Sequence
        with self.voiceover(
                text=""" 
                Die Determinante <bookmark mark="mat"/> macht aus jeder quadratischen Matrix <bookmark mark="number"/>  <break time="0.4s"/> eine Zahl. Wir nennen diese Zahl <bookmark mark="det"/> die Determinante der Matrix. 
                Die Determinante ist von fundamentaler Wichtigkeit für die lineare Algebra, denn sie erfüllt die folgende nützliche <bookmark mark="fade_out_1"/> Eigenschaft: <bookmark mark="not_zero"/> eine Matrix A ist genau dann invertierbar, wenn ihre Determinante nicht null ist.
                Und übrigens besitzt jede quadratische Matrix eine Determinante.
                """
        ) as tracker:

            self.add_title("Determinante")

            self.wait_until_bookmark("mat")
            self.play(Write(mat_1[1]), run_time=.6)
            self.play(Write(mat_2[1]), run_time=.6)
            self.play(Write(mat_3[1]), run_time=.6)

            self.wait_until_bookmark("number")
            self.play(ReplacementTransform(copy_1, mat_1[3]), run_time=.6)
            self.play(ReplacementTransform(copy_2, mat_2[3]), run_time=.6)
            self.play(ReplacementTransform(copy_3, mat_3[3]), run_time=.6)

            self.wait_until_bookmark("det")
            self.play(Write(mat_1[0], mat_1[2]), run_time=.6)
            self.play(Write(mat_2[0], mat_2[2]), run_time=.6)
            self.play(Write(mat_3[0], mat_3[2]), run_time=.6)

            self.wait_until_bookmark("fade_out_1")
            self.play(FadeOut(mat_1,mat_2,mat_3), run_time=1)

            self.wait_until_bookmark("not_zero")
            self.play(Write(invert), run_time=.6)
            self.play(Write(updownarrow), run_time=.6)
            self.play(Write(det_2), run_time=.6)

            # Wait for 4 seconds at the end of the animation
            self.wait(4)

class LinAlg_1_5_I_1_C(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")

        blist = BulletedList("2x2 Matrix", "Animation", "3x3 Matrix", "Eigenschaften", font_size=fs1).next_to(title, DOWN, buff=2)
        blist.set_color_by_tex("2x2 Matrix", BLUE)
        blist.set_color_by_tex("Animation", BLUE)
        blist.set_color_by_tex("3x3 Matrix", BLUE)
        blist.set_color_by_tex("Eigenschaften", BLUE)
        #self.add(blist)

        viel = MathTex("\\text{Viel Spaß!}", color=c1t, font_size=fs1).next_to(blist, DOWN, buff=1.2)
    
        # Action Sequence
        with self.voiceover(
                text=""" 
                Wir beginnen dieses Kapitel mit dem einfachsten Fall: nämlich mit der <bookmark mark="2times2"/> Berechnung der Determinante einer 2 Kreuz 2 Matrix.
                Sobald wir das gemeistert haben, werden wir in <bookmark mark="geometric"/> einer Animation sehen, dass wir uns die Determinante einer Matrix auch geometrisch vorstellen können.
                Dann zeigen wir, wie man die Determinante <bookmark mark="3times3"/> von 3 Kreuz 3 und anderen  Matrizen berechnet. 
                Am Ende dieses Kapitels schauen wir uns dann <bookmark mark="properties"/> noch weitere wichtige Eigenschaften der Determinante an. <bookmark mark="viel"/> Viel Spaß!
                """
        ) as tracker:
        
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


class LinAlg_1_5_I_2_I(SophiaCursorScene):
    
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")

        mat_1 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 0  \\end{pmatrix}","=", "0", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1.2).shift(0.2*LEFT)
        mat_2 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}","=", "2", color=c1t, font_size=fs2).next_to(mat_1, DOWN, buff=.6)
        mat_3 = MathTex("\det","\\begin{pmatrix} 1 \\ 3 \\\\ 7 \\ 2  \\end{pmatrix}","=","-19", color=c1t, font_size=fs2).next_to(mat_2, DOWN, buff=.6)

        copy_1, copy_2, copy_3 = mat_1[1].copy(), mat_2[1].copy(), mat_3[1].copy()     

        #det_1 = MathTex("A", "\\longmapsto", "\\det(A)", color=c1t, font_size=fs1)
        mat_4 = MathTex("\det","\\begin{pmatrix} a \\ b \\\\ c \\ d  \\end{pmatrix}","=", "a \\cdot d - b \\cdot c", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1.2)
    
        mat_5 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 0  \\end{pmatrix}","=", "1 \\cdot 0 - 0 \\cdot 0", color=c1t, font_size=fs2).next_to(mat_4, DOWN, buff=1.2)
        # Action Sequence
        with self.voiceover(
                text=""" 
                Wir schauen <bookmark mark="mat"/> uns zuerst den einfachsten Fall an.<break time="0.4s"/> Nämlich, die <bookmark mark="number"/> Berechnung der Determinante von 2 Kreuz 2 Matrizen.<break time="0.8s"/> <bookmark mark="fade_out_1"/> 
                Zuersteinmal ist die <bookmark mark="det"/> Determinante eine Formel.<break time="0.4s"/>
                Die Determinante einer Matrix a b <break time="0.4s"/> c d ist gegeben <bookmark mark="formula"/> durch a Mal d <break time="0.4s"/> Minus b Mal c.<break time="0.4s"/>  Wir multiplizieren also die Einträge a und d auf der Hauptdiagonale und ziehen das Produkt der Einträge b und c auf der Nebendiagonale davon ab. 
                
                Wenn wir zum <bookmark mark="example"/> Beispiel die Matrix 1 null null null betrachten, dann erhalten wir mit dieser <bookmark mark="formula_example"/> Formel Eins Mal null Minus null Mal null.
                Also ist die Determinante der Matrix Eins null <break time="0.4s"/> null null <break time="0.4s"/> gleich null.  
                """
        ) as tracker:

            self.wait_until_bookmark("mat")
            self.play(FadeIn(mat_1[0], mat_1[1], mat_1[2]), run_time=1)
            self.play(FadeIn(mat_2[0], mat_2[1], mat_2[2]), run_time=1)
            self.play(FadeIn(mat_3[0], mat_3[1], mat_3[2]), run_time=1)

            self.wait_until_bookmark("number")
            self.play(ReplacementTransform(copy_1, mat_1[3]), run_time=.6)
            self.play(ReplacementTransform(copy_2, mat_2[3]), run_time=.6)
            self.play(ReplacementTransform(copy_3, mat_3[3]), run_time=.6)

            self.wait_until_bookmark("fade_out_1")
            self.play(FadeOut(mat_1,mat_2,mat_3), run_time=1)

            self.wait_until_bookmark("det")
            self.play(FadeIn(mat_4[0], mat_4[1], mat_4[2]), run_time=.6)

            self.wait_until_bookmark("formula")
            self.play(FadeIn(mat_4[3]), run_time=.6)

            self.wait_until_bookmark("example")
            self.play(FadeIn(mat_5[1]), run_time=.6)
            self.play(FadeIn(mat_5[0], mat_5[2]), run_time=.6)

            self.wait_until_bookmark("formula_example")
            self.play(FadeIn(mat_5[3]), run_time=.6)

            # Wait for 4 seconds at the end of the animation
            self.wait(4)
            

class LinAlg_1_5_I_2_Q(SophiaCursorScene):
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")

        mat_1 = MathTex("\det","\\begin{pmatrix} a \\ b \\\\ c \\ d  \\end{pmatrix}","=", "a \\cdot d - b \\cdot c", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1.2)
        mat_2 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}","=", "1 \\cdot 2 - 0 \\cdot 0", color=c1t, font_size=fs2).next_to(mat_1, DOWN, buff=1.2)
        mat_3 = MathTex("\det","\\begin{pmatrix} 1 \\ 3 \\\\ 7 \\ 2  \\end{pmatrix}","=", "?", color=c1t, font_size=fs2).next_to(mat_1, DOWN, buff=1.2)
        # Action Sequence
        with self.voiceover(
                text=""" 
                Wir haben ja <bookmark mark="mat_1"/> bereits gesehen, dass für eine 2 Kreuz 2 Matrix a b c d die Determinante <bookmark mark="formula"/> gegeben ist durch a Mal d Minus b Mal c.<break time="0.4s"/> 
                
                Betrachten wir nun als Beispiel die <bookmark mark="mat_2"/> Matrix 1 0 0 2.
                Mit der Formel für die <bookmark mark="formula_example"/> Determinante erhalten wir Eins Mal 2 Minus null Mal null.
                Also ist die Determinante der Matrix Eins null <break time="0.4s"/> null 2 <break time="0.4s"/> gleich 2. <break time="0.8s"/>
                Betrachten <bookmark mark="cleanup"/> wir jetzt ein anderes Beispiel, nämlich die Matrix <bookmark mark="mat_3"/> 1 3 <break time="0.4s"/> 7 2.
                Was<bookmark mark="qmark_in"/> ist die Determinante dieser Matrix?
                """
        ) as tracker:

            self.wait_until_bookmark("mat_1")
            self.play(Write(VGroup(mat_1[0], mat_1[1], mat_1[2])), run_time=.6)

            self.wait_until_bookmark("formula")
            self.play(Write(mat_1[3]), run_time=.6)

            self.wait_until_bookmark("mat_2")
            self.play(Write(mat_2[1]), run_time=.6)
            
            self.wait_until_bookmark("formula_example")
            self.play(Write(VGroup(mat_2[0], mat_2[2], mat_2[3])), run_time=.6)

            self.wait_until_bookmark("cleanup")
            self.play(FadeOut(mat_2), run_time=.6)

            self.wait_until_bookmark("mat_3")
            self.play(Write(mat_3[1]), run_time=.6)

            self.wait_until_bookmark("qmark_in")
            self.play(Write(VGroup(mat_3[0], mat_3[2], mat_3[3])), run_time=.6)
            

            # Wait for 4 seconds at the end of the animation
            self.wait(4)


class LinAlg_1_5_I_2_a(SophiaCursorScene):
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")

        mat_qmark = MathTex("\det","\\begin{pmatrix} 1 \\ 3 \\\\ 7 \\ 2  \\end{pmatrix}","=", " ?", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1.2)
        mat_1 = MathTex("\det","\\begin{pmatrix} 1 \\ 3 \\\\ 7 \\ 2  \\end{pmatrix}","=", " 1 \\cdot 2 - 3 \\cdot 7", color=c1t, font_size=fs2).move_to(mat_1)
        mat_sol = MathTex("\det","\\begin{pmatrix} 1 \\ 3 \\\\ 7 \\ 2  \\end{pmatrix}","=", " -19", color=c1t, font_size=fs2).move_to(mat_1)
        # Action Sequence
        with self.voiceover(
                text=""" 
                Wir wollen <bookmark mark="mat_1"/> die Determinante der Matrix eins drei sieben zwei berechnen. 
                Das ist ja <bookmark mark="transform_1"/>  eins Mal zwei Minus drei Mal sieben. Also ist die Determinante der Matrix eins drei sieben zwei <bookmark mark="transform_2"/> gleich Minus neunzehn. 
                """
        ) as tracker:

            self.wait_until_bookmark("mat_1")
            self.play(Write(VGroup(mat_qmark[0], mat_qmark[1], mat_qmark[2])), run_time=.6)
            self.play(Write(mat_qmark[3]), run_time=.6)

            self.wait_until_bookmark("transform_1")
            self.play(TransformMatchingTex(mat_qmark, mat_1), run_time=3)

            self.wait_until_bookmark("transform_2")
            self.play(TransformMatchingTex(mat_1, mat_sol), run_time=3)

            # Wait for 4 seconds at the end of the animation
            self.wait(4)


class LinAlg_1_5_I_3_I(SophiaCursorScene):
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")

        mat_2 = MathTex("\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} 0 \\\\ 1 \\end{pmatrix}", "=\\begin{pmatrix} ? \\\\ ? \\end{pmatrix}", color=c1t, font_size=fs2)
        mat_sol = MathTex("\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} 0 \\\\ 1 \\end{pmatrix}", "=\\begin{pmatrix} 0 \\\\ 2 \\end{pmatrix}", color=c1t, font_size=fs2).move_to(mat_2)
        self.add(mat_2)
        
        # Action Sequence
        with self.voiceover(
                text=""" 
                Um die Determinante einer Matrix besser zu verstehen, ist es nützlich ihre geometrische Bedeutung zu kennen. Dafür müssen wir aber die Matrix als lineare Abbildung auffassen. 
                Lasst uns deshalb in diesem Video die Matrix-Vektor-Multiplikation wiederholen. 
                
                Wenn wir die Matrix 1 null null zwei mit dem Vektor 0 1 multiplizieren, dann <bookmark mark="transform"/>erhalten wir den Vektor 0 2.
                Das ist ja das doppelte des ursprünglichen Vektors. Also wird der Vektor 0 1 durch die Matrix 1 0 0 2 um den Faktor zwei gestreckt.
                """
        ) as tracker:

            self.wait_until_bookmark("transform")
            self.play(TransformMatchingTex(mat_2, mat_sol), run_time=3)

            # Wait for 4 seconds at the end of the animation
            self.wait(4)


class LinAlg_1_5_I_3_q(SophiaCursorScene):
    

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
            self.play(Write(mat_1[0]), run_time=.6)

            self.wait_until_bookmark("vec_1_in")
            self.play(Write(mat_1[2]), run_time=.6)

            self.wait_until_bookmark("multiply")
            self.play(Write(mat_1[1]), run_time=.6)

            self.wait_until_bookmark("sol_in")
            self.play(Write(mat_1[3]), run_time=.6)

            self.wait_until_bookmark("cleanup")
            self.add(mat_2[0])
            self.play(FadeOut(mat_1), run_time=.6)

            self.wait_until_bookmark("vec_2_in")
            self.play(Write(mat_2[2]), run_time=.6)

            self.wait_until_bookmark("qmark_in")
            self.play(Write(mat_2[3]), Write(mat_2[1]), run_time=.6)

            # Wait for 4 seconds at the end of the animation
            self.wait(4)


class LinAlg_1_5_I_3_a(SophiaCursorScene):
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")

        mat_2 = MathTex("\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} 0 \\\\ 1 \\end{pmatrix}", "=\\begin{pmatrix} ? \\\\ ? \\end{pmatrix}", color=c1t, font_size=fs2)
        mat_sol = MathTex("\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} 0 \\\\ 1 \\end{pmatrix}", "=\\begin{pmatrix} 0 \\\\ 2 \\end{pmatrix}", color=c1t, font_size=fs2).move_to(mat_2)
        self.add(mat_2)
        
        # Action Sequence
        with self.voiceover(
                text=""" 
                Wenn wir die Matrix 1 null null zwei mit dem Vektor 0 1 multiplizieren, dann <bookmark mark="transform"/>erhalten wir den Vektor 0 2.
                Das ist ja das doppelte des ursprünglichen Vektors. Also wird der Vektor 0 1 durch die Matrix 1 0 0 2 um den Faktor zwei gestreckt.
                """
        ) as tracker:

            self.wait_until_bookmark("transform")
            self.play(TransformMatchingTex(mat_2, mat_sol), run_time=3)

            # Wait for 4 seconds at the end of the animation
            self.wait(4)
