#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Basis of a Vector Space]
#v(40pt)
#only("1-")[- Set of vectors that are:]
#v(20pt)
#only("2-")[  1️⃣ Linearly Independent]
#v(20pt)
#only("3-")[  2️⃣ Span the entire space]
#only("1")[
#voiceover("A basis of a vector space is a set of vectors with two important properties.")
]
#only("2")[
#voiceover("First, the vectors in a basis are linearly independent. This means that no vector in the set can be written as a linear combination of the others.")
]
#only("3")[
#voiceover("Second, the vectors in a basis span the entire vector space. This means that every vector in the space can be written as a linear combination of the basis vectors.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: Basis for $RR^2$]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the basis vectors
v1 = np.array([1, 0])
v2 = np.array([0, 1])

# Create the plot
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='Basis Vector 1')
plt.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b', label='Basis Vector 2')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.xlim(-2, 2)
plt.ylim(-2, 2)
plt.legend()
plt.title('Standard Basis for R^2')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Let's look at an example. The standard basis for the 2-dimensional real vector space R^2 consists of the vectors (1, 0) and (0, 1). These vectors are linearly independent and span R^2.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Basis: Set of linearly independent vectors that span the space 🎯]
#v(20pt)
#only("2-")[- Linearly Independent: No vector is a linear combination of others 🙅‍♂️]
#v(20pt)
#only("3-")[- Span: Every vector is a linear combination of basis vectors 🌐]
#only("1")[
#voiceover("In summary, a basis is a set of linearly independent vectors that span the vector space.")
]
#only("2")[
#voiceover("Linearly independent means that no vector in the basis can be written as a linear combination of the others.")
]
#only("3")[
#voiceover("And span means that every vector in the space can be written as a linear combination of the basis vectors.")
]
]