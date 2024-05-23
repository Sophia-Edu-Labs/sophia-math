#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Problem]
#v(40pt)
#only("1-")[Given $T: ℝ^4 -> ℝ^3$ with $"dim"("ker"(T)) = 2$, find $"dim"("im"(T))$ and explain the relationship.]
#only("1")[
#voiceover("Great job! That's the correct solution. Let's go through it step by step together.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Approach]
#v(40pt)
#only("1-")[- Use the dimension formula 📏]
#only("1")[
#voiceover("To solve this problem, we'll use the dimension formula for linear mappings.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[$ "dim"(ℝ^4) = 4 $]
#only("1")[
#voiceover("First, recall that the dimension of R 4 is 4.")
]
#v(20pt)
#only("2-")[#text(fill: aqua)[Dimension Formula:] $ "dim"(V) = "dim"("ker"(T)) + "dim"("im"(T)) $]
#only("2")[
#voiceover("The dimension formula states that the dimension of the domain V equals the sum of the dimensions of the kernel and the image of T.")
]
#v(20pt)
#only("3-")[$ 4 = 2 + "dim"("im"(T)) $]
#only("3")[
#voiceover("Substituting the given values, we have 4 equals 2 plus the dimension of the image of T.")
]
#v(20pt)
#only("4-")[$ "dim"("im"(T)) = 4 - 2 = 2 $]
#only("4")[
#voiceover("Solving for the dimension of the image, we get 2.")
]
#v(20pt)
#only("5-")[🎉 $ "dim"("im"(T)) = 2 $]
#only("5")[
#voiceover("Therefore, the dimension of the image of T is 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Relationship]
#v(40pt)
#only("1-")[The sum of the dimensions of the kernel and image equals the dimension of the domain. 🧮]
#only("1")[
#voiceover("The relationship shown by the dimension formula is that the sum of the dimensions of the kernel and image of a linear mapping equals the dimension of its domain.")
]
#v(20pt)
#only("2-")[$ "dim"(V) = "dim"("ker"(T)) + "dim"("im"(T)) $]
#only("2")[
#voiceover("In this case, the dimension of R 4, which is 4, equals the sum of the dimension of the kernel, which is 2, and the dimension of the image, which we found to be 2 as well.")
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

# Create a 3D plot
fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Define the linear mapping T
def T(x):
    return np.array([x[0] + x[1], x[2], 0])

# Create a grid of points in R^4
x = np.linspace(-1, 1, 10)
y = np.linspace(-1, 1, 10)
z = np.linspace(-1, 1, 10)
w = np.linspace(-1, 1, 10)
X, Y, Z, W = np.meshgrid(x, y, z, w)

# Apply the linear mapping to the grid points
U, V, _ = T([X, Y, Z, W])

# Plot the image of the grid points
ax.scatter(U, V, np.zeros_like(U), c='blue', alpha=0.5, label='Image')

# Plot the kernel
kernel = np.array([[1, -1, 0, 0], [0, 0, 1, 0]])
ax.plot(*kernel, np.zeros(2), c='red', label='Kernel')

# Add labels and legend
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
ax.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the linear mapping T from R 4 to R 3. The blue points represent the image of T, which lies in a 2-dimensional subspace of R 3. The red line represents the 2-dimensional kernel of T in R 4.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Dimension formula: $ "dim"(V) = "dim"("ker"(T)) + "dim"("im"(T)) $ 📏]
#v(20pt)
#only("2-")[- $ "dim"("im"(T)) = 2 $ 🎉]
#v(20pt)
#only("3-")[- Relationship: sum of kernel and image dimensions equals domain dimension 🧮]
#only("1")[
#voiceover("To summarize, we used the dimension formula to find the dimension of the image of T.")
]
#only("2")[
#voiceover("We found that the dimension of the image is 2.")
]
#only("3")[
#voiceover("The dimension formula shows the relationship that the sum of the dimensions of the kernel and image of a linear mapping equals the dimension of its domain.")
]
]