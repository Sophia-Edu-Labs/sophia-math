# 4_2: Quadratic Functions: Shifting

# Import necessary libraries and modules
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
class Func_4_2_I_1_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions="Func_4_2.I1.q.answer-options",
            correctAnswerIndex=1,
            questionText=self.translate("Func_4_2.I1.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I1.q.title"))
        
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
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        a, b = ValueTracker(0), ValueTracker(0)
        f1 = lambda x: (x-a.get_value())**2+b.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[-2+a.get_value(),2+a.get_value(),0.001]))
        funcTerm = MathTex("f","(x)", "=","x^2", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I1.q.voiceover")
        ) as tracker:

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.play(Create(g1))
            cursor.blinking=True

            self.wait_until_bookmark("origin")
            x,y,_ = plane.c2p(0,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=False

            self.wait_until_bookmark("up")
            cursor.blinking=False
            uLR = lambda m: m.move_to(g1.get_bottom())
            cursor.add_updater(uLR)
            self.play(b.animate.set_value(2), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("down")
            cursor.blinking=False
            self.play(b.animate.set_value(-2), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("reset")
            cursor.blinking=False
            self.play(b.animate.set_value(0), run_time=0.5)
            cursor.remove_updater(uLR)
            cursor.blinking=True


            self.wait_until_bookmark("left")
            cursor.blinking=False
            uUD = lambda m: m.move_to(plane.c2p(a.get_value(),0))
            cursor.add_updater(uUD)
            self.play(a.animate.set_value(-1), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("right")
            cursor.blinking=False
            self.play(a.animate.set_value(1), run_time=0.5)
            cursor.blinking=True
            self.wait(1.5)
            cursor.blinking=False
            self.play(a.animate.set_value(0), run_time=0.5)
            cursor.remove_updater(uUD)
            cursor.blinking=True

            self.wait_until_bookmark("unit")
            self.play(Write(funcTerm), run_time=0.5)

            self.wait_until_bookmark("f2")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("origin2")
            x,y,_ = plane.c2p(0,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=False

            self.wait_until_bookmark("up2")
            cursor.blinking=False
            uLR = lambda m: m.move_to(g1.get_bottom())
            cursor.add_updater(uLR)
            self.play(b.animate.set_value(2), run_time=0.5)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_2_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I1.q.title"))
        
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
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        a, b = ValueTracker(0), ValueTracker(0)
        f1 = lambda x: (x-a.get_value())**2+b.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[-2+a.get_value(),2+a.get_value(),0.001]))
        self.add(g1)
        funcTerm = MathTex("f","(x)", "=","x^2", "+", "c,", "\\,\\,c>0" , color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I1.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("up")
            cursor.blinking=False
            uLR = lambda m: m.move_to(g1.get_bottom())
            cursor.add_updater(uLR)
            self.play(b.animate.set_value(2), run_time=0.5)
            cursor.remove_updater(uLR)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("c")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("cGeq0")
            x,y,_ = funcTerm[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_2_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I1.q.title"))
        
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
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        a, b = ValueTracker(0), ValueTracker(0)
        f1 = lambda x: (x-a.get_value())**2+b.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[-2+a.get_value(),2+a.get_value(),0.001]))
        self.add(g1)
        funcTerm = MathTex("f","(x)", "=","x^2", "+", "c,", "\\,\\,c>0" , color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I1.b.voiceover")
        ) as tracker:

            self.wait_until_bookmark("up")
            cursor.blinking=False
            uLR = lambda m: m.move_to(g1.get_bottom())
            cursor.add_updater(uLR)
            self.play(b.animate.set_value(2), run_time=0.5)
            cursor.remove_updater(uLR)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("c")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("cGeq0")
            x,y,_ = funcTerm[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_2_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I1.q.title"))
        
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
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        a, b = ValueTracker(0), ValueTracker(0)
        f1 = lambda x: (x-a.get_value())**2+b.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[-2+a.get_value(),2+a.get_value(),0.001]))
        self.add(g1)
        funcTerm = MathTex("f","(x)", "=","x^2", "+", "c,", "\\,\\,c>0" , color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I1.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("up")
            cursor.blinking=False
            uLR = lambda m: m.move_to(g1.get_bottom())
            cursor.add_updater(uLR)
            self.play(b.animate.set_value(2), run_time=0.5)
            cursor.remove_updater(uLR)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("c")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("cGeq0")
            x,y,_ = funcTerm[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_2_I_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I1.q.title"))
        
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
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        a, b = ValueTracker(0), ValueTracker(0)
        f1 = lambda x: (x-a.get_value())**2+b.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[-2+a.get_value(),2+a.get_value(),0.001]))
        self.add(g1)
        funcTerm = MathTex("f","(x)", "=","x^2", "+", "c,", "\\,\\,c>0" , color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I1.a.voiceover")
        ) as tracker:

            self.wait_until_bookmark("up")
            cursor.blinking=False
            uLR = lambda m: m.move_to(g1.get_bottom())
            cursor.add_updater(uLR)
            self.play(b.animate.set_value(2), run_time=0.5)
            cursor.remove_updater(uLR)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("c")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("cGeq0")
            x,y,_ = funcTerm[6].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_4_2_I_2_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$f(x) = x^2+2x+3$","$f(x) = x^2-6x-3$", "$f(x) = x^2+2x-3$","$f(x) = x^2-2x-3$"],
            correctAnswerIndex = 3,
            questionText=self.translate("Func_4_2.I2.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I1.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-6, 6, 2], x_ticks=[-2,-1,1,2],y_ticks=[-6,-4,-2,2,4,6]).shift(DOWN*0.6)
        plane = cords[0]

        #Create the coordinate system
        unitCords = self.add_cords([-2,2, 1], [-4, 4, 1], x_ticks=[-2,-1,1,2],y_ticks=[-4,-2,2,4]).shift(DOWN*0.6)
        unitPlane = unitCords[0]
        self.add(unitCords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        a, b = ValueTracker(0), ValueTracker(0)
        f1 = lambda x: x**2-2*x+b.get_value()
        unitFunc = lambda x: x**2+a.get_value()
        unitG = always_redraw(lambda: unitPlane.plot(unitFunc, color=BLUE))
        self.add(unitG)
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE))
        funcTerm = MathTex("f","(x)", "=","x^2", "-2x", "+1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I2.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("unitUP")
            cursor.blinking=False
            unitUpdater = lambda m: m.move_to(unitPlane.c2p(0,unitFunc(0)))
            cursor.add_updater(unitUpdater)
            self.play(a.animate.set_value(2), run_time=0.5)
            cursor.blinking=True
            cursor.remove_updater(unitUpdater)
            
            self.wait_until_bookmark("graph")
            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), Write(cords), Unwrite(unitCords), Unwrite(unitCords), Unwrite(unitG), run_time=0.5)
            self.add_pencil_sound(0.8)
            gUpdater = lambda m: m.move_to(g1.get_end())
            self.add(cursor.copy()._start_fading(2).add_updater(gUpdater))
            self.play(Create(g1), run_time=0.8)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("2x")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("1")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("cursor")
            cursor.blinking=False
            uLR = lambda m: m.move_to(plane.c2p(1,f1(1)))
            cursor.add_updater(uLR)
            cursor.blinking=True

            self.wait_until_bookmark("down")
            cursor.blinking=False
            self.play(b.animate.set_value(-4), run_time=0.5)
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_2_I_2_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I1.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-6, 6, 2], x_ticks=[-2,-1,1,2],y_ticks=[-6,-4,-2,2,4,6]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(1,0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        a, b = ValueTracker(0), ValueTracker(0)
        f1 = lambda x: x**2-2*x+1+b.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[-2+a.get_value(),2+a.get_value(),0.001]))
        self.add(g1)
        funcTerm_old = MathTex("f","(x)", "=","x^2", "-2x", "+1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        arrow = Tex("Subtract $4\\,\\Downarrow$", font_size=fs2, color=c1t).next_to(funcTerm_old, DOWN, buff=0.3)
        funcTerm = MathTex("f","(x)", "=","x^2", "-2x", "-3", color=c1t, font_size=fs2).next_to(arrow, DOWN, buff=0.3)
        self.add(funcTerm_old)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("down")
            cursor.blinking=False
            uLR = lambda m: m.move_to(plane.c2p(1, f1(1)))
            cursor.add_updater(uLR)
            self.play(b.animate.set_value(-4), run_time=0.5)
            cursor.remove_updater(uLR)
            cursor.blinking=True

            self.wait_until_bookmark("fOld")
            cursor.blinking=False
            x,y,_ = funcTerm_old[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm_old), run_time=0.3)

            self.wait_until_bookmark("xOld")
            x,y,_ = funcTerm_old[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquaredOld")
            x,y,_ = funcTerm_old[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("2xOld")
            x,y,_ = funcTerm_old[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("oneOldOld")
            x,y,_ = funcTerm_old[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), Write(arrow), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("2x")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("3")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("plusOne")
            x,y,_ = funcTerm_old[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("minusThree")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_2_I_2_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I1.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-6, 6, 2], x_ticks=[-2,-1,1,2],y_ticks=[-6,-4,-2,2,4,6]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(1,0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        a, b = ValueTracker(0), ValueTracker(0)
        f1 = lambda x: x**2-2*x+1+b.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[-2+a.get_value(),2+a.get_value(),0.001]))
        self.add(g1)
        funcTerm_old = MathTex("f","(x)", "=","x^2", "-2x", "+1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        arrow = Tex("Subtract $4\\,\\Downarrow$", font_size=fs2, color=c1t).next_to(funcTerm_old, DOWN, buff=0.3)
        funcTerm = MathTex("f","(x)", "=","x^2", "-2x", "-3", color=c1t, font_size=fs2).next_to(arrow, DOWN, buff=0.3)
        self.add(funcTerm_old)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("down")
            cursor.blinking=False
            uLR = lambda m: m.move_to(plane.c2p(1, f1(1)))
            cursor.add_updater(uLR)
            self.play(b.animate.set_value(-4), run_time=0.5)
            cursor.remove_updater(uLR)
            cursor.blinking=True

            self.wait_until_bookmark("fOld")
            cursor.blinking=False
            x,y,_ = funcTerm_old[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm_old), run_time=0.3)

            self.wait_until_bookmark("xOld")
            x,y,_ = funcTerm_old[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquaredOld")
            x,y,_ = funcTerm_old[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("2xOld")
            x,y,_ = funcTerm_old[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("oneOldOld")
            x,y,_ = funcTerm_old[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), Write(arrow), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("2x")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("3")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("plusOne")
            x,y,_ = funcTerm_old[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("minusThree")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_2_I_2_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I1.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-6, 6, 2], x_ticks=[-2,-1,1,2],y_ticks=[-6,-4,-2,2,4,6]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(1,0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        a, b = ValueTracker(0), ValueTracker(0)
        f1 = lambda x: x**2-2*x+1+b.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[-2+a.get_value(),2+a.get_value(),0.001]))
        self.add(g1)
        funcTerm_old = MathTex("f","(x)", "=","x^2", "-2x", "+1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        arrow = Tex("Subtract $4\\,\\Downarrow$", font_size=fs2, color=c1t).next_to(funcTerm_old, DOWN, buff=0.3)
        funcTerm = MathTex("f","(x)", "=","x^2", "-2x", "-3", color=c1t, font_size=fs2).next_to(arrow, DOWN, buff=0.3)
        self.add(funcTerm_old)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I2.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("down")
            cursor.blinking=False
            uLR = lambda m: m.move_to(plane.c2p(1, f1(1)))
            cursor.add_updater(uLR)
            self.play(b.animate.set_value(-4), run_time=0.5)
            cursor.remove_updater(uLR)
            cursor.blinking=True

            self.wait_until_bookmark("fOld")
            cursor.blinking=False
            x,y,_ = funcTerm_old[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm_old), run_time=0.3)

            self.wait_until_bookmark("xOld")
            x,y,_ = funcTerm_old[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquaredOld")
            x,y,_ = funcTerm_old[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("2xOld")
            x,y,_ = funcTerm_old[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("oneOldOld")
            x,y,_ = funcTerm_old[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), Write(arrow), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("2x")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("3")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("plusOne")
            x,y,_ = funcTerm_old[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("minusThree")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_2_I_2_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I1.q.title"))
        
        #Create the coordinate system
        cords = self.add_cords([-2,2, 1], [-6, 6, 2], x_ticks=[-2,-1,1,2],y_ticks=[-6,-4,-2,2,4,6]).shift(DOWN*0.6)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(1,0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        a, b = ValueTracker(0), ValueTracker(0)
        f1 = lambda x: x**2-2*x+1+b.get_value()
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[-2+a.get_value(),2+a.get_value(),0.001]))
        self.add(g1)
        funcTerm_old = MathTex("f","(x)", "=","x^2", "-2x", "+1", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        arrow = Tex("Subtract $4\\,\\Downarrow$", font_size=fs2, color=c1t).next_to(funcTerm_old, DOWN, buff=0.3)
        funcTerm = MathTex("f","(x)", "=","x^2", "-2x", "-3", color=c1t, font_size=fs2).next_to(arrow, DOWN, buff=0.3)
        self.add(funcTerm_old)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I2.d.voiceover")
        ) as tracker:

            
            self.wait_until_bookmark("down")
            cursor.blinking=False
            uLR = lambda m: m.move_to(plane.c2p(1, f1(1)))
            cursor.add_updater(uLR)
            self.play(b.animate.set_value(-4), run_time=0.5)
            cursor.remove_updater(uLR)
            cursor.blinking=True

            self.wait_until_bookmark("fOld")
            cursor.blinking=False
            x,y,_ = funcTerm_old[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm_old), run_time=0.3)

            self.wait_until_bookmark("xOld")
            x,y,_ = funcTerm_old[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquaredOld")
            x,y,_ = funcTerm_old[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("2xOld")
            x,y,_ = funcTerm_old[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("oneOldOld")
            x,y,_ = funcTerm_old[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), Write(arrow), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("2x")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("3")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("plusOne")
            x,y,_ = funcTerm_old[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("minusThree")
            x,y,_ = funcTerm[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################

######################
# The voiceover seems to be broken (the timing is off)
# IDK Why
class Func_4_2_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I3.title"))

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
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        unitFunc = lambda x: x**2
        unitG = plane.plot(unitFunc, color=BLUE)
        funcTerm = MathTex("f","(x)", "=","x^2", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)

        l02 = Line(plane.c2p(0,0), plane.c2p(2,0), color=PURPLE)
        l13 = Line(plane.c2p(1,1), plane.c2p(3,1), color=PURPLE)
        arrow1Updater = lambda m: m.move_to(l02.get_end())
        arrow2Updater = lambda m: m.move_to(l13.get_end())
    
        xUnit = plane.c2p(1,0)-plane.c2p(0,0)
        t1 = MathTex("f(2)", "\\,\\Rightarrow\\,", "f(0)", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1).next_to(cords, DOWN, buff=0.5)
        t2 = MathTex("2", "\\,\\Rightarrow\\,", "0", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1).next_to(t1, DOWN, buff=0.2)
        t1[1].set_color(PURPLE)
        t2[1].set_color(PURPLE)
        t3 = (VGroup(Tex("Shift right", font_size=fs2, color=c1t), MathTex("\\Downarrow", font_size=fs2, color=PURPLE), Tex("subtract from $x$", font_size=fs2, color=c1t)).arrange(DOWN, buff=.1)).next_to(t2, DOWN, buff=0.6)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I3.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("parabola")
            cursor.blinking=False
            x,y,_ = unitG.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(unitG.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(unitG))
            cursor.blinking=True

            self.wait_until_bookmark("origin")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("sideWays")
            cursor.blinking=False
            shiftUpdater = lambda m: m.set_x(unitG.get_center()[0])
            cursor.add_updater(shiftUpdater)
            self.play(unitG.animate.shift(LEFT*2*xUnit), run_time=1.5)
            self.play(unitG.animate.shift(RIGHT*4*xUnit), run_time=1.5)
            self.play(unitG.animate.shift(LEFT*2*xUnit), run_time=0.5)
            cursor.remove_updater(shiftUpdater)
            cursor.blinking=True
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("origin2")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("twoRight")
            cursor.blinking=False
            x,y,_ = plane.c2p(2,0)
            cursor.add_updater(shiftUpdater)
            self.add(unitG.copy().set_color(GREY))
            self.play(unitG.animate.shift(RIGHT*2*xUnit), run_time=1.5)
            cursor.remove_updater(shiftUpdater)
            cursor.blinking=True

            self.wait_until_bookmark("f0")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("f2")
            self.add(cursor.copy()._start_fading(2).add_updater(arrow1Updater))
            self.play(Create(l02))
            cursor.blinking=True

            self.wait_until_bookmark("f1")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("f3")
            self.add(cursor.copy()._start_fading(2).add_updater(arrow2Updater))
            self.play(Create(l13))
            cursor.blinking=True

            self.wait_until_bookmark("t10")
            cursor.blinking=False
            x,y,_ = t1[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(t1), Unwrite(funcTerm), run_time=0.3)

            self.wait_until_bookmark("t11")
            x,y,_ = t1[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("t20")
            cursor.blinking=False
            x,y,_ = t2[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(t2), run_time=0.3)

            self.wait_until_bookmark("t21")
            x,y,_ = t2[2].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("t3")
            cursor.blinking=False
            x,y,_ = t3[-1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(t3), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
class Func_4_2_I_4_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$f(x)=(x-2)^2-2$", "$f(x)=x^2-4$", "$f(x)=(x+2)^2-2$", "$f(x)=x^2$"],
            correctAnswerIndex = 2,
            questionText=self.translate("Func_4_2.I4.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I3.title"))

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
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f = lambda x: x**2-2
        g = plane.plot(f, color=BLUE)
        funcTerm = MathTex("f","(x)", "=","x^2", "-2", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        xUnit = plane.c2p(1,0)-plane.c2p(0,0)
        self.add(g)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I4.q.voiceover")

        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            
            self.wait_until_bookmark("minusTwo")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("shift")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,-2)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            shiftUpdater = lambda m: m.set_x(g.get_center()[0])
            cursor.add_updater(shiftUpdater)
            self.add(g.copy().set_color(GREY))
            self.play(g.animate.shift(LEFT*2*xUnit), run_time=1.5)
            cursor.remove_updater(shiftUpdater)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_2_I_4_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I3.title"))

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
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f = lambda x: x**2-2
        g = plane.plot(f, color=BLUE)
        funcTerm = MathTex("f","(x)", "=","x^2", "-2", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        xUnit = plane.c2p(1,0)-plane.c2p(0,0)
        self.add(g)

        l02 = Line(plane.c2p(-2,-2), plane.c2p(0,-2), color=PURPLE)

        t1 = MathTex("f(-2)", "\\,\\Rightarrow\\,", "f(0)", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1).next_to(cords, DOWN, buff=0.5)
        t2 = MathTex("-2", "\\,\\Rightarrow\\,", "0", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1).next_to(t1, DOWN, buff=0.2)
        t1[1].set_color(PURPLE)
        t2[1].set_color(PURPLE)
        t3 = Tex("Shift left$\\Rightarrow$ add $2$ to $x$", font_size=fs2, color=c1t).next_to(t2, DOWN, buff=0.4)
        funcTermShifted = MathTex("f","(x)", "=","(x","+2)^2", "-2", color=c1t, font_size=fs2).next_to(t3, DOWN, buff=0.4)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I4.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            
            self.wait_until_bookmark("minusTwo")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("shift")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,-2)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            shiftUpdater = lambda m: m.set_x(g.get_center()[0])
            cursor.add_updater(shiftUpdater)
            self.add(g.copy().set_color(GREY))
            self.play(g.animate.shift(LEFT*2*xUnit), run_time=1.5)
            cursor.remove_updater(shiftUpdater)
            cursor.blinking=True

            self.wait_until_bookmark("lNeg2")
            cursor.blinking=False
            self.play(ApplyWave(cursor, amplitude=0.4, direction=UP))
            cursor.blinking = True

            self.wait_until_bookmark("explain1")
            self.play(Write(t1), Unwrite(funcTerm))
            
            self.wait_until_bookmark("l0")
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(l02.get_end())))
            self.play(Create(l02))

            self.wait_until_bookmark("explainTwo")
            self.play(Write(t2))

            self.wait_until_bookmark("explain3")
            self.play(Write(t3))

            self.wait_until_bookmark("fNew")
            cursor.blinking=False
            x,y,_ = funcTermShifted[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTermShifted), run_time=0.3)

            self.wait_until_bookmark("xNew")
            x,y,_ = funcTermShifted[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquaredNew")
            x,y,_ = funcTermShifted[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("twoNew")
            x,y,_ = funcTermShifted[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("minusTwoNew")
            x,y,_ = funcTermShifted[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_2_I_4_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I3.title"))

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
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f = lambda x: x**2-2
        g = plane.plot(f, color=BLUE)
        funcTerm = MathTex("f","(x)", "=","x^2", "-2", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        xUnit = plane.c2p(1,0)-plane.c2p(0,0)
        self.add(g)

        l02 = Line(plane.c2p(-2,-2), plane.c2p(0,-2), color=PURPLE)

        t1 = MathTex("f(-2)", "\\,\\Rightarrow\\,", "f(0)", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1).next_to(cords, DOWN, buff=0.5)
        t2 = MathTex("-2", "\\,\\Rightarrow\\,", "0", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1).next_to(t1, DOWN, buff=0.2)
        t1[1].set_color(PURPLE)
        t2[1].set_color(PURPLE)
        t3 = Tex("Shift left$\\Rightarrow$ add $2$ to $x$", font_size=fs2, color=c1t).next_to(t2, DOWN, buff=0.4)
        funcTermShifted = MathTex("f","(x)", "=","(x","+2)^2", "-2", color=c1t, font_size=fs2).next_to(t3, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I4.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            
            self.wait_until_bookmark("minusTwo")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("shift")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,-2)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            shiftUpdater = lambda m: m.set_x(g.get_center()[0])
            cursor.add_updater(shiftUpdater)
            self.add(g.copy().set_color(GREY))
            self.play(g.animate.shift(LEFT*2*xUnit), run_time=1.5)
            cursor.remove_updater(shiftUpdater)
            cursor.blinking=True

            self.wait_until_bookmark("lNeg2")
            cursor.blinking=False
            self.play(ApplyWave(cursor, amplitude=0.4, direction=UP))
            cursor.blinking = True

            self.wait_until_bookmark("explain1")
            self.play(Write(t1), Unwrite(funcTerm))
            
            self.wait_until_bookmark("l0")
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(l02.get_end())))
            self.play(Create(l02))

            self.wait_until_bookmark("explainTwo")
            self.play(Write(t2))

            self.wait_until_bookmark("explain3")
            self.play(Write(t3))

            self.wait_until_bookmark("fNew")
            cursor.blinking=False
            x,y,_ = funcTermShifted[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTermShifted), run_time=0.3)

            self.wait_until_bookmark("xNew")
            x,y,_ = funcTermShifted[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquaredNew")
            x,y,_ = funcTermShifted[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("twoNew")
            x,y,_ = funcTermShifted[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("minusTwoNew")
            x,y,_ = funcTermShifted[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True



        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_2_I_4_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I3.title"))

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
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f = lambda x: x**2-2
        g = plane.plot(f, color=BLUE)
        funcTerm = MathTex("f","(x)", "=","x^2", "-2", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        xUnit = plane.c2p(1,0)-plane.c2p(0,0)
        self.add(g)

        l02 = Line(plane.c2p(-2,-2), plane.c2p(0,-2), color=PURPLE)

        t1 = MathTex("f(-2)", "\\,\\Rightarrow\\,", "f(0)", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1).next_to(cords, DOWN, buff=0.5)
        t2 = MathTex("-2", "\\,\\Rightarrow\\,", "0", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1).next_to(t1, DOWN, buff=0.2)
        t1[1].set_color(PURPLE)
        t2[1].set_color(PURPLE)
        t3 = Tex("Shift left$\\Rightarrow$ add $2$ to $x$", font_size=fs2, color=c1t).next_to(t2, DOWN, buff=0.4)
        funcTermShifted = MathTex("f","(x)", "=","(x","+2)^2", "-2", color=c1t, font_size=fs2).next_to(t3, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I4.c.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            
            self.wait_until_bookmark("minusTwo")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("shift")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,-2)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            shiftUpdater = lambda m: m.set_x(g.get_center()[0])
            cursor.add_updater(shiftUpdater)
            self.add(g.copy().set_color(GREY))
            self.play(g.animate.shift(LEFT*2*xUnit), run_time=1.5)
            cursor.remove_updater(shiftUpdater)
            cursor.blinking=True

            self.wait_until_bookmark("lNeg2")
            cursor.blinking=False
            self.play(ApplyWave(cursor, amplitude=0.4, direction=UP))
            cursor.blinking = True

            self.wait_until_bookmark("explain1")
            self.play(Write(t1), Unwrite(funcTerm))
            
            self.wait_until_bookmark("l0")
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(l02.get_end())))
            self.play(Create(l02))

            self.wait_until_bookmark("explainTwo")
            self.play(Write(t2))

            self.wait_until_bookmark("explain3")
            self.play(Write(t3))

            self.wait_until_bookmark("fNew")
            cursor.blinking=False
            x,y,_ = funcTermShifted[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTermShifted), run_time=0.3)

            self.wait_until_bookmark("xNew")
            x,y,_ = funcTermShifted[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquaredNew")
            x,y,_ = funcTermShifted[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("twoNew")
            x,y,_ = funcTermShifted[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("minusTwoNew")
            x,y,_ = funcTermShifted[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True



        # Wait for 4 seconds at the end of the animation
        self.wait(4)

class Func_4_2_I_4_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I3.title"))

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
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f = lambda x: x**2-2
        g = plane.plot(f, color=BLUE)
        funcTerm = MathTex("f","(x)", "=","x^2", "-2", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        xUnit = plane.c2p(1,0)-plane.c2p(0,0)
        self.add(g)

        l02 = Line(plane.c2p(-2,-2), plane.c2p(0,-2), color=PURPLE)

        t1 = MathTex("f(-2)", "\\,\\Rightarrow\\,", "f(0)", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1).next_to(cords, DOWN, buff=0.5)
        t2 = MathTex("-2", "\\,\\Rightarrow\\,", "0", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1).next_to(t1, DOWN, buff=0.2)
        t1[1].set_color(PURPLE)
        t2[1].set_color(PURPLE)
        t3 = Tex("Shift left$\\Rightarrow$ add $2$ to $x$", font_size=fs2, color=c1t).next_to(t2, DOWN, buff=0.4)
        funcTermShifted = MathTex("f","(x)", "=","(x","+2)^2", "-2", color=c1t, font_size=fs2).next_to(t3, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I4.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            
            self.wait_until_bookmark("minusTwo")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("shift")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,-2)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            shiftUpdater = lambda m: m.set_x(g.get_center()[0])
            cursor.add_updater(shiftUpdater)
            self.add(g.copy().set_color(GREY))
            self.play(g.animate.shift(LEFT*2*xUnit), run_time=1.5)
            cursor.remove_updater(shiftUpdater)
            cursor.blinking=True

            self.wait_until_bookmark("lNeg2")
            cursor.blinking=False
            self.play(ApplyWave(cursor, amplitude=0.4, direction=UP))
            cursor.blinking = True

            self.wait_until_bookmark("explain1")
            self.play(Write(t1), Unwrite(funcTerm))
            
            self.wait_until_bookmark("l0")
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(l02.get_end())))
            self.play(Create(l02))

            self.wait_until_bookmark("explainTwo")
            self.play(Write(t2))

            self.wait_until_bookmark("explain3")
            self.play(Write(t3))

            self.wait_until_bookmark("fNew")
            cursor.blinking=False
            x,y,_ = funcTermShifted[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTermShifted), run_time=0.3)

            self.wait_until_bookmark("xNew")
            x,y,_ = funcTermShifted[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquaredNew")
            x,y,_ = funcTermShifted[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("twoNew")
            x,y,_ = funcTermShifted[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("minusTwoNew")
            x,y,_ = funcTermShifted[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)



#####################################
#####################################
class Func_4_2_I_5_q(SophiaCursorScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$f(x)=(x+1.5)^2-3x$", "$f(x)=(x+1.5)^2-3(x+1.5)$", "$f(x)=(x-1.5)^2-3x$", "$f(x)=(x-1.5)^2-3(x-1.5)$"],
            correctAnswerIndex = 3,
            questionText=self.translate("Func_4_2.I5.q.question-text")
        )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I3.title"))

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
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f = lambda x: x**2-3*x
        g = plane.plot(f, color=BLUE, x_range=[-1.3, 2, 0.0001])
        funcTerm = MathTex("f","(x)", "=","x^2", "-3x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        xUnit = plane.c2p(1,0)-plane.c2p(0,0)
        unit_func = lambda x: x**2
        unit_plot = plane.plot(unit_func, color=BLUE)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I5.q.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("left")
            cursor.blinking=False
            unit_updater = lambda m: m.set_x(unit_plot.get_center()[0])
            cursor.add_updater(unit_updater)
            self.play(unit_plot.animate.shift(LEFT*xUnit), run_time=1)

            self.wait_until_bookmark("right")
            self.play(unit_plot.animate.shift(RIGHT*2*xUnit), run_time=1)

            self.wait_until_bookmark("reset")
            cursor.remove_updater(unit_updater)
            x,y,_ = plane.c2p(0,0)
            self.play(Write(g), Unwrite(unit_plot), CursorMoveTo(cursor, x, y))
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            
            self.wait_until_bookmark("minusThree")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("shift")
            cursor.blinking=False
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add(g.copy().set_color(GREY))
            self.play(g.animate.shift(RIGHT*1.5*xUnit), cursor.animate.shift(1.5*RIGHT*xUnit), run_time=1.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_2_I_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I3.title"))

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
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f = lambda x: x**2-3*x
        g = plane.plot(f, color=BLUE, x_range=[-1.3, 2, 0.0001])
        funcTerm = MathTex("f","(x)", "=","x^2", "-3x", color=c1t, font_size=fs3).next_to(cords, DOWN, buff=1)
        arrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(funcTerm, DOWN, buff=0.2)
        funcTermNew = MathTex("f","(x)", "=","(x","+1.5)^2", "-3(x+1.5)", color=c1t, font_size=fs3).next_to(arrow, DOWN, buff=0.2)
        xUnit = plane.c2p(1,0)-plane.c2p(0,0)
        self.add(g)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I5.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("shiftRight")
            cursor.blinking=False
            self.play(g.animate.shift(RIGHT*1.5*xUnit), cursor.animate.shift(1.5*RIGHT*xUnit), run_time=1.5)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("minusThreeX")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("fNew")
            cursor.blinking=False
            x,y,_ = funcTermNew[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTermNew), Write(arrow), run_time=0.3)

            self.wait_until_bookmark("xNew")
            x,y,_ = funcTermNew[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquaredNew")
            x,y,_ = funcTermNew[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("onePointFive")
            x,y,_ = funcTermNew[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("minusThreeNew")
            x,y,_ = funcTermNew[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_2_I_5_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I3.title"))

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
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f = lambda x: x**2-3*x
        g = plane.plot(f, color=BLUE, x_range=[-1.3, 2, 0.0001])
        funcTerm = MathTex("f","(x)", "=","x^2", "-3x", color=c1t, font_size=fs3).next_to(cords, DOWN, buff=1)
        arrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(funcTerm, DOWN, buff=0.2)
        funcTermNew = MathTex("f","(x)", "=","(x","+1.5)^2", "-3(x+1.5)", color=c1t, font_size=fs3).next_to(arrow, DOWN, buff=0.2)
        xUnit = plane.c2p(1,0)-plane.c2p(0,0)
        self.add(g)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I5.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("shiftRight")
            cursor.blinking=False
            self.play(g.animate.shift(RIGHT*1.5*xUnit), cursor.animate.shift(1.5*RIGHT*xUnit), run_time=1.5)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("minusThreeX")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("fNew")
            cursor.blinking=False
            x,y,_ = funcTermNew[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTermNew), Write(arrow), run_time=0.3)

            self.wait_until_bookmark("xNew")
            x,y,_ = funcTermNew[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquaredNew")
            x,y,_ = funcTermNew[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("onePointFive")
            x,y,_ = funcTermNew[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("minusThreeNew")
            x,y,_ = funcTermNew[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_2_I_5_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I3.title"))

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
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f = lambda x: x**2-3*x
        g = plane.plot(f, color=BLUE, x_range=[-1.3, 2, 0.0001])
        funcTerm = MathTex("f","(x)", "=","x^2", "-3x", color=c1t, font_size=fs3).next_to(cords, DOWN, buff=1)
        arrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(funcTerm, DOWN, buff=0.2)
        funcTermNew = MathTex("f","(x)", "=","(x","+1.5)^2", "-3(x+1.5)", color=c1t, font_size=fs3).next_to(arrow, DOWN, buff=0.2)
        xUnit = plane.c2p(1,0)-plane.c2p(0,0)
        self.add(g)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I5.a.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("shiftRight")
            cursor.blinking=False
            self.play(g.animate.shift(RIGHT*1.5*xUnit), cursor.animate.shift(1.5*RIGHT*xUnit), run_time=1.5)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("minusThreeX")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("fNew")
            cursor.blinking=False
            x,y,_ = funcTermNew[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTermNew), Write(arrow), run_time=0.3)

            self.wait_until_bookmark("xNew")
            x,y,_ = funcTermNew[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquaredNew")
            x,y,_ = funcTermNew[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("onePointFive")
            x,y,_ = funcTermNew[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("minusThreeNew")
            x,y,_ = funcTermNew[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_2_I_5_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_2.I3.title"))

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
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        f = lambda x: x**2-3*x
        g = plane.plot(f, color=BLUE, x_range=[-1.3, 2, 0.0001])
        funcTerm = MathTex("f","(x)", "=","x^2", "-3x", color=c1t, font_size=fs3).next_to(cords, DOWN, buff=1)
        arrow = MathTex("\\Downarrow", color=c1t, font_size=fs2).next_to(funcTerm, DOWN, buff=0.2)
        funcTermNew = MathTex("f","(x)", "=","(x","+1.5)^2", "-3(x+1.5)", color=c1t, font_size=fs3).next_to(arrow, DOWN, buff=0.2)
        xUnit = plane.c2p(1,0)-plane.c2p(0,0)
        self.add(g)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_2.I5.d.voiceover")
        ) as tracker:
            
            self.wait_until_bookmark("shiftRight")
            cursor.blinking=False
            self.play(g.animate.shift(RIGHT*1.5*xUnit), cursor.animate.shift(1.5*RIGHT*xUnit), run_time=1.5)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTerm), run_time=0.3)

            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("minusThreeX")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("fNew")
            cursor.blinking=False
            x,y,_ = funcTermNew[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), Write(funcTermNew), Write(arrow), run_time=0.3)

            self.wait_until_bookmark("xNew")
            x,y,_ = funcTermNew[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquaredNew")
            x,y,_ = funcTermNew[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("onePointFive")
            x,y,_ = funcTermNew[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("minusThreeNew")
            x,y,_ = funcTermNew[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


PROTOTYPES = [
    PagePrototypeVideo.from_scene(Func_4_2_I_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_4_2_I_1_q, Func_4_2_I_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_4_2_I_1_a),
    PagePrototypeVideo.from_scene(Func_4_2_I_1_b),
    PagePrototypeVideo.from_scene(Func_4_2_I_1_c),
    PagePrototypeVideo.from_scene(Func_4_2_I_1_d),
    PagePrototypeVideo.from_scene(Func_4_2_I_2_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_4_2_I_2_q, Func_4_2_I_2_q.__name__),
    PagePrototypeVideo.from_scene(Func_4_2_I_2_a),
    PagePrototypeVideo.from_scene(Func_4_2_I_2_b),
    PagePrototypeVideo.from_scene(Func_4_2_I_2_c),
    PagePrototypeVideo.from_scene(Func_4_2_I_2_d),
    PagePrototypeVideo.from_scene(Func_4_2_I_3),
    PagePrototypeVideo.from_scene(Func_4_2_I_4_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_4_2_I_4_q, Func_4_2_I_4_q.__name__),
    PagePrototypeVideo.from_scene(Func_4_2_I_4_a),
    PagePrototypeVideo.from_scene(Func_4_2_I_4_b),
    PagePrototypeVideo.from_scene(Func_4_2_I_4_c),
    PagePrototypeVideo.from_scene(Func_4_2_I_4_d),
    PagePrototypeVideo.from_scene(Func_4_2_I_5_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_4_2_I_5_q, Func_4_2_I_5_q.__name__),
    PagePrototypeVideo.from_scene(Func_4_2_I_5_a),
    PagePrototypeVideo.from_scene(Func_4_2_I_5_b),
    PagePrototypeVideo.from_scene(Func_4_2_I_5_c),
    PagePrototypeVideo.from_scene(Func_4_2_I_5_d),
]