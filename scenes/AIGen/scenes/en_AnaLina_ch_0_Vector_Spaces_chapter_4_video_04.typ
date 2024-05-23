#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Combinations 🎨]
#v(40pt)
#only("1-")[- Sum of scalar multiples of vectors]
#v(20pt)
#only("2-")[- Example: $a vec(u) + b vec(v)$, where $a, b$ are scalars and $vec(u), vec(v)$ are vectors]
#only("1")[
#voiceover("A linear combination of vectors is a sum of scalar multiples of those vectors.")
]
#only("2")[
#voiceover("For example, if we have two vectors u and v, and two scalars a and b, then a times u plus b times v is a linear combination of u and v.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Expressing Vectors 📏]
#v(40pt)
#only("1-")[- Any vector expressed as a linear combination is a linear combination of the given vectors]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Define the vectors
u = np.array([1, 0])
v = np.array([0, 1])
w = np.array([2, 3])

# Create the plot
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, u[0], u[1], angles='xy', scale_units='xy', scale=1, color='r', label='u')
plt.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='b', label='v')
plt.quiver(0, 0, w[0], w[1], angles='xy', scale_units='xy', scale=1, color='g', label='w')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.xlim(-1, 3)
plt.ylim(-1, 4)
plt.legend()
plt.title('Vectors')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt),
caption: [],
)
]
]
]
#only("1")[
#voiceover("If a vector can be expressed as a linear combination of other vectors, then it is a linear combination of those vectors.")
]
#only("2")[
#voiceover("In this example, the green vector w can be expressed as 2 times the red vector u plus 3 times the blue vector v. Therefore, w is a linear combination of u and v.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Linear combination: sum of scalar multiples of vectors 🧮]
#v(20pt)
#only("2-")[- If a vector can be expressed as a linear combination of other vectors, it is a linear combination of those vectors 🎨]
#only("1")[
#voiceover("To summarize, a linear combination of vectors is a sum of scalar multiples of those vectors.")
]
#only("2")[
#voiceover("And if a vector can be expressed in this form, it is a linear combination of the given vectors.")
]
]