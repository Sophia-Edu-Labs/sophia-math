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
        self.add_mathgrid()

        title = self.add_title("Determinante")

        quest = Text(
            "Wann ist \n"
            "eine \n"
            "quadratische \n"
            "Matrix \n"
            "invertierbar?",
            color=BLACK,
        ).scale(0.8)
        box = SurroundingRectangle(quest, color=YELLOW, buff=MED_LARGE_BUFF)
        mobject = VGroup(box, quest)

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
                In diesem <bookmark mark="title_in"/> Kapitel lernen wir, was die Determinante einer Matrix ist. <bookmark mark="quest"/> Unsere Leitfrage zur Determinante ist: Wann ist eine quadratische Matrix invertierbar? <bookmark mark="fade_out_quest"/> 
                Zuersteinmal macht die Determinante <bookmark mark="mat"/> aus jeder quadratischen Matrix <bookmark mark="number"/>  <break time="0.4s"/> eine Zahl. Wir nennen diese Zahl <bookmark mark="det"/> die Determinante der Matrix. 
                Wir werden sehen, dass diese Zahl wichtige Informationen über die Matrix codiert.
                Wie hängt die <bookmark mark="qmark_1"/> Determinante einer Matrix nun aber <bookmark mark="qmark_2"/> mit unserer Leitfrage zusammen? Die <bookmark mark="fade_out_1"/> Antwort ist: <bookmark mark="not_zero"/> eine Matrix A ist genau dann invertierbar, wenn ihre Determinante nicht null ist. 
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            self.wait_until_bookmark("quest")
            self.play(Write(mobject), run_time=.6)

            self.wait_until_bookmark("fade_out_quest")
            self.play(FadeOut(mobject), run_time=.6)

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
            self.add_shift_sound(1.5)
            self.play(qnark.animate.shift(5*RIGHT))

            self.wait_until_bookmark("qmark_2")
            self.add_shift_sound(0.5)
            self.play(qnark.animate(run_time=0.5).shift(5*RIGHT), run_time=1)


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


class LinAlg_1_5_I_2_I(SophiaCursorScene):
    
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Determinante")

        mat_1 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 0  \\end{pmatrix}","=", "0", color=c1t, font_size=fs2).next_to(title, DOWN, buff=1.2).shift(0.2*LEFT)
        mat_2 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}","=", "2", color=c1t, font_size=fs2).next_to(mat_1, DOWN, buff=.6)
        mat_3 = MathTex("\det","\\begin{pmatrix} 1 \\ 3 \\\\ 7 \\ 2  \\end{pmatrix}","=","-19", color=c1t, font_size=fs2).next_to(mat_2, DOWN, buff=.6)

        copy_1, copy_2, copy_3 = mat_1[1].copy(), mat_2[1].copy(), mat_3[1].copy()     
    
        mat_4 = MathTex("\det","\\begin{pmatrix} a \\ b \\\\ c \\ d  \\end{pmatrix}","=","a\\cdot d", "-", "b\\cdot c", color=c1t, font_size=fs2).next_to(mat_2, DOWN, buff=.6)
        mat_4[1][1].set_color(RED), mat_4[1][4].set_color(RED), mat_4[3][0].set_color(RED),  mat_4[3][2].set_color(RED)
        mat_4[1][2].set_color(BLUE), mat_4[1][3].set_color(BLUE), mat_4[5][0].set_color(BLUE), mat_4[5][2].set_color(BLUE)

        #mat_5 = MathTex("\det","\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 0  \\end{pmatrix}","=", "1 \\cdot 0 - 0 \\cdot 0", color=c1t, font_size=fs2).next_to(mat_4, DOWN, buff=1.2)
        # Action Sequence
        with self.voiceover(
                text=""" 
                Hier zeigen <bookmark mark="title_in"/> wir dir, <bookmark mark="mat"/>  wie du die <bookmark mark="number"/> Determinante von 2 Kreuz 2 Matrizen berechnen kannst. <break time="1.5s"/> 
                Dafür gibt <bookmark mark="fade_out_1"/> es eine einfache Formel. <break time="0.4s"/>
                Die Determinante einer <bookmark mark="det_1"/>Matrix a b c d ist gegeben<bookmark mark="det_2"/> durch: a Mal <bookmark mark="det_3"/>d Minus b Mal c.<break time="0.4s"/>  
                Wir multiplizieren also die Einträge a und d auf der Hauptdiagonale und ziehen das Produkt der Einträge b und c auf der Nebendiagonale davon ab. 
                """
                #Wenn wir zum <bookmark mark="example"/> Beispiel die Matrix 1 null null null betrachten, dann erhalten wir mit dieser <bookmark mark="formula_example"/> Formel Eins Mal null Minus null Mal null.
                #Also ist die Determinante dieser Matrix gleich null.  
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            self.wait_until_bookmark("mat")
            self.play(Write(VGroup(mat_1[0], mat_1[1], mat_1[2])), run_time=1)
            self.play(FadeIn(mat_2[0], mat_2[1], mat_2[2]), run_time=1)
            self.play(FadeIn(mat_3[0], mat_3[1], mat_3[2]), run_time=1)

            self.wait_until_bookmark("number")
            self.play(ReplacementTransform(copy_1, mat_1[3]), run_time=.6)
            self.play(ReplacementTransform(copy_2, mat_2[3]), run_time=.6)
            self.play(ReplacementTransform(copy_3, mat_3[3]), run_time=.6)

            self.wait_until_bookmark("fade_out_1")
            self.play(FadeOut(mat_1,mat_2,mat_3), run_time=1)

            self.wait_until_bookmark("det_1")
            self.play(Write(mat_4[0]), Write(mat_4[1]), run_time=1)

            self.wait_until_bookmark("det_2")
            self.play(Write(mat_4[2]), Write(mat_4[3]), run_time=1)

            self.wait_until_bookmark("det_3")
            self.play(Write(mat_4[4]), run_time=.4)
            self.play(Write(mat_4[5]), run_time=1)

            #self.wait_until_bookmark("example")
            #self.play(FadeIn(mat_5[1]), run_time=.6)
            #self.play(FadeIn(mat_5[0], mat_5[2]), run_time=.6)

            #self.wait_until_bookmark("formula_example")
            #self.play(FadeIn(mat_5[3]), run_time=.6)

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
        mat_3 = MathTex("\det","\\begin{pmatrix} 1 \\ 3 \\\\ 7 \\ 2  \\end{pmatrix}","=", " ?", color=c1t, font_size=fs2).next_to(mat_1, DOWN, buff=1.2)
        # Action Sequence
        with self.voiceover(
                text=""" 
                Wir haben <bookmark mark="title_in"/> ja <bookmark mark="mat_1"/> bereits gesehen, dass für eine 2 Kreuz 2 Matrix a b c d die Determinante <bookmark mark="formula"/> gegeben ist durch a Mal d Minus b Mal c.<break time="0.4s"/> 
                
                Betrachten wir nun als Beispiel die <bookmark mark="mat_2"/> Matrix 1 0 0 2.
                Mit der Formel für die <bookmark mark="formula_example"/> Determinante erhalten wir Eins Mal 2 Minus null Mal null.
                Also ist die Determinante der Matrix Eins null <break time="0.4s"/> null 2 <break time="0.4s"/> gleich 2. <break time="0.8s"/>
                Betrachten <bookmark mark="cleanup"/> wir jetzt ein anderes Beispiel, nämlich die Matrix <bookmark mark="mat_3"/> 1 3 <break time="0.4s"/> 7 2.
                Was<bookmark mark="qmark_in"/> ist die Determinante dieser Matrix?
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

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


class LinAlg_1_5_I_2_A(SophiaCursorScene):
    

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
                Wir wollen <bookmark mark="title_in"/> die Determinante der <bookmark mark="mat_1"/> Matrix eins drei sieben zwei berechnen. 
                Das ist ja <bookmark mark="transform_1"/>  eins Mal zwei Minus drei Mal sieben. Also ist die Determinante dieser Matrix <bookmark mark="transform_2"/> gleich Minus neunzehn. 
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            self.wait_until_bookmark("mat_1")
            self.play(Write(mat_qmark), run_time=1.5)

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

        mat_2 = MathTex("\\begin{pmatrix} a \\ b \\\\ c \\ d \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} x \\\\ y \\end{pmatrix}", "=\\begin{pmatrix} ? \\\\ ? \\end{pmatrix}", color=c1t, font_size=fs2)
        mat_sol = MathTex("\\begin{pmatrix} a \\ b \\\\ c \\ d  \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} x \\\\ y \\end{pmatrix}", "=\\begin{pmatrix} ax + by \\\\ cx + dy \\end{pmatrix}", color=c1t, font_size=fs2).move_to(mat_2)
        self.add(mat_2)
        
        # Action Sequence
        with self.voiceover(
                text=""" 
                Wir haben <bookmark mark="title_in"/> jetzt die Berechnung der Determinante von 2 Kreuz 2 Matrizen gemeistert. Als nächstes werden wir in einer Animation sehen, dass wir uns die Determinante einer Matrix auch geometrisch vorstellen können.
                Dafür müssen wir aber die Matrix als lineare Abbildung auffassen. 
                Lasst uns deshalb in diesem Video die Matrix-Vektor-Multiplikation wiederholen. 
                
                Wenn wir die Matrix a b c d mit dem Vektor x ypsilon multiplizieren, dann <bookmark mark="transform"/>erhalten wir den Vektor a mal x + b mal ypsilon <break time="0.4s"/> c mal x + d mal ypsilon.
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            self.wait_until_bookmark("transform")
            self.play(TransformMatchingTex(mat_2, mat_sol), run_time=3)

            # Wait for 4 seconds at the end of the animation
            self.wait(4)


class LinAlg_1_5_I_3_Q(SophiaCursorScene):
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()

        title = self.add_title("Determinante")

        mat_1 = MathTex("\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} 1 \\\\ 0 \\end{pmatrix}", "=\\begin{pmatrix} 1 \\\\ 0 \\end{pmatrix}", color=c1t, font_size=fs2)
        mat_2 = MathTex("\\begin{pmatrix} 1 \\ 0 \\\\ 0 \\ 2  \\end{pmatrix}", "\\cdot",  "\\begin{pmatrix} 0 \\\\ 1 \\end{pmatrix}", "=\\begin{pmatrix} ? \\\\ ? \\end{pmatrix}", color=c1t, font_size=fs2).move_to(mat_1)

        # Action Sequence
        with self.voiceover(
                text="""Betrachten wir <bookmark mark="title_in"/> als Beispiel die Matrix <bookmark mark="mat_1"/> 1 0 0 2.
                Wenden wir jetzt die Matrix auf den Vektor <bookmark mark="vec_1_in"/> 1 0 an.
                Dafür <bookmark mark="multiply"/> multiplizieren wir ja die Matrix mit dem Vektor. <break time="0.8s"/>.
                Da ist das Ergebnis ja der Vektor <bookmark mark="sol_in"/> 1 0, also bleibt der Vektor gleich.
                <bookmark mark="cleanup"/>
                Betrachten wir jetzt ein anderes Beispiel, nämlich den Vektor <bookmark mark="vec_2_in"/> 0 1.
                Auf welchen<bookmark mark="qmark_in"/> Vektor wird dieser Vektor abgebildet?
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

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


class LinAlg_1_5_I_3_A(SophiaCursorScene):
    

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
                Wenn wir <bookmark mark="title_in"/> die Matrix 1 null null zwei mit dem Vektor 0 1 multiplizieren, dann <bookmark mark="transform"/>erhalten wir den Vektor 0 2.
                Das ist ja das doppelte des ursprünglichen Vektors. Also wird der Vektor 0 1 durch die Matrix 1 0 0 2 um den Faktor zwei gestreckt.
                """
        ) as tracker:
            
            self.wait_until_bookmark("title_in")
            self.play(Write(title))

            self.wait_until_bookmark("transform")
            self.play(TransformMatchingTex(mat_2, mat_sol), run_time=3)

            # Wait for 4 seconds at the end of the animation
            self.wait(4)

class LinAlg_1_5_I_3_G_1(SophiaCursorScene):
    

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

class LinAlg_1_5_I_3_G_2(SophiaCursorScene):
    

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
            
class LinAlg_1_5_I_3_G_3(SophiaCursorScene):
    

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

class LinAlg_1_5_I_4_I_1(SophiaCursorScene):
    
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