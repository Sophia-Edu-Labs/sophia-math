# 5_2: Power Functions: n-th root

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


#####################################
#####################################
TASK_Func_5_2_I_1_q = SophiaTaskDefinition(
    answerOptions = ["$\sqrt{2}$", "$2$", "$4$", "24"],
    correctAnswerIndex = 1,
    questionText = "What is $\sqrt[3]{8}$?"
)
class Func_5_2_I_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("n-th Roots")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        root_general = MathTex("\\sqrt{x}","\\cdot","\\sqrt{x}","=", "x", color=c1t, font_size = fs1).shift(UP*2)
        root_four = MathTex("\\sqrt{4}","=", "2", color=c1t, font_size = fs1).next_to(root_general, DOWN, buff=0.4)
        root_nine = MathTex("\\sqrt{9}","=", "3", color=c1t, font_size = fs1).next_to(root_four, DOWN, buff=0.4)
        root_general_2 = MathTex("\\sqrt[2]{x}","\\cdot","\\sqrt[2]{x}","=", "x", color=c1t, font_size = fs1).shift(UP*2)
        root_four_2 = MathTex("\\sqrt[2]{4}","=", "2", color=c1t, font_size = fs1).next_to(root_general, DOWN, buff=0.4)
        root_nine_2 = MathTex("\\sqrt[2]{9}","=", "3", color=c1t, font_size = fs1).next_to(root_four, DOWN, buff=0.4)

        root_general_3 = MathTex("\\sqrt[3]{x}","\\cdot","\\sqrt[3]{x}","\\cdot","\\sqrt[3]{x}","=", "x", color=c1t, font_size = fs1).next_to(root_nine_2, DOWN, buff=1.2)
        root_four_3 = MathTex("\\sqrt[2]{8}","=", "?", color=c1t, font_size = fs1).next_to(root_general_3, DOWN, buff=0.4)


        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]


        # Action Sequence
        with self.voiceover(
                text="""
                Remember the concept of a square root?
                The square root of a number x is the number that you have to multiply by itself to get x.
                So <bookmark mark="rootx1"/>the square root of x times<bookmark mark="rootx2"/> the square
                root of x is equal<bookmark mark="rootx3"/> to x.

                For example, the square root of <bookmark mark="root4"/>four is two, because two times two is four.
                And the square root of <bookmark mark="root9"/>nine is three, because three times three is nine.
                
                The reason we call square roots square roots is because we want to know what number we have to
                square to get the number under the root, so the number we have to multiply by itself two times.
                The concept of the square is often signified by <bookmark mark="2root"/>writing a two on the
                left side of the root symbol. And again, the two means that we're looking for the number that
                we have to multiply by itself two times to get the number under the root. <bookmark mark="deco"/>

                Now that there are square roots, you might be wondering if there are also other roots, and the
                answer is yes. For example, there's cube roots, which are the numbers that you have to multiply
                by itself three times to get the number under the root. So <bookmark mark="Crootx1"/>the cube
                root of x times<bookmark mark="Crootx2"/> the cube root of x times <bookmark mark="Crootx3"/>
                the cube root of x is <bookmark mark="Crootx4"/>equal to x. 
                
                Following that pattern, <bookmark mark="q"/>can you tell me what the cube root of eight is?
                """
        ) as tracker:

            self.wait_until_bookmark("rootx1")
            cursor.blinking=False
            x,y,_ = root_general[0].get_center()+0.4*DOWN
            self.play(Write(root_general), CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("rootx2")
            x,y,_ = root_general[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("rootx3")
            x,y,_ = root_general[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("root4")
            cursor.blinking=False
            x,y,_ = root_four.get_center()+0.4*DOWN
            self.play(Write(root_four), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True
            
            self.wait_until_bookmark("root9")
            cursor.blinking=False
            x,y,_ = root_nine.get_center()+0.4*DOWN
            self.play(Write(root_nine), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("2root")
            self.play(TransformMatchingTex(root_general, root_general_2), TransformMatchingTex(root_four, root_four_2), TransformMatchingTex(root_nine, root_nine_2), run_time=2)

            self.wait_until_bookmark("deco")
            self.draw_decorative_line(cursor, 0.6, run_time=4)

            self.wait_until_bookmark("Crootx1")
            cursor.blinking=False
            x,y,_ = root_general_3[0].get_center()+0.4*DOWN
            self.play(Write(root_general_3), CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("Crootx2")
            x,y,_ = root_general_3[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("Crootx3")
            x,y,_ = root_general_3[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("Crootx4")
            x,y,_ = root_general_3[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("q")
            cursor.blinking=False
            x,y,_ = root_four_3.get_center()+0.4*DOWN
            self.play(Write(root_four_3), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_5_2_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("n-th Roots")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        root_eight = MathTex("\\sqrt[3]{8}","=", "?", color=c1t, font_size = fs1).shift(UP*1.2)
        cube2 = MathTex("2", "\\cdot", "2", "\\cdot", "2", "=", "2^3", "=", "8", color=c1t, font_size = fs1).next_to(root_eight, DOWN, buff=0.4)
        sol = MathTex("\\Rightarrow", "\\sqrt[3]{8}","=", "2", color=c1t, font_size = fs1).next_to(cube2, DOWN, buff=0.4)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]


        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not it.
                We're <bookmark mark="intro"/>looking for the cube root of 8, also known as the third root of 8.
                That means, we're looking for the number that we can cube, or multiply by itself three times to get 8.
                You can easily <bookmark mark="two1"/>check that 2 <bookmark mark="two2"/>times 2
                <bookmark mark="two3"/>times 2, or <bookmark mark="twoCubed"/>2 to the power of 3<bookmark mark="eight"/>
                equals 8.
                Therefore, <bookmark mark="sol"/>the cube root of 8 <bookmark mark="sol2"/>is 2.
                """
        ) as tracker:
            
            self.wait_until_bookmark("intro")
            cursor.blinking=False
            x,y,_ = root_eight.get_center()+0.4*DOWN
            self.play(Write(root_eight), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("two1")
            cursor.blinking=False
            x,y,_ = cube2[0].get_center()+0.4*DOWN
            self.play(Write(cube2), CursorMoveTo(cursor, x,y), run_time=0.3)

            self.wait_until_bookmark("two2")
            x,y,_ = cube2[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.3)

            self.wait_until_bookmark("two3")
            x,y,_ = cube2[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.3)

            self.wait_until_bookmark("twoCubed")
            x,y,_ = cube2[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            
            self.wait_until_bookmark("eight")
            x,y,_ = cube2[8].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.blinking=False

            self.wait_until_bookmark("sol")
            x,y,_ = sol.get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("sol2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.blinking=True
        
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_5_2_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("n-th Roots")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        root_eight = MathTex("\\sqrt[3]{8}","=", "?", color=c1t, font_size = fs1).shift(UP*1.2)
        cube2 = MathTex("2", "\\cdot", "2", "\\cdot", "2", "=", "2^3", "=", "8", color=c1t, font_size = fs1).next_to(root_eight, DOWN, buff=0.4)
        sol = MathTex("\\Rightarrow", "\\sqrt[3]{8}","=", "2", color=c1t, font_size = fs1).next_to(cube2, DOWN, buff=0.4)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]


        # Action Sequence
        with self.voiceover(
                text="""
                Nice, you got it!
                We're <bookmark mark="intro"/>looking for the cube root of 8, also known as the third root of 8.
                That means, we're looking for the number that we can cube, or multiply by itself three times to get 8.
                You can easily <bookmark mark="two1"/>check that 2 <bookmark mark="two2"/>times 2
                <bookmark mark="two3"/>times 2, or <bookmark mark="twoCubed"/>2 to the power of 3<bookmark mark="eight"/>
                equals 8.
                Therefore, <bookmark mark="sol"/>the cube root of 8 <bookmark mark="sol2"/>is 2.
                """
        ) as tracker:
            
            self.wait_until_bookmark("intro")
            cursor.blinking=False
            x,y,_ = root_eight.get_center()+0.4*DOWN
            self.play(Write(root_eight), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("two1")
            cursor.blinking=False
            x,y,_ = cube2[0].get_center()+0.4*DOWN
            self.play(Write(cube2), CursorMoveTo(cursor, x,y), run_time=0.3)

            self.wait_until_bookmark("two2")
            x,y,_ = cube2[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.3)

            self.wait_until_bookmark("two3")
            x,y,_ = cube2[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.3)

            self.wait_until_bookmark("twoCubed")
            x,y,_ = cube2[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            
            self.wait_until_bookmark("eight")
            x,y,_ = cube2[8].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.blinking=False

            self.wait_until_bookmark("sol")
            x,y,_ = sol.get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("sol2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.blinking=True
        
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_5_2_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("n-th Roots")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        root_eight = MathTex("\\sqrt[3]{8}","=", "?", color=c1t, font_size = fs1).shift(UP*1.2)
        cube2 = MathTex("2", "\\cdot", "2", "\\cdot", "2", "=", "2^3", "=", "8", color=c1t, font_size = fs1).next_to(root_eight, DOWN, buff=0.4)
        sol = MathTex("\\Rightarrow", "\\sqrt[3]{8}","=", "2", color=c1t, font_size = fs1).next_to(cube2, DOWN, buff=0.4)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]


        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not it.
                We're <bookmark mark="intro"/>looking for the cube root of 8, also known as the third root of 8.
                That means, we're looking for the number that we can cube, or multiply by itself three times to get 8.
                You can easily <bookmark mark="two1"/>check that 2 <bookmark mark="two2"/>times 2
                <bookmark mark="two3"/>times 2, or <bookmark mark="twoCubed"/>2 to the power of 3<bookmark mark="eight"/>
                equals 8.
                Therefore, <bookmark mark="sol"/>the cube root of 8 <bookmark mark="sol2"/>is 2.
                """
        ) as tracker:
            
            self.wait_until_bookmark("intro")
            cursor.blinking=False
            x,y,_ = root_eight.get_center()+0.4*DOWN
            self.play(Write(root_eight), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("two1")
            cursor.blinking=False
            x,y,_ = cube2[0].get_center()+0.4*DOWN
            self.play(Write(cube2), CursorMoveTo(cursor, x,y), run_time=0.3)

            self.wait_until_bookmark("two2")
            x,y,_ = cube2[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.3)

            self.wait_until_bookmark("two3")
            x,y,_ = cube2[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.3)

            self.wait_until_bookmark("twoCubed")
            x,y,_ = cube2[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            
            self.wait_until_bookmark("eight")
            x,y,_ = cube2[8].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.blinking=False

            self.wait_until_bookmark("sol")
            x,y,_ = sol.get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("sol2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.blinking=True
        
        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_5_2_I_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("n-th Roots")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        root_eight = MathTex("\\sqrt[3]{8}","=", "?", color=c1t, font_size = fs1).shift(UP*1.2)
        cube2 = MathTex("2", "\\cdot", "2", "\\cdot", "2", "=", "2^3", "=", "8", color=c1t, font_size = fs1).next_to(root_eight, DOWN, buff=0.4)
        sol = MathTex("\\Rightarrow", "\\sqrt[3]{8}","=", "2", color=c1t, font_size = fs1).next_to(cube2, DOWN, buff=0.4)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]


        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not it.
                We're <bookmark mark="intro"/>looking for the cube root of 8, also known as the third root of 8.
                That means, we're looking for the number that we can cube, or multiply by itself three times to get 8.
                You can easily <bookmark mark="two1"/>check that 2 <bookmark mark="two2"/>times 2
                <bookmark mark="two3"/>times 2, or <bookmark mark="twoCubed"/>2 to the power of 3<bookmark mark="eight"/>
                equals 8.
                Therefore, <bookmark mark="sol"/>the cube root of 8 <bookmark mark="sol2"/>is 2.
                """
        ) as tracker:
            
            self.wait_until_bookmark("intro")
            cursor.blinking=False
            x,y,_ = root_eight.get_center()+0.4*DOWN
            self.play(Write(root_eight), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("two1")
            cursor.blinking=False
            x,y,_ = cube2[0].get_center()+0.4*DOWN
            self.play(Write(cube2), CursorMoveTo(cursor, x,y), run_time=0.3)

            self.wait_until_bookmark("two2")
            x,y,_ = cube2[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.3)

            self.wait_until_bookmark("two3")
            x,y,_ = cube2[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.3)

            self.wait_until_bookmark("twoCubed")
            x,y,_ = cube2[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            
            self.wait_until_bookmark("eight")
            x,y,_ = cube2[8].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.blinking=False

            self.wait_until_bookmark("sol")
            x,y,_ = sol.get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("sol2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.blinking=True
        
        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
TASK_Func_5_2_I_2_q = SophiaTaskDefinition(
    answerOptions = ["$4$", "$-2$", "$\{-2,2\}$", "$2$"],
    correctAnswerIndex = 2,
    questionText = "What is $\sqrt[4]{16}$?"
)
class Func_5_2_I_2_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("n-th Roots")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        root_general_2 = MathTex("\\sqrt[2]{x}","\\cdot","\\sqrt[2]{x}","=", "x", color=c1t, font_size = fs1).shift(UP)
        root_general_3 = MathTex("\\sqrt[3]{x}","\\cdot","\\sqrt[3]{x}","\\cdot","\\sqrt[3]{x}","=", "x", color=c1t, font_size = fs1).next_to(root_general_2, DOWN, buff=0.2)
        root_general_4 = MathTex("\\sqrt[3]{x}","\\cdot","\\sqrt[3]{x}","\\cdot","\\sqrt[3]{x}","\\cdot","\\sqrt[3]{x}","=", "x", color=c1t, font_size = fs1).next_to(root_general_3, DOWN, buff=0.2)
        dots = MathTex("\\hdots", color=c1t, font_size=fs1).next_to(root_general_4, DOWN, buff=0.1)
        root_general_n = MathTex("\\sqrt[n]{x}","\\cdot", "\\overset{\\text{n times}}{\\hdots}","\\cdot", "\\sqrt[n]{x}", "=", "x", color=c1t, font_size = fs2).next_to(dots, DOWN, buff=0.2)
        root_four_4 = MathTex("\\sqrt[4]{16}","=", "?", color=c1t, font_size = fs1).next_to(root_general_n, DOWN, buff=0.4)


        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]


        # Action Sequence
        with self.voiceover(
                text="""
                Square roots or second roots are the numbers that you have to multiply by itself two times to get the number under the root.
                <bookmark mark="cube"/>Cube roots or third roots are the numbers that you have to multiply by itself three times to get the
                number under the root.
                And so <bookmark mark="dots"/>it continues for any number, so the fourth root of a number is the number that you have to
                multiply by itself 4 times to get the number under the root, the fifth root of a number is the number that you have to
                multiply by itself 5 times to get the number under the root, and so on. So <bookmark mark="n"/>the nth root of a number is
                the number that you have to multiply by itself n times to get the number under the root.

                Now, with that in mind, <bookmark mark="q"/>can you tell me what the fourth root of 16 is?
                """
        ) as tracker:
            
            cursor.blinking=False
            x,y,_ = root_general_2.get_center()+0.4*DOWN
            self.play(Write(root_general_2), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("cube")
            cursor.blinking=False
            x,y,_ = root_general_3.get_center()+0.4*DOWN
            self.play(Write(root_general_3), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("dots")
            cursor.blinking=False
            x,y,_ = dots.get_center()+0.4*DOWN
            self.play(Write(dots), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("n")
            cursor.blinking=False
            x,y,_ = root_general_n.get_center()+0.4*DOWN
            self.play(Write(root_general_n), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("q")
            cursor.blinking=False
            x,y,_ = root_four_4.get_center()+0.4*DOWN
            self.play(Write(root_four_4), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_5_2_I_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("n-th Roots")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        root_four_4 = MathTex("\\sqrt[4]{16}","=", "?", color=c1t, font_size = fs1).shift(UP)
        root_four_two = MathTex("2", "\\cdot", "2", "\\cdot", "2", "\\cdot", "2", "=", "16", color=c1t, font_size = fs2)
        sol_1 = MathTex("\\Rightarrow", "\\sqrt[4]{16}","=", "2", color=c1t, font_size = fs2)
        root_four_negtwo = MathTex("-2", "\\cdot", "-2", "\\cdot", "-2", "\\cdot", "-2", "=", "16", color=c1t, font_size = fs2)
        sol_2 = MathTex("\\Rightarrow", "\\sqrt[4]{16}","=", "\\{-2,","2\\}", color=c1t, font_size = fs2)
        sols = VGroup(root_four_two, sol_1, root_four_negtwo, sol_2).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(root_four_4, DOWN, buff=0.4)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]


        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right.
                We're looking <bookmark mark="root4"/>for the fourth root of sixteen, so we're looking for the number that we can multiply by itself
                four times to get 16.
                You can easily check, that if you multiply <bookmark mark="rootTwo"/>two by itself four times, you get 16. So <bookmark mark="two1"/>
                since two <bookmark mark="two2"/>times two<bookmark mark="two3"/> times two<bookmark mark="two4"/> times two <bookmark mark="sxtn1"/>
                equals 16, <bookmark mark="sol"/>the fourth root of 16 <bookmark mark="sol2"/>is 2.
                You can also <bookmark  mark="rootNegTwo"/> check that if you multiply -2 by itself four times, you also get 16.
                So <bookmark mark="negTwo1"/> since negative 2 <bookmark mark="negTwo2"/>times negative 2<bookmark mark="negTwo3"/> times negative 2
                <bookmark mark="negTwo4"/> times negative 2 <bookmark mark="sxtn2"/> equals 16, <bookmark mark="sol3"/>the fourth root of 16
                <bookmark mark="sol4"/>is either negative 2 or <bookmark mark="sol5"/>2.
                """
        ) as tracker:
            
            self.wait_until_bookmark("root4")
            cursor.blinking=False
            x,y,_ = root_four_4.get_center()+0.4*DOWN
            self.play(Write(root_four_4), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("rootTwo")
            cursor.blinking=False
            x,y,_ = root_four_two.get_center()+0.4*DOWN
            self.play(Write(root_four_two), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("two1")
            cursor.blinking=False
            x,y,_ = root_four_two[0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("two2")
            x,y,_ = root_four_two[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("two3")
            x,y,_ = root_four_two[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("two4")
            x,y,_ = root_four_two[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sxtn1")
            x,y,_ = root_four_two[8].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sol")
            x,y,_ = sol_1.get_center()+0.4*DOWN
            self.play(Write(sol_1), CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("sol2")
            x,y,_ = sol_1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("rootNegTwo")
            cursor.blinking=False
            x,y,_ = root_four_negtwo.get_center()+0.4*DOWN
            self.play(Write(root_four_negtwo), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("negTwo1")
            cursor.blinking=False
            x,y,_ = root_four_negtwo[0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negTwo2")
            x,y,_ = root_four_negtwo[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negTwo3")
            x,y,_ = root_four_negtwo[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negTwo4")
            x,y,_ = root_four_negtwo[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sxtn2")
            x,y,_ = root_four_negtwo[8].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sol3")
            x,y,_ = sol_2[1].get_center()+0.4*DOWN
            self.play(Write(sol_2), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sol4")
            x,y,_ = sol_2[-2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sol5")
            x,y,_ = sol_2[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_5_2_I_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("n-th Roots")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        root_four_4 = MathTex("\\sqrt[4]{16}","=", "?", color=c1t, font_size = fs1).shift(UP)
        root_four_two = MathTex("2", "\\cdot", "2", "\\cdot", "2", "\\cdot", "2", "=", "16", color=c1t, font_size = fs2)
        sol_1 = MathTex("\\Rightarrow", "\\sqrt[4]{16}","=", "2", color=c1t, font_size = fs2)
        root_four_negtwo = MathTex("-2", "\\cdot", "-2", "\\cdot", "-2", "\\cdot", "-2", "=", "16", color=c1t, font_size = fs2)
        sol_2 = MathTex("\\Rightarrow", "\\sqrt[4]{16}","=", "\\{-2,","2\\}", color=c1t, font_size = fs2)
        sols = VGroup(root_four_two, sol_1, root_four_negtwo, sol_2).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(root_four_4, DOWN, buff=0.4)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]


        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right.
                We're looking <bookmark mark="root4"/>for the fourth root of sixteen, so we're looking for the number that we can multiply by itself
                four times to get 16.
                You can easily check, that if you multiply <bookmark mark="rootTwo"/>two by itself four times, you get 16. So <bookmark mark="two1"/>
                since two <bookmark mark="two2"/>times two<bookmark mark="two3"/> times two<bookmark mark="two4"/> times two <bookmark mark="sxtn1"/>
                equals 16, <bookmark mark="sol"/>the fourth root of 16 <bookmark mark="sol2"/>is 2.
                You can also <bookmark  mark="rootNegTwo"/> check that if you multiply -2 by itself four times, you also get 16.
                So <bookmark mark="negTwo1"/> since negative 2 <bookmark mark="negTwo2"/>times negative 2<bookmark mark="negTwo3"/> times negative 2
                <bookmark mark="negTwo4"/> times negative 2 <bookmark mark="sxtn2"/> equals 16, <bookmark mark="sol3"/>the fourth root of 16
                <bookmark mark="sol4"/>is either negative 2 or <bookmark mark="sol5"/>2.
                """
        ) as tracker:
            
            self.wait_until_bookmark("root4")
            cursor.blinking=False
            x,y,_ = root_four_4.get_center()+0.4*DOWN
            self.play(Write(root_four_4), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("rootTwo")
            cursor.blinking=False
            x,y,_ = root_four_two.get_center()+0.4*DOWN
            self.play(Write(root_four_two), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("two1")
            cursor.blinking=False
            x,y,_ = root_four_two[0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("two2")
            x,y,_ = root_four_two[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("two3")
            x,y,_ = root_four_two[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("two4")
            x,y,_ = root_four_two[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sxtn1")
            x,y,_ = root_four_two[8].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sol")
            x,y,_ = sol_1.get_center()+0.4*DOWN
            self.play(Write(sol_1), CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("sol2")
            x,y,_ = sol_1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("rootNegTwo")
            cursor.blinking=False
            x,y,_ = root_four_negtwo.get_center()+0.4*DOWN
            self.play(Write(root_four_negtwo), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("negTwo1")
            cursor.blinking=False
            x,y,_ = root_four_negtwo[0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negTwo2")
            x,y,_ = root_four_negtwo[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negTwo3")
            x,y,_ = root_four_negtwo[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negTwo4")
            x,y,_ = root_four_negtwo[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sxtn2")
            x,y,_ = root_four_negtwo[8].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sol3")
            x,y,_ = sol_2[1].get_center()+0.4*DOWN
            self.play(Write(sol_2), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sol4")
            x,y,_ = sol_2[-2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sol5")
            x,y,_ = sol_2[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_5_2_I_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("n-th Roots")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        root_four_4 = MathTex("\\sqrt[4]{16}","=", "?", color=c1t, font_size = fs1).shift(UP)
        root_four_two = MathTex("2", "\\cdot", "2", "\\cdot", "2", "\\cdot", "2", "=", "16", color=c1t, font_size = fs2)
        sol_1 = MathTex("\\Rightarrow", "\\sqrt[4]{16}","=", "2", color=c1t, font_size = fs2)
        root_four_negtwo = MathTex("-2", "\\cdot", "-2", "\\cdot", "-2", "\\cdot", "-2", "=", "16", color=c1t, font_size = fs2)
        sol_2 = MathTex("\\Rightarrow", "\\sqrt[4]{16}","=", "\\{-2,","2\\}", color=c1t, font_size = fs2)
        sols = VGroup(root_four_two, sol_1, root_four_negtwo, sol_2).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(root_four_4, DOWN, buff=0.4)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]


        # Action Sequence
        with self.voiceover(
                text="""
                Yes, that's correct, well done.
                We're looking <bookmark mark="root4"/>for the fourth root of sixteen, so we're looking for the number that we can multiply by itself
                four times to get 16.
                You can easily check, that if you multiply <bookmark mark="rootTwo"/>two by itself four times, you get 16. So <bookmark mark="two1"/>
                since two <bookmark mark="two2"/>times two<bookmark mark="two3"/> times two<bookmark mark="two4"/> times two <bookmark mark="sxtn1"/>
                equals 16, <bookmark mark="sol"/>the fourth root of 16 <bookmark mark="sol2"/>is 2.
                You can also <bookmark  mark="rootNegTwo"/> check that if you multiply -2 by itself four times, you also get 16.
                So <bookmark mark="negTwo1"/> since negative 2 <bookmark mark="negTwo2"/>times negative 2<bookmark mark="negTwo3"/> times negative 2
                <bookmark mark="negTwo4"/> times negative 2 <bookmark mark="sxtn2"/> equals 16, <bookmark mark="sol3"/>the fourth root of 16
                <bookmark mark="sol4"/>is either negative 2 or <bookmark mark="sol5"/>2.
                """
        ) as tracker:
            
            self.wait_until_bookmark("root4")
            cursor.blinking=False
            x,y,_ = root_four_4.get_center()+0.4*DOWN
            self.play(Write(root_four_4), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("rootTwo")
            cursor.blinking=False
            x,y,_ = root_four_two.get_center()+0.4*DOWN
            self.play(Write(root_four_two), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("two1")
            cursor.blinking=False
            x,y,_ = root_four_two[0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("two2")
            x,y,_ = root_four_two[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("two3")
            x,y,_ = root_four_two[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("two4")
            x,y,_ = root_four_two[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sxtn1")
            x,y,_ = root_four_two[8].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sol")
            x,y,_ = sol_1.get_center()+0.4*DOWN
            self.play(Write(sol_1), CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("sol2")
            x,y,_ = sol_1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("rootNegTwo")
            cursor.blinking=False
            x,y,_ = root_four_negtwo.get_center()+0.4*DOWN
            self.play(Write(root_four_negtwo), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("negTwo1")
            cursor.blinking=False
            x,y,_ = root_four_negtwo[0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negTwo2")
            x,y,_ = root_four_negtwo[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negTwo3")
            x,y,_ = root_four_negtwo[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negTwo4")
            x,y,_ = root_four_negtwo[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sxtn2")
            x,y,_ = root_four_negtwo[8].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sol3")
            x,y,_ = sol_2[1].get_center()+0.4*DOWN
            self.play(Write(sol_2), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sol4")
            x,y,_ = sol_2[-2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sol5")
            x,y,_ = sol_2[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_5_2_I_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("n-th Roots")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        root_four_4 = MathTex("\\sqrt[4]{16}","=", "?", color=c1t, font_size = fs1).shift(UP)
        root_four_two = MathTex("2", "\\cdot", "2", "\\cdot", "2", "\\cdot", "2", "=", "16", color=c1t, font_size = fs2)
        sol_1 = MathTex("\\Rightarrow", "\\sqrt[4]{16}","=", "2", color=c1t, font_size = fs2)
        root_four_negtwo = MathTex("-2", "\\cdot", "-2", "\\cdot", "-2", "\\cdot", "-2", "=", "16", color=c1t, font_size = fs2)
        sol_2 = MathTex("\\Rightarrow", "\\sqrt[4]{16}","=", "\\{-2,","2\\}", color=c1t, font_size = fs2)
        sols = VGroup(root_four_two, sol_1, root_four_negtwo, sol_2).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(root_four_4, DOWN, buff=0.4)

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]


        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right.
                We're looking <bookmark mark="root4"/>for the fourth root of sixteen, so we're looking for the number that we can multiply by itself
                four times to get 16.
                You can easily check, that if you multiply <bookmark mark="rootTwo"/>two by itself four times, you get 16. So <bookmark mark="two1"/>
                since two <bookmark mark="two2"/>times two<bookmark mark="two3"/> times two<bookmark mark="two4"/> times two <bookmark mark="sxtn1"/>
                equals 16, <bookmark mark="sol"/>the fourth root of 16 <bookmark mark="sol2"/>is 2.
                You can also <bookmark  mark="rootNegTwo"/> check that if you multiply -2 by itself four times, you also get 16.
                So <bookmark mark="negTwo1"/> since negative 2 <bookmark mark="negTwo2"/>times negative 2<bookmark mark="negTwo3"/> times negative 2
                <bookmark mark="negTwo4"/> times negative 2 <bookmark mark="sxtn2"/> equals 16, <bookmark mark="sol3"/>the fourth root of 16
                <bookmark mark="sol4"/>is either negative 2 or <bookmark mark="sol5"/>2.
                """
        ) as tracker:
            
            self.wait_until_bookmark("root4")
            cursor.blinking=False
            x,y,_ = root_four_4.get_center()+0.4*DOWN
            self.play(Write(root_four_4), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("rootTwo")
            cursor.blinking=False
            x,y,_ = root_four_two.get_center()+0.4*DOWN
            self.play(Write(root_four_two), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("two1")
            cursor.blinking=False
            x,y,_ = root_four_two[0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("two2")
            x,y,_ = root_four_two[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("two3")
            x,y,_ = root_four_two[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("two4")
            x,y,_ = root_four_two[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sxtn1")
            x,y,_ = root_four_two[8].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sol")
            x,y,_ = sol_1.get_center()+0.4*DOWN
            self.play(Write(sol_1), CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("sol2")
            x,y,_ = sol_1[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("rootNegTwo")
            cursor.blinking=False
            x,y,_ = root_four_negtwo.get_center()+0.4*DOWN
            self.play(Write(root_four_negtwo), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("negTwo1")
            cursor.blinking=False
            x,y,_ = root_four_negtwo[0].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negTwo2")
            x,y,_ = root_four_negtwo[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negTwo3")
            x,y,_ = root_four_negtwo[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negTwo4")
            x,y,_ = root_four_negtwo[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sxtn2")
            x,y,_ = root_four_negtwo[8].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sol3")
            x,y,_ = sol_2[1].get_center()+0.4*DOWN
            self.play(Write(sol_2), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sol4")
            x,y,_ = sol_2[-2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("sol5")
            x,y,_ = sol_2[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.2)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_5_2_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("n-th Roots")

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        f1 = lambda x: x**2
        f2 = lambda x: (x**3)/2

        g1 = plane.plot(f1, color=BLUE)
        g2 = plane.plot(f2, color=GREEN)

        fTex1 = MathTex("f", "(x)",  "=",  "x^2", color=BLUE).next_to(cords, DOWN, buff=0.4)
        fTex2 = MathTex("f", "(x)",  "=",  "0.5", "x^3", color=GREEN).next_to(cords, DOWN, buff=0.4)

        divLine = Line([0,-2.5,0], [0,2,0], color=c1t)
        even = Tex("even exponent", font_size=fs3, color=BLUE)
        odd = Tex("odd exponent", font_size=fs3, color=GREEN)
        even_odd = VGroup(even, odd).arrange(RIGHT, buff=0.6).next_to(divLine, UP, buff=0.2)
        neg_1_to_2 = MathTex("(-1)^2", "=", "1", font_size=fs3, color=BLUE).next_to(even, DOWN, buff=0.2)
        neg_1_to_3 = MathTex("(-1)^3", "=", "-1", font_size=fs3, color=GREEN).next_to(odd, DOWN, buff=0.2)
        neg_1_to_4 = MathTex("(-1)^4", "=", "1", font_size=fs3, color=BLUE).next_to(neg_1_to_2, DOWN, buff=0.2)
        neg_1_to_5 = MathTex("(-1)^5", "=", "-1", font_size=fs3, color=GREEN).next_to(neg_1_to_3, DOWN, buff=0.2)

        dots_even = MathTex("\\hdots", font_size=fs3, color=BLUE).next_to(neg_1_to_4, DOWN, buff=0.2)
        dots_odd = MathTex("\\hdots", font_size=fs3, color=GREEN).next_to(neg_1_to_5, DOWN, buff=0.2)

        one_root_2 = MathTex("\\sqrt[2]{1}", "=", "\\pm 1", font_size=fs3, color=BLUE).next_to(dots_even, DOWN, buff=0.6)
        one_root_3 = MathTex("\\sqrt[3]{1}", "=", " 1", font_size=fs3, color=GREEN).next_to(dots_odd, DOWN, buff=0.6)
        one_root_4 = MathTex("\\sqrt[4]{1}", "=", "\\pm 1", font_size=fs3, color=BLUE).next_to(one_root_2, DOWN, buff=0.2)
        one_root_5 = MathTex("\\sqrt[5]{1}", "=", " 1", font_size=fs3, color=GREEN).next_to(one_root_3, DOWN, buff=0.2)

        neg_1_root_2 = MathTex("\\sqrt[2]{-1}", font_size=fs3, color=BLUE).next_to(one_root_4, DOWN, buff=0.6)
        sout_2 = Cross(color=RED).move_to(neg_1_root_2).scale(neg_1_root_2.get_width()/Cross().get_width())
        neg_1_root_3 = MathTex("\\sqrt[3]{-1}", "=", "-1", font_size=fs3, color=GREEN).next_to(one_root_5, DOWN, buff=0.6)
        neg_1_root_4 = MathTex("\\sqrt[4]{-1}", font_size=fs3, color=BLUE).next_to(neg_1_root_2, DOWN, buff=0.2)
        sout_4 = Cross(color=RED).move_to(neg_1_root_4).scale(neg_1_root_4.get_width()/Cross().get_width())
        neg_1_root_5 = MathTex("\\sqrt[5]{-1}", "=", "-1", font_size=fs3, color=GREEN).next_to(neg_1_root_3, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text="""
                Ok, so for power functions, there's a difference between even and odd functions:
                <bookmark mark="even"/>Even functions are functions where the exponent is an even number, like 2, 4, 6, and
                they are <bookmark mark="evenSymmetry"/>symmetric around the y-axis.
                <bookmark mark="odd"/>Odd functions are functions where the exponent is an odd number, like 1, 3, 5, and
                they are <bookmark mark="oddSymmetry"/>symmetric around the origin.
                
                The core <bookmark mark="cleanUp"/>difference between the two comes from this:

                If you raise a negative number to an even power, the result is always positive.
                So <bookmark mark="neg_1_to_2"/>negative one squared is one, or <bookmark mark="neg_1_to_4"/>negative one to
                the power of four is also one, because each two negatives cancel each other out

                If you raise a negative number to an odd power however, the result is always negative.
                So <bookmark mark="neg_1_to_3"/>negative one to the power of three is negative one, because the two negatives
                cancel each other out, but the third one remains.
                And <bookmark mark="neg_1_to_5"/>negative one to the power of five is also negative, and <bookmark mark="so_on"/>so on...

                This also has important implications for the roots of these functions.
                The <bookmark mark="one_root_2"/>square root of one is always both one and negative one, because both of them squared is one.
                The same goes for <bookmark mark="one_root_4"/>the fourth root of one, the sixth root of one, and so on...
                So for all even roots of a positive number, there are two solutions: one positive and one negative.

                The <bookmark mark="one_root_3"/>cube root of one however, is only one, because one to the power of three is one, but
                negative one to the power of three is negative one. The same goes for <bookmark mark="one_root_5"/>the fifth root of one, and so on...

                But now, what about negative numbers?
                Well, the<bookmark mark="neg_1_root_2"/> square root of negative one doesn't exist, because there is no number that you can
                multiply by itself to get negative one. This is, because negative times negative is always positive.
                The same goes for <bookmark mark="neg_1_root_4"/>the fourth root of negative one, the sixth root of negative one, and so on...

                The <bookmark mark="neg_1_root_3"/>cube root of negative one however, exists and is equal to negative one,
                because negative one to the power of three is negative one. The same goes for <bookmark mark="neg_1_root_5"/>the fifth root
                of negative one, and so on...

                So for all odd roots of a negative number, there is only a solution, and it's negative. For all even roots of a negative
                number, there is no solution.
                """
        , subcaption='NOT AVAILABLE DUE TO BUG') as tracker:

            self.wait_until_bookmark("even")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(Write(fTex1), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g1))
            cursor.blinking=True
            
            self.wait_until_bookmark("evenSymmetry")
            copy = g1.copy().set_color(GREY).set_stroke_width(1)
            self.add(copy)
            self.bring_to_back(copy)
            self.play(Rotate(g1, about_point=plane.c2p(0,0),axis=UP ,angle=PI))
            self.wait(0.5)
            self.play(Rotate(g1, about_point=plane.c2p(0,0),axis=UP , angle=PI, run_time=0.3))
            self.remove(copy)

            self.wait_until_bookmark("odd")
            cursor.blinking=False
            x,y,_ = g2.get_start()
            self.play(TransformMatchingTex(fTex1, fTex2), CursorMoveTo(cursor, x, y), Unwrite(g1), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.blinking=True

            self.wait_until_bookmark("oddSymmetry")
            copy = g2.copy().set_color(GREY).set_stroke_width(1)
            self.add(copy)
            self.bring_to_back(copy)
            self.play(Rotate(g2, about_point=plane.c2p(0,0), angle=PI))
            self.wait(0.5)
            self.play(Rotate(g2, about_point=plane.c2p(0,0), angle=PI, run_time=0.3))
            self.remove(copy)

            self.wait_until_bookmark("cleanUp")
            out = VGroup(cords, g2, fTex2)
            self.play(out.animate.shift(RIGHT*5))
            self.play(Write(even), Write(odd), Write(divLine), run_time=0.5)

            self.wait_until_bookmark("neg_1_to_2")
            cursor.blinking=False
            x,y,_ = neg_1_to_2.get_center()+0.4*DOWN
            self.play(Write(neg_1_to_2), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("neg_1_to_4")
            x,y,_ = neg_1_to_4.get_center()+0.4*DOWN
            self.play(Write(neg_1_to_4), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("neg_1_to_3")
            x,y,_ = neg_1_to_3.get_center()+0.4*DOWN
            self.play(Write(neg_1_to_3), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("neg_1_to_5")
            x,y,_ = neg_1_to_5.get_center()+0.4*DOWN
            self.play(Write(neg_1_to_5), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking = True

            self.wait_until_bookmark("so_on")
            self.play(Write(dots_even), Write(dots_odd))
            
            self.wait_until_bookmark("one_root_2")
            cursor.blinking=False
            x,y,_ = one_root_2.get_center()+0.4*DOWN
            self.play(Write(one_root_2), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("one_root_4")
            x,y,_ = one_root_4.get_center()+0.4*DOWN
            self.play(Write(one_root_4), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("one_root_3")
            x,y,_ = one_root_3.get_center()+0.4*DOWN
            self.play(Write(one_root_3), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("one_root_5")
            x,y,_ = one_root_5.get_center()+0.4*DOWN
            self.play(Write(one_root_5), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking = True

            self.wait_until_bookmark("neg_1_root_2")
            cursor.blinking=False
            x,y,_ = neg_1_root_2.get_center()+0.4*DOWN
            self.play(Write(neg_1_root_2), Write(sout_2), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("neg_1_root_4")
            x,y,_ = neg_1_root_4.get_center()+0.4*DOWN
            self.play(Write(neg_1_root_4), Write(sout_4), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("neg_1_root_3")
            x,y,_ = neg_1_root_3.get_center()+0.4*DOWN
            self.play(Write(neg_1_root_3), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("neg_1_root_5")
            x,y,_ = neg_1_root_5.get_center()+0.4*DOWN
            self.play(Write(neg_1_root_5), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking = True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)



#####################################
#####################################
TASK_Func_5_2_I_4_q = SophiaTaskDefinition(
    answerOptions = ["$x<0$: no solution, $x>0$: two solutions", "$x<0$: two solutions, $x>0$: no solution", "$x>0$: one solution, $x<0$: one solution", "$x>0$: no solutions, $x<0$: no solutions"],
    correctAnswerIndex = 0,
    questionText = "Consider $\\sqrt[k]{x}$, where k is an even number. How many solutions are there for $x>0$, and how many for $x<0$?"
)
class Func_5_2_I_4_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Even Roots")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        root_general = Tex("$\\sqrt[k]{x}$", ",     ", "k is even", color=c1t, font_size = fs1).shift(UP*2)
        Q1 = Tex("How many solutions...", color=c1t, font_size = fs2)
        Q2a = Tex("if x is positive..?", color=c3t, font_size = fs2)
        Q2b = Tex("if x is negative..?", color=c3t, font_size = fs2)
        Q2 = VGroup(Q2a, Q2b)
        Q = VGroup(Q1, Q2a, Q2b).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(root_general, DOWN, buff=0.4)
        Q2.shift(RIGHT*0.6+DOWN*0.2)
        
        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]


        # Action Sequence
        with self.voiceover(
                text="""
                Let's say we're taking <bookmark mark="root"/>an even root of a number x, like the square root, or the fourth root.
                <bookmark mark="Q1"/>How many solutions do we get, <bookmark mark="Q2a"/>if the number x that we're taking the root
                of is positive?
                And how many solutions do we get, <bookmark mark="Q2b"/>if the number x that we're taking the root of is negative?
                """
        ) as tracker:

            self.wait_until_bookmark("root")
            cursor.blinking=False
            x,y,_ = root_general.get_center()+0.4*DOWN
            self.play(Write(root_general), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("Q1")
            cursor.blinking=False
            x,y,_ = Q1.get_center()+0.4*DOWN
            self.play(Write(Q1), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("Q2a")
            cursor.blinking=False
            x,y,_ = Q2a.get_center()+0.4*DOWN
            self.play(Write(Q2a), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("Q2b")
            cursor.blinking=False
            x,y,_ = Q2b.get_center()+0.4*DOWN
            self.play(Write(Q2b), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True


class Func_5_2_I_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("$\\sqrt[k]{x}$, k is even")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        divLine = Line([0,-1.8,0], [0,2,0], color=c1t)
        pos = Tex("x positive", font_size=fs3, color=BLUE)
        neg = Tex("x negative", font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(divLine, UP, buff=0.2)
        self.add(divLine, pos_neg)

        ex_1_pos = MathTex("\\sqrt[2]{4}", "=", "\\pm 2", font_size=fs3, color=BLUE).next_to(pos, DOWN, buff=0.8)
        ex_1_neg = MathTex("\\sqrt[2]{-4}", font_size=fs3, color=GREEN).next_to(neg, DOWN, buff=0.8)
        sout_1 = Cross(color=RED, stroke_width=2).move_to(ex_1_neg).scale(ex_1_neg.get_width()/Cross().get_width())
        ex_2_pos = MathTex("\\sqrt[4]{16}", "=", "\\pm 2", font_size=fs3, color=BLUE).next_to(ex_1_pos, DOWN, buff=0.2)
        ex_2_neg = MathTex("\\sqrt[4]{-16}", font_size=fs3, color=GREEN).next_to(ex_1_neg, DOWN, buff=0.2)
        sout_2 = Cross(color=RED, stroke_width=2).move_to(ex_2_neg).scale(ex_2_neg.get_width()/Cross().get_width())

        result_pos_1 = Tex("x positive", font_size=fs3, color=BLUE).next_to(ex_2_pos, DOWN, buff=0.8)
        result_pos_2 = MathTex("\\Downarrow", font_size=fs3, color=BLUE).next_to(result_pos_1, DOWN, buff=0.2)
        result_pos3 = Tex("Two solutions", font_size=fs3, color=BLUE).next_to(result_pos_2, DOWN, buff=0.2)

        result_neg_1 = Tex("x negative", font_size=fs3, color=GREEN).next_to(ex_2_neg, DOWN, buff=0.8)
        result_neg_2 = MathTex("\\Downarrow", font_size=fs3, color=GREEN).next_to(result_neg_1, DOWN, buff=0.2)
        result_neg3 = Tex("No solution", font_size=fs3, color=GREEN).next_to(result_neg_2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text="""
                That's correct. Well done!!!
                If x is positive, then we're taking an even root of a positive number.
                For example, <bookmark mark="posEx1a"/>the square root of 4, or
                <bookmark mark="posEx2a"/>the fourth root of 16.
                In that case, there are always two solutions: one positive and one negative.
                For example, <bookmark mark="posEx1b"/>the square root of 4 is 2, but also negative 2.
                And <bookmark mark="posEx2b"/>the fourth root of 16 is 2, but also negative 2.
                So, <bookmark mark="result_pos_1"/>if x is positive, <bookmark mark="result_pos_3"/>
                there are always two solutions.

                If <bookmark mark="xNeg"/>x is negative however, then we're taking an even root of a negative number.
                For example, <bookmark mark="negEx1a"/>the square root of negative 4, or
                <bookmark mark="negEx2a"/>the fourth root of negative 16.
                In these cases, there are <bookmark mark="strike_out"/>no solutions,
                because whenever you multiply a negative number by itself an even number of times,
                the result is always positive.
                So, <bookmark mark="result_neg_1"/>if x is negative, <bookmark mark="result_neg_3"/>
                there are no solutions. <bookmark mark="default"/>
                
                So quick summary, if we're taking an even root of a number x, then
                there are <bookmark mark="summary_two"/>two solutions if x is positive,
                and <bookmark mark="summary_no"/>no solutions if x is negative.
                """
        ) as tracker:

            self.wait_until_bookmark("posEx1a")
            cursor.blinking=False
            x,y,_ = ex_1_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx2a")
            x,y,_ = ex_2_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx1b")
            x,y,_ = ex_1_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[1]), Write(ex_1_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("posEx2b")
            cursor.blinking=False
            x,y,_ = ex_2_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[1]), Write(ex_2_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("result_pos_1")
            cursor.blinking=False
            x,y,_ = result_pos_1.get_center()+0.4*DOWN
            self.play(Write(result_pos_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_pos_3")
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(Write(result_pos_2), Write(result_pos3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("xNeg")
            cursor.blinking=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("negEx1a")
            cursor.blinking=False
            x,y,_ = ex_1_neg.get_center()+0.4*DOWN
            self.play(Write(ex_1_neg), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negEx2a")
            x,y,_ = ex_2_neg.get_center()+0.4*DOWN
            self.play(Write(ex_2_neg), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("strike_out")
            self.play(Write(sout_1), Write(sout_2))

            self.wait_until_bookmark("result_neg_1")
            cursor.blinking=False
            x,y,_ = result_neg_1.get_center()+0.4*DOWN
            self.play(Write(result_neg_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_neg_3")
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(Write(result_neg_2), Write(result_neg3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("default")
            cursor.blinking=False
            x,y,_ = ORIGIN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("summary_two")
            cursor.blinking=False
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("summary_no")
            cursor.blinking=False
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

        self.wait(4)


class Func_5_2_I_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("$\\sqrt[k]{x}$, k is even")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        divLine = Line([0,-1.8,0], [0,2,0], color=c1t)
        pos = Tex("x positive", font_size=fs3, color=BLUE)
        neg = Tex("x negative", font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(divLine, UP, buff=0.2)
        self.add(divLine, pos_neg)

        ex_1_pos = MathTex("\\sqrt[2]{4}", "=", "\\pm 2", font_size=fs3, color=BLUE).next_to(pos, DOWN, buff=0.8)
        ex_1_neg = MathTex("\\sqrt[2]{-4}", font_size=fs3, color=GREEN).next_to(neg, DOWN, buff=0.8)
        sout_1 = Cross(color=RED, stroke_width=2).move_to(ex_1_neg).scale(ex_1_neg.get_width()/Cross().get_width())
        ex_2_pos = MathTex("\\sqrt[4]{16}", "=", "\\pm 2", font_size=fs3, color=BLUE).next_to(ex_1_pos, DOWN, buff=0.2)
        ex_2_neg = MathTex("\\sqrt[4]{-16}", font_size=fs3, color=GREEN).next_to(ex_1_neg, DOWN, buff=0.2)
        sout_2 = Cross(color=RED, stroke_width=2).move_to(ex_2_neg).scale(ex_2_neg.get_width()/Cross().get_width())

        result_pos_1 = Tex("x positive", font_size=fs3, color=BLUE).next_to(ex_2_pos, DOWN, buff=0.8)
        result_pos_2 = MathTex("\\Downarrow", font_size=fs3, color=BLUE).next_to(result_pos_1, DOWN, buff=0.2)
        result_pos3 = Tex("Two solutions", font_size=fs3, color=BLUE).next_to(result_pos_2, DOWN, buff=0.2)

        result_neg_1 = Tex("x negative", font_size=fs3, color=GREEN).next_to(ex_2_neg, DOWN, buff=0.8)
        result_neg_2 = MathTex("\\Downarrow", font_size=fs3, color=GREEN).next_to(result_neg_1, DOWN, buff=0.2)
        result_neg3 = Tex("No solution", font_size=fs3, color=GREEN).next_to(result_neg_2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right...
                If x is positive, then we're taking an even root of a positive number.
                For example, <bookmark mark="posEx1a"/>the square root of 4, or
                <bookmark mark="posEx2a"/>the fourth root of 16.
                In that case, there are always two solutions: one positive and one negative.
                For example, <bookmark mark="posEx1b"/>the square root of 4 is 2, but also negative 2.
                And <bookmark mark="posEx2b"/>the fourth root of 16 is 2, but also negative 2.
                So, <bookmark mark="result_pos_1"/>if x is positive, <bookmark mark="result_pos_3"/>
                there are always two solutions.

                If <bookmark mark="xNeg"/>x is negative however, then we're taking an even root of a negative number.
                For example, <bookmark mark="negEx1a"/>the square root of negative 4, or
                <bookmark mark="negEx2a"/>the fourth root of negative 16.
                In these cases, there are <bookmark mark="strike_out"/>no solutions,
                because whenever you multiply a negative number by itself an even number of times,
                the result is always positive.
                So, <bookmark mark="result_neg_1"/>if x is negative, <bookmark mark="result_neg_3"/>
                there are no solutions. <bookmark mark="default"/>
                
                So quick summary, if we're taking an even root of a number x, then
                there are <bookmark mark="summary_two"/>two solutions if x is positive,
                and <bookmark mark="summary_no"/>no solutions if x is negative.
                """
        ) as tracker:

            self.wait_until_bookmark("posEx1a")
            cursor.blinking=False
            x,y,_ = ex_1_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx2a")
            x,y,_ = ex_2_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx1b")
            x,y,_ = ex_1_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[1]), Write(ex_1_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("posEx2b")
            cursor.blinking=False
            x,y,_ = ex_2_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[1]), Write(ex_2_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("result_pos_1")
            cursor.blinking=False
            x,y,_ = result_pos_1.get_center()+0.4*DOWN
            self.play(Write(result_pos_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_pos_3")
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(Write(result_pos_2), Write(result_pos3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("xNeg")
            cursor.blinking=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("negEx1a")
            cursor.blinking=False
            x,y,_ = ex_1_neg.get_center()+0.4*DOWN
            self.play(Write(ex_1_neg), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negEx2a")
            x,y,_ = ex_2_neg.get_center()+0.4*DOWN
            self.play(Write(ex_2_neg), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("strike_out")
            self.play(Write(sout_1), Write(sout_2))

            self.wait_until_bookmark("result_neg_1")
            cursor.blinking=False
            x,y,_ = result_neg_1.get_center()+0.4*DOWN
            self.play(Write(result_neg_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_neg_3")
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(Write(result_neg_2), Write(result_neg3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("default")
            cursor.blinking=False
            x,y,_ = ORIGIN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("summary_two")
            cursor.blinking=False
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("summary_no")
            cursor.blinking=False
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

        self.wait(4)

class Func_5_2_I_4_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("$\\sqrt[k]{x}$, k is even")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        divLine = Line([0,-1.8,0], [0,2,0], color=c1t)
        pos = Tex("x positive", font_size=fs3, color=BLUE)
        neg = Tex("x negative", font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(divLine, UP, buff=0.2)
        self.add(divLine, pos_neg)

        ex_1_pos = MathTex("\\sqrt[2]{4}", "=", "\\pm 2", font_size=fs3, color=BLUE).next_to(pos, DOWN, buff=0.8)
        ex_1_neg = MathTex("\\sqrt[2]{-4}", font_size=fs3, color=GREEN).next_to(neg, DOWN, buff=0.8)
        sout_1 = Cross(color=RED, stroke_width=2).move_to(ex_1_neg).scale(ex_1_neg.get_width()/Cross().get_width())
        ex_2_pos = MathTex("\\sqrt[4]{16}", "=", "\\pm 2", font_size=fs3, color=BLUE).next_to(ex_1_pos, DOWN, buff=0.2)
        ex_2_neg = MathTex("\\sqrt[4]{-16}", font_size=fs3, color=GREEN).next_to(ex_1_neg, DOWN, buff=0.2)
        sout_2 = Cross(color=RED, stroke_width=2).move_to(ex_2_neg).scale(ex_2_neg.get_width()/Cross().get_width())

        result_pos_1 = Tex("x positive", font_size=fs3, color=BLUE).next_to(ex_2_pos, DOWN, buff=0.8)
        result_pos_2 = MathTex("\\Downarrow", font_size=fs3, color=BLUE).next_to(result_pos_1, DOWN, buff=0.2)
        result_pos3 = Tex("Two solutions", font_size=fs3, color=BLUE).next_to(result_pos_2, DOWN, buff=0.2)

        result_neg_1 = Tex("x negative", font_size=fs3, color=GREEN).next_to(ex_2_neg, DOWN, buff=0.8)
        result_neg_2 = MathTex("\\Downarrow", font_size=fs3, color=GREEN).next_to(result_neg_1, DOWN, buff=0.2)
        result_neg3 = Tex("No solution", font_size=fs3, color=GREEN).next_to(result_neg_2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right...
                If x is positive, then we're taking an even root of a positive number.
                For example, <bookmark mark="posEx1a"/>the square root of 4, or
                <bookmark mark="posEx2a"/>the fourth root of 16.
                In that case, there are always two solutions: one positive and one negative.
                For example, <bookmark mark="posEx1b"/>the square root of 4 is 2, but also negative 2.
                And <bookmark mark="posEx2b"/>the fourth root of 16 is 2, but also negative 2.
                So, <bookmark mark="result_pos_1"/>if x is positive, <bookmark mark="result_pos_3"/>
                there are always two solutions.

                If <bookmark mark="xNeg"/>x is negative however, then we're taking an even root of a negative number.
                For example, <bookmark mark="negEx1a"/>the square root of negative 4, or
                <bookmark mark="negEx2a"/>the fourth root of negative 16.
                In these cases, there are <bookmark mark="strike_out"/>no solutions,
                because whenever you multiply a negative number by itself an even number of times,
                the result is always positive.
                So, <bookmark mark="result_neg_1"/>if x is negative, <bookmark mark="result_neg_3"/>
                there are no solutions. <bookmark mark="default"/>
                
                So quick summary, if we're taking an even root of a number x, then
                there are <bookmark mark="summary_two"/>two solutions if x is positive,
                and <bookmark mark="summary_no"/>no solutions if x is negative.
                """
        ) as tracker:

            self.wait_until_bookmark("posEx1a")
            cursor.blinking=False
            x,y,_ = ex_1_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx2a")
            x,y,_ = ex_2_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx1b")
            x,y,_ = ex_1_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[1]), Write(ex_1_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("posEx2b")
            cursor.blinking=False
            x,y,_ = ex_2_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[1]), Write(ex_2_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("result_pos_1")
            cursor.blinking=False
            x,y,_ = result_pos_1.get_center()+0.4*DOWN
            self.play(Write(result_pos_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_pos_3")
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(Write(result_pos_2), Write(result_pos3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("xNeg")
            cursor.blinking=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("negEx1a")
            cursor.blinking=False
            x,y,_ = ex_1_neg.get_center()+0.4*DOWN
            self.play(Write(ex_1_neg), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negEx2a")
            x,y,_ = ex_2_neg.get_center()+0.4*DOWN
            self.play(Write(ex_2_neg), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("strike_out")
            self.play(Write(sout_1), Write(sout_2))

            self.wait_until_bookmark("result_neg_1")
            cursor.blinking=False
            x,y,_ = result_neg_1.get_center()+0.4*DOWN
            self.play(Write(result_neg_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_neg_3")
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(Write(result_neg_2), Write(result_neg3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("default")
            cursor.blinking=False
            x,y,_ = ORIGIN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("summary_two")
            cursor.blinking=False
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("summary_no")
            cursor.blinking=False
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

        self.wait(4)

class Func_5_2_I_4_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("$\\sqrt[k]{x}$, k is even")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        divLine = Line([0,-1.8,0], [0,2,0], color=c1t)
        pos = Tex("x positive", font_size=fs3, color=BLUE)
        neg = Tex("x negative", font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(divLine, UP, buff=0.2)
        self.add(divLine, pos_neg)

        ex_1_pos = MathTex("\\sqrt[2]{4}", "=", "\\pm 2", font_size=fs3, color=BLUE).next_to(pos, DOWN, buff=0.8)
        ex_1_neg = MathTex("\\sqrt[2]{-4}", font_size=fs3, color=GREEN).next_to(neg, DOWN, buff=0.8)
        sout_1 = Cross(color=RED, stroke_width=2).move_to(ex_1_neg).scale(ex_1_neg.get_width()/Cross().get_width())
        ex_2_pos = MathTex("\\sqrt[4]{16}", "=", "\\pm 2", font_size=fs3, color=BLUE).next_to(ex_1_pos, DOWN, buff=0.2)
        ex_2_neg = MathTex("\\sqrt[4]{-16}", font_size=fs3, color=GREEN).next_to(ex_1_neg, DOWN, buff=0.2)
        sout_2 = Cross(color=RED, stroke_width=2).move_to(ex_2_neg).scale(ex_2_neg.get_width()/Cross().get_width())

        result_pos_1 = Tex("x positive", font_size=fs3, color=BLUE).next_to(ex_2_pos, DOWN, buff=0.8)
        result_pos_2 = MathTex("\\Downarrow", font_size=fs3, color=BLUE).next_to(result_pos_1, DOWN, buff=0.2)
        result_pos3 = Tex("Two solutions", font_size=fs3, color=BLUE).next_to(result_pos_2, DOWN, buff=0.2)

        result_neg_1 = Tex("x negative", font_size=fs3, color=GREEN).next_to(ex_2_neg, DOWN, buff=0.8)
        result_neg_2 = MathTex("\\Downarrow", font_size=fs3, color=GREEN).next_to(result_neg_1, DOWN, buff=0.2)
        result_neg3 = Tex("No solution", font_size=fs3, color=GREEN).next_to(result_neg_2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right...
                If x is positive, then we're taking an even root of a positive number.
                For example, <bookmark mark="posEx1a"/>the square root of 4, or
                <bookmark mark="posEx2a"/>the fourth root of 16.
                In that case, there are always two solutions: one positive and one negative.
                For example, <bookmark mark="posEx1b"/>the square root of 4 is 2, but also negative 2.
                And <bookmark mark="posEx2b"/>the fourth root of 16 is 2, but also negative 2.
                So, <bookmark mark="result_pos_1"/>if x is positive, <bookmark mark="result_pos_3"/>
                there are always two solutions.

                If <bookmark mark="xNeg"/>x is negative however, then we're taking an even root of a negative number.
                For example, <bookmark mark="negEx1a"/>the square root of negative 4, or
                <bookmark mark="negEx2a"/>the fourth root of negative 16.
                In these cases, there are <bookmark mark="strike_out"/>no solutions,
                because whenever you multiply a negative number by itself an even number of times,
                the result is always positive.
                So, <bookmark mark="result_neg_1"/>if x is negative, <bookmark mark="result_neg_3"/>
                there are no solutions. <bookmark mark="default"/>
                
                So quick summary, if we're taking an even root of a number x, then
                there are <bookmark mark="summary_two"/>two solutions if x is positive,
                and <bookmark mark="summary_no"/>no solutions if x is negative.
                """
        ) as tracker:

            self.wait_until_bookmark("posEx1a")
            cursor.blinking=False
            x,y,_ = ex_1_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx2a")
            x,y,_ = ex_2_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx1b")
            x,y,_ = ex_1_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[1]), Write(ex_1_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("posEx2b")
            cursor.blinking=False
            x,y,_ = ex_2_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[1]), Write(ex_2_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("result_pos_1")
            cursor.blinking=False
            x,y,_ = result_pos_1.get_center()+0.4*DOWN
            self.play(Write(result_pos_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_pos_3")
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(Write(result_pos_2), Write(result_pos3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("xNeg")
            cursor.blinking=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("negEx1a")
            cursor.blinking=False
            x,y,_ = ex_1_neg.get_center()+0.4*DOWN
            self.play(Write(ex_1_neg), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negEx2a")
            x,y,_ = ex_2_neg.get_center()+0.4*DOWN
            self.play(Write(ex_2_neg), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("strike_out")
            self.play(Write(sout_1), Write(sout_2))

            self.wait_until_bookmark("result_neg_1")
            cursor.blinking=False
            x,y,_ = result_neg_1.get_center()+0.4*DOWN
            self.play(Write(result_neg_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_neg_3")
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(Write(result_neg_2), Write(result_neg3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("default")
            cursor.blinking=False
            x,y,_ = ORIGIN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("summary_two")
            cursor.blinking=False
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("summary_no")
            cursor.blinking=False
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

        self.wait(4)


#####################################
#####################################
TASK_Func_5_2_I_5_q = SophiaTaskDefinition(
        answerOptions = ["$x<0$: no solution, $x>0$: two solutions", "$x<0$: two solutions, $x>0$: no solution", "$x>0$: one solution, $x<0$: one solution", "$x>0$: no solutions, $x<0$: no solutions"],
    correctAnswerIndex = 2,
    questionText = "Consider $\\sqrt[k]{x}$, where k is an odd number. How many solutions are there for $x>0$, and how many for $x<0$?"
)

class Func_5_2_I_5_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Odd Roots")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        root_general = Tex("$\\sqrt[k]{x}$", ",     ", "k is odd", color=c1t, font_size = fs1).shift(UP*2)
        Q1 = Tex("How many solutions...", color=c1t, font_size = fs2)
        Q2a = Tex("if x is positive..?", color=c3t, font_size = fs2)
        Q2b = Tex("if x is negative..?", color=c3t, font_size = fs2)
        Q2 = VGroup(Q2a, Q2b)
        Q = VGroup(Q1, Q2a, Q2b).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(root_general, DOWN, buff=0.4)
        Q2.shift(RIGHT*0.6+DOWN*0.2)
        
        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]


        # Action Sequence
        with self.voiceover(
                text="""
                Now we want to take <bookmark mark="root"/>an odd root of a number x, like the cube root, or the fifth root.
                <bookmark mark="Q1"/>How many solutions do we get, <bookmark mark="Q2a"/>if we're taking an odd root of a positive
                number x?
                And how many solutions do we get, <bookmark mark="Q2b"/>if we take an odd root of a negative number x?
                """
        ) as tracker:

            self.wait_until_bookmark("root")
            cursor.blinking=False
            x,y,_ = root_general.get_center()+0.4*DOWN
            self.play(Write(root_general), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("Q1")
            cursor.blinking=False
            x,y,_ = Q1.get_center()+0.4*DOWN
            self.play(Write(Q1), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("Q2a")
            cursor.blinking=False
            x,y,_ = Q2a.get_center()+0.4*DOWN
            self.play(Write(Q2a), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("Q2b")
            cursor.blinking=False
            x,y,_ = Q2b.get_center()+0.4*DOWN
            self.play(Write(Q2b), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.blinking=True


class Func_5_2_I_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("$\\sqrt[k]{x}$, k is odd")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        divLine = Line([0,-1.8,0], [0,2,0], color=c1t)
        pos = Tex("x positive", font_size=fs3, color=BLUE)
        neg = Tex("x negative", font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(divLine, UP, buff=0.2)
        self.add(divLine, pos_neg)

        ex_1_pos = MathTex("\\sqrt[3]{8}", "=", " 2", font_size=fs3, color=BLUE).next_to(pos, DOWN, buff=0.8)
        ex_1_neg = MathTex("\\sqrt[3]{-8}", "=", "-2",  font_size=fs3, color=GREEN).next_to(neg, DOWN, buff=0.8)
        ex_2_pos = MathTex("\\sqrt[5]{32}", "=", "2", font_size=fs3, color=BLUE).next_to(ex_1_pos, DOWN, buff=0.2)
        ex_2_neg = MathTex("\\sqrt[5]{-32}", "=", "-2", font_size=fs3, color=GREEN).next_to(ex_1_neg, DOWN, buff=0.2)

        result_pos_1 = Tex("x positive", font_size=fs3, color=BLUE).next_to(ex_2_pos, DOWN, buff=0.8)
        result_pos_2 = MathTex("\\Downarrow", font_size=fs3, color=BLUE).next_to(result_pos_1, DOWN, buff=0.2)
        result_pos3 = Tex("One solution", font_size=fs3, color=BLUE).next_to(result_pos_2, DOWN, buff=0.2)

        result_neg_1 = Tex("x negative", font_size=fs3, color=GREEN).next_to(ex_2_neg, DOWN, buff=0.8)
        result_neg_2 = MathTex("\\Downarrow", font_size=fs3, color=GREEN).next_to(result_neg_1, DOWN, buff=0.2)
        result_neg3 = Tex("One solution", font_size=fs3, color=GREEN).next_to(result_neg_2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right...
                If x is positive, then we're taking an odd root of a positive number.
                For example, <bookmark mark="posEx1a"/>the cube root of 8, or
                <bookmark mark="posEx2a"/>the fifth root of 32.
                In that case, there is always one solution, and it is positive.
                For example, <bookmark mark="posEx1b"/>the square root of 8 is 2.
                And <bookmark mark="posEx2b"/>the fifth root of 32 is 2 as well.
                So, <bookmark mark="result_pos_1"/>if x is positive, <bookmark mark="result_pos_3"/>
                there is always one solution, and it's positive.

                If <bookmark mark="xNeg"/>x is negative however, then we're taking an odd root of a negative number.
                For example, <bookmark mark="negEx1a"/>the cube root of negative 8, or
                <bookmark mark="negEx2a"/>the fifth root of negative 32.
                In these cases, there is always one solution, and it is negative.
                For example, <bookmark mark="negEx1b"/>the cube root of negative 8 is negative 2.
                And <bookmark mark="negEx2b"/>the fifth root of negative 32 is negative 2 as well.
                So, <bookmark mark="result_neg_1"/>if x is negative, <bookmark mark="result_neg_3"/>
                there is always one solution, and it's negative. <bookmark mark="default"/>
                
                So quick summary, if we're taking an odd root of a number x, then
                there is <bookmark mark="summary_a"/>one solution if x is positive,
                and <bookmark mark="summary_b"/>one solution if x is negative.
                """
        ) as tracker:

            self.wait_until_bookmark("posEx1a")
            cursor.blinking=False
            x,y,_ = ex_1_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx2a")
            x,y,_ = ex_2_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx1b")
            x,y,_ = ex_1_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[1]), Write(ex_1_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("posEx2b")
            cursor.blinking=False
            x,y,_ = ex_2_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[1]), Write(ex_2_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("result_pos_1")
            cursor.blinking=False
            x,y,_ = result_pos_1.get_center()+0.4*DOWN
            self.play(Write(result_pos_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_pos_3")
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(Write(result_pos_2), Write(result_pos3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("xNeg")
            cursor.blinking=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            self.wait(0.2)
            cursor.blinking=True

            self.wait_until_bookmark("negEx1a")
            cursor.blinking=False
            x,y,_ = ex_1_neg[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_neg[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negEx2a")
            x,y,_ = ex_2_neg[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_neg[0]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("negEx1b")
            cursor.blinking=False
            x,y,_ = ex_1_neg[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_neg[1]), Write(ex_1_neg[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("negEx2b")
            cursor.blinking=False
            x,y,_ = ex_2_neg[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_neg[1]), Write(ex_2_neg[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("result_neg_1")
            cursor.blinking=False
            x,y,_ = result_neg_1.get_center()+0.4*DOWN
            self.play(Write(result_neg_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_neg_3")
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(Write(result_neg_2), Write(result_neg3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("default")
            cursor.blinking=False
            x,y,_ = ORIGIN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("summary_a")
            cursor.blinking=False
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("summary_b")
            cursor.blinking=False
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

        self.wait(4)


class Func_5_2_I_5_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("$\\sqrt[k]{x}$, k is odd")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        divLine = Line([0,-1.8,0], [0,2,0], color=c1t)
        pos = Tex("x positive", font_size=fs3, color=BLUE)
        neg = Tex("x negative", font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(divLine, UP, buff=0.2)
        self.add(divLine, pos_neg)

        ex_1_pos = MathTex("\\sqrt[3]{8}", "=", " 2", font_size=fs3, color=BLUE).next_to(pos, DOWN, buff=0.8)
        ex_1_neg = MathTex("\\sqrt[3]{-8}", "=", "-2",  font_size=fs3, color=GREEN).next_to(neg, DOWN, buff=0.8)
        ex_2_pos = MathTex("\\sqrt[5]{32}", "=", "2", font_size=fs3, color=BLUE).next_to(ex_1_pos, DOWN, buff=0.2)
        ex_2_neg = MathTex("\\sqrt[5]{-32}", "=", "-2", font_size=fs3, color=GREEN).next_to(ex_1_neg, DOWN, buff=0.2)

        result_pos_1 = Tex("x positive", font_size=fs3, color=BLUE).next_to(ex_2_pos, DOWN, buff=0.8)
        result_pos_2 = MathTex("\\Downarrow", font_size=fs3, color=BLUE).next_to(result_pos_1, DOWN, buff=0.2)
        result_pos3 = Tex("One solution", font_size=fs3, color=BLUE).next_to(result_pos_2, DOWN, buff=0.2)

        result_neg_1 = Tex("x negative", font_size=fs3, color=GREEN).next_to(ex_2_neg, DOWN, buff=0.8)
        result_neg_2 = MathTex("\\Downarrow", font_size=fs3, color=GREEN).next_to(result_neg_1, DOWN, buff=0.2)
        result_neg3 = Tex("One solution", font_size=fs3, color=GREEN).next_to(result_neg_2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right...
                If x is positive, then we're taking an odd root of a positive number.
                For example, <bookmark mark="posEx1a"/>the cube root of 8, or
                <bookmark mark="posEx2a"/>the fifth root of 32.
                In that case, there is always one solution, and it is positive.
                For example, <bookmark mark="posEx1b"/>the square root of 8 is 2.
                And <bookmark mark="posEx2b"/>the fifth root of 32 is 2 as well.
                So, <bookmark mark="result_pos_1"/>if x is positive, <bookmark mark="result_pos_3"/>
                there is always one solution, and it's positive.

                If <bookmark mark="xNeg"/>x is negative however, then we're taking an odd root of a negative number.
                For example, <bookmark mark="negEx1a"/>the cube root of negative 8, or
                <bookmark mark="negEx2a"/>the fifth root of negative 32.
                In these cases, there is always one solution, and it is negative.
                For example, <bookmark mark="negEx1b"/>the cube root of negative 8 is negative 2.
                And <bookmark mark="negEx2b"/>the fifth root of negative 32 is negative 2 as well.
                So, <bookmark mark="result_neg_1"/>if x is negative, <bookmark mark="result_neg_3"/>
                there is always one solution, and it's negative. <bookmark mark="default"/>
                
                So quick summary, if we're taking an odd root of a number x, then
                there is <bookmark mark="summary_a"/>one solution if x is positive,
                and <bookmark mark="summary_b"/>one solution if x is negative.
                """
        ) as tracker:

            self.wait_until_bookmark("posEx1a")
            cursor.blinking=False
            x,y,_ = ex_1_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx2a")
            x,y,_ = ex_2_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx1b")
            x,y,_ = ex_1_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[1]), Write(ex_1_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("posEx2b")
            cursor.blinking=False
            x,y,_ = ex_2_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[1]), Write(ex_2_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("result_pos_1")
            cursor.blinking=False
            x,y,_ = result_pos_1.get_center()+0.4*DOWN
            self.play(Write(result_pos_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_pos_3")
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(Write(result_pos_2), Write(result_pos3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("xNeg")
            cursor.blinking=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            self.wait(0.2)
            cursor.blinking=True

            self.wait_until_bookmark("negEx1a")
            cursor.blinking=False
            x,y,_ = ex_1_neg[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_neg[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negEx2a")
            x,y,_ = ex_2_neg[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_neg[0]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("negEx1b")
            cursor.blinking=False
            x,y,_ = ex_1_neg[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_neg[1]), Write(ex_1_neg[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("negEx2b")
            cursor.blinking=False
            x,y,_ = ex_2_neg[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_neg[1]), Write(ex_2_neg[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("result_neg_1")
            cursor.blinking=False
            x,y,_ = result_neg_1.get_center()+0.4*DOWN
            self.play(Write(result_neg_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_neg_3")
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(Write(result_neg_2), Write(result_neg3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("default")
            cursor.blinking=False
            x,y,_ = ORIGIN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("summary_a")
            cursor.blinking=False
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("summary_b")
            cursor.blinking=False
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

        self.wait(4)


class Func_5_2_I_5_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("$\\sqrt[k]{x}$, k is odd")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        divLine = Line([0,-1.8,0], [0,2,0], color=c1t)
        pos = Tex("x positive", font_size=fs3, color=BLUE)
        neg = Tex("x negative", font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(divLine, UP, buff=0.2)
        self.add(divLine, pos_neg)

        ex_1_pos = MathTex("\\sqrt[3]{8}", "=", " 2", font_size=fs3, color=BLUE).next_to(pos, DOWN, buff=0.8)
        ex_1_neg = MathTex("\\sqrt[3]{-8}", "=", "-2",  font_size=fs3, color=GREEN).next_to(neg, DOWN, buff=0.8)
        ex_2_pos = MathTex("\\sqrt[5]{32}", "=", "2", font_size=fs3, color=BLUE).next_to(ex_1_pos, DOWN, buff=0.2)
        ex_2_neg = MathTex("\\sqrt[5]{-32}", "=", "-2", font_size=fs3, color=GREEN).next_to(ex_1_neg, DOWN, buff=0.2)

        result_pos_1 = Tex("x positive", font_size=fs3, color=BLUE).next_to(ex_2_pos, DOWN, buff=0.8)
        result_pos_2 = MathTex("\\Downarrow", font_size=fs3, color=BLUE).next_to(result_pos_1, DOWN, buff=0.2)
        result_pos3 = Tex("One solution", font_size=fs3, color=BLUE).next_to(result_pos_2, DOWN, buff=0.2)

        result_neg_1 = Tex("x negative", font_size=fs3, color=GREEN).next_to(ex_2_neg, DOWN, buff=0.8)
        result_neg_2 = MathTex("\\Downarrow", font_size=fs3, color=GREEN).next_to(result_neg_1, DOWN, buff=0.2)
        result_neg3 = Tex("One solution", font_size=fs3, color=GREEN).next_to(result_neg_2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text="""
                You got it. Excellent job!
                If x is positive, then we're taking an odd root of a positive number.
                For example, <bookmark mark="posEx1a"/>the cube root of 8, or
                <bookmark mark="posEx2a"/>the fifth root of 32.
                In that case, there is always one solution, and it is positive.
                For example, <bookmark mark="posEx1b"/>the square root of 8 is 2.
                And <bookmark mark="posEx2b"/>the fifth root of 32 is 2 as well.
                So, <bookmark mark="result_pos_1"/>if x is positive, <bookmark mark="result_pos_3"/>
                there is always one solution, and it's positive.

                If <bookmark mark="xNeg"/>x is negative however, then we're taking an odd root of a negative number.
                For example, <bookmark mark="negEx1a"/>the cube root of negative 8, or
                <bookmark mark="negEx2a"/>the fifth root of negative 32.
                In these cases, there is always one solution, and it is negative.
                For example, <bookmark mark="negEx1b"/>the cube root of negative 8 is negative 2.
                And <bookmark mark="negEx2b"/>the fifth root of negative 32 is negative 2 as well.
                So, <bookmark mark="result_neg_1"/>if x is negative, <bookmark mark="result_neg_3"/>
                there is always one solution, and it's negative. <bookmark mark="default"/>
                
                So quick summary, if we're taking an odd root of a number x, then
                there is <bookmark mark="summary_a"/>one solution if x is positive,
                and <bookmark mark="summary_b"/>one solution if x is negative.
                """
        ) as tracker:

            self.wait_until_bookmark("posEx1a")
            cursor.blinking=False
            x,y,_ = ex_1_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx2a")
            x,y,_ = ex_2_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx1b")
            x,y,_ = ex_1_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[1]), Write(ex_1_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("posEx2b")
            cursor.blinking=False
            x,y,_ = ex_2_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[1]), Write(ex_2_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("result_pos_1")
            cursor.blinking=False
            x,y,_ = result_pos_1.get_center()+0.4*DOWN
            self.play(Write(result_pos_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_pos_3")
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(Write(result_pos_2), Write(result_pos3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("xNeg")
            cursor.blinking=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            self.wait(0.2)
            cursor.blinking=True

            self.wait_until_bookmark("negEx1a")
            cursor.blinking=False
            x,y,_ = ex_1_neg[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_neg[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negEx2a")
            x,y,_ = ex_2_neg[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_neg[0]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("negEx1b")
            cursor.blinking=False
            x,y,_ = ex_1_neg[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_neg[1]), Write(ex_1_neg[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("negEx2b")
            cursor.blinking=False
            x,y,_ = ex_2_neg[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_neg[1]), Write(ex_2_neg[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("result_neg_1")
            cursor.blinking=False
            x,y,_ = result_neg_1.get_center()+0.4*DOWN
            self.play(Write(result_neg_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_neg_3")
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(Write(result_neg_2), Write(result_neg3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("default")
            cursor.blinking=False
            x,y,_ = ORIGIN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("summary_a")
            cursor.blinking=False
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("summary_b")
            cursor.blinking=False
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

        self.wait(4)


class Func_5_2_I_5_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("$\\sqrt[k]{x}$, k is odd")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        divLine = Line([0,-1.8,0], [0,2,0], color=c1t)
        pos = Tex("x positive", font_size=fs3, color=BLUE)
        neg = Tex("x negative", font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(divLine, UP, buff=0.2)
        self.add(divLine, pos_neg)

        ex_1_pos = MathTex("\\sqrt[3]{8}", "=", " 2", font_size=fs3, color=BLUE).next_to(pos, DOWN, buff=0.8)
        ex_1_neg = MathTex("\\sqrt[3]{-8}", "=", "-2",  font_size=fs3, color=GREEN).next_to(neg, DOWN, buff=0.8)
        ex_2_pos = MathTex("\\sqrt[5]{32}", "=", "2", font_size=fs3, color=BLUE).next_to(ex_1_pos, DOWN, buff=0.2)
        ex_2_neg = MathTex("\\sqrt[5]{-32}", "=", "-2", font_size=fs3, color=GREEN).next_to(ex_1_neg, DOWN, buff=0.2)

        result_pos_1 = Tex("x positive", font_size=fs3, color=BLUE).next_to(ex_2_pos, DOWN, buff=0.8)
        result_pos_2 = MathTex("\\Downarrow", font_size=fs3, color=BLUE).next_to(result_pos_1, DOWN, buff=0.2)
        result_pos3 = Tex("One solution", font_size=fs3, color=BLUE).next_to(result_pos_2, DOWN, buff=0.2)

        result_neg_1 = Tex("x negative", font_size=fs3, color=GREEN).next_to(ex_2_neg, DOWN, buff=0.8)
        result_neg_2 = MathTex("\\Downarrow", font_size=fs3, color=GREEN).next_to(result_neg_1, DOWN, buff=0.2)
        result_neg3 = Tex("One solution", font_size=fs3, color=GREEN).next_to(result_neg_2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not right...
                If x is positive, then we're taking an odd root of a positive number.
                For example, <bookmark mark="posEx1a"/>the cube root of 8, or
                <bookmark mark="posEx2a"/>the fifth root of 32.
                In that case, there is always one solution, and it is positive.
                For example, <bookmark mark="posEx1b"/>the square root of 8 is 2.
                And <bookmark mark="posEx2b"/>the fifth root of 32 is 2 as well.
                So, <bookmark mark="result_pos_1"/>if x is positive, <bookmark mark="result_pos_3"/>
                there is always one solution, and it's positive.

                If <bookmark mark="xNeg"/>x is negative however, then we're taking an odd root of a negative number.
                For example, <bookmark mark="negEx1a"/>the cube root of negative 8, or
                <bookmark mark="negEx2a"/>the fifth root of negative 32.
                In these cases, there is always one solution, and it is negative.
                For example, <bookmark mark="negEx1b"/>the cube root of negative 8 is negative 2.
                And <bookmark mark="negEx2b"/>the fifth root of negative 32 is negative 2 as well.
                So, <bookmark mark="result_neg_1"/>if x is negative, <bookmark mark="result_neg_3"/>
                there is always one solution, and it's negative. <bookmark mark="default"/>
                
                So quick summary, if we're taking an odd root of a number x, then
                there is <bookmark mark="summary_a"/>one solution if x is positive,
                and <bookmark mark="summary_b"/>one solution if x is negative.
                """
        ) as tracker:

            self.wait_until_bookmark("posEx1a")
            cursor.blinking=False
            x,y,_ = ex_1_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx2a")
            x,y,_ = ex_2_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx1b")
            x,y,_ = ex_1_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[1]), Write(ex_1_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("posEx2b")
            cursor.blinking=False
            x,y,_ = ex_2_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[1]), Write(ex_2_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("result_pos_1")
            cursor.blinking=False
            x,y,_ = result_pos_1.get_center()+0.4*DOWN
            self.play(Write(result_pos_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_pos_3")
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(Write(result_pos_2), Write(result_pos3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("xNeg")
            cursor.blinking=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            self.wait(0.2)
            cursor.blinking=True

            self.wait_until_bookmark("negEx1a")
            cursor.blinking=False
            x,y,_ = ex_1_neg[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_neg[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negEx2a")
            x,y,_ = ex_2_neg[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_neg[0]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("negEx1b")
            cursor.blinking=False
            x,y,_ = ex_1_neg[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_neg[1]), Write(ex_1_neg[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("negEx2b")
            cursor.blinking=False
            x,y,_ = ex_2_neg[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_neg[1]), Write(ex_2_neg[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("result_neg_1")
            cursor.blinking=False
            x,y,_ = result_neg_1.get_center()+0.4*DOWN
            self.play(Write(result_neg_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_neg_3")
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(Write(result_neg_2), Write(result_neg3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("default")
            cursor.blinking=False
            x,y,_ = ORIGIN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("summary_a")
            cursor.blinking=False
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("summary_b")
            cursor.blinking=False
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

        self.wait(4)


#####################################
#####################################
class Func_5_2_I_6(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("$\\sqrt[k]{x}$, k is odd")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=0.4)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        vLine = Line([0.4,-1.5,0], [0.4,1.5,0], color=c1t)
        hLine = Line([-1.1,0,0], [1.9,0,0], color=c1t)

        pos = Tex("x positive", font_size=fs3, color=BLUE)
        neg = Tex("x negative", font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(vLine, UP, buff=0.2)
        
        even = Tex("k even", font_size=fs3, color=PURPLE)
        odd = Tex("k odd", font_size=fs3, color=ORANGE)
        even_odd = VGroup(even, odd).arrange(DOWN, buff=1.2).next_to(hLine, LEFT, buff=0.1)

        even_pos_examples = MathTex("\\sqrt[2]{4},", "\\sqrt[4]{16},", "...", font_size=fs4, color=c1t)
        even_pos_sol = Tex("$\\Rightarrow$Two solutions", font_size=fs4, color=c1t)
        even_pos = VGroup(even_pos_examples, even_pos_sol).arrange(DOWN, buff=0.2).next_to(vLine, LEFT, buff=0.1)
        even_pos.shift((even.get_bottom()[1]-even_pos.get_bottom()[1])*UP)

        even_neg_examples = MathTex("\\sqrt[2]{-4},", "\\sqrt[4]{-16},", "...", font_size=fs4, color=c1t)
        even_neg_sol = Tex("$\\Rightarrow$No solution", font_size=fs4, color=c1t)
        even_neg = VGroup(even_neg_examples, even_neg_sol).arrange(DOWN, buff=0.2).next_to(vLine, RIGHT, buff=0.1)
        even_neg.shift((even.get_bottom()[1]-even_neg.get_bottom()[1])*UP)

        odd_pos_examples = MathTex("\\sqrt[3]{8},", "\\sqrt[5]{32},", "...", font_size=fs4, color=c1t)
        odd_pos_sol = Tex("$\\Rightarrow$One solution", font_size=fs4, color=c1t)
        odd_pos = VGroup(odd_pos_examples, odd_pos_sol).arrange(DOWN, buff=0.2).next_to(vLine, LEFT, buff=0.1)
        odd_pos.shift((odd.get_bottom()[1]-odd_pos.get_bottom()[1])*UP)

        odd_neg_examples = MathTex("\\sqrt[3]{-8},", "\\sqrt[5]{-32},", "...", font_size=fs4, color=c1t)
        odd_neg_sol = Tex("$\\Rightarrow$One solution", font_size=fs4, color=c1t)
        odd_neg = VGroup(odd_neg_examples, odd_neg_sol).arrange(DOWN, buff=0.2).next_to(vLine, RIGHT, buff=0.1)
        odd_neg.shift((odd.get_bottom()[1]-odd_neg.get_bottom()[1])*UP)

        self.add(vLine, hLine)

        center = [0.4,0,0]

        # Action Sequence
        with self.voiceover(
                text="""
                Let's get an overview of the situation when we compute roots.
                First, we can take two kinds of roots: <bookmark mark="even"/>even roots, and
                <bookmark mark="odd"/>odd roots. <bookmark mark="default1"/> An even root is when we take
                the square root, the fourth root, the sixth root, and so on. And an odd root is when we take
                the cube root, the fifth root, the seventh root, and so on.

                And we can take roots of two kinds of numbers: <bookmark mark="pos"/>positive numbers, and
                <bookmark mark="neg"/>negative numbers. <bookmark mark="default2"/> That makes for a total of
                four cases. Let's look at each of them.

                Let's start with <bookmark mark="even_positive"/> even roots of positive numbers.
                For example, <bookmark mark="evenEx1a"/>the square root of 4, or
                <bookmark mark="evenEx2a"/>the fourth root of 16.
                In these cases, there are always <bookmark mark="even_pos_sol"/>two solutions, and they are both positive.

                Now let's look at <bookmark mark="even_negative"/> even roots of negative numbers.
                For example, <bookmark mark="evenEx1b"/>the square root of negative 4, or
                <bookmark mark="evenEx2b"/>the fourth root of negative 16.
                In these cases, <bookmark mark="even_neg_sol"/>there are no solutions. <bookmark mark="default3"/>

                So quick summary, if we're taking an even root of a number x, then there are
                <bookmark mark="even_pos_sol2"/>two solutions if x is positive, and
                <bookmark mark="even_neg_sol2"/>no solutions if x is negative.

                Now let's look at <bookmark mark="odd_positive"/> odd roots of positive numbers.
                For example, <bookmark mark="oddEx1a"/>the cube root of 8, or
                <bookmark mark="oddEx2a"/>the fifth root of 32.
                In these cases, there is always <bookmark mark="odd_pos_sol"/>one solution, and it is positive.

                Finally, let's look at <bookmark mark="odd_negative"/> odd roots of negative numbers.
                For example, <bookmark mark="oddEx1b"/>the cube root of negative 8, or
                <bookmark mark="oddEx2b"/>the fifth root of negative 32.
                In these cases, there is always <bookmark mark="odd_neg_sol"/>one solution, and it is negative.

                So, final summary, if we're taking an odd root of a number x, then
                there is <bookmark mark="odd_pos_sol2"/>one solution if x is positive,
                and <bookmark mark="odd_neg_sol2"/>one solution if x is negative. <bookmark mark="default4"/>

                So those were the four cases. Try to memorize them well!
                """
         , subcaption='NOT AVAILABLE DUE TO BUG') as tracker:

            self.wait_until_bookmark("even")
            cursor.blinking=False
            x,y,_ = even.get_center()+0.4*DOWN
            self.play(Write(even), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("odd")
            cursor.blinking=False
            x,y,_ = odd.get_center()+0.4*DOWN
            self.play(Write(odd), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("default1")
            cursor.blinking=False
            x,y,_ = center
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("pos")
            cursor.blinking=False
            x,y,_ = pos.get_center()+0.4*DOWN
            self.play(Write(pos), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("neg")
            cursor.blinking=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(Write(neg), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("default2")
            cursor.blinking=False
            x,y,_ = center
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("even_positive")
            cursor.blinking=False
            x,y,_ = even_pos.get_center()
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("evenEx1a")
            cursor.blinking=False
            x,y,_ = even_pos_examples[0].get_center()+0.4*DOWN
            self.play(Write(even_pos_examples[0]), CursorMoveTo(cursor, x,y), run_time=0.2)
            
            self.wait_until_bookmark("evenEx2a")
            x,y,_ = even_pos_examples[1].get_center()+0.4*DOWN
            self.play(Write(even_pos_examples[1]), CursorMoveTo(cursor, x,y), run_time=0.2)
            
            self.wait_until_bookmark("even_pos_sol")
            x,y,_ = even_pos_sol.get_center()+0.4*DOWN
            self.play(Write(even_pos_sol), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("even_negative")
            cursor.blinking=False
            x,y,_ = even_neg.get_center()
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("evenEx1b")
            cursor.blinking=False
            x,y,_ = even_neg_examples[0].get_center()+0.4*DOWN
            self.play(Write(even_neg_examples[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("evenEx2b")
            x,y,_ = even_neg_examples[1].get_center()+0.4*DOWN
            self.play(Write(even_neg_examples[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("even_neg_sol")
            x,y,_ = even_neg_sol.get_center()+0.4*DOWN
            self.play(Write(even_neg_sol), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("default3")
            cursor.blinking=False
            x,y,_ = center
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("even_pos_sol2")
            x,y,_ = even_pos_sol.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("even_neg_sol2")
            cursor.blinking=False
            x,y,_ = even_neg_sol.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("odd_positive")
            cursor.blinking=False
            x,y,_ = odd_pos.get_center()
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("oddEx1a")
            cursor.blinking=False
            x,y,_ = odd_pos_examples[0].get_center()+0.4*DOWN
            self.play(Write(odd_pos_examples[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("oddEx2a")
            x,y,_ = odd_pos_examples[1].get_center()+0.4*DOWN
            self.play(Write(odd_pos_examples[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("odd_pos_sol")
            x,y,_ = odd_pos_sol.get_center()+0.4*DOWN
            self.play(Write(odd_pos_sol), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("odd_negative")
            cursor.blinking=False
            x,y,_ = odd_neg.get_center()
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("oddEx1b")
            cursor.blinking=False
            x,y,_ = odd_neg_examples[0].get_center()+0.4*DOWN
            self.play(Write(odd_neg_examples[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("oddEx2b")
            x,y,_ = odd_neg_examples[1].get_center()+0.4*DOWN
            self.play(Write(odd_neg_examples[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("odd_neg_sol")
            x,y,_ = odd_neg_sol.get_center()+0.4*DOWN
            self.play(Write(odd_neg_sol), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("default4")
            cursor.blinking=False
            x,y,_ = center
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

        self.wait(4)


#####################################
#####################################
class Func_5_2_I_6(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Roots $\\underset{\\text{inverse}}{\\Leftrightarrow}$ Powers")


        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=0.4)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        two = MathTex("(", "\\sqrt{2}", ")^2", "=2", font_size=fs3, color=c1t).shift(UP*1.2)
        three = MathTex("(", "\\sqrt[4]{3}", ")^4", "=3", font_size=fs3, color=c1t).next_to(two, DOWN, buff=0.2)

        four = MathTex("\\sqrt", "{4^2}", "=4", font_size=fs3, color=c1t).next_to(three, DOWN, buff=0.4)
        five = MathTex("\\sqrt", "{5^2}", "=5", font_size=fs3, color=c1t).next_to(four, DOWN, buff=0.2)

        root_k = MathTex("\\sqrt[k]{x}", "\\Leftrightarrow", "x^{\\frac{1}{k}}", font_size=fs3, color=c1t).next_to(five, DOWN, buff=0.4)
        root_3 = MathTex("\\sqrt[3]{x}", "\\Leftrightarrow", "x^{\\frac{1}{3}}", font_size=fs3, color=c1t).next_to(root_k, DOWN, buff=0.2)
        root_5 = MathTex("\\sqrt[5]{x}", "\\Leftrightarrow", "x^{\\frac{1}{5}}", font_size=fs3, color=c1t).next_to(root_3, DOWN, buff=0.2)
        


        # Action Sequence
        with self.voiceover(
                text="""
                Now we're true experts on roots. So, let's talk about the relationship of
                roots and the power function.
                
                <bookmark mark="title"/>Roots and power functions are inverse functions of each other.
                What that means, is that if we take a number, and raise it to a power, and then take the
                root of that number, we get back the original number.

                For example, if we take <bookmark mark="example1a"/>2 and take the square root of it, and then
                <bookmark mark="example1b"/>square that number, we <bookmark mark="example1c"/>get back 2. <bookmark mark="example2"/>
                If we take <bookmark mark="example2a"/>3 and take the fourth root of it, and then <bookmark mark="example2b"/>raise
                that number to the fourth power, we <bookmark mark="example2c"/>get back 3.

                This also works the other way around: if we take a number, and take the kth root of it, and then raise
                that root to the kth power, we get back the original number.

                So for example, if we start with <bookmark mark="example3a"/>4 and square it, and then
                <bookmark mark="example3b"/>take the square root of that, we <bookmark mark="example3c"/>get back 4.
                Or if we start with <bookmark mark="example4a"/>5 and square it, and then <bookmark mark="example4b"/>take
                the square root, we <bookmark mark="example4c"/>get back 5.

                For this reason, there is another way of writing roots:
                Instead of writing <bookmark mark="root_k_1"/>the kth root of x, we can write
                <bookmark mark="root_k_2"/>x to the power of 1 over k.
                So for example, <bookmark mark="root_3_1"/>the cube root of x can be written as
                <bookmark mark="root_3_2"/>x to the power of 1 third.
                And <bookmark mark="root_5_1"/>the fifth root of x can be written as
                <bookmark mark="root_5_2"/>x to the power of 1 fifth, and so on...
                """
         ) as tracker:
            
            self.wait_until_bookmark("title")
            cursor.blinking=False
            x,y,_ = title.get_center()+0.5*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("example1a")
            cursor.blinking=False
            x,y,_ = two[1].get_center()+0.4*DOWN
            self.play(Write(two[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("example1b")
            x,y,_ = two[2].get_center()+0.4*DOWN
            self.play(Write(two[0]), Write(two[2]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("example1c")
            x,y,_ = two[3].get_center()+0.4*DOWN
            self.play(Write(two[3]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("example2")
            cursor.blinking=False
            x,y,_ = two[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("example2a")
            cursor.blinking=False
            x,y,_ = three[1].get_center()+0.4*DOWN
            self.play(Write(three[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("example2b")
            x,y,_ = three[2].get_center()+0.4*DOWN
            self.play(Write(three[0]), Write(three[2]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("example2c")
            x,y,_ = three[3].get_center()+0.4*DOWN
            self.play(Write(three[3]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("example3a")
            cursor.blinking=False
            x,y,_ = four[1].get_center()+0.4*DOWN
            self.play(Write(four[1]), CursorMoveTo(cursor, x,y), run_time=0.2)
            
            self.wait_until_bookmark("example3b")
            x,y,_ = four[0].get_center()+0.4*DOWN
            self.play(Write(four[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("example3c")
            x,y,_ = four[2].get_center()+0.4*DOWN
            self.play(Write(four[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("example4a")
            cursor.blinking=False
            x,y,_ = five[1].get_center()+0.4*DOWN
            self.play(Write(five[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("example4b")
            x,y,_ = five[0].get_center()+0.4*DOWN
            self.play(Write(five[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("example4c")
            x,y,_ = five[2].get_center()+0.4*DOWN
            self.play(Write(five[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("root_k_1")
            cursor.blinking=False
            x,y,_ = root_k[0].get_center()+0.4*DOWN
            self.play(Write(root_k[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("root_k_2")
            x,y,_ = root_k[2].get_center()+0.4*DOWN
            self.play(Write(root_k[1]), Write(root_k[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("root_3_1")
            cursor.blinking=False
            x,y,_ = root_3[0].get_center()+0.4*DOWN
            self.play(Write(root_3[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("root_3_2")
            x,y,_ = root_3[2].get_center()+0.4*DOWN
            self.play(Write(root_3[1]), Write(root_3[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            self.wait_until_bookmark("root_5_1")
            cursor.blinking=False
            x,y,_ = root_5[0].get_center()+0.4*DOWN
            self.play(Write(root_5[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("root_5_2")
            x,y,_ = root_5[2].get_center()+0.4*DOWN
            self.play(Write(root_5[1]), Write(root_5[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.blinking=True

            
        self.wait(4)


#####################################
#####################################
# class Func_5_2_I_6(SophiaCursorScene):

#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         title = self.add_title("Roots $\\underset{\\text{inverse}}{\\Leftrightarrow}$ Powers")


#         def cursor_sound_updater(mob, dt):
#             if mob.needSound:
#                 mob.needSound = False
#                 self.add_cursor_sound()
#         cursor = AltCursor(stroke_width=0.0, blinking=True, x=0.4)
#         cursor.autoFadeBackground = True
#         cursor.add_updater(cursor_sound_updater)
#         self.add(cursor)

#         two = MathTex("(", "\\sqrt{2}", ")^2", "=2", font_size=fs3, color=c1t).shift(UP*1.2)
#         three = MathTex("(", "\\sqrt[4]{3}", ")^4", "=3", font_size=fs3, color=c1t).next_to(two, DOWN, buff=0.2)

#         four = MathTex("\\sqrt", "{4^2}", "=4", font_size=fs3, color=c1t).next_to(three, DOWN, buff=0.4)
#         five = MathTex("\\sqrt", "{5^2}", "=5", font_size=fs3, color=c1t).next_to(four, DOWN, buff=0.2)

#         root_k = MathTex("\\sqrt[k]{x}", "\\Leftrightarrow", "x^{\\frac{1}{k}}", font_size=fs3, color=c1t).next_to(five, DOWN, buff=0.4)
#         root_3 = MathTex("\\sqrt[3]{x}", "\\Leftrightarrow", "x^{\\frac{1}{3}}", font_size=fs3, color=c1t).next_to(root_k, DOWN, buff=0.2)
#         root_5 = MathTex("\\sqrt[5]{x}", "\\Leftrightarrow", "x^{\\frac{1}{5}}", font_size=fs3, color=c1t).next_to(root_3, DOWN, buff=0.2)
        


#         # Action Sequence
#         with self.voiceover(
#                 text="""
#                 So what's the cube root of 6 to the power of 3? Well, we can use the fact that
#                 """
#          ) as tracker:
            
#             self.wait_until_bookmark("title")
#             cursor.blinking=False
#             x,y,_ = title.get_center()+0.5*DOWN
#             self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
#             cursor.blinking=True

#             self.wait_until_bookmark("example1a")
#             cursor.blinking=False
#             x,y,_ = two[1].get_center()+0.4*DOWN
#             self.play(Write(two[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("example1b")
#             x,y,_ = two[2].get_center()+0.4*DOWN
#             self.play(Write(two[0]), Write(two[2]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("example1c")
#             x,y,_ = two[3].get_center()+0.4*DOWN
#             self.play(Write(two[3]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("example2")
#             cursor.blinking=False
#             x,y,_ = two[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
#             cursor.blinking=True

#             self.wait_until_bookmark("example2a")
#             cursor.blinking=False
#             x,y,_ = three[1].get_center()+0.4*DOWN
#             self.play(Write(three[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("example2b")
#             x,y,_ = three[2].get_center()+0.4*DOWN
#             self.play(Write(three[0]), Write(three[2]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("example2c")
#             x,y,_ = three[3].get_center()+0.4*DOWN
#             self.play(Write(three[3]), CursorMoveTo(cursor, x,y), run_time=0.2)
#             cursor.blinking=True

#             self.wait_until_bookmark("example3a")
#             cursor.blinking=False
#             x,y,_ = four[1].get_center()+0.4*DOWN
#             self.play(Write(four[1]), CursorMoveTo(cursor, x,y), run_time=0.2)
            
#             self.wait_until_bookmark("example3b")
#             x,y,_ = four[0].get_center()+0.4*DOWN
#             self.play(Write(four[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("example3c")
#             x,y,_ = four[2].get_center()+0.4*DOWN
#             self.play(Write(four[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
#             cursor.blinking=True

#             self.wait_until_bookmark("example4a")
#             cursor.blinking=False
#             x,y,_ = five[1].get_center()+0.4*DOWN
#             self.play(Write(five[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("example4b")
#             x,y,_ = five[0].get_center()+0.4*DOWN
#             self.play(Write(five[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("example4c")
#             x,y,_ = five[2].get_center()+0.4*DOWN
#             self.play(Write(five[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
#             cursor.blinking=True

#             self.wait_until_bookmark("root_k_1")
#             cursor.blinking=False
#             x,y,_ = root_k[0].get_center()+0.4*DOWN
#             self.play(Write(root_k[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("root_k_2")
#             x,y,_ = root_k[2].get_center()+0.4*DOWN
#             self.play(Write(root_k[1]), Write(root_k[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
#             cursor.blinking=True

#             self.wait_until_bookmark("root_3_1")
#             cursor.blinking=False
#             x,y,_ = root_3[0].get_center()+0.4*DOWN
#             self.play(Write(root_3[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("root_3_2")
#             x,y,_ = root_3[2].get_center()+0.4*DOWN
#             self.play(Write(root_3[1]), Write(root_3[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
#             cursor.blinking=True

#             self.wait_until_bookmark("root_5_1")
#             cursor.blinking=False
#             x,y,_ = root_5[0].get_center()+0.4*DOWN
#             self.play(Write(root_5[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("root_5_2")
#             x,y,_ = root_5[2].get_center()+0.4*DOWN
#             self.play(Write(root_5[1]), Write(root_5[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
#             cursor.blinking=True

            
#         self.wait(4)


PROTOTYPES=[
    PagePrototypeVideo.from_scene(Func_5_2_I_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_5_2_I_1_q, Func_5_2_I_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_5_2_I_1_a),
    PagePrototypeVideo.from_scene(Func_5_2_I_1_b),
    PagePrototypeVideo.from_scene(Func_5_2_I_1_c),
    PagePrototypeVideo.from_scene(Func_5_2_I_1_d),
    PagePrototypeVideo.from_scene(Func_5_2_I_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_5_2_I_2_q, Func_5_2_I_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_5_2_I_2_a),
    PagePrototypeVideo.from_scene(Func_5_2_I_2_b),
    PagePrototypeVideo.from_scene(Func_5_2_I_2_c),
    PagePrototypeVideo.from_scene(Func_5_2_I_2_d),
    PagePrototypeVideo.from_scene(Func_5_2_I_3),
    PagePrototypeVideo.from_scene(Func_5_2_I_4_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_5_2_I_4_q, Func_5_2_I_4_q.__name__),
    PagePrototypeVideo.from_scene(Func_5_2_I_4_a),
    PagePrototypeVideo.from_scene(Func_5_2_I_4_b),
    PagePrototypeVideo.from_scene(Func_5_2_I_4_c),
    PagePrototypeVideo.from_scene(Func_5_2_I_4_d),
    PagePrototypeVideo.from_scene(Func_5_2_I_5_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_5_2_I_5_q, Func_5_2_I_5_q.__name__),
    PagePrototypeVideo.from_scene(Func_5_2_I_5_a),
    PagePrototypeVideo.from_scene(Func_5_2_I_5_b),
    PagePrototypeVideo.from_scene(Func_5_2_I_5_c),
    PagePrototypeVideo.from_scene(Func_5_2_I_5_d),
    PagePrototypeVideo.from_scene(Func_5_2_I_6),
]