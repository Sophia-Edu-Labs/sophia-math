# 6_2: Exponential Functions: Logarithm

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
# Exercise 1: On Money (compare Aufgabe 5, Manuel Benz)
class Func_6_4_I_1_1_q(SophiaCursorScene):

    # def task_definition(self) -> SophiaTaskDefinition:
    #     return SophiaTaskDefinition(
    #         answerOptions = ["$x=\sqrt[5]{625}$", "$x=\sqrt[625]{5}$", "$x=\log_{625}{5}$", "$x=\log_5{625}$"],
    #         correctAnswerIndex = 3,
    #         questionText=self.translate("Func_6_3.I4.q.question-text")
    #     )

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = 0,0,0
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        capital = self.translate("words.capital")
        interest = self.translate("words.interest")
        years = self.translate("words.years")
        compound_interest = self.translate("words.compound_interest")
        bullets = VGroup(Tex(f"$\\bullet$ {capital}: 500\\$", color=c1t, font_size=fs2), Tex(f"$\\bullet$ {interest}: 10\\%", color=c1t, font_size=fs2), Tex("$\\bullet$ $10$ {years}", color=c1t, font_size=fs2))
        title = Tex(compound_interest, color=c1t, font_size=fs2).next_to(bullets, UP, buff=0.6)
        # Action Sequence
        with self.voiceover(
                text="""
In the realm of finance and investment, a common question arises: what is the future value of an investment under<bookmark mark="compound_in"/> compound interest conditions? For instance, consider the following scenario: An initial capital <bookmark mark="capital_in"/>of 500 Dollars is invested at an interest rate <bookmark mark="interest_in"/>of 5 percent. The interest is compounded annually. What would be the total amount of this capital after a <bookmark mark="time_in"/>period of 10 years?
"""
        ) as tracker:
            
            self.wait_until_bookmark("compound_in")
            self.play(Write(title))

            self.wait_until_bookmark("capital_in")
            x,y,_ = bullets[0].get_center()+0.4*DOWN
            cursor.idle=False
            self.play(CursorMoveTo(cursor, x,y), Write(bullets[0]), run_time=.5)

            self.wait_until_bookmark("interest_in")
            x,y,_ = bullets[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(bullets[1]), run_time=.5)

            self.wait_until_bookmark("time_in")
            x,y,_ = bullets[2].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor, x,y), Write(bullets[2]), run_time=.5)
            cursor.idle=True

        self.wait(4)