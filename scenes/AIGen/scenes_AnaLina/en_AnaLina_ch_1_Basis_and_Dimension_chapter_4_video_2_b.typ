#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dimension of a Vector Space]
#v(40pt)
The dimension of a vector space is the number of vectors in a \_\_\_\_\_.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) span]#only("2-")[#text(fill:green)[b) basis]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) basis]#only("3-")[#text(fill:red)[a) span]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) subspace]#only("4-")[#text(fill:red)[c) subspace]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) linear combination]#only("5-")[#text(fill:red)[d) linear combination]]
#v(40pt)

#only("1")[#voiceover("Great job! You've selected the correct answer.")]
#only("2")[#voiceover("The dimension of a vector space is indeed the number of vectors in a basis.")]
#only("3")[#voiceover("A span is the set of all linear combinations of a set of vectors, but it doesn't determine the dimension.")]
#only("4")[#voiceover("A subspace is a subset of a vector space that is closed under vector addition and scalar multiplication, but it also doesn't determine the dimension.")]
#only("5")[#voiceover("And a linear combination is a sum of vectors multiplied by scalars, which again doesn't directly relate to the dimension.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Basis and Dimension]
#v(40pt)
#only("1-")[- A #text(weight: "bold")[basis] is a linearly independent set of vectors that spans the entire space.]
#v(20pt)
#only("2-")[- The #text(weight: "bold")[dimension] is the number of vectors in any basis of the space.]
#v(20pt)
#only("3-")[Example: The standard basis for $RR^2$ is $\{mat(1;0), mat(0;1)\}$. So $"dim"(RR^2) = 2$.]

#only("1")[#voiceover("Remember, a basis is a linearly independent set of vectors that spans the entire vector space.")]
#only("2")[#voiceover("The dimension of a vector space is defined as the number of vectors in any basis of that space.")]
#only("3")[#voiceover("For example, the standard basis for R 2 is the set containing the vectors one, zero and zero, one. This basis has two vectors, so the dimension of R 2 is 2.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a 3D plot
fig = plt.figure(figsize=(8, 6))
ax = fig.add_subplot(111, projection='3d')

# Define the basis vectors
v1 = np.array([1, 0, 0])
v2 = np.array([0, 1, 0])
v3 = np.array([0, 0, 1])

# Plot the basis vectors
ax.quiver(0, 0, 0, v1[0], v1[1], v1[2], color='r', arrow_length_ratio=0.1)
ax.quiver(0, 0, 0, v2[0], v2[1], v2[2], color='g', arrow_length_ratio=0.1)
ax.quiver(0, 0, 0, v3[0], v3[1], v3[2], color='b', arrow_length_ratio=0.1)

# Set labels and title
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Standard Basis for R^3')

# Adjust the plot
ax.set_xlim(-1, 1)
ax.set_ylim(-1, 1) 
ax.set_zlim(-1, 1)
ax.view_init(elev=20, azim=45)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)

#only("1-")[Here's the standard basis for $RR^3$: $\{mat(1;0;0), mat(0;1;0), mat(0;0;1)\}$. So $"dim"(RR^3) = 3$. 📏]

#only("1")[#voiceover("Here's a visualization of the standard basis for R 3. The red, green, and blue arrows represent the vectors one, zero, zero; zero, one, zero; and zero, zero, one respectively. This basis has three vectors, so the dimension of R 3 is 3.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Basis: linearly independent set of vectors that spans the space 🎯]
#v(20pt)
#only("2-")[- Dimension: number of vectors in any basis 🔢]
#v(20pt)
#only("3-")[- $dim(RR^n) = n$ for the standard basis $\{mat(e)_1, mat(e)_2, ..., mat(e)_n\}$ 📐]

#only("1")[#voiceover("To recap, a basis is a linearly independent set of vectors that spans the entire vector space.")]
#only("2")[#voiceover("The dimension is the number of vectors in any basis of the space.")]
#only("3")[#voiceover("For the standard basis in R n, which consists of the vectors e 1 up to e n, the dimension is always n.")]
]