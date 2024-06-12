#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphing Power Functions]
#v(40pt)
#text(size: 24pt, weight: "bold")[Exercise: What is the shape of the graph of $f(x) = x^3$?]
#v(40pt)
#only("-1")[a) Parabola]
#only("2-")[#text(fill:red)[a) Parabola]]
#v(10pt)
#only("-2")[b) Line]
#only("3-")[#text(fill:red)[b) Line]]
#v(10pt)
#only("-3")[c) S-curve]
#only("4-")[#text(fill:green)[c) S-curve]]
#v(10pt)
#only("-4")[d) Hyperbola]
#only("5-")[#text(fill:red)[d) Hyperbola]]
#v(40pt)

#only("1")[#voiceover("Great job on answering the question! Let's go over the options to understand why c) S-curve is the correct answer.")]
#only("2")[#voiceover("Option a) Parabola is incorrect. A parabola is the graph of a quadratic function, like $f(x) = x^2$, which is U-shaped.")]
#only("3")[#voiceover("Option b) Line is also incorrect. A line is the graph of a linear function, like $f(x) = x$, which is a straight line.")]
#only("4")[#voiceover("Option c) S-curve is correct. The graph of $f(x) = x^3$ is an S-shaped curve, also known as a cubic function.")]
#only("5")[#voiceover("Option d) Hyperbola is incorrect. A hyperbola is the graph of a rational function, like $f(x) = 1/x$, which has two separate curves.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Graph of $f(x) = x^3$]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(-3, 3, 400)
y = x**3
plt.figure(figsize=(8, 6))
plt.plot(x, y, label='$f(x) = x^3$')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(True)
plt.legend()
plt.title('Graph of $f(x) = x^3$')
plt.show()

```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's the graph of $f(x) = x^3$:]
#v(20pt)
#only("2-")[- Notice the S-shape of the curve.]
#only("3-")[- It passes through the origin (0,0).]
#only("4-")[- As $x$ increases, $f(x)$ increases rapidly.]
#only("5-")[- As $x$ decreases, $f(x)$ decreases rapidly.]

#only("1")[#voiceover("Let's take a look at the graph of $f(x) = x^3$.")]
#only("2")[#voiceover("Notice the S-shape of the curve. This is characteristic of cubic functions.")]
#only("3")[#voiceover("The graph passes through the origin, which is the point (0,0).")]
#only("4")[#voiceover("As x increases, the value of f of x increases rapidly.")]
#only("5")[#voiceover("Similarly, as x decreases, the value of f of x decreases rapidly.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Characteristics]
#v(40pt)
#only("1-")[Let's summarize the key characteristics of the graph of $f(x) = x^3$:]
#v(20pt)
#only("2-")[- The graph is an S-curve.]
#only("3-")[- It passes through the origin (0,0).]
#only("4-")[- It is symmetric about the origin.]
#only("5-")[- As $x$ increases, $f(x)$ increases rapidly.]
#only("6-")[- As $x$ decreases, $f(x)$ decreases rapidly.]

#only("1")[#voiceover("Let's summarize the key characteristics of the graph of $f(x) = x^3$.")]
#only("2")[#voiceover("First, the graph is an S-curve.")]
#only("3")[#voiceover("Second, it passes through the origin, which is the point (0,0).")]
#only("4")[#voiceover("Third, it is symmetric about the origin.")]
#only("5")[#voiceover("Fourth, as x increases, the value of f of x increases rapidly.")]
#only("6")[#voiceover("And finally, as x decreases, the value of f of x decreases rapidly.")]
]