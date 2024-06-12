#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Functions with Natural Exponents]
#v(40pt)
#only("1-")[- a) $f(x) = x^n$]
#v(10pt)
#only("1-")[- b) $f(x) = n^x$]
#v(10pt)
#only("1-")[- c) $f(x) = x + n$]
#v(10pt)
#only("1-")[- d) $f(x) = x/n$]
#v(40pt)
#only("1")[#voiceover("Great job on answering the question! Let's go over the options step-by-step to understand why a) is correct and the others are not.")]
#only("2-")[#text(fill:green)[- a) $f(x) = x^n$]]
#only("2")[#voiceover("Option a) is correct. A power function with a natural exponent is of the form f of x equals x to the power of n, where n is a natural number.")]
#only("3-")[#text(fill:red)[- b) $f(x) = n^x$]]
#only("3")[#voiceover("Option b) is incorrect. This represents an exponential function, where the base is a constant and the exponent is a variable.")]
#only("4-")[#text(fill:red)[- c) $f(x) = x + n$]]
#only("4")[#voiceover("Option c) is also incorrect. This represents a linear function, where x is added to a constant n.")]
#only("5-")[#text(fill:red)[- d) $f(x) = x/n$]]
#only("5")[#voiceover("Option d) is incorrect as well. This represents a rational function, where x is divided by a constant n.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Power Functions]
#v(40pt)
#only("1-")[#text(size: 20pt)[A power function with a natural exponent has the form:]]
#v(20pt)
#only("2-")[$f(x) = x^n$]
#v(20pt)
#only("3-")[- $n$ is a natural number (1, 2, 3, ...)]
#v(20pt)
#only("4-")[- Example: $f(x) = x^2$]
#v(20pt)
#only("5-")[- Example: $f(x) = x^3$]
#only("1")[#voiceover("Let's understand what a power function with a natural exponent is.")]
#only("2")[#voiceover("A power function with a natural exponent has the form f of x equals x to the power of n.")]
#only("3")[#voiceover("Here, n is a natural number, which means it can be 1, 2, 3, and so on.")]
#only("4")[#voiceover("For example, if n equals 2, we have f of x equals x squared.")]
#only("5")[#voiceover("And if n equals 3, we have f of x equals x cubed.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Graph of Power Functions]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np
x = np.linspace(-2, 2, 400)
y1 = x**2
y2 = x**3
plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='$f(x) = x^2$', color='blue')
plt.plot(x, y2, label='$f(x) = x^3$', color='green')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
plt.legend()
plt.show()

```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's how the graphs of $f(x) = x^2$ and $f(x) = x^3$ look:]
#only("2-")[- $f(x) = x^2$ is a parabola opening upwards.]
#only("3-")[- $f(x) = x^3$ is an S-shaped curve.]
#only("1")[#voiceover("Now, let's look at the graphs of some power functions.")]
#only("2")[#voiceover("The graph of f of x equals x squared is a parabola that opens upwards.")]
#only("3")[#voiceover("The graph of f of x equals x cubed is an S-shaped curve.")]
]