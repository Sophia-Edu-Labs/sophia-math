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
import matplotlib.pyplot as plt
import numpy as np


def parse_strings(input_str):
    # Split the input string into lines
    lines = input_str.split('\n')
    
    # Lists to hold tex strings, voiceovers, and item strings
    tex_strings = []
    voiceovers = []
    item_strings = []  # List to hold strings that start with \item
    verbatim_strings = []
    
    # Regex patterns to identify tex strings, voiceovers, and item strings
    tex_pattern = re.compile(r"\$(.*?)\$")
    voiceover_pattern = re.compile(r"% \(Voiceover: \"(.*?)\"\)")
    item_pattern = re.compile(r"\\item (.+)")  # Pattern for \item strings
    verbatim_pattern = re.compile(r"\\begin{verbatim}(.*?)\\end{verbatim}", re.DOTALL)
    
    
    for line in lines:
        # Find tex strings
        tex_match = tex_pattern.search(line)
        voiceover_match = voiceover_pattern.search(line)
        item_match = item_pattern.search(line)
        #verbatim_match = verbatim_pattern.search(line)

        if tex_match:
             tex_strings.append(line.replace("\item ", ""))
        elif voiceover_match:
            voiceovers.append(voiceover_match.group(1))
        elif item_match:
            item_strings.append(item_match.group(1))

        verbatim_matches = verbatim_pattern.findall(input_str)
        verbatim_strings.extend(verbatim_matches)

    # print("tex_strings", tex_strings, "voiceovers", voiceovers, "item_strings", item_strings, "verbatim_strings", verbatim_strings, "end of parse_strings function")
    return tex_strings, voiceovers, item_strings, verbatim_strings  # Return item_strings as well

def parse_frames(input_text):
    # Regular expression to match the frame blocks
    pattern = r'\\begin{frame}{(.*?)}(.*?)\\end{frame}'
    
    # Find all matches in the input text
    matches = re.findall(pattern, input_text, re.DOTALL)
    
    # Convert matches into a dictionary
    frames_dict = {title.strip(): content.strip() for title, content in matches}
    
    return frames_dict



def write_class(input_string, class_name):


    pres_frames = parse_frames(input_string)
    voiceover_text = ""
    simple_commands = []


    ####### Approach ########
    approach = pres_frames["Approach"]

    _, approach_voiceover, approach_items, _ = parse_strings(approach)

    simple_commands.append("tex_elements_approach = []")
    for idx in range(len(approach_items)):
        simple_commands.append(f"tex = Tex(rf\"{idx+1}) \", \"{approach_items[idx]}\", font_size=fs2, color=c1t)")
        simple_commands.append("tex_elements_approach.append(tex)")
        tex = Tex(rf"{idx+1}) ", approach_items[idx], font_size=fs2, color=c1t)
        # tex_elements_approach.append(tex)
        voiceover_text += f"""<bookmark mark="approach_{idx}"/>"""+approach_voiceover[idx]+" "
    simple_commands.append("approach_group = VGroup(*tex_elements_approach).arrange(DOWN, buff=.2, aligned_edge=LEFT).to_edge(UP, buff=1)")


    ####### Step-by-Step Solution ########
    steps = pres_frames["Step-by-Step Solution"]

    steps, voiceovers, _, _ = parse_strings(steps)
    
    simple_commands.append("tex_elements_steps = []")

    for idx, step in enumerate(steps):
        simple_commands.append(f"tex = Tex(r\"{step}\", font_size=fs2, color=BLUE if \"\Downarrow\" in \"{step}\" else c1t)")
        simple_commands.append("tex.scale(3.4/max(3.4, tex.get_width()))")
        simple_commands.append("tex_elements_steps.append(tex)")
        # tex = Tex(step, font_size=fs2, color=BLUE if "\Downarrow" in step else c1t)
        # tex.scale(3.4/max(3.4, tex.get_width()))
        # tex_elements_steps.append(tex)
        voiceover_text += f"""... <bookmark mark="step_{idx}"/>"""+voiceovers[idx]
    
    simple_commands.append("steps_group = VGroup(*tex_elements_steps).arrange(DOWN, buff=.2).to_edge(UP, buff=1)")


    ####### Visualization ########
    visualization = "Visualization" in pres_frames

    if visualization:

        vis = pres_frames["Visualization"]
        _, voiceover, _, verbatim = parse_strings(vis)
        voiceover_text += f"""... <bookmark mark="visualization"/>"""+voiceover[0]
        
        simple_commands.append(f"exec(\"\"\"{verbatim[0]}\"\"\")")
        # exec(verbatim[0])
        simple_commands.append("""plot = SVGMobject("media/fig.svg").scale(1.2).set_y(1) """)

    # Define the class string
    class_string = fr"""
class {class_name}(SophiaCursorScene):
    
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
"""
    for command in simple_commands:
        class_string += f"        {command}\n"
    class_string += f"        voiceover_text = \"\"\"{voiceover_text}\"\"\"\n" 
        

    class_string += fr"""
        # Action Sequence
        with self.voiceover(text=voiceover_text, subcaption='NOT AVAILABLE DUE TO BUG') as tracker:
            
            eos = [] # elements on screen"""

    play_commands = []

    for idx in range(len(approach_items)):
        play_commands.append(f"""self.wait_until_bookmark("approach_{idx}") """)
        play_commands.append(f"""eos.append(tex_elements_approach[{idx}])""")
        play_commands.append(f"""self.play(Write(tex_elements_approach[{idx}]), run_time=1)""")
    
    for idx in range(len(steps)):

        play_commands.append(f"""self.wait_until_bookmark("step_{idx}")""")
        if idx==0:
            play_commands.append(f"""self.play(*[Unwrite(el) for el in eos], run_time=.8)""")
            play_commands.append(f"""eos = []""")
        elif idx%6==0:
            play_commands.append(f"""shift_diff = eos[0].get_y()-eos[-1].get_y()""")
            play_commands.append(f"""self.add_shift_sound(0.5)""")
            play_commands.append(f"""shift_diff = eos[0].get_y()-eos[-1].get_y()""")
            play_commands.append(f"""self.add_shift_sound(0.5)""")
            play_commands.append(f"""self.play(Unwrite(VGroup(*[eos[idx] for idx in range(len(eos)-1)])), eos[-1].animate.shift(UP*shift_diff), run_time=.5)""")
            play_commands.append(f"""eos = [eos[-1]]""")
            play_commands.append(f"""[tex_elements_steps[idx2].shift(UP*shift_diff) for idx2 in range({idx}, {len(steps)})]""")
        play_commands.append(f"""eos.append(tex_elements_steps[{idx}])""")
        play_commands.append(f"""self.play(Write(tex_elements_steps[{idx}]), run_time=1)""")

    if visualization:

        play_commands.append(f"""self.wait_until_bookmark("visualization")""")
        play_commands.append(f"""self.play(*[Unwrite(el) for el in eos], run_time=.8)""")
        play_commands.append(f"""self.play(Create(plot), run_time=1)""")
            
    for command in play_commands:
        class_string += f"            {command}\n"
    
    class_string += ("""\n        self.wait(4)""")

    print(class_string)




# class test_autoscene(SophiaCursorScene):
    
#     # Main method for constructing the animation
#     def construct(self):
#         # Adding initial components to the scene
#         super().construct()
#         self.add_mathgrid()

#         voiceover_text = ""
        
#         pres = r"""
#                 \begin{frame}{Approach}
#                 \begin{itemize}
#                 \item Solve equation
#                 % (Voiceover: "First, we aim to solve the equation by finding the values of x that make the function equal to zero.")
#                 \item Find zeros
#                 % (Voiceover: "Once the equation is simplified, we'll find the zeros by solving for x.")
#                 \end{itemize}
#                 \end{frame}

#                 \begin{frame}{Step-by-Step Solution}
#                 \begin{itemize}
#                 \item $2 \cdot \sqrt{10x - x^2} = 0$
#                 % (Voiceover: "We start with the original function, set equal to zero, to find where the graph of the function intersects the x-axis.")
#                 \item $\Downarrow$ Simplify
#                 % (Voiceover: "Since the term outside the square root is a constant multiplier, we focus on the condition that the square root itself must be zero for the entire expression to be zero.")
#                 \item $\sqrt{10x - x^2} = 0$
#                 % (Voiceover: "Removing the multiplier, we are left with the square root of ten times x minus x squared equals zero.")
#                 \item $\Downarrow$ Square roots
#                 % (Voiceover: "For a square root to equal zero, the expression inside must also be zero. This gives us our equation to solve.")
#                 \item $10x - x^2 = 0$
#                 % (Voiceover: "We then have ten times x minus x squared equals zero.")
#                 \item $\Downarrow$ Factor
#                 % (Voiceover: "Factoring the quadratic equation, we can factor out an x to simplify our equation.")
#                 \item $x(10 - x) = 0$
#                 % (Voiceover: "This gives us x times ten minus x equals zero.")
#                 \item $\Downarrow$ Solve
#                 % (Voiceover: "Finally, applying the zero product property, we find that x equals zero and ten are the solutions.")
#                 \item $x = 0, 10$
#                 % (Voiceover: "These are the points where the function intersects the x-axis, indicating the zeros of the function.")
#                 \end{itemize}
#                 \end{frame}
#                 \end{frame}
# \begin{frame}{Visualization}

# % (Voiceover: "Here you can see a visualization of the function f of x equals two times the square root of ten times x minus x squared. This graph shows how the function behaves across the domain from zero to ten, highlighting the zeros of the function at x equals zero and x equals ten. The shape of the graph illustrates the values of x for which the function produces real, non-negative outputs, encapsulated within the defined interval.")
# \begin{verbatim}
# import matplotlib.pyplot as plt
# import numpy as np

# x = np.linspace(0, 10, 400)
# y = 2 * np.sqrt(10*x - x**2)

# plt.figure(figsize=(8, 6))
# plt.plot(x, y, label='f(x) = 2 * sqrt(10x - x^2)')
# plt.plot([0, 10], [0, 0], 'ro')  # Marking the zeros
# plt.xlabel('x')
# plt.ylabel('f(x)')
# plt.legend()
# plt.grid(True)
# plt.savefig("media/fig.svg")
# \end{verbatim}
# \end{frame}
#                 """

#         pres_frames = parse_frames(pres)

#         ####### Approach ########
#         approach = pres_frames["Approach"]

#         _, approach_voiceover, approach_items, _ = parse_strings(approach)

#         tex_elements_approach = []
#         for idx in range(len(approach_items)):

#             tex = Tex(rf"{idx+1}) ", approach_items[idx], font_size=fs2, color=c1t)
#             tex_elements_approach.append(tex)
#             voiceover_text += f"""<bookmark mark="approach_{idx}"/>"""+approach_voiceover[idx]+" "

#         approach_group = VGroup(*tex_elements_approach).arrange(DOWN, buff=.2, aligned_edge=LEFT).to_edge(UP, buff=1)


#         ####### Step-by-Step Solution ########
#         steps = pres_frames["Step-by-Step Solution"]

#         steps, voiceovers, _, _ = parse_strings(steps)
        
#         tex_elements_steps = []

#         for idx, step in enumerate(steps):
#             tex = Tex(step, font_size=fs2, color=BLUE if "\Downarrow" in step else c1t)
#             tex.scale(3.4/max(3.4, tex.get_width()))
#             tex_elements_steps.append(tex)
#             voiceover_text += f"""... <bookmark mark="step_{idx}"/>"""+voiceovers[idx]

#         steps_group = VGroup(*tex_elements_steps).arrange(DOWN, buff=.2).to_edge(UP, buff=1)


#         ####### Visualization ########
#         visualization = "Visualization" in pres_frames

#         if visualization:

#             vis = pres_frames["Visualization"]
#             _, voiceover, _, verbatim = parse_strings(vis)
#             voiceover_text += f"""... <bookmark mark="visualization"/>"""+voiceover[0]
#             exec(verbatim[0])
#             plot = SVGMobject("media/fig.svg").scale(1.2).set_y(1)

#         # Action Sequence
#         with self.voiceover(text=voiceover_text) as tracker:
            
#             eos = [] # elements on screen

#             for idx in range(len(approach_items)):
#                 self.wait_until_bookmark(f"approach_{idx}")
#                 eos.append(tex_elements_approach[idx])
#                 self.play(Write(tex_elements_approach[idx]), run_time=1)
            
#             for idx in range(len(tex_elements_steps)):
#                 self.wait_until_bookmark(f"step_{idx}")
#                 if idx==0:
#                     self.play(*[Unwrite(el) for el in eos], run_time=.8)
#                     eos = []
#                 eos.append(tex_elements_steps[idx])
#                 self.play(Write(tex_elements_steps[idx]), run_time=1)

#             if visualization:

#                 self.wait_until_bookmark("visualization")
#                 self.play(*[Unwrite(el) for el in eos], run_time=.8)
#                 self.play(Create(plot), run_time=1)
            
#             self.wait(2)
                
                
#         # Wait for 4 seconds at the end of the animation
#         self.wait(4)




pres = r"""
\begin{frame}{Approach}
\begin{itemize}
\item Solve equation
% (Voiceover: "First, we aim to solve the equation by finding the values of x that make the function equal to zero.")
\item Find zeros
% (Voiceover: "Once the equation is simplified, we'll find the zeros by solving for x.")
\end{itemize}
\end{frame}

\begin{frame}{Step-by-Step Solution}
\begin{itemize}
\item $2 \cdot \sqrt{10x - x^2} = 0$
% (Voiceover: "We start with the original function, set equal to zero, to find where the graph of the function intersects the x-axis.")
\item $\Downarrow$ Simplify
% (Voiceover: "Since the term outside the square root is a constant multiplier, we focus on the condition that the square root itself must be zero for the entire expression to be zero.")
\item $\sqrt{10x - x^2} = 0$
% (Voiceover: "Removing the multiplier, we are left with the square root of ten times x minus x squared equals zero.")
\item $\Downarrow$ Square roots
% (Voiceover: "For a square root to equal zero, the expression inside must also be zero. This gives us our equation to solve.")
\item $10x - x^2 = 0$
% (Voiceover: "We then have ten times x minus x squared equals zero.")
\item $\Downarrow$ Factor
% (Voiceover: "Factoring the quadratic equation, we can factor out an x to simplify our equation.")
\item $x(10 - x) = 0$
% (Voiceover: "This gives us x times ten minus x equals zero.")
\item $\Downarrow$ Solve
% (Voiceover: "Finally, applying the zero product property, we find that x equals zero and ten are the solutions.")
\item $x = 0, 10$
% (Voiceover: "These are the points where the function intersects the x-axis, indicating the zeros of the function.")
\end{itemize}
\end{frame}
\end{frame}
\begin{frame}{Visualization}

% (Voiceover: "Here you can see a visualization of the function f of x equals two times the square root of ten times x minus x squared. This graph shows how the function behaves across the domain from zero to ten, highlighting the zeros of the function at x equals zero and x equals ten. The shape of the graph illustrates the values of x for which the function produces real, non-negative outputs, encapsulated within the defined interval.")
\begin{verbatim}
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 400)
y = 2 * np.sqrt(10*x - x**2)

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = 2 * sqrt(10x - x^2)')
plt.plot([0, 10], [0, 0], 'ro')  # Marking the zeros
plt.xlabel('x')
plt.ylabel('f(x)')
plt.legend()
plt.grid(True)
plt.savefig("media/fig.svg")
\end{verbatim}
\end{frame}
                """
pres = r"""
\begin{frame}{Approach}
\begin{itemize}
\item Differentiate
% (Voiceover: "First, we'll differentiate the function with respect to x. Differentiation allows us to find the rate at which the function's value changes as x changes.")
\item Solve $f'(x)=0$
% (Voiceover: "Next, we'll find the value of x where the derivative equals zero. This step helps us locate points where the tangent to the graph is horizontal, indicating potential maxima or minima.")
\item Substitute 
x
x
% (Voiceover: "Finally, we'll substitute the x-value we found into the original function to determine the y-coordinate of our high point, confirming its position on the graph.")
\end{itemize}
\end{frame}

\begin{frame}{Step-by-Step Solution}
\begin{itemize}
\item $f(x) = 2 \cdot \sqrt{10x - x^2}$
% (Voiceover: "We start with our function, which is two times the square root of ten times x minus x squared. This function describes a curve on the interval from zero to ten.")
\item $\Downarrow$ Differentiate
% (Voiceover: "To find where the tangent to this curve is horizontal, we differentiate the function. This involves applying the derivative rules to the square root function.")
\item $f'(x) = \frac{10 - 2x}{\sqrt{10x - x^2}}$
% (Voiceover: "The derivative simplifies to ten minus two x over the square root of ten x minus x squared. This expression tells us the slope of the tangent at any point x.")
\item $\Downarrow$ Solve $f'(x)=0$
% (Voiceover: "Setting the derivative equal to zero allows us to solve for x. We're looking for where the slope of the tangent, and hence the derivative, is zero.")
\item $10 - 2x = 0$
% (Voiceover: "Solving this equation gives us the critical point. It's a simple linear equation, leading to a single value of x.")
\item $\Downarrow$ Simplify
% (Voiceover: "By simplifying the equation, we find that x equals five. This is where the function has a horizontal tangent.")
\item $x = 5$
% (Voiceover: "")
\item $\Downarrow$ Substitute 
x
x
% (Voiceover: "Next, we substitute x equals five back into the original function. This step will give us the y-coordinate of the high point.")
\item $f(5) = 2 \cdot \sqrt{10(5) - 5^2}$
% (Voiceover: "The substitution simplifies to two times the square root of twenty-five, which results in the y-coordinate of our high point.")
\item $\Downarrow$ Simplify
% (Voiceover: "After simplification, we find that the function value at x equals five is ten. Therefore, the coordinates of the high point on the graph are (5, 10).")
\item $f(5) = 10$
% (Voiceover: "")
\end{itemize}
\end{frame}


\begin{frame}{Visualization}
% (Voiceover: "The plot showcases the function f of x equals two times the square root of ten times x minus x squared, across the domain zero to ten. The curve represents the graph of the function, highlighting its shape and the high point at the coordinates (5, 10). This point, marked on the graph, indicates the location where the tangent line is horizontal, which corresponds to the maximum height of the function within the given domain. The plot helps visualize the behavior of the function, demonstrating how it increases to its peak at x equals five before decreasing, consistent with our earlier analysis.")
\begin{verbatim}
import numpy as np
import matplotlib.pyplot as plt

def f(x):
    return 2 * np.sqrt(10*x - x**2)

x = np.linspace(0, 10, 400)

y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = $2 \cdot \sqrt{10x - x^2}$')
plt.scatter([5], [10], color='red', zorder=5, label='High Point (5, 10)')
plt.title('Graph of $f(x) = 2 \cdot \sqrt{10x - x^2}$')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.legend()
plt.grid(True)

plt.savefig("media/fig.svg")
\end{verbatim}
\end{frame}
"""
# write_class(pres, "test_autoscene")


class test_autoscene(SophiaCursorScene):
    
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        tex_elements_approach = []
        tex = Tex(rf"1) ", "Solve equation", font_size=fs2, color=c1t)
        tex_elements_approach.append(tex)
        tex = Tex(rf"2) ", "Find zeros", font_size=fs2, color=c1t)
        tex_elements_approach.append(tex)
        approach_group = VGroup(*tex_elements_approach).arrange(DOWN, buff=.2, aligned_edge=LEFT).to_edge(UP, buff=1)
        tex_elements_steps = []
        tex = Tex("$2 \cdot \sqrt{10x - x^2} = 0$", font_size=fs2, color=BLUE if "\Downarrow" in "$2 \cdot \sqrt{10x - x^2} = 0$" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex("$\Downarrow$ Simplify", font_size=fs2, color=BLUE if "\Downarrow" in "$\Downarrow$ Simplify" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex("$\sqrt{10x - x^2} = 0$", font_size=fs2, color=BLUE if "\Downarrow" in "$\sqrt{10x - x^2} = 0$" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex("$\Downarrow$ Square roots", font_size=fs2, color=BLUE if "\Downarrow" in "$\Downarrow$ Square roots" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex("$10x - x^2 = 0$", font_size=fs2, color=BLUE if "\Downarrow" in "$10x - x^2 = 0$" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex("$\Downarrow$ Factor", font_size=fs2, color=BLUE if "\Downarrow" in "$\Downarrow$ Factor" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex("$x(10 - x) = 0$", font_size=fs2, color=BLUE if "\Downarrow" in "$x(10 - x) = 0$" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex("$\Downarrow$ Solve", font_size=fs2, color=BLUE if "\Downarrow" in "$\Downarrow$ Solve" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex("$x = 0, 10$", font_size=fs2, color=BLUE if "\Downarrow" in "$x = 0, 10$" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        steps_group = VGroup(*tex_elements_steps).arrange(DOWN, buff=.2).to_edge(UP, buff=1)
        exec("""
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 10, 400)
y = 2 * np.sqrt(10*x - x**2)

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = 2 * sqrt(10x - x^2)')
plt.plot([0, 10], [0, 0], 'ro')  # Marking the zeros
plt.xlabel('x')
plt.ylabel('f(x)')
plt.legend()
plt.grid(True)
plt.savefig("media/fig.svg")
""")
        plot = SVGMobject("media/fig.svg").scale(1.2).set_y(1) 
        voiceover_text = """<bookmark mark="approach_0"/>First, we aim to solve the equation by finding the values of x that make the function equal to zero. <bookmark mark="approach_1"/>Once the equation is simplified, we'll find the zeros by solving for x. ... <bookmark mark="step_0"/>We start with the original function, set equal to zero, to find where the graph of the function intersects the x-axis.... <bookmark mark="step_1"/>Since the term outside the square root is a constant multiplier, we focus on the condition that the square root itself must be zero for the entire expression to be zero.... <bookmark mark="step_2"/>Removing the multiplier, we are left with the square root of ten times x minus x squared equals zero.... <bookmark mark="step_3"/>For a square root to equal zero, the expression inside must also be zero. This gives us our equation to solve.... <bookmark mark="step_4"/>We then have ten times x minus x squared equals zero.... <bookmark mark="step_5"/>Factoring the quadratic equation, we can factor out an x to simplify our equation.... <bookmark mark="step_6"/>This gives us x times ten minus x equals zero.... <bookmark mark="step_7"/>Finally, applying the zero product property, we find that x equals zero and ten are the solutions.... <bookmark mark="step_8"/>These are the points where the function intersects the x-axis, indicating the zeros of the function.... <bookmark mark="visualization"/>Here you can see a visualization of the function f of x equals two times the square root of ten times x minus x squared. This graph shows how the function behaves across the domain from zero to ten, highlighting the zeros of the function at x equals zero and x equals ten. The shape of the graph illustrates the values of x for which the function produces real, non-negative outputs, encapsulated within the defined interval."""

        # Action Sequence
        with self.voiceover(text=voiceover_text) as tracker:
            
            eos = [] # elements on screen            self.wait_until_bookmark("approach_0") 
            eos.append(tex_elements_approach[0])
            self.play(Write(tex_elements_approach[0]), run_time=1)
            self.wait_until_bookmark("approach_1") 
            eos.append(tex_elements_approach[1])
            self.play(Write(tex_elements_approach[1]), run_time=1)
            self.wait_until_bookmark("step_0")
            self.play(*[Unwrite(el) for el in eos], run_time=.8)
            eos = []
            eos.append(tex_elements_steps[0])
            self.play(Write(tex_elements_steps[0]), run_time=1)
            self.wait_until_bookmark("step_1")
            eos.append(tex_elements_steps[1])
            self.play(Write(tex_elements_steps[1]), run_time=1)
            self.wait_until_bookmark("step_2")
            eos.append(tex_elements_steps[2])
            self.play(Write(tex_elements_steps[2]), run_time=1)
            self.wait_until_bookmark("step_3")
            eos.append(tex_elements_steps[3])
            self.play(Write(tex_elements_steps[3]), run_time=1)
            self.wait_until_bookmark("step_4")
            eos.append(tex_elements_steps[4])
            self.play(Write(tex_elements_steps[4]), run_time=1)
            self.wait_until_bookmark("step_5")
            eos.append(tex_elements_steps[5])
            self.play(Write(tex_elements_steps[5]), run_time=1)
            self.wait_until_bookmark("step_6")
            eos.append(tex_elements_steps[6])
            self.play(Write(tex_elements_steps[6]), run_time=1)
            self.wait_until_bookmark("step_7")
            eos.append(tex_elements_steps[7])
            self.play(Write(tex_elements_steps[7]), run_time=1)
            self.wait_until_bookmark("step_8")
            eos.append(tex_elements_steps[8])
            self.play(Write(tex_elements_steps[8]), run_time=1)
            self.wait_until_bookmark("visualization")
            self.play(*[Unwrite(el) for el in eos], run_time=.8)
            self.play(Create(plot), run_time=1)

        self.wait(4)





class test_autoscene(SophiaCursorScene):
    
    # Main method for constructing the animation
    def construct(self):
        # Adding initial components to the scene
        super().construct()
        self.add_mathgrid()
        tex_elements_approach = []
        tex = Tex(rf"1) ", "Differentiate", font_size=fs2, color=c1t)
        tex_elements_approach.append(tex)
        tex = Tex(rf"2) ", "Substitute ", font_size=fs2, color=c1t)
        tex_elements_approach.append(tex)
        approach_group = VGroup(*tex_elements_approach).arrange(DOWN, buff=.2, aligned_edge=LEFT).to_edge(UP, buff=1)
        tex_elements_steps = []
        tex = Tex(r"$f(x) = 2 \cdot \sqrt{10x - x^2}$", font_size=fs2, color=BLUE if "\Downarrow" in "$f(x) = 2 \cdot \sqrt{10x - x^2}$" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex(r"$\Downarrow$ Differentiate", font_size=fs2, color=BLUE if "\Downarrow" in "$\Downarrow$ Differentiate" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex(r"$f'(x) = \frac{10 - 2x}{\sqrt{10x - x^2}}$", font_size=fs2, color=BLUE if "\Downarrow" in "$f'(x) = \frac{10 - 2x}{\sqrt{10x - x^2}}$" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex(r"$\Downarrow$ Solve $f'(x)=0$", font_size=fs2, color=BLUE if "\Downarrow" in "$\Downarrow$ Solve $f'(x)=0$" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex(r"$10 - 2x = 0$", font_size=fs2, color=BLUE if "\Downarrow" in "$10 - 2x = 0$" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex(r"$\Downarrow$ Simplify", font_size=fs2, color=BLUE if "\Downarrow" in "$\Downarrow$ Simplify" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex(r"$x = 5$", font_size=fs2, color=BLUE if "\Downarrow" in "$x = 5$" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex(r"$\Downarrow$ Substitute ", font_size=fs2, color=BLUE if "\Downarrow" in "$\Downarrow$ Substitute " else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex(r"$f(5) = 2 \cdot \sqrt{10(5) - 5^2}$", font_size=fs2, color=BLUE if "\Downarrow" in "$f(5) = 2 \cdot \sqrt{10(5) - 5^2}$" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex(r"$\Downarrow$ Simplify", font_size=fs2, color=BLUE if "\Downarrow" in "$\Downarrow$ Simplify" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        tex = Tex(r"$f(5) = 10$", font_size=fs2, color=BLUE if "\Downarrow" in "$f(5) = 10$" else c1t)
        tex.scale(3.4/max(3.4, tex.get_width()))
        tex_elements_steps.append(tex)
        steps_group = VGroup(*tex_elements_steps).arrange(DOWN, buff=.2).to_edge(UP, buff=1)
        exec("""
import numpy as np
import matplotlib.pyplot as plt

def f(x):
    return 2 * np.sqrt(10*x - x**2)

x = np.linspace(0, 10, 400)

y = f(x)

plt.figure(figsize=(8, 6))
plt.plot(x, y, label='f(x) = $2 \cdot \sqrt{10x - x^2}$')
plt.scatter([5], [10], color='red', zorder=5, label='High Point (5, 10)')
plt.title('Graph of $f(x) = 2 \cdot \sqrt{10x - x^2}$')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.legend()
plt.grid(True)

plt.savefig("media/fig.svg")
""")
        plot = SVGMobject("media/fig.svg").scale(1.2).set_y(1) 
        voiceover_text = """<bookmark mark="approach_0"/>First, we'll differentiate the function with respect to x. Differentiation allows us to find the rate at which the function's value changes as x changes. <bookmark mark="approach_1"/>Next, we'll find the value of x where the derivative equals zero. This step helps us locate points where the tangent to the graph is horizontal, indicating potential maxima or minima. ... <bookmark mark="step_0"/>We start with our function, which is two times the square root of ten times x minus x squared. This function describes a curve on the interval from zero to ten.... <bookmark mark="step_1"/>To find where the tangent to this curve is horizontal, we differentiate the function. This involves applying the derivative rules to the square root function.... <bookmark mark="step_2"/>The derivative simplifies to ten minus two x over the square root of ten x minus x squared. This expression tells us the slope of the tangent at any point x.... <bookmark mark="step_3"/>Setting the derivative equal to zero allows us to solve for x. We're looking for where the slope of the tangent, and hence the derivative, is zero.... <bookmark mark="step_4"/>Solving this equation gives us the critical point. It's a simple linear equation, leading to a single value of x.... <bookmark mark="step_5"/>By simplifying the equation, we find that x equals five. This is where the function has a horizontal tangent.... <bookmark mark="step_6"/>... <bookmark mark="step_7"/>Next, we substitute x equals five back into the original function. This step will give us the y-coordinate of the high point.... <bookmark mark="step_8"/>The substitution simplifies to two times the square root of twenty-five, which results in the y-coordinate of our high point.... <bookmark mark="step_9"/>After simplification, we find that the function value at x equals five is ten. Therefore, the coordinates of the high point on the graph are (5, 10).... <bookmark mark="step_10"/>... <bookmark mark="visualization"/>The plot showcases the function f of x equals two times the square root of ten times x minus x squared, across the domain zero to ten. The curve represents the graph of the function, highlighting its shape and the high point at the coordinates (5, 10). This point, marked on the graph, indicates the location where the tangent line is horizontal, which corresponds to the maximum height of the function within the given domain. The plot helps visualize the behavior of the function, demonstrating how it increases to its peak at x equals five before decreasing, consistent with our earlier analysis."""

        # Action Sequence
        with self.voiceover(text=voiceover_text, subcaption='NOT AVAILABLE DUE TO BUG') as tracker:
            
            eos = [] # elements on screen            self.wait_until_bookmark("approach_0") 
            eos.append(tex_elements_approach[0])
            self.play(Write(tex_elements_approach[0]), run_time=1)
            self.wait_until_bookmark("approach_1") 
            eos.append(tex_elements_approach[1])
            self.play(Write(tex_elements_approach[1]), run_time=1)
            self.wait_until_bookmark("step_0")
            self.play(*[Unwrite(el) for el in eos], run_time=.8)
            eos = []
            eos.append(tex_elements_steps[0])
            self.play(Write(tex_elements_steps[0]), run_time=1)
            self.wait_until_bookmark("step_1")
            eos.append(tex_elements_steps[1])
            self.play(Write(tex_elements_steps[1]), run_time=1)
            self.wait_until_bookmark("step_2")
            eos.append(tex_elements_steps[2])
            self.play(Write(tex_elements_steps[2]), run_time=1)
            self.wait_until_bookmark("step_3")
            eos.append(tex_elements_steps[3])
            self.play(Write(tex_elements_steps[3]), run_time=1)
            self.wait_until_bookmark("step_4")
            eos.append(tex_elements_steps[4])
            self.play(Write(tex_elements_steps[4]), run_time=1)
            self.wait_until_bookmark("step_5")
            eos.append(tex_elements_steps[5])
            self.play(Write(tex_elements_steps[5]), run_time=1)
            self.wait_until_bookmark("step_6")
            shift_diff = eos[0].get_y()-eos[-1].get_y()
            self.add_shift_sound(0.5)
            shift_diff = eos[0].get_y()-eos[-1].get_y()
            self.add_shift_sound(0.5)
            self.play(Unwrite(VGroup(*[eos[idx] for idx in range(len(eos)-1)])), eos[-1].animate.shift(UP*shift_diff), run_time=.5)
            eos = [eos[-1]]
            [tex_elements_steps[idx2].shift(UP*shift_diff) for idx2 in range(6, 11)]
            eos.append(tex_elements_steps[6])
            self.play(Write(tex_elements_steps[6]), run_time=1)
            self.wait_until_bookmark("step_7")
            eos.append(tex_elements_steps[7])
            self.play(Write(tex_elements_steps[7]), run_time=1)
            self.wait_until_bookmark("step_8")
            eos.append(tex_elements_steps[8])
            self.play(Write(tex_elements_steps[8]), run_time=1)
            self.wait_until_bookmark("step_9")
            eos.append(tex_elements_steps[9])
            self.play(Write(tex_elements_steps[9]), run_time=1)
            self.wait_until_bookmark("step_10")
            eos.append(tex_elements_steps[10])
            self.play(Write(tex_elements_steps[10]), run_time=1)
            self.wait_until_bookmark("visualization")
            self.play(*[Unwrite(el) for el in eos], run_time=.8)
            self.play(Create(plot), run_time=1)

        self.wait(4)