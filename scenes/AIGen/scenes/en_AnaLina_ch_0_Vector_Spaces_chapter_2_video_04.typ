#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Subspaces 🛰️]
#v(40pt)
#only("1-")[- Subset of a vector space]
#only("1")[
#voiceover("A subspace is a subset of a vector space...")
]
#v(20pt)
#only("2-")[- Itself a vector space under the same operations]
#only("2")[
#voiceover("...that is itself a vector space under the same operations as the parent space.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Subspace Criteria ✅]
#v(40pt)
#only("1-")[- Closed under vector addition]
#only("1")[
#voiceover("For a subset to be a subspace, it must be closed under vector addition...")
]
#v(20pt)
#only("2-")[- Closed under scalar multiplication]
#only("2")[
#voiceover("...and closed under scalar multiplication.")
]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a 3D plot
fig = plt.figure(figsize=(6, 6))
ax = fig.add_subplot(111, projection='3d')

# Define the plane
x = np.linspace(-2, 2, 10)
y = np.linspace(-2, 2, 10)
X, Y = np.meshgrid(x, y)
Z = 0*X + 0*Y

# Plot the plane
ax.plot_surface(X, Y, Z, alpha=0.5, color='blue')

# Plot some vectors in the plane
v1 = np.array([1, 1, 0])
v2 = np.array([-1, 1, 0])
v3 = v1 + v2
ax.quiver(0, 0, 0, v1[0], v1[1], v1[2], color='red', arrow_length_ratio=0.1)
ax.quiver(0, 0, 0, v2[0], v2[1], v2[2], color='green', arrow_length_ratio=0.1)
ax.quiver(0, 0, 0, v3[0], v3[1], v3[2], color='purple', arrow_length_ratio=0.1)

# Set labels and title
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Subspace Example')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("3")[
#voiceover("Here's an example. The plane is a subspace of R3. If we take any two vectors in the plane, like the red and green ones, their sum, the purple vector, is also in the plane. Similarly, any scalar multiple of a vector in the plane stays in the plane.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Subspace: subset of a vector space, itself a vector space]
#only("1")[
#voiceover("To summarize, a subspace is a subset of a vector space that is itself a vector space under the same operations.")
]
#v(20pt)
#only("2-")[- Must be closed under vector addition and scalar multiplication]
#only("2")[
#voiceover("It must be closed under vector addition and scalar multiplication.")
]
#v(20pt)
#only("3-")[- Examples: planes through the origin, zero vector]
#only("3")[
#voiceover("Common examples include planes through the origin and the zero vector.")
]
]