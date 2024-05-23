#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap: Identifying Inverse Functions]
#v(40pt)
#only("1-")[- In graphs: reflections over the line $y = x$ 📈]
#v(20pt)
#only("2-")[- In tables: inputs and outputs are swapped 🔄]
#only("1")[
#voiceover("Let's recap how to identify inverse functions. In graphs, inverse functions appear as reflections over the line y equals x.")
]
#only("2")[
#voiceover("In tables, inverse functions have their inputs and outputs swapped.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphical Identification]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(-2, 2, 100)
y1 = x**2
y2 = np.sqrt(np.maximum(x, 0))  # Corrected to handle the domain of sqrt(x)

fig, ax = plt.subplots()
ax.plot(x, y1, label='$f(x) = x^2$')
ax.plot(x, y2, label='$f^{-1}(x) = \sqrt{x}$')
ax.plot(x, x, '--', color='gray', label='$y = x$')
ax.set_xlim(-2, 2)
ax.set_ylim(-2, 2)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()
ax.grid(True)
ax.set_aspect('equal')

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's an example. The blue curve represents the function f of x equals x squared, and the orange curve is its inverse, f inverse of x equals square root of x. Notice how they are reflections of each other over the dashed line y equals x.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Tabular Identification]
#v(40pt)
#only("1-")[
#table(
columns: (auto, auto),
inset: 10pt,
align: horizon,
[Function $f$],
[$x$], [$f(x)$],
[1], [2],
[2], [4],
[3], [6]
)
#h(20pt)
#table(
columns: (auto, auto),
inset: 10pt,
align: horizon,
[Function $f^{-1}$],
[$x$], [$f^{-1}(x)$],
[2], [1],
[4], [2],
[6], [3]
)
]
#only("1")[
#voiceover("In this table, we see a function f and its inverse f inverse. Notice how the x and f of x values in the first table become the f inverse of x and x values in the second table, respectively. The inputs and outputs are swapped.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Graphically: inverse functions are reflections over $y = x$ 🪞]
#v(20pt)
#only("2-")[- Tabularly: inputs and outputs are interchanged in inverse functions ↔]
#only("1")[
#voiceover("To sum up, graphically, inverse functions appear as reflections of each other over the line y equals x.")
]
#only("2")[
#voiceover("And in tables, the inputs and outputs of a function are interchanged in its inverse.")
]
]