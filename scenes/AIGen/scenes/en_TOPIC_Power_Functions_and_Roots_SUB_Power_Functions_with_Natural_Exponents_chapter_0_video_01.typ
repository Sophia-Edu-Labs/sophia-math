#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Power Functions]
#v(40pt)
#only("1-")[- Power functions are essential in many areas of mathematics and science. 📘]
#v(20pt)
#only("2-")[- They help us understand growth, decay, and many natural phenomena. 🌱📉]
#v(20pt)
#only("3-")[- Let's explore what power functions are and why they are important. 🔍]
#only("1")[
#voiceover("Power functions are essential in many areas of mathematics and science. ")
]
#only("2")[
#voiceover("They help us understand growth, decay, and many natural phenomena.")
]
#only("1")[
#voiceover("Let's explore what power functions are and why they are important.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Definition of Power Functions]
#v(40pt)
#only("1-")[- A power function is of the form $f(x) = x^n$ where $n$ is a natural number. 🧮]
#v(20pt)
#only("2-")[- Example: $f(x) = x^2$ is a power function with $n = 2$.]
#v(20pt)
#only("3-")[- Example: $f(x) = x^3$ is a power function with $n = 3$.]
#only("1")[
#voiceover("A power function is of the form f of x equals x raised to the power of n, where n is a natural number.")
]
#only("2")[
#voiceover("For example, f of x equals x squared is a power function with n equal to 2.")
]
#only("3")[
#voiceover("Another example is f of x equals x cubed, which is a power function with n equal to 3.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphical Representation]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 400)
y1 = x**2
y2 = x**3

plt.plot(x, y1, label='$f(x) = x^2$')
plt.plot(x, y2, label='$f(x) = x^3$')
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
#v(20pt)
#only("1-")[- The graph of $f(x) = x^2$ is a parabola opening upwards. 📈]
#v(20pt)
#only("2-")[- The graph of $f(x) = x^3$ is an S-shaped curve. 📉]
#only("1")[
#voiceover("Let's look at the graphs of some power functions. The graph of f of x equals x squared is a parabola opening upwards.")
]
#only("2")[
#voiceover("The graph of f of x equals x cubed is an S-shaped curve.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Power functions are of the form $f(x) = x^n$ where $n$ is a natural number. 📘]
#v(20pt)
#only("2-")[- Examples include $f(x) = x^2$ and $f(x) = x^3$. 🧮]
#v(20pt)
#only("3-")[- Graphs of power functions have distinct shapes. 📈📉]
#only("1")[
#voiceover("In summary, power functions are of the form f of x equals x raised to the power of n, where n is a natural number.")
]
#only("2")[
#voiceover("Examples include f of x equals x squared and f of x equals x cubed.")
]
#only("3")[
#voiceover("The graphs of power functions have distinct shapes, such as the parabola for x squared and the S-shaped curve for x cubed.")
]
]