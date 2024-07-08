#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Quadratic Function: $x^2$]
#v(40pt)
Which of the following graphs belongs to the function $x^2$?
#v(20pt)
#only("-1")[a) Red Graph ($x^3$)]#only("2-")[#text(fill:red)[a) Red Graph ($x^3$)]]
#v(10pt)
#only("-2")[b) Green Graph ($1/x$)]#only("3-")[#text(fill:red)[b) Green Graph ($1/x$)]]
#v(10pt)
#only("-3")[c) Blue Graph ($x^2$)]#only("4-")[#text(fill:green)[c) Blue Graph ($x^2$)]]
#v(10pt)
#only("-4")[d) Orange Graph ($1/x^2$)]#only("5-")[#text(fill:red)[d) Orange Graph ($1/x^2$)]]

#only("1")[#voiceover("Excellent work! You've correctly identified the graph of x squared. Let's go through each option to understand why.")]
#only("2")[#voiceover("Option a, the red graph, represents x cubed. This function grows much faster than x squared for positive x values and decreases faster for negative x values.")]
#only("3")[#voiceover("Option b, the green graph, is one over x. This is a hyperbola and looks quite different from our parabola.")]
#only("4")[#voiceover("Option c, the blue graph, is indeed x squared. This is our correct answer. It forms a parabola that opens upward and is symmetric about the y-axis.")]
#only("5")[#voiceover("Option d, the orange graph, represents one over x squared. This function also forms a U-shape, but it never crosses the x-axis and approaches positive infinity as x approaches zero from either side.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Characteristics of $x^2$]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y = x**2

plt.figure(figsize=(8, 6))
plt.plot(x, y, 'b-', label='$y = x^2$')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Graph of $y = x^2$')
plt.legend()
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[- U-shaped curve (parabola) 📈]
#v(10pt)
#only("2-")[- Opens upward ⬆️]
#v(10pt)
#only("3-")[- Vertex at origin (0, 0) 🎯]
#v(10pt)
#only("4-")[- Symmetric about y-axis 🪞]

#only("1")[#voiceover("Let's examine the key characteristics of the function y equals x squared. First, notice that it forms a U-shaped curve, which we call a parabola.")]
#only("2")[#voiceover("The parabola opens upward, meaning as x moves away from zero in either direction, y increases.")]
#only("3")[#voiceover("The lowest point of the parabola, called the vertex, is at the origin - the point zero, zero.")]
#only("4")[#voiceover("Lastly, observe that the graph is symmetric about the y-axis. This means if you fold the graph along the y-axis, both sides would perfectly overlap.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Comparing $x^2$ with Other Functions]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 100)
y1 = x**3
y2 = 1/x
y3 = x**2
y4 = 1/(x**2)

plt.figure(figsize=(10, 7))
plt.plot(x, y1, 'r-', label='$y = x^3$')
plt.plot(x, y2, 'g-', label='$y = 1/x$')
plt.plot(x, y3, 'b-', label='$y = x^2$')
plt.plot(x, y4, 'orange', label='$y = 1/x^2$')
plt.axhline(y=0, color='k', linestyle='--')
plt.axvline(x=0, color='k', linestyle='--')
plt.xlabel('x')
plt.ylabel('y')
plt.title('Comparison of Different Functions')
plt.legend()
plt.grid(True)
plt.ylim(-5, 5)
plt.show()

```,
width: 360pt),
)
]
]
#v(20pt)
#only("1-")[- $x^3$: Cubic function (red) 🔴]
#v(10pt)
#only("2-")[- $1/x$: Reciprocal function (green) 🟢]
#v(10pt)
#only("3-")[- $x^2$: Quadratic function (blue) 🔵]
#v(10pt)
#only("4-")[- $1/x^2$: Reciprocal squared function (orange) 🟠]

#only("1")[#voiceover("Now, let's compare x squared with the other functions from our multiple choice question. The red curve represents y equals x cubed. Notice how it grows much faster than x squared for positive x values and decreases faster for negative x values.")]
#only("2")[#voiceover("The green curve is y equals one over x. This is a hyperbola and looks quite different from our parabola. It has two separate parts and approaches positive or negative infinity as x approaches zero.")]
#only("3")[#voiceover("The blue curve is our quadratic function, y equals x squared. As we discussed, it's a parabola that opens upward and is symmetric about the y-axis.")]
#only("4")[#voiceover("Finally, the orange curve represents y equals one over x squared. While it also forms a U-shape, it never crosses the x-axis and approaches positive infinity as x approaches zero from either side.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- $x^2$ forms a parabola 📈]
#v(20pt)
#only("2-")[- Always non-negative for real x values ➕]
#v(20pt)
#only("3-")[- Symmetric about y-axis 🪞]
#v(20pt)
#only("4-")[- Unique among the given options ✨]

#only("1")[#voiceover("Let's summarize the key points about the function y equals x squared. First and foremost, it forms a parabola.")]
#only("2")[#voiceover("An important characteristic is that for any real x value, y is always non-negative. This is why the graph never goes below the x-axis.")]
#only("3")[#voiceover("As we noted earlier, the graph is symmetric about the y-axis.")]
#only("4")[#voiceover("These properties make x squared unique among the options given in our multiple choice question. Understanding these characteristics will help you identify quadratic functions in the future.")]
]