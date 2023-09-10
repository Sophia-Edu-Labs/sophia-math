# 6_1: Exponential Functions: Intro

# Import necessary libraries and modules
from abc import ABCMeta, abstractmethod
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



#####################################
#####################################
TASK_Func_6_1_I_1_q = SophiaTaskDefinition(
    answerOptions = ["With Rice", "With Gold"],
    correctAnswerIndex = 1,
    questionText = "How do you pay the artist?"
)
class Func_6_1_I_1_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Exponential Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        board = ImageMobject(assets_folder / "img" / "chessboard.png")
        board = board.scale(2.5/board.get_width()).move_to([-5.2, 1, 0])
        crown = ImageMobject(assets_folder / "img" / "crown.png")
        crown = crown.scale(2.5/crown.get_width()).move_to([-5.2, 1, 0])
        headphones = ImageMobject(assets_folder / "img" / "headphones.png")
        headphones = headphones.scale(2.5/headphones.get_width()).move_to([-5.2, 1, 0])
        rice = ImageMobject(assets_folder / "img" / "rice.png")
        rice = rice.scale(2.5/rice.get_width()).move_to([-5.2, 1, 0])
        goldcoin = ImageMobject(assets_folder / "img" / "goldcoin.png")
        goldcoin = goldcoin.scale(2.5/goldcoin.get_width()).move_to([-5.2, 1, 0])
        qmark = ImageMobject(assets_folder / "img" / "qmark.png")
        qmark = qmark.scale(2.5/qmark.get_width()).move_to([-5.2, 1, 0])


        # Action Sequence
        with self.voiceover(
                text="""
                Imagine you're <bookmark mark="crown"/> the king or the queen of an ancient empire.
                Whenever you're not busy ruling your kingdom, you like to play<bookmark mark="chess"/> chess with your friends.
                So you ask the most talented artist of your empire to make you a chessboard.
                When they come back with the chessboard, you are amazed by its beauty, so you decide to
                reward them with a prize.
                But you're a little short on cash, because you spent it all<bookmark mark="headphones"/> on a brand new pair of headphones,
                so you ask them to name their price.
                The artist offers you a choice:
                You can either <bookmark mark="gold"/>pay them 1 gold coin for every square on the chessboard,
                or you can <bookmark mark="rice"/>pay them 1 grain of rice for the first square, 2 grains of rice for the second square,
                4 grains of rice for the third square, 8 grains of rice for the fourth square, and so on, until
                you've paid them for all 64 squares. <bookmark mark="qmark"/>
                Which option do you choose?
                """
        ) as tracker:

            self.wait_until_bookmark("crown")
            self.play(crown.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("chess")
            self.play(crown.animate.shift(5*RIGHT), board.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("headphones")
            self.play(board.animate.shift(5*RIGHT), headphones.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("gold")
            self.play(headphones.animate.shift(5*RIGHT), goldcoin.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("rice")
            self.play(goldcoin.animate.shift(5*RIGHT), rice.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("qmark")
            self.play(rice.animate.shift(5*RIGHT), qmark.animate.shift(5*RIGHT), run_time=0.5)

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_6_1_I_1_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Exponential Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        grain_of_rice = ImageMobject(assets_folder / "img" / "grain_of_rice.png")
        grain_of_rice = grain_of_rice.scale(0.6/grain_of_rice.get_width()).move_to([-5.2, 1, 0])

        largeNumber = MathTex("18446744073709551615", color=c1t)
        largeNumber = largeNumber.scale(4/largeNumber.get_width()).shift(DOWN)

        twentyfirst = VGroup(Tex("$21$st square", color=c1t, font_size=fs2), Tex("$>1000000000$ grains of rice", color=c1t, font_size=fs3)).arrange(DOWN, aligned_edge=LEFT, buff=0.2).shift(DOWN)
        fourtyfirst = VGroup(Tex("$41$st square", color=c1t, font_size=fs2), Tex("$>1000000000000$ grains of rice", color=c1t, font_size=fs3)).arrange(DOWN, aligned_edge=LEFT, buff=0.2).next_to(twentyfirst, DOWN, buff=0.6)
        twentyfirst.shift((twentyfirst.get_left()[0]-fourtyfirst.get_left()[0])*LEFT)


        # Action Sequence
        with self.voiceover(
                text="""
                Mhm I'm not sure that's a great idea.
                Let's see, how much rice it will cost you.
                For the first square, you pay <bookmark mark="one"/>1 grain of rice.
                For the second square, you pay an additional<bookmark mark="two"/>2 grains of rice.
                For the third square, you pay an additional<bookmark mark="four"/>4 grains of rice.
                for the fourth square, you pay an additional<bookmark mark="eight"/>8 grains of rice.
                and for the fifth square, you pay an additional<bookmark mark="sixteen"/>16 grains of rice.
                Guess how many grains of rice you will have to pay, when you finish the first out of the
                8 rows on the chessboard? One hundred and twenty eight.
                That's a lot of rice. And you're not even done with the first row yet.
                Once you've reached the <bookmark mark="twentyfirst"/>twenty-first square, you will have to pay more than a million grains of rice.
                And once you've reached the <bookmark mark="fourtyfirst"/>forty-first square, you will have to pay more than a trillion grains of rice.
                In the end, you will have to pay a total of<bookmark mark="largeNumber"/> eighteen quintillion,
                four hundred forty-six quadrillion, seven hundred forty-four trillion, seventy-three billion,
                seven hundred nine million, five hundred fifty-one thousand, six hundred and fifteen grains of rice.
                I'm not sure about rice to gold conversion rates, but I'm pretty sure that gold is the cheaper option here...
                """
        ) as tracker:

            self.wait_until_bookmark("one")
            self.play(grain_of_rice.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("two")
            copies1 = Group(*[grain_of_rice.copy().shift(np.array([2*np.random.rand()-1, 2*np.random.rand()-1,0])/1.5) for i in range(2)])
            self.play(FadeIn(copies1), run_time=0.5)

            self.wait_until_bookmark("four")
            copies2 = Group(*[grain_of_rice.copy().shift(np.array([2*np.random.rand()-1, 2*np.random.rand()-1,0])/1.5) for i in range(4)])
            self.play(FadeIn(copies2), run_time=0.5)

            self.wait_until_bookmark("eight")
            copies3 = Group(*[grain_of_rice.copy().shift(np.array([2*np.random.rand()-1, 2*np.random.rand()-1,0])/1.5) for i in range(8)])
            self.play(FadeIn(copies3), run_time=0.5)

            self.wait_until_bookmark("sixteen")
            copies4 = Group(*[grain_of_rice.copy().shift(np.array([2*np.random.rand()-1, 2*np.random.rand()-1,0])/1.5) for i in range(16)])
            self.play(FadeIn(copies4), run_time=0.5)

            self.wait_until_bookmark("twentyfirst")
            self.play(Write(twentyfirst))

            self.wait_until_bookmark("fourtyfirst")
            self.play(Write(fourtyfirst))

            self.wait_until_bookmark("largeNumber")
            self.play(Write(largeNumber), FadeOut(copies1), FadeOut(copies2), FadeOut(copies3), FadeOut(copies4), FadeOut(grain_of_rice), Unwrite(twentyfirst), Unwrite(fourtyfirst))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


class Func_6_1_I_1_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Exponential Functions")

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        grain_of_rice = ImageMobject(assets_folder / "img" / "grain_of_rice.png")
        grain_of_rice = grain_of_rice.scale(0.6/grain_of_rice.get_width()).move_to([-5.2, 1, 0])

        largeNumber = MathTex("18446744073709551615", color=c1t)
        largeNumber = largeNumber.scale(4/largeNumber.get_width()).shift(DOWN)

        twentyfirst = VGroup(Tex("$21$st square", color=c1t, font_size=fs2), Tex("$>1000000000$ grains of rice", color=c1t, font_size=fs3)).arrange(DOWN, aligned_edge=LEFT, buff=0.2).shift(DOWN)
        fourtyfirst = VGroup(Tex("$41$st square", color=c1t, font_size=fs2), Tex("$>1000000000000$ grains of rice", color=c1t, font_size=fs3)).arrange(DOWN, aligned_edge=LEFT, buff=0.2).next_to(twentyfirst, DOWN, buff=0.6)
        twentyfirst.shift((twentyfirst.get_left()[0]-fourtyfirst.get_left()[0])*LEFT)


        # Action Sequence
        with self.voiceover(
                text="""
                Yep, that seems to be the right idea.
                For comparison, let's see, how much rice it would cost you.
                For the first square, you pay <bookmark mark="one"/>1 grain of rice.
                For the second square, you pay an additional<bookmark mark="two"/>2 grains of rice.
                For the third square, you pay an additional<bookmark mark="four"/>4 grains of rice.
                for the fourth square, you pay an additional<bookmark mark="eight"/>8 grains of rice.
                and for the fifth square, you pay an additional<bookmark mark="sixteen"/>16 grains of rice.
                Guess how many grains of rice you will have to pay, when you finish the first out of the
                8 rows on the chessboard? One hundred and twenty eight.
                That's a lot of rice. And you're not even done with the first row yet.
                Once you've reached the <bookmark mark="twentyfirst"/>twenty-first square, you will have to pay more than a million grains of rice.
                And once you've reached the <bookmark mark="fourtyfirst"/>forty-first square, you will have to pay more than a trillion grains of rice.
                In the end, you will have to pay a total of<bookmark mark="largeNumber"/> eighteen quintillion,
                four hundred forty-six quadrillion, seven hundred forty-four trillion, seventy-three billion,
                seven hundred nine million, five hundred fifty-one thousand, six hundred and fifteen grains of rice.
                I'm not sure about rice to gold conversion rates, but I'm pretty sure that gold is the cheaper option here...
                """
        ) as tracker:

            self.wait_until_bookmark("one")
            self.play(grain_of_rice.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("two")
            copies1 = Group(*[grain_of_rice.copy().shift(np.array([2*np.random.rand()-1, 2*np.random.rand()-1,0])/1.5) for i in range(2)])
            self.play(FadeIn(copies1), run_time=0.5)

            self.wait_until_bookmark("four")
            copies2 = Group(*[grain_of_rice.copy().shift(np.array([2*np.random.rand()-1, 2*np.random.rand()-1,0])/1.5) for i in range(4)])
            self.play(FadeIn(copies2), run_time=0.5)

            self.wait_until_bookmark("eight")
            copies3 = Group(*[grain_of_rice.copy().shift(np.array([2*np.random.rand()-1, 2*np.random.rand()-1,0])/1.5) for i in range(8)])
            self.play(FadeIn(copies3), run_time=0.5)

            self.wait_until_bookmark("sixteen")
            copies4 = Group(*[grain_of_rice.copy().shift(np.array([2*np.random.rand()-1, 2*np.random.rand()-1,0])/1.5) for i in range(16)])
            self.play(FadeIn(copies4), run_time=0.5)

            self.wait_until_bookmark("twentyfirst")
            self.play(Write(twentyfirst))

            self.wait_until_bookmark("fourtyfirst")
            self.play(Write(fourtyfirst))

            self.wait_until_bookmark("largeNumber")
            self.play(Write(largeNumber), FadeOut(copies1), FadeOut(copies2), FadeOut(copies3), FadeOut(copies4), FadeOut(grain_of_rice), Unwrite(twentyfirst), Unwrite(fourtyfirst))

        # Wait for 4 seconds at the end of the animation
        self.wait(4)


#####################################
#####################################

#Take this one out???
class Func_6_1_I_2(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Exponential Growth")


        # Create the coordinate system
        cords = self.add_cords([1, 64, 8], [1, 64, 8], x_ticks=[16,32, 48, 64], y_ticks=[16,32,48,64])
        plane = cords[0]
        lin_growth = Tex("Linear Growth", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        
        f_gold = lambda x: x
        g_gold = plane.plot(f_gold, color=YELLOW_C, x_range=[1,60,0.01])

        cords_2 = self.add_cords([0, 4, 1], [0, 16, 2], x_ticks = [0,1,2,3], x_labels=[16,32, 48, 64], y_ticks=[8,16,24,32], y_labels=["", "", "", ""])
        plane_2 = cords_2[0]
        exp_growth = Tex("Exponential Growth", color=c1t, font_size=fs2).next_to(cords_2, DOWN, buff=0.4)
        
        f_rice = lambda x: 2**x-1
        g_rice = plane_2.plot(f_rice, color=GREEN)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text="""
                What is the reason that in the chessboard example, the number of grains of rice you have to pay
                increases so fast? How does rice get so much more expensive than gold, so quickly?

                The answer to both of these questions is the same: Exponential Growth.
                Let's compare the two options, rice and gold, again. Specifically,
                let's describe them <bookmark mark="cords"/> using functions.

                We'll start with gold.
                The function that describes the amount of gold you have to pay for a given number of squares is
                <bookmark mark="f_gold"/> f of x equals x.
                For the first square, you have to pay one gold coin. So f of 1 equals 1.
                For the second square, you have to pay one gold coin as well. So f of 2 equals one for the first square,
                plus one for the second square, which is two. And so on. As you can see, the amount you have to pay
                increases linearly with the number of squares you have to pay for. One extra square costs exactly
                as much as each of the previous squares, and the last square costs exactly as much as the first one.
                We call this <bookmark mark="linear"/>linear growth...
                
                Now, let's <bookmark mark="clean"/> look at rice for comparison.
                The <bookmark mark="cords_rice"/>function that describes the amount of rice you have to pay for a
                given number of squares is <bookmark mark="f_rice"/> an exponential function
                For the first square, you have to pay one grain of rice. So f of 1 equals 1.
                For the second square, you have to pay two grains of rice. So f of 2 equals one for the first square,
                plus two for the second square, which is three. 
                For the third square, you have to pay four grains of rice. So f of 3 equals one for the first square,
                plus two for the second square, plus four for the third square, which is seven.
                And so on.
                As you can see, the amount you have to pay increases rapidly with the number of squares you have to pay for,
                because for each square, you have to pay twice as much as for the previous square.
                We call this <bookmark mark="exponential"/>exponential growth...
                """
        , subcaption='NOT AVAILABLE DUE TO BUG') as tracker:

            self.wait_until_bookmark("cords")
            self.play(Write(cords))

            self.wait_until_bookmark("f_gold")
            cursor.blinking=False
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m, dt: m.move_to(g_gold.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Write(g_gold))
            cursor.blinking=True

            self.wait_until_bookmark("linear")
            cursor.blinking=False
            x,y,_ = lin_growth.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(lin_growth), run_time=0.5)
            cursor.blinking=True


            self.wait_until_bookmark("clean")
            self.play(FadeOut(cords), FadeOut(g_gold), FadeOut(lin_growth))

            self.wait_until_bookmark("cords_rice")
            self.play(Write(cords_2))

            self.wait_until_bookmark("f_rice")
            cursor.blinking=False
            x,y,_ = g_rice.get_start()
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m, dt: m.move_to(g_rice.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Write(g_rice))
            cursor.blinking=True

            self.wait_until_bookmark("exponential")
            cursor.blinking=False
            x,y,_ = exp_growth.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(exp_growth), run_time=0.5)
            cursor.blinking=True

        self.wait(4)

#####################################
#####################################
class Func_6_1_I_3(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Linear Growth")

        chicken = ImageMobject(assets_folder / "img" / "chicken.png")
        chicken = chicken.scale(1.5/chicken.get_width()).move_to([-4, -1, 0])
        two_chickens = MathTex("2\\times", color=c1t).next_to(chicken, LEFT, buff=0.4).shift(RIGHT*5)

        egg = ImageMobject(assets_folder / "img" / "egg.png")
        egg = egg.scale(1.5/egg.get_width()).next_to(chicken, DOWN, buff=0.6).shift(0.2*LEFT)
        one_egg = Tex("$1/$day", color=c1t).next_to(egg, LEFT, buff=0.2).scale(0.8)
        one_egg.shift((two_chickens.get_left()-one_egg.get_left())*np.array([1,0,0]))

        farmer_male = ImageMobject(assets_folder / "img" / "farmer_male.png")
        farmer_male = farmer_male.scale(2/farmer_male.get_width()).move_to([-5.6, 1, 0])
        tom = Tex("Tom", color=c1t).next_to(farmer_male, RIGHT, buff=0.2)

        calendar = ImageMobject(assets_folder / "img" / "calendar.png")
        calendar = calendar.scale(2.5/calendar.get_width()).move_to([-5, 1, 0])


        cords = self.add_cords([0,8,1], [0,20,4], x_ticks=[1,2,3,4,5,6,7], y_ticks=[4,8,12,16,20])
        plane = cords[0]
        
        f_eggs = lambda x: 2*x
        f_tex_eggs = MathTex("f","(x)", "=", "2","x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        lin_growth = Tex("Linear Growth", color=c1t, font_size=fs2).next_to(f_tex_eggs, DOWN, buff=0.8)
        g_eggs = plane.plot(f_eggs, color=BLUE)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text="""
                Meet <bookmark mark="tom_in_1"/> Tom.
                Tom is a <bookmark mark="chicken_in_1"/> chicken farmer.
                He has <bookmark mark="two_chickens"/>two chickens. Every day, each of them lays
                <bookmark mark="one_egg_per_day"/>one egg.
                Because Tom likes eggs so much, he collects them every day
                and counts <bookmark mark="calendar"/>how many eggs he has collected over time.

                Let's help tom by describing the number of eggs he has collected using a function.
                We'll describe the function using a <bookmark mark="cords"/>graph.

                So after <bookmark mark="one_day"/>one day, tom has <bookmark mark="two_eggs"/>
                two eggs, because each of the two chickens has laid one egg.
                After <bookmark mark="two_days"/>two days, tom has <bookmark mark="four_eggs"/>
                four eggs, because each of the two chickens has laid one egg on the first day,
                and one egg on the second day.
                And after <bookmark mark="three_days"/>three days, tom has <bookmark mark="six_eggs"/>
                six eggs, because each of the two chickens has laid one egg on the first day,
                one egg on the second day, and one egg on the third day. and so it continues...

                So <bookmark mark="plot"/> every day, tom gets two extra eggs.
                This means, that we can describe the number of eggs tom has collected using a
                <bookmark mark="func"/>function f <bookmark mark="fx"/> of x equals 
                <bookmark mark="two_times"/>two times <bookmark mark="x"/>x, where x is the
                number of days that have passed.

                If you look at the plot of this function, you can see that it is a straight line,
                because the number of eggs increases by the same amount every day.
                This is called <bookmark mark="linear"/>linear growth.

                """
    ) as tracker:
            
            self.wait_until_bookmark("tom_in_1")
            self.play(farmer_male.animate.shift(5*RIGHT), tom.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("chicken_in_1")
            self.play(chicken.animate.shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("two_chickens")
            self.play(Write(two_chickens))

            self.wait_until_bookmark("one_egg_per_day")
            self.play(egg.animate.shift(RIGHT*5), run_time=0.5)
            self.play(Write(one_egg), run_time=0.5)

            self.wait_until_bookmark("calendar")
            self.play(calendar.animate.shift(RIGHT*5), farmer_male.animate.shift(5*RIGHT), tom.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("cords")
            self.play(calendar.animate.shift(RIGHT*5), run_time=0.5)
            self.play(Write(cords))

            self.wait_until_bookmark("one_day")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("two_eggs")
            x,y,_ = plane.c2p(1,2)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cc_two_eggs = cursor.copy().clear_updaters()
            self.add(cc_two_eggs)

            self.wait_until_bookmark("two_days")
            x,y,_ = plane.c2p(2,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("four_eggs")
            x,y,_ = plane.c2p(2,4)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cc_four_eggs = cursor.copy().clear_updaters()
            self.add(cc_four_eggs)

            self.wait_until_bookmark("three_days")
            x,y,_ = plane.c2p(3,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("six_eggs")
            x,y,_ = plane.c2p(3,6)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cc_six_eggs = cursor.copy().clear_updaters()
            self.add(cc_six_eggs)

            self.wait_until_bookmark("plot")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(7).add_updater(lambda m, dt: m.move_to(g_eggs.get_end())))
            cc_two_eggs._start_fading(2)
            cc_four_eggs._start_fading(2)
            cc_six_eggs._start_fading(2)
            cursor.blinking=True
            self.play(Create(g_eggs), run_time=5)

            self.wait_until_bookmark("func")
            cursor.blinking=False
            x,y,_ = f_tex_eggs[0].get_center()+0.4*DOWN
            self.play(egg.animate.shift(5*RIGHT), one_egg.animate.shift(5*RIGHT), chicken.animate.shift(5*RIGHT), two_chickens.animate.shift(5*RIGHT), CursorMoveTo(cursor,x,y), Write(f_tex_eggs), run_time=0.5)

            self.wait_until_bookmark("fx")
            x,y,_ = f_tex_eggs[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("two_times")
            x,y,_ = f_tex_eggs[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("x")
            x,y,_ = f_tex_eggs[4].get_center()+0.4*DOWN 
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("linear")
            cursor.blinking=False
            x,y,_ = lin_growth.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(lin_growth), run_time=0.5)
            cursor.blinking=True


        self.wait(4)


#####################################
#####################################
class Func_6_1_I_4(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        self.add_title("Exponential Growth")

        chicken = ImageMobject(assets_folder / "img" / "chicken.png")
        chicken = chicken.scale(1.5/chicken.get_width()).move_to([-4, -1, 0])
        two_chickens = MathTex("2\\times", color=c1t).next_to(chicken, LEFT, buff=0.6).shift(RIGHT*5)

        egg = ImageMobject(assets_folder / "img" / "egg.png")
        egg = egg.scale(1.5/egg.get_width()).next_to(chicken, DOWN, buff=0.6).shift(0.2*LEFT)
        one_egg = Tex("$1/$week", color=c1t).next_to(egg, LEFT, buff=0.2).scale(0.8)
        one_egg.shift((two_chickens.get_left()-one_egg.get_left())*np.array([1,0,0]))

        farmer_female = ImageMobject(assets_folder / "img" / "farmer_female.png")
        farmer_female = farmer_female.scale(2/farmer_female.get_width()).move_to([-5.6, 1, 0])
        Sophie = Tex("Sophie", color=c1t).next_to(farmer_female, RIGHT, buff=0.2)

        cords = self.add_cords([1,6,1], [0,64,8], x_ticks=[1,2,3,4,5], y_ticks=[16,32, 48])
        plane = cords[0]
        
        f_eggs = lambda x: 2**x
        f_tex_eggs = MathTex("f","(x)", "=", "2","^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        exp_growth = Tex("Exponential Growth", color=c1t, font_size=fs2).next_to(f_tex_eggs, DOWN, buff=0.8)
        g_eggs = plane.plot(f_eggs, color=BLUE)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text="""
                Meet <bookmark mark="Sophie_in_1"/> Sophie.
                Sophie loves <bookmark mark="chicken_in_1"/> chickens.
                She currently has <bookmark mark="two_chickens_1"/>two chickens, but she wants
                many more. Each of her two chickens lays <bookmark mark="one_egg_per_week"/>
                one egg per week, and at the end of the week, the  chicken from the egg is
                hatched and old enough to lay eggs itself. Those are some fast chickens!

                Let's describe the number of chickens Sophie has using the <bookmark mark="graph"/>
                graph of a function.
                So in the <bookmark mark="one_week"/>first week, sophie has two chickens<bookmark mark="two_chickens"/>
                One week <bookmark mark="two_weeks"/>later, Sophie has <bookmark mark="four_chickens"/>
                four chickens. The two chickens she started with, and the two chickens that hatched from the eggs.

                In the <bookmark mark="three_weeks"/>next week, Sophie has four chickens that lay one egg each,
                so she gets four eggs. This means that the total number of chickens after the second week is
                <bookmark mark="eight_chickens"/>eight: the four chickens from the first week, and the four chickens
                that hatched from the eggs.

                In the <bookmark mark="four_weeks"/>fourth week, Sophie has eight chickens that lay one
                egg each, so she gets eight eggs. So the total number of chickens after the third week is
                <bookmark mark="sixteen_chickens"/>sixteen: the eight chickens from the second week, and the
                eight chickens that hatched from the eggs.

                As you can see, <bookmark mark="plot"/>the number of chickens increases really fast, and this is what we call
                exponential growth. The number of chickens doubles every week, because each of your
                chickens lays one egg per week. This means, that the number of chickens you have after
                x weeks is described by <bookmark mark="f"/> f of <bookmark mark="fx"/> x equals <bookmark mark="two"/>
                two to the <bookmark mark="power"/> power of x. Because you start with two chickens, and each time x
                increases by one, the number of chickens doubles.
                
                This is what we call <bookmark mark="exponential"/>exponential growth.
                """
        , subcaption='NOT AVAILABLE DUE TO BUG') as tracker:
            
            self.wait_until_bookmark("Sophie_in_1")
            self.play(farmer_female.animate.shift(5*RIGHT), Sophie.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("chicken_in_1")
            self.play(chicken.animate.shift(RIGHT*5), run_time=0.5)

            self.wait_until_bookmark("two_chickens_1")
            self.play(Write(two_chickens))

            self.wait_until_bookmark("one_egg_per_week")
            self.play(egg.animate.shift(RIGHT*5), run_time=0.5)
            self.play(Write(one_egg), run_time=0.5)

            self.wait_until_bookmark("graph")
            self.play(farmer_female.animate.shift(5*RIGHT), Sophie.animate.shift(5*RIGHT), run_time=0.5)
            self.play(Write(cords))

            self.wait_until_bookmark("one_week")
            cursor.blinking=False
            x,y,_ = plane.c2p(1,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("two_chickens")
            x,y,_ = plane.c2p(1,2)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cc_two_chickens = cursor.copy().clear_updaters()
            self.add(cc_two_chickens)

            self.wait_until_bookmark("two_weeks")
            x,y,_ = plane.c2p(2,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("four_chickens")
            x,y,_ = plane.c2p(2,4)
            four_chickens = MathTex("4\\times", color=c1t).next_to(chicken, LEFT, buff=0.6)
            self.play(TransformMatchingTex(two_chickens, four_chickens), CursorMoveTo(cursor,x,y), run_time=0.3)
            cc_four_chickens = cursor.copy().clear_updaters()
            self.add(cc_four_chickens)

            self.wait_until_bookmark("three_weeks")
            x,y,_ = plane.c2p(3,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("eight_chickens")
            x,y,_ = plane.c2p(3,8)
            eight_chickens = MathTex("8\\times", color=c1t).next_to(chicken, LEFT, buff=0.6)
            self.play(TransformMatchingTex(four_chickens, eight_chickens), CursorMoveTo(cursor,x,y), run_time=0.3)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cc_eight_chickens = cursor.copy().clear_updaters()
            self.add(cc_eight_chickens)

            self.wait_until_bookmark("four_weeks")
            x,y,_ = plane.c2p(4,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("sixteen_chickens")
            x,y,_ = plane.c2p(4,16)
            sixteen_chickens = MathTex("16\\times", color=c1t).next_to(chicken, LEFT, buff=0.6)
            self.play(TransformMatchingTex(eight_chickens, sixteen_chickens), CursorMoveTo(cursor,x,y), run_time=0.3)
            cc_sixteen_chickens = cursor.copy().clear_updaters()
            self.add(cc_sixteen_chickens)

            self.wait_until_bookmark("plot")
            x,y,_ = plane.c2p(0,0)
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)
            cc_func = cursor.copy()._start_fading(7).add_updater(lambda m, dt: m.move_to(g_eggs.get_end()))
            chicken_counter = DecimalNumber(16, color=c1t, num_decimal_places=0).add_updater(lambda m: m.set_value(max(16,plane.p2c(g_eggs.get_end())[1])))
            self.remove(sixteen_chickens)
            sixteen_chickens = VGroup(chicken_counter, MathTex("\\times", color=c1t)).arrange(RIGHT, buff=0.2).next_to(chicken, LEFT, buff=0.6)
            self.add(cc_func, sixteen_chickens, chicken_counter)
            cc_two_chickens._start_fading(1)
            cc_four_chickens._start_fading(2)
            cc_eight_chickens._start_fading(3.5)
            cc_sixteen_chickens._start_fading(5)
            self.play(Create(g_eggs), run_time=10)
            cursor.blinking=True

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f_tex_eggs[0].get_center()+0.4*DOWN
            self.play(egg.animate.shift(5*RIGHT), one_egg.animate.shift(5*RIGHT), chicken.animate.shift(5*RIGHT), sixteen_chickens.animate.shift(5*RIGHT), CursorMoveTo(cursor,x,y), Write(f_tex_eggs), run_time=0.5)

            self.wait_until_bookmark("fx")
            x,y,_ = f_tex_eggs[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("two")
            x,y,_ = f_tex_eggs[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("power")
            x,y,_ = f_tex_eggs[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("exponential")
            cursor.blinking=False
            x,y,_ = exp_growth.get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), Write(exp_growth), run_time=0.5)
            cursor.blinking=True


        self.wait(4)

#####################################
#####################################
TASK_Func_6_1_I_5_q = SophiaTaskDefinition(
    answerOptions = ["exponentially", "linearly"],
    correctAnswerIndex = 0,
    questionText = "Does the number of bacteria grow exponentially or linearly?"
)

class Func_6_1_I_5_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Exponential or Linear?")

        sarah = ImageMobject(assets_folder / "img" / "biologist.png")
        sarah = sarah.scale(2.5/sarah.get_width()).move_to([-5, 1.4, 0])

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -1, 0])
        bacteria_double = VGroup(Tex("$\\Uparrow$ Duplicate every", color=c1t, font_size=fs2), Tex("$20$ minutes", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.).next_to(bacteria, DOWN, buff=0.2).shift(RIGHT*5.8)
        
        clock = ImageMobject(assets_folder / "img" / "clock.png")
        clock = clock.scale(1.5/clock.get_width()).move_to([-5, -1, 0])



        cords = self.add_cords([1,6,1], [0,64,8], x_ticks=[1,2,3,4,5], y_ticks=[16,32, 48])
        plane = cords[0]
        
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        x,y,_ = plane.c2p(0,0)
        cursor = AltCursor(stroke_width=0.0, blinking=True, x=x, y=y)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)


        # Action Sequence
        with self.voiceover(
                text="""
                My friend <bookmark mark="sarah"/>Sarah is a doctor and she does research on
                <bookmark mark="bacteria"/>bacteria.
                Did you know, that bacteria grow, by simply duplicating themselves?
                The bacteria that Sarah is studying for example <bookmark mark="bacteria_double"/>
                duplicate once every twenty minutes. This means, that every twenty minutes, each
                of the bacteria sarah is studying, turns into<bookmark mark="show_double"/> two bacteria...
                Now Sarah wants to know: Does the number of bacteria she is analyzing grow
                <bookmark mark="linear"/>linearly, or does it grow <bookmark mark="exponential"/> exponentially?
                """
         ) as tracker:
            
            self.wait_until_bookmark("sarah")
            self.play(sarah.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("bacteria")
            self.play(bacteria.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("bacteria_double")
            self.play(Write(bacteria_double))

            self.wait_until_bookmark("show_double")
            bacteria_double = bacteria.copy()
            self.play(bacteria_double.animate.shift(1.2*bacteria.get_width()*RIGHT), run_time=0.5)

            self.wait_until_bookmark("linear")
            cursor.blinking=False
            x,y,_ = title.get_right()+0.4*DOWN+0.5*LEFT
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
            cursor.blinking=True

            self.wait_until_bookmark("exponential")
            cursor.blinking=False
            x,y,_ = title.get_left()+0.4*DOWN+0.5*RIGHT
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)
            cursor.blinking=True

        self.wait(4)

class Func_6_1_I_5_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Exponential or Linear?")

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -1, 0])

        exponential_growth1 = Tex("$\\Rightarrow$ The number of bacteria", color=c1t, font_size=fs3)
        exponential_growth2 = Tex("grows exponentially", color=c1t, font_size=fs3)
        exponential_growth = VGroup(exponential_growth1, exponential_growth2).arrange(DOWN, buff=0.2).next_to(bacteria, DOWN, buff=0.8).shift(5.6*RIGHT)

        # Action Sequence
        with self.voiceover(
                text="""
                That's correct, well done.
                Let's look at the number of bacteria step by step.
                At first, there's one <bookmark mark="one"/> bacteria.
                After twenty minutes, the bacteria duplicates, so there are<bookmark mark="two"/> two bacteria.
                After another twenty minutes, each of the two bacteria duplicates, so there are <bookmark mark="four"/>four bacteria.
                And after another twenty minutes, they each duplicate <bookmark mark="eight"/>again, and we get four more bacteria, to get us to eight.

                So you see, how at each of the timesteps, we get twice as many bacteria as in the previous timestep:<bookmark mark="step0"/>
                In the first timestep, we get <bookmark mark="step1"/>one bacteria, in the second timestep, we get <bookmark mark="step2"/>two bacteria
                and in the third timestep, we get <bookmark mark="step3"/>four bacteria...
                This means, that the number of bacteria grows <bookmark mark="exponential"/>exponentially, because at each timestep we get
                twice as many additional bacteria as in the previous timestep.
                """
         ) as tracker:
            
            self.wait_until_bookmark("one")
            self.play(bacteria.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("two")
            bacteria_2 = bacteria.copy()
            self.play(bacteria_2.animate.shift(1.2*bacteria.get_width()*RIGHT), run_time=0.5)

            self.wait_until_bookmark("four")
            bacteria_3 = bacteria.copy()
            bacteria_4 = bacteria_2.copy()
            self.play(bacteria_3.animate.shift(1.2*bacteria.get_height()*UP), bacteria_4.animate.shift(1.2*bacteria.get_height()*UP), run_time=0.5)

            self.wait_until_bookmark("eight")
            bacteria_5 = bacteria.copy()
            bacteria_6 = bacteria_2.copy()
            bacteria_7 = bacteria_3.copy()
            bacteria_8 = bacteria_4.copy()
            self.play(bacteria_5.animate.shift(0.6*bacteria.get_height()*UP), bacteria_6.animate.shift(0.6*bacteria.get_height()*UP), bacteria_7.animate.shift(0.6*bacteria.get_height()*UP), bacteria_8.animate.shift(0.6*bacteria.get_height()*UP), run_time=0.5)

            self.wait_until_bookmark("step0")
            self.play(bacteria_2.animate.shift(5*RIGHT), bacteria_3.animate.shift(5*RIGHT), bacteria_4.animate.shift(5*RIGHT), bacteria_5.animate.shift(5*RIGHT), bacteria_6.animate.shift(5*RIGHT), bacteria_7.animate.shift(5*RIGHT), bacteria_8.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("step1")
            self.play(bacteria_2.animate.shift(5*LEFT), run_time=0.5)

            self.wait_until_bookmark("step2")
            self.play(bacteria_3.animate.shift(5*LEFT), bacteria_4.animate.shift(5*LEFT), run_time=0.5)

            self.wait_until_bookmark("step3")
            self.play(bacteria_5.animate.shift(5*LEFT), bacteria_6.animate.shift(5*LEFT), bacteria_7.animate.shift(5*LEFT), bacteria_8.animate.shift(5*LEFT), run_time=0.5)
        
            self.wait_until_bookmark("exponential")
            self.play(Write(exponential_growth))
        
        self.wait(4)



class Func_6_1_I_5_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Exponential or Linear?")

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -1, 0])

        exponential_growth1 = Tex("$\\Rightarrow$ The number of bacteria", color=c1t, font_size=fs3)
        exponential_growth2 = Tex("grows exponentially", color=c1t, font_size=fs3)
        exponential_growth = VGroup(exponential_growth1, exponential_growth2).arrange(DOWN, buff=0.2).next_to(bacteria, DOWN, buff=0.8).shift(5.6*RIGHT)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right.
                Let's look at the number of bacteria step by step.
                At first, there's one <bookmark mark="one"/> bacteria.
                After twenty minutes, the bacteria duplicates, so there are<bookmark mark="two"/> two bacteria.
                After another twenty minutes, each of the two bacteria duplicates, so there are <bookmark mark="four"/>four bacteria.
                And after another twenty minutes, they each duplicate <bookmark mark="eight"/>again, and we get four more bacteria, to get us to eight.

                So you see, how at each of the timesteps, we get twice as many bacteria as in the previous timestep:<bookmark mark="step0"/>
                In the first timestep, we get <bookmark mark="step1"/>one bacteria, in the second timestep, we get <bookmark mark="step2"/>two bacteria
                and in the third timestep, we get <bookmark mark="step3"/>four bacteria...
                This means, that the number of bacteria grows <bookmark mark="exponential"/>exponentially, because at each timestep we get
                twice as many additional bacteria as in the previous timestep.
                """
         ) as tracker:
            
            self.wait_until_bookmark("one")
            self.play(bacteria.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("two")
            bacteria_2 = bacteria.copy()
            self.play(bacteria_2.animate.shift(1.2*bacteria.get_width()*RIGHT), run_time=0.5)

            self.wait_until_bookmark("four")
            bacteria_3 = bacteria.copy()
            bacteria_4 = bacteria_2.copy()
            self.play(bacteria_3.animate.shift(1.2*bacteria.get_height()*UP), bacteria_4.animate.shift(1.2*bacteria.get_height()*UP), run_time=0.5)

            self.wait_until_bookmark("eight")
            bacteria_5 = bacteria.copy()
            bacteria_6 = bacteria_2.copy()
            bacteria_7 = bacteria_3.copy()
            bacteria_8 = bacteria_4.copy()
            self.play(bacteria_5.animate.shift(0.6*bacteria.get_height()*UP), bacteria_6.animate.shift(0.6*bacteria.get_height()*UP), bacteria_7.animate.shift(0.6*bacteria.get_height()*UP), bacteria_8.animate.shift(0.6*bacteria.get_height()*UP), run_time=0.5)

            self.wait_until_bookmark("step0")
            self.play(bacteria_2.animate.shift(5*RIGHT), bacteria_3.animate.shift(5*RIGHT), bacteria_4.animate.shift(5*RIGHT), bacteria_5.animate.shift(5*RIGHT), bacteria_6.animate.shift(5*RIGHT), bacteria_7.animate.shift(5*RIGHT), bacteria_8.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("step1")
            self.play(bacteria_2.animate.shift(5*LEFT), run_time=0.5)

            self.wait_until_bookmark("step2")
            self.play(bacteria_3.animate.shift(5*LEFT), bacteria_4.animate.shift(5*LEFT), run_time=0.5)

            self.wait_until_bookmark("step3")
            self.play(bacteria_5.animate.shift(5*LEFT), bacteria_6.animate.shift(5*LEFT), bacteria_7.animate.shift(5*LEFT), bacteria_8.animate.shift(5*LEFT), run_time=0.5)
        
            self.wait_until_bookmark("exponential")
            self.play(Write(exponential_growth))
        
        self.wait(4)


#####################################
#####################################
TASK_Func_6_1_I_6_q = SophiaTaskDefinition(
    answerOptions = ["$f(x)=2\\cdot x$", "$g(x)=2^x$", "$h(x)=x^2$"],
    correctAnswerIndex = 0,
    questionText = "Which function describes the number of bacteria at time x?"
)

class Func_6_1_I_6_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Exponential or Linear?")

        sarah = ImageMobject(assets_folder / "img" / "biologist.png")
        sarah = sarah.scale(2.5/sarah.get_width()).move_to([-5, 1.4, 0])

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -1, 0])
        bacteria_double = VGroup(Tex("$\\Uparrow$ Duplicate every", color=c1t, font_size=fs2), Tex("$20$ minutes", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.).next_to(bacteria, DOWN, buff=0.2).shift(RIGHT*5.8)
        
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        f_tex = MathTex("f","(x)", "=", "2", "\\cdot", "x", color=c1t, font_size=fs2)
        g_tex = MathTex("g","(x)", "=", "2", "^x", color=c1t, font_size=fs2)
        h_tex = MathTex("h","(x)", "=", "x^2", color=c1t, font_size=fs2)
        funcs = VGroup(f_tex, g_tex, h_tex).arrange(DOWN, buff=0.4, aligned_edge=LEFT).shift(DOWN)

        t = Table(
            [["x", "time"],
            ["1", "20 Minutes"],
            ["2", "40 Minutes"],
            ["...", "..."]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(bacteria, RIGHT, buff=0.2).shift(RIGHT*5)
        rows = t.get_rows()
        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines())


        # Action Sequence
        with self.voiceover(
                text="""
                <bookmark mark="sarah"/>Sarah knows, that the <bookmark mark="bacteria"/>bacteria she is studying duplicate every twenty minutes.
                Now she wants to describe the number of bacteria she is studying using a function.
                Let x<bookmark mark="table"/> be the time that is passed in units of twenty minutes, so <bookmark mark="row_1"/>x equals one means
                twenty minutes, <bookmark mark="row_2"/>x equals two means forty minutes,<bookmark mark="rowsss"/> and so on.
                <bookmark mark="clean"/>Which of these functions describe the number of bacteria at time x?
                Is it<bookmark mark="f"/> f of <bookmark mark="fx"/>x equals <bookmark mark="ftwo"/>2 times <bookmark mark="fxx"/> x?
                Or is it<bookmark mark="g"/> g of <bookmark mark="gx"/>x equals <bookmark mark="gtwo"/>two to the power of <bookmark mark="gxx"/> x?
                Or is it<bookmark mark="h"/> h of <bookmark mark="hx"/>x equals <bookmark mark="hxx"/>x squared?
                """
         ) as tracker:
            
            self.wait_until_bookmark("sarah")
            self.play(sarah.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("bacteria")
            self.play(bacteria.animate.shift(5*RIGHT), run_time=0.5)
            self.play(Write(bacteria_double))

            self.wait_until_bookmark("table")
            self.play(Write(t_structure), Write(rows[0]), run_time=0.5)

            self.wait_until_bookmark("row_1")
            self.play(Write(rows[1]), run_time=0.5)

            self.wait_until_bookmark("row_2")
            self.play(Write(rows[2]), run_time=0.5)

            self.wait_until_bookmark("rowsss")
            self.play(Write(rows[3]), run_time=0.5)

            self.wait_until_bookmark("clean")
            self.play(sarah.animate.shift(5*RIGHT), bacteria_double.animate.shift(5*RIGHT), bacteria.animate.shift(2.5*UP), t.animate.shift(2.5*UP), run_time=0.5)

            self.wait_until_bookmark("f")
            cursor.blinking=False
            x,y,_ = f_tex[0].get_center()+0.4*DOWN
            self.play(Write(f_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fx")
            x,y,_ = f_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("ftwo")
            x,y,_ = f_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("fxx")
            x,y,_ = f_tex[5].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("g")
            cursor.blinking=False
            x,y,_ = g_tex[0].get_center()+0.4*DOWN
            self.play(Write(g_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gx")
            x,y,_ = g_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gtwo")
            x,y,_ = g_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gxx")
            x,y,_ = g_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("h")
            cursor.blinking=False
            x,y,_ = h_tex[0].get_center()+0.4*DOWN
            self.play(Write(h_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("hx")
            x,y,_ = h_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("hxx")
            x,y,_ = h_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

        self.wait(4)

class Func_6_1_I_6_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Exponential growth")

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -0.4, 0])

        t = MathTable(
            [["x", "0", "1", "2", "3", "..."],
            ["\\text{Bacteria}", "1", "2", "2\\cdot 2", "2\\cdot2\\cdot2", "..." ]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(bacteria, DOWN, buff=0.4).shift(6*RIGHT)

        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines())
        cols = t.get_columns()

        g_tex = MathTex("g","(x)", "=", "2", "^x", color=c1t, font_size=fs2).next_to(t, DOWN, buff=0.2)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=False)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not it.
                Again, let's look at how many bacteria we have at each step.
                When we beginn, at x equals zero, there's one <bookmark mark="one"/> bacteria.
                After twenty minutes so at x equals one, the bacteria duplicates, so there are<bookmark mark="two"/> two bacteria.
                After another twenty minutes, so at x equals two,  each of the two bacteria duplicates, so there are <bookmark mark="four"/>four bacteria.
                And after another twenty minutes, meaning at x equals four, they each duplicate <bookmark mark="eight"/>again, and we get four more bacteria, to get us to eight.

                So you see, how at each of the timesteps, so every time that x increases by one, we get twice as many bacteria as in the previous timestep.<bookmark mark="step0"/>
                In the first timestep, we go from <bookmark mark="step1"/>one bacteria to two so we multiply the number of bacteria that we have by two.
                In the second timestep, we go from two <bookmark mark="step2"/> bacteria to four, so we double the number of bacteria again.
                and in the third timestep, we go from four <bookmark mark="step3"/> bacteria to eight, again multiplying the number of bacteria by two.

                This means, that at every time step, the number of bacteria is given by two to the power of x, because we need to multiply 2 x times by itself, to get the number of bacteria.
                This means, that the function describing the number of bacteria is<bookmark mark="exponential"/> g of <bookmark mark="gx"/>x equals <bookmark mark="gtwo"/>two to the power of <bookmark mark="gxx"/> x.
                """
         ) as tracker:
            
            self.wait_until_bookmark("one")
            self.play(bacteria.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("two")
            bacteria_2 = bacteria.copy()
            self.play(bacteria_2.animate.shift(1.2*bacteria.get_width()*RIGHT), run_time=0.5)

            self.wait_until_bookmark("four")
            bacteria_3 = bacteria.copy()
            bacteria_4 = bacteria_2.copy()
            self.play(bacteria_3.animate.shift(1.2*bacteria.get_height()*UP), bacteria_4.animate.shift(1.2*bacteria.get_height()*UP),
                      run_time=0.5)

            self.wait_until_bookmark("eight")
            bacteria_5 = bacteria.copy()
            bacteria_6 = bacteria_2.copy()
            bacteria_7 = bacteria_3.copy()
            bacteria_8 = bacteria_4.copy()
            self.play(bacteria_5.animate.shift(0.6*bacteria.get_height()*UP), bacteria_6.animate.shift(0.6*bacteria.get_height()*UP),
                      bacteria_7.animate.shift(0.6*bacteria.get_height()*UP), bacteria_8.animate.shift(0.6*bacteria.get_height()*UP),
                      run_time=0.5)

            self.wait_until_bookmark("step0")
            self.play(bacteria_2.animate.shift(5*RIGHT), bacteria_3.animate.shift(5*RIGHT), bacteria_4.animate.shift(5*RIGHT),
                      bacteria_5.animate.shift(5*RIGHT), bacteria_6.animate.shift(5*RIGHT), bacteria_7.animate.shift(5*RIGHT),
                      bacteria_8.animate.shift(5*RIGHT), Write(t_structure), Write(cols[0]), Write(cols[1]), run_time=0.5)

            self.wait_until_bookmark("step1")
            self.play(bacteria_2.animate.shift(5*LEFT), Write(cols[2]), run_time=0.5)

            self.wait_until_bookmark("step2")
            self.play(bacteria_3.animate.shift(5*LEFT), Write(cols[3]), bacteria_4.animate.shift(5*LEFT), run_time=0.5)

            self.wait_until_bookmark("step3")
            self.play(bacteria_5.animate.shift(5*LEFT), Write(cols[4]), bacteria_6.animate.shift(5*LEFT), bacteria_7.animate.shift(5*LEFT),
                      bacteria_8.animate.shift(5*LEFT), run_time=0.5)
            
            self.wait_until_bookmark("exponential")
            self.add(cursor)
            x,y,_ = g_tex[0].get_center()+0.4*DOWN
            self.play(Write(g_tex), CursorMoveTo(cursor,x,y), run_time=0.3)
        
            self.wait_until_bookmark("gx")
            cursor.blinking=False
            x,y,_ = g_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("gtwo")
            x,y,_ = g_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("gxx")
            x,y,_ = g_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            cursor.blinking=True

        self.wait(4)

class Func_6_1_I_6_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Exponential growth")

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -0.4, 0])

        t = MathTable(
            [["x", "0", "1", "2", "3", "..."],
            ["\\text{Bacteria}", "1", "2", "2\\cdot 2", "2\\cdot2\\cdot2", "..." ]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(bacteria, DOWN, buff=0.4).shift(6*RIGHT)

        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines())
        cols = t.get_columns()

        g_tex = MathTex("g","(x)", "=", "2", "^x", color=c1t, font_size=fs2).next_to(t, DOWN, buff=0.2)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=False)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)

        # Action Sequence
        with self.voiceover(
                text="""
                That's correct, well done.
                Again, let's look at how many bacteria we have at each step.
                When we beginn, at x equals zero, there's one <bookmark mark="one"/> bacteria.
                After twenty minutes so at x equals one, the bacteria duplicates, so there are<bookmark mark="two"/> two bacteria.
                After another twenty minutes, so at x equals two,  each of the two bacteria duplicates, so there are <bookmark mark="four"/>four bacteria.
                And after another twenty minutes, meaning at x equals four, they each duplicate <bookmark mark="eight"/>again, and we get four more bacteria, to get us to eight.

                So you see, how at each of the timesteps, so every time that x increases by one, we get twice as many bacteria as in the previous timestep.<bookmark mark="step0"/>
                In the first timestep, we go from <bookmark mark="step1"/>one bacteria to two so we multiply the number of bacteria that we have by two.
                In the second timestep, we go from two <bookmark mark="step2"/> bacteria to four, so we double the number of bacteria again.
                and in the third timestep, we go from four <bookmark mark="step3"/> bacteria to eight, again multiplying the number of bacteria by two.

                This means, that at every time step, the number of bacteria is given by two to the power of x, because we need to multiply 2 x times by itself, to get the number of bacteria.
                This means, that the function describing the number of bacteria is<bookmark mark="exponential"/> g of <bookmark mark="gx"/>x equals <bookmark mark="gtwo"/>two to the power of <bookmark mark="gxx"/> x.
                """
         ) as tracker:
            
            self.wait_until_bookmark("one")
            self.play(bacteria.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("two")
            bacteria_2 = bacteria.copy()
            self.play(bacteria_2.animate.shift(1.2*bacteria.get_width()*RIGHT), run_time=0.5)

            self.wait_until_bookmark("four")
            bacteria_3 = bacteria.copy()
            bacteria_4 = bacteria_2.copy()
            self.play(bacteria_3.animate.shift(1.2*bacteria.get_height()*UP), bacteria_4.animate.shift(1.2*bacteria.get_height()*UP),
                      run_time=0.5)

            self.wait_until_bookmark("eight")
            bacteria_5 = bacteria.copy()
            bacteria_6 = bacteria_2.copy()
            bacteria_7 = bacteria_3.copy()
            bacteria_8 = bacteria_4.copy()
            self.play(bacteria_5.animate.shift(0.6*bacteria.get_height()*UP), bacteria_6.animate.shift(0.6*bacteria.get_height()*UP),
                      bacteria_7.animate.shift(0.6*bacteria.get_height()*UP), bacteria_8.animate.shift(0.6*bacteria.get_height()*UP),
                      run_time=0.5)

            self.wait_until_bookmark("step0")
            self.play(bacteria_2.animate.shift(5*RIGHT), bacteria_3.animate.shift(5*RIGHT), bacteria_4.animate.shift(5*RIGHT),
                      bacteria_5.animate.shift(5*RIGHT), bacteria_6.animate.shift(5*RIGHT), bacteria_7.animate.shift(5*RIGHT),
                      bacteria_8.animate.shift(5*RIGHT), Write(t_structure), Write(cols[0]), Write(cols[1]), run_time=0.5)

            self.wait_until_bookmark("step1")
            self.play(bacteria_2.animate.shift(5*LEFT), Write(cols[2]), run_time=0.5)

            self.wait_until_bookmark("step2")
            self.play(bacteria_3.animate.shift(5*LEFT), Write(cols[3]), bacteria_4.animate.shift(5*LEFT), run_time=0.5)

            self.wait_until_bookmark("step3")
            self.play(bacteria_5.animate.shift(5*LEFT), Write(cols[4]), bacteria_6.animate.shift(5*LEFT), bacteria_7.animate.shift(5*LEFT),
                      bacteria_8.animate.shift(5*LEFT), run_time=0.5)
            
            self.wait_until_bookmark("exponential")
            self.add(cursor)
            x,y,_ = g_tex[0].get_center()+0.4*DOWN
            self.play(Write(g_tex), CursorMoveTo(cursor,x,y), run_time=0.3)
        
            self.wait_until_bookmark("gx")
            cursor.blinking=False
            x,y,_ = g_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("gtwo")
            x,y,_ = g_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("gxx")
            x,y,_ = g_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            cursor.blinking=True

        self.wait(4)

class Func_6_1_I_6_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Exponential growth")

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -0.4, 0])

        t = MathTable(
            [["x", "0", "1", "2", "3", "..."],
            ["\\text{Bacteria}", "1", "2", "2\\cdot 2", "2\\cdot2\\cdot2", "..." ]], element_to_mobject_config={"color": c1t}, line_config={"color": c1t}).scale(0.35).next_to(bacteria, DOWN, buff=0.4).shift(6*RIGHT)

        t_structure = VGroup(t.get_horizontal_lines(), t.get_vertical_lines())
        cols = t.get_columns()

        g_tex = MathTex("g","(x)", "=", "2", "^x", color=c1t, font_size=fs2).next_to(t, DOWN, buff=0.2)

        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=False)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)

        # Action Sequence
        with self.voiceover(
                text="""
                That's not it.
                Again, let's look at how many bacteria we have at each step.
                When we beginn, at x equals zero, there's one <bookmark mark="one"/> bacteria.
                After twenty minutes so at x equals one, the bacteria duplicates, so there are<bookmark mark="two"/> two bacteria.
                After another twenty minutes, so at x equals two,  each of the two bacteria duplicates, so there are <bookmark mark="four"/>four bacteria.
                And after another twenty minutes, meaning at x equals four, they each duplicate <bookmark mark="eight"/>again, and we get four more bacteria, to get us to eight.

                So you see, how at each of the timesteps, so every time that x increases by one, we get twice as many bacteria as in the previous timestep.<bookmark mark="step0"/>
                In the first timestep, we go from <bookmark mark="step1"/>one bacteria to two so we multiply the number of bacteria that we have by two.
                In the second timestep, we go from two <bookmark mark="step2"/> bacteria to four, so we double the number of bacteria again.
                and in the third timestep, we go from four <bookmark mark="step3"/> bacteria to eight, again multiplying the number of bacteria by two.

                This means, that at every time step, the number of bacteria is given by two to the power of x, because we need to multiply 2 x times by itself, to get the number of bacteria.
                This means, that the function describing the number of bacteria is<bookmark mark="exponential"/> g of <bookmark mark="gx"/>x equals <bookmark mark="gtwo"/>two to the power of <bookmark mark="gxx"/> x.
                """
         ) as tracker:
            
            self.wait_until_bookmark("one")
            self.play(bacteria.animate.shift(5*RIGHT), run_time=0.5)

            self.wait_until_bookmark("two")
            bacteria_2 = bacteria.copy()
            self.play(bacteria_2.animate.shift(1.2*bacteria.get_width()*RIGHT), run_time=0.5)

            self.wait_until_bookmark("four")
            bacteria_3 = bacteria.copy()
            bacteria_4 = bacteria_2.copy()
            self.play(bacteria_3.animate.shift(1.2*bacteria.get_height()*UP), bacteria_4.animate.shift(1.2*bacteria.get_height()*UP),
                      run_time=0.5)

            self.wait_until_bookmark("eight")
            bacteria_5 = bacteria.copy()
            bacteria_6 = bacteria_2.copy()
            bacteria_7 = bacteria_3.copy()
            bacteria_8 = bacteria_4.copy()
            self.play(bacteria_5.animate.shift(0.6*bacteria.get_height()*UP), bacteria_6.animate.shift(0.6*bacteria.get_height()*UP),
                      bacteria_7.animate.shift(0.6*bacteria.get_height()*UP), bacteria_8.animate.shift(0.6*bacteria.get_height()*UP),
                      run_time=0.5)

            self.wait_until_bookmark("step0")
            self.play(bacteria_2.animate.shift(5*RIGHT), bacteria_3.animate.shift(5*RIGHT), bacteria_4.animate.shift(5*RIGHT),
                      bacteria_5.animate.shift(5*RIGHT), bacteria_6.animate.shift(5*RIGHT), bacteria_7.animate.shift(5*RIGHT),
                      bacteria_8.animate.shift(5*RIGHT), Write(t_structure), Write(cols[0]), Write(cols[1]), run_time=0.5)

            self.wait_until_bookmark("step1")
            self.play(bacteria_2.animate.shift(5*LEFT), Write(cols[2]), run_time=0.5)

            self.wait_until_bookmark("step2")
            self.play(bacteria_3.animate.shift(5*LEFT), Write(cols[3]), bacteria_4.animate.shift(5*LEFT), run_time=0.5)

            self.wait_until_bookmark("step3")
            self.play(bacteria_5.animate.shift(5*LEFT), Write(cols[4]), bacteria_6.animate.shift(5*LEFT), bacteria_7.animate.shift(5*LEFT),
                      bacteria_8.animate.shift(5*LEFT), run_time=0.5)
            
            self.wait_until_bookmark("exponential")
            self.add(cursor)
            x,y,_ = g_tex[0].get_center()+0.4*DOWN
            self.play(Write(g_tex), CursorMoveTo(cursor,x,y), run_time=0.3)
        
            self.wait_until_bookmark("gx")
            cursor.blinking=False
            x,y,_ = g_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("gtwo")
            x,y,_ = g_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)

            self.wait_until_bookmark("gxx")
            x,y,_ = g_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.5)
            cursor.blinking=True

        self.wait(4)


#####################################
#####################################
TASK_Func_6_1_I_7_q = SophiaTaskDefinition(
    answerOptions = ["The blue graph", "The green graph", "The purple graph"],
    correctAnswerIndex = 1,
    questionText = "Which of the graphs belongs to the function?"
)

class Func_6_1_I_7_q(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Exponential or Linear?")

        sarah = ImageMobject(assets_folder / "img" / "biologist.png")
        sarah = sarah.scale(2.5/sarah.get_width()).move_to([-5, 1.4, 0])

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -1, 0])
        bacteria_double = VGroup(Tex("$\\Uparrow$ Duplicate every", color=c1t, font_size=fs2), Tex("$20$ minutes", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.).next_to(bacteria, DOWN, buff=0.2).shift(RIGHT*5.8)
        
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        cords = self.add_cords([0, 6, 1], [0, 64, 8], x_ticks=[2,4,6], y_ticks=[16,32,48,64])
        plane = cords[0]
        lin_growth = Tex("Linear Growth", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        g_tex = MathTex("g","(x)", "=", "2", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        
        f = lambda x:3*x
        g = lambda x:2**x
        h = lambda x:10*x**0.5

        f_plot = plane.plot(f, color=BLUE)
        g_plot = plane.plot(g, color=GREEN)
        h_plot = plane.plot(h, color=PURPLE)

        # Action Sequence
        with self.voiceover(
                text="""
                Look at the function<bookmark mark="g"/> g of <bookmark mark="gx"/>x equals <bookmark mark="gtwo"/>two to the power of <bookmark mark="gxx"/> x?
                Which of the following <bookmark mark="cords"/> graphs belongs to the function?
                The <bookmark mark="blue"/> blue graph? Or the <bookmark mark="green"/> green graph? Or is it the <bookmark mark="purple"/> purple graph?
                """
        ) as tracker:
            
            self.wait_until_bookmark("g")
            x,y,_ = g_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(g_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gx")
            x,y,_ = g_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gtwo")
            x,y,_ = g_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gxx")
            x,y,_ = g_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), run_time=0.3)


            self.wait_until_bookmark("blue")
            x,y,_ = f_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(1).add_updater(lambda m: m.move_to(f_plot.get_end())))
            self.add_pencil_sound(.5)
            self.play(Create(f_plot), run_time=0.5)

            self.wait_until_bookmark("green")
            x,y,_ = g_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(1).add_updater(lambda m: m.move_to(g_plot.get_end())))
            self.add_pencil_sound(.5)
            self.play(Create(g_plot), run_time=0.5)

            self.wait_until_bookmark("purple")
            x,y,_ = h_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(1).add_updater(lambda m: m.move_to(h_plot.get_end())))
            self.add_pencil_sound(.5)
            self.play(Create(h_plot), run_time=0.5)

        self.wait(4)


class Func_6_1_I_7_a(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Exponential or Linear?")

        sarah = ImageMobject(assets_folder / "img" / "biologist.png")
        sarah = sarah.scale(2.5/sarah.get_width()).move_to([-5, 1.4, 0])

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -1, 0])
        bacteria_double = VGroup(Tex("$\\Uparrow$ Duplicate every", color=c1t, font_size=fs2), Tex("$20$ minutes", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.).next_to(bacteria, DOWN, buff=0.2).shift(RIGHT*5.8)
        
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        cords = self.add_cords([0, 6, 1], [0, 64, 8], x_ticks=[2,4,6], y_ticks=[16,32,48,64])
        plane = cords[0]
        lin_growth = Tex("Linear Growth", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        g_tex = MathTex("g","(x)", "=", "2", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        
        f = lambda x:3*x
        g = lambda x:2**x
        h = lambda x:10*x**0.5

        f_plot = plane.plot(f, color=BLUE)
        g_plot = plane.plot(g, color=GREEN)
        h_plot = plane.plot(h, color=PURPLE)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right.
                For the function <bookmark mark="g"/> g of <bookmark mark="gx"/>x equals <bookmark mark="gtwo"/>two to the power of <bookmark mark="gxx"/> x,
                the number of bacteria doubles every twenty minutes. So each timestep yields twice as many bacteria as the previous one.<bookmark mark="cords"/>
                The <bookmark mark="blue"/> blue graph has a constant slope, that means it always increases at the same rate, so it can't be the one we're
                looking for.
                The <bookmark mark="purple"/> purple graph increases at a decreasing rate, so it can't be right <bookmark mark="clear_cords"/> either.
                The <bookmark mark="green"/> green graph however, increases at an increasing rate so it must be the one we're looking for. Indeed,
                it doubles at every timestep, so it must be the right one.
                """
        ) as tracker:
            
            self.wait_until_bookmark("g")
            x,y,_ = g_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(g_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gx")
            x,y,_ = g_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gtwo")
            x,y,_ = g_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gxx")
            x,y,_ = g_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), run_time=0.3)


            self.wait_until_bookmark("blue")
            x,y,_ = f_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(f_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(f_plot))

            self.wait_until_bookmark("purple")
            x,y,_ = h_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(h_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(h_plot))

            self.wait_until_bookmark("clear_cords")
            self.play(FadeOut(h_plot), FadeOut(f_plot), run_time=0.3)

            self.wait_until_bookmark("green")
            x,y,_ = g_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g_plot))

        self.wait(4)

class Func_6_1_I_7_b(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Exponential or Linear?")

        sarah = ImageMobject(assets_folder / "img" / "biologist.png")
        sarah = sarah.scale(2.5/sarah.get_width()).move_to([-5, 1.4, 0])

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -1, 0])
        bacteria_double = VGroup(Tex("$\\Uparrow$ Duplicate every", color=c1t, font_size=fs2), Tex("$20$ minutes", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.).next_to(bacteria, DOWN, buff=0.2).shift(RIGHT*5.8)
        
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        cords = self.add_cords([0, 6, 1], [0, 64, 8], x_ticks=[2,4,6], y_ticks=[16,32,48,64])
        plane = cords[0]
        lin_growth = Tex("Linear Growth", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        g_tex = MathTex("g","(x)", "=", "2", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        
        f = lambda x:3*x
        g = lambda x:2**x
        h = lambda x:10*x**0.5

        f_plot = plane.plot(f, color=BLUE)
        g_plot = plane.plot(g, color=GREEN)
        h_plot = plane.plot(h, color=PURPLE)

        # Action Sequence
        with self.voiceover(
                text="""
                Yep, that's it!
                For the function <bookmark mark="g"/> g of <bookmark mark="gx"/>x equals <bookmark mark="gtwo"/>two to the power of <bookmark mark="gxx"/> x,
                the number of bacteria doubles every twenty minutes. So each timestep yields twice as many bacteria as the previous one.<bookmark mark="cords"/>
                The <bookmark mark="blue"/> blue graph has a constant slope, that means it always increases at the same rate, so it can't be the one we're
                looking for.
                The <bookmark mark="purple"/> purple graph increases at a decreasing rate, so it can't be right <bookmark mark="clear_cords"/> either.
                The <bookmark mark="green"/> green graph however, increases at an increasing rate so it must be the one we're looking for. Indeed,
                it doubles at every timestep, so it must be the right one.
                """
        ) as tracker:
            
            self.wait_until_bookmark("g")
            x,y,_ = g_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(g_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gx")
            x,y,_ = g_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gtwo")
            x,y,_ = g_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gxx")
            x,y,_ = g_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), run_time=0.3)


            self.wait_until_bookmark("blue")
            x,y,_ = f_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(f_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(f_plot))

            self.wait_until_bookmark("purple")
            x,y,_ = h_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(h_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(h_plot))

            self.wait_until_bookmark("clear_cords")
            self.play(FadeOut(h_plot), FadeOut(f_plot), run_time=0.3)

            self.wait_until_bookmark("green")
            x,y,_ = g_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g_plot))

        self.wait(4)

class Func_6_1_I_7_c(SophiaCursorScene):

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        title = self.add_title("Exponential or Linear?")

        sarah = ImageMobject(assets_folder / "img" / "biologist.png")
        sarah = sarah.scale(2.5/sarah.get_width()).move_to([-5, 1.4, 0])

        bacteria = ImageMobject(assets_folder / "img" / "bacteria.png")
        bacteria = bacteria.scale(1.5/bacteria.get_width()).move_to([-6, -1, 0])
        bacteria_double = VGroup(Tex("$\\Uparrow$ Duplicate every", color=c1t, font_size=fs2), Tex("$20$ minutes", color=c1t, font_size=fs2)).arrange(DOWN, buff=0.).next_to(bacteria, DOWN, buff=0.2).shift(RIGHT*5.8)
        
        def cursor_sound_updater(mob, dt):
            if mob.needSound:
                mob.needSound = False
                self.add_cursor_sound()
        cursor = AltCursor(stroke_width=0.0, blinking=True)
        cursor.autoFadeBackground = True
        cursor.add_updater(cursor_sound_updater)
        self.add(cursor)

        cords = self.add_cords([0, 6, 1], [0, 64, 8], x_ticks=[2,4,6], y_ticks=[16,32,48,64])
        plane = cords[0]
        lin_growth = Tex("Linear Growth", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)

        g_tex = MathTex("g","(x)", "=", "2", "^x", color=c1t, font_size=fs2).next_to(cords, DOWN, buff=0.4)
        
        f = lambda x:3*x
        g = lambda x:2**x
        h = lambda x:10*x**0.5

        f_plot = plane.plot(f, color=BLUE)
        g_plot = plane.plot(g, color=GREEN)
        h_plot = plane.plot(h, color=PURPLE)

        # Action Sequence
        with self.voiceover(
                text="""
                No, that's not right.
                For the function <bookmark mark="g"/> g of <bookmark mark="gx"/>x equals <bookmark mark="gtwo"/>two to the power of <bookmark mark="gxx"/> x,
                the number of bacteria doubles every twenty minutes. So each timestep yields twice as many bacteria as the previous one.<bookmark mark="cords"/>
                The <bookmark mark="blue"/> blue graph has a constant slope, that means it always increases at the same rate, so it can't be the one we're
                looking for.
                The <bookmark mark="purple"/> purple graph increases at a decreasing rate, so it can't be right <bookmark mark="clear_cords"/> either.
                The <bookmark mark="green"/> green graph however, increases at an increasing rate so it must be the one we're looking for. Indeed,
                it doubles at every timestep, so it must be the right one.
                """
        ) as tracker:
            
            self.wait_until_bookmark("g")
            x,y,_ = g_tex[0].get_center()+0.4*DOWN
            cursor.blinking=False
            self.play(Write(g_tex), CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gx")
            x,y,_ = g_tex[1].get_center()+0.4*DOWN
            self.play(CursorMoveTo(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gtwo")
            x,y,_ = g_tex[3].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)

            self.wait_until_bookmark("gxx")
            x,y,_ = g_tex[4].get_center()+0.4*DOWN
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            cursor.blinking=True

            self.wait_until_bookmark("cords")
            self.play(Write(cords), run_time=0.3)


            self.wait_until_bookmark("blue")
            x,y,_ = f_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(f_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(f_plot))

            self.wait_until_bookmark("purple")
            x,y,_ = h_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(h_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(h_plot))

            self.wait_until_bookmark("clear_cords")
            self.play(FadeOut(h_plot), FadeOut(f_plot), run_time=0.3)

            self.wait_until_bookmark("green")
            x,y,_ = g_plot.get_start()
            self.play(CursorMoveToCurved(cursor,x,y), run_time=0.3)
            self.add(cursor.copy()._start_fading(2).add_updater(lambda m: m.move_to(g_plot.get_end())))
            self.add_pencil_sound(1.5)
            self.play(Create(g_plot))

        self.wait(4)

PROTOTYPES=[
    PagePrototypeVideo.from_scene(Func_6_1_I_1_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_6_1_I_1_q, Func_6_1_I_1_q.__name__),
    PagePrototypeVideo.from_scene(Func_6_1_I_1_a),
    PagePrototypeVideo.from_scene(Func_6_1_I_1_b),
    PagePrototypeVideo.from_scene(Func_6_1_I_2),
    PagePrototypeVideo.from_scene(Func_6_1_I_3),
    PagePrototypeVideo.from_scene(Func_6_1_I_4),
    PagePrototypeVideo.from_scene(Func_6_1_I_5_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_6_1_I_5_q, Func_6_1_I_5_q.__name__),
    PagePrototypeVideo.from_scene(Func_6_1_I_5_a),
    PagePrototypeVideo.from_scene(Func_6_1_I_5_b),
    PagePrototypeVideo.from_scene(Func_6_1_I_6_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_6_1_I_6_q, Func_6_1_I_6_q.__name__),
    PagePrototypeVideo.from_scene(Func_6_1_I_6_a),
    PagePrototypeVideo.from_scene(Func_6_1_I_6_b),
    PagePrototypeVideo.from_scene(Func_6_1_I_6_c),
    PagePrototypeVideo.from_scene(Func_6_1_I_7_q),
    PagePrototypeQuestion.from_task_definition(TASK_Func_6_1_I_7_q, Func_6_1_I_7_q.__name__),
    PagePrototypeVideo.from_scene(Func_6_1_I_7_a),
    PagePrototypeVideo.from_scene(Func_6_1_I_7_b),
    PagePrototypeVideo.from_scene(Func_6_1_I_7_c)
]
