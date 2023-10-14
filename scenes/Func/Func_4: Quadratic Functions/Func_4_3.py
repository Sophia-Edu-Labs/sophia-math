# 4_3: Quadratic Functions: Scaling

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
class Func_4_3_I_1_q(SophiaCursorScene):
    
    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions=ast.literal_eval(self.translate("Func_4_3.I1.q.answer-options")),
            correctAnswerIndex=2,
            questionText=self.translate("Func_4_3.I1.q.question-text")
        )



    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title(self.translate("Func_4_3.I1.q.title"))
        
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

        a = ValueTracker(1)
        f1 = lambda x: a.get_value()*x**2
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[-(4/a.get_value())**0.5,(4/a.get_value())**0.5]))
        funcTerm = MathTex("f","(x)", "=","a","x^2", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        aLarge = Tex("$a$ large ","$\\Rightarrow$", "Parabola steeper", color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=0.4)
        aSmall = Tex("$a$ small ","$\\Rightarrow$", "Parabola flatter", color=c1t, font_size=fs3).next_to(aLarge, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_3.I1.q.voiceover")
        ) as tracker:

            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.play(Create(g1))
            cursor.blinking=True

            self.wait_until_bookmark("cursorInPos")
            cursor.blinking=False
            x,y,_ = plane.c2p(2**0.5,2)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True
            cursor_updater = lambda m: m.move_to(plane.c2p((2/a.get_value())**0.5,2))
            cursor.add_updater(cursor_updater)

            self.wait_until_bookmark("steeper")
            cursor.blinking=False
            self.play(a.animate.set_value(2), run_time=2)

            self.wait_until_bookmark("flatter")
            self.play(a.animate.set_value(0.5), run_time=2)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = funcTerm[0].get_center()+0.4*DOWN
            self.play(Create(funcTerm), a.animate(run_time=0.5).set_value(1))
            cursor.remove_updater(cursor_updater)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            
            self.wait_until_bookmark("x")
            x,y,_ = funcTerm[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("a")
            x,y,_ = funcTerm[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)

            self.wait_until_bookmark("xSquared")
            x,y,_ = funcTerm[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("cursorInPos2")
            cursor.blinking=False
            x,y,_ = plane.c2p(2**0.5,2)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True
            cursor.add_updater(lambda m: m.move_to(plane.c2p((2/a.get_value())**0.5,2)))

            self.wait_until_bookmark("large")
            cursor.blinking=False
            self.play(Write(aLarge) ,a.animate(run_time=2).set_value(2), run_time=0.5)

            self.wait_until_bookmark("small")
            self.play(Write(aSmall), a.animate(run_time=2).set_value(0.5), run_time=0.5)
            cursor.blinking=True            


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_3_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_3.I1.q.title"))
        
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

        a = ValueTracker(1)
        f1 = lambda x: a.get_value()*x**2
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE))
        funcTerm = MathTex("f","(x)", "=","a","x^2", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        aLarge = Tex("$a$ large ","$\\Rightarrow$", "Parabola steeper", color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=0.4)
        aSmall = Tex("$a$ small ","$\\Rightarrow$", "Parabola flatter", color=c1t, font_size=fs3).next_to(aLarge, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_3.I1.a.voiceover")
        ) as tracker:

            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.play(Create(g1))
            cursor.blinking=True

            self.wait_until_bookmark("cursorInPos")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True
            cursor.add_updater(lambda m: m.move_to(plane.c2p(1,f1(1))))

            self.wait_until_bookmark("flip")
            cursor.blinking=False
            self.play(a.animate.set_value(-1), run_time=4)

        self.wait(4)

class Func_4_3_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_3.I1.q.title"))
        
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

        a = ValueTracker(1)
        f1 = lambda x: a.get_value()*x**2
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE))
        funcTerm = MathTex("f","(x)", "=","a","x^2", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        aLarge = Tex("$a$ large ","$\\Rightarrow$", "Parabola steeper", color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=0.4)
        aSmall = Tex("$a$ small ","$\\Rightarrow$", "Parabola flatter", color=c1t, font_size=fs3).next_to(aLarge, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_3.I1.a.voiceover")
        ) as tracker:

            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.play(Create(g1))
            cursor.blinking=True

            self.wait_until_bookmark("cursorInPos")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True
            cursor.add_updater(lambda m: m.move_to(plane.c2p(1,f1(1))))

            self.wait_until_bookmark("flip")
            cursor.blinking=False
            self.play(a.animate.set_value(-1), run_time=4)

        self.wait(4)

class Func_4_3_I_1_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_3.I1.q.title"))
        
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

        a = ValueTracker(1)
        f1 = lambda x: a.get_value()*x**2
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE))
        funcTerm = MathTex("f","(x)", "=","a","x^2", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        aLarge = Tex("$a$ large ","$\\Rightarrow$", "Parabola steeper", color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=0.4)
        aSmall = Tex("$a$ small ","$\\Rightarrow$", "Parabola flatter", color=c1t, font_size=fs3).next_to(aLarge, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_3.I1.c.voiceover")
        ) as tracker:

            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.play(Create(g1))
            cursor.blinking=True

            self.wait_until_bookmark("cursorInPos")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True
            cursor.add_updater(lambda m: m.move_to(plane.c2p(1,f1(1))))

            self.wait_until_bookmark("flip")
            cursor.blinking=False
            self.play(a.animate.set_value(-1), run_time=4)

        self.wait(4)


class Func_4_3_I_1_d(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_3.I1.q.title"))
        
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

        a = ValueTracker(1)
        f1 = lambda x: a.get_value()*x**2
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE))
        funcTerm = MathTex("f","(x)", "=","a","x^2", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=1)
        aLarge = Tex("$a$ large ","$\\Rightarrow$", "Parabola steeper", color=c1t, font_size=fs3).next_to(funcTerm, DOWN, buff=0.4)
        aSmall = Tex("$a$ small ","$\\Rightarrow$", "Parabola flatter", color=c1t, font_size=fs3).next_to(aLarge, DOWN, buff=0.2)

        # Action Sequence
        with self.voiceover(
                text=self.translate("Func_4_3.I1.a.voiceover")
        ) as tracker:

            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.play(Create(g1))
            cursor.blinking=True

            self.wait_until_bookmark("cursorInPos")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,1)
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True
            cursor.add_updater(lambda m: m.move_to(plane.c2p(1,f1(1))))

            self.wait_until_bookmark("flip")
            cursor.blinking=False
            self.play(a.animate.set_value(-1), run_time=4)

        self.wait(4)



#####################################
#####################################
########## Pracitce Part ############
#####################################
#####################################


#####################################
#####################################
########## General Qs ###############
#####################################
#####################################
class ScaleQuestionScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_3.I1.q.title"))
        
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

        a, b = ValueTracker(1), ValueTracker(1)
        f1 = lambda x: b.get_value()*a.get_value()*x**2
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[max(-2.2,-(4/a.get_value())**0.5),min(2.2,(4/a.get_value())**0.5), 0.001]))

        xx, yy = self.point
        sign = 1 if yy > 0 else -1
        abs = np.abs(yy/xx**2)

        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_4_3.ScaleQuestionScene.voiceover"))
        ) as tracker:

            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            self.add_pencil_sound(1.5)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.play(Create(g1))
            cursor.blinking=True

            self.wait_until_bookmark("cursorInPos")
            cursor.blinking=False
            x,y,_ = plane.c2p(xx, f1(xx))
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True
            cursor.add_updater(lambda m: m.move_to(plane.c2p(xx, f1(xx))))

            self.wait_until_bookmark("scale")
            cursor.blinking=False
            self.play(a.animate.set_value(abs), b.animate.set_value(sign), run_time=2)

            self.wait_until_bookmark("markPoint")
            self.play(ApplyWave(cursor))
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class ScaleAnswerScene(SophiaCursorScene, metaclass=ABCMeta):

    # Main method for constructing the animation
    @abstractmethod
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title(self.translate("Func_4_3.I1.q.title"))
        
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

        a, b = ValueTracker(1), ValueTracker(1)
        f1 = lambda x: b.get_value()*a.get_value()*x**2
        g1 = always_redraw(lambda: plane.plot(f1, color=BLUE, x_range=[max(-2.2,-(4/a.get_value())**0.5),min(2.2,(4/a.get_value())**0.5), 0.001]))
        
        xx, yy = self.point
        sign = 1 if yy > 0 else -1
        self.flip == "" if sign==1 else self.flip
        abs = np.abs(yy/xx**2)
        square = MathTex(f"{xx}^2 = {xx**2}", color=c1t, font_size = fs2).next_to(cords, DOWN, buff=0.4)
        arrow = MathTex("\\Downarrow", color=c1t, font_size = fs2).next_to(square, DOWN, buff=0.2)
        solution = MathTex(f"a = ", f"\\frac{{{yy}}}{{{xx**2}}}", "=", f"{sign*abs}", color=c1t, font_size = fs2).next_to(arrow, DOWN, buff=0.2)


        # Action Sequence
        with self.voiceover(
                text=self.evaluate_string(self.translate("Func_4_3.ScaleAnswerScene.voiceover"))
        ) as tracker:

            cursor.blinking=False
            x,y,_ = g1.get_start()
            self.play(CursorMoveTo(cursor, x, y), run_time=0.3)
            self.add_pencil_sound(1)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g1.get_end())))
            self.play(Create(g1), run_time=1)
            cursor.blinking=True

            self.wait_until_bookmark("square")
            cursor.blinking=False
            x,y,_ = square.get_center()+0.4*DOWN
            self.play(Create(square), CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("cursorInPos")
            cursor.blinking=False
            x,y,_ = plane.c2p(xx, f1(xx))
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)
            cursor.blinking=True
            cU = lambda m: m.move_to(plane.c2p(xx, f1(xx)))
            cursor.add_updater(cU)

            self.wait_until_bookmark("scale")
            cursor.blinking=False
            self.play(a.animate.set_value(abs), run_time=2)

            self.wait_until_bookmark("flip")
            if sign <0:
                self.play(b.animate.set_value(sign))
            cursor.remove_updater(cU)
            cursor.blinking=True

            self.wait_until_bookmark("final")
            cursor.blinking=False
            self.play(Create(arrow), Create(solution), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("af")
            cursor.blinking=False
            x,y,_ = solution[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("afrac")
            x,y,_ = solution[1].get_center()+0.6*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.5)

            self.wait_until_bookmark("ff")
            x,y,_ = solution[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor, x, y), run_time=0.5)
            cursor.blinking=True
            

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################
########## Concrete Qs ##############
#####################################
#####################################

#####################################
#####################################
class Func_4_3_P_1_q(ScaleQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$-0.5$", "$0.5$", "$-2$", "$2$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_4_3.P1.q.question-text")
        )

    def construct(self):

        self.intro = self.translate("Func_4_3.P1.q.intro")
        self.point = [2,-2]
        self.question = self.translate("Func_4_3.P1.q.question")
        super().construct()


class Func_4_3_P_1_a(ScaleAnswerScene):

    def construct(self):

        self.point = [2,-2]
        self.intro = self.translate("Func_4_3.P1.a.intro")
        self.question = self.translate("Func_4_3.P1.a.question")
        self.flip = self.translate("Func_4_3.P1.a.flip")
        super().construct()


class Func_4_3_P_1_b(ScaleAnswerScene):

    def construct(self):

        self.point = [2,-2]
        self.intro = self.translate("Func_4_3.P1.b.intro")
        self.question = self.translate("Func_4_3.P1.a.question")
        self.flip = self.translate("Func_4_3.P1.a.flip")
        super().construct()

class Func_4_3_P_1_c(ScaleAnswerScene):

    def construct(self):

        self.point = [2,-2]
        self.intro = self.translate("Func_4_3.P1.b.intro")
        self.question = self.translate("Func_4_3.P1.a.question")
        self.flip = self.translate("Func_4_3.P1.a.flip")
        super().construct()

class Func_4_3_P_1_d(ScaleAnswerScene):

    def construct(self):

        self.point = [2,-2]
        self.intro = self.translate("Func_4_3.P1.b.intro")
        self.question = self.translate("Func_4_3.P1.a.question")
        self.flip = self.translate("Func_4_3.P1.a.flip")
        super().construct()

#####################################
#####################################
class Func_4_3_P_2_q(ScaleQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\tfrac 12$", "$-\\tfrac 12$", "$1$", "$-1$"],
            correctAnswerIndex = 3,
            questionText=self.translate("Func_4_3.P2.q.question-text")
        )

    def construct(self):

        self.intro = self.translate("Func_4_3.P2.q.intro")
        self.point = [-2,-4]
        self.question = self.translate("Func_4_3.P2.q.question")
        super().construct()


class Func_4_3_P_2_a(ScaleAnswerScene):

    def construct(self):

        self.point = [-2,-4]
        self.intro = self.translate("Func_4_3.P2.a.intro")
        self.question = self.translate("Func_4_3.P2.q.question")
        self.flip = self.translate("Func_4_3.P2.a.flip")
        super().construct()

class Func_4_3_P_2_b(ScaleAnswerScene):

    def construct(self):

        self.point = [-2,-4]
        self.intro = self.translate("Func_4_3.P2.a.intro")
        self.question = self.translate("Func_4_3.P2.q.question")
        self.flip = self.translate("Func_4_3.P2.a.flip")
        super().construct()

class Func_4_3_P_2_c(ScaleAnswerScene):

    def construct(self):

        self.point = [-2,-4]
        self.intro = self.translate("Func_4_3.P2.a.intro")
        self.question = self.translate("Func_4_3.P2.q.question")
        self.flip = self.translate("Func_4_3.P2.a.flip")
        super().construct()

class Func_4_3_P_2_d(ScaleAnswerScene):

    def construct(self):

        self.point = [-2,-4]
        self.intro = self.translate("Func_4_3.P2.d.intro")
        self.question = self.translate("Func_4_3.P2.q.question")
        self.flip = self.translate("Func_4_3.P2.a.flip")
        super().construct()

#####################################
#####################################
class Func_4_3_P_3_q(ScaleQuestionScene):

    def task_definition(self) -> SophiaTaskDefinition:
        return SophiaTaskDefinition(
            answerOptions = ["$\\tfrac 12$", "$-\\tfrac 12$", "$1$", "$-1$"],
            correctAnswerIndex = 0,
            questionText=self.translate("Func_4_3.P3.q.question-text")
        )

    def construct(self):

        self.point = [1,0.5]
        self.intro = self.translate("Func_4_3.P3.q.intro")
        self.question = self.translate("Func_4_3.P3.q.question")
        super().construct()


class Func_4_3_P_3_a(ScaleAnswerScene):

    def construct(self):

        self.intro = self.translate("Func_4_3.P3.a.intro")
        self.point = [-2,-4]
        self.question = self.translate("Func_4_3.P3.q.question")
        self.flip = ""
        super().construct()

class Func_4_3_P_3_b(ScaleAnswerScene):

    def construct(self):

        self.point = [-2,-4]
        self.intro = self.translate("Func_4_3.P3.b.intro")
        self.question = self.translate("Func_4_3.P3.q.question")
        self.flip = ""
        super().construct()

class Func_4_3_P_3_c(ScaleAnswerScene):

    def construct(self):

        self.point = [-2,-4]
        self.intro = self.translate("Func_4_3.P3.b.intro")
        self.question = self.translate("Func_4_3.P3.q.question")
        self.flip = ""
        super().construct()

class Func_4_3_P_3_d(ScaleAnswerScene):

    def construct(self):

        self.point = [-2,-4]
        self.intro = self.translate("Func_4_3.P3.b.intro")
        self.question = self.translate("Func_4_3.P3.q.question")
        self.flip = ""
        super().construct()


PROTOTYPES = [
    PagePrototypeVideo.from_scene(Func_4_3_I_1_q),
    PagePrototypeQuestion.from_scene(Func_4_3_I_1_q),
    PagePrototypeVideo.from_scene(Func_4_3_I_1_a),
    PagePrototypeVideo.from_scene(Func_4_3_I_1_b),
    PagePrototypeVideo.from_scene(Func_4_3_I_1_c),
    PagePrototypeVideo.from_scene(Func_4_3_I_1_d),
    PagePrototypeVideo.from_scene(Func_4_3_P_1_q),
    PagePrototypeQuestion.from_scene(Func_4_3_P_1_q),
    PagePrototypeVideo.from_scene(Func_4_3_P_1_a),
    PagePrototypeVideo.from_scene(Func_4_3_P_1_b),
    PagePrototypeVideo.from_scene(Func_4_3_P_1_c),
    PagePrototypeVideo.from_scene(Func_4_3_P_1_d),
    PagePrototypeVideo.from_scene(Func_4_3_P_2_q),
    PagePrototypeQuestion.from_scene(Func_4_3_P_2_q),
    PagePrototypeVideo.from_scene(Func_4_3_P_2_a),
    PagePrototypeVideo.from_scene(Func_4_3_P_2_b),
    PagePrototypeVideo.from_scene(Func_4_3_P_2_c),
    PagePrototypeVideo.from_scene(Func_4_3_P_2_d),
    PagePrototypeVideo.from_scene(Func_4_3_P_3_q),
    PagePrototypeQuestion.from_scene(Func_4_3_P_3_q),
    PagePrototypeVideo.from_scene(Func_4_3_P_3_a),
    PagePrototypeVideo.from_scene(Func_4_3_P_3_b),
    PagePrototypeVideo.from_scene(Func_4_3_P_3_c),
    PagePrototypeVideo.from_scene(Func_4_3_P_3_d),
]