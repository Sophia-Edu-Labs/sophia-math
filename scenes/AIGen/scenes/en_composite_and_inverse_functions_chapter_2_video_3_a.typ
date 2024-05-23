#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! That's the correct approach to model the area of the rectangle using a composite function. Let's go through the solution step by step.")
]
#text(size: 30pt, weight: "bold")[Problem Statement]
#v(40pt)
#only("2-")[Create a composite function to model the area of a rectangle where:]
#v(20pt)
#only("3-")[- Length is $2x$]
#only("4-")[- Width is $x + 3$]
]

#slide()[
#text(size: 30pt, weight: "bold")[Approach]
#v(40pt)
#only("1-")[Area of a rectangle: $A = l ⋅ w$]
#v(20pt)
#only("2-")[- $l$: Length function]
#only("3-")[- $w$: Width function]
#only("1")[
#voiceover("To model the area, we'll use the formula that the area of a rectangle equals length times width.")
]
#only("2")[
#voiceover("We can think of the length as a function of x.")
]
#only("3")[
#voiceover("Similarly, the width can also be expressed as a function of x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[Length function: $l(x) = 2x$]
#v(20pt)
#only("2-")[Width function: $w(x) = x + 3$]
#v(20pt)
#only("3-")[Area function: $A(x) = l(x) ⋅ w(x)$]
#v(20pt)
#only("4-")[$ A(x) = (2x)(x + 3)$]
#v(20pt)
#only("5-")[$ A(x) = 2x^2 + 6x$]
#only("1")[
#voiceover("The length is given as 2x, so the length function is l of x equals 2x.")
]
#only("2")[
#voiceover("The width is x plus 3, so the width function is w of x equals x plus 3.")
]
#only("3")[
#voiceover("The area function A of x is the product of the length and width functions.")
]
#only("4")[
#voiceover("Substituting the expressions for length and width, we get A of x equals 2x times the quantity x plus 3.")
]
#only("5")[
#voiceover("Expanding the brackets, the composite function for the area is A of x equals 2x squared plus 6x.")
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

x = np.linspace(0, 5, 100)
l = 2 * x
w = x + 3
A = 2 * x**2 + 6 * x

fig, ax = plt.subplots(figsize=(8, 6))
ax.plot(x, l, 'b-', label='Length')
ax.plot(x, w, 'g--', label='Width')
ax.plot(x, A, 'r-', label='Area')

ax.set_xlabel('x')
ax.set_ylabel('Value')
ax.set_title('Rectangle Dimensions and Area')
ax.grid(True)
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("This graph shows how the length, width, and area of the rectangle vary with x. As x increases, all three quantities increase, but the area grows faster due to its quadratic nature.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Length function: $l(x) = 2x$ 📏]
#v(20pt)
#only("2-")[- Width function: $w(x) = x + 3$ 📐]
#v(20pt)
#only("3-")[- Area function: $A(x) = l(x) ⋅ w(x)$ 🟥]
#v(20pt)
#only("4-")[- Composite function: $A(x) = 2x^2 + 6x$ 🎯]
#only("1")[
#voiceover("To recap, we defined the length function as l of x equals 2x.")
]
#only("2")[
#voiceover("The width function as w of x equals x plus 3.")
]
#only("3")[
#voiceover("The area function A of x is the product of the length and width functions.")
]
#only("4")[
#voiceover("Simplifying, we arrived at the composite function A of x equals 2x squared plus 6x, which models the area of the rectangle in terms of x.")
]
]