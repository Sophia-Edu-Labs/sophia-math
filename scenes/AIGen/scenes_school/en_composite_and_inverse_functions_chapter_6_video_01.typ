#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse Functions]
#v(40pt)
#only("1-")[- Functions that "undo" each other 🔄]
#v(20pt)
#only("2-")[- If $f(x) = y$, then $f^{-1}(y) = x$]
#only("1")[
#voiceover("Inverse functions are functions that 'undo' each other. They essentially reverse the operation of the original function.")
]
#only("2")[
#voiceover("If a function f maps x to y, then its inverse function, denoted as f inverse, maps y back to x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Domain and Range]
#v(40pt)
#only("1-")[- Domain: Set of all possible input values 📥]
#v(20pt)
#only("2-")[- Range: Set of all possible output values 📤]
#v(20pt)
#only("3-")[- For inverse functions, domain and range swap 🔁]
#only("1")[
#voiceover("Let's recall what domain and range mean. The domain is the set of all possible input values for a function.")
]
#only("2")[
#voiceover("The range, on the other hand, is the set of all possible output values of a function.")
]
#only("3")[
#voiceover("Now, here's an interesting property of inverse functions: their domains and ranges are swapped compared to the original function.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[- Consider $f(x) = x^2$ with domain $x ≥ 0$]
#v(20pt)
#only("2-")[- Its inverse is $f^(-1)(x) = sqrt(x)$]
#v(20pt)
#only("3-")[- The domain of $f^(-1)$ is the range of $f$: $x ≥ 0$]
#v(20pt)
#only("4-")[- The range of $f^(-1)$ is the domain of $f$: $y ≥ 0$]
#only("1")[
#voiceover("Let's look at an example. Consider the function f of x equals x squared, with the domain restricted to non-negative real numbers.")
]
#only("2")[
#voiceover("Its inverse function is f inverse of x equals the square root of x.")
]
#only("3")[
#voiceover("Notice that the domain of f inverse is the same as the range of f: non-negative real numbers.")
]
#only("4")[
#voiceover("Similarly, the range of f inverse is the same as the domain of f: non-negative real numbers.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 2, 100)
y1 = x**2
y2 = np.sqrt(x)

fig, ax = plt.subplots(figsize=(6, 6))

ax.plot(x, y1, 'b-', label='$f(x) = x^2$')
ax.plot(y2, x, 'r-', label='$f^{-1}(x) = \sqrt{x}$')

ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend(loc='upper left')
ax.grid(True)

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visual representation. The blue curve represents the function f of x equals x squared, while the red curve represents its inverse, f inverse of x equals the square root of x. Notice how they are reflections of each other over the line y equals x.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Inverse functions "undo" each other 🔄]
#v(20pt)
#only("2-")[- Domain and range swap for inverse functions 🔁]
#v(20pt)
#only("3-")[- Visually, they are reflections over the line $y = x$]
#only("1")[
#voiceover("To summarize, inverse functions undo each other.")
]
#only("2")[
#voiceover("A key property is that their domains and ranges are swapped compared to the original function.")
]
#only("3")[
#voiceover("Visually, inverse functions appear as reflections of each other over the line y equals x.")
]
]