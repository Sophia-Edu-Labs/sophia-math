#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the concept of the kernel of a linear mapping.")
]
#text(size: 30pt, weight: "bold")[Kernel of a Linear Mapping]
#v(40pt)

#only("2-")[
- Given a linear mapping $T: V -> W$ 🗺️
]

#only("2")[
#voiceover("Given a linear mapping T from vector space V to vector space W,")
]

#v(20pt)

#only("3-")[
- Kernel: set of all vectors $v$ in $V$ such that $T(v) = 0$ 🎯
]

#only("3")[
#voiceover("the kernel of T is the set of all vectors v in V such that T of v equals the zero vector.")
]

#v(20pt)

#only("4-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a 3D plot
fig = plt.figure(figsize=(6, 6))
ax = fig.add_subplot(111, projection='3d')

# Define the linear mapping T
def T(v):
    return np.array([v[0] + v[1], v[0] - v[1], 0])

# Create a grid of points in the domain
x = np.linspace(-2, 2, 20)
y = np.linspace(-2, 2, 20)
X, Y = np.meshgrid(x, y)

# Compute the image of the grid under T
Z1 = X + Y
Z2 = X - Y
Z3 = np.zeros_like(X)

# Plot the image of the grid
ax.plot_surface(Z1, Z2, Z3, alpha=0.3, color='blue')

# Plot the kernel (x-axis)
kernel_x = np.linspace(-2, 2, 100)
kernel_y = kernel_x
kernel_z = np.zeros_like(kernel_x)
ax.plot(kernel_x, kernel_y, kernel_z, color='red', linewidth=2, label='Kernel')

# Set labels and title
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
ax.set_title('Linear Mapping and Kernel')

# Add legend
ax.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]

#only("4")[
#voiceover("In this visualization, we see a linear mapping T that maps vectors from a 2D space V to a 3D space W. The blue surface represents the image of T, while the red line represents the kernel of T - the set of vectors in V that map to the zero vector in W.")
]

#v(20pt)

#only("5-")[
- Notation: $"ker"(T) = \{v ∈ V | T(v) = 0\}$ 📝
]

#only("5")[
#voiceover("The kernel is often denoted as 'ker' of T and written in set notation as the set of all vectors v in V such that T of v equals zero.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Points]
#v(40pt)

#only("1-")[
- Kernel is a subset of the domain $V$ 🏠
]

#only("1")[
#voiceover("Remember, the kernel is always a subset of the domain V.")
]

#v(20pt)

#only("2-")[
- Vectors in the kernel map to the zero vector in $W$ 🎯
]

#only("2")[
#voiceover("All vectors in the kernel map to the zero vector in the codomain W.")
]

#v(20pt)

#only("3-")[
- Kernel reveals information about the mapping 🔍
]

#only("3")[
#voiceover("Studying the kernel can reveal important information about the behavior of the linear mapping.")
]

#v(20pt)

#only("4-")[
- Dimension of the kernel relates to injectivity 📏
]

#only("4")[
#voiceover("In particular, the dimension of the kernel is related to the injectivity of the mapping. If the kernel only contains the zero vector, the mapping is injective.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)

#only("1-")[
- Kernel: $"ker"(T) = \{v ∈ V | T(v) = 0\}$ 🎯
]

#only("1")[
#voiceover("To summarize, the kernel of a linear mapping T from V to W is the set of all vectors v in V such that T of v equals zero.")
]

#v(20pt)

#only("2-")[
- Subset of domain that maps to zero vector 🏠
]

#only("2")[
#voiceover("It's a subset of the domain that maps to the zero vector in the codomain.")
]

#v(20pt)

#only("3-")[
- Provides insights into the mapping 🔍
]

#only("3")[
#voiceover("Studying the kernel provides valuable insights into the behavior and properties of the linear mapping.")
]

#v(20pt)

#only("4-")[
- Important for understanding injectivity 📏
]

#only("4")[
#voiceover("In particular, the kernel is closely related to the injectivity of the mapping, making it an important concept in linear algebra.")
]
]