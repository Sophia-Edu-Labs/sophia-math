#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Introduction to Power Functions]
#v(40pt)
#only("1-")[- Power functions are of the form $f(x) = x^n$ 📈]
#v(20pt)
#only("2-")[- The shape of the graph changes with $n$ 🔄]
#v(20pt)
#only("3-")[- Let's explore how different values of $n$ affect the graph!]
#only("1")[
#voiceover("Welcome! Today, we will explore power functions. A power function is a function of the form f of x equals x raised to the power of n. Let's see how the shape of the graph changes with different values of n.")
]
#only("2")[
#voiceover("The shape of the graph of a power function changes depending on the value of n. This is what makes power functions interesting and useful in various applications.")
]
#only("3")[
#voiceover("Let's dive in and explore how different values of n affect the graph of a power function.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Graphing Power Functions]
#v(40pt)
#only("1-")[- $f(x) = x^2$: Parabola 🟢]
#v(20pt)
#only("2-")[- $f(x) = x^3$: Cubic curve 🔵]
#v(20pt)
#only("3-")[- $f(x) = x^4$: Quartic curve 🟣]
#v(20pt)
#only("4-")[- $f(x) = x^{1/2}$: Square root curve 🔴]
#only("1")[
#voiceover("Let's start with the simplest power function, f of x equals x squared. This is a parabola, which opens upwards and is symmetric about the y-axis.")
]
#only("2")[
#voiceover("Next, consider f of x equals x cubed. This is a cubic curve, which has an S-shape and passes through the origin.")
]
#only("3")[
#voiceover("For f of x equals x to the fourth power, we get a quartic curve. This curve is similar to a parabola but is flatter near the origin and steeper as we move away from the origin.")
]
#only("4")[
#voiceover("Finally, let's look at f of x equals the square root of x. This is a square root curve, which starts at the origin and increases slowly at first, then more rapidly.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing Power Functions]
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
y3 = x**4
x_pos = np.linspace(0, 2, 400)
y4 = np.sqrt(x_pos)

plt.figure(figsize=(8, 6))
plt.plot(x, y1, label='$x^2$', color='green')
plt.plot(x, y2, label='$x^3$', color='blue')
plt.plot(x, y3, label='$x^4$', color='purple')
plt.plot(x_pos, y4, label='$x^{1/2}$', color='red')
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
#only("1")[
#voiceover("Here, we have a plot showing the graphs of different power functions. The green curve represents f of x equals x squared, the blue curve represents f of x equals x cubed, the purple curve represents f of x equals x to the fourth power, and the red curve represents f of x equals the square root of x.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Power functions: $f(x) = x^n$]
#v(20pt)
#only("2-")[- Different $n$ values change the graph's shape]
#v(20pt)
#only("3-")[- Examples: $x^2$, $x^3$, $x^4$, $x^{1/2}$]
#only("1")[
#voiceover("To summarize, power functions are of the form f of x equals x raised to the power of n. The shape of the graph changes with different values of n. For example, x squared gives us a parabola, x cubed gives us a cubic curve, x to the fourth power gives us a quartic curve, and the square root of x gives us a square root curve.")
]
#only("2")[
#voiceover("Understanding how the value of n affects the graph of a power function is crucial for graphing and analyzing these functions in various applications.")
]
]