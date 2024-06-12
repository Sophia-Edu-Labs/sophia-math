#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Review: Graphing Power Functions 📈]
#v(40pt)
#only("1-")[- Power functions are of the form $f(x) = x^n$ 🔢]
#only("2-")[- The exponent $n$ determines the shape of the graph 📊]
#only("3-")[- Let's review how the graph changes with different values of $n$ 🧮]
#only("1")[
#voiceover("Let's review graphing power functions. Power functions are of the form f of x equals x to the power of n.")
]
#only("2")[
#voiceover("The exponent n determines the shape of the graph.")
]
#only("3")[
#voiceover("Let's review how the graph changes with different values of n.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Graph Shapes]
#v(40pt)
#only("1-")[- For even $n$: Symmetric about the y-axis ↔️]
#only("2-")[- For odd $n$: Symmetric about the origin 🔄]
#only("3-")[
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
plt.title('Graphs of $f(x) = x^n$ for Even and Odd $n$')
plt.xlabel('$x$')
plt.ylabel('$f(x)$')
plt.show()

```,
width: 360pt),
)
]
]
]
#only("1")[
#voiceover("For even values of n, the graph is symmetric about the y-axis. This means that if you fold the graph along the y-axis, both sides will match perfectly.")
]
#only("2")[
#voiceover("For odd values of n, the graph is symmetric about the origin. This means that if you rotate the graph 180 degrees around the origin, it will look the same.")
]
#only("3")[
#voiceover("Here, we see the graphs of f of x equals x squared, which is symmetric about the y-axis, and f of x equals x cubed, which is symmetric about the origin.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Power functions $f(x) = x^n$ change shape with $n$ 🔢]
#only("2-")[- Even $n$: Symmetric about the y-axis ↔️]
#only("3-")[- Odd $n$: Symmetric about the origin 🔄]
#only("1")[
#voiceover("To summarize, power functions f of x equals x to the power of n change shape depending on the value of n.")
]
#only("2")[
#voiceover("For even values of n, the graph is symmetric about the y-axis.")
]
#only("3")[
#voiceover("For odd values of n, the graph is symmetric about the origin.")
]
]