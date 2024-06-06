#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise 1]
#v(40pt)
What is $root(3, -27)$?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) -3]#only("2-")[#text(fill:green)[a) -3]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) 3]#only("3-")[#text(fill:red)[b) 3]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) -9]#only("4-")[#text(fill:red)[c) -9]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) 9]#only("5-")[#text(fill:red)[d) 9]]
#v(40pt)

#only("1")[#voiceover("Not quite, but don't worry. Here's the correct solution.")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("The correct answer is a) -3. Let's see why in the step-by-step solution.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Given: $root(3, -27)$]
#v(20pt)
#only("2-")[Step 1: Recall that for odd roots, the result can be negative.]
#v(20pt)
#only("3-")[Step 2: Think of a number that, when cubed, gives -27.]
#v(20pt)
#only("4-")[$(-3)^3 = -27$]
#v(20pt)
#only("5-")[Therefore, $root(3, -27) = -3$ ✅]

#only("1")[#voiceover("We are given the cube root of negative 27.")]
#only("2")[#voiceover("The first step is to recall that for odd roots, like the cube root, the result can be negative.")]
#only("3")[#voiceover("Next, we need to think of a number that, when cubed, gives negative 27.")]
#only("4")[#voiceover("Negative 3 cubed equals negative 27.")]
#only("5")[#voiceover("Therefore, the cube root of negative 27 is negative 3.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 100)
y = x**3

fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, y, 'b-', label='$y = x^3$')
ax.plot([-3], [-27], 'ro', label='$(-3, -27)$')
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_title('Graph of $y = x^3$')
ax.grid(True)
ax.spines['left'].set_position('zero')
ax.spines['right'].set_color('none')
ax.spines['bottom'].set_position('zero')
ax.spines['top'].set_color('none')
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[The graph of $y = x^3$ is shown.]
#v(20pt)
#only("2-")[The point $(-3, -27)$ is highlighted.]
#v(20pt)
#only("3-")[This illustrates that $root(3, -27) = -3$, as $(-3)^3 = -27$.]

#only("1")[#voiceover("Let's visualize this on a graph.")]
#only("2")[#voiceover("The red point on the graph of y equals x cubed is at negative 3, negative 27.")]
#only("3")[#voiceover("This illustrates that the cube root of negative 27 is indeed negative 3, as negative 3 cubed equals negative 27.")]
]