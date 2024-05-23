#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dimension Formula]
#v(40pt)
#only("1-")[For a linear mapping $T: V -> W$:]
#v(20pt)
#only("2-")[$"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$]
#only("1")[
#voiceover("The dimension formula is a fundamental result in linear algebra that relates the dimensions of the domain, kernel, and image of a linear mapping.")
]
#only("2")[
#voiceover("Specifically, for a linear mapping T from a vector space V to a vector space W, the dimension formula states that the dimension of V equals the dimension of the kernel of T plus the dimension of the image of T.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Components]
#v(40pt)
#only("1-")[- $V$: Domain 🏠]
#v(20pt)
#only("2-")[- $ker(T)$: Kernel (null space) 🎯]
#v(20pt)
#only("3-")[- $im(T)$: Image (range) 🌠]
#only("1")[
#voiceover("Let's break down the components of the formula. V represents the domain, which is the vector space where the mapping starts.")
]
#only("2")[
#voiceover("The kernel of T, also known as the null space, is the set of all vectors in V that map to the zero vector in W.")
]
#only("3")[
#voiceover("The image of T, also called the range, is the set of all vectors in W that are outputs of the mapping.")
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
fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Define the points for the domain, kernel, and image
domain_points = np.array([[0, 0, 0], [1, 0, 0], [0, 1, 0], [0, 0, 1]])
kernel_points = np.array([[0, 0, 0], [1, 0, 0]])
image_points = np.array([[0, 0, 0], [0, 1, 0], [0, 0, 1]])

# Plot the points
ax.scatter(domain_points[:, 0], domain_points[:, 1], domain_points[:, 2], c='blue', marker='o', label='Domain (V)')
ax.scatter(kernel_points[:, 0], kernel_points[:, 1], kernel_points[:, 2], c='red', marker='x', label='Kernel (ker(T))')
ax.scatter(image_points[:, 0], image_points[:, 1], image_points[:, 2], c='green', marker='^', label='Image (im(T))')

# Set labels and title
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
ax.set_title('Visualization of Domain, Kernel, and Image')

# Add legend
ax.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization to help understand the relationship between the domain, kernel, and image. The blue dots represent the domain V, the red crosses represent the kernel, and the green triangles represent the image.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Intuition]
#v(40pt)
#only("1-")[- $"dim"(V)$: Total dimension 📏]
#v(20pt)
#only("2-")[- $"dim"("ker"(T))$: Dimension lost 📉]
#v(20pt)
#only("3-")[- $"dim"("im"(T))$: Dimension preserved 📈]
#only("1")[
#voiceover("Intuitively, the dimension of V represents the total dimension of the domain.")
]
#only("2")[
#voiceover("The dimension of the kernel represents the dimension that is 'lost' or 'collapsed' by the mapping.")
]
#only("3")[
#voiceover("The dimension of the image represents the dimension that is 'preserved' or 'carried over' by the mapping.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[$"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$ 📜]
#v(20pt)
#only("2-")[Domain dimension = Lost dimension + Preserved dimension 🧮]
#only("1")[
#voiceover("In summary, the dimension formula states that the dimension of the domain V equals the dimension of the kernel of T plus the dimension of the image of T.")
]
#only("2")[
#voiceover("In other words, the total dimension of the domain can be split into the dimension lost in the kernel and the dimension preserved in the image.")
]
]