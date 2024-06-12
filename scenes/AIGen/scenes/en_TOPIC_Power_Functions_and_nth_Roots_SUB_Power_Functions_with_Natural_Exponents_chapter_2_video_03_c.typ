#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphing Power Functions]
#v(40pt)
#only("1-")[What is the shape of the graph of $f(x) = x^3$?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) S-curve]#only("2-")[#text(fill:green)[a) S-curve]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) Parabola]#only("3-")[#text(fill:red)[b) Parabola]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Line]#only("4-")[#text(fill:red)[c) Line]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Hyperbola]#only("5-")[#text(fill:red)[d) Hyperbola]]
#v(40pt)

#only("1")[#voiceover("Great job! The correct answer is...")]
#only("2")[#voiceover("a) S-curve. The graph of $f(x) = x^3$ is indeed an S-curve. This is because the cubic function has a characteristic shape that resembles an S.")]
#only("3")[#voiceover("b) Parabola is incorrect. A parabola is the shape of a quadratic function, such as $f(x) = x^2$.")]
#only("4")[#voiceover("c) Line is also incorrect. A line is the shape of a linear function, such as $f(x) = x$.")]
#only("5")[#voiceover("And d) Hyperbola is incorrect as well. A hyperbola is the shape of a rational function, such as $f(x) = 1/x$.")]
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
def f(x):
    return x**3
x = np.linspace(-2, 2, 100)
y = f(x)
plt.figure(figsize=(8, 6))
plt.plot(x, y, label='$f(x) = x^3$')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(True)
plt.legend()
plt.show()

```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's the graph of $f(x) = x^3$:]
#v(20pt)
#only("2-")[- Notice the characteristic S-curve shape.]
#only("3-")[- The function passes through the origin (0,0).]
#only("4-")[- As $x$ increases, $f(x)$ increases rapidly.]
#only("5-")[- As $x$ decreases, $f(x)$ decreases rapidly.]

#only("1")[#voiceover("Let's look at the graph of $f(x) = x^3$.")]
#only("2")[#voiceover("Notice the characteristic S-curve shape of the cubic function.")]
#only("3")[#voiceover("The function passes through the origin, which is the point (0,0).")]
#only("4")[#voiceover("As $x$ increases, $f(x)$ increases rapidly, moving upwards.")]
#only("5")[#voiceover("Conversely, as $x$ decreases, $f(x)$ decreases rapidly, moving downwards.")]
]