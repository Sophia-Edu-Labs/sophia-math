#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse Functions 🔄]
#v(40pt)
#only("1-")[- Swap domains and ranges]
#v(20pt)
#only("2-")[- Example: $f(x) = x^2$, $x >= 0$]
#v(10pt)
#only("3-")[  - Domain: $[0, infinity)$, Range: $[0, infinity)$]
#v(20pt)
#only("4-")[- Inverse: $f^(-1)(x) = root(2, x)$, $x >= 0$]
#v(10pt)
#only("5-")[  - Domain: $[0, infinity)$, Range: $[0, infinity)$]
#only("1")[
#voiceover("Inverse functions have a special property: they swap the domains and ranges of the original functions.")
]
#only("2")[
#voiceover("Let's consider an example. Take the function f of x equals x squared, where x is greater than or equal to zero.")
]
#only("3")[
#voiceover("The domain of this function is all non-negative real numbers, and the range is also all non-negative real numbers.")
]
#only("4")[
#voiceover("Now, let's look at its inverse function. The inverse of f of x is the square root of x, where x is greater than or equal to zero.")
]
#only("5")[
#voiceover("Notice that the domain of the inverse function is the range of the original function, and the range of the inverse function is the domain of the original function. They've been swapped!")
]
]
]]]]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 5, 100)
y1 = x**2
y2 = np.sqrt(x)

fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, y1, 'b-', linewidth=2, label='$f(x) = x^2$')
ax.plot(x, y2, 'r-', linewidth=2, label='$f^{-1}(x) = \sqrt{x}$')
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend(loc='upper left', shadow=True)
ax.grid(True)
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a graph showing the function f of x equals x squared in blue, and its inverse, the square root of x, in red. Notice how they are reflections of each other over the line y equals x.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Inverse functions swap domains and ranges 🔄]
#v(20pt)
#only("2-")[- Graphically, they are reflections over $y = x$ 📈]
#v(20pt)
#only("3-")[- Key to understanding the behavior of inverses 🔑]
#only("1")[
#voiceover("To summarize, inverse functions swap the domains and ranges of the original functions.")
]
#only("2")[
#voiceover("Graphically, inverse functions are reflections of the original functions over the line y equals x.")
]
#only("3")[
#voiceover("Understanding this property is key to understanding the behavior of inverse functions and how they relate to the original functions.")
]
]