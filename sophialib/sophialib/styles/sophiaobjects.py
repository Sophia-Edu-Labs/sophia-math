from manim import *
from sophialib.styles.styleconstants import *


class Updown_Arrow(Line):


    ### TODO: Make it work with the tip
    def __init__(self, origin_loc=ORIGIN, vert=True, **kwargs):
        perturb = [0,0.0000001,0]
        super().__init__(start=origin_loc+perturb, end=origin_loc, **kwargs)
        self.vert = vert
        # self.add_tip()
        # tip = self.get_tip()
        self.origin_loc = origin_loc
        self.add_updater(self.update_color)
        # self.add_updater(self.update_tip)

    def update_color(self, dt, arrow):
        if self.vert:
            if self.get_y()>self.origin_loc[1]:
                self.set_color(GREEN)
            else:
                self.set_color(RED)
        else:
            if self.get_x()<self.origin_loc[0]:
                self.set_color(GREEN)
            else:
                self.set_color(RED)
        # print(self.get_length())

    def update_tip(self, dt, arrow):
        if self.get_length()<0.05:
            self.tip.length=self.get_length()
            self.tip.move_to(self.get_end())
        else:
            self.tip.length=0.05
            self.tip.move_to(self.get_end())
