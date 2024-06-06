#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions]
#v(40pt)
As $x$ approaches infinity, what happens to $f(x) = x^3$?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Approaches zero]#only("2-")[#text(fill:red)[a) Approaches zero]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Approaches infinity]#only("3-")[#text(fill:green)[b) Approaches infinity]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Approaches a constant]#only("4-")[#text(fill:red)[c) Approaches a constant]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Oscillates]#only("5-")[#text(fill:red)[d) Oscillates]]
#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1) Consider the function $f(x) = x^3$]
#v(20pt)
#only("2-")[2) As $x$ gets very large (approaches $infinity$), the value of $x^3$ will also get very large.]
#v(20pt)
#only("3-")[3) This is because multiplying a large number by itself multiple times results in an even larger number.]
#v(20pt)
#only("4-")[4) Therefore, as $x arrow infinity$, $f(x) = x^3 arrow infinity$ 📈]
#only("1")[#voiceover("Let's walk through the solution step by step.")]
#only("2")[#voiceover("First, we have the function f of x equals x cubed. As x gets very large, or approaches infinity, the value of x cubed will also get very large.")]
#only("3")[#voiceover("This is because when you multiply a large number by itself multiple times, you end up with an even larger number.")]
#only("4")[#voiceover("Therefore, as x approaches infinity, f of x, which equals x cubed, also approaches infinity.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-5, 5, 100)
y = x**3

plt.figure(figsize=(8, 6))
plt.plot(x, y, 'b-', linewidth=2, label='f(x) = x^3')
plt.xlim(-5, 5)
plt.ylim(-150, 150)
plt.grid(True)
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.legend(loc='upper left')
plt.title('Graph of f(x) = x^3')
plt.xlabel('x')
plt.ylabel('f(x)')

plt.annotate('Approaches infinity',
             xy=(4, 64), xycoords='data',
             xytext=(4.5, 100), textcoords='data',
             arrowprops=dict(facecolor='black', shrink=0.05),
             fontsize=14, ha='center')

plt.annotate('Approaches negative infinity',
             xy=(-4, -64), xycoords='data',
             xytext=(-4.5, -100), textcoords='data',
             arrowprops=dict(facecolor='black', shrink=0.05),
             fontsize=14, ha='center')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Here's a graph of the function f of x equals x cubed. As you can see, as x gets larger and larger in the positive direction, the function values also increase rapidly, approaching infinity. Similarly, as x gets larger and larger in the negative direction, the function values decrease rapidly, approaching negative infinity. This visual confirms our understanding that as x approaches infinity, x cubed also approaches infinity.")]
]
]