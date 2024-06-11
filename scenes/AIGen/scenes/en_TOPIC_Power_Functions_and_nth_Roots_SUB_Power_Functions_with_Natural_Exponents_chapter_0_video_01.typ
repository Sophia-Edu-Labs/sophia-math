#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Power Functions]
#v(40pt)
#only("1")[
#voiceover("Imagine you have a piece of paper. If you fold it once, you get two layers. If you fold it again, you get four layers. This is an example of a power function in action. Let's explore this concept further.")]
#only("2-")[- Power functions describe how quantities grow rapidly 📈]
#v(20pt)
#only("3-")[- They have the form $f(x) = x^n$ where $n$ is a natural number (1, 2, 3, ...)]
#v(20pt)
#only("4-")[- Common examples include $x^2$ (squared) and $x^3$ (cubed)]
#only("2")[
#voiceover("Power functions describe how quantities grow rapidly. They are very useful in many areas, such as physics and finance.")]
#only("3")[
#voiceover("A power function has the form f of x equals x to the power of n, where n is a natural number like 1, 2, 3, and so on.")]
#only("4")[
#voiceover("Common examples of power functions include x squared and x cubed.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Understanding Power Functions]
#v(40pt)
#only("1-")[- $f(x) = x^1$ is a linear function 📏]
#v(20pt)
#only("2-")[- $f(x) = x^2$ is a quadratic function 🏀]
#v(20pt)
#only("3-")[- $f(x) = x^3$ is a cubic function 📦]
#v(20pt)
#only("4-")[- As $n$ increases, the function grows more rapidly 🚀]
#only("1")[
#voiceover("Let's look at some specific power functions. When n is 1, the function is linear. This means it forms a straight line.")]
#only("2")[
#voiceover("When n is 2, the function is quadratic. This means it forms a parabola, like the path of a basketball shot.")]
#only("3")[
#voiceover("When n is 3, the function is cubic. This means it forms a curve that looks like a box.")]
#only("4")[
#voiceover("As n increases, the function grows more rapidly. This means the curve gets steeper and steeper.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphing Power Functions]
#v(40pt)
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

plt.plot(x, y1, label='$x^1$')
plt.plot(x, y2, label='$x^2$')
plt.plot(x, y3, label='$x^3$')
plt.legend()
plt.title('Graphs of Power Functions')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.grid(True)
plt.show()

```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here we have the graphs of three power functions: x to the power of 1, x to the power of 2, and x to the power of 3.")]
#only("2")[
#voiceover("Notice how the linear function forms a straight line, the quadratic function forms a parabola, and the cubic function forms a curve that looks like a box.")]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Power functions have the form $f(x) = x^n$]
#v(20pt)
#only("2-")[- $n$ is a natural number (1, 2, 3, ...)]
#v(20pt)
#only("3-")[- Examples: $x^1$, $x^2$, $x^3$]
#only("1")[
#voiceover("In summary, power functions have the form f of x equals x to the power of n.")]
#only("2")[
#voiceover("Here, n is a natural number like 1, 2, 3, and so on.")]
#only("3")[
#voiceover("Examples of power functions include x to the power of 1, x to the power of 2, and x to the power of 3.")]
]