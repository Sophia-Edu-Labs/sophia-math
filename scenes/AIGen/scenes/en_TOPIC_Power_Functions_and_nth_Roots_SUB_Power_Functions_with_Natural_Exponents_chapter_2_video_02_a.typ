#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphing Power Functions]
#v(40pt)
#text(size: 24pt, weight: "bold")[Exercise: Identify the Shape of the Graph]
#v(20pt)
#only("1-")[- $f(x) = x^2$]
#v(20pt)
#only("1-")[- a) Parabola]
#only("2-")[#text(fill:green)[- a) Parabola]]
#v(10pt)
#only("1-2")[- b) Line]#only("3-")[#text(fill:red)[- b) Line]]
#v(10pt)
#only("1-3")[- c) Circle]#only("4-")[#text(fill:red)[- c) Circle]]
#v(10pt)
#only("1-4")[- d) Hyperbola]#only("5-")[#text(fill:red)[- d) Hyperbola]]
#v(40pt)

#only("1")[#voiceover("Great job! Let's go through the options to understand why the correct answer is a parabola.")]
#only("2")[#voiceover("Option a) Parabola is correct. The graph of $f(x) = x^2$ is a parabola that opens upwards.")]
#only("3")[#voiceover("Option b) Line is incorrect. The graph of a linear function, such as $f(x) = mx + b$, is a straight line, not a parabola.")]
#only("4")[#voiceover("Option c) Circle is incorrect. The graph of a circle is given by an equation of the form $(x - h)^2 + (y - k)^2 = r^2$, not by a quadratic function like $f(x) = x^2$.")]
#only("5")[#voiceover("Option d) Hyperbola is incorrect. The graph of a hyperbola is given by an equation of the form $x^2/a^2 - y^2/b^2 = 1$ or $y^2/a^2 - x^2/b^2 = 1$, which is different from the quadratic function $f(x) = x^2$.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Graph of $f(x) = x^2$]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(-10, 10, 400)
y = x**2
plt.figure(figsize=(8, 6))
plt.plot(x, y, label='$f(x) = x^2$')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
plt.legend()
plt.title('Graph of $f(x) = x^2$')
plt.show()

```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's the graph of $f(x) = x^2$:]
#v(20pt)
#only("2-")[- The graph is a #text(weight: "bold")[parabola] that opens upwards.]
#only("3-")[- The vertex of the parabola is at the origin $(0, 0)$.]
#only("4-")[- As $x$ moves away from $0$, $f(x)$ increases quadratically.]

#only("1")[#voiceover("Let's take a look at the graph of $f(x) = x^2$.")]
#only("2")[#voiceover("The graph is a parabola that opens upwards.")]
#only("3")[#voiceover("The vertex of the parabola is at the origin, which is the point $(0, 0)$.")]
#only("4")[#voiceover("As $x$ moves away from $0$, the value of $f(x)$ increases quadratically, forming the characteristic U-shape of a parabola.")]
]