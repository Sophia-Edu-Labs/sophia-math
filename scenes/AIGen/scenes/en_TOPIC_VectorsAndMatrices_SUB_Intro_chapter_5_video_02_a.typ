#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Scalar Multiplication of Matrices]
#v(40pt)

#only("1-")[
$3 dot mat(1, 2; 3, 4) = mat(?, ?; ?, ?)$
]

#v(20pt)

#only("2-")[
$3 dot mat(1, 2; 3, 4) = mat(3 dot 1, 3 dot 2; 3 dot 3, 3 dot 4)$
]

#v(20pt)

#only("3-")[
$3 dot mat(1, 2; 3, 4) = mat(3, 6; 9, 12)$
]

#only("1")[
#voiceover("Great job on solving this problem! Let's go through the solution step by step. We start with multiplying the matrix by the scalar 3.")
]

#only("2")[
#voiceover("To multiply a matrix by a scalar, we multiply each element of the matrix by that scalar. So, we multiply each entry by 3.")
]

#only("3")[
#voiceover("After multiplying each element by 3, we get our final result: a matrix with 3 in the top left, 6 in the top right, 9 in the bottom left, and 12 in the bottom right.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visualizing the Transformation]
#v(40pt)

#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

# Original matrix
A = np.array([[1, 2], [3, 4]])

# Transformed matrix
B = 3 * A

# Create a grid of points
x = np.linspace(-5, 5, 10)
y = np.linspace(-5, 5, 10)
X, Y = np.meshgrid(x, y)

# Apply the transformations
U, V = np.dot(A, [X.flatten(), Y.flatten()])
U_scaled, V_scaled = np.dot(B, [X.flatten(), Y.flatten()])

# Plot
fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 5))

ax1.quiver(X, Y, U.reshape(X.shape) - X, V.reshape(Y.shape) - Y, angles='xy', scale_units='xy', scale=1, color='b', label='Original')
ax1.set_xlim([-5, 5])
ax1.set_ylim([-5, 5])
ax1.set_aspect('equal')
ax1.grid(True)
ax1.set_title('Original Transformation')
ax1.legend()

ax2.quiver(X, Y, U_scaled.reshape(X.shape) - X, V_scaled.reshape(Y.shape) - Y, angles='xy', scale_units='xy', scale=1, color='r', label='Scaled')
ax2.set_xlim([-5, 5])
ax2.set_ylim([-5, 5])
ax2.set_aspect('equal')
ax2.grid(True)
ax2.set_title('Scaled Transformation')
ax2.legend()

plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [Comparison of Original and Scaled Transformations],
)
]
]

#only("1")[
#voiceover("Now, let's visualize what this scalar multiplication does to the transformation represented by our matrix. On the left, we see the original transformation, and on the right, we see the transformation after multiplying by 3.")
]

#only("2")[
#voiceover("Notice how the scaled transformation on the right stretches the space more than the original. This is because each component of the transformation has been tripled in magnitude.")
]

#only("3")[
#voiceover("This visualization helps us understand that scalar multiplication of a matrix amplifies or reduces the transformation it represents, without changing its fundamental direction or shape.")
]
]