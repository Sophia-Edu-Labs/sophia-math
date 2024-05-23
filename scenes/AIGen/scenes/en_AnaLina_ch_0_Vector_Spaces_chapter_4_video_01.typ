#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Combination of Vectors]
#v(40pt)
#only("1-")[- Sum of scalar multiples of vectors]
#v(20pt)
#only("2-")[- Example: $a vec(v)_1 + b vec(v)_2$, where $a, b ∈ ℝ$]
#only("1")[
#voiceover("A linear combination of vectors is a sum of scalar multiples of those vectors.")
]
#only("2")[
#voiceover("For example, if we have two vectors v1 and v2, a linear combination would be a times v1 plus b times v2, where a and b are real numbers, also known as scalars.")
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

# Define the vectors
v1 = np.array([1, 2])
v2 = np.array([3, 1])

# Create the plot
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='$\\vec{v}_1$')
plt.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b', label='$\\vec{v}_2$')
plt.quiver(0, 0, v1[0]+v2[0], v1[1]+v2[1], angles='xy', scale_units='xy', scale=1, color='g', label='$\\vec{v}_1 + \\vec{v}_2$')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.xlim(-1, 5)
plt.ylim(-1, 5)
plt.legend()
plt.title('Linear Combination of Vectors')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Here's a visualization. The red vector is v1, the blue vector is v2, and the green vector is their sum, v1 plus v2. This sum is a specific example of a linear combination, where both scalars are 1.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Properties]
#v(40pt)
#only("1-")[- Closed under addition and scalar multiplication]
#v(20pt)
#only("2-")[- $a(vec(u) + vec(v)) = a vec(u) + a vec(v)$]
#v(20pt)
#only("3-")[- $(a + b) vec(v) = a vec(v) + b vec(v)$]
#only("1")[
#voiceover("Linear combinations have some important properties. The set of all linear combinations of a set of vectors is closed under addition and scalar multiplication.")
]
#only("2")[
#voiceover("This means that if you multiply a linear combination by a scalar, you get another linear combination. Symbolically, a times the sum of vectors u and v equals a times u plus a times v.")
]
#only("3")[
#voiceover("Similarly, if you add two linear combinations of the same vector, you get another linear combination. Symbolically, a plus b times vector v equals a times v plus b times v.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Linear combination: sum of scalar multiples of vectors 📈]
#v(20pt)
#only("2-")[- Closed under addition and scalar multiplication ➕×]
#v(20pt)
#only("3-")[- Fundamental concept in linear algebra 🎓]
#only("1")[
#voiceover("To summarize, a linear combination is a sum of scalar multiples of vectors.")
]
#only("2")[
#voiceover("The set of all linear combinations is closed under addition and scalar multiplication.")
]
#only("3")[
#voiceover("Linear combinations are a fundamental concept in linear algebra and form the basis for understanding vector spaces and subspaces.")
]
]