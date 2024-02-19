# 4_1: Quadratic Functions: Intro, Term
# To-Do Here: add practice part, add recognizing non-standard squared fct. termsb

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
import re

def parse_strings(input_str):
    # Split the input string into lines
    lines = input_str.split('\n')
    
    # Lists to hold tex strings and voiceovers
    tex_strings = []
    voiceovers = []
    
    # Regex patterns to identify tex strings and voiceovers
    tex_pattern = re.compile(r"\$(.*?)\$")
    voiceover_pattern = re.compile(r"% \(Voiceover: \"(.*?)\"\)")
    
    for line in lines:
        # Find tex strings
        tex_match = tex_pattern.search(line)
        if tex_match:
            tex_strings.append(line.replace("\item ", ""))
            
        # Find voiceovers
        voiceover_match = voiceover_pattern.search(line)
        if voiceover_match:
            voiceovers.append(voiceover_match.group(1))
            
    return tex_strings, voiceovers





class test_autoscene(SophiaCursorScene):
    

    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()

        steps = r"""  \begin{itemize}
                    \item $\frac{d}{dx}(\ln(x)+\sin(e^x))$
                    % (Voiceover: "Let's start by applying the derivative to the entire function. We'll break it down using the rules we discussed.")
                    \item $\Downarrow$ sum rule
                    % (Voiceover: "By applying the sum rule, we separate the function into two parts: the derivative of ln(x) and the derivative of sin(e to the x).")
                    \item $\frac{d}{dx}(\ln(x))+\frac{d}{dx}(\sin(e^x))$
                    % (Voiceover: "Now, we look at each part individually. The first part is straightforward, but for the second part, we'll need to apply the chain rule.")
                    \item $\Downarrow$ Chain rule
                    % (Voiceover: "Using the chain rule on the second part helps us manage the e to the x inside the sine function. It's like unpacking a box within a box.")
                    \item $\frac{1}{x}+\sin(e^x)\cdot e^x$
                    % (Voiceover: "After applying the chain rule, we find the derivative of our function. For each x, this tells us how steeply the function rises or falls, combining both parts into one formula.")
                \end{itemize}"""

        steps, voiceovers = parse_strings(steps)
        print(steps, "\n", voiceovers)

        voiceover_text = ""
        tex_elements = []

        for idx, step in enumerate(steps):
            tex = Tex(step, font_size=fs2, color=BLUE if "\Downarrow" in step else c1t)
            if idx==0:
                tex.set_y(2)
            else:
                tex.next_to(tex_elements[-1], DOWN, buff=0.2)
            tex_elements.append(tex)
            voiceover_text += f""" <bookmark mark="step_{idx}"/>"""+voiceovers[idx]

        print(voiceover_text)

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            for idx in range(len(tex_elements)):
                self.wait_until_bookmark(f"step_{idx}")
                self.play(Write(tex_elements[idx]), run_time=1)
                
                
        # Wait for 4 seconds at the end of the animation
        self.wait(4)