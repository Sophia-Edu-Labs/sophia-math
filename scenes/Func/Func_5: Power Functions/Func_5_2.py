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
import ast

#####################################
#####################################
class Func_5_2_I_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\sqrt{2}$", "$2$", "$4$", "24"],
            correctAnswerIndex = 1,
            questionText=self.translate("Func_5_2.I1.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I1.q.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
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
                text=self.translate("Func_5_2.I1.q.voiceover")
        ) as tracker:

            self.wait_until_bookmark("rootx1")
            cursor.idle=False
            x,y,_ = root_general[0].get_center()+0.4*DOWN
            self.play(Write(root_general), CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("rootx2")
            x,y,_ = root_general[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("rootx3")
            x,y,_ = root_general[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("root4")
            cursor.idle=False
            x,y,_ = root_four.get_center()+0.4*DOWN
            self.play(Write(root_four), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True
            
            self.wait_until_bookmark("root9")
            cursor.idle=False
            x,y,_ = root_nine.get_center()+0.4*DOWN
            self.play(Write(root_nine), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("2root")
            self.play(TransformMatchingTex(root_general, root_general_2), TransformMatchingTex(root_four, root_four_2), TransformMatchingTex(root_nine, root_nine_2), run_time=2)

            self.wait_until_bookmark("deco")
            self.draw_decorative_line(cursor, 0.6, run_time=4)

            self.wait_until_bookmark("Crootx1")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("q")
            cursor.idle=False
            x,y,_ = root_four_3.get_center()+0.4*DOWN
            self.play(Write(root_four_3), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_5_2_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I1.q.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
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
                text=self.translate("General.incorrect_4")+self.translate("Func_5_2.I1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("intro")
            cursor.idle=False
            x,y,_ = root_eight.get_center()+0.4*DOWN
            self.play(Write(root_eight), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("two1")
            cursor.idle=False
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
            cursor.idle=False

            self.wait_until_bookmark("sol")
            x,y,_ = sol.get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("sol2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.idle=True
        
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_5_2_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I1.q.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
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
                text=self.translate("General.correct_4")+self.translate("Func_5_2.I1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("intro")
            cursor.idle=False
            x,y,_ = root_eight.get_center()+0.4*DOWN
            self.play(Write(root_eight), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("two1")
            cursor.idle=False
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
            cursor.idle=False

            self.wait_until_bookmark("sol")
            x,y,_ = sol.get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("sol2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.idle=True
        
        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_5_2_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I1.q.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
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
                text=self.translate("General.incorrect_4")+self.translate("Func_5_2.I1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("intro")
            cursor.idle=False
            x,y,_ = root_eight.get_center()+0.4*DOWN
            self.play(Write(root_eight), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("two1")
            cursor.idle=False
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
            cursor.idle=False

            self.wait_until_bookmark("sol")
            x,y,_ = sol.get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("sol2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.idle=True
        
        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_5_2_I_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I1.q.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
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
                text=self.translate("General.incorrect_4")+self.translate("Func_5_2.I1.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("intro")
            cursor.idle=False
            x,y,_ = root_eight.get_center()+0.4*DOWN
            self.play(Write(root_eight), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("two1")
            cursor.idle=False
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
            cursor.idle=False

            self.wait_until_bookmark("sol")
            x,y,_ = sol.get_center()+0.4*DOWN
            self.play(Write(sol), CursorMoveTo(cursor, x,y), run_time=0.5)

            self.wait_until_bookmark("sol2")
            x,y,_ = sol[-1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x,y), run_time=0.5)
            cursor.idle=True
        
        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_5_2_I_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$4$", "$-2$", "$\{-2,2\}$", "$2$"],
            correctAnswerIndex = 2,
            questionText=self.translate("Func_5_2.I2.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I1.q.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        n_times = self.translate("General.n_times")

        root_general_2 = MathTex("\\sqrt[2]{x}","\\cdot","\\sqrt[2]{x}","=", "x", color=c1t, font_size = fs1).shift(UP)
        root_general_3 = MathTex("\\sqrt[3]{x}","\\cdot","\\sqrt[3]{x}","\\cdot","\\sqrt[3]{x}","=", "x", color=c1t, font_size = fs1).next_to(root_general_2, DOWN, buff=0.2)
        root_general_4 = MathTex("\\sqrt[3]{x}","\\cdot","\\sqrt[3]{x}","\\cdot","\\sqrt[3]{x}","\\cdot","\\sqrt[3]{x}","=", "x", color=c1t, font_size = fs1).next_to(root_general_3, DOWN, buff=0.2)
        dots = MathTex("\\hdots", color=c1t, font_size=fs1).next_to(root_general_4, DOWN, buff=0.1)
        root_general_n = MathTex("\\sqrt[n]{x}","\\cdot", "\\overset{\\text{"+n_times+"}}{\\hdots}","\\cdot", "\\sqrt[n]{x}", "=", "x", color=c1t, font_size = fs2).next_to(dots, DOWN, buff=0.2)
        root_four_4 = MathTex("\\sqrt[4]{16}","=", "?", color=c1t, font_size = fs1).next_to(root_general_n, DOWN, buff=0.4)


        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_5_2.I2.q.voiceover")
        ) as tracker:
            
            cursor.idle=False
            x,y,_ = root_general_2.get_center()+0.4*DOWN
            self.play(Write(root_general_2), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("cube")
            cursor.idle=False
            x,y,_ = root_general_3.get_center()+0.4*DOWN
            self.play(Write(root_general_3), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("dots")
            cursor.idle=False
            x,y,_ = dots.get_center()+0.4*DOWN
            self.play(Write(dots), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("n")
            cursor.idle=False
            x,y,_ = root_general_n.get_center()+0.4*DOWN
            self.play(Write(root_general_n), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("q")
            cursor.idle=False
            x,y,_ = root_four_4.get_center()+0.4*DOWN
            self.play(Write(root_four_4), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_5_2_I_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I1.q.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
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
                text=self.translate("General.incorrect_6")+self.translate("Func_5_2.I2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("root4")
            cursor.idle=False
            x,y,_ = root_four_4.get_center()+0.4*DOWN
            self.play(Write(root_four_4), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("rootTwo")
            cursor.idle=False
            x,y,_ = root_four_two.get_center()+0.4*DOWN
            self.play(Write(root_four_two), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("two1")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("rootNegTwo")
            cursor.idle=False
            x,y,_ = root_four_negtwo.get_center()+0.4*DOWN
            self.play(Write(root_four_negtwo), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("negTwo1")
            cursor.idle=False
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
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_5_2_I_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I1.q.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
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
                text=self.translate("General.incorrect_6")+self.translate("Func_5_2.I2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("root4")
            cursor.idle=False
            x,y,_ = root_four_4.get_center()+0.4*DOWN
            self.play(Write(root_four_4), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("rootTwo")
            cursor.idle=False
            x,y,_ = root_four_two.get_center()+0.4*DOWN
            self.play(Write(root_four_two), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("two1")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("rootNegTwo")
            cursor.idle=False
            x,y,_ = root_four_negtwo.get_center()+0.4*DOWN
            self.play(Write(root_four_negtwo), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("negTwo1")
            cursor.idle=False
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
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_5_2_I_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I1.q.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
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
                text=self.translate("General.correct_6")+self.translate("Func_5_2.I2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("root4")
            cursor.idle=False
            x,y,_ = root_four_4.get_center()+0.4*DOWN
            self.play(Write(root_four_4), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("rootTwo")
            cursor.idle=False
            x,y,_ = root_four_two.get_center()+0.4*DOWN
            self.play(Write(root_four_two), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("two1")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("rootNegTwo")
            cursor.idle=False
            x,y,_ = root_four_negtwo.get_center()+0.4*DOWN
            self.play(Write(root_four_negtwo), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("negTwo1")
            cursor.idle=False
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
            cursor.idle=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_5_2_I_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I1.q.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
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
                text=self.translate("General.incorrect_6")+self.translate("Func_5_2.I2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("root4")
            cursor.idle=False
            x,y,_ = root_four_4.get_center()+0.4*DOWN
            self.play(Write(root_four_4), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("rootTwo")
            cursor.idle=False
            x,y,_ = root_four_two.get_center()+0.4*DOWN
            self.play(Write(root_four_two), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("two1")
            cursor.idle=False
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
            cursor.idle=True

            self.wait_until_bookmark("rootNegTwo")
            cursor.idle=False
            x,y,_ = root_four_negtwo.get_center()+0.4*DOWN
            self.play(Write(root_four_negtwo), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("negTwo1")
            cursor.idle=False
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
            cursor.idle=True

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

        self.add_title(self.translate("Func_5_2.I1.q.title"))

        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, idle=True, x=x, y=y)
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
        even_exp, odd_exp = self.translate("Func_5_2.I3.even"), self.translate("Func_5_2.I3.odd")
        even = Tex(even_exp, font_size=fs4, color=BLUE)
        odd = Tex(odd_exp, font_size=fs4, color=GREEN)
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
                text=self.translate("Func_5_2.I3.voiceover")
        , subcaption='NOT AVAILABLE DUE TO BUG') as tracker:

            self.wait_until_bookmark("even")
            cursor.idle=False
            x,y,_ = g1.get_start()
            self.play(Write(fTex1), CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g1))
            cursor.idle=True
            
            self.wait_until_bookmark("evenSymmetry")
            copy = g1.copy().set_color(GREY).set_stroke_width(1)
            self.add(copy)
            self.bring_to_back(copy)
            self.play(Rotate(g1, about_point=plane.c2p(0,0),axis=UP ,angle=PI))
            self.wait(0.5)
            self.play(Rotate(g1, about_point=plane.c2p(0,0),axis=UP , angle=PI, run_time=0.3))
            self.remove(copy)

            self.wait_until_bookmark("odd")
            cursor.idle=False
            x,y,_ = g2.get_start()
            self.play(TransformMatchingTex(fTex1, fTex2), CursorMoveTo(cursor, x, y), Unwrite(g1), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g2.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g2))
            cursor.idle=True

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
            cursor.idle=False
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
            cursor.idle = True

            self.wait_until_bookmark("so_on")
            self.play(Write(dots_even), Write(dots_odd))
            
            self.wait_until_bookmark("one_root_2")
            cursor.idle=False
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
            cursor.idle = True

            self.wait_until_bookmark("neg_1_root_2")
            cursor.idle=False
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
            cursor.idle = True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)



#####################################
#####################################
class Func_5_2_I_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_5_2.I4.q.answer-options")),
            correctAnswerIndex=0,
            questionText=self.translate("Func_5_2.I4.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I4.q.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        
        root_general = Tex("$\\sqrt[k]{x}$", ",     ", self.translate("Func_5_2.I4.q.root_general"), color=c1t, font_size = fs1).shift(UP*2)
        Q1 = Tex(self.translate("Func_5_2.I4.q.Q1"), color=c1t, font_size = fs2)
        Q2a = Tex(self.translate("Func_5_2.I4.q.Q2a"), color=c3t, font_size = fs2)
        Q2b = Tex(self.translate("Func_5_2.I4.q.Q2b"), color=c3t, font_size = fs2)
        Q2 = VGroup(Q2a, Q2b)
        Q = VGroup(Q1, Q2a, Q2b).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(root_general, DOWN, buff=0.4)
        Q2.shift(RIGHT*0.6+DOWN*0.2)
        
        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_5_2.I4.q.voiceover")
        ) as tracker:

            self.wait_until_bookmark("root")
            cursor.idle=False
            x,y,_ = root_general.get_center()+0.4*DOWN
            self.play(Write(root_general), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("Q1")
            cursor.idle=False
            x,y,_ = Q1.get_center()+0.4*DOWN
            self.play(Write(Q1), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("Q2a")
            cursor.idle=False
            x,y,_ = Q2a.get_center()+0.4*DOWN
            self.play(Write(Q2a), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("Q2b")
            cursor.idle=False
            x,y,_ = Q2b.get_center()+0.4*DOWN
            self.play(Write(Q2b), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True


class Func_5_2_I_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I4.a.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        divLine = Line([0,-1.8,0], [0,2,0], color=c1t)
        pos = Tex(self.translate("Func_5_2.I4.a.xpos"), font_size=fs3, color=BLUE)
        neg = Tex(self.translate("Func_5_2.I4.a.xneg"), font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(divLine, UP, buff=0.2)
        self.add(divLine, pos_neg)

        ex_1_pos = MathTex("\\sqrt[2]{4}", "=", "\\pm 2", font_size=fs3, color=BLUE).next_to(pos, DOWN, buff=0.8)
        ex_1_neg = MathTex("\\sqrt[2]{-4}", font_size=fs3, color=GREEN).next_to(neg, DOWN, buff=0.8)
        sout_1 = Cross(color=RED, stroke_width=2).move_to(ex_1_neg).scale(ex_1_neg.get_width()/Cross().get_width())
        ex_2_pos = MathTex("\\sqrt[4]{16}", "=", "\\pm 2", font_size=fs3, color=BLUE).next_to(ex_1_pos, DOWN, buff=0.2)
        ex_2_neg = MathTex("\\sqrt[4]{-16}", font_size=fs3, color=GREEN).next_to(ex_1_neg, DOWN, buff=0.2)
        sout_2 = Cross(color=RED, stroke_width=2).move_to(ex_2_neg).scale(ex_2_neg.get_width()/Cross().get_width())

        result_pos_1 = Tex(self.translate("Func_5_2.I4.a.xpos"), font_size=fs3, color=BLUE).next_to(ex_2_pos, DOWN, buff=0.8)
        result_pos_2 = MathTex("\\Downarrow", font_size=fs3, color=BLUE).next_to(result_pos_1, DOWN, buff=0.2)
        result_pos3 = Tex(self.translate("Func_5_2.I4.a.twosol"), font_size=fs3, color=BLUE).next_to(result_pos_2, DOWN, buff=0.2)

        result_neg_1 = Tex(self.translate("Func_5_2.I4.a.xneg"), font_size=fs3, color=GREEN).next_to(ex_2_neg, DOWN, buff=0.8)
        result_neg_2 = MathTex("\\Downarrow", font_size=fs3, color=GREEN).next_to(result_neg_1, DOWN, buff=0.2)
        result_neg3 = Tex(self.translate("Func_5_2.I4.a.nosol"), font_size=fs3, color=GREEN).next_to(result_neg_2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("General.correct_4")+self.translate("Func_5_2.I4.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("posEx1a")
            cursor.idle=False
            x,y,_ = ex_1_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx2a")
            x,y,_ = ex_2_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx1b")
            x,y,_ = ex_1_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[1]), Write(ex_1_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("posEx2b")
            cursor.idle=False
            x,y,_ = ex_2_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[1]), Write(ex_2_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("result_pos_1")
            cursor.idle=False
            x,y,_ = result_pos_1.get_center()+0.4*DOWN
            self.play(Write(result_pos_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_pos_3")
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(Write(result_pos_2), Write(result_pos3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("xNeg")
            cursor.idle=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("negEx1a")
            cursor.idle=False
            x,y,_ = ex_1_neg.get_center()+0.4*DOWN
            self.play(Write(ex_1_neg), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negEx2a")
            x,y,_ = ex_2_neg.get_center()+0.4*DOWN
            self.play(Write(ex_2_neg), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("strike_out")
            self.play(Write(sout_1), Write(sout_2))

            self.wait_until_bookmark("result_neg_1")
            cursor.idle=False
            x,y,_ = result_neg_1.get_center()+0.4*DOWN
            self.play(Write(result_neg_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_neg_3")
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(Write(result_neg_2), Write(result_neg3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("default")
            cursor.idle=False
            x,y,_ = ORIGIN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("summary_two")
            cursor.idle=False
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("summary_no")
            cursor.idle=False
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

        self.wait(4)


class Func_5_2_I_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I4.a.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        divLine = Line([0,-1.8,0], [0,2,0], color=c1t)
        pos = Tex(self.translate("Func_5_2.I4.a.xpos"), font_size=fs3, color=BLUE)
        neg = Tex(self.translate("Func_5_2.I4.a.xneg"), font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(divLine, UP, buff=0.2)
        self.add(divLine, pos_neg)

        ex_1_pos = MathTex("\\sqrt[2]{4}", "=", "\\pm 2", font_size=fs3, color=BLUE).next_to(pos, DOWN, buff=0.8)
        ex_1_neg = MathTex("\\sqrt[2]{-4}", font_size=fs3, color=GREEN).next_to(neg, DOWN, buff=0.8)
        sout_1 = Cross(color=RED, stroke_width=2).move_to(ex_1_neg).scale(ex_1_neg.get_width()/Cross().get_width())
        ex_2_pos = MathTex("\\sqrt[4]{16}", "=", "\\pm 2", font_size=fs3, color=BLUE).next_to(ex_1_pos, DOWN, buff=0.2)
        ex_2_neg = MathTex("\\sqrt[4]{-16}", font_size=fs3, color=GREEN).next_to(ex_1_neg, DOWN, buff=0.2)
        sout_2 = Cross(color=RED, stroke_width=2).move_to(ex_2_neg).scale(ex_2_neg.get_width()/Cross().get_width())

        result_pos_1 = Tex(self.translate("Func_5_2.I4.a.xpos"), font_size=fs3, color=BLUE).next_to(ex_2_pos, DOWN, buff=0.8)
        result_pos_2 = MathTex("\\Downarrow", font_size=fs3, color=BLUE).next_to(result_pos_1, DOWN, buff=0.2)
        result_pos3 = Tex(self.translate("Func_5_2.I4.a.twosol"), font_size=fs3, color=BLUE).next_to(result_pos_2, DOWN, buff=0.2)

        result_neg_1 = Tex(self.translate("Func_5_2.I4.a.xneg"), font_size=fs3, color=GREEN).next_to(ex_2_neg, DOWN, buff=0.8)
        result_neg_2 = MathTex("\\Downarrow", font_size=fs3, color=GREEN).next_to(result_neg_1, DOWN, buff=0.2)
        result_neg3 = Tex(self.translate("Func_5_2.I4.a.nosol"), font_size=fs3, color=GREEN).next_to(result_neg_2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_5_2.I4.b.voiceover")
        ) as tracker:

            self.wait_until_bookmark("posEx1a")
            cursor.idle=False
            x,y,_ = ex_1_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx2a")
            x,y,_ = ex_2_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx1b")
            x,y,_ = ex_1_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[1]), Write(ex_1_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("posEx2b")
            cursor.idle=False
            x,y,_ = ex_2_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[1]), Write(ex_2_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("result_pos_1")
            cursor.idle=False
            x,y,_ = result_pos_1.get_center()+0.4*DOWN
            self.play(Write(result_pos_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_pos_3")
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(Write(result_pos_2), Write(result_pos3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("xNeg")
            cursor.idle=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("negEx1a")
            cursor.idle=False
            x,y,_ = ex_1_neg.get_center()+0.4*DOWN
            self.play(Write(ex_1_neg), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negEx2a")
            x,y,_ = ex_2_neg.get_center()+0.4*DOWN
            self.play(Write(ex_2_neg), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("strike_out")
            self.play(Write(sout_1), Write(sout_2))

            self.wait_until_bookmark("result_neg_1")
            cursor.idle=False
            x,y,_ = result_neg_1.get_center()+0.4*DOWN
            self.play(Write(result_neg_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_neg_3")
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(Write(result_neg_2), Write(result_neg3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("default")
            cursor.idle=False
            x,y,_ = ORIGIN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("summary_two")
            cursor.idle=False
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("summary_no")
            cursor.idle=False
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

        self.wait(4)

class Func_5_2_I_4_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I4.a.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        divLine = Line([0,-1.8,0], [0,2,0], color=c1t)
        pos = Tex(self.translate("Func_5_2.I4.a.xpos"), font_size=fs3, color=BLUE)
        neg = Tex(self.translate("Func_5_2.I4.a.xneg"), font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(divLine, UP, buff=0.2)
        self.add(divLine, pos_neg)

        ex_1_pos = MathTex("\\sqrt[2]{4}", "=", "\\pm 2", font_size=fs3, color=BLUE).next_to(pos, DOWN, buff=0.8)
        ex_1_neg = MathTex("\\sqrt[2]{-4}", font_size=fs3, color=GREEN).next_to(neg, DOWN, buff=0.8)
        sout_1 = Cross(color=RED, stroke_width=2).move_to(ex_1_neg).scale(ex_1_neg.get_width()/Cross().get_width())
        ex_2_pos = MathTex("\\sqrt[4]{16}", "=", "\\pm 2", font_size=fs3, color=BLUE).next_to(ex_1_pos, DOWN, buff=0.2)
        ex_2_neg = MathTex("\\sqrt[4]{-16}", font_size=fs3, color=GREEN).next_to(ex_1_neg, DOWN, buff=0.2)
        sout_2 = Cross(color=RED, stroke_width=2).move_to(ex_2_neg).scale(ex_2_neg.get_width()/Cross().get_width())

        result_pos_1 = Tex(self.translate("Func_5_2.I4.a.xpos"), font_size=fs3, color=BLUE).next_to(ex_2_pos, DOWN, buff=0.8)
        result_pos_2 = MathTex("\\Downarrow", font_size=fs3, color=BLUE).next_to(result_pos_1, DOWN, buff=0.2)
        result_pos3 = Tex(self.translate("Func_5_2.I4.a.twosol"), font_size=fs3, color=BLUE).next_to(result_pos_2, DOWN, buff=0.2)

        result_neg_1 = Tex(self.translate("Func_5_2.I4.a.xneg"), font_size=fs3, color=GREEN).next_to(ex_2_neg, DOWN, buff=0.8)
        result_neg_2 = MathTex("\\Downarrow", font_size=fs3, color=GREEN).next_to(result_neg_1, DOWN, buff=0.2)
        result_neg3 = Tex(self.translate("Func_5_2.I4.a.nosol"), font_size=fs3, color=GREEN).next_to(result_neg_2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_5_2.I4.b.voiceover")
        ) as tracker:

            self.wait_until_bookmark("posEx1a")
            cursor.idle=False
            x,y,_ = ex_1_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx2a")
            x,y,_ = ex_2_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx1b")
            x,y,_ = ex_1_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[1]), Write(ex_1_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("posEx2b")
            cursor.idle=False
            x,y,_ = ex_2_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[1]), Write(ex_2_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("result_pos_1")
            cursor.idle=False
            x,y,_ = result_pos_1.get_center()+0.4*DOWN
            self.play(Write(result_pos_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_pos_3")
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(Write(result_pos_2), Write(result_pos3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("xNeg")
            cursor.idle=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("negEx1a")
            cursor.idle=False
            x,y,_ = ex_1_neg.get_center()+0.4*DOWN
            self.play(Write(ex_1_neg), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negEx2a")
            x,y,_ = ex_2_neg.get_center()+0.4*DOWN
            self.play(Write(ex_2_neg), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("strike_out")
            self.play(Write(sout_1), Write(sout_2))

            self.wait_until_bookmark("result_neg_1")
            cursor.idle=False
            x,y,_ = result_neg_1.get_center()+0.4*DOWN
            self.play(Write(result_neg_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_neg_3")
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(Write(result_neg_2), Write(result_neg3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("default")
            cursor.idle=False
            x,y,_ = ORIGIN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("summary_two")
            cursor.idle=False
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("summary_no")
            cursor.idle=False
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

        self.wait(4)

class Func_5_2_I_4_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I4.a.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        divLine = Line([0,-1.8,0], [0,2,0], color=c1t)
        pos = Tex(self.translate("Func_5_2.I4.a.xpos"), font_size=fs3, color=BLUE)
        neg = Tex(self.translate("Func_5_2.I4.a.xneg"), font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(divLine, UP, buff=0.2)
        self.add(divLine, pos_neg)

        ex_1_pos = MathTex("\\sqrt[2]{4}", "=", "\\pm 2", font_size=fs3, color=BLUE).next_to(pos, DOWN, buff=0.8)
        ex_1_neg = MathTex("\\sqrt[2]{-4}", font_size=fs3, color=GREEN).next_to(neg, DOWN, buff=0.8)
        sout_1 = Cross(color=RED, stroke_width=2).move_to(ex_1_neg).scale(ex_1_neg.get_width()/Cross().get_width())
        ex_2_pos = MathTex("\\sqrt[4]{16}", "=", "\\pm 2", font_size=fs3, color=BLUE).next_to(ex_1_pos, DOWN, buff=0.2)
        ex_2_neg = MathTex("\\sqrt[4]{-16}", font_size=fs3, color=GREEN).next_to(ex_1_neg, DOWN, buff=0.2)
        sout_2 = Cross(color=RED, stroke_width=2).move_to(ex_2_neg).scale(ex_2_neg.get_width()/Cross().get_width())

        result_pos_1 = Tex(self.translate("Func_5_2.I4.a.xpos"), font_size=fs3, color=BLUE).next_to(ex_2_pos, DOWN, buff=0.8)
        result_pos_2 = MathTex("\\Downarrow", font_size=fs3, color=BLUE).next_to(result_pos_1, DOWN, buff=0.2)
        result_pos3 = Tex(self.translate("Func_5_2.I4.a.twosol"), font_size=fs3, color=BLUE).next_to(result_pos_2, DOWN, buff=0.2)

        result_neg_1 = Tex(self.translate("Func_5_2.I4.a.xneg"), font_size=fs3, color=GREEN).next_to(ex_2_neg, DOWN, buff=0.8)
        result_neg_2 = MathTex("\\Downarrow", font_size=fs3, color=GREEN).next_to(result_neg_1, DOWN, buff=0.2)
        result_neg3 = Tex(self.translate("Func_5_2.I4.a.nosol"), font_size=fs3, color=GREEN).next_to(result_neg_2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_5_2.I4.b.voiceover")
        ) as tracker:

            self.wait_until_bookmark("posEx1a")
            cursor.idle=False
            x,y,_ = ex_1_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx2a")
            x,y,_ = ex_2_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx1b")
            x,y,_ = ex_1_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[1]), Write(ex_1_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("posEx2b")
            cursor.idle=False
            x,y,_ = ex_2_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[1]), Write(ex_2_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("result_pos_1")
            cursor.idle=False
            x,y,_ = result_pos_1.get_center()+0.4*DOWN
            self.play(Write(result_pos_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_pos_3")
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(Write(result_pos_2), Write(result_pos3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("xNeg")
            cursor.idle=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("negEx1a")
            cursor.idle=False
            x,y,_ = ex_1_neg.get_center()+0.4*DOWN
            self.play(Write(ex_1_neg), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negEx2a")
            x,y,_ = ex_2_neg.get_center()+0.4*DOWN
            self.play(Write(ex_2_neg), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("strike_out")
            self.play(Write(sout_1), Write(sout_2))

            self.wait_until_bookmark("result_neg_1")
            cursor.idle=False
            x,y,_ = result_neg_1.get_center()+0.4*DOWN
            self.play(Write(result_neg_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_neg_3")
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(Write(result_neg_2), Write(result_neg3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("default")
            cursor.idle=False
            x,y,_ = ORIGIN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("summary_two")
            cursor.idle=False
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("summary_no")
            cursor.idle=False
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

        self.wait(4)


#####################################
#####################################
class Func_5_2_I_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_5_2.I5.q.answer-options")),
            correctAnswerIndex=2,
            questionText=self.translate("Func_5_2.I5.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I5.q.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        root_general = Tex("$\\sqrt[k]{x}$", ",     ", self.translate("Func_5_2.I5.q.root_general"), color=c1t, font_size = fs1).shift(UP*2)
        Q1 = Tex(self.translate("Func_5_2.I5.q.Q1"), color=c1t, font_size = fs2)
        Q2a = Tex(self.translate("Func_5_2.I5.q.Q2a"), color=c3t, font_size = fs2)
        Q2b = Tex(self.translate("Func_5_2.I5.q.Q2b"), color=c3t, font_size = fs2)
        Q2 = VGroup(Q2a, Q2b)
        Q = VGroup(Q1, Q2a, Q2b).arrange(DOWN, buff=0.2, aligned_edge=LEFT).next_to(root_general, DOWN, buff=0.4)
        Q2.shift(RIGHT*0.6+DOWN*0.2)
        
        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        plane = cords[0]


        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_5_2.I5.q.voiceover")
        ) as tracker:

            self.wait_until_bookmark("root")
            cursor.idle=False
            x,y,_ = root_general.get_center()+0.4*DOWN
            self.play(Write(root_general), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("Q1")
            cursor.idle=False
            x,y,_ = Q1.get_center()+0.4*DOWN
            self.play(Write(Q1), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("Q2a")
            cursor.idle=False
            x,y,_ = Q2a.get_center()+0.4*DOWN
            self.play(Write(Q2a), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True

            self.wait_until_bookmark("Q2b")
            cursor.idle=False
            x,y,_ = Q2b.get_center()+0.4*DOWN
            self.play(Write(Q2b), CursorMoveTo(cursor, x,y), run_time=0.5)
            cursor.idle=True


class Func_5_2_I_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I5.a.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        divLine = Line([0,-1.8,0], [0,2,0], color=c1t)
        pos = Tex(self.translate("Func_5_2.I5.a.xpos"), font_size=fs3, color=BLUE)
        neg = Tex(self.translate("Func_5_2.I5.a.xneg"), font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(divLine, UP, buff=0.2)
        self.add(divLine, pos_neg)

        ex_1_pos = MathTex("\\sqrt[3]{8}", "=", " 2", font_size=fs3, color=BLUE).next_to(pos, DOWN, buff=0.8)
        ex_1_neg = MathTex("\\sqrt[3]{-8}", "=", "-2",  font_size=fs3, color=GREEN).next_to(neg, DOWN, buff=0.8)
        ex_2_pos = MathTex("\\sqrt[5]{32}", "=", "2", font_size=fs3, color=BLUE).next_to(ex_1_pos, DOWN, buff=0.2)
        ex_2_neg = MathTex("\\sqrt[5]{-32}", "=", "-2", font_size=fs3, color=GREEN).next_to(ex_1_neg, DOWN, buff=0.2)

        result_pos_1 = Tex(self.translate("Func_5_2.I5.a.xpos"), font_size=fs3, color=BLUE).next_to(ex_2_pos, DOWN, buff=0.8)
        result_pos_2 = MathTex("\\Downarrow", font_size=fs3, color=BLUE).next_to(result_pos_1, DOWN, buff=0.2)
        result_pos3 = Tex(self.translate("Func_5_2.I5.a.onesol"), font_size=fs3, color=BLUE).next_to(result_pos_2, DOWN, buff=0.2)

        result_neg_1 = Tex(self.translate("Func_5_2.I5.a.xpos"), font_size=fs3, color=GREEN).next_to(ex_2_neg, DOWN, buff=0.8)
        result_neg_2 = MathTex("\\Downarrow", font_size=fs3, color=GREEN).next_to(result_neg_1, DOWN, buff=0.2)
        result_neg3 = Tex(self.translate("Func_5_2.I5.a.onesol"), font_size=fs3, color=GREEN).next_to(result_neg_2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_5_2.I5.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("posEx1a")
            cursor.idle=False
            x,y,_ = ex_1_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx2a")
            x,y,_ = ex_2_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx1b")
            x,y,_ = ex_1_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[1]), Write(ex_1_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("posEx2b")
            cursor.idle=False
            x,y,_ = ex_2_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[1]), Write(ex_2_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("result_pos_1")
            cursor.idle=False
            x,y,_ = result_pos_1.get_center()+0.4*DOWN
            self.play(Write(result_pos_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_pos_3")
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(Write(result_pos_2), Write(result_pos3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("xNeg")
            cursor.idle=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            self.wait(0.2)
            cursor.idle=True

            self.wait_until_bookmark("negEx1a")
            cursor.idle=False
            x,y,_ = ex_1_neg[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_neg[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negEx2a")
            x,y,_ = ex_2_neg[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_neg[0]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("negEx1b")
            cursor.idle=False
            x,y,_ = ex_1_neg[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_neg[1]), Write(ex_1_neg[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("negEx2b")
            cursor.idle=False
            x,y,_ = ex_2_neg[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_neg[1]), Write(ex_2_neg[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("result_neg_1")
            cursor.idle=False
            x,y,_ = result_neg_1.get_center()+0.4*DOWN
            self.play(Write(result_neg_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_neg_3")
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(Write(result_neg_2), Write(result_neg3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("default")
            cursor.idle=False
            x,y,_ = ORIGIN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("summary_a")
            cursor.idle=False
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("summary_b")
            cursor.idle=False
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

        self.wait(4)


class Func_5_2_I_5_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I5.a.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        divLine = Line([0,-1.8,0], [0,2,0], color=c1t)
        pos = Tex(self.translate("Func_5_2.I5.a.xpos"), font_size=fs3, color=BLUE)
        neg = Tex(self.translate("Func_5_2.I5.a.xneg"), font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(divLine, UP, buff=0.2)
        self.add(divLine, pos_neg)

        ex_1_pos = MathTex("\\sqrt[3]{8}", "=", " 2", font_size=fs3, color=BLUE).next_to(pos, DOWN, buff=0.8)
        ex_1_neg = MathTex("\\sqrt[3]{-8}", "=", "-2",  font_size=fs3, color=GREEN).next_to(neg, DOWN, buff=0.8)
        ex_2_pos = MathTex("\\sqrt[5]{32}", "=", "2", font_size=fs3, color=BLUE).next_to(ex_1_pos, DOWN, buff=0.2)
        ex_2_neg = MathTex("\\sqrt[5]{-32}", "=", "-2", font_size=fs3, color=GREEN).next_to(ex_1_neg, DOWN, buff=0.2)

        result_pos_1 = Tex(self.translate("Func_5_2.I5.a.xpos"), font_size=fs3, color=BLUE).next_to(ex_2_pos, DOWN, buff=0.8)
        result_pos_2 = MathTex("\\Downarrow", font_size=fs3, color=BLUE).next_to(result_pos_1, DOWN, buff=0.2)
        result_pos3 = Tex(self.translate("Func_5_2.I5.a.onesol"), font_size=fs3, color=BLUE).next_to(result_pos_2, DOWN, buff=0.2)

        result_neg_1 = Tex(self.translate("Func_5_2.I5.a.xpos"), font_size=fs3, color=GREEN).next_to(ex_2_neg, DOWN, buff=0.8)
        result_neg_2 = MathTex("\\Downarrow", font_size=fs3, color=GREEN).next_to(result_neg_1, DOWN, buff=0.2)
        result_neg3 = Tex(self.translate("Func_5_2.I5.a.onesol"), font_size=fs3, color=GREEN).next_to(result_neg_2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_5_2.I5.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("posEx1a")
            cursor.idle=False
            x,y,_ = ex_1_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx2a")
            x,y,_ = ex_2_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx1b")
            x,y,_ = ex_1_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[1]), Write(ex_1_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("posEx2b")
            cursor.idle=False
            x,y,_ = ex_2_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[1]), Write(ex_2_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("result_pos_1")
            cursor.idle=False
            x,y,_ = result_pos_1.get_center()+0.4*DOWN
            self.play(Write(result_pos_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_pos_3")
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(Write(result_pos_2), Write(result_pos3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("xNeg")
            cursor.idle=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            self.wait(0.2)
            cursor.idle=True

            self.wait_until_bookmark("negEx1a")
            cursor.idle=False
            x,y,_ = ex_1_neg[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_neg[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negEx2a")
            x,y,_ = ex_2_neg[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_neg[0]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("negEx1b")
            cursor.idle=False
            x,y,_ = ex_1_neg[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_neg[1]), Write(ex_1_neg[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("negEx2b")
            cursor.idle=False
            x,y,_ = ex_2_neg[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_neg[1]), Write(ex_2_neg[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("result_neg_1")
            cursor.idle=False
            x,y,_ = result_neg_1.get_center()+0.4*DOWN
            self.play(Write(result_neg_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_neg_3")
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(Write(result_neg_2), Write(result_neg3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("default")
            cursor.idle=False
            x,y,_ = ORIGIN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("summary_a")
            cursor.idle=False
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("summary_b")
            cursor.idle=False
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

        self.wait(4)


class Func_5_2_I_5_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I5.a.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        divLine = Line([0,-1.8,0], [0,2,0], color=c1t)
        pos = Tex(self.translate("Func_5_2.I5.a.xpos"), font_size=fs3, color=BLUE)
        neg = Tex(self.translate("Func_5_2.I5.a.xneg"), font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(divLine, UP, buff=0.2)
        self.add(divLine, pos_neg)

        ex_1_pos = MathTex("\\sqrt[3]{8}", "=", " 2", font_size=fs3, color=BLUE).next_to(pos, DOWN, buff=0.8)
        ex_1_neg = MathTex("\\sqrt[3]{-8}", "=", "-2",  font_size=fs3, color=GREEN).next_to(neg, DOWN, buff=0.8)
        ex_2_pos = MathTex("\\sqrt[5]{32}", "=", "2", font_size=fs3, color=BLUE).next_to(ex_1_pos, DOWN, buff=0.2)
        ex_2_neg = MathTex("\\sqrt[5]{-32}", "=", "-2", font_size=fs3, color=GREEN).next_to(ex_1_neg, DOWN, buff=0.2)

        result_pos_1 = Tex(self.translate("Func_5_2.I5.a.xpos"), font_size=fs3, color=BLUE).next_to(ex_2_pos, DOWN, buff=0.8)
        result_pos_2 = MathTex("\\Downarrow", font_size=fs3, color=BLUE).next_to(result_pos_1, DOWN, buff=0.2)
        result_pos3 = Tex(self.translate("Func_5_2.I5.a.onesol"), font_size=fs3, color=BLUE).next_to(result_pos_2, DOWN, buff=0.2)

        result_neg_1 = Tex(self.translate("Func_5_2.I5.a.xpos"), font_size=fs3, color=GREEN).next_to(ex_2_neg, DOWN, buff=0.8)
        result_neg_2 = MathTex("\\Downarrow", font_size=fs3, color=GREEN).next_to(result_neg_1, DOWN, buff=0.2)
        result_neg3 = Tex(self.translate("Func_5_2.I5.a.onesol"), font_size=fs3, color=GREEN).next_to(result_neg_2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_5_2.I5.c.voiceover")
        ) as tracker:

            self.wait_until_bookmark("posEx1a")
            cursor.idle=False
            x,y,_ = ex_1_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx2a")
            x,y,_ = ex_2_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx1b")
            x,y,_ = ex_1_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[1]), Write(ex_1_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("posEx2b")
            cursor.idle=False
            x,y,_ = ex_2_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[1]), Write(ex_2_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("result_pos_1")
            cursor.idle=False
            x,y,_ = result_pos_1.get_center()+0.4*DOWN
            self.play(Write(result_pos_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_pos_3")
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(Write(result_pos_2), Write(result_pos3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("xNeg")
            cursor.idle=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            self.wait(0.2)
            cursor.idle=True

            self.wait_until_bookmark("negEx1a")
            cursor.idle=False
            x,y,_ = ex_1_neg[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_neg[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negEx2a")
            x,y,_ = ex_2_neg[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_neg[0]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("negEx1b")
            cursor.idle=False
            x,y,_ = ex_1_neg[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_neg[1]), Write(ex_1_neg[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("negEx2b")
            cursor.idle=False
            x,y,_ = ex_2_neg[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_neg[1]), Write(ex_2_neg[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("result_neg_1")
            cursor.idle=False
            x,y,_ = result_neg_1.get_center()+0.4*DOWN
            self.play(Write(result_neg_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_neg_3")
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(Write(result_neg_2), Write(result_neg3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("default")
            cursor.idle=False
            x,y,_ = ORIGIN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("summary_a")
            cursor.idle=False
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("summary_b")
            cursor.idle=False
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

        self.wait(4)


class Func_5_2_I_5_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I5.a.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        divLine = Line([0,-1.8,0], [0,2,0], color=c1t)
        pos = Tex(self.translate("Func_5_2.I5.a.xpos"), font_size=fs3, color=BLUE)
        neg = Tex(self.translate("Func_5_2.I5.a.xneg"), font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(divLine, UP, buff=0.2)
        self.add(divLine, pos_neg)

        ex_1_pos = MathTex("\\sqrt[3]{8}", "=", " 2", font_size=fs3, color=BLUE).next_to(pos, DOWN, buff=0.8)
        ex_1_neg = MathTex("\\sqrt[3]{-8}", "=", "-2",  font_size=fs3, color=GREEN).next_to(neg, DOWN, buff=0.8)
        ex_2_pos = MathTex("\\sqrt[5]{32}", "=", "2", font_size=fs3, color=BLUE).next_to(ex_1_pos, DOWN, buff=0.2)
        ex_2_neg = MathTex("\\sqrt[5]{-32}", "=", "-2", font_size=fs3, color=GREEN).next_to(ex_1_neg, DOWN, buff=0.2)

        result_pos_1 = Tex(self.translate("Func_5_2.I5.a.xpos"), font_size=fs3, color=BLUE).next_to(ex_2_pos, DOWN, buff=0.8)
        result_pos_2 = MathTex("\\Downarrow", font_size=fs3, color=BLUE).next_to(result_pos_1, DOWN, buff=0.2)
        result_pos3 = Tex(self.translate("Func_5_2.I5.a.onesol"), font_size=fs3, color=BLUE).next_to(result_pos_2, DOWN, buff=0.2)

        result_neg_1 = Tex(self.translate("Func_5_2.I5.a.xpos"), font_size=fs3, color=GREEN).next_to(ex_2_neg, DOWN, buff=0.8)
        result_neg_2 = MathTex("\\Downarrow", font_size=fs3, color=GREEN).next_to(result_neg_1, DOWN, buff=0.2)
        result_neg3 = Tex(self.translate("Func_5_2.I5.a.onesol"), font_size=fs3, color=GREEN).next_to(result_neg_2, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_5_2.I5.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("posEx1a")
            cursor.idle=False
            x,y,_ = ex_1_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx2a")
            x,y,_ = ex_2_pos[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("posEx1b")
            x,y,_ = ex_1_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_pos[1]), Write(ex_1_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("posEx2b")
            cursor.idle=False
            x,y,_ = ex_2_pos[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_pos[1]), Write(ex_2_pos[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("result_pos_1")
            cursor.idle=False
            x,y,_ = result_pos_1.get_center()+0.4*DOWN
            self.play(Write(result_pos_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_pos_3")
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(Write(result_pos_2), Write(result_pos3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("xNeg")
            cursor.idle=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            self.wait(0.2)
            cursor.idle=True

            self.wait_until_bookmark("negEx1a")
            cursor.idle=False
            x,y,_ = ex_1_neg[0].get_center()+0.4*DOWN
            self.play(Write(ex_1_neg[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("negEx2a")
            x,y,_ = ex_2_neg[0].get_center()+0.4*DOWN
            self.play(Write(ex_2_neg[0]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("negEx1b")
            cursor.idle=False
            x,y,_ = ex_1_neg[2].get_center()+0.4*DOWN
            self.play(Write(ex_1_neg[1]), Write(ex_1_neg[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("negEx2b")
            cursor.idle=False
            x,y,_ = ex_2_neg[2].get_center()+0.4*DOWN
            self.play(Write(ex_2_neg[1]), Write(ex_2_neg[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("result_neg_1")
            cursor.idle=False
            x,y,_ = result_neg_1.get_center()+0.4*DOWN
            self.play(Write(result_neg_1), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("result_neg_3")
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(Write(result_neg_2), Write(result_neg3), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("default")
            cursor.idle=False
            x,y,_ = ORIGIN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("summary_a")
            cursor.idle=False
            x,y,_ = result_pos3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("summary_b")
            cursor.idle=False
            x,y,_ = result_neg3.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

        self.wait(4)


#####################################
#####################################
class Func_5_2_I_6(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_5_2.I5.a.title"))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True, x=0.4)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        vLine = Line([0.4,-1.5,0], [0.4,1.5,0], color=c1t)
        hLine = Line([-1.1,0,0], [1.9,0,0], color=c1t)

        pos = Tex(self.translate("Func_5_2.I6.pos"), font_size=fs3, color=BLUE)
        neg = Tex(self.translate("Func_5_2.I6.neg"), font_size=fs3, color=GREEN)
        pos_neg = VGroup(pos, neg).arrange(RIGHT, buff=0.6).next_to(vLine, UP, buff=0.2)
        
        even = Tex(self.translate("Func_5_2.I6.even"), font_size=fs3, color=PURPLE)
        odd = Tex(self.translate("Func_5_2.I6.odd"), font_size=fs3, color=ORANGE)
        even_odd = VGroup(even, odd).arrange(DOWN, buff=1.2).next_to(hLine, LEFT, buff=0.1)

        even_pos_examples = MathTex("\\sqrt[2]{4},", "\\sqrt[4]{16},", "...", font_size=fs4, color=c1t)
        even_pos_sol = Tex(self.translate("Func_5_2.I6.twosol"), font_size=fs4, color=c1t)
        even_pos = VGroup(even_pos_examples, even_pos_sol).arrange(DOWN, buff=0.2).next_to(vLine, LEFT, buff=0.1)
        even_pos.shift((even.get_bottom()[1]-even_pos.get_bottom()[1])*UP)

        even_neg_examples = MathTex("\\sqrt[2]{-4},", "\\sqrt[4]{-16},", "...", font_size=fs4, color=c1t)
        even_neg_sol = Tex(self.translate("Func_5_2.I6.nosol"), font_size=fs4, color=c1t)
        even_neg = VGroup(even_neg_examples, even_neg_sol).arrange(DOWN, buff=0.2).next_to(vLine, RIGHT, buff=0.1)
        even_neg.shift((even.get_bottom()[1]-even_neg.get_bottom()[1])*UP)

        odd_pos_examples = MathTex("\\sqrt[3]{8},", "\\sqrt[5]{32},", "...", font_size=fs4, color=c1t)
        odd_pos_sol = Tex(self.translate("Func_5_2.I6.onesol"), font_size=fs4, color=c1t)
        odd_pos = VGroup(odd_pos_examples, odd_pos_sol).arrange(DOWN, buff=0.2).next_to(vLine, LEFT, buff=0.1)
        odd_pos.shift((odd.get_bottom()[1]-odd_pos.get_bottom()[1])*UP)

        odd_neg_examples = MathTex("\\sqrt[3]{-8},", "\\sqrt[5]{-32},", "...", font_size=fs4, color=c1t)
        odd_neg_sol = Tex(self.translate("Func_5_2.I6.onesol"), font_size=fs4, color=c1t)
        odd_neg = VGroup(odd_neg_examples, odd_neg_sol).arrange(DOWN, buff=0.2).next_to(vLine, RIGHT, buff=0.1)
        odd_neg.shift((odd.get_bottom()[1]-odd_neg.get_bottom()[1])*UP)

        self.add(vLine, hLine)

        center = [0.4,0,0]

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_5_2.I6.voiceover")
         , subcaption='NOT AVAILABLE DUE TO BUG') as tracker:

            self.wait_until_bookmark("even")
            cursor.idle=False
            x,y,_ = even.get_center()+0.4*DOWN
            self.play(Write(even), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("odd")
            cursor.idle=False
            x,y,_ = odd.get_center()+0.4*DOWN
            self.play(Write(odd), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("default1")
            cursor.idle=False
            x,y,_ = center
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("pos")
            cursor.idle=False
            x,y,_ = pos.get_center()+0.4*DOWN
            self.play(Write(pos), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("neg")
            cursor.idle=False
            x,y,_ = neg.get_center()+0.4*DOWN
            self.play(Write(neg), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("default2")
            cursor.idle=False
            x,y,_ = center
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("even_positive")
            cursor.idle=False
            x,y,_ = even_pos.get_center()
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("evenEx1a")
            cursor.idle=False
            x,y,_ = even_pos_examples[0].get_center()+0.4*DOWN
            self.play(Write(even_pos_examples[0]), CursorMoveTo(cursor, x,y), run_time=0.2)
            
            self.wait_until_bookmark("evenEx2a")
            x,y,_ = even_pos_examples[1].get_center()+0.4*DOWN
            self.play(Write(even_pos_examples[1]), CursorMoveTo(cursor, x,y), run_time=0.2)
            
            self.wait_until_bookmark("even_pos_sol")
            x,y,_ = even_pos_sol.get_center()+0.4*DOWN
            self.play(Write(even_pos_sol), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("even_negative")
            cursor.idle=False
            x,y,_ = even_neg.get_center()
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("evenEx1b")
            cursor.idle=False
            x,y,_ = even_neg_examples[0].get_center()+0.4*DOWN
            self.play(Write(even_neg_examples[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("evenEx2b")
            x,y,_ = even_neg_examples[1].get_center()+0.4*DOWN
            self.play(Write(even_neg_examples[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("even_neg_sol")
            x,y,_ = even_neg_sol.get_center()+0.4*DOWN
            self.play(Write(even_neg_sol), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("default3")
            cursor.idle=False
            x,y,_ = center
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("even_pos_sol2")
            x,y,_ = even_pos_sol.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("even_neg_sol2")
            cursor.idle=False
            x,y,_ = even_neg_sol.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("odd_positive")
            cursor.idle=False
            x,y,_ = odd_pos.get_center()
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("oddEx1a")
            cursor.idle=False
            x,y,_ = odd_pos_examples[0].get_center()+0.4*DOWN
            self.play(Write(odd_pos_examples[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("oddEx2a")
            x,y,_ = odd_pos_examples[1].get_center()+0.4*DOWN
            self.play(Write(odd_pos_examples[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("odd_pos_sol")
            x,y,_ = odd_pos_sol.get_center()+0.4*DOWN
            self.play(Write(odd_pos_sol), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("odd_negative")
            cursor.idle=False
            x,y,_ = odd_neg.get_center()
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("oddEx1b")
            cursor.idle=False
            x,y,_ = odd_neg_examples[0].get_center()+0.4*DOWN
            self.play(Write(odd_neg_examples[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("oddEx2b")
            x,y,_ = odd_neg_examples[1].get_center()+0.4*DOWN
            self.play(Write(odd_neg_examples[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("odd_neg_sol")
            x,y,_ = odd_neg_sol.get_center()+0.4*DOWN
            self.play(Write(odd_neg_sol), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("default4")
            cursor.idle=False
            x,y,_ = center
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

        self.wait(4)


#####################################
#####################################
class Func_5_2_I_7(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title(self.translate("Func_5_2.I6.title"))


        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, idle=True, x=0.4)
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
                text=self.translate("Func_5_2.I7.voiceover")
         ) as tracker:

            
            self.wait_until_bookmark("title")
            cursor.idle=False
            x,y,_ = title.get_center()+0.5*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("example1a")
            cursor.idle=False
            x,y,_ = two[1].get_center()+0.4*DOWN
            self.play(Write(two[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("example1b")
            x,y,_ = two[2].get_center()+0.4*DOWN
            self.play(Write(two[0]), Write(two[2]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("example1c")
            x,y,_ = two[3].get_center()+0.4*DOWN
            self.play(Write(two[3]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("example2")
            cursor.idle=False
            x,y,_ = two[3].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("example2a")
            cursor.idle=False
            x,y,_ = three[1].get_center()+0.4*DOWN
            self.play(Write(three[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("example2b")
            x,y,_ = three[2].get_center()+0.4*DOWN
            self.play(Write(three[0]), Write(three[2]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("example2c")
            x,y,_ = three[3].get_center()+0.4*DOWN
            self.play(Write(three[3]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("example3a")
            cursor.idle=False
            x,y,_ = four[1].get_center()+0.4*DOWN
            self.play(Write(four[1]), CursorMoveTo(cursor, x,y), run_time=0.2)
            
            self.wait_until_bookmark("example3b")
            x,y,_ = four[0].get_center()+0.4*DOWN
            self.play(Write(four[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("example3c")
            x,y,_ = four[2].get_center()+0.4*DOWN
            self.play(Write(four[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("example4a")
            cursor.idle=False
            x,y,_ = five[1].get_center()+0.4*DOWN
            self.play(Write(five[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("example4b")
            x,y,_ = five[0].get_center()+0.4*DOWN
            self.play(Write(five[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("example4c")
            x,y,_ = five[2].get_center()+0.4*DOWN
            self.play(Write(five[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("root_k_1")
            cursor.idle=False
            x,y,_ = root_k[0].get_center()+0.4*DOWN
            self.play(Write(root_k[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("root_k_2")
            x,y,_ = root_k[2].get_center()+0.4*DOWN
            self.play(Write(root_k[1]), Write(root_k[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("root_3_1")
            cursor.idle=False
            x,y,_ = root_3[0].get_center()+0.4*DOWN
            self.play(Write(root_3[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("root_3_2")
            x,y,_ = root_3[2].get_center()+0.4*DOWN
            self.play(Write(root_3[1]), Write(root_3[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            self.wait_until_bookmark("root_5_1")
            cursor.idle=False
            x,y,_ = root_5[0].get_center()+0.4*DOWN
            self.play(Write(root_5[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

            self.wait_until_bookmark("root_5_2")
            x,y,_ = root_5[2].get_center()+0.4*DOWN
            self.play(Write(root_5[1]), Write(root_5[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
            cursor.idle=True

            
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
#         cursor = AltCursor(stroke_width=0.0, idle=True, x=0.4)
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
#             cursor.idle=False
#             x,y,_ = title.get_center()+0.5*DOWN
#             self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
#             cursor.idle=True

#             self.wait_until_bookmark("example1a")
#             cursor.idle=False
#             x,y,_ = two[1].get_center()+0.4*DOWN
#             self.play(Write(two[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("example1b")
#             x,y,_ = two[2].get_center()+0.4*DOWN
#             self.play(Write(two[0]), Write(two[2]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("example1c")
#             x,y,_ = two[3].get_center()+0.4*DOWN
#             self.play(Write(two[3]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("example2")
#             cursor.idle=False
#             x,y,_ = two[3].get_center()+0.4*DOWN
#             self.play(CursorMoveTo(cursor, x,y), run_time=0.2)
#             cursor.idle=True

#             self.wait_until_bookmark("example2a")
#             cursor.idle=False
#             x,y,_ = three[1].get_center()+0.4*DOWN
#             self.play(Write(three[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("example2b")
#             x,y,_ = three[2].get_center()+0.4*DOWN
#             self.play(Write(three[0]), Write(three[2]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("example2c")
#             x,y,_ = three[3].get_center()+0.4*DOWN
#             self.play(Write(three[3]), CursorMoveTo(cursor, x,y), run_time=0.2)
#             cursor.idle=True

#             self.wait_until_bookmark("example3a")
#             cursor.idle=False
#             x,y,_ = four[1].get_center()+0.4*DOWN
#             self.play(Write(four[1]), CursorMoveTo(cursor, x,y), run_time=0.2)
            
#             self.wait_until_bookmark("example3b")
#             x,y,_ = four[0].get_center()+0.4*DOWN
#             self.play(Write(four[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("example3c")
#             x,y,_ = four[2].get_center()+0.4*DOWN
#             self.play(Write(four[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
#             cursor.idle=True

#             self.wait_until_bookmark("example4a")
#             cursor.idle=False
#             x,y,_ = five[1].get_center()+0.4*DOWN
#             self.play(Write(five[1]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("example4b")
#             x,y,_ = five[0].get_center()+0.4*DOWN
#             self.play(Write(five[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("example4c")
#             x,y,_ = five[2].get_center()+0.4*DOWN
#             self.play(Write(five[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
#             cursor.idle=True

#             self.wait_until_bookmark("root_k_1")
#             cursor.idle=False
#             x,y,_ = root_k[0].get_center()+0.4*DOWN
#             self.play(Write(root_k[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("root_k_2")
#             x,y,_ = root_k[2].get_center()+0.4*DOWN
#             self.play(Write(root_k[1]), Write(root_k[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
#             cursor.idle=True

#             self.wait_until_bookmark("root_3_1")
#             cursor.idle=False
#             x,y,_ = root_3[0].get_center()+0.4*DOWN
#             self.play(Write(root_3[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("root_3_2")
#             x,y,_ = root_3[2].get_center()+0.4*DOWN
#             self.play(Write(root_3[1]), Write(root_3[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
#             cursor.idle=True

#             self.wait_until_bookmark("root_5_1")
#             cursor.idle=False
#             x,y,_ = root_5[0].get_center()+0.4*DOWN
#             self.play(Write(root_5[0]), CursorMoveTo(cursor, x,y), run_time=0.2)

#             self.wait_until_bookmark("root_5_2")
#             x,y,_ = root_5[2].get_center()+0.4*DOWN
#             self.play(Write(root_5[1]), Write(root_5[2]), CursorMoveTo(cursor, x,y), run_time=0.2)
#             cursor.idle=True

            
#         self.wait(4)


PROTOTYPES=[
    PagePrototypeVideo.from_scene(Func_5_2_I_1_q),
    PagePrototypeQuestion.from_scene(Func_5_2_I_1_q),
    PagePrototypeVideo.from_scene(Func_5_2_I_1_a),
    PagePrototypeVideo.from_scene(Func_5_2_I_1_b),
    PagePrototypeVideo.from_scene(Func_5_2_I_1_c),
    PagePrototypeVideo.from_scene(Func_5_2_I_1_d),
    PagePrototypeVideo.from_scene(Func_5_2_I_2_q),
    PagePrototypeQuestion.from_scene(Func_5_2_I_2_q),
    PagePrototypeVideo.from_scene(Func_5_2_I_2_a),
    PagePrototypeVideo.from_scene(Func_5_2_I_2_b),
    PagePrototypeVideo.from_scene(Func_5_2_I_2_c),
    PagePrototypeVideo.from_scene(Func_5_2_I_2_d),
    PagePrototypeVideo.from_scene(Func_5_2_I_3),
    PagePrototypeVideo.from_scene(Func_5_2_I_4_q),
    PagePrototypeQuestion.from_scene(Func_5_2_I_4_q),
    PagePrototypeVideo.from_scene(Func_5_2_I_4_a),
    PagePrototypeVideo.from_scene(Func_5_2_I_4_b),
    PagePrototypeVideo.from_scene(Func_5_2_I_4_c),
    PagePrototypeVideo.from_scene(Func_5_2_I_4_d),
    PagePrototypeVideo.from_scene(Func_5_2_I_5_q),
    PagePrototypeQuestion.from_scene(Func_5_2_I_5_q),
    PagePrototypeVideo.from_scene(Func_5_2_I_5_a),
    PagePrototypeVideo.from_scene(Func_5_2_I_5_b),
    PagePrototypeVideo.from_scene(Func_5_2_I_5_c),
    PagePrototypeVideo.from_scene(Func_5_2_I_5_d),
    PagePrototypeVideo.from_scene(Func_5_2_I_6),
    PagePrototypeVideo.from_scene(Func_5_2_I_7),
]