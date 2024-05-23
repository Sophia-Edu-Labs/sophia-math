#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Mapping & Matrix Multiplication]

#v(40pt)

#only("1-")[- Linear mapping represented by a matrix]
#only("2-")[- Finding the image of a vector]
#only("3-")[- Multiply the matrix by the vector]

#v(40pt)

#only("1")[
#voiceover("A linear mapping can be represented by a matrix.")
]

#only("2")[
#voiceover("To find the image of a vector under this linear mapping...")
]

#only("3")[
#voiceover("We multiply the matrix by the vector.")
]

#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the matrix and vector
A = np.array([[2, 0], [0, 3]])
v = np.array([1, 2])

# Compute the image of the vector
w = A @ v

# Create the plot
fig, ax = plt.subplots(figsize=(6, 6))

# Plot the original vector
ax.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='blue', label='Original vector')

# Plot the transformed vector
ax.quiver(0, 0, w[0], w[1], angles='xy', scale_units='xy', scale=1, color='red', label='Transformed vector')

# Add grid and labels
ax.grid(True)
ax.set_xlim(-1, 7)
ax.set_ylim(-1, 7)
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]

#only("4")[
#voiceover("For example, if we have a matrix A equals mat(2, 0; 0, 3) and a vector v equals mat(1; 2), the image of v under the linear mapping represented by A is obtained by multiplying A and v.")
]

#only("5-")[
$ A v = mat(2, 0; 0, 3) mat(1; 2) = mat(2; 6) $
]

#only("5")[
#voiceover("This gives us the new vector mat(2; 6), which is the image of v under the linear mapping.")
]

#only("6")[
#voiceover("So remember, to find the image of a vector under a linear mapping, we multiply the matrix representing the mapping by the vector. 🧮✨")
]

]
]