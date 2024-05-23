#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse of a Matrix]
#v(40pt)
#only("1-")[- Matrix $A$ has an inverse if $AA^(-1)=A^(-1)A=I$]
#v(20pt)
#only("2-")[- Example: $mat(2, 1; 1, 2)$ has inverse $mat(0.5, -0.25; -0.25, 0.5)$]
#only("1")[
#voiceover("A matrix A has an inverse if there exists another matrix, denoted as A to the power of negative 1, such that when A is multiplied by its inverse, or the inverse is multiplied by A, the result is the identity matrix I.")
]
#only("2")[
#voiceover("For example, the matrix with elements 2, 1, 1, and 2 has an inverse matrix with elements 0.5, negative 0.25, negative 0.25, and 0.5.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Finding the Inverse]
#v(40pt)
#only("1-")[- Various methods: Gauss-Jordan elimination, Cramer's rule, etc. 🧮]
#v(20pt)
#only("2-")[- Example using Gauss-Jordan elimination: $mat(1, 2; 3, 4)$ → $mat(-2, 1; 1.5, -0.5)$]
#only("1")[
#voiceover("There are various methods to find the inverse of a matrix, such as Gauss-Jordan elimination and Cramer's rule.")
]
#only("2")[
#voiceover("For instance, using Gauss-Jordan elimination, we can find that the inverse of the matrix with elements 1, 2, 3, and 4 is the matrix with elements negative 2, 1, 1.5, and negative 0.5.")
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

# Define the original matrix and its inverse
A = np.array([[1, 2], [3, 4]])
A_inv = np.linalg.inv(A)

# Create a grid of points
x = np.linspace(-2, 2, 20)
y = np.linspace(-2, 2, 20)
X, Y = np.meshgrid(x, y)

# Apply the original matrix transformation
Z1 = np.zeros_like(X)
for i in range(X.shape[0]):
    for j in range(X.shape[1]):
        Z1[i,j] = np.dot(A, [X[i,j], Y[i,j]])[0]

# Apply the inverse matrix transformation
Z2 = np.zeros_like(X)
for i in range(X.shape[0]):
    for j in range(X.shape[1]):
        Z2[i,j] = np.dot(A_inv, [X[i,j], Y[i,j]])[0]

# Create the plot
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 6))

ax1.contourf(X, Y, Z1, alpha=0.5, cmap='viridis')
ax1.set_title('Original Matrix Transformation')
ax1.set_xlabel('x')
ax1.set_ylabel('y')

ax2.contourf(X, Y, Z2, alpha=0.5, cmap='viridis')
ax2.set_title('Inverse Matrix Transformation')
ax2.set_xlabel('x')
ax2.set_ylabel('y')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the effect of a matrix and its inverse. The left plot shows the transformation caused by the original matrix, while the right plot shows how the inverse matrix reverses this transformation.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Inverse matrix: $A A^{-1} = A^{-1} A = I$ 🔄]
#v(20pt)
#only("2-")[- Various methods to find inverse 🔍]
#v(20pt)
#only("3-")[- Inverse matrix reverses the effect of original matrix 🔙]
#only("1")[
#voiceover("To summarize, an inverse matrix is a matrix that, when multiplied by the original matrix, results in the identity matrix.")
]
#only("2")[
#voiceover("There are various methods to find the inverse of a matrix, such as Gauss-Jordan elimination and Cramer's rule.")
]
#only("3")[
#voiceover("The inverse matrix effectively reverses the transformation caused by the original matrix.")
]
]