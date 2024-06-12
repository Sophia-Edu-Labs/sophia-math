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
#only("2-")[- Here, $n$ is a natural number (1, 2, 3, ...)]
#v(20pt)
#only("3-")[- Power functions are fundamental in many areas of mathematics and science]
#only("1")[
#voiceover("Today, we will introduce power functions. Power functions are functions of the form f of x equals x to the power of n.")
]
#only("2")[
#voiceover("In these functions, n is a natural number, which means it can be 1, 2, 3, and so on.")
]
#only("3")[
#voiceover("Power functions are fundamental in many areas of mathematics and science, and understanding them is crucial for further studies.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Power Functions]
#v(40pt)
#only("1-")[- Example: $f(x) = x^2$]
#v(20pt)
#only("2-")[- This is called a quadratic function]
#v(20pt)
#only("3-")[- Graph: Parabola opening upwards]
#v(20pt)
#only("4-")[- Example: $f(x) = x^3$]
#v(20pt)
#only("5-")[- This is called a cubic function]
#v(20pt)
#only("6-")[- Graph: S-shaped curve]
#only("1")[
#voiceover("Let's start with an example. Consider the function f of x equals x squared.")
]
#only("2")[
#voiceover("This is called a quadratic function.")
]
#only("3")[
#voiceover("The graph of a quadratic function is a parabola that opens upwards.")
]
#only("4")[
#voiceover("Now, let's look at another example. Consider the function f of x equals x cubed.")
]
#only("5")[
#voiceover("This is called a cubic function.")
]
#only("6")[
#voiceover("The graph of a cubic function is an S-shaped curve.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-3, 3, 400)
y1 = x**2
y2 = x**3

plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='$f(x) = x^2$', color='blue')
plt.plot(x, y2, label='$f(x) = x^3$', color='red')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
plt.legend()
plt.title('Graphs of $f(x) = x^2$ and $f(x) = x^3$')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.show()

```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here we see the graphs of the functions f of x equals x squared and f of x equals x cubed.")
]
#only("2")[
#voiceover("Notice how the quadratic function forms a parabola, while the cubic function forms an S-shaped curve.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Power functions: $f(x) = x^n$]
#v(20pt)
#only("2-")[- $n$ is a natural number (1, 2, 3, ...)]
#v(20pt)
#only("3-")[- Examples: Quadratic and cubic functions]
#v(20pt)
#only("4-")[- Graphs: Parabola and S-shaped curve]
#only("1")[
#voiceover("To summarize, power functions are functions of the form f of x equals x to the power of n.")
]
#only("2")[
#voiceover("Here, n is a natural number, which means it can be 1, 2, 3, and so on.")
]
#only("3")[
#voiceover("Examples of power functions include quadratic functions, where n equals 2, and cubic functions, where n equals 3.")
]
#only("4")[
#voiceover("The graphs of these functions are distinct: quadratic functions form parabolas, while cubic functions form S-shaped curves.")
]
]