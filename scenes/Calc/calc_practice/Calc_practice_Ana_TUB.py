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


##################################### INITIAL MC Part 
#####################################

##################################### 
#####################################

# Ana Ing TUB 2019/4

# MC, Injective, Inverse
class Calc_practice_MC_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=[r"$g\circ f$ ist injektiv", r"$g\circ f$ ist surjektiv", r"$g\circ f$ existiert nicht", r"$(g\circ f)(x)=x\, \forall x\in[0,\infty)$"],
            correctAnswerIndex=1,
            questionText = self.translate("Calc_1.Sequences.1q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        f_1 = MathTex("f:[1,\\infty)\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_2 = MathTex("f(x)=x^2-1", color=c1t, font_size=fs2)
        f = VGroup(f_1, f_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT)
        g_1 = MathTex("g:[0,\\infty)\\rightarrow\\mathbb{R}, ", color=c1t, font_size=fs2)
        g_2 = MathTex("g(x)=e^x", color=c1t, font_size=fs2)
        g = VGroup(g_1, g_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT)
        g_circ_f = MathTex("g\\circ f:[1,\\infty)\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_g_fg = VGroup(f, g, g_circ_f).arrange(DOWN, buff=0.4, aligned_edge=LEFT).set_y(1.4)

        answer_a = Tex("a) $g\\circ f$ ist injektiv", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $g\\circ f$ ist surjektiv", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $g\\circ f$ existiert nicht", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $(g\\circ f)(x)=x\\, \\forall x\\in[0,\\infty)$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(g_circ_f, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text=
                """
Seien die Funktion<bookmark mark="f_in_1"/> f, welche von dem halboffenen Intervall von 1 bis unendlich in die reellen Zahlen abbildet, <bookmark mark="f_in_2"/>und x auf x minus 1 quadrat abbildet, sowie die Funktion <bookmark mark="g_in_1"/>g, welche von dem halboffenen Intervall von 0 bis unendlich in die reellen Zahlen abbildet, <bookmark mark="g_in_2"/>und x auf e hoch x abbildet, gegeben.
Welche der folgenden Aussagen trifft auf die Komposition <bookmark mark="g_circ_f_in"/>g nach f zu?
Aussage <bookmark mark="answer_a_in"/>a: Die Komposition g nach f ist injektiv. ...
Aussage <bookmark mark="answer_b_in"/>b: Die Komposition g nach f ist surjektiv. ...
Aussage <bookmark mark="answer_c_in"/>c: Die Komposition g nach f existiert nicht. ...
Oder aussage <bookmark mark="answer_d_in"/>d: Die Komposition g nach f ist für alle x in dem halboffenen Intervall von 0 bis unendlich gleich x. ...
"""
        ) as tracker:
            
            self.wait_until_bookmark("f_in_1")
            self.play(Write(f[0]))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f[1]))

            self.wait_until_bookmark("g_in_1")
            self.play(Write(g[0]))

            self.wait_until_bookmark("g_in_2")
            self.play(Write(g[1]))

            self.wait_until_bookmark("g_circ_f_in")
            self.play(Write(g_circ_f))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#

class Calc_practice_MC_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        f_1 = MathTex("f:", "[1,\\infty)", "\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_2 = MathTex("f(x)=", "x^2-1", color=c1t, font_size=fs2)
        f = VGroup(f_1, f_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT)
        g_1 = MathTex("g:", "[0,\\infty)", "\\rightarrow\\mathbb{R}, ", color=c1t, font_size=fs2)
        g_2 = MathTex("g(x)=", "e", "^x", color=c1t, font_size=fs2)
        g = VGroup(g_1, g_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT)
        g_circ_f = MathTex("g\\circ f", ":[1,\\infty)\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        g_circ_f_plugged_in = MathTex("(g\\circ f)(x)", "=e", "^{x^2-1}", color=c1t, font_size=fs2)
        f_g_fg = VGroup(f, g, g_circ_f).arrange(DOWN, buff=0.4, aligned_edge=LEFT).set_y(1.4)

        is_injective = Tex("$\\bullet$ $g\\circ f$ ist injektiv", color=BLUE, font_size=fs3)
        not_surjective = Tex("$\\bullet$ $g\\circ f$ Ist nicht surjektiv", color=BLUE, font_size=fs3)
        not_equal = Tex("$\\bullet$  $f(2)=e^3\\neq 1$", color=BLUE, font_size=fs3)
        observations = VGroup(is_injective, not_surjective, not_equal).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(g_circ_f_plugged_in, DOWN, buff=0.6).shift(UP*2)
        

        answer_a = Tex("a) $g\\circ f$ ist injektiv", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $g\\circ f$ ist surjektiv", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $g\\circ f$ existiert nicht", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $(g\\circ f)(x)=x\\, \\forall x\\in[0,\\infty)$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(g_circ_f, DOWN, buff=0.5)

        self.add(f_g_fg, answers)

        # Action Sequence
        with self.voiceover(
                text=
                """
Fangen wir damit an, <bookmark mark="f_stays"/>alle möglichen Werte von f zu betrachten. Wir können ja alle Werte von<bookmark mark="highlight_interval"/> 1 bis unendlich einsetzen. Dadurch erreicht x quadrat alle Werte von 1 bis unendlich, und f erreicht somit alle Werte<bookmark mark="intervall_f_range"/> von 0 bis unendlich. Das bedeutet, <bookmark mark="g_in"/>dass alle möglichen Werte von f im <bookmark mark="highlight_def_g"/>Definitionsbereich von g liegen. Also existiert<bookmark mark="g_f_in"/> g nach f auch. Außerdem stellen wir fest, dass f injektiv ist, denn wenn wir nur Werte von 1 bis unendlich einsetzen, erhalten wir die rechte Hälfte der Parabel.
Wir finden g nach f ja, indem wir f von x in den Term g anstelle von x einsetzen. Dann erhalten wir <bookmark mark="g_circ_f"/>g von f von x, gleich e hoch x quadrat minus eins. <bookmark mark="clean_up"/>Diese Funktion<bookmark mark="injective"/> ist injektiv, denn e hoch x ist injektiv und die Verkettung zweier injektiver Funktionen ist stets injektiv. Wir erkennen auch, dass <bookmark mark="surjective"/>g nach f nicht surjektiv ist, weil die e-Funktion keine negativen Werte annimmt. Und dass g nach f von x nicht immer gleich x ist, sehen wir, <bookmark mark="gfx_neq_x"/>wenn wir zum Beispiel x gleich 2 einsetzen. Dann erhalten wir e hoch 2 quadrat minus 1, was e hoch drei und somit nicht gleich 2 ist.
"""
        ) as tracker:
            
            self.wait_until_bookmark("f_stays")
            self.add_shift_sound(0.5)
            self.play(VGroup(g, g_circ_f, answers).animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("highlight_interval")
            self.play(Indicate(f_1[1], color=RED, scale_factor=1.4))

            self.wait_until_bookmark("intervall_f_range")
            self.add_shift_sound(0.5)
            self.play(g_1[1].animate.shift(5*LEFT), run_time=.5)

            self.wait_until_bookmark("g_in")
            self.add_shift_sound(0.5)
            self.play(g_1[0].animate.shift(5*LEFT), g_1[2].animate.shift(5*LEFT), g_2.animate.shift(5*LEFT), run_time=.5)

            self.wait_until_bookmark("highlight_def_g")
            self.play(Indicate(g_1[1], color=RED, scale_factor=1.4))

            self.wait_until_bookmark("g_f_in")
            g_circ_f.set_color(GREEN)
            self.add_shift_sound(0.5)
            self.play(g_circ_f[0].animate.shift(5*LEFT), run_time=.5)

            self.wait_until_bookmark("g_circ_f")
            self.play(ReplacementTransform(g_circ_f[0], g_circ_f_plugged_in[0]), run_time=.5)
            self.wait(.5)
            self.play(ReplacementTransform(g_circ_f[1].copy(), g_circ_f_plugged_in[1]), run_time=.5)
            self.play(ReplacementTransform(f_2[1].copy(), g_circ_f_plugged_in[2]), run_time=.5)

            self.wait_until_bookmark("clean_up")
            self.add_shift_sound(0.5)
            self.play(Unwrite(f), Unwrite(g), g_circ_f_plugged_in.animate.shift(2*UP), run_time=.5)

            self.wait_until_bookmark("injective")
            self.play(Write(is_injective))

            self.wait_until_bookmark("surjective")
            self.play(Write(not_surjective))

            self.wait_until_bookmark("gfx_neq_x")
            self.play(Write(not_equal))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### 
#####################################
# MC, Mean Value Theorem
class Calc_practice_MC_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=["$f$ auf $[0,1]$ differenzierbar", "Keine weitere Bedingung nötig", "$f$ ist auf $[0,1]$ integrierbar", "$f$ hat in $]0,1[$ lokales Extremum"],
            correctAnswerIndex=0,
            questionText = self.translate("Calc_1.Sequences.1q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        f_1 = MathTex("f:[0,1])\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_2 = MathTex("f(0)=0, \\, f(1)=0", color=c1t, font_size=fs2)
        f = VGroup(f_1, f_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        down_q = MathTex("\\Downarrow \\, ?", color=BLUE, font_size=fs2).next_to(f, DOWN, buff=0.4)
        exists_z = MathTex("\\exists z\\in[0,1]: f'(z)=0", color=c1t, font_size=fs2).next_to(down_q, DOWN, buff=0.4)

        answer_a = Tex("a) $f$ auf $[0,1]$ differenzierbar", color=BLUE, font_size=fs3)
        answer_b = Tex("b) Keine weitere Bedingung nötig", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ ist auf $[0,1]$ integrierbar", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f$ hat in $]0,1[$ lokales Extremum", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(exists_z, DOWN, buff=0.5)

        # Action Sequence
        with self.voiceover(
                text=
                """
Sei die Funktion <bookmark mark="f_in_1"/>f, welche von dem halboffenen Intervall von 0 bis 1 in die reellen Zahlen abbildet, gegeben.
Wir wissen ferner, dass f<bookmark mark="f_in_2"/>von null gleich null ist, und dass f von eins auch null ist.
Welche der <bookmark mark="down_q_in"/>folgenden Aussagen stellt sicher,<bookmark mark="exists_z_in"/> dass es ein z in dem geschlosseen Intervall von 0 bis 1 gibt, sodass die Ableitung von f an der Stelle z gleich 0 ist?
Aussage <bookmark mark="answer_a_in"/>a: Die Funktion f ist auf dem geschlossenen Intervall von 0 bis 1 differenzierbar. ...
Aussage <bookmark mark="answer_b_in"/>b: Es ist keine weitere Bedingung nötig. ...
Aussage <bookmark mark="answer_c_in"/>c: Die Funktion f ist auf dem geschlossenen Intervall von 0 bis 1 integrierbar. ...
Oder aussage <bookmark mark="answer_d_in"/>d: Die Funktion f hat in dem offenen Intervall von 0 bis 1 ein lokales Extremum. ...
"""
        ) as tracker:
            
            self.wait_until_bookmark("f_in_1")
            self.play(Write(f[0]))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f[1]))
            
            self.wait_until_bookmark("down_q_in")
            self.play(Write(down_q))

            self.wait_until_bookmark("exists_z_in")
            self.play(Write(exists_z))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#

class Calc_practice_MC_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        f_1 = MathTex("f:[0,1])\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_2 = MathTex("f(0)=0, \\, f(1)=0", color=c1t, font_size=fs2)
        f = VGroup(f_1, f_2).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        down_q = MathTex("\\Downarrow \\, ?", color=BLUE, font_size=fs2).next_to(f, DOWN, buff=0.4)
        exists_z = MathTex("\\exists z\\in[0,1]: f'(z)=0", color=c1t, font_size=fs2).next_to(down_q, DOWN, buff=0.4)

        answer_a = Tex("a) $f$ auf $[0,1]$ differenzierbar", color=BLUE, font_size=fs3)
        answer_b = Tex("b) Keine weitere Bedingung nötig", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ ist auf $[0,1]$ integrierbar", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f$ hat in $]0,1[$ lokales Extremum", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(exists_z, DOWN, buff=0.5)

        f_graph_left = lambda x: x #if x<.5 else -x + 1
        f_graph_right = lambda x: -x + 1
        cords = self.add_cords([0,1,1], [0,1.2,1], x_ticks=[0,1], y_ticks=[0,1], width=2, height=2).shift(UP*.6)
        graph = VGroup(cords[0].plot(f_graph_left, color=RED, x_range=[0,0.5,1000]), cords[0].plot(f_graph_right, color=RED, x_range=[0.5,1,1000]))
        
        self.add(f, down_q, exists_z, answers)

        # Action Sequence
        with self.voiceover(
                text=
                """
Wenn f auf dem geschlossenen Intervall 0, 1 differenzierbar ist, so können wir den Zwischenwertsatz anwenden, und erhalten, dass es ein x im offenem Intervall von 0 bis 1 gibt, sodass die Ableitung f strich von x gleich 0 ist. ... <bookmark mark="a_green"/>Also ist a richtig. ....
Falls wir keine weiteren Bedingungen haben, kann es sein, dass die Ableitung von f an keiner Stelle existiert. ... <bookmark mark="b_red"/>Also ist b falsch. ...
Die Funktion, die du <bookmark mark="graph_in"/>hier siehst, ist ein Beispiel, in dem<bookmark mark="c_d_red"/> Bedingung c und d erfüllt sind, es aber kein x zwischen 0 und 1 gibt, sodass die Ableitung von f an der Stelle x gleich 0 ist.
Denn die Funktion ist integrierbar, und hat ein lokales Extremum. Allerdings ist die Ableitung nirgends gleich Null. <bookmark mark="c_d_red"/>Also sind c und d falsch. ...
"""
        ) as tracker:
            
            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN))

            self.wait_until_bookmark("b_red")
            self.play(answer_b.animate.set_color(RED))

            self.wait_until_bookmark("graph_in")
            self.play(Write(cords), Unwrite(f), Unwrite(down_q), exists_z.animate.scale(.85), run_time=1)
            self.play(Write(graph), run_time=1)

            self.wait_until_bookmark("c_d_red")
            self.play(answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### 
#####################################
# MC, Complex Numbers
class Calc_practice_MC_3_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=["Die grüne Skizze", "Die blaue Skizze", "Die rote Skizze", "Die pinke Skizze"],
            correctAnswerIndex=1,
            questionText = "Welche der Skizzen stellt die Menge $z\\in \\mathbb C$ dar, für die gilt, dass $|z - 1| = |z+i|$ ist?"
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-2,2,1], [-2,2,1], x_ticks=[0,1], y_ticks=[0,1], y_labels=["0","i"])
        plane = cords[0]
        plot_1 = plane.plot(lambda x: x, color=GREEN)
        plot_2 = plane.plot(lambda x: -x, color=BLUE)
        unit_length = plane.c2p(1,0)[0] - plane.c2p(0,0)[0]
        circ_1 = Circle(radius=unit_length, color=RED).move_to(plane.c2p(1,-1))
        circ_2 = Circle(radius=unit_length, color=PINK).move_to(plane.c2p(-1,1))
        set = MathTex("{z \\in \\mathbb C : |z - 1| = |z+i|}", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.8)
        
        # Action Sequence
        with self.voiceover(
                text=
                """
Betrachten wir die Menge <bookmark mark="set_in"/>der komplexen Zahlen z, für die der Betrag von z minus 1 gleich dem Betrag von z plus i ist.
Welche der folgenden Skizzen stellt <bookmark mark="cords_in"/>diese Menge dar?
<bookmark mark="green_in"/> Ist es die grüne Skizze? ...
<bookmark mark="blue_in"/> Oder ist es die blaue Skizze? ...
<bookmark mark="red_in"/> Oder vielleicht die rote Skizze? ...
<bookmark mark="pink_in"/>Oder aber die pinke Skizze? ...
"""
        ) as tracker:
            
            self.wait_until_bookmark("set_in")
            self.play(Write(set))

            self.wait_until_bookmark("cords_in")
            self.play(Write(cords))

            self.wait_until_bookmark("green_in")
            self.add_pencil_sound(.8)
            self.play(Write(plot_1), run_time=.8)

            self.wait_until_bookmark("blue_in")
            self.add_pencil_sound(.8)
            self.play(Write(plot_2), run_time=.8)

            self.wait_until_bookmark("red_in")
            self.add_pencil_sound(.8)
            self.play(Write(circ_1), run_time=.8)

            self.wait_until_bookmark("pink_in")
            self.add_pencil_sound(.8)
            self.play(Write(circ_2), run_time=.8)
#
class Calc_practice_MC_3_a(SophiaCursorScene):


    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        cords = self.add_cords([-2,2,1], [-2,2,1], x_ticks=[0,1], y_ticks=[0,1], y_labels=["0","i"])
        plane = cords[0]
        plot_1 = plane.plot(lambda x: x, color=GREEN)
        plot_2 = plane.plot(lambda x: -x, color=BLUE)
        unit_length = plane.c2p(1,0)[0] - plane.c2p(0,0)[0]
        circ_1 = Circle(radius=unit_length, color=RED).move_to(plane.c2p(1,-1))
        circ_2 = Circle(radius=unit_length, color=PINK).move_to(plane.c2p(-1,1))
        set = MathTex("{z \\in \\mathbb C : ", "|z - 1|", " = ", "|z+i|", "}", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.8)

        mark_origin = Cross(scale_factor=.1, color=RED, stroke_width=5).move_to(plane.c2p(0,0))
        p_1, p_2 = plane.c2p(1,0), plane.c2p(0,-1)
        mark_1 = Cross(scale_factor=.1, color=RED, stroke_width=5).move_to(p_1)
        mark_i = Cross(scale_factor=.1, color=RED, stroke_width=5).move_to(p_2)

        self.add(set, cords, plot_1, plot_2, circ_1, circ_2)

        x,y,_ = plot_2.get_start()
        cursor = AltCursor(idle=False, x=x, y=y)
        line_1 = Line(start=plane.c2p(0,0), end=plane.c2p(1,0), color=GREY_C, stroke_width = 2).add_updater(lambda l: l.put_start_and_end_on(p_1, cursor.get_center()))
        line_2 = Line(start=plane.c2p(0,0), end=plane.c2p(0,-1), color=GREY_C, stroke_width = 2).add_updater(lambda l: l.put_start_and_end_on(p_2, cursor.get_center()))
        
        # Action Sequence
        with self.voiceover(
                text=
                """
Der komplexe Absolutbetrag von einer komplexen Zahl z ist der Abstand von z zum <bookmark mark="highlight_origin"/>Ursprung. ...
Folglich ist der Betrag von <bookmark mark="higlight_abs_1"/>z minus 1 gleich dem Abstand von z<bookmark mark="move_z_1"/> zur Zahl 1.
Und der Betrag von <bookmark mark="higlight_abs_2"/>z plus i ist gleich dem Abstand von z zur<bookmark mark="write_z_i"/> Zahl minus i.
Dann ist die Gleichung also erfüllt, wenn z gleich weit von 1 und minus i entfernt ist.
Das ist der Fall<bookmark mark="higlight_blue"/> für alle Punkte auf der blauen Geraden. ...
Also ist die richtige Antwort, dass es die blaue Skizze ist. ...
"""
        ) as tracker:

            self.wait_until_bookmark("highlight_origin")
            self.add_pencil_sound(.5)
            self.play(Create(mark_origin), run_time=.5)

            self.wait_until_bookmark("higlight_abs_1")
            self.play(Indicate(set[1], color=RED), run_time=3)

            self.wait_until_bookmark("move_z_1")
            self.play(ReplacementTransform(mark_origin, mark_1), run_time=.5)

            self.wait_until_bookmark("higlight_abs_2")
            self.play(Indicate(set[3], color=RED), run_time=3)

            self.wait_until_bookmark("write_z_i")
            self.add_pencil_sound(.5)
            self.play(Create(mark_i), run_time=.5)

            self.wait_until_bookmark("higlight_blue")
            self.play(Unwrite(plot_1), Unwrite(circ_1), Unwrite(circ_2), run_time=.5)
            self.wait(1)
            self.play(Write(cursor), Write(line_1), Write(line_2), run_time=.5)
            self.play(MoveAlongPath(cursor, plot_2, rate_func=linear), run_time=3)
            self.wait(.5)
            self.play(Unwrite(cursor), Unwrite(line_1), Unwrite(line_2), run_time=.5)

        self.wait(4)

##################################### 
#####################################
# MC
class Calc_practice_MC_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=["$\\lim_{n\\to\\infty}a_{n}=2a$", "$\\lim_{n\\to\\infty}a_{n}=a$", "$\\lim_{n\\to\\infty}a_{n}=2a+1$", "$\\lim_{n\\to\\infty}a_{n}$ existiert nicht"],
            correctAnswerIndex=1,
            questionText = "Welche der folgenden Aussagen trifft auf den Grenzwert von $\\left(a_n\\right)_{n\\in\\mathbb N}$ zu?"
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        a_n_1 = MathTex("\\left(a_n\\right)_{n\\in\\mathbb N}", color=c1t, font_size=fs2)
        a_n_2 = MathTex("\\lim_{n\\to\\infty}a_{2n}=a", color=c1t, font_size=fs2)
        a_n_3 = MathTex("\\lim_{n\\to\\infty}a_{2n+1}=a", color=c1t, font_size=fs2)
        a_n = VGroup(a_n_1, a_n_2, a_n_3).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        answer_a = Tex("a) $\\lim_{n\\to\\infty}a_{n}=2a$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\lim_{n\\to\\infty}a_{n}=a$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\lim_{n\\to\\infty}a_{n}=2a+1$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $\\lim_{n\\to\\infty}a_{n}$ existiert nicht", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(a_n, DOWN, buff=0.8)
        # Action Sequence
        with self.voiceover(
                text=
                """
Sei <bookmark mark="a_n_in_1"/>a_n eine Folge von reellen Zahlen, die für alle n in den natürlichen Zahlen definiert ist.
Wir wissen, dass der Grenzwert von a 2 n <bookmark mark="a_n_in_2"/> für n gegen unendlich gleich a ist. Und wir wissen auch, <bookmark mark="a_n_in_3"/>dass der Grenzwert von a 2 n plus 1 gleich a ist.
Welche der folgenden Aussagen trifft auf den Grenzwert von a n zu?
Aussage <bookmark mark="answer_a_in"/>a: Der Grenzwert von a n ist gleich 2 a. ...
Aussage <bookmark mark="answer_b_in"/>b: Der Grenzwert von a n ist gleich a. ...
Aussage <bookmark mark="answer_c_in"/>c: Der Grenzwert von a n ist gleich 2 a plus 1. ...
Oder aussage <bookmark mark="answer_d_in"/>d: Der Grenzwert von a n existiert nicht. ...
"""
        ) as tracker:
            
            self.wait_until_bookmark("a_n_in_1")
            self.play(Write(a_n[0]))

            self.wait_until_bookmark("a_n_in_2")
            self.play(Write(a_n[1]))

            self.wait_until_bookmark("a_n_in_3")
            self.play(Write(a_n[2]))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        self.wait(4)
#

class Calc_practice_MC_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        a_n_1 = MathTex("\\left(a_n\\right)_{n\\in\\mathbb N}", color=c1t, font_size=fs2)
        a_n_2 = MathTex("\\lim_{n\\to\\infty}a_{2n}=a", color=c1t, font_size=fs2)
        a_n_3 = MathTex("\\lim_{n\\to\\infty}a_{2n+1}=a", color=c1t, font_size=fs2)
        a_n = VGroup(a_n_1, a_n_2, a_n_3).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        answer_a = Tex("a) $\\lim_{n\\to\\infty}a_{n}=2a$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\lim_{n\\to\\infty}a_{n}=a$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\lim_{n\\to\\infty}a_{n}=2a+1$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $\\lim_{n\\to\\infty}a_{n}$ existiert nicht", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(a_n, DOWN, buff=0.8)

        self.add(a_n, answers)

        # Action Sequence
        with self.voiceover(
                text=
                """
Da die Teilfolge <bookmark mark="highlight_evens"/>a 2 n gegen a konvergiert, konvergiert die Teilfolge aller Elemente mit geradem Index gegen den Wert a. ...
Und da die Teilfolge <bookmark mark="highlight_odds"/>a 2 n plus 1 auch gegen a konvergiert, konvergiert die Teilfolge aller Elemente mit ungeradem Index ebenfalls gegen a. ...
Wenn wir diese beiden Teilfolgen kombinieren, erhalten wir die Teilfolge, die aus allen Elementen von a n mit geradem oder ungeradem Index, also aus allen Elementen von a n besteht. Und diese konvergiert dann ja weiterhin gegen a...
Also  ist der Grenzwert von a n <bookmark mark="show_solution"/>gleich a, und die richtigae Aussage ist b. ...
"""
        ) as tracker:
            
            self.wait_until_bookmark("highlight_evens")
            self.play(Indicate(a_n[1], color=RED), run_time=3)

            self.wait_until_bookmark("highlight_odds")
            self.play(Indicate(a_n[2], color=RED), run_time=3)

            self.wait_until_bookmark("show_solution")
            self.play(answer_b.animate.set_color(GREEN), VGroup(answer_a, answer_c, answer_d).animate.set_color(RED))

        self.wait(4)

##################################### 
#####################################
# MC,
class Calc_practice_MC_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=[
                "Sie besitzt im Intervall [0, 1] eine Nullstelle.",
                "Sie hat eine lokale Extremstelle bei x = 0.",
                "Sie ist streng monoton wachsend.",
                "Sie ist nicht integrierbar."
            ],
            correctAnswerIndex=1,
            questionText = self.translate("Welche der folgenden Aussagen trifft auf die Funktion f zu?")
        )

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function and the answer options
        f_definition = MathTex("f:\\left[-\\pi,\\pi\\right]\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_formula = MathTex("f(x)=2|x|+4", color=c1t, font_size=fs2)
        f_group = VGroup(f_definition, f_formula).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2)

        answers = [
            Tex(r"a) Besitzt Nullstelle in $[0,1]$", color=BLUE, font_size=fs3),
            Tex(r"b) Hat lokale Extremstelle $x = 0$", color=BLUE, font_size=fs3),
            Tex(r"c) Ist streng monoton wachsend", color=BLUE, font_size=fs3),
            Tex(r"d) Ist nicht integrierbar", color=BLUE, font_size=fs3)
        ]

        answer_group = VGroup(*answers).arrange(DOWN, buff=0.3, aligned_edge=LEFT).next_to(f_group, DOWN, buff=1)

        # Voiceover text
        voiceover_text = (
            f"""
            Betrachten wir die Funktion f, die <bookmark mark="f_definition"/>von dem Intervall minus pi bis pi in die reellen Zahlen abbildet, 
            und deren Funktionsvorschrift lautet: <bookmark mark="f_formula"/>f von x ist gleich zwei mal dem Absolutbetrag von x plus vier. 
            Welche der folgenden Aussagen trifft auf die Funktion f zu? <bookmark mark="question"/>
            Besitzt die Funktion im Intervall von null bis eins eine Nullstelle? <bookmark mark="answer_1"/>
            Hat sie eine lokale Extremstelle bei x gleich null? <bookmark mark="answer_2"/>
            Ist sie streng monoton wachsend? <bookmark mark="answer_3"/>
            Oder ist sie etwa nicht integrierbar? <bookmark mark="answer_4"/>
            """
        )

        # Main animation sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_definition")
            self.play(Write(f_definition))

            self.wait_until_bookmark("f_formula")
            self.play(Write(f_formula))

            self.wait_until_bookmark("question")
            for answer in answers:
                self.play(Write(answer))
                self.wait_until_bookmark(f"answer_{answers.index(answer) + 1}")

        # Wait at the end of the animation
        self.wait(4)

class Calc_practice_MC_5_a(SophiaCursorScene):

    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function and the answer options
        f_definition = MathTex("f:\\left[-\\pi,\\pi\\right]\\rightarrow\\mathbb{R}", color=c1t, font_size=fs2)
        f_formula = MathTex("f(x)=2|x|+4", color=c1t, font_size=fs2)
        f_group = VGroup(f_definition, f_formula).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2)

        cords = self.add_cords([-4,4,1], [0,12,1], x_ticks=[-4,-2,2,4], y_ticks=[4,8, 12])
        plane = cords[0]
        plot_left  = plane.plot(lambda x: -2*x + 4, color=RED, x_range=[-4,0,1000])
        plot_right = plane.plot(lambda x: 2*x + 4, color=RED, x_range=[0,4,1000])

        answers = [
            Tex(r"a) Besitzt Nullstelle in $[0,1]$", color=BLUE, font_size=fs3),
            Tex(r"b) Hat lokale Extremstelle $x = 0$", color=BLUE, font_size=fs3),
            Tex(r"c) Ist streng monoton wachsend", color=BLUE, font_size=fs3),
            Tex(r"d) Ist nicht integrierbar", color=BLUE, font_size=fs3)
        ]

        answer_group = VGroup(*answers).arrange(DOWN, buff=0.3, aligned_edge=LEFT).next_to(f_group, DOWN, buff=1)

        # Voiceover text
        voiceover_text = (
            f"""
Wenn wir die Funktion <bookmark mark="plot_in"/>einmal graphisch darstellen, können wir unschwer erkennen, dass die Funktion keine Nullstelle besitzt, und nicht streng monoton wachsend ist.
Wir können auch sehen, dass die Funktion <bookmark mark="maximum"/>eine lokale Extremstelle bei x gleich null hat, ein Minimum mit y gleich Vier.
Und wir können auch direkt erkennen, dass die Funktion integrierbar ist.
            """
        )

        # Main animation sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("plot_in")
            self.play(f_group.animate.shift(DOWN*3), Unwrite(answer_group), Write(cords), run_time=.8)
            self.play(Write(plot_left), Write(plot_right), run_time=.8)

        # Wait at the end of the animation
        self.wait(4)
#

##################################### 
#####################################
#MC, Mittelwertsatz Integral
class Calc_practice_MC_6_q(SophiaCursorScene):
    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=[
                "$f$ ist differenzierbar",
                "Falls $\\int_{a}^{b} f(x) \\, dx = 0$, dann gibt es ein $\\xi \\in [a,b]$ mit $f(\\xi) = 0$",
                "$f$ ist nicht integrierbar",
                "Keine der obigen Aussagen kann im Allgemeinen getroffen werden."
            ],
            correctAnswerIndex=1,
            questionText=self.translate("Seien $a$, $b$ Elemente der reellen Zahlen mit $a < b$ und sei $f$ eine stetige Funktion auf dem Intervall $[a, b]$. Welche der folgenden Aussagen gilt?")
        )

    def construct(self):
        super().construct()
        self.add_mathgrid()

        # Define the formulas
        domain = MathTex("a, b \\in \\mathbb{R}", ",", "a < b", font_size=fs2, color=c1t)
        function_f = MathTex("f : [a, b] \\rightarrow \\mathbb{R}", "\\text{ stetig}", font_size=fs2, color=c1t)
        domain_and_f = VGroup(domain, function_f).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2.4)

        # Define the answer options
        answer_a = Tex("a) f ist differenzierbar", color=BLUE, font_size=fs3)
        answer_b = Tex("b) Falls $\\int_{a}^{b} f(x) \\, dx = 0$, so\\\\$\\exists\\xi \\in [a,b]$ mit $f(\\xi) = 0$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) f ist nicht integrierbar", color=BLUE, font_size=fs3)
        answer_d = Tex("d) im Allgemeinen keine wahr", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.3, aligned_edge=LEFT).next_to(domain_and_f, DOWN, buff=0.5)

        # The voiceover and animation sequence
        voiceover_text = """
Seien <bookmark mark="domain_in"/>a und b Elemente der reellen Zahlen, mit a kleiner als b, und sei f eine stetige Funktion auf dem Intervall von a bis b.
<bookmark mark="question_in"/>Welche der folgenden Aussagen gilt?
Aussage <bookmark mark="answer_a_in"/>a: f ist differenzierbar. ...
Aussage <bookmark mark="answer_b_in"/>b: Falls das bestimmte Integral von a bis b von f von x dx gleich null ist, dann gibt es ein xi im Intervall von a bis b, so dass f von xi gleich null ist. ...
Aussage <bookmark mark="answer_c_in"/>c: f ist nicht integrierbar. ...
Oder Antwort <bookmark mark="answer_d_in"/>d: Keine der obigen Aussagen kann im Allgemeinen getroffen werden. ...
"""
        with self.voiceover(text=voiceover_text) as tracker:
            self.wait_until_bookmark("domain_in")
            self.play(Write(domain_and_f[0]))

            self.wait_until_bookmark("question_in")
            self.play(Write(domain_and_f[1]))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        self.wait(4)

class Calc_practice_MC_6_a(SophiaCursorScene):

    def construct(self):
        super().construct()
        self.add_mathgrid()

        # Define the formulas
        domain = MathTex("a, b \\in \\mathbb{R}", ",", "a < b", font_size=fs2, color=c1t)
        function_f = MathTex("f : [a, b] \\rightarrow \\mathbb{R}", "\\text{ stetig}", font_size=fs2, color=c1t)
        domain_and_f = VGroup(domain, function_f).arrange(DOWN, buff=0.2, aligned_edge=LEFT).set_y(2.4)
        downarrow_1 = MathTex("\\Downarrow", font_size=fs2, color=c1t).next_to(domain_and_f, DOWN, buff=.2)
        mvt = VGroup(MathTex("\\exists \\xi \\in [a,b] :", font_size=fs3, color=c1t), MathTex("f(\\xi) = \\frac{1}{b-a} \\int_{a}^{b} f(x) \\, dx", font_size=fs3, color=c1t)).arrange(DOWN, buff=.1).next_to(downarrow_1, DOWN, buff=.2)
        downarrow_2 = MathTex("\\Downarrow", "\\int_{a}^{b} f(x) \\, dx=0", font_size=fs3, color=c1t).next_to(mvt, DOWN, buff=.2)
        exists_xi = MathTex("\\exists \\xi \\in [a,b] : f(\\xi) = 0", font_size=fs3, color=c1t).next_to(downarrow_2, DOWN, buff=.2)


        # Define the answer options
        answer_a = Tex("a) f ist differenzierbar", color=BLUE, font_size=fs3)
        answer_b = Tex("b) Falls $\\int_{a}^{b} f(x) \\, dx = 0$, so\\\\$\\exists\\xi \\in [a,b]$ mit $f(\\xi) = 0$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) f ist nicht integrierbar", color=BLUE, font_size=fs3)
        answer_d = Tex("d) im Allgemeinen keine wahr", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.3, aligned_edge=LEFT).next_to(domain_and_f, DOWN, buff=0.5)
        self.add(domain_and_f, answers)

        # The voiceover and animation sequence
        voiceover_text = """
Betrachten wir den<bookmark mark="look_at_b"/> Fall b, also sei das Integral von f auf dem Intervall von a bis b gleich null.
Wenn wir den <bookmark mark="mvt"/>Mittelwertsatz der Integralrechnung anwenden, erhalten wir, dass es ein Xi im Intervall von a bis b gibt, so dass f von Xi gleich 1 durch b minus a mal dem Integral von f von x dx ist.
<bookmark mark="look_at_c"/>Wenn wir nun einsetzen, dass das Integral von f von x auf dem Intervall a b gleich null ist, erhalten wir, dass es ein Xi im Intervall von a bis b gibt, so dass f von Xi gleich null ist.
Also ist <bookmark mark="turn_b_green"/>die Aussage b wahr.
"""
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("look_at_b")
            self.add_shift_sound(.5)
            self.play(Unwrite(answer_a), Unwrite(answer_c), Unwrite(answer_d), answer_b.animate.shift(DOWN*2.4), run_time=.5)

            self.wait_until_bookmark("mvt")
            self.play(Write(downarrow_1), Write(mvt))

            self.wait_until_bookmark("look_at_c")
            self.play(Write(downarrow_2), Write(exists_xi))

            self.wait_until_bookmark("turn_b_green")
            self.play(answer_b.animate.set_color(GREEN))

        self.wait(4)

##################################### 
#####################################
class Calc_practice_MC_7_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=[
                "Genau 6 Lösungen", 
                "Unendlich viele Lösungen", 
                "Für alle Lösungen gilt $|z| = 1$",
                "Nur reelle Lösungen"
            ],
            correctAnswerIndex=0,
            questionText = "q"
        )

    def construct(self):
        super().construct()
        self.add_mathgrid()

        # Defining the equation and answer options
        equation = MathTex("z^6 = (1 + i)^4", color=c1t, font_size=fs2).set_y(2)
        answers = VGroup(
            Tex("a) Genau $6$ Lösungen", color=BLUE, font_size=fs3),
            Tex("b) Unendlich viele Lösungen", color=BLUE, font_size=fs3),
            Tex(r"c) Für alle Lösungen gilt $\left| z \right| = 1$", color=BLUE, font_size=fs3),
            Tex("d) Nur reelle Lösungen", color=BLUE, font_size=fs3)
        ).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(equation, DOWN, buff=0.8)

        # Voiceover text
        voiceover_text = """
        Betrachte die Gleichung <bookmark mark="eq_in"/>z hoch 6 gleich (1 plus i) hoch 4. 
        Welche der folgeden Aussagen gilt dann für die Lösungen zett in den Komplexen Zahlen C?
        Aussage <bookmark mark="ans_a_in"/>a: Die Gleichung hat genau 6 verschiedene Lösungen. ...
        Aussage <bookmark mark="ans_b_in"/>b: Es gibt unendlich viele verschiedene Lösungen. ...
        Aussage <bookmark mark="ans_c_in"/>c: Für alle Lösungen gilt, dass der Betrag von z gleich 1 ist. ...
        Aussage <bookmark mark="ans_d_in"/>d: Die Gleichung hat nur reelle Lösungen. ...
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("eq_in")
            self.play(Write(equation))

            self.wait_until_bookmark("ans_a_in")
            self.play(Write(answers[0]))

            self.wait_until_bookmark("ans_b_in")
            self.play(Write(answers[1]))

            self.wait_until_bookmark("ans_c_in")
            self.play(Write(answers[2]))

            self.wait_until_bookmark("ans_d_in")
            self.play(Write(answers[3]))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
        

##################################### 
#####################################
class Calc_practice_MC_8_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_edges = MathTex("a,b \\in \\mathbb R, \\, a < b", color=c1t, font_size=fs2)
        f_interval = Tex("$f:[a,b]\\rightarrow\\mathbb{R}$ stetig", color=c1t, font_size=fs2)
        f_definition = VGroup(f_edges, f_interval).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) $f$ nimmt kein Minimum an", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $f([a,b])$ als Intervall $[c,d]$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f([a,b]) = \\emptyset$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f$ ist injektiv", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_definition, DOWN, buff=0.5)

        # Define the voiceover text
        voiceover_text = """
Seien <bookmark mark="f_in_1"/>a und b Elemente der reellen Zahlen mit a kleiner als b und sei die Funktion f, <bookmark mark="f_in_2"/>die von dem geschlossenen Intervall von a bis b in die reellen Zahlen abbildet, eine stetige Funktion. <bookmark mark="f_in_2"/>Welche der folgenden Aussagen trifft zu?
<bookmark mark="answer_a_in"/>Aussage a: Die Funktion f nimmt auf dem Intervall von a bis b kein Minimum an. ...
<bookmark mark="answer_b_in"/>Aussage b: Der Bildbereich f von dem Intervall a, b lässt sich als Intervall c, d schreiben mit c, d Element der reellen Zahlen und c kleiner gleich d. ...
<bookmark mark="answer_c_in"/>Aussage c: Der Bildbereich von f von dem Intervall a, b ist leer. ...
<bookmark mark="answer_d_in"/>Oder Aussage d: Die Funktion f ist auf dem Intervall von a bis b injektiv. ...
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_in_1")
            self.play(Write(f_edges))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f_interval))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_8_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_edges = MathTex("a,b \\in \\mathbb R, \\, a < b", color=c1t, font_size=fs2)
        f_interval = Tex("$f:[a,b]\\rightarrow\\mathbb{R}$ stetig", color=c1t, font_size=fs2)
        f_definition = VGroup(f_edges, f_interval).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        downarrow_ivt = Tex("$\\Downarrow$", " Zwischenwertsatz", font_size=fs2, color=c1t).next_to(f_definition, DOWN, buff=.4)
        downarrow_ivt[1].scale(.8)
        solution = Tex("$f([a,b]) = [c,d]$", font_size=fs2, color=c1t).next_to(downarrow_ivt, DOWN, buff=.4)


        # Define the answer options using Tex
        answer_a = Tex("a) $f$ nimmt kein Minimum an", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $f([a,b])$ als Intervall $[c,d]$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f([a,b]) = \\emptyset$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f$ ist injektiv", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_definition, DOWN, buff=0.5)

        self.add(f_definition, answers)

        # Define the voiceover text
        voiceover_text = """
Wenn die Funktion f stetig ist, und der Definitionsbereich das Intervall a, b ist, können wir ja <bookmark mark="ivt"/>den Zwischenwertsatz anwenden.
Daraus folgt dann,<bookmark mark="solution"/> dass der Bildbereich von f von a bis b ein Intervall ist.
Also ist <bookmark mark="turn_b_green"/>die Aussage b wahr: Wir können den Bildbereich von f von a bis b als Intervall c, d schreiben mit c, d Element der reellen Zahlen und c kleiner gleich d.
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("ivt")
            self.add_shift_sound(0.5)
            self.play(Write(downarrow_ivt), Unwrite(answer_a), Unwrite(answer_c), Unwrite(answer_d), answer_b.animate.shift(DOWN*1.4), run_time=.5)

            self.wait_until_bookmark("solution")
            self.play(Write(solution))

            self.wait_until_bookmark("turn_b_green")
            self.play(answer_b.animate.set_color(GREEN))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

##################################### 
##################################### 
class Calc_practice_MC_9_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\mathbb{R} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = Tex("$f$ diff'bar, ungerade", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) $f(x) = 0$ für alle $x$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $f'(x) = 0$ für $x = 0$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f'(x) \\neq 0$ für $x = 0$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) Keine Aussage allgemeingültig", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = """
Sei <bookmark mark="f_in_1"/>f eine Funktion von den reellen Zahlen in die reellen Zahlen, <bookmark mark="f_in_2"/>die differenzierbar und ungerade ist. Welche der folgenden Aussagen gilt allgemein?
<bookmark mark="answer_a_in"/>Aussage a: Die Funktion f von x ist Null für alle x in den reellen Zahlen. ...
<bookmark mark="answer_b_in"/>Aussage b: Die Ableitung von f an der Stelle x ist Null für x gleich Null. ...
<bookmark mark="answer_c_in"/>Aussage c: Die Ableitung von f an der Stelle x ist nicht Null für x gleich Null. ...
<bookmark mark="answer_d_in"/>Oder Aussage d: Keine der obigen Aussagen kann im Allgemeinen getroffen werden. ...
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_in_1")
            self.play(Write(f_definition))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f_property))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
        
class Calc_practice_MC_9_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\mathbb{R} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = Tex("$f$ diff'bar, ungerade", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        f_1 = MathTex("f(x) = 1", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.4)
        f_2 = MathTex("f(x) = x", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.4)

        # Define the answer options using Tex
        answer_a = Tex("a) $f(x) = 0$ für alle $x$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $f'(x) = 0$ für $x = 0$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f'(x) \\neq 0$ für $x = 0$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) Keine Aussage allgemeingültig", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        self.add(f_info, answers)

        # Define the voiceover text
        voiceover_text = """
Betrachten wir zunächst die<bookmark mark="f_1_in"/> Funktion f von x gleich eins. Diese Funktion ist differenzierbar und ungerade. Also sind a und c <bookmark mark="a_c_red"/>schon mal falsch, denn die Funktion f ist nicht Null und die Ableitung von f an der Stelle x gleich Null ist nicht ungleich Null.
<bookmark mark="f_2_in"/>Betrachten wir nun die Funktion f von x gleich x. Diese Funktion ist auch differenzierbar und ungerade. Also ist<bookmark mark="b_red"/> b auch falsch, weil die Ableitung von f überall gleich eins ist, also ist f Strich von Null nicht Null.
Es bleibt also <bookmark mark="d_green"/>nur noch d übrig, und das ist auch die richtige Antwort.
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_1_in")
            self.add_shift_sound(.5)
            self.play(Write(f_1), answers.animate.shift(DOWN), run_time=.5)

            self.wait_until_bookmark("a_c_red")
            self.play(answer_a.animate.set_color(RED), answer_c.animate.set_color(RED))

            self.wait_until_bookmark("f_2_in")
            self.play(ReplacementTransform(f_1, f_2))

            self.wait_until_bookmark("b_red")
            self.play(answer_b.animate.set_color(RED))

            self.wait_until_bookmark("d_green")
            self.play(answer_d.animate.set_color(GREEN))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
#
        

##################################### 
##################################### 
class Calc_practice_MC_10_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\mathbb{R} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = Tex("$f$ stetig, gerade", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) $g(x)=f(x)\\cdot \\cos(x)$ ist ungerade", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\int_{-a}^{a}f(x)dx=2\\int_0^af(x)dx$\\\\für alle $a>0$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\int_{-a}^{a}f(x)dx=0$ für alle $a>0$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f$ ist nicht integrierbar", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = """
Sei <bookmark mark="f_in_1"/>f eine Funktion von den reellen Zahlen in die reellen Zahlen, <bookmark mark="f_in_2"/>die stetig und gerade ist. Welche der folgenden Aussagen gilt allgemein?
<bookmark mark="answer_a_in"/>Aussage a: Die Funktion g von x ist gleich f von x mal cosinus von x ist ungerade. ...
<bookmark mark="answer_b_in"/>Aussage b: Das bestimmte Integral von minus a bis a von f von x dx ist gleich 2 mal das bestimmte Integral von 0 bis a von f von x dx für alle a größer als Null. ...
<bookmark mark="answer_c_in"/>Aussage c: Das bestimmte Integral von minus a bis a von f von x dx ist gleich Null für alle a größer als Null. ...
<bookmark mark="answer_d_in"/>Oder Aussage d: Die Funktion f ist nicht integrierbar. ...
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_in_1")
            self.play(Write(f_definition))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f_property))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Calc_practice_MC_10_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\mathbb{R} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = Tex("$f$ stetig, gerade", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        self.add(f_info)

        cords = self.add_cords([-2,2,1], [0,4,1], x_ticks=[-2,2], y_ticks=[1,2,3], x_labels = ["-a", "a"]).shift(.4*UP)
        plane = cords[0]
        graph = plane.plot(lambda x: x**2, color=RED)
        graph_left = plane.plot(lambda x: x**2, color=RED, x_range=[-2,0,1000])
        graph_right = plane.plot(lambda x: x**2, color=RED, x_range=[0,2,1000])
        auc_left = plane.get_area(graph, x_range=(-2,0))
        auc_left_2 = plane.get_area(graph, x_range=(-2,0))
        auc_right = plane.get_area(graph, x_range=(0,2))
        


        # Define the answer options using Tex
        answer_a = Tex("a) $g(x)=f(x)\\cdot \\cos(x)$ ist ungerade", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\int_{-a}^{a}f(x)dx=2\\int_0^af(x)dx$\\\\für alle $a>0$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\int_{-a}^{a}f(x)dx=0$ für alle $a>0$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f$ ist nicht integrierbar", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)
        self.add(answers)

        # Define the voiceover text
        voiceover_text = """
Visualisieren wir das ganze mal mit einer<bookmark mark="plot_in"/> Beispielsfunktion.
Wir betrachten die Funktion f von x gleich x hoch 2. Diese Funktion ist stetig und gerade.
Wenn wir uns jetzt das Integral von minus a bis <bookmark mark="auc_left_in"/>0 von f von x dx anschauen, sehen wir, dass es genau das gleiche ist wie <bookmark mark="auc_switch"/>das Integral von 0 bis a von f von x dx.
Also <bookmark mark="b_green"/>ist die Aussage b wahr: Das <bookmark mark="auc_left_back_in"/>bestimmte Integral von minus a bis a von f von x dx ist gleich<bookmark mark="auc_final_switch"/> 2 mal das bestimmte Integral von 0 bis a von f von x dx für alle a größer als Null.
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("plot_in")
            self.add_shift_sound(.5)
            self.play(Write(cords), f_info.animate.shift(2.4*DOWN), answer_b.animate.shift(1.6*DOWN), Unwrite(answer_a), Unwrite(answer_c), Unwrite(answer_d), run_time=.5)
            self.add_pencil_sound(1)
            self.play(Create(graph), run_time=1)

            self.wait_until_bookmark("auc_left_in")
            self.play(Create(auc_left))

            self.wait_until_bookmark("auc_switch")
            self.play(ReplacementTransform(auc_left, auc_right))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN))

            self.wait_until_bookmark("auc_left_back_in")
            self.play(Create(auc_left_2))

            self.wait_until_bookmark("auc_final_switch")
            self.play(ReplacementTransform(auc_left_2, auc_right.copy()))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

# Ana Ing TUB 2019/2

##################################### 
##################################### 
class Calc_practice_MC_11_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\{1,2,3\\} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=(x-1)^2", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) $f$ ist surjektiv", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $f$ ist injektiv", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ hat kein Maximum", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f(x)<0$ für alle $x\\in\\{0,1,2,3\\}$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = """
Sei <bookmark mark="f_in_1"/>f eine Funktion von den reellen Zahlen in die reellen Zahlen, <bookmark mark="f_in_2"/>die stetig und gerade ist. Welche der folgenden Aussagen gilt allgemein?
<bookmark mark="answer_a_in"/>Aussage a: Die Funktion f ist surjektiv. ...
<bookmark mark="answer_b_in"/>Aussage b: Die Funktion f ist injektiv. ...
<bookmark mark="answer_c_in"/>Aussage c: Die Funktion f hat kein Maximum. ...
<bookmark mark="answer_d_in"/>Oder Aussage d: Die Funktion f von x ist kleiner als Null für alle x in der Menge von 0, 1, 2, 3. ...
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_in_1")
            self.play(Write(f_definition))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f_property))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Calc_practice_MC_11_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f: \\{1,2,3\\} \\rightarrow \\mathbb{R}", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=(x-1)^2", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        f_1 = MathTex("f(1) = (1-1)^2=0", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.2).shift(UP)
        f_2 = MathTex("f(2) = (2-1)^2=1", color=ORANGE, font_size=fs2).next_to(f_1, DOWN, buff=.2)
        f_3 = MathTex("f(3) = (3-1)^2=4", color=ORANGE, font_size=fs2).next_to(f_2, DOWN, buff=.2)
        self.add(f_info)


        # Define the answer options using Tex
        answer_a = Tex("a) $f$ ist surjektiv", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $f$ ist injektiv", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ hat kein Maximum", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f(x)<0$ für alle $x\\in\\{0,1,2,3\\}$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)
        self.add(answers)

        # Define the voiceover text
        voiceover_text = """
Setzen wir<bookmark mark="reorganize"/> einfach mal alle werte ein:<bookmark mark="f_1"/> f von 1 ist gleich eins minus eins im Quadrat, also Null. <bookmark mark="f_2"/>f von 2 ist gleich zwei minus eins im Quadrat, also eins. Und <bookmark mark="f_3"/>f von 3 ist gleich drei minus eins im Quadrat, also vier.
Wir sehen also, dass keine zwei unterschiedlichen x Werte auf den gleichen y Wert abgebildet werden. Also ist <bookmark mark="b_green"/>die Funktion f injektiv.
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("reorganize")
            self.add_shift_sound(.5)
            self.play(answers.animate.shift(DOWN), f_info.animate.shift(UP), run_time=.5)

            self.wait_until_bookmark("f_1")
            self.play(Write(f_1))

            self.wait_until_bookmark("f_2")
            self.play(Write(f_2))

            self.wait_until_bookmark("f_3")
            self.play(Write(f_3))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### 
##################################### 
class Calc_practice_MC_12_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        a_b = Tex("$\\left(a_n\\right)_{n\\in\\mathbb N}, \\left(b_n\\right)_{n\\in\\mathbb N}$ Folgen", color=c1t, font_size=fs2)
        a = MathTex("\\lim_{n\\to\\infty}a_n=\\infty", color=c1t, font_size=fs2)
        b = MathTex("\\lim_{n\\to\\infty}b_n=0", color=c1t, font_size=fs2)
        a_n = VGroup(a_b, a, b).arrange(DOWN, buff=0.1, aligned_edge=LEFT).scale(.95).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) $\\lim_{n\\to\\infty}a_n\\cdot b_n=0$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\lim_{n\\to\\infty}a_n\\cdot b_n=\\infty$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\lim_{n\\to\\infty}a_n\\cdot b_n=1$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) Keine der Aussagen i.A. wahr", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(a_n, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = """
Seien <bookmark mark="a_b_in"/>a n und b n Folgen von reellen Zahlen.
Der Grenzwert von <bookmark mark="a_in"/>a n für n gegen unendlich ist gleich unendlich. ... Und der Grenzwert von <bookmark mark="b_in"/>b n für n gegen unendlich ist gleich Null. ...
Welche der folgenden Aussagen gilt allgemein? ...
Aussage <bookmark mark="answer_a_in"/>a: Der Grenzwert von a n mal b n für n gegen unendlich ist gleich Null. ...
Aussage <bookmark mark="answer_b_in"/>b: Der Grenzwert von a n mal b n für n gegen unendlich ist gleich unendlich. ...
Aussage <bookmark mark="answer_c_in"/>c: Der Grenzwert von a n mal b n für n gegen unendlich ist gleich Eins. ...
Oder Aussage <bookmark mark="answer_d_in"/>d: Keine der obigen Aussagen kann im Allgemeinen getroffen werden. ...
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("a_b_in")
            self.play(Write(a_b))

            self.wait_until_bookmark("a_in")
            self.play(Write(a))

            self.wait_until_bookmark("b_in")
            self.play(Write(b))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Calc_practice_MC_12_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        a_b = Tex("$\\left(a_n\\right)_{n\\in\\mathbb N}, \\left(a_n\\right)_{n\\in\\mathbb N}$ Folgen", color=c1t, font_size=fs2)
        a = MathTex("\\lim_{n\\to\\infty}a_n=\\infty", color=c1t, font_size=fs2)
        b = MathTex("\\lim_{n\\to\\infty}a_n=0", color=c1t, font_size=fs2)
        a_n = VGroup(a_b, a, b).arrange(DOWN, buff=0.1, aligned_edge=LEFT).scale(.95).set_y(2)
        example_1 = VGroup(MathTex("a_n = n, b_n = \\frac{1}{n^2}", color=ORANGE, font_size=fs3), MathTex("\\Downarrow", color=ORANGE, font_size=fs3), MathTex("\\lim_{n\\to\\infty} a_n\\cdot b_n =\\lim_{n\\to\\infty}\\tfrac1n=0", color=ORANGE, font_size=fs3)).arrange(DOWN, buff=0.1).next_to(a_n, DOWN, buff=0.2).shift(UP*.4)
        example_2 = VGroup(MathTex("a_n = n, b_n = \\frac{1}{n}", color=ORANGE, font_size=fs3), MathTex("\\Downarrow", color=ORANGE, font_size=fs3), MathTex("\\lim_{n\\to\\infty} a_n\\cdot b_n =\\lim_{n\\to\\infty}1=1", color=ORANGE, font_size=fs3)).arrange(DOWN, buff=0.1).next_to(a_n, DOWN, buff=0.2).shift(UP*.4)
        example_3 = VGroup(MathTex("a_n = n^2, b_n = \\frac{1}{n}", color=ORANGE, font_size=fs3), MathTex("\\Downarrow", color=ORANGE, font_size=fs3), MathTex("\\lim_{n\\to\\infty} a_n\\cdot b_n =\\lim_{n\\to\\infty}n=\\infty", color=ORANGE, font_size=fs3)).arrange(DOWN, buff=0.1).next_to(a_n, DOWN, buff=0.2).shift(UP*.4)

        # Define the answer options using Tex
        answer_a = Tex("a) $\\lim_{n\\to\\infty}a_n\\cdot b_n=0$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\lim_{n\\to\\infty}a_n\\cdot b_n=\\infty$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\lim_{n\\to\\infty}a_n\\cdot b_n=1$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) Keine der Aussagen i.A. wahr", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(a_n, DOWN, buff=0.8)

        self.add(a_n, answers)

        # Define the voiceover text
        voiceover_text = """
Betrachten wir drei Beispiele:
Beispiel <bookmark mark="example_1_in"/>Nummer 1: a n ist gleich n und b n ist gleich eins durch n quadrat. Dann ist der Grenzwert von a n mal b n gleich der Grenzwert von eins durch n für n gegen unendlich, also gleich Null.
Beispiel <bookmark mark="example_2_in"/>Nummer 2: a n ist gleich n und b n ist gleich eins durch n. Dann ist der Grenzwert von a n mal b n gleich der Grenzwert von eins für n gegen unendlich, also gleich Eins.
Und Beispiel <bookmark mark="example_3_in"/>Nummer 3: a n ist gleich n hoch 2 und b n ist gleich eins durch n. Dann ist der Grenzwert von a n mal b n gleich der Grenzwert von n für n gegen unendlich, also gleich unendlich.
Wir sehen also, dass <bookmark mark="d_green"/>keine der Aussagen a, b oder c allgemeingültig wahr ist. Also ist d die richtige Antwort.
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("example_1_in")
            self.add_shift_sound(.5)
            self.play(Write(example_1), answers.animate.shift(DOWN), a_n.animate.shift(UP*.4))

            self.wait_until_bookmark("example_2_in")
            self.play(ReplacementTransform(example_1, example_2))

            self.wait_until_bookmark("example_3_in")
            self.play(ReplacementTransform(example_2, example_3))

            self.wait_until_bookmark("d_green")
            self.play(answer_d.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### 
##################################### 
class Calc_practice_MC_14_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = Tex("Sei $p$ ein Polynom", color=c1t, font_size=fs2)
        f_property = MathTex("p(z)=z^3-22z^2+7z-1", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) $p$ hat $\\geq4$ versch. Nullstellen", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $p$ hat mind. $1$ reelen Linearfaktor", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $p$ hat keine komplexe Linearfaktorzerlegung", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $p$ hat keine reele Nullstelle", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = """
Sei <bookmark mark="f_in_1"/>p ein Polynom, <bookmark mark="f_in_2"/>was durch die Funktionsvorschrift z hoch 3 minus 22 mal z hoch 2 plus 7 mal z minus 1 gegeben ist. Welche der folgenden Aussagen gilt allgemein?
<bookmark mark="answer_a_in"/>Aussage a: Das Polynom p hat mindestens vier verschiedene Nullstellen. ...
<bookmark mark="answer_b_in"/>Aussage b: Das Polynom p hat mindestens einen reellen Linearfaktor. ...
<bookmark mark="answer_c_in"/>Aussage c: Das Polynom p hat keine komplexe Linearfaktorzerlegung. ...
Oder Aussage <bookmark mark="answer_d_in"/>d: Das Polynom p hat keine reelle Nullstelle. ...
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_in_1")
            self.play(Write(f_definition))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f_property))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### 
##################################### 
class Calc_practice_MC_15_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f:[-\\pi,\\pi]\\rightarrow \\mathbb R", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=e^{-\\sqrt{x^2+1}+1}", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) $f$ hat Nullstelle in $[0,1]$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $f$ hat Maximum auf $[0,1]$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ ist nicht stetig", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f$ hat Stammfunktion \\\\$F(x)=xe^{-\\sqrt{x^2+1}+1}$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = """
Sei f eine Funktion, die von dem Intervall von <bookmark mark="f_in_1"/>minus pi bis pi in die reellen Zahlen abbildet, und deren Funktionsvorschrift <bookmark mark="f_in_2"/>lautet e hoch minus Wurzel von x hoch 2 plus 1 plus 1. Welche der folgenden Aussagen gilt allgemein?
<bookmark mark="answer_a_in"/>Aussage a: Die Funktion f hat eine Nullstelle im Intervall von Null bis Eins. ...
<bookmark mark="answer_b_in"/>Aussage b: Die Funktion f hat ein Maximum im Intervall von Null bis Eins. ...
<bookmark mark="answer_c_in"/>Aussage c: Die Funktion f ist nicht stetig. ...
Oder <bookmark mark="answer_d_in"/>Aussage d: Die Funktion f hat die Stammfunktion groß f von x ist gleich x mal e hoch minus Wurzel von x hoch 2 plus 1 plus 1. ...
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_in_1")
            self.play(Write(f_definition))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f_property))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Calc_practice_MC_15_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f:[-\\pi,\\pi]\\rightarrow \\mathbb R", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=e^{-\\sqrt{x^2+1}+1}", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        implication = MathTex("\\Downarrow", color=ORANGE, font_size=fs2).next_to(f_info, DOWN, buff=.2).shift(UP*.4)
        sol = Tex("$f$ hat Min und Max auf $[-\\pi,\\pi]$", color=ORANGE, font_size=fs3).next_to(implication, DOWN, buff=.2)

        # Define the answer options using Tex
        answer_a = Tex("a) $f$ hat Nullstelle in $[0,1]$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $f$ hat Maximum auf $[0,1]$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ ist nicht stetig", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f$ hat Stammfunktion \\\\$F(x)=xe^{-\\sqrt{x^2+1}+1}$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        self.add(f_info, answers)

        # Define the voiceover text
        voiceover_text = """
Wir haben ja eine stetige Funktion auf einem Intervall. Wir <bookmark mark="implication_in"/>können dann den Satz von Minimum und Maximum anwenden, und <bookmark mark="sol_in"/>wissen, dass die Funktion f ein Minimum und ein Maximum auf dem Intervall von minus pi bis pi hat.
Also ist <bookmark mark="b_green"/>die Aussage b wahr.
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("implication_in")
            self.play(Write(implication), answers.animate.shift(DOWN), f_info.animate.shift(UP*.4))
            
            self.wait_until_bookmark("sol_in")
            self.play(Write(sol))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

##################################### 
##################################### 
class Calc_practice_MC_16_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f:\\mathbb R\\rightarrow \\mathbb R", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=13x^3-3x", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) $f$ ist ungerade", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $f$ hat keine Nullstellen", color=BLUE, font_size=fs3)
        answer_c = Tex("c) Es gibt genau drei $x$ mit $f'(x)=0$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f$ hat keine Stammfunktion", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = """
Sei <bookmark mark="f_in_1"/>f eine Funktion, die von den reellen Zahlen in die reellen Zahlen abbildet, mit cer <bookmark mark="f_in_2"/>Funktionsvorschrift 13 mal x hoch 3 minus 3 mal x. Welche der folgenden Aussagen ist wahr?
<bookmark mark="answer_a_in"/>Aussage a: Die Funktion f ist ungerade. ...
<bookmark mark="answer_b_in"/>Aussage b: Die Funktion f hat keine Nullstellen. ...
<bookmark mark="answer_c_in"/>Aussage c: Es gibt genau drei x in den reellen Zahlen, für die die Ableitung von f an der Stelle x gleich Null ist. ...
Oder Aussage <bookmark mark="answer_d_in"/>d: Die Funktion f hat keine Stammfunktion. ...
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("f_in_1")
            self.play(Write(f_definition))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f_property))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_16_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_definition = MathTex("f:\\mathbb R\\rightarrow \\mathbb R", color=c1t, font_size=fs2)
        f_property = MathTex("f(x)=", "13x^3", "-3x", color=c1t, font_size=fs2)
        f_info = VGroup(f_definition, f_property).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) $f$ ist ungerade", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $f$ hat keine Nullstellen", color=BLUE, font_size=fs3)
        answer_c = Tex("c) Es gibt genau drei $x$ mit $f'(x)=0$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f$ hat keine Stammfunktion", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f_info, DOWN, buff=0.8)

        self.add(f_info, answers)

        # Define the voiceover text
        voiceover_text = """
Die Funktion f ist ein Polynom mit <bookmark mark="deg_three"/>einem Koeffizienten von Grad drei, und <bookmark mark="odd"/>einem Koeffizient von Grad eins. Also hat f nur ungerade Potenzen, und die Funktion f <bookmark mark="a_green"/>ist ungerade.
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("deg_three")
            self.play(Indicate(f_property[1], color=RED))

            self.wait_until_bookmark("odd")
            self.play(Indicate(f_property[2], color=RED))

            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### 
##################################### 
class Calc_practice_MC_17_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        equation = MathTex("z^4=-1+i", color=c1t, font_size=fs2)
        z_in_c = MathTex("z\\in\\mathbb C", color=c1t, font_size=fs2)
        complex_equation = VGroup(equation, z_in_c).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) Es gibt genau $4$ Lösungen", color=BLUE, font_size=fs3)
        answer_b = Tex("b) Es gibt unendlich viele Lösungen", color=BLUE, font_size=fs3)
        answer_c = Tex("c) Für alle Lösungen gilt $|z=1|$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) Es gibt nur reele Lösungen", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(complex_equation, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = """
Betrachte die Gleichung <bookmark mark="eq_in"/>z hoch 4 gleich minus 1 plus i. Welche der folgenden Aussagen gilt für alle<bookmark mark="z_in"/> Lösungen z aus den komplexen Zahlen c?
Ist es die <bookmark mark="answer_a_in"/>Aussage a, dass es genau vier Lösungen gibt? ...
Ist es die <bookmark mark="answer_b_in"/>Aussage b, dass es unendlich viele Lösungen gibt? ...
Ist es die <bookmark mark="answer_c_in"/>Aussage c, dass für alle Lösungen der Betrag von z gleich Eins ist? ...
Oder ist es die <bookmark mark="answer_d_in"/>Aussage d, dass es nur reelle Lösungen gibt? ...
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("eq_in")
            self.play(Write(equation))

            self.wait_until_bookmark("z_in")
            self.play(Write(z_in_c))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### 
##################################### 
class Calc_practice_MC_18_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_term = Tex("$f:\\mathbb R \\rightarrow \\mathbb R$ stetig", color=c1t, font_size=fs2)
        f_greater_0 = MathTex("f(x)>0\\,\\forall x\\in[0,1]", color=c1t, font_size=fs2)
        f = VGroup(f_term, f_greater_0).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) Es gibt $\\xi\\in]0,1[$, dass Rechteck\\\\ mit Höhe $f(\\xi)$ und Breite $1$\\\\ die Fläche $A=\\int_0^1f(x)dx$ hat", color=BLUE, font_size=fs3, tex_environment="flushright")
        answer_b = Tex("b) $f$ nicht integrierbar auf $[0,1]$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ hat kein Maximum auf $[0,2]$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) Keine der Möglichkeiten", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = """
Sei f eine<bookmark mark="f_in_1"/>stetige Funktion, die von den reellen Zahlen in die reellen Zahlen abbildet, für die gilt, dass <bookmark mark="f_in_2"/>f von x größer als Null für alle x in dem Intervall von Null bis Eins. Welche der folgenden Aussagen gilt allgemein?
Ist es die <bookmark mark="answer_a_in"/>Aussage a, dass es ein xi in dem offenen Intervall von Null bis Eins gibt, sodass das Rechteck mit der Höhe f von xi und der Breite Eins die Fläche A hat, wobei A das bestimmte Integral von Null bis Eins von f von x dx ist? ...
Ist es die <bookmark mark="answer_b_in"/>Aussage b, dass die Funktion f nicht integrierbar ist auf dem Intervall von Null bis Eins? ...
Ist es die <bookmark mark="answer_c_in"/>Aussage c, dass die Funktion f kein Maximum hat auf dem Intervall von Null bis Zwei? ...
Oder ist es <bookmark mark="answer_d_in"/>Aussage d, dass keine der obigen Möglichkeiten zutrifft? ...
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("f_in_1")
            self.play(Write(f_term))

            self.wait_until_bookmark("f_in_2")
            self.play(Write(f_greater_0))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Calc_practice_MC_18_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_term = Tex("$f:\\mathbb R \\rightarrow \\mathbb R$ stetig", color=c1t, font_size=fs2)
        f_greater_0 = MathTex("f(x)>0\\,\\forall x\\in[0,1]", color=c1t, font_size=fs2)
        f = VGroup(f_term, f_greater_0).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)
        implication_mvt = Tex("$\\Downarrow$", " Mittelwertsatz", color=ORANGE, font_size=fs3).next_to(f, DOWN, buff=.2).shift(UP*.4)
        solution = Tex("Es gibt $\\xi\\in]0,1[$, sodass\\\\ $\\int_0^1f(x)dx=f(\\xi)$", color=ORANGE, font_size=fs3).next_to(implication_mvt, DOWN, buff=.2)

        # Define the answer options using Tex
        answer_a = Tex("a) Es gibt $\\xi\\in]0,1[$, dass Rechteck\\\\ mit Höhe $f(\\xi)$ und Breite $1$\\\\ die Fläche $A=\\int_0^1f(x)dx$ hat", color=BLUE, font_size=fs3, tex_environment="flushright")
        answer_b = Tex("b) $f$ nicht integrierbar auf $[0,1]$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ hat kein Maximum auf $[0,2]$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) Keine der Möglichkeiten", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = """
Da f stetig ist, können wir <bookmark mark="implication_in"/>den Mittelwertsatz anwenden, und wir erhalten, <bookmark mark="solution"/>dass es ein xi gibt,
sodass das bestimmte Integral von Null bis Eins von f von x dx gleich f von xi ist, wobei xi in dem offenen Intervall von Null bis Eins liegt.
Also ist <bookmark mark="a_green"/>die Aussage a wahr.
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("implication_in")
            self.play(Write(implication_mvt), answers.animate.shift(DOWN), f.animate.shift(UP*.4))

            self.wait_until_bookmark("solution")
            self.play(Write(solution))

            self.wait_until_bookmark("a_green")
            self.play(answer_a.animate.set_color(GREEN), answer_b.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### 
##################################### 
class Calc_practice_MC_19_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f = Tex("$f:\\mathbb R\\rightarrow\\mathbb R$ differenzierbar, gerade", color=c1t, font_size=fs2).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) $f(x)=0$ für alle $x\\in\\mathbb R$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $f'(x)=0$ für $x=0$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ ist injektiv", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f(x)=x^3$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = """
Sei f <bookmark mark=func_in"/>eine gerade, differenzierbare Funktion von den reellen Zahlen in die reellen Zahlen. Welche der folgenden Aussagen gilt allgemein?
Ist es die <bookmark mark="answer_a_in"/>Aussage a, dass die Funktion f von x gleich Null ist für alle x in den reellen Zahlen? ...
Ist es die <bookmark mark="answer_b_in"/>Aussage b, dass die Ableitung von f an der Stelle x gleich Null ist für x gleich Null? ...
Ist es die <bookmark mark="answer_c_in"/>Aussage c, dass die Funktion f injektiv ist? ...
Oder ist es die <bookmark mark="answer_d_in"/>Aussage d, dass die Funktion f von x gleich x hoch 3 ist? ...
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(f))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Calc_practice_MC_19_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f = Tex("$f:\\mathbb R\\rightarrow\\mathbb R$\\\\ differenzierbar, gerade", color=c1t, font_size=fs2).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) $f(x)=0$ für alle $x\\in\\mathbb R$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $f'(x)=0$ für $x=0$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ ist injektiv", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f(x)=x^3$", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

        cords = self.add_cords([-2,2,1], [0,4,1], x_ticks=[-2,2], y_ticks=[2,4], width=2, height=2)
        plane = cords[0]
        graph = plane.plot(lambda x: x**2, color=RED)

        self.add(f, answers)

        # Define the voiceover text
        voiceover_text = """
Betrachten wir ein <bookmark mark="plot_in"/>graphisches Beispiel für eine gerade, differenzierbare Funktion. Wie wir sehen, muss es einen Extrempunkt bei <bookmark mark="highlight_x_0"/>x gleich Null geben.
Also ist <bookmark mark="b_green"/>die Aussage b wahr, denn dafür, dass es eine Extremstelle an der Stelle x gleich Null gibt, muss die Ableitung von f an der Stelle x gleich Null gleich Null sein.
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("plot_in")
            self.play(Write(plane), f.animate.shift(UP*1.4), answers.animate.shift(DOWN))
            self.add_pencil_sound(1)
            self.play(Create(graph), run_time=1)

            self.wait_until_bookmark("highlight_x_0")
            self.play(Indicate(plane.y_axis, color=RED, scale_factor=1.5))

            self.wait_until_bookmark("b_green")
            self.play(answer_b.animate.set_color(GREEN), answer_a.animate.set_color(RED), answer_c.animate.set_color(RED), answer_d.animate.set_color(RED))



        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### 
##################################### 
class Calc_practice_MC_20_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_1 = Tex("$f:\\mathbb R\\rightarrow\\mathbb R$", color=c1t, font_size=fs2)
        f_2 = Tex("$f(x)=\\cos(x)+2\\cos(2x)$", color=c1t, font_size=fs2)
        f = VGroup(f_1,f_2).arrange(DOWN, buff=.2).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) $f$ ist nicht periodisch", color=BLUE, font_size=fs3)
        answer_b = Tex("b) Für $b_k=\\tfrac{2}{2\\pi}\\int_{0}^{2\\pi}f(x)\\sin(kx)dx$gilt:\\\\$b_k=0$ mit $k\\in\\mathbb N$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ ist streng monoto wachsend", color=BLUE, font_size=fs3)
        answer_d = Tex("d) Alle Fourierkoeffizienten sind $0$.", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = """
Sei f <bookmark mark="func_in"/>eine gerade, differenzierbare Funktion von den reellen Zahlen in die reellen Zahlen. Welche der folgenden Aussagen gilt allgemein?
Ist es die <bookmark mark="answer_a_in"/>Aussage a, dass die Funktion f von x gleich Null ist für alle x in den reellen Zahlen? ...
Ist es die <bookmark mark="answer_b_in"/>Aussage b, dass die Ableitung von f an der Stelle x gleich Null ist für x gleich Null? ...
Ist es die <bookmark mark="answer_c_in"/>Aussage c, dass die Funktion f injektiv ist? ...
Oder ist es die <bookmark mark="answer_d_in"/>Aussage d, dass die Funktion f von x gleich x hoch 3 ist? ...
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(f))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_MC_20_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_1 = Tex("$f:\\mathbb R\\rightarrow\\mathbb R$", color=c1t, font_size=fs2)
        f_2 = Tex("$f(x)=\\cos(x)+2\\cos(2x)$", color=c1t, font_size=fs2)
        f = VGroup(f_1,f_2).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) $f$ ist nicht periodisch", color=BLUE, font_size=fs3)
        answer_b = Tex("b) Für $b_k=\\tfrac{2}{2\\pi}\\int_{0}^{2\\pi}f(x)\\sin(kx)dx$gilt:\\\\$b_k=0$ mit $k\\in\\mathbb N$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ ist streng monoto wachsend", color=BLUE, font_size=fs3)
        answer_d = Tex("d) Alle Fourierkoeffizienten sind $0$.", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(f, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = """
Sei f <bookmark mark=func_in"/>eine gerade, differenzierbare Funktion von den reellen Zahlen in die reellen Zahlen. Welche der folgenden Aussagen gilt allgemein?
Ist es die <bookmark mark="answer_a_in"/>Aussage a, dass die Funktion f von x gleich Null ist für alle x in den reellen Zahlen? ...
Ist es die <bookmark mark="answer_b_in"/>Aussage b, dass die Ableitung von f an der Stelle x gleich Null ist für x gleich Null? ...
Ist es die <bookmark mark="answer_c_in"/>Aussage c, dass die Funktion f injektiv ist? ...
Oder ist es die <bookmark mark="answer_d_in"/>Aussage d, dass die Funktion f von x gleich x hoch 3 ist? ...
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(f))

            self.wait_until_bookmark("answer_a_in")
            self.play(Write(answer_a))

            self.wait_until_bookmark("answer_b_in")
            self.play(Write(answer_b))

            self.wait_until_bookmark("answer_c_in")
            self.play(Write(answer_c))

            self.wait_until_bookmark("answer_d_in")
            self.play(Write(answer_d))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


##################################### Limits
#####################################
        
# Ana Ing TUB 2019/4

##################################### 
##################################### 
class Calc_practice_limits_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}=", r"\frac{2n^3+4n}{3n^3\sqrt{n}+4n^2}", color=c1t, font_size=fs2).set_y(2)

        baboon = ImageMobject(assets_folder / "img" / "baboon_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = """
Betrachten wir den Term<bookmark mark="func_in"/> 2 n hoch drei + 4 n, geteilt durch 3 n hoch drei Wurzel n + 4 n quadrat.
Was <bookmark mark="limit_in"/>ist der Grenzwert dieses Terms?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(func[1]))

            self.wait_until_bookmark("limit_in")
            self.play(Write(func[0]))
            self.add_shift_sound(0.5)
            self.play(baboon.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_limits_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{2n^3+4n}{3n^3\sqrt{n}+4n^2}", color=c1t, font_size=fs2).set_y(2.2)
        implication_1 = Tex(r"$\Downarrow$", " $=$", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.2)
        func_2_a = MathTex(r"\underset{n\to\infty}{\lim}", r"{{n^3\sqrt n", r"(\tfrac{2}{\sqrt n}+\tfrac{4}{n^2\sqrt n})}", r"\over{n^3\sqrt{n}", r"(3+\tfrac4{n\sqrt n})}}", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)
        func_2_b = MathTex(r"\underset{n\to\infty}{\lim}", r"{{", r"\tfrac{2}{\sqrt n}+\tfrac{4}{n^2\sqrt n}}", r"\over{", r"3+\tfrac4{n\sqrt n})}}", color=c1t, font_size=fs2).move_to(func_2_a)
        implication_2 = Tex(r"$\Downarrow$", r"$\underset{n\to\infty}{\lim}$", color=BLUE, font_size=fs2).next_to(func_2_b, DOWN, buff=.2)
        func_3 = MathTex(r"\frac{0+0}{3+0}", r"=0", color=c1t, font_size=fs2).next_to(implication_2, DOWN, buff=.2)
        crosses = VGroup(Cross(func_2_a[1]), Cross(func_2_a[1].copy().shift(0.2*RIGHT).set_y(func_2_a[3].get_y()))).set_color(RED)

        baboon = ImageMobject(assets_folder / "img" / "baboon_thinking.png").set_y(-.6).scale(.5)
        self.add(baboon, func)

        # Define the voiceover text
        voiceover_text = """
Als erstes klammern wir den Begriff n hoch drei mal wurzel drei im Zähler und im Nenner aus. <bookmark mark="implication_1"/>Dann erhalten wir im Zähler n hoch drei Wurzel n mal Klammer auf zwei durch Wurzel n plus vier durch n hoch zwei Wurzel n Klammer zu. Und im Nenner n hoch drei Wurzel n mal Klammer auf drei plus vier durch n Wurzel n Klammer zu.
Dann können <bookmark mark="s_out_1"/>wir das n hoch drei Wurzel n kürzen, und <bookmark mark="func_2_b"/>wir erhalten zwei durch Wurzel n plus vier durch n hoch zwei Wurzel n, geteilt durch drei plus vier durch n Wurzel n.
Wenn wir dann <bookmark mark="implication_2"/>n gegen unendlich gehen lassen, erhalten wir 0 plus 0 geteilt durch 3 plus 0, was gleich Null ist. Also ist der Grenzwert gleich Null.
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("implication_1")
            self.add_shift_sound(0.5)
            self.play(baboon.animate.shift(5*RIGHT), Write(implication_1), Write(func_2_a), run_time=.5)

            self.wait_until_bookmark("s_out_1")
            self.play(Write(crosses), run_time=.5)

            self.wait_until_bookmark("func_2_b")
            self.play(TransformMatchingTex(func_2_a, func_2_b), Unwrite(crosses))

            self.wait_until_bookmark("implication_2")
            self.play(Write(implication_2), Write(func_3))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)

##################################### 
##################################### 
class Calc_practice_limits_2_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}=", r"\frac{n\sin(n)+\sin(n)}{(n+1)^2}", color=c1t, font_size=fs2).set_y(2)

        giraffe = ImageMobject(assets_folder / "img" / "giraffe_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = """
Jetzt <bookmark mark="giraffe_in"/>suchen wir den <bookmark mark="limit_in"/>Grenzwert für n gegen unendlich des <bookmark mark="term_in"/>Terms n mal Sinus von n plus Sinus von n, geteilt durch n plus eins im Quadrat zwei.
Was kommt da raus??
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("giraffe_in")
            self.add_shift_sound(0.5)
            self.play(giraffe.animate.shift(5*RIGHT), run_time=.5)
            
            self.wait_until_bookmark("limit_in")
            self.play(Write(func[0]))

            self.wait_until_bookmark("term_in")
            self.play(Write(func[1]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_limits_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}=", r"\frac{n\sin(n)+\sin(n)}{(n+1)^2}", color=c1t, font_size=fs2).set_y(2.2)
        step_1 = MathTex(r"\left|\frac{n\sin(n)+\sin(n)}{(n+1)^2}\right|", r"\leq", r"\frac{1}{n+1}", r"\underset{n\to\infty}{\rightarrow}0", color=c3t, font_size=fs3).next_to(func, DOWN, buff=.4)
        implication_1 = Tex(r"$\Downarrow$", "  Sandwich-Theorem", color=BLUE, font_size=fs2).next_to(step_1, DOWN, buff=.2)
        step_2 = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{n\sin(n)+\sin(n)}{(n+1)^2}", r"=0", color=c3t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)
        
        giraffe = ImageMobject(assets_folder / "img" / "giraffe_thinking.png").set_y(-.6).scale(.5)

        self.add(giraffe, func)

        # Define the voiceover text
        voiceover_text = """
Als erstes <bookmark mark="step_1_a"/>wenden wir die Abschätzung an, dass der Betrag des Terms n mal Sinus von n plus Sinus von n, geteilt durch n plus eins im Quadrat zwei, kleiner oder gleich eins durch n plus eins ist.
Diese erhalten wir, indem wir beide Seiten durch n plus 1 teilen, und weil der Betrag des Sinus nie größer als eins ist.
Wir können ja sehr einfach sehen, dass die Folge 1 durch n plus 1 <bookmark mark="step_1_b"/>gegen Null geht, wenn n gegen unendlich geht.
Also können wir <bookmark mark="implication_1"/>das Sandwich-Theorem anwenden, und wir erhalten, dass der Grenzwert <bookmark mark="step_2"/>unserer Folge gleich Null ist, weil die Folge 1 durch n plus 1 gegen Null geht und betragsmässig grösser ist.
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("step_1_a")
            self.add_shift_sound(.5)
            self.play(giraffe.animate.shift(5*RIGHT), Write(step_1[0]), Write(step_1[1]), Write(step_1[2]), run_time=.5)

            self.wait_until_bookmark("step_1_b")
            self.play(Write(step_1[3]))

            self.wait_until_bookmark("implication_1")
            self.play(Write(implication_1))

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2))


        # Wait for 4 seconds at the end of the animation
        self.wait(6)

##################################### 
##################################### 
class Calc_practice_limits_3_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\tfrac\pi4}{\lim}=", r"\frac{16x^2}{\tan(x)}", color=c1t, font_size=fs2).set_y(2)

        sloth = ImageMobject(assets_folder / "img" / "sloth_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = """
Jetzt betrachten wir den <bookmark mark="term_in"/>Term 16 x hoch zwei geteilt durch den Tangens von x. Und wir suchen den <bookmark mark="limit_in"/>Grenzwert für x gegen pi viertel.
Was kommt da raus?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("term_in")
            self.play(Write(func[1]))

            self.wait_until_bookmark("limit_in")
            self.play(Write(func[0]))
            self.add_shift_sound(0.5)
            self.play(sloth.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)


class Calc_practice_limits_3_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\tfrac\pi4}{\lim}=", r"\frac{16x^2}{\tan(x)}", color=c1t, font_size=fs2).set_y(2)
        implication_1 = Tex(r"$\Downarrow$  $=$", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.2)
        func_2 = MathTex(r"\frac{16\tfrac{\pi^2}{4^2}}{\tan(\tfrac\pi 4)}", r"=\pi^2", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)

        sloth = ImageMobject(assets_folder / "img" / "sloth_thinking.png").set_y(-.6).scale(.5)
        self.add(sloth, func)

        # Define the voiceover text
        voiceover_text = """
Hier können wir den gesuchten Grenzwert einfach einsetzen. Wir <bookmark mark="step_1_a"/>erhalten dann 16 mal pi hoch zwei durch vier quadrat, und das geteilt durch den Tangens von pi viertel.
Der Tangens von pi viertel ist gleich eins, und wir erhalten <bookmark mark="step_1_b"/>pi quadrat als Ergebnis unseres Grenzwertes..
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("step_1_a")
            self.add_shift_sound(0.5)
            self.play(sloth.animate.shift(5*RIGHT), Write(implication_1), Write(func_2[0]), run_time=.5)

            self.wait_until_bookmark("step_1_b")
            self.play(Write(func_2[1]),  run_time=.5)


        # Wait for 4 seconds at the end of the animation
        self.wait(6)

##################################### 
##################################### 
class Calc_practice_limits_4_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\tfrac\pi2}{\lim}", r"\frac{\sin(2x)}{\cos(x)}", color=c1t, font_size=fs2).set_y(2)

        lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = """
Jetzt <bookmark mark="lion_in"/> suchen wir den Grenzwert <bookmark mark="limit_in"/>für x gegen pi halbe des<bookmark mark="term_in"/> Terms Sinus von zwei x geteilt durch den Kosinus von x.
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("lion_in")
            self.add_shift_sound(0.5)
            self.play(lion.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("limit_in")
            self.play(Write(func[0]))

            self.wait_until_bookmark("term_in")
            self.play(Write(func[1]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_limits_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\tfrac\pi2}{\lim}", r"\frac{\sin(2x)}{\cos(x)}", color=c1t, font_size=fs2).set_y(2)
        implication_1 = Tex("L'Hospital ", r"$\Downarrow$  $\left(\frac00\right)$", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.2)
        func_2 = MathTex(r"\underset{n\to\tfrac\pi2}{\lim} \frac{2\cos(2x)}{-\sin(x)}", "=2", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)

        lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").set_y(-.6).scale(.5)
        self.add(lion, func)

        # Define the voiceover text
        voiceover_text = """
Sowohl der Zähler als auch der Nenner gehen gegen Null, wenn x gegen pi halbe geht. Also können wir die Regel von <bookmark mark="implication_1"/>L'Hopital anwenden.
Dann erhalten wir, dass der Grenzwert gleich der Ableitung des Zählers geteilt durch die Ableitung des Nenners ist. Das ist in diesem Fall gleich <bookmark mark="func_2_a"/>dem limes für n gegen pi halbe von 2 mal Kosinus von zwei x geteilt durch minus Sinus von x. Und <bookmark mark="func_2_b"/>das ist gleich 2, also ist die Lösung 2.
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("implication_1")
            self.add_shift_sound(0.5)
            self.play(lion.animate.shift(5*RIGHT), Write(implication_1), run_time=.5)

            self.wait_until_bookmark("func_2_a")
            self.play(Write(func_2[0]), run_time=.5)

            self.wait_until_bookmark("func_2_b")
            self.play(Write(func_2[1]), run_time=.5)


        # Wait for 4 seconds at the end of the animation
        self.wait(6)

##################################### 
##################################### 
class Calc_practice_limits_5_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ konvergente Folge", color=c1t, font_size=fs3)
        series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=1$, ", r"$a_n>0$ $\forall$ $n\in\mathbb N$.", color=c1t, font_size=fs3)
        series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        series_3 = Tex("", r"$b_n=$", "", r"$\ln(a_n)$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
        series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$\ln(a_n)$", color=BLUE, font_size=fs2).move_to(series_3)

        # lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = """
Betrachten wir eine konvergente <bookmark mark="a_1_in"/>Folge a n. Es ist gegeben, dass der <bookmark mark="a_2_in"/>Grenzwert dieser Folge gleich Eins ist. Und außerdem, dass <bookmark mark="a_3_in"/>alle Folgenglieder größer als Null sind.
Betrachten wir jetzt eine neue <bookmark mark="b_n_in_1"/>Folge b n, die wir als den natürlichen Logarithmus von a n definieren.
Was ist <bookmark mark="b_n_in_2"/>der Grenzwert dieser Folge b n für n gegen unendlich?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("a_1_in")
            self.play(Write(series_1), run_time=.5)

            self.wait_until_bookmark("a_2_in")
            self.play(Write(series_2[0]), run_time=.5)

            self.wait_until_bookmark("a_3_in")
            self.play(Write(series_2[1]), run_time=.5)

            self.wait_until_bookmark("b_n_in_1")
            self.play(Write(series_3), run_time=.5)

            self.wait_until_bookmark("b_n_in_2")
            self.play(TransformMatchingTex(series_3, series_4))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_limits_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ konvergente Folge", color=c1t, font_size=fs3)
        series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=1$, ", r"$a_n>0$ $\forall$ $n\in\mathbb N$.", color=c1t, font_size=fs3)
        series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        series_3 = Tex("", r"$b_n=$", "", r"$\ln(a_n)$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
        series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$\ln$", r"$(a_n)$", color=BLUE, font_size=fs2).move_to(series_3)
        implication_1 = Tex(r"$\Downarrow$  $=$", color=BLUE, font_size=fs2).next_to(series_4, DOWN, buff=.2)
        series_5_a = Tex(r"$\underset{n\to\infty}{\lim}$", r"$\ln$", r"$(a_n)$", r"$=\ln(1)=0$", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)
        series_5_b = MathTex(r"\ln\left(", r"\underset{n\to\infty}{\lim}", r"(a_n)\right)", r"=\ln(1)=0", color=c1t, font_size=fs2).scale(0.95).next_to(implication_1, DOWN, buff=.2)

        self.add(series_1, series_2, series_4)

        # Define the voiceover text
        voiceover_text = """
Da die Funktion stetig ist, können wir die Funktionsausführung und die Grenzwertermittlung vertauschen. Und wir erhalten, <bookmark mark="implication_1"/>dass der Grenzwert von dem natürlichen Logarithmus von a n gleich dem <bookmark mark="series_5_b"/>natürlichen Logarithmus von dem Grenzwert von a n ist.
Da der Grenzwert von a n gleich Eins ist, erhalten wir, dass der Grenzwert von b n <bookmark mark="solution"/>gleich dem logarithmus von eins, also gleich Null ist.
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("implication_1")
            self.play(Write(implication_1), *[ReplacementTransform(series_4[i+2].copy(), series_5_a[i]) for i in range(3)])

            self.wait_until_bookmark("series_5_b")
            self.play(*[ReplacementTransform(series_5_a[i], series_5_b[i]) for i in range(3)])

            self.wait_until_bookmark("solution")
            self.play(Write(series_5_b[3]))




        # Wait for 4 seconds at the end of the animation
        self.wait(6)

# Ana Ing TUB 2019/2

##################################### 
##################################### 
class Calc_practice_limits_6_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}=", r"\frac{4n^4-12n^2+3n^3}{n^3(2n+1)}", color=c1t, font_size=fs2).scale(.95).set_y(2)

        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = """
Betrachte den Term<bookmark mark="func_in"/> 4 n hoch vier minus 12 n quadrat plus drei n hoch drei, und das ganze geteilt durch n hoch drei mal zwei n plus eins.
Kannst du <bookmark mark="limit_in"/>den Grenzwert dieses Terms für n gegen unendlich bestimmen?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in")
            self.play(Write(func[1]))

            self.wait_until_bookmark("limit_in")
            self.add_shift_sound(0.5)
            self.play(dog.animate.shift(5*RIGHT), run_time=.5)
            self.play(Write(func[0]))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Calc_practice_limits_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}=", r"\frac{4n^4-12n^2+3n^3}{n^3(2n+1)}", color=c1t, font_size=fs2).scale(.95).set_y(2)
        implication_1 = Tex(r"$\Downarrow$  $=$", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.2)
        func_2 = MathTex(r"\underset{n\to\infty}{\lim}\frac{n^4(4-\tfrac{12}{n^2}+\tfrac3n)}{n^4(2+\tfrac1{n^4})}\\", r"=\frac{4-0+0}{2+0}=2", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)

        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([0,-.6,0]).scale(.5)

        self.add(dog, func)

        # Define the voiceover text
        voiceover_text = """
Wir können den Term n hoch vier aus dem Zähler und aus dem Nenner ausklammern. Dann <bookmark mark="step_in_1"/>erhalten wir im Zähler n hoch vier mal Klammer auf vier minus zwölf durch n quadrat plus drei durch n Klamemr zu. Und im Nenner n hoch vier mal Klammer auf zwei plus eins durch n hoch vier Klammer zu.
Da können wir das n hoch vier kürzen, und wir erhalten für n gegen unendlich den <bookmark mark="step_in_2"/>Bruch 4 - Null plus Null geteilt durch zwei plus Null, was gleich 2 ist.
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("step_in_1")
            self.add_shift_sound(0.5)
            self.play(dog.animate.shift(5*RIGHT), Write(implication_1), Write(func_2[0]), run_time=.5)

            self.wait_until_bookmark("step_in_2")
            self.play(Write(func_2[1]), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

##################################### 
##################################### 
class Calc_practice_limits_7_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{cos(n)}{n^2+1}", color=c1t, font_size=fs2).set_y(2)

        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = """
Jetzt <bookmark mark="dog_in"/>suchen wir den <bookmark mark="limit_in"/>Grenzwert für n gegen unendlich des <bookmark mark="term_in"/>Terms Cosinus geteilt durch n quadrat plus eins.
Was erhalten wir da??
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("dog_in")
            self.add_shift_sound(0.5)
            self.play(dog.animate.shift(5*RIGHT), run_time=.5)
            
            self.wait_until_bookmark("limit_in")
            self.play(Write(func[0]))

            self.wait_until_bookmark("term_in")
            self.play(Write(func[1]))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

class Calc_practice_limits_7_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{cos(n)}{n^2+1}", color=c1t, font_size=fs2).set_y(2)
        step_1 = MathTex(r"\left|\frac{\cos(n)}{n^2+1}\right|", r"\leq", r"\frac{1}{n^2+1}", r"\underset{n\to\infty}{\rightarrow}0", color=c3t, font_size=fs3).next_to(func, DOWN, buff=.4)
        implication_1 = Tex(r"$\Downarrow$", "  Sandwich-Theorem", color=BLUE, font_size=fs2).next_to(step_1, DOWN, buff=.2)
        step_2 = MathTex(r"\underset{n\to\infty}{\lim}", r"\frac{cos(n)}{n^2+1}", r"=0", color=c3t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)

        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([0,-.6,0]).scale(.5)
        self.add(func, dog)

        # Define the voiceover text
        voiceover_text = """
Als erstes <bookmark mark="step_1_a"/>wenden wir die Abschätzung an, dass der Betrag des Terms Cosinus geteilt durch n quadrat plus eins kleiner oder gleich eins durch n quadrat plus eins ist.
Diese erhalten wir, indem wir den Betrag des Cosinus durch eins abschätzen.
Wir können ja sehr einfach sehen, dass die Folge 1 durch n quadrat plus eins <bookmark mark="step_1_b"/>gegen Null geht, wenn n gegen unendlich geht.
Also können wir <bookmark mark="implication_1"/>das Sandwich-Theorem anwenden, und wir erhalten, dass der Grenzwert <bookmark mark="step_2"/>unserer Folge gleich Null ist, weil die Folge 1 durch n quadrat plus eins gegen Null geht und betragsmässig grösser ist.
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("step_1_a")
            self.add_shift_sound(.5)
            self.play(dog.animate.shift(5*RIGHT), Write(step_1[0]), Write(step_1[1]), Write(step_1[2]), run_time=.5)

            self.wait_until_bookmark("step_1_b")
            self.play(Write(step_1[3]))

            self.wait_until_bookmark("implication_1")
            self.play(Write(implication_1))

            self.wait_until_bookmark("step_2")
            self.play(Write(step_2), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

#####################################
##################################### 
class Calc_practice_limits_8_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{x\to0}{\lim}", r"\frac{x^2-2}{\cos(x)}", color=c1t, font_size=fs2).scale(.95).set_y(2)

        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = """
Was ist der<bookmark mark="limit_in"/> Grenzwert für x gegen 0 von der Funktion<bookmark mark="func_in"/> x quadrat minus zwei geteilt durch den Cosinus von x?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("limit_in")
            self.add_shift_sound(0.5)
            self.play(dog.animate.shift(5*RIGHT), run_time=.5)
            self.play(Write(func[0]))

            self.wait_until_bookmark("func_in")
            self.play(Write(func[1]))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Calc_practice_limits_8_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{x\to0}{\lim}", r"\frac{x^2-2}{\cos(x)}", color=c1t, font_size=fs2).scale(.95).set_y(2)
        implication_1 = Tex(r"$=$", color=BLUE, font_size=fs2).next_to(func, DOWN, buff=.2)
        func_2 = MathTex(r"=\frac{0^2-2}{\cos(0)}=0", color=c1t, font_size=fs2).next_to(implication_1, DOWN, buff=.2)


        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([0,-.6,0]).scale(.5)
        self.add(func, dog)

        # Define the voiceover text
        voiceover_text = """
We can simply plug in the limit, so x equals zero and <bookmark mark="implication_1"/>we obtain zero squared minus two, divided by the Cosinus of zero. This is equal to negative two, and that is the solution.
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("implication_1")
            self.add_shift_sound(.5)
            self.play(dog.animate.shift(5*RIGHT), Write(implication_1), Write(func_2), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
##################################### 
class Calc_practice_limits_9_q(SophiaCursorScene):
        
    def construct(self):
        
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        func = MathTex(r"\underset{x\to0}{\lim}=", r"\frac{e^x-1}{\sin(x)}", color=c1t, font_size=fs2).set_y(2)

        dog = ImageMobject(assets_folder / "img" / "dog_thinking_1.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = """
Betrachte die FUnktion <bookmark mark="func_in"/>e hoch x minus eins geteilt durch den Sinus von x.
<bookmark mark="dog_in"/>Was ist der Grenzwert dieser Funktion <bookmark mark="limit_in"/>für x gegen 0?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("func_in")
            self.play(Write(func[1]))

            self.wait_until_bookmark("dog_in")
            self.add_shift_sound(0.5)
            self.play(dog.animate.shift(5*RIGHT), run_time=.5)

            self.wait_until_bookmark("limit_in")
            self.play(Write(func[0]))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)

##################################### 
##################################### 
class Calc_practice_limits_10_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ konvergente Folge", color=c1t, font_size=fs3)
        series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=0$", color=c1t, font_size=fs3)
        series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        series_3 = Tex("", r"$b_n=$", "", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
        series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).move_to(series_3)

        # lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = """
Betrachten wir die konvergente <bookmark mark="a_1_in"/>Folge a n. Wir wissen, dass a n <bookmark mark="a_2_in"/>gegen Null konvergiert, also dass der Grenzwert der Folge gleich Null ist.
Betrachten wir jetzt eine neue <bookmark mark="b_n_in_1"/>Folge b n, die wir als minus eins hoch n mal a n geteilt durch zwei definieren.
Was ist <bookmark mark="b_n_in_2"/>der Grenzwert von b n für n gegen unendlich?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("a_1_in")
            self.play(Write(series_1), run_time=.5)

            self.wait_until_bookmark("a_2_in")
            self.play(Write(series_2[0]), run_time=.5)

            self.wait_until_bookmark("b_n_in_1")
            self.play(Write(series_3), run_time=.5)

            self.wait_until_bookmark("b_n_in_2")
            self.play(TransformMatchingTex(series_3, series_4))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

#
        
##################################### Partial fraction decomposition
#####################################
class Calc_practice_pfd_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        pfd = self.translate("General.pfd")
        title = self.add_title(pfd)
        self.add(title)

        # Define the function text using MathTex
        pfd = MathTex(r"\frac{4x^2+2x+3}{x^3+x}", r"=\frac{Ax+B}{x^2+1}+\frac{C}{x}", color=c1t, font_size=fs3).set_y(2)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,0,0]).scale(.45)

        # Define the voiceover text
        voiceover_text = """
Betrachte die <bookmark mark="pfd_in"/>Funktion vier x quadrat plus zwei x plus drei geteilt durch x hoch drei plus x.
Wenden wir darauf eine Partialbruchzerlegung mit dem Ansatz <bookmark mark="ansatz_in"/>A x plus B geteilt durch x quadrat plus eins plus C geteilt durch x an.
<bookmark mark="qmark_in"/>Was sind dann die Koeffizienten A, B und C?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("pfd_in")
            self.play(Write(pfd[0]))

            self.wait_until_bookmark("ansatz_in")
            self.play(Write(pfd[1]))

            self.wait_until_bookmark("qmark_in")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

#####################################
class Calc_practice_pfd_2_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        pfd = self.translate("General.pfd")
        title = self.add_title(pfd)
        self.add(title)

        # Define the function text using MathTex
        pfd = MathTex(r"\frac{x^2+10x+18}{x(x^2+6x+9)}", r"=\frac{A}{x}+\frac{B}{x+3}+\frac{C}{(x+3)^2}", color=c1t, font_size=fs3).set_y(2)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,0,0]).scale(.45)

        # Define the voiceover text
        voiceover_text = """
Du hast die <bookmark mark="pfd_in"/>Funktion x quadrat plus zehn x plus achtzehn geteilt durch x mal Klammer auf x quadrat plus sechs x plus neun Klammer zu, gegeben.
Du sollst nun eine Partialbruchzerlegung mit dem Ansatz <bookmark mark="ansatz_in"/>A durch x plus B durch x plus drei plus C durch Klammer auf x plus drei Klammer zu hoch zwei durchführen.
<bookmark mark="qmark_in"/>Was sind dann die Koeffizienten A, B und C?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("pfd_in")
            self.play(Write(pfd[0]))

            self.wait_until_bookmark("ansatz_in")
            self.play(Write(pfd[1]))

            self.wait_until_bookmark("qmark_in")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)
#

        


##################################### Minimum and Maximum
#####################################
class Calc_practice_minmax_10_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ konvergente Folge", color=c1t, font_size=fs3)
        series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=0$", color=c1t, font_size=fs3)
        series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        series_3 = Tex("", r"$b_n=$", "", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
        series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).move_to(series_3)

        # lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = """
Betrachten wir die konvergente <bookmark mark="a_1_in"/>Folge a n. Wir wissen, dass a n <bookmark mark="a_2_in"/>gegen Null konvergiert, also dass der Grenzwert der Folge gleich Null ist.
Betrachten wir jetzt eine neue <bookmark mark="b_n_in_1"/>Folge b n, die wir als minus eins hoch n mal a n geteilt durch zwei definieren.
Was ist <bookmark mark="b_n_in_2"/>der Grenzwert von b n für n gegen unendlich?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("a_1_in")
            self.play(Write(series_1), run_time=.5)

            self.wait_until_bookmark("a_2_in")
            self.play(Write(series_2[0]), run_time=.5)

            self.wait_until_bookmark("b_n_in_1")
            self.play(Write(series_3), run_time=.5)

            self.wait_until_bookmark("b_n_in_2")
            self.play(TransformMatchingTex(series_3, series_4))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

#
        
##################################### Intermediate value theorem
#####################################
class Calc_practice_ivt_10_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ konvergente Folge", color=c1t, font_size=fs3)
        series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=0$", color=c1t, font_size=fs3)
        series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        series_3 = Tex("", r"$b_n=$", "", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
        series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).move_to(series_3)

        # lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = """
Betrachten wir die konvergente <bookmark mark="a_1_in"/>Folge a n. Wir wissen, dass a n <bookmark mark="a_2_in"/>gegen Null konvergiert, also dass der Grenzwert der Folge gleich Null ist.
Betrachten wir jetzt eine neue <bookmark mark="b_n_in_1"/>Folge b n, die wir als minus eins hoch n mal a n geteilt durch zwei definieren.
Was ist <bookmark mark="b_n_in_2"/>der Grenzwert von b n für n gegen unendlich?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("a_1_in")
            self.play(Write(series_1), run_time=.5)

            self.wait_until_bookmark("a_2_in")
            self.play(Write(series_2[0]), run_time=.5)

            self.wait_until_bookmark("b_n_in_1")
            self.play(Write(series_3), run_time=.5)

            self.wait_until_bookmark("b_n_in_2")
            self.play(TransformMatchingTex(series_3, series_4))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

#
        

##################################### Complex Numbers
#####################################
class Calc_practice_complex_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        complex_numbers = self.translate("General.complex_numbers")
        title = self.add_title(complex_numbers)
        self.add(title)

        # Define the function text using MathTex
        complex_number = Tex(r"$z=\frac{c+3i}{1+2i}$", color=BLUE, font_size=fs1).set_y(2)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,0,0]).scale(.45)

        # Define the voiceover text
        voiceover_text = """
Betrachte die Komplexe Zahl <bookmark mark="complex_number_in"/>z, welche durch den Ausdruck c plus drei i geteilt durch eins plus zwei i definiert ist.
Was ist der <bookmark mark="qmark"/>Realteil von z? Und was ist der Imaginärteil von z?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("complex_number_in")
            self.play(Write(complex_number))

            self.wait_until_bookmark("qmark")
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

#
        
##################################### Trig functions
#####################################
class Calc_practice_trig_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        trig_functions = self.translate("General.trig_functions")
        title = self.add_title(trig_functions)
        self.add(title)

        # Define the function text using MathTex
        function = Tex(r"$f:\mathbb R \rightarrow \mathbb R$", r" $f(x)=\sin(3x)+2$", color=BLUE, font_size=fs3).scale(1.1).set_y(2.4)
        period = MathTex(r"\Rightarrow T=?", color=BLUE, font_size=fs2).next_to(function, DOWN, buff=.4)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,-.4,0]).scale(.4)

        # Define the voiceover text
        voiceover_text = """
Du hast eine Funktion gegeben, die <bookmark mark="func_in_1"/>von den reellen Zahlen in die reellen Zahlen abbildet.
Der Term der Funktion lautet <bookmark mark="func_in_2"/>f von x gleich Sinus von drei x plus zwei.
Was ist <bookmark mark="period_in"/>die kleinste Periode T, die diese Funktion besitzt?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in_1")
            self.play(Write(function[0]))

            self.wait_until_bookmark("func_in_2")
            self.play(Write(function[1]))

            self.wait_until_bookmark("period_in")
            self.play(Write(period))
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

#####################################
class Calc_practice_trig_2_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        trig_functions = self.translate("General.trig_functions")
        title = self.add_title(trig_functions)
        self.add(title)

        # Define the function text using MathTex
        function = Tex(r"$f:\mathbb R \rightarrow \mathbb R$", r" $f(x)=\frac{\cos(5x)}{3}$", color=BLUE, font_size=fs3).scale(1.1).set_y(2.4)
        period = MathTex(r"\Rightarrow T=?", color=BLUE, font_size=fs2).next_to(function, DOWN, buff=.4)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,-.4,0]).scale(.4)

        # Define the voiceover text
        voiceover_text = """
Betrachte die Funktion, die Funktion <bookmark mark="func_in_2"/>f von x gleich cosinus von 5 x geteilt durch drei, die <bookmark mark="func_in_1"/>von den reellen Zahlen in die reellen Zahlen abbildet.
Was ist <bookmark mark="period_in"/>die kleinste Periode T von der Funktion f?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:

            self.wait_until_bookmark("func_in_2")
            self.play(Write(function[1]))
            
            self.wait_until_bookmark("func_in_1")
            self.play(Write(function[0]))

            self.wait_until_bookmark("period_in")
            self.play(Write(period))
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

#
        
##################################### Steadiness
#####################################
class Calc_practice_steady_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        trig_functions = self.translate("General.trig_functions")
        title = self.add_title(trig_functions)
        self.add(title)

        # Define the function text using MathTex
        function = Tex(r"$f:\mathbb R \rightarrow \mathbb R$", r" $f(x)=\sin(3x)+2$", color=BLUE, font_size=fs3).scale(1.1).set_y(2.4)
        period = MathTex(r"\Rightarrow T=?", color=BLUE, font_size=fs2).next_to(function, DOWN, buff=.4)

        qmark = ImageMobject(assets_folder / "img" / "qmark.png").move_to([-5,-.4,0]).scale(.4)

        # Define the voiceover text
        voiceover_text = """
Du hast eine Funktion gegeben, die <bookmark mark="func_in_1"/>von den reellen Zahlen in die reellen Zahlen abbildet.
Der Term der Funktion lautet <bookmark mark="func_in_2"/>f von x gleich Sinus von drei x plus zwei.
Was ist <bookmark mark="period_in"/>die kleinste Periode T, die diese Funktion besitzt?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("func_in_1")
            self.play(Write(function[0]))

            self.wait_until_bookmark("func_in_2")
            self.play(Write(function[1]))

            self.wait_until_bookmark("period_in")
            self.play(Write(period))
            self.add_shift_sound(0.5)
            self.play(qmark.animate.shift(5*RIGHT), run_time=.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(6)


#
        
##################################### MISC
#####################################
class Calc_practice_misc_10_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        limits = self.translate("words.Limits")
        title = self.add_title(limits)
        self.add(title)

        # Define the function text using MathTex
        series_1 = Tex(r"$\left(a_n\right)_{n\in\mathbb N}$ konvergente Folge", color=c1t, font_size=fs3)
        series_2 = Tex(r"$\underset{n\to\infty}{\lim}a_n=0$", color=c1t, font_size=fs3)
        series = VGroup(series_1, series_2).arrange(DOWN, buff=.2, aligned_edge=LEFT).set_y(1.8)
        series_3 = Tex("", r"$b_n=$", "", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).next_to(series, DOWN, buff=.4).set_x(0)
        series_4 = Tex(r"$\underset{n\to\infty}{\lim}$", r"$b_n=$", r"$\underset{n\to\infty}{\lim}$", r"$(-1)^n\frac{a_n}2$", color=BLUE, font_size=fs2).move_to(series_3)

        # lion = ImageMobject(assets_folder / "img" / "lion_thinking.png").move_to([-5,-.6,0]).scale(.5)

        # Define the voiceover text
        voiceover_text = """
Betrachten wir die konvergente <bookmark mark="a_1_in"/>Folge a n. Wir wissen, dass a n <bookmark mark="a_2_in"/>gegen Null konvergiert, also dass der Grenzwert der Folge gleich Null ist.
Betrachten wir jetzt eine neue <bookmark mark="b_n_in_1"/>Folge b n, die wir als minus eins hoch n mal a n geteilt durch zwei definieren.
Was ist <bookmark mark="b_n_in_2"/>der Grenzwert von b n für n gegen unendlich?
"""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("a_1_in")
            self.play(Write(series_1), run_time=.5)

            self.wait_until_bookmark("a_2_in")
            self.play(Write(series_2[0]), run_time=.5)

            self.wait_until_bookmark("b_n_in_1")
            self.play(Write(series_3), run_time=.5)

            self.wait_until_bookmark("b_n_in_2")
            self.play(TransformMatchingTex(series_3, series_4))

        # Wait for 4 seconds at the end of the animation
        self.wait(6)

#