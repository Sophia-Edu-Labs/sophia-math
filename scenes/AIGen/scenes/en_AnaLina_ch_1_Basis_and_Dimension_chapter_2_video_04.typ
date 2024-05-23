#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the concept of a basis in linear algebra.")
]
#text(size: 30pt, weight: "bold")[Basis]
#v(40pt)
#only("2-")[- Set of linearly independent vectors that span the entire space 🎯]
#only("2")[
#voiceover("A basis of a vector space is a set of linearly independent vectors that span the entire space.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Linear Independence]
#v(40pt)
#only("1-")[- No vector can be written as a linear combination of the others 🚫]
#only("1")[
#voiceover("Recall that a set of vectors is linearly independent if no vector in the set can be written as a linear combination of the others.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Spanning]
#v(40pt)
#only("1-")[- Every vector in the space can be written as a linear combination of the basis vectors 🌐]
#only("1")[
#voiceover("And a set of vectors spans a space if every vector in the space can be written as a linear combination of the vectors in the set.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the vectors
v1 = np.array([1, 0])
v2 = np.array([0, 1])

# Create a plot
fig, ax = plt.subplots(figsize=(6, 6))

# Plot the vectors
ax.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='(1, 0)')
ax.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b', label='(0, 1)')

# Set the limits and aspect ratio
ax.set_xlim(-2, 2)
ax.set_ylim(-2, 2)
ax.set_aspect('equal')

# Add grid and labels
ax.grid(True)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()

# Show the plot
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("For example, the vectors (1, 0) and (0, 1) form a basis for R^2. They are linearly independent and span the entire 2D space.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Basis: linearly independent vectors that span the space 🎯]
#v(20pt)
#only("2-")[- Linearly independent: no vector is a linear combination of others 🚫]
#v(20pt)
#only("3-")[- Spanning: every vector is a linear combination of basis vectors 🌐]
#only("1")[
#voiceover("To summarize, a basis is a set of linearly independent vectors that span the entire space.")
]
#only("2")[
#voiceover("Linearly independent means no vector in the set can be written as a linear combination of the others.")
]
#only("3")[
#voiceover("And spanning means every vector in the space can be written as a linear combination of the basis vectors.")
]
]