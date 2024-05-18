#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Coordinates with Respect to a Basis 📐]
#v(40pt)
#only("1-")[
- Coordinates are coefficients of linear combination
]
#v(20pt)
#only("2-")[
- Example: $mat(3; 4) = 3 mat(1; 0) + 4 mat(0; 1)$
]
#only("1")[
#voiceover("Recall that the coordinates of a vector with respect to a basis are the coefficients of the linear combination of the basis vectors that equals the vector.")
]
#only("2")[
#voiceover("For instance, the coordinates of the vector (3; 4) with respect to the standard basis (1; 0) and (0; 1) are 3 and 4, because (3; 4) equals 3 times (1; 0) plus 4 times (0; 1).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 🎨]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the vectors
v = np.array([3, 4])
e1 = np.array([1, 0])
e2 = np.array([0, 1])

# Create the plot
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='b', label='(3, 4)')
plt.quiver(0, 0, e1[0], e1[1], angles='xy', scale_units='xy', scale=1, color='r', label='(1, 0)')
plt.quiver(0, 0, e2[0], e2[1], angles='xy', scale_units='xy', scale=1, color='g', label='(0, 1)')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.xlim(-1, 4)
plt.ylim(-1, 5)
plt.legend()
plt.title('Coordinates with Respect to Standard Basis')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Here's a visualization. The blue vector (3; 4) can be expressed as a linear combination of the red vector (1; 0) and the green vector (0; 1), which form the standard basis. The coefficients in this linear combination, 3 and 4, are the coordinates of (3; 4) with respect to this basis.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎬]
#v(40pt)
#only("1-")[
- Coordinates w.r.t. basis = coefficients in linear combination 🧮
]
#v(20pt)
#only("2-")[
- $mat(v) = a mat(v)_1 + b mat(v)_2 + ... $ where $mat(v)_1, mat(v)_2, ...$ form basis
]
#v(20pt)
#only("3-")[
- Coordinates of $mat(v)$ w.r.t. $\{mat(v)_1, mat(v)_2, ...\}$ are $(a, b, ...)$
]
#only("1")[
#voiceover("In summary, the coordinates of a vector with respect to a basis are the coefficients in the linear combination of the basis vectors that equals the vector.")
]
#only("2")[
#voiceover("If a vector v equals a times v1 plus b times v2 and so on, where v1, v2, and so on form a basis...")
]
#only("3")[
#voiceover("...then the coordinates of v with respect to this basis {v1, v2, ...} are (a, b, ...). These are the coefficients from the linear combination.")
]
]