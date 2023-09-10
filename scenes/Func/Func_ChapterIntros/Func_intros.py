# 4_2: Quadratic Functions: Shifting

# Import necessary libraries and modules
from sophialib.page_prototypes.prototype import PagePrototypeQuestion, PagePrototypeVideo
from sophialib.styles.sophiascene import (CursorMoveToCurved, CursorPositionTracker,
                                          CursorPositionTracking,
                                          CursorResizeDefault, SophiaScene, Cursor,
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

def create_piecewise_linear(points):
    def piecewise_linear(x):
        # Sort the points based on x-coordinate
        sorted_points = sorted(points, key=lambda p: p[0])

        # Find the closest two points for interpolation
        left_point, right_point = None, None
        for point in sorted_points:
            if x < point[0]:
                right_point = point
                break
            left_point = point

        # Extrapolate if x is outside the range of points
        if right_point is None:
            return sorted_points[-1][1]
        if left_point is None:
            return sorted_points[0][1]

        # Linear interpolation
        x1, y1 = left_point
        x2, y2 = right_point
        slope = (y2 - y1) / (x2 - x1)
        interpolated_value = y1 + slope * (x - x1)

        return interpolated_value

    return piecewise_linear


class Func_1_Intro(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Functions - Intro")
        
        #Create the coordinate system
        cords = self.add_cords([6, 24, 3], [5, 25, 5], x_ticks=[6, 12, 18, 24], y_ticks=[10, 15, 20, 25],
                               x_labels=[6, 12, 18, 24], y_labels=[5, 10, 15, 20, 25]).shift(DOWN*1.4)
        plane = cords[0]
        # self.add(cords)

        func = create_piecewise_linear([[6, 9], [8, 12], [10, 17], [12, 19], [14, 22], [16, 18], [18, 13], [20, 11], [22, 8], [24, 7]])
        graph = plane.plot(func, color=BLUE)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=0, y=-2)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)



        # Action Sequence
        with self.voiceover(
                text="""
                How fast is your friend, who is currently running from a wild cow, at any given time?
                How much money would you accumulate over time, if you got a Dollar every time you are bored in class?
                Or what is the speed of the person you see skating on the ice at any given time?
                In the first chapter of the functions series, you will learn how to describe real-world scenarios like these.
                using functions. You will also learn more about <bookmark mark="f"/>graphs of functions, like the one you see on screen.
                Once you've finished the chapter you'll know what a function is, how to plot a function, how to
                model real world scenarios using functions, and more!
                Functions are also very important for many other topics in math, <bookmark mark="fOut"/> so it's super important to understand them well.
                So let's make sure to try our best! Let's get started!
                """
        ) as tracker:

            self.wait_until_bookmark("f")
            self.play(Write(cords), Write(graph))

            self.wait_until_bookmark("fOut")
            self.play(FadeOut(cords), FadeOut(graph), run_time=1)


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_2_Intro(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Functions - Intro")
        
        #Create the coordinate system
        cords = self.add_cords([-4, 4, 2], [-4,4,2], x_ticks=[-4,-2,2,4], y_ticks=[-4,-2,2,4]).shift(DOWN*1.4)
        plane = cords[0]
        # self.add(cords)

        term = MathTex("f(x)=ax+b", color=c1t).next_to(cords, DOWN, buff=0.2)

        func = lambda x: x
        graph = plane.plot(func, color=BLUE)
        graph2 = graph.copy()
        cords2 = cords.copy()

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=0, y=-2)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)



        # Action Sequence
        with self.voiceover(
                text="""
                Here are three situations, that can be modeled with linear functions:
                One: You're ordering burgers with your friends and you're figuring out, how much you will have to spend
                depending on how many burgers you're ordering. Two: you've got a job working as a lifeguard with a fixed
                hourly salary, and you want to determine how much money you'll receive for your work. Three: you're going
                to a sports game and in addition to the ticket price, you have to pay for each drink you're getting. In
                this chapter, you will learn how to model situations like these <bookmark mark="plot"/>using linear functions.
                Many concepts, in this chapter are some of the most <bookmark mark="fOut"/>fundamental techniques in all of mathematics, so
                understanding them well will make your life much easier later on, when you learn about other functions.
                Specifically, we'll learn about how to use <bookmark mark="term"/>terms to describe linear functions, how to<bookmark mark="plot2"/> plot linear functions,
                how to model interpret linear <bookmark mark="plotOut"/>functions and much more. 
                """
        ) as tracker:

            self.wait_until_bookmark("plot")
            self.play(Write(cords), Write(graph))

            self.wait_until_bookmark("fOut")
            self.play(FadeOut(cords), FadeOut(graph), run_time=1)

            self.wait_until_bookmark("term")
            self.play(Write(term))

            self.wait_until_bookmark("plot2")
            self.play(FadeOut(term), Write(cords2), Write(graph2))

            self.wait_until_bookmark("plotOut")
            self.play(FadeOut(cords2), FadeOut(graph2), run_time=1)


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_3_Intro(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        self.add_title("Functions - Intro")
        
        #Create the coordinate system
        cords = self.add_cords([-4, 4, 2], [-4,4,2], x_ticks=[-4,-2,2,4], y_ticks=[-4,-2,2,4]).shift(DOWN*1.4)
        plane = cords[0]
        # self.add(cords)

        func = lambda x:1/x
        graph = VGroup(plane.plot(func, color=BLUE, x_range=[-4,-0.25,0.0001]), plane.plot(func, color=BLUE, x_range=[0.25,4,0.0001]))

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=0, y=-2)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)



        # Action Sequence
        with self.voiceover(
                text="""
                Sharing is caring and because I care about your math skills, in this chapter I will share all of my
                knowledge about <bookmark mark="plot"/> fractional rational functions. They will help you share
                everything you have with your friends and other people in your life, because they are
                the perfect tool to model situations where you have to share something. <bookmark mark="fOut"/>
                For example, you can use fractional rational functions
                to model how much food each person gets, if the food is shared equally between a group of people.
                Or, if you prefer to look out for your own good, you can use them to determine how much money you'll
                have to pay for a shared bill, depending on how many people are sharing it. In this chapter, you will
                learn how to model situations like these <bookmark mark="plot2"/>using fractional rational functions.
                You will learn about important concepts like asymptotes, singularities and many other things that have
                fancy sounding names. 
                """
        ) as tracker:

            self.wait_until_bookmark("plot")
            self.play(Write(cords), Write(graph))

            self.wait_until_bookmark("fOut")
            self.play(FadeOut(cords), FadeOut(graph), run_time=1)

            self.wait_until_bookmark("plot2")
            self.play(Write(cords), Write(graph))


        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_4_Intro(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        
        #Create the coordinate system
        cords = self.add_cords([-2, 2, 1], [-4,4,2], x_ticks=[-2,-1,1,2], y_ticks=[-4,-2,2,4]).shift(DOWN)
        plane = cords[0]
        # self.add(cords)

        func = lambda x:x**2
        graph = plane.plot(func, color=BLUE)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=0, y=-2)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        qf = Tex("Quadratic ", "Functions", color=c1t).next_to(cords, UP, buff=1.4).scale(0.8)



        # Action Sequence
        with self.voiceover(
                text="""
                Scoring the perfect shot in basketball.
                Or designing the most exciting rollercoaster ride.
                Or calculating the speed at which you fall towards the water when we jump off a cliff.
                These are all situations that can be modeled with <bookmark mark="quadratic"/> quadratic<bookmark mark="functions"/> functions.
                And guess what! <bookmark mark="reset"/>Quadratic functions are what this chapter is all about!
                In this chapter, you will learn how to model situations like these using quadratic functions.
                <bookmark mark="cords"/>We will learn how to <bookmark mark="plot"/>plot quadratic functions, how to find their function terms, different ways
                of writing their function terms, and much more. Let's get started!
                """
        ) as tracker:

            self.wait_until_bookmark("quadratic")
            cursor.blinking=False
            x,y,_ = qf[0].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(qf[0]), run_time=0.3)

            self.wait_until_bookmark("functions")
            x,y,_ = qf[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(qf[1]), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("reset")
            x,y,_ = plane.c2p(0,0)
            cursor.blinking=False
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("cords")
            cursor.blinking=False
            x,y,_ = graph.get_start()
            self.play(CursorMoveTo(cursor,x,y), Write(cords), run_time=0.5)

            self.wait_until_bookmark("plot")
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(graph.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(graph))
            cursor.blinking=True

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_5_Intro(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        
        #Create the coordinate system
        cords = self.add_cords([-2, 2, 1], [-4,4,2], x_ticks=[-2,-1,1,2], y_ticks=[-4,-2,2,4]).shift(DOWN)
        plane = cords[0]
        self.add(cords)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=0, y=-2)
        cursor.autoFadeBackground = False
        cursor.add_updater(cursor_sound_updater)
        cursor.add_updater(lambda m: self.bring_to_front(cursor) if not m.isHidden else None)
        self.add(cursor)

        pf = Tex("Power ", "Functions", color=c1t).next_to(cords, UP, buff=1.4).scale(0.8)

        x2f = lambda x: x**2
        x3f = lambda x: x**3
        x4f = lambda x: x**4

        x2g = plane.plot(x2f, color=BLUE)
        x3g = plane.plot(x3f, color=PURPLE, x_range=[-4**(1/3),4**(1/3), 0.0001])
        x4g = plane.plot(x4f, color=GREEN, x_range=[-4**(1/4),4**(1/4), 0.0001])

        x2t = MathTex("x^2", color=BLUE, font_size=fs2).next_to(cords, DOWN, buff=0.2)
        x3t = MathTex("x^3", color=PURPLE, font_size=fs2).next_to(cords, DOWN, buff=0.2)
        x4t = MathTex("x^4", color=GREEN, font_size=fs2).next_to(cords, DOWN, buff=0.2)

        roots1 = Tex("Roots", color=c1t).scale(0.8).next_to(x4t, DOWN, buff=0.4)
        roots2 = Tex("$\\sqrt{x}$", color=c1t).scale(0.8).next_to(roots1, DOWN, buff=0.2)



        # Action Sequence
        with self.voiceover(
                text="""
                There are square functions, that involve terms like <bookmark mark="x2"/> x squared.
                But there is so much more. There are <bookmark mark="cubic"/> cubic functions, that involve terms like x cubed.
                And there are <bookmark mark="quartic"/> functions of degree four, that involve terms like x to the power of four,
                and you can continue this for any number you want. These functions are called <bookmark mark="power"/> power functions.
                In this chapter, you will learn how to deal with power functions, and you will<bookmark mark="roots"/> learn about roots. Roots are
                the opposite of powers. So to undo what a power function does, you can use a root function. Curious?
                Then let's get started!
                """
        ) as tracker:

            self.wait_until_bookmark("x2")
            cursor.blinking=False
            x,y,_ = x2g.get_start()
            self.play(CursorMoveTo(cursor,x,y), Write(x2t), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(x2g.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(x2g))

            self.wait_until_bookmark("cubic")
            x,y,_ = x3g.get_start()
            self.play(CursorMoveTo(cursor,x,y), Write(x3t), Unwrite(x2g), Unwrite(x2t), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(x3g.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(x3g))

            self.wait_until_bookmark("quartic")
            x,y,_ = x4g.get_start()
            self.play(CursorMoveTo(cursor,x,y), Write(x4t), Unwrite(x3g), Unwrite(x3t), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(x4g.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(x4g))
            cursor.blinking=True

            self.wait_until_bookmark("power")
            cursor.blinking=False
            x,y,_ = pf.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(pf), run_time=0.3)
            cursor.blinking=True


            self.wait_until_bookmark("roots")
            cursor.blinking=False
            x,y,_ = roots2.get_center()+0.6*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(roots1), Write(roots2), run_time=0.3)
            cursor.blinking=True


        # Wait for 4 seconds at the end of the animation
        self.wait(4)
