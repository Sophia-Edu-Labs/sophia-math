#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Changing Basis 🔄]

#v(40pt)

#only("1-")[- Change basis matrix: new basis vectors as columns 🔢]
#v(20pt)
#only("2-")[- Example: From standard basis $mat(1;0), mat(0;1)$ to $mat(1;1), mat(1;-1)$]
#v(20pt)
#only("3-")[$mat(1, 1; 1, -1) * mat(x; y) = mat(3; 4)$]
#v(20pt)
#only("4-")[$mat(x; y) = mat(3.5; -0.5)$]

#only("1")[
#voiceover("To change the basis of a vector, we use the change of basis matrix. This matrix is formed by the new basis vectors as columns.")
]

#only("2")[
#voiceover("For example, if we want to change from the standard basis vectors (1; 0) and (0; 1) to the new basis vectors (1; 1) and (1; -1), our change of basis matrix would be (1, 1; 1, -1).")
]

#only("3")[
#voiceover("To find the coordinates of a vector with respect to the new basis, we multiply the change of basis matrix by the vector. For instance, if we have the vector (3; 4), we solve the equation (1, 1; 1, -1) times (x; y) equals (3; 4).")
]

#only("4")[
#voiceover("Solving this equation gives us the coordinates (3.5; -0.5) with respect to the new basis.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the standard basis vectors
e1 = np.array([1, 0])
e2 = np.array([0, 1])

# Define the new basis vectors
v1 = np.array([1, 1])
v2 = np.array([1, -1])

# Define the vector in the standard basis
v = np.array([3, 4])

# Create the plot
fig, ax = plt.subplots(figsize=(6, 6))

# Plot the standard basis vectors
ax.quiver(0, 0, e1[0], e1[1], angles='xy', scale_units='xy', scale=1, color='r', label='Standard Basis')
ax.quiver(0, 0, e2[0], e2[1], angles='xy', scale_units='xy', scale=1, color='r')

# Plot the new basis vectors
ax.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='b', label='New Basis')
ax.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b')

# Plot the vector in the standard basis
ax.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='g', label='Vector')

# Set plot properties
ax.set_xlim(-5, 5)
ax.set_ylim(-5, 5)
ax.grid(True)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here's a visualization of changing basis. The red arrows represent the standard basis vectors, the blue arrows represent the new basis vectors, and the green arrow represents the vector we're transforming.")
]

]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]

#v(40pt)

#only("1-")[- Change basis matrix: new basis vectors as columns 🔢]
#v(20pt)
#only("2-")[- Multiply change of basis matrix by vector to get new coordinates 🧮]
#v(20pt)
#only("3-")[- Useful for working in different coordinate systems 🌐]

#only("1")[
#voiceover("In summary, to change the basis of a vector, we use the change of basis matrix, which is formed by the new basis vectors as columns.")
]

#only("2")[
#voiceover("We multiply this change of basis matrix by the vector to get the coordinates of the vector with respect to the new basis.")
]

#only("3")[
#voiceover("Changing basis is a useful technique when we need to work in different coordinate systems or simplify computations.")
]

]