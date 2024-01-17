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


class calc_1_1(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Mengen")
        self.add(title)

        # MathTex objects for the sets, stacked below each other
        a_in_A = MathTex(r"a\in A", color=c1t, font_size=fs3).next_to(title, DOWN, buff=.4)
        a_in_A_reverse = MathTex(r"A\ni a", color=c1t, font_size=fs3).next_to(a_in_A, DOWN, buff=.2)
        a_notin_A = MathTex(r"a\notin A", color=c1t, font_size=fs3).next_to(a_in_A_reverse, DOWN, buff=.4)



        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
Beginnen wir mit einer kleinen Einführung in die Mengenlehre und die elementaren Operationen, die mit Mengen vorgenommen werden können.
Ist<bookmark mark="a_in_A_in"/> groß A eine Menge und klein a ein Element von groß a, so schreiben wir klein a ist Element von groß A.
...

Wir sagen dann auch klein a ist in groß A, oder klein a gehört zu groß A. Gelegentlich wird auch <bookmark mark="reverse_in"/> die umgekehrte Schreibweise verwendet.
...
Und wenn a nicht in a liegt, schreiben wir das mit dem <bookmark mark="a_notin_A"/> Element von Zeichen mit einem Schrägstrich und sagen klein a ist nicht Element von groß A.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            self.wait_until_bookmark("a_in_A_in")
            self.play(Write(a_in_A))

            self.wait_until_bookmark("reverse_in")
            self.play(Write(a_in_A_reverse))

            self.wait_until_bookmark("a_notin_A")
            self.play(Write(a_notin_A))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class calc_1_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Mengen")
        self.add(title)

        # MathTex objects for the sets, stacked below each other
        natural_numbers_set = MathTex(r"\mathbb{N} := \{0, 1, 2, 3, \ldots\}", color=c1t, font_size=fs3).next_to(title, DOWN, buff=.4)
        even_numbers_set = MathTex(r"\mathbb{G} := \{0, 2, 4, 6, \ldots\}", color=c1t, font_size=fs3).next_to(natural_numbers_set, DOWN, buff=0.5)
        set_notation_example = MathTex(r"\mathbb{G} = \{n \in \mathbb{N} \mid n \text{ gerade}\}", color=c1t, font_size=fs3).next_to(even_numbers_set, DOWN, buff=0.5)
        real_numbers_set = MathTex(r"\mathbb{R} = \{x \mid x \text{ ist reele Zahl}\}", color=c1t, font_size=fs3).next_to(set_notation_example, DOWN, buff=0.5)
        sine_function_set = MathTex(r"\sin \in \{f \mid f \text{ reele Funktion und } f'' = -f\}", color=c1t, font_size=fs4).next_to(real_numbers_set, DOWN, buff=0.5)



        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        Mengen können beschrieben werden, indem man ihre Elemente angibt. Dafür verwendet man normalerweise geschweifte Klammern. 
        <bookmark mark="natural_numbers"/> Die natürlichen Zahlen N werden beispielsweise beschrieben durch N gleich geschweifte Klammer auf 0,1,2,3, und so weiter.
        <bookmark mark="even_numbers"/> Und die geraden Zahlen G werden beispielsweise beschrieben durch G gleich geschweifte Klammer auf 0,2,4,6, und so weiter.
        ...
        Man kann das ganze auch <bookmark mark="real_numbers"/> so darstellen, wie du es hier siehst.
        Das liest man dann als die Reelen Zahlen x sind gegebn durch die Menge x, so dass x eine reele Zahl ist.
        <bookmark mark="sine_function"/>Oder wir sagen die Sinus Funktion ist Element der Menge f, so dass f eine reele Funktion ist und die zweite Ableitung von f ist gleich minus f ist.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            # Display the natural numbers set
            self.wait_until_bookmark("natural_numbers")
            self.play(Write(natural_numbers_set))

            # Display the even numbers set
            self.wait_until_bookmark("even_numbers")
            self.play(Write(even_numbers_set))

            # Display the set notation example
            self.play(Write(set_notation_example))

            # Display the real numbers set
            self.wait_until_bookmark("real_numbers")
            self.play(Write(real_numbers_set))

            # Display the sine function set
            self.wait_until_bookmark("sine_function")
            self.play(Write(sine_function_set))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)



class calc_1_3(SophiaCursorScene):

    def construct(self):
        # Hinzufügen der initialen Komponenten zur Szene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Teilmengen")

        # MathTex Objekte für die Mengen, untereinander angeordnet
        subset_definition = MathTex(r"B \subseteq A", color=c1t, font_size=48).next_to(title, DOWN, buff=0.5)
        subset_definition_alternative = MathTex(r"A \supseteq B", color=c1t, font_size=48).next_to(subset_definition, DOWN, buff=0.2)
        subset_reflexive = MathTex(r"A \subseteq A", color=c1t, font_size=48).next_to(subset_definition_alternative, DOWN, buff=0.5)
        not_subset = MathTex(r"B \nsubseteq A", color=c1t, font_size=48).next_to(subset_reflexive, DOWN, buff=0.5)

        # Voiceover-Text mit Lesezeichen und expliziter Inhaltswiedergabe
        voiceover_text = """
        <bookmark mark="definition"/> Sind A und B zwei Mengen, so nennt man B eine Teilmenge von A, wenn jedes Element von B auch in A liegt.
        Die Notation hierfür ist <bookmark mark="notation"/> B ist enthalten in A, oder alternativ A enthält B. 
        Beachten Sie, <bookmark mark="reflexive"/> dass mit dieser Definition auch gilt, dass A eine Teilmenge von sich selbst ist, also A ist enthalten in A.
        Was bedeutet wohl <bookmark mark="not_subset"/> B ist nicht enthalten in A?
        """

        # Aktionssequenz
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("definition")
            self.play(Write(subset_definition))

            self.wait_until_bookmark("notation")
            self.play(Write(subset_definition_alternative))

            self.wait_until_bookmark("reflexive")
            self.play(Write(subset_reflexive))

            self.wait_until_bookmark("not_subset")
            self.play(Write(not_subset))

            self.wait(4)




class calc_1_4(SophiaCursorScene):

    def construct(self):
        # Initial components added to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Intervalle")

        # MathTex objects for interval types, stacked below each other
        open_interval = MathTex(r"]a, b[ \ := \{x \in \mathbb{R} \ | \ a < x < b\}", color=c1t, font_size=36).next_to(title, DOWN, buff=0.3)
        half_open_interval_left = MathTex(r"[a, b[ \ := \{x \in \mathbb{R} \ | \ a \leq x < b\}", color=c1t, font_size=36).next_to(open_interval, DOWN, buff=0.2)
        half_open_interval_right = MathTex(r"]a, b] \ := \{x \in \mathbb{R} \ | \ a < x \leq b\}", color=c1t, font_size=36).next_to(half_open_interval_left, DOWN, buff=0.2)
        closed_interval = MathTex(r"[a, b] \ := \{x \in \mathbb{R} \ | \ a \leq x \leq b\}", color=c1t, font_size=36).next_to(half_open_interval_right, DOWN, buff=0.2)

        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        <bookmark mark="example1"/> Beispiel 1: Intervalle. Ein Intervall ist eine Teilmenge der reellen Zahlen.
        <bookmark mark="open_interval"/> Ein offenes Intervall wird dargestellt mit runden Klammern, was bedeutet, dass die Grenzen a und b nicht inklusive sind.
        <bookmark mark="half_open_interval_left"/> Ein halboffenes Intervall mit einer eckigen Klammer bei a bedeutet, dass a inklusive ist, aber b nicht.
        <bookmark mark="half_open_interval_right"/> Umgekehrt, wenn die eckige Klammer bei b steht, ist b inklusive und a nicht.
        <bookmark mark="closed_interval"/> Ein geschlossenes oder kompaktes Intervall schließt beide Grenzen ein, gekennzeichnet durch eckige Klammern an beiden Enden.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("example1")
            self.play(FadeIn(title))

            self.wait_until_bookmark("open_interval")
            self.play(Write(open_interval))

            self.wait_until_bookmark("half_open_interval_left")
            self.play(Write(half_open_interval_left))

            self.wait_until_bookmark("half_open_interval_right")
            self.play(Write(half_open_interval_right))

            self.wait_until_bookmark("closed_interval")
            self.play(Write(closed_interval))

            self.wait(4)




class calc_1_5(SophiaCursorScene):

    def construct(self):
        # Initial components added to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Mengenoperationen")

        # MathTex objects for set operations, stacked below each other
        union_set = MathTex(r"A \cup B \ := \{x | x \in A", r" \text{ oder } ", r"x \in B\}", color=c1t, font_size=26).next_to(title, DOWN, buff=0.5)
        intersection_set = MathTex(r"A \cap B \ := \{x | x \in A", r" \text{ und } ", r"x \in B\}", color=c1t, font_size=26).next_to(union_set, DOWN, buff=0.2)
        union_indexed_set = MathTex(r"\bigcup_{i \in I} A_i \ := \{x | x \in A_i", r" \text{ mind. ein } i \in I\}", color=c1t, font_size=20).next_to(intersection_set, DOWN, buff=0.2)
        intersection_indexed_set = MathTex(r"\bigcap_{i \in I} A_i \ := \{x | x \in A_i", r" \text{ für alle } i \in I\}", color=c1t, font_size=20).next_to(union_indexed_set, DOWN, buff=0.2)
        difference_set = MathTex(r"A \setminus B \ := \{a \in A | a", r" \notin B\}", color=c1t, font_size=26).next_to(intersection_indexed_set, DOWN, buff=0.2)

        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        <bookmark mark="intro"/> Aus zwei Mengen A und B bildet man neue Mengen, die Vereinigung und den Durchschnitt.
        <bookmark mark="union_set"/> Die Vereinigung von A und B umfasst alle Elemente, die in A oder in B liegen.
        <bookmark mark="intersection_set"/> Der Durchschnitt von A und B enthält alle Elemente, die sowohl in A als auch in B sind.
        <bookmark mark="union_indexed_set"/> Mit mehreren Mengen verwendet man die Indexnotation für die Vereinigung, um Elemente aus mindestens einer der Mengen zu vereinen.
        <bookmark mark="intersection_indexed_set"/> Analog dazu bildet die Indexnotation für den Durchschnitt eine Menge mit Elementen, die in allen Mengen liegen.
        <bookmark mark="difference_set"/> Die Differenzmenge A ohne B besteht aus Elementen in A, die nicht in B sind.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("intro")
            self.play(FadeIn(title))

            self.wait_until_bookmark("union_set")
            self.play(Write(union_set))

            self.wait_until_bookmark("intersection_set")
            self.play(Write(intersection_set))

            self.wait_until_bookmark("union_indexed_set")
            self.play(Write(union_indexed_set))

            self.wait_until_bookmark("intersection_indexed_set")
            self.play(Write(intersection_indexed_set))

            self.wait_until_bookmark("difference_set")
            self.play(Write(difference_set))

            self.wait(4)


class calc_1_5(SophiaCursorScene):

    def construct(self):
        # Initial components added to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Mengenoperationen")

        # MathTex objects for set operations, stacked below each other
        union_set = MathTex(r"A \cup B \ := \{x | x \in A", r" \text{ oder } ", r"x \in B\}", color=c1t, font_size=26).next_to(title, DOWN, buff=0.5)
        intersection_set = MathTex(r"A \cap B \ := \{x | x \in A", r" \text{ und } ", r"x \in B\}", color=c1t, font_size=26).next_to(union_set, DOWN, buff=0.2)
        union_indexed_set = MathTex(r"\bigcup_{i \in I} A_i \ := \{x | x \in A_i", r" \text{ mind. ein } i \in I\}", color=c1t, font_size=20).next_to(intersection_set, DOWN, buff=0.2)
        intersection_indexed_set = MathTex(r"\bigcap_{i \in I} A_i \ := \{x | x \in A_i", r" \text{ für alle } i \in I\}", color=c1t, font_size=20).next_to(union_indexed_set, DOWN, buff=0.2)
        difference_set = MathTex(r"A \setminus B \ := \{a \in A | a", r" \notin B\}", color=c1t, font_size=26).next_to(intersection_indexed_set, DOWN, buff=0.2)

        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        <bookmark mark="intro"/> Aus zwei Mengen A und B bildet man neue Mengen, die Vereinigung und den Durchschnitt.
        <bookmark mark="union_set"/> Die Vereinigung von A und B umfasst alle Elemente, die in A oder in B liegen.
        <bookmark mark="intersection_set"/> Der Durchschnitt von A und B enthält alle Elemente, die sowohl in A als auch in B sind.
        <bookmark mark="union_indexed_set"/> Mit mehreren Mengen verwendet man die Indexnotation für die Vereinigung, um Elemente aus mindestens einer der Mengen zu vereinen.
        <bookmark mark="intersection_indexed_set"/> Analog dazu bildet die Indexnotation für den Durchschnitt eine Menge mit Elementen, die in allen Mengen liegen.
        <bookmark mark="difference_set"/> Die Differenzmenge A ohne B besteht aus Elementen in A, die nicht in B sind.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("intro")
            self.play(FadeIn(title))

            self.wait_until_bookmark("union_set")
            self.play(Write(union_set))

            self.wait_until_bookmark("intersection_set")
            self.play(Write(intersection_set))

            self.wait_until_bookmark("union_indexed_set")
            self.play(Write(union_indexed_set))

            self.wait_until_bookmark("intersection_indexed_set")
            self.play(Write(intersection_indexed_set))

            self.wait_until_bookmark("difference_set")
            self.play(Write(difference_set))

            self.wait(4)



class calc_1_6(SophiaCursorScene):
    def construct(self):
        # Call the parent constructor
        super().construct()
        self.add_mathgrid()
        
        # Variables for color and font size
        text_color = c1t
        font_size = fs3
        
        # Create MathTex objects for each formula with specified color and font size
        set_definition = MathTex(r"A_i", r"=", r"\{ n \in \mathbb{N} \mid n", r"\text{ durch }", r"i", r"\text{ teilbar ist}\}", color=text_color, font_size=font_size)
        p_set = MathTex(r"P", r"=", r"\mathbb{N} \setminus \{0\}", color=text_color, font_size=font_size)
        j_set = MathTex(r"J", r"=", r"P \cap G", r"=", r"\{2, 4, 6, \ldots\}", color=text_color, font_size=font_size)
        intersection_example = MathTex(r"A_2 \cap A_3", r"=", r"A_6", color=text_color, font_size=font_size)
        union_example = MathTex(r"\bigcup_{j \in J}", r"A_j", r"=", r"A_2", color=text_color, font_size=font_size)
        intersection_empty = MathTex(r"\bigcap_{j \in J}", r"A_j", r"=", r"\{\emptyset\}", color=text_color, font_size=font_size)
        distributive_law = MathTex(r"A \cap (B \cup C)", r"=", r"(A \cap B) \cup (A \cap C)", color=text_color, font_size=font_size)
        distributive_property = MathTex(r"a(b + c)", r"=", r"ab + ac", color=text_color, font_size=font_size)
        
        # Arrange the MathTex objects on the screen
        formulas = VGroup(
            set_definition, 
            p_set, 
            j_set, 
            intersection_example, 
            union_example, 
            intersection_empty, 
            distributive_law, 
            distributive_property
        ).arrange(DOWN, center=True, aligned_edge=LEFT).scale(.9)
        
        # Add the formulas to the scene
        
        # Create the voiceover with bookmarks
        voiceover_text = """
        <bookmark mark="definition"/>Betrachten wir die Menge A_i, die alle natürlichen Zahlen enthält, die durch i teilbar sind, wobei i zur Menge der natürlichen Zahlen ohne die Null gehört.
        ...
        <bookmark mark="intersection_example"/>Wenn wir nun die Mengen A_2 und A_3 schneiden, erhalten wir die Menge A_6.
        ...
        <bookmark mark="union_example"/>Die Vereinigung aller A_j für j in J ist gleich A_2.
        ...
        <bookmark mark="intersection_empty"/>Und der Schnitt aller A_j für j in J ist die leere Menge.
        ...
        <bookmark mark="distributive_law"/>Überlegen Sie, dass das Gesetz der Distribution für Mengen genauso wie für das algebraische Distributivgesetz gilt.
        ...
        <bookmark mark="distributive_property"/>Das sieht aus wie das Distributivgesetz a mal (b plus c) ist gleich ab plus ac.
        """

        # Action Sequence with Voiceover
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("definition")
            self.play(Write(set_definition))

            self.wait_until_bookmark("intersection_example")
            self.play(Write(intersection_example))

            self.wait_until_bookmark("union_example")
            self.play(Write(union_example))

            self.wait_until_bookmark("intersection_empty")
            self.play(Write(intersection_empty))

            self.wait_until_bookmark("distributive_law")
            self.play(Write(distributive_law))

            self.wait_until_bookmark("distributive_property")
            self.play(Write(distributive_property))
        
        # Wait at the end of the animation
        self.wait(2)


class calc_1_7(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Potenzmenge und Produktmenge")
        self.add(title)

        # MathTex objects for the power set and Cartesian product
        power_set = MathTex(r"P(A) := \{B | B \subseteq A\}", color=c1t, font_size=fs3).next_to(title, DOWN, buff=0.4)
        cartesian_product = MathTex(r"A \times B := \{(a,b) | a \in A \text{ und } b \in B\}", color=c1t, font_size=fs3).next_to(power_set, DOWN, buff=0.4)
        general_product = MathTex(r"A_1 \times \ldots \times A_n := \{(a_1, \ldots, a_n) | a_i \in A_i\}", color=c1t, font_size=fs3).next_to(cartesian_product, DOWN, buff=0.4)
        example = MathTex(r"P(A) = \{\emptyset, \{1\}, \{2\}, \{1,2\}\}", r"\\A \times B = \{(1,1), (1,2), (1,3), (2,1), (2,2), (2,3)\}", color=c1t, font_size=fs3).next_to(general_product, DOWN, buff=0.4)

        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        Wir schließen mit zwei weiteren Begriffen, von denen vor allem der zweite oft vorkommt: Die Gesamtheit der Teilmengen einer festen Menge A bildet eine Menge P(A), die sogenannte Potenzmenge von A.
        <bookmark mark="power_set"/> Also gilt B ist ein Element der Potenzmenge von A genau dann, wenn B eine Teilmenge von A ist.
        ...
        Schließlich sei für Mengen A, B die Produktmenge A mal B definiert als die Menge der geordneten Paare (a, b) von Elementen aus A beziehungsweise B.
        ...
        <bookmark mark="cartesian_product"/> Allgemeiner definiert man A1 mal punkt punkt punkt mal An als die Menge der geordneten n-tupel.
        ...
        <bookmark mark="example"/> Als Beispiel, seien A gleich geschweifte Klammer auf 1, 2 und B gleich geschweifte Klammer auf 1, 2, 3. Dann ist die Potenzmenge von A gleich geschweifte Klammer auf leere Menge, 1, 2, 1 und 2 und A mal B gleich geschweifte Klammer auf ...
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("power_set")
            self.play(Write(power_set))
            
            self.wait_until_bookmark("cartesian_product")
            self.play(Write(cartesian_product))
            
            self.play(Write(general_product))
            
            self.wait_until_bookmark("example")
            self.play(Write(example))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)



class calc_1_8(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Abbildungen")
        self.add(title)

        # MathTex objects for the function definition and examples
        function_def = MathTex(r"f: A \rightarrow B", color=c1t, font_size=fs3).next_to(title, DOWN, buff=0.4)
        function_def_detail = MathTex(r"f: A \rightarrow B, x \mapsto f(x)", color=c1t, font_size=fs3).next_to(function_def, DOWN, buff=0.2)
        function_def_value = MathTex(r"f: A \ni x \mapsto f(x) \in B", color=c1t, font_size=fs3).next_to(function_def_detail, DOWN, buff=0.2)
        function_def_short = MathTex(r"f: x \mapsto f(x)", color=c1t, font_size=fs3).next_to(function_def_value, DOWN, buff=0.2)
        function_example = MathTex(r"\text{sin}: \mathbb{R} \rightarrow [-1,1]", color=c1t, font_size=fs3).next_to(function_def_short, DOWN, buff=0.4)
        function_common_example = MathTex(r"f(x) := \frac{1}{\sin x}, x > 0", color=c1t, font_size=fs3).next_to(function_example, DOWN, buff=0.4)

        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        <bookmark mark="definition"/> Definition fünf. Seien A, B Mengen. Eine Abbildung f von A in B ist eine Vorschrift, die jedem Element x in A genau ein Element y gleich f von x in B zuordnet.
        ...
        Man nennt A den Definitions- und B den Wertebereich von f.
        <bookmark mark="notation"/> Notationen: f von A nach B, f von A nach B, x wird abgebildet auf f von x, f von A wird abgebildet auf f von x in B, f von x wird abgebildet auf f von x, wenn A und B klar sind.
        ...
        <bookmark mark="function"/> Man nennt Abbildungen auch Funktionen, vor allem dann, wenn die Werte Zahlen sind.
        <bookmark mark="example"/> Beispiel sechs. Die Funktion sin von R nach minus eins bis eins.
        ...
        <bookmark mark="common_example"/> Beispiel sieben. Sehr gebräuchlich ist es, Funktionen in der Form f von x ist definiert als eins geteilt durch sin x für x größer null anzugeben.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("definition")
            self.play(Write(function_def))
            
            self.wait_until_bookmark("notation")
            self.play(Write(function_def_detail))
            self.play(Write(function_def_value))
            self.play(Write(function_def_short))
            
            self.wait_until_bookmark("function")
            self.play(Write(function_example))
            
            self.wait_until_bookmark("common_example")
            self.play(Write(function_common_example))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)



class calc_1_9(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Injektive Abbildungen")
        self.add(title)

        # MathTex objects for the injective function definition and examples
        injective_def = MathTex(r"f: A \rightarrow B", r"\text{ ist injektiv, wenn }\\", r"f(x_1) = f(x_2)", r"\text{ nur für }", r"x_1 = x_2", color=c1t, font_size=fs3).next_to(title, DOWN, buff=0.4)
        example_function = MathTex(r"f: \mathbb{R} \rightarrow \mathbb{R},", r"x \mapsto x^2", color=c1t, font_size=fs3).next_to(injective_def, DOWN, buff=0.4)
        non_injective_example = MathTex(r"f(-2) = 4 = f(2)", color=c1t, font_size=fs3).next_to(example_function, DOWN, buff=0.4)
        restricted_function = MathTex(r"g: [0, \infty) \rightarrow \mathbb{R},", r"x \mapsto x^2", color=c1t, font_size=fs3).next_to(non_injective_example, DOWN, buff=0.4)
        injective_restriction = MathTex(r"g = f|_{[0, \infty)}", color=c1t, font_size=fs3).next_to(restricted_function, DOWN, buff=0.4)

        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        <bookmark mark="injective_def"/> Achten Sie auf die folgende wichtige Definition. Eine Abbildung f von A nach B ist injektiv, wenn f von x1 gleich f von x2 nur für x1 gleich x2 ist.
        ...
        Verschiedene Argumente liefern verschiedene Werte.
        <bookmark mark="example_function"/> Betrachten wir ein Beispiel. Die Abbildung f von den reellen Zahlen nach den reellen Zahlen, die jedem x das Quadrat zuordnet,
        ...
        <bookmark mark="non_injective_example"/> ist nicht injektiv, da zum Beispiel f von minus zwei gleich vier gleich f von zwei ist. Aber,
        ...
        <bookmark mark="restricted_function"/> wenn wir f auf das Intervall von 0 bis unendlich einschränken, erhalten wir eine Funktion g,
        ...
        <bookmark mark="injective_restriction"/> die injektiv ist. Man nennt g auch die Einschränkung von f auf null bis unendlich.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("injective_def")
            self.play(Write(injective_def))
            
            self.wait_until_bookmark("example_function")
            self.play(Write(example_function))
            
            self.wait_until_bookmark("non_injective_example")
            self.play(Write(non_injective_example))
            
            self.wait_until_bookmark("restricted_function")
            self.play(Write(restricted_function))
            
            self.wait_until_bookmark("injective_restriction")
            self.play(Write(injective_restriction))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)



class calc_1_10(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Umkehrabbildung = Inverse")
        self.add(title)

        # MathTex objects for the inverse function definition and examples
        inverse_def = MathTex(r"f: A \rightarrow B", r"\text{ ist injektiv, wenn }", r"\\f(x_1) = f(x_2)", r"\text{ nur für }", r"x_1 = x_2", color=c1t, font_size=fs3).next_to(title, DOWN, buff=0.4)
        inverse_functionality = MathTex(r"h(y) = x \Leftrightarrow f(x) = y", color=c1t, font_size=fs3).next_to(inverse_def, DOWN, buff=0.4)
        inverse_notation = MathTex(r"f^{-1}: f(A) \rightarrow A", color=c1t, font_size=fs3).next_to(inverse_functionality, DOWN, buff=0.4)
        function_example = MathTex(r"f: \{0, 1, 2, \ldots, 2772\} \rightarrow \{0, 1, 2, \ldots, 2772\}", color=c1t, font_size=fs3).next_to(inverse_notation, DOWN, buff=0.4)
        inverse_example = MathTex(r"f(\{0, 1, 2, \ldots, 2772\}) = \{0, 1, 2, \ldots, 2772\}", color=c1t, font_size=fs3).next_to(function_example, DOWN, buff=0.4)
        inverse_decoding = MathTex(r"h = f^{-1} \text{ liefert die Decodierung.}", color=c1t, font_size=fs3).next_to(inverse_example, DOWN, buff=0.4)

        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        <bookmark mark="inverse_def"/> Hier sehen wir eine wichtige Definition: Eine Abbildung f ist injektiv, wenn unterschiedliche Argumente unterschiedliche Werte liefern.
        ...
        <bookmark mark="inverse_functionality"/> Für eine injektive Funktion f können wir eine Umkehrabbildung oder Inverse h definieren, die durch h von y gleich x charakterisiert ist, genau dann wenn f von x gleich y ist.
        ...
        <bookmark mark="inverse_notation"/> Diese Umkehrabbildung wird auch mit f hoch minus eins bezeichnet und bildet f von A zurück nach A ab.
        ...
        <bookmark mark="function_example"/> Schauen wir uns ein Beispiel an: Wenn wir eine Abbildung f von der Menge aller Zahlen von null bis zweitausendsiebenhundertzweiundsiebzig nach sich selbst haben,
        ...
        <bookmark mark="inverse_example"/> dann bildet die Funktion jedes Element auf sich selbst ab.
        ...
        <bookmark mark="inverse_decoding"/> Die Umkehrfunktion h, also f hoch minus eins, liefert dann die Decodierung für jedes Element der Menge.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("inverse_def")
            self.play(Write(inverse_def))
            
            self.wait_until_bookmark("inverse_functionality")
            self.play(Write(inverse_functionality))
            
            self.wait_until_bookmark("inverse_notation")
            self.play(Write(inverse_notation))
            
            self.wait_until_bookmark("function_example")
            self.play(Write(function_example))
            
            self.wait_until_bookmark("inverse_example")
            self.play(Write(inverse_example))
            
            self.wait_until_bookmark("inverse_decoding")
            self.play(Write(inverse_decoding))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)



class calc_1_11(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Komposition von Abbildungen")
        self.add(title)

        # MathTex objects for the composition definition and examples
        composition_def = MathTex(r"f: A \rightarrow B,", r"g: B \rightarrow C", color=c1t, font_size=fs3).next_to(title, DOWN, buff=0.4)
        composition_def_detail = MathTex(r"g \circ f : A \rightarrow C,", r"x \mapsto g(f(x))", color=c1t, font_size=fs3).next_to(composition_def, DOWN, buff=0.2)
        helium_example = MathTex(r"V(h(t))", r"\text{ beschreibt das Volumen\\des Ballons über die Zeit}", color=c1t, font_size=fs3).next_to(composition_def_detail, DOWN, buff=0.4)
        helium_example_detail = MathTex(r"V \circ h : \mathbb{R} \rightarrow \mathbb{R}", color=c1t, font_size=fs3).next_to(helium_example, DOWN, buff=0.2)
        partial_definition = MathTex(r"g \circ f : A \rightarrow f^{-1}(G) \rightarrow C", color=c1t, font_size=fs3).next_to(helium_example_detail, DOWN, buff=0.4)

        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        <bookmark mark="composition_def"/> Nun eine weitere wichtige Definition: die Komposition von Abbildungen.
        ...
        <bookmark mark="composition_def_detail"/> Wenn wir zwei Funktionen f von A nach B und g von B nach C haben, dann ist die Komposition g nach f eine Abbildung von A nach C, die jedem x das Element g von f von x zuordnet.
        ...
        <bookmark mark="helium_example"/> Schauen wir uns ein Beispiel an. Das Volumen eines Heliumballons, das sich mit der Zeit ändert, kann durch die Komposition zweier Funktionen dargestellt werden.
        ...
        <bookmark mark="helium_example_detail"/> Wenn V das Volumen in Abhängigkeit von der Höhe und h die Höhe über die Zeit darstellt, dann beschreibt V nach h das Volumen des Ballons als eine Funktion der Zeit.
        ...
        <bookmark mark="partial_definition"/> Falls g nur auf einer Teilmenge G von B definiert ist, dann ist die Komposition g nach f entsprechend definiert.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("composition_def")
            self.play(Write(composition_def))
            
            self.wait_until_bookmark("composition_def_detail")
            self.play(Write(composition_def_detail))
            
            self.wait_until_bookmark("helium_example")
            self.play(Write(helium_example))
            
            self.wait_until_bookmark("helium_example_detail")
            self.play(Write(helium_example_detail))
            
            self.wait_until_bookmark("partial_definition")
            self.play(Write(partial_definition))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)




class calc_1_12(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Natürliche Zahlen. Vollständige Induktion")
        self.add(title)

        # MathTex objects for the natural numbers definition and examples
        natural_numbers_def = MathTex(r"\mathbb{N} := \{0, 1, 2, 3, \ldots\}", color=c1t, font_size=fs3).next_to(title, DOWN, buff=0.4)
        real_numbers_example = MathTex(r"x_1, x_2, \ldots, x_n", r"\text{ reelle Zahlen}", color=c1t, font_size=fs3).next_to(natural_numbers_def, DOWN, buff=0.4)
        union_set_def = MathTex(r"A := \bigcup_{i \in \mathbb{N}} A_i", r":= \{ x |", r"\text{Es gibt ein } i \in \mathbb{N} \text{ mit } x \in A_i \}", color=c1t, font_size=fs3).next_to(real_numbers_example, DOWN, buff=0.4)

        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        <bookmark mark="natural_numbers_def"/> Jetzt betrachten wir die Menge der natürlichen Zahlen, die mit Null beginnt und ins Unendliche weitergeht.
        ...
        <bookmark mark="index_explanation"/> Das Zählen von Dingen ist eine der wichtigsten Anwendungen von natürlichen Zahlen, und in der Mathematik verwenden wir sie, um verschiedene, aber analoge Dinge zu unterscheiden.
        ...
        <bookmark mark="real_numbers_example"/> Seien zum Beispiel x1, x2 bis xn reelle Zahlen.
        ...
        <bookmark mark="union_set_def"/> Wenn A1, A2, A3 und so weiter Mengen sind, dann ist ihre Vereinigungsmenge definiert als die Menge aller x, für die es ein i in den natürlichen Zahlen gibt, sodass x zu Ai gehört.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("natural_numbers_def")
            self.play(Write(natural_numbers_def))
    
            self.wait_until_bookmark("real_numbers_example")
            self.play(Write(real_numbers_example))
            
            self.wait_until_bookmark("union_set_def")
            self.play(Write(union_set_def))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class calc_1_13(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Summenzeichen")
        self.add(title)

        # MathTex objects for the summation notation and properties
        summation_def = MathTex(r"\sum_{k=m}^{n} x_k := x_m + x_{m+1} + \ldots + x_n", color=c1t, font_size=fs3).next_to(title, DOWN, buff=0.4)
        summation_prop_add = MathTex(r"\sum_{k=m}^{n} x_k + \sum_{k=m}^{n} y_k = \sum_{k=m}^{n} (x_k + y_k)", color=c1t, font_size=fs3).next_to(summation_def, DOWN, buff=0.4)
        summation_prop_scalar = MathTex(r"\sum_{k=m}^{n} a x_k = a \sum_{k=m}^{n} x_k", color=c1t, font_size=fs3).next_to(summation_prop_add, DOWN, buff=0.4)

        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        <bookmark mark="summation_def"/> Betrachten wir nun das Summenzeichen, eine fundamentale Notation in der Mathematik.
        ...
        <bookmark mark="summation_prop_add"/> Eine wichtige Eigenschaft des Summenzeichens ist die Distributivität über die Addition.
        ...
        <bookmark mark="summation_prop_scalar"/> Ebenso kann ein Skalarfaktor aus der Summation herausgezogen werden.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("summation_def")
            self.play(Write(summation_def))
            
            self.wait_until_bookmark("summation_prop_add")
            self.play(Write(summation_prop_add))
            
            self.wait_until_bookmark("summation_prop_scalar")
            self.play(Write(summation_prop_scalar))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class calc_1_14(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Geometrische Summe")
        self.add(title)

        # MathTex objects for the geometric sum and its properties
        geometric_sum_def = MathTex(r"\sum_{k=0}^{n} x^k = 1 + x + x^2 + \ldots + x^n", color=c1t, font_size=fs3).next_to(title, DOWN, buff=0.4)
        geometric_sum_formula = MathTex(r"S = \frac{n + 1}{1 - x}", r"\text{, falls } x = 1", color=c1t, font_size=fs3).next_to(geometric_sum_def, DOWN, buff=0.4)
        geometric_sum_general = MathTex(r"S = \frac{1 - x^{n+1}}{1 - x}", r"\text{, falls } x \neq 1", color=c1t, font_size=fs3).next_to(geometric_sum_formula, DOWN, buff=0.4)

        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        <bookmark mark="geometric_sum_def"/> Lassen Sie uns die geometrische Summe betrachten, eine wichtige mathematische Reihe. Sie ist definiert als die Summe von x hoch k von k gleich null bis n.
        ...Wir können die Summe auch als folgende Formel schreiben.
        <bookmark mark="geometric_sum_formula"/> Wenn x gleich eins ist, dann ist die Summe einfach die Anzahl der Terme plus eins.
        ...
        <bookmark mark="geometric_sum_general"/> Für alle anderen Werte von x erhalten wir eine allgemeine Formel zur Berechnung der geometrischen Summe.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("geometric_sum_def")
            self.play(Write(geometric_sum_def))
            
            self.wait_until_bookmark("geometric_sum_formula")
            self.play(Write(geometric_sum_formula))
            
            self.wait_until_bookmark("geometric_sum_general")
            self.play(Write(geometric_sum_general))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class calc_1_15(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Produktzeichen und Fakultät")
        self.add(title)

        # MathTex objects for the product notation, factorial, and their properties
        product_notation_def = MathTex(r"\prod_{k=m}^{n} x_k := x_m \cdot x_{m+1} \cdot \ldots \cdot x_{n-1} \cdot x_n", color=c1t, font_size=fs3).next_to(title, DOWN, buff=0.4)
        product_notation_special = MathTex(r"\text{Falls } n < m, \text{ definiert man } \prod_{k=m}^{n} x_k := 1", color=c1t, font_size=fs3).next_to(product_notation_def, DOWN, buff=0.4)
        factorial_def = MathTex(r"n! := 1 \cdot 2 \cdot \ldots \cdot n = \prod_{k=1}^{n} k", color=c1t, font_size=fs3).next_to(product_notation_special, DOWN, buff=0.4)
        
        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        <bookmark mark="product_notation_def"/> Jetzt wenden wir uns dem Produktzeichen zu, das ähnlich wie das Summenzeichen verwendet wird.
        ...
        <bookmark mark="product_notation_special"/> Falls n kleiner als m ist, so wird das Produkt der x_k als eins definiert.
        ...
        <bookmark mark="factorial_def"/> Wir definieren n Fakultät als das Produkt der ersten n natürlichen Zahlen.
        ...
        <bookmark mark="factorial_interpretation"/> Diese Fakultät kann interpretiert werden als die Anzahl der Permutationen von n Elementen.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("product_notation_def")
            self.play(Write(product_notation_def))
            
            self.wait_until_bookmark("product_notation_special")
            self.play(Write(product_notation_special))
            
            self.wait_until_bookmark("factorial_def")
            self.play(Write(factorial_def))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class calc_1_16(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Binomialkoeffizienten")
        self.add(title)

        # MathTex objects for the binomial coefficients and their properties
        binomial_coefficient_def = MathTex(
            r"\binom{n}{k}", r":=", r"\frac{n(n-1)\cdots(n-k+1)}{1\cdot2\cdots k}", 
            color=c1t, font_size=fs3
        ).next_to(title, DOWN, buff=0.4)
        binomial_coefficient_special_cases = MathTex(
            r"\binom{n}{0}", r":= 1", r",\ \binom{n}{n}", r":= 1\\", 
            r",\ \text{und}", r"\binom{n}{k}", r":= 0", r",\ \text{falls } k > n", 
            color=c1t, font_size=fs3
        ).next_to(binomial_coefficient_def, DOWN, buff=0.4)
        binomial_coefficient_formula = MathTex(
            r"\binom{n}{k}", r"=", r"\frac{n!}{k!(n-k)!}", r"=", r"\binom{n}{n-k}", 
            color=c1t, font_size=fs3
        ).next_to(binomial_coefficient_special_cases, DOWN, buff=0.4)

        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        <bookmark mark="binomial_coefficient_def"/> Jetzt schauen wir uns die Binomialkoeffizienten an, die in der Kombinatorik eine zentrale Rolle spielen.
        ...
        Es gibt einige spezielle Fälle...
        <bookmark mark="binomial_coefficient_special_cases"/>Wenn k null oder n ist, sind die Werte der Binomialkoeffizienten eins. Und wenn k größer als n ist, dann ist der Wert null.
        ...
        <bookmark mark="binomial_coefficient_formula"/> Die allgemeine Formel für Binomialkoeffizienten lautet: n Fakultät geteilt durch k Fakultät mal (n minus k) Fakultät.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("binomial_coefficient_def")
            self.play(Write(binomial_coefficient_def))
            
            self.wait_until_bookmark("binomial_coefficient_special_cases")
            self.play(Write(binomial_coefficient_special_cases))
            
            self.wait_until_bookmark("binomial_coefficient_formula")
            self.play(Write(binomial_coefficient_formula))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class calc_1_17(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Induktion")
        self.add(title)

        # MathTex objects for the principle of mathematical induction
        induction_principle = MathTex(
            "A(0)", r"\text{ (Induktionsanfang, Verankerung)},\\",
            r"\text{ und gilt }", "A(n) \Rightarrow A(n+1)", 
            r"\text{ (Induktionsschluss)},\\",
            r"\text{ so gilt }", "A(n)", r"\text{ für alle } n \in \mathbb{N}.",
            color=c1t, font_size=fs3
        ).next_to(title, DOWN, buff=0.4)

        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        <bookmark mark="induction_principle"/> Betrachten wir das Prinzip der vollständigen Induktion, ein grundlegendes Konzept in der Mathematik.
        ...
        <bookmark mark="induction_explanation"/> Es beginnt mit dem Nachweis, dass eine Aussage für den Startfall, oft n gleich Null, wahr ist. Wenn wir dann zeigen können, dass aus der Richtigkeit der Aussage für eine beliebige natürliche Zahl n auch die Richtigkeit für die nächste Zahl folgt, dann gilt die Aussage für alle natürlichen Zahlen.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("induction_principle")
            self.play(Write(induction_principle))
            
        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class calc_1_18(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Induktion und Permutationen")
        self.add(title)

        # MathTex objects for the induction principle and permutation
        induction_start = MathTex(r"A(1) \text{ ist wahr}", color=c1t, font_size=fs3).next_to(title, DOWN, buff=0.4)
        induction_step = MathTex(r"A(n) \Rightarrow A(n+1)", color=c1t, font_size=fs3).next_to(induction_start, DOWN, buff=0.4)
        permutation_formula = MathTex(r"(n+1)! = (n+1) \cdot n!", color=c1t, font_size=fs3).next_to(induction_step, DOWN, buff=0.4)

        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        Betrachten wir einen Induktionsbeweis, der zeigt, dass die Anzahl der Permutationen von n Elementen n! beträgt.<bookmark mark="induction_start"/>
        ...
        Zuerst stellen wir fest, dass die Aussage für 1 Element wahr ist. Denn es gibt nur eine Permutation von einem Element.
        Dann nehmen wir an, dass die Aussage für eine Zahl n wahr ist.
        ...
        <bookmark mark="induction_step"/> Unter dieser Annahme zeigen wir, dass sie auch für n+1 wahr ist.
        <bookmark mark="permutation_formula"/>Für jede Permutation der n Elemente gibt es n+1 Möglichkeiten, das (n+1)-te Element einzufügen, was zu (n+1) mal n! Permutationen führt. Also ist die Aussage auch für n+1 wahr, wenn sie für n wahr ist.
        Damit ist die Aussage für alle natürlichen Zahlen wahr.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("induction_start")
            self.play(Write(induction_start))
            
            self.wait_until_bookmark("induction_step")
            self.play(Write(induction_step))
            
            self.wait_until_bookmark("permutation_formula")
            self.play(Write(permutation_formula))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class calc_1_19(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Ganze Zahlen")
        self.add(title)

        # MathTex objects for the properties of integers
        integers_set = MathTex(r"\mathbb{Z} = \{0, +1, -1, +2, -2, +3, -3, \ldots\}", color=c1t, font_size=fs3).next_to(title, DOWN, buff=0.4)

        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        <bookmark mark="integers_set"/> Wir beginnen mit einer Betrachtung der ganzen Zahlen, welche die natürlichen Zahlen erweitern und uneingeschränkte Subtraktion ermöglichen.
        ...
        <bookmark mark="subtraction_restriction"/> Während in der Menge der natürlichen Zahlen Subtraktion und Division eingeschränkt sind, erlauben ganze Zahlen Subtraktion ohne Einschränkung.
        ...
        <bookmark mark="division_restriction"/> Die Einschränkung bei der Division führt zu wichtigen Konzepten in der Zahlentheorie, einschließlich der Theorie der Primzahlen und ihrer Anwendung in der Kryptographie.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("integers_set")
            self.play(Write(integers_set))
            

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class calc_1_20(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Rationale Zahlen")
        self.add(title)

        # MathTex objects for the properties of rational numbers
        rational_numbers_set = MathTex(
            r"\mathbb{Q} = \left\{ \frac{a}{b} \middle| a, b \in \mathbb{Z}, b > 0 \right\}",
            color=c1t, font_size=fs3
        ).next_to(title, DOWN, buff=0.4)


        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        <bookmark mark="rational_numbers_set"/> Wir betrachten die Menge der rationalen Zahlen, die aus allen gekürzten Brüchen ganzer Zahlen besteht.
        ...
        <bookmark mark="operations_restriction"/> Diese Zahlen erlauben uneingeschränkte Grundoperationen der Mathematik und folgen den vertrauten Rechengesetzen, was sie zu einem Körper macht, anders als die Mengen der natürlichen oder ganzen Zahlen.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("rational_numbers_set")
            self.play(Write(rational_numbers_set))
            


        # Wait for 4 seconds at the end of the animation
        self.wait(4)



class calc_1_21(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Ungleichungen")
        self.add(title)

        # MathTex objects for the properties of inequalities
        inequality_definition = MathTex(
            r"\text{Für } a < b \text{ schreibt man auch } b > a \text{ und } a \leq b \text{ für } a < b \text{ oder } a = b.",
            color=c1t, font_size=fs3
        ).next_to(title, DOWN, buff=0.4)
        inequality_axioms = MathTex(
            r"x < y \text{ und } y < z \Rightarrow x < z", r"\\",
            r"x < y \text{ und } a < b \Rightarrow x + a < y + b", r"\\",
            r"x < y \text{ und } 0 < a \Rightarrow ax < ay",
            color=c1t, font_size=fs3
        ).next_to(inequality_definition, DOWN, buff=0.4)

        # Voiceover text with bookmarks and explicit content reading
        voiceover_text = """
        <bookmark mark="inequality_definition"/> Wir beginnen mit einer Betrachtung der Ungleichungen, die eine Ordnungsrelation zwischen Zahlen darstellen.
        ...
        <bookmark mark="inequality_axioms"/> Für Ungleichungen gelten bestimmte grundlegende Rechenregeln, die als Axiome bekannt sind, und die es uns erlauben, andere Ungleichungen herzuleiten.
        """

        # Action Sequence
        with self.voiceover(text=voiceover_text):
            self.wait_until_bookmark("inequality_definition")
            self.play(Write(inequality_definition))
            
            self.wait_until_bookmark("inequality_axioms")
            self.play(Write(inequality_axioms))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)
