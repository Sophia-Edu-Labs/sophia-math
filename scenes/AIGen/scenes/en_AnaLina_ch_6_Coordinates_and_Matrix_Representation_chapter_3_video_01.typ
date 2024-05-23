#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Applying a Matrix to a Vector]
#v(40pt)
#only("1-")[- Matrix $A$ represents a linear mapping]
#v(20pt)
#only("2-")[- Vector $v$ is transformed by $A$]
#v(20pt)
#only("3-")[- Resulting vector: $A v$]
#only("1")[
#voiceover("Let's see how to apply a matrix to a vector to find the image of the vector under the linear mapping represented by the matrix.")
]
#only("2")[
#voiceover("Suppose we have a matrix A that represents a linear mapping and a vector v that we want to transform.")
]
#only("3")[
#voiceover("The resulting vector, which is the image of v under the mapping, is obtained by multiplying A and v.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[- Matrix $A = mat(2, 0; 0, 3)$]
#v(20pt)
#only("2-")[- Vector $v = mat(1; 2)$]
#v(20pt)
#only("3-")[- Compute: $A v = mat(2, 0; 0, 3) mat(1; 2)$]
#v(20pt)
#only("4-")[$ = mat(2 dot 1 + 0 dot 2; 0 dot 1 + 3 dot 2) = mat(2; 6)$]
#only("1")[
#voiceover("Let's take an example. Suppose we have the matrix A equals 2, 0; 0, 3.")
]
#only("2")[
#voiceover("And let's say we want to apply this to the vector v equals 1; 2.")
]
#only("3")[
#voiceover("To find the image of v, we compute A times v, which is the matrix 2, 0; 0, 3 multiplied by the vector 1; 2.")
]
#only("4")[
#voiceover("This gives us the vector 2; 6. So the image of the vector 1; 2 under the mapping represented by the matrix A is the vector 2; 6.")
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

# Define the matrix and vector
A = np.array([[2, 0], [0, 3]])
v = np.array([[1], [2]])

# Compute the image vector
w = A @ v

# Create the plot
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='b', label='Original vector')
plt.quiver(0, 0, w[0], w[1], angles='xy', scale_units='xy', scale=1, color='r', label='Image vector')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.xlim(-1, 3)
plt.ylim(-1, 7)
plt.legend()
plt.title('Applying Matrix to Vector')
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
#voiceover("Here's a visualization of this transformation. The blue arrow represents the original vector v and the red arrow represents its image under the mapping A.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Matrix represents linear mapping 📐]
#v(20pt)
#only("2-")[- Multiply matrix and vector to find image 🧮]
#v(20pt)
#only("3-")[- Visualization helps understand the transformation 📈]
#only("1")[
#voiceover("To summarize, a matrix can represent a linear mapping.")
]
#only("2")[
#voiceover("To find the image of a vector under this mapping, we multiply the matrix and the vector.")
]
#only("3")[
#voiceover("Visualizing the original vector and its image can help us understand how the mapping transforms the vector.")
]
]