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

##################################### 
#####################################
# MC, Injective, Inverse
class Calc_practice_1_q(SophiaCursorScene):

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

class Calc_practice_2_a(SophiaCursorScene):

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
class Calc_practice_2_q(SophiaCursorScene):

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

class Calc_practice_2_a(SophiaCursorScene):

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
class Calc_practice_3_q(SophiaCursorScene):

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
class Calc_practice_3_a(SophiaCursorScene):


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
class Calc_practice_4_q(SophiaCursorScene):

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
Wir wissen, dass der Grenzwert von a 2 n <bookmark mark="a_n_in_2"/> für n gegen undendlich gleich a ist. Und wir wissen auch, <bookmark mark="a_n_in_3"/>dass der Grenzwert von a 2 n plus 1 gleich a ist.
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

class Calc_practice_4_a(SophiaCursorScene):

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
class Calc_practice_5_q(SophiaCursorScene):

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

class Calc_practice_5_a(SophiaCursorScene):

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
class Calc_practice_6_q(SophiaCursorScene):
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

class Calc_practice_6_a(SophiaCursorScene):

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
class Calc_practice_7_q(SophiaCursorScene):

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
class Calc_practice_8_q(SophiaCursorScene):

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

class Calc_practice_8_a(SophiaCursorScene):

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
class Calc_practice_9_q(SophiaCursorScene):

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
        
class Calc_practice_9_a(SophiaCursorScene):

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
class Calc_practice_10_q(SophiaCursorScene):

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
        answer_b = Tex("b) $\\int_{-a}^{a}f(x)dx=2\\int_0^af(x)dx$ für alle $a>0$", color=BLUE, font_size=fs3)
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


##################################### 
##################################### 
class Calc_practice_10_q(SophiaCursorScene):

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
        # Define the answer options using Tex
        answer_a = Tex("a) $g(x)=f(x)\\cdot \\cos(x)$ ist ungerade", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\int\\displaylimits_{-a}^{a}f(x)dx=2\\int\\displaylimits_0^af(x)dx$ \\\\für alle $a>0$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\int\\displaylimits_{-a}^{a}f(x)dx=0$ für alle $a>0$", color=BLUE, font_size=fs3)
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


##################################### 
##################################### 
class Calc_practice_11_q(SophiaCursorScene):

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


##################################### 
##################################### 
class Calc_practice_12_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        a_b = Tex("$\\left(a_n\\right)_{n\\in\\mathbb N}, \\left(a_n\\right)_{n\\in\\mathbb N}$ Folgen", color=c1t, font_size=fs2)
        a = MathTex("\\lim_{n\\to\\infty}a_n=\\infty", color=c1t, font_size=fs2)
        b = MathTex("\\lim_{n\\to\\infty}a_n=0", color=c1t, font_size=fs2)
        a_n = VGroup(a_b, a, b).arrange(DOWN, buff=0.1, aligned_edge=LEFT).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) $\\lim_{n\\to\\infty}a_n\\cdot b_n=0$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $\\lim_{n\\to\\infty}a_n\\cdot b_n=\\infty$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $\\lim_{n\\to\\infty}a_n\\cdot b_n=1$", color=BLUE, font_size=fs3)
        answer_d = Tex("d) Keine der Aussagen i.A. wahr", color=BLUE, font_size=fs3)
        answers = VGroup(answer_a, answer_b, answer_c, answer_d).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(a_n, DOWN, buff=0.8)

        # Define the voiceover text
        voiceover_text = """
Seien <bookmark mark="a_b_in"/>a n und b n Folgen von reellen Zahlen.
Der Grenzwert von <bookmark mark="a_in"/>a n für n gegen undendlich ist gleich undendlich. ... Und der Grenzwert von <bookmark mark="b_in"/>b n für n gegen undendlich ist gleich Null. ...
Welche der folgenden Aussagen gilt allgemein? ...
Aussage <bookmark mark="answer_a_in"/>a: Der Grenzwert von a n mal b n für n gegen undendlich ist gleich Null. ...
Aussage <bookmark mark="answer_b_in"/>b: Der Grenzwert von a n mal b n für n gegen undendlich ist gleich undendlich. ...
Aussage <bookmark mark="answer_c_in"/>c: Der Grenzwert von a n mal b n für n gegen undendlich ist gleich Eins. ...
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


##################################### 
##################################### 
class Calc_practice_14_q(SophiaCursorScene):

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
class Calc_practice_15_q(SophiaCursorScene):

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
        answer_a = Tex("a) $f$ hat Nullstelle in $[0,1]", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $f$ hat Maximum auf $[0,1]", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ ist nicht stetig", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f$ hat Stammfunktion $F(x)=xe^{-\\sqrt{x^2+1}+1}$", color=BLUE, font_size=fs3)
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

##################################### 
##################################### 
class Calc_practice_16_q(SophiaCursorScene):

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


##################################### 
##################################### 
class Calc_practice_17_q(SophiaCursorScene):

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
class Calc_practice_18_q(SophiaCursorScene):

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
        answer_a = Tex("a) Es gibt $\\xi\\in]0,1]$, dass Rechteck\\\\ mit Höhe $f(\\xi)$ und Breite $1$\\\\ die Fläche $A=\\int_0^1f(x)dx$ hat", color=BLUE, font_size=fs3, tex_environment="flushright")
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


##################################### 
##################################### 
class Calc_practice_19_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f = Tex("f:\\mathbb R\\rightarrow\\mathbb R$ differenzierbar, gerade", color=c1t, font_size=fs2).set_y(2)

        # Define the answer options using Tex
        answer_a = Tex("a) $f(x)=0$ für alle $x\\in\\mathbb R$", color=BLUE, font_size=fs3)
        answer_b = Tex("b) $f'(x)=0$ für $x=0$", color=BLUE, font_size=fs3)
        answer_c = Tex("c) $f$ ist injektiv", color=BLUE, font_size=fs3)
        answer_d = Tex("d) $f(x)=x^3", color=BLUE, font_size=fs3)
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


##################################### 
##################################### 
class Calc_practice_20_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        # Define the function text using MathTex
        f_1 = Tex("f:\\mathbb R\\rightarrow\\mathbb R$", color=c1t, font_size=fs2)
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