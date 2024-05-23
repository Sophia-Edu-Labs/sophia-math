#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap: A linear mapping can be represented by a matrix, which transforms coordinates from one basis to another.")
]
#text(size: 30pt, weight: "bold")[Linear Mapping Recap]
#v(40pt)
#only("2-")[
- Linear mapping: $T: V \\to W$ 
]
#only("2")[
#voiceover("A linear mapping T is a function from one vector space V to another vector space W.")
]
#v(20pt)
#only("3-")[
- Matrix representation: $[T]_B^C$
]
#only("3")[
#voiceover("This linear mapping can be represented by a matrix, denoted by T in square brackets with subscript B and superscript C.")
]
#v(20pt)
#only("4-")[
- Basis change: $B$ (domain), $C$ (codomain)
]
#only("4")[
#voiceover("The subscript B represents the basis for the domain vector space V, and the superscript C represents the basis for the codomain vector space W.")
]
#v(20pt)
#only("5-")[
- Coordinate transformation: $[v]_B \\to [T(v)]_C$
]
#only("5")[
#voiceover("The matrix T transforms the coordinates of a vector v with respect to basis B into the coordinates of the transformed vector T of v with respect to basis C.")
]
#v(40pt)
#only("6-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a 3D plot
fig = plt.figure(figsize=(6, 6))
ax = fig.add_subplot(111, projection='3d')

# Define the bases B and C
B = np.array([[1, 0, 0], [0, 1, 0], [0, 0, 1]])  # Standard basis
C = np.array([[1, 1, 0], [1, 0, 1], [0, 1, 1]])  # Different basis

# Define a vector v
v = np.array([2, 3, 1])

# Define the linear mapping T (example matrix)
T = np.array([[1, 2, 1], [0, 1, 1], [1, 1, 0]])

# Transform the vector v
Tv = T.dot(v)

# Plot the bases B and C
for i in range(3):
    ax.quiver(0, 0, 0, B[i, 0], B[i, 1], B[i, 2], color='b', arrow_length_ratio=0.1)
    ax.quiver(0, 0, 0, C[i, 0], C[i, 1], C[i, 2], color='r', arrow_length_ratio=0.1)

# Plot the vector v and its transformed vector Tv
ax.quiver(0, 0, 0, v[0], v[1], v[2], color='g', arrow_length_ratio=0.1)
ax.quiver(0, 0, 0, Tv[0], Tv[1], Tv[2], color='m', arrow_length_ratio=0.1)

# Set labels and title
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
ax.set_title('Linear Mapping')

# Add a legend
import matplotlib.patches as mpatches
blue_patch = mpatches.Patch(color='blue', label='Basis B')
red_patch = mpatches.Patch(color='red', label='Basis C')
green_patch = mpatches.Patch(color='green', label='Vector v')
magenta_patch = mpatches.Patch(color='magenta', label='Transformed vector Tv')
ax.legend(handles=[blue_patch, red_patch, green_patch, magenta_patch])

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
#only("6")[
#voiceover("This plot illustrates the concept. The blue arrows represent the standard basis B, the red arrows represent a different basis C. The green arrow is a vector v, and the magenta arrow is the transformed vector T of v under the linear mapping represented by the matrix T.")
]
]