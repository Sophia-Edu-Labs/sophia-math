#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Power Functions]
#v(40pt)
#only("1-")[- Power functions are functions of the form $f(x) = x^n$]
#v(20pt)
#only("2-")[- $n$ is a natural number (1, 2, 3, ...)]
#v(20pt)
#only("3-")[- Examples: $f(x) = x^2$, $f(x) = x^3$]
#v(20pt)
#only("4-")[- Used in physics, engineering, and economics]
#only("1")[
#voiceover("Welcome to our introduction to power functions. Power functions are functions of the form f of x equals x to the power of n.")
]
#only("2")[
#voiceover("Here, n is a natural number, which means it can be 1, 2, 3, and so on.")
]
#only("3")[
#voiceover("For example, f of x equals x squared, and f of x equals x cubed are power functions.")
]
#only("4")[
#voiceover("Power functions are widely used in fields like physics, engineering, and economics.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Power Functions]
#v(40pt)
#only("1-")[- $f(x) = x^1$: Linear function]
#v(20pt)
#only("2-")[- $f(x) = x^2$: Quadratic function]
#v(20pt)
#only("3-")[- $f(x) = x^3$: Cubic function]
#v(20pt)
#only("4-")[- Graphs of power functions]
#only("1")[
#voiceover("Let's understand power functions step by step. When n equals 1, we get f of x equals x. This is a linear function.")
]
#only("2")[
#voiceover("When n equals 2, we get f of x equals x squared. This is a quadratic function.")
]
#only("3")[
#voiceover("When n equals 3, we get f of x equals x cubed. This is a cubic function.")
]
#only("4")[
#voiceover("Let's take a look at the graphs of these power functions.")
]
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 400)
y1 = x
y2 = x**2
y3 = x**3

plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='$f(x) = x$')
plt.plot(x, y2, label='$f(x) = x^2$')
plt.plot(x, y3, label='$f(x) = x^3$')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
plt.legend()
plt.title('Graphs of Power Functions')
plt.show()

```,
width: 360pt),
)
]
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap]
#v(40pt)
#only("1-")[- Power functions: $f(x) = x^n$]
#v(20pt)
#only("2-")[- $n$ is a natural number (1, 2, 3, ...)]
#v(20pt)
#only("3-")[- Examples: $f(x) = x^2$, $f(x) = x^3$]
#v(20pt)
#only("4-")[- Widely used in various fields]
#only("1")[
#voiceover("To recap, power functions are functions of the form f of x equals x to the power of n.")
]
#only("2")[
#voiceover("Here, n is a natural number, which means it can be 1, 2, 3, and so on.")
]
#only("3")[
#voiceover("Examples of power functions include f of x equals x squared and f of x equals x cubed.")
]
#only("4")[
#voiceover("Power functions are widely used in fields like physics, engineering, and economics.")
]
]