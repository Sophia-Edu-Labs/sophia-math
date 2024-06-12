#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Graphing Power Functions 📈]
#v(40pt)
#only("1-")[- Power functions are of the form $f(x) = x^n$. 📊]
#only("2-")[- The value of $n$ changes the shape of the graph. 🔄]
#only("3-")[- Let's review how the graph changes for even and odd $n$. 🔍]
#only("1")[
#voiceover("Let's review the concept of graphing power functions. Power functions are of the form f of x equals x to the power of n.")
]
#only("2")[
#voiceover("The value of n changes the shape of the graph.")
]
#only("3")[
#voiceover("Let's review how the graph changes for even and odd values of n.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Graph of $f(x) = x^n$]
#v(40pt)
#only("1-")[
#voiceover("First, let's consider the case when n is even.")
]
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 400)
y_even = x**2
y_odd = x**3

plt.figure(figsize=(8, 6))
plt.plot(x, y_even, label='$f(x) = x^2$', color='blue')
plt.plot(x, y_odd, label='$f(x) = x^3$', color='red')
plt.axhline(0, color='black',linewidth=0.5)
plt.axvline(0, color='black',linewidth=0.5)
plt.grid(color = 'gray', linestyle = '--', linewidth = 0.5)
plt.legend()
plt.title('Graphs of $f(x) = x^n$ for Even and Odd n')
plt.xlabel('x')
plt.ylabel('f(x)')
plt.show()

```,
width: 360pt),
)
]
]
]
#only("3")[
#voiceover("When n is even, the graph is symmetric about the y-axis. For example, the graph of f of x equals x squared is a parabola opening upwards.")
]
#only("4")[
#voiceover("Now, let's consider the case when n is odd.")
]
#only("5")[
#voiceover("When n is odd, the graph is symmetric about the origin. For example, the graph of f of x equals x cubed passes through the origin and has rotational symmetry.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- The shape of $f(x) = x^n$ changes with $n$. 🔄]
#only("2-")[- For even $n$, the graph is symmetric about the y-axis. ↔️]
#only("3-")[- For odd $n$, the graph is symmetric about the origin. 🔄]
#only("1")[
#voiceover("To summarize, the shape of the graph of f of x equals x to the power of n changes with the value of n.")
]
#only("2")[
#voiceover("For even values of n, the graph is symmetric about the y-axis.")
]
#only("3")[
#voiceover("For odd values of n, the graph is symmetric about the origin.")
]
]