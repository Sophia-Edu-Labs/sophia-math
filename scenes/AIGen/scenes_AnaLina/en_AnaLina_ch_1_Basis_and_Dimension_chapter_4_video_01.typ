#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dimension of a Vector Space]
#v(40pt)
#only("1-")[- Number of vectors in a basis 🎯]
#v(20pt)
#only("2-")[- Basis: Linearly independent vectors that span the space 🌀]
#only("1")[
#voiceover("The dimension of a vector space is the number of vectors in a basis for that space.")
]
#only("2")[
#voiceover("Remember, a basis is a set of linearly independent vectors that span the entire vector space.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example: $RR^2$]
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
plt.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='Basis vector 1')
plt.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b', label='Basis vector 2')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.xlim(-2, 2)
plt.ylim(-2, 2)
plt.legend()
plt.title('Basis of R^2')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Let's look at an example. In the two-dimensional real vector space R^2, a common basis is the standard basis consisting of the vectors (1, 0) and (0, 1).")
]
#v(20pt)
#only("2-")[- Standard basis: $mat(1;0)$ and $mat(0;1)$ ↔]
#only("2")[
#voiceover("These two vectors are linearly independent and span the entire R^2 space.")
]
#v(20pt)
#only("3-")[- Dimension of $RR^2$ = 2 🔢]
#only("3")[
#voiceover("Since there are two vectors in this basis, the dimension of R^2 is 2.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Dimension = Number of vectors in a basis 📏]
#v(20pt)
#only("2-")[- Basis spans the space with linearly independent vectors 🎨]
#v(20pt)
#only("3-")[- Example: $"dim"(RR^2) = 2$ 🌍]
#only("1")[
#voiceover("To summarize, the dimension of a vector space equals the number of vectors in a basis for that space.")
]
#only("2")[
#voiceover("A basis spans the entire space using linearly independent vectors.")
]
#only("3")[
#voiceover("And in our example, the dimension of R^2 is 2, because the standard basis consists of two vectors.")
]
]