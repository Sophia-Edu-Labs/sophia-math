#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Subspace Criteria]
#v(40pt)
Which of the following is a necessary condition for a subset to be a subspace?
#v(40pt)
#only("-1")[a) It must be finite]#only("2-")[#text(fill:red)[a) It must be finite]]
#v(10pt)
#only("-1")[b) It must contain the zero vector]#only("2-")[#text(fill:green)[b) It must contain the zero vector]]
#v(10pt)
#only("-1")[c) It must be bounded]#only("3-")[#text(fill:red)[c) It must be bounded]]
#v(10pt)
#only("-1")[d) It must be open]#only("4-")[#text(fill:red)[d) It must be open]]

#only("1")[#voiceover("Great job! You selected the correct answer.")]
#only("2")[#voiceover("Option b) is indeed a necessary condition for a subset to be a subspace. A subspace must always contain the zero vector.")]
#only("3")[#voiceover("Option c) is incorrect. A subspace does not need to be bounded. For example, the entire vector space is an unbounded subspace of itself.")]
#only("4")[#voiceover("Option d) is also incorrect. A subspace does not need to be open. In fact, all subspaces are closed sets.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[For a subset $S$ to be a subspace of a vector space $V$, it must satisfy three conditions:]
#v(20pt)
#only("2-")[1. $S$ must contain the zero vector: $vec(0) ∈ S$. 🎯]
#v(10pt)
#only("3-")[2. $S$ must be closed under vector addition: If $vec(u), vec(v) ∈ S$, then $vec(u) + vec(v) ∈ S$. ➕]
#v(10pt)
#only("4-")[3. $S$ must be closed under scalar multiplication: If $vec(u) ∈ S$ and $c ∈ ℝ$, then $c vec(u) ∈ S$. ✖]
#v(20pt)
#only("5-")[Other properties, like being finite, bounded, or open, are not necessary for a subset to be a subspace. 🚫]

#only("1")[#voiceover("Let's go through the step-by-step solution to understand why option b) is correct.")]
#only("2")[#voiceover("First, for a subset S to be a subspace of a vector space V, it must contain the zero vector. This is a fundamental requirement.")]
#only("3")[#voiceover("Second, the subset S must be closed under vector addition. This means that if you add any two vectors in S, the result must also be in S.")]
#only("4")[#voiceover("Third, the subset S must be closed under scalar multiplication. If you multiply any vector in S by a real number, the result must still be in S.")]
#only("5")[#voiceover("Properties like being finite, bounded, or open are not part of the necessary and sufficient conditions for a subset to be a subspace.")]
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
fig = plt.figure(figsize=(8, 8))
ax = fig.add_subplot(111, projection='3d')

# Create a plane (subspace)
xx, yy = np.meshgrid(np.linspace(-5, 5, 10), np.linspace(-5, 5, 10))
z = 2*xx + 3*yy
ax.plot_surface(xx, yy, z, alpha=0.5, color='blue')

# Plot the zero vector
ax.scatter([0], [0], [0], color='red', s=100)

# Plot some vectors in the subspace
vectors = [[1, 1, 5], [-2, 0, -4], [3, -1, 5]]
for vector in vectors:
    ax.quiver(0, 0, 0, vector[0], vector[1], vector[2], color='green', arrow_length_ratio=0.1)

# Improve the limits and labels
ax.set_xlim(-5, 5)
ax.set_ylim(-5, 5)
ax.set_zlim(-5, 5)
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')

plt.title("Subspace Visualization")
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(40pt)
#only("1-")[Here's a visualization of a subspace (the blue plane) in $ℝ^3$:]
#v(20pt)
#only("2-")[- The red dot represents the zero vector. 🔴]
#v(10pt)
#only("3-")[- The green arrows are vectors within the subspace. 🟢]
#v(10pt)
#only("4-")[- Any linear combination of these vectors will also lie in the subspace. ➗]

#only("1")[#voiceover("Let's visualize these concepts to get a better understanding.")]
#only("2")[#voiceover("In this 3D plot, the blue plane represents a subspace in R-3. The red dot at the origin represents the zero vector, which is always included in a subspace.")]
#only("3")[#voiceover("The green arrows represent some arbitrary vectors that lie within this subspace.")]
#only("4")[#voiceover("Any linear combination of these vectors, that is, any sum of scalar multiples of these vectors, will also lie in the same subspace. This illustrates the closure properties of a subspace.")]
]