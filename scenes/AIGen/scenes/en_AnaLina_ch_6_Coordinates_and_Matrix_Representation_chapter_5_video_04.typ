#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap how to find the matrix representation of a linear mapping with respect to a new basis.")
]
#text(size: 30pt, weight: "bold")[Matrix Representation with New Basis]
// The title "Matrix Representation with New Basis" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("Suppose we have a linear mapping $T$ and we want to find its matrix representation with respect to a new basis $B$.")
]
#only("2-")[
- Linear mapping: $T$
- New basis: $B$
]
// The linear mapping T and new basis B are shown from slide 2 onward
#v(20pt)
#only("3")[
#voiceover("To do this, we need to multiply the original matrix representation of $T$, let's call it $A$, by the change of basis matrix, which we'll denote as $P$.")
]
#only("3-")[
- Original matrix representation: $A$
- Change of basis matrix: $P$
]
// The original matrix A and change of basis matrix P are shown from slide 3 onward
#v(20pt)
#only("4")[
#voiceover("The change of basis matrix $P$ is the matrix that transforms coordinates from the standard basis to the new basis $B$.")
]
#only("4-")[
$P$: Standard basis $→$ New basis $B$
]
// The role of the change of basis matrix P is shown from slide 4 onward
#v(20pt)
#only("5")[
#voiceover("So, the matrix representation of $T$ with respect to the new basis $B$ is given by the product $P A P^(-1)$.")
]
#only("5-")[
$[T]_B = P A P^(-1)$
]
// The formula for the matrix representation with respect to the new basis is shown from slide 5 onward
]

#slide()[
#only("1")[
#voiceover("Let's visualize this process.")
]
#text(size: 30pt, weight: "bold")[Visualization]
// The title "Visualization" is shown on this slide
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(``` 
import matplotlib.pyplot as plt
import numpy as np

# Create a 3D plot
fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Define the standard basis vectors
e1 = np.array([1, 0, 0])
e2 = np.array([0, 1, 0])
e3 = np.array([0, 0, 1])

# Define the new basis vectors
v1 = np.array([1, 1, 0])
v2 = np.array([-1, 1, 0])
v3 = np.array([0, 0, 1])

# Plot the standard basis vectors
ax.quiver(0, 0, 0, e1[0], e1[1], e1[2], color='red', arrow_length_ratio=0.1)
ax.quiver(0, 0, 0, e2[0], e2[1], e2[2], color='green', arrow_length_ratio=0.1)
ax.quiver(0, 0, 0, e3[0], e3[1], e3[2], color='blue', arrow_length_ratio=0.1)

# Plot the new basis vectors
ax.quiver(0, 0, 0, v1[0], v1[1], v1[2], color='purple', arrow_length_ratio=0.1)
ax.quiver(0, 0, 0, v2[0], v2[1], v2[2], color='orange', arrow_length_ratio=0.1)
ax.quiver(0, 0, 0, v3[0], v3[1], v3[2], color='cyan', arrow_length_ratio=0.1)

# Set labels and title
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
ax.set_title('Change of Basis')

# Add a legend
red_patch = plt.Line2D([0], [0], color='red', label='Standard Basis')
purple_patch = plt.Line2D([0], [0], color='purple', label='New Basis')
ax.legend(handles=[red_patch, purple_patch])

plt.tight_layout()
plt.show()
```, width: 360pt),
caption: [],
)
]
]
]
// The figure shows a 3D plot with the standard basis vectors (red, green, blue) and the new basis vectors (purple, orange, cyan). A legend is added to distinguish between the standard and new basis. This figure is shown from slide 2 onward.
#only("2")[
#voiceover("Here, the red, green, and blue vectors represent the standard basis, while the purple, orange, and cyan vectors represent the new basis $B$.")
]
#only("3")[
#voiceover("The change of basis matrix $P$ transforms coordinates from the standard basis to the new basis.")
]
#only("4")[
#voiceover("And the original matrix $A$ represents the linear mapping $T$ with respect to the standard basis.")
]
#only("5")[
#voiceover("By multiplying $P$, $A$, and $P$ inverse, we obtain the matrix representation of $T$ with respect to the new basis $B$.")
]
]

#slide()[
#only("1")[
#voiceover("To summarize:")
]
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("2")[
#voiceover("To find the matrix representation of a linear mapping with respect to a new basis:")
]
#only("2-")[
1. 📜 Original matrix representation: $A$
]
#only("3-")[
2. 🔄 Change of basis matrix: $P$
]
#only("4-")[
3. 🧮 Multiply: $[T]_B = P A P^(-1)$
]
#only("2")[
#voiceover("We need the original matrix representation $A$ of the linear mapping,")
]
#only("3")[
#voiceover("the change of basis matrix $P$ that transforms coordinates from the standard basis to the new basis,")
]
#only("4")[
#voiceover("and then we multiply $P$, $A$, and $P$ inverse to get the matrix representation with respect to the new basis.")
]
]