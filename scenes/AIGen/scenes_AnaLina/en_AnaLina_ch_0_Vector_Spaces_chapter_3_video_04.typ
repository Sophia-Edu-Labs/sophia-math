#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the criteria for a subset to be a subspace.")
]
#text(size: 30pt, weight: "bold")[Subspace Criteria]
// The title "Subspace Criteria" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("For a subset to be a subspace, it must satisfy three conditions.")
]
#only("2-")[
- Must contain the zero vector 0️⃣
- Must be closed under addition ➕
- Must be closed under scalar multiplication 🔢×
]
// The three criteria are shown as bullet points from slide 2 onward
]

#slide()[
#text(size: 30pt, weight: "bold")[Zero Vector]
#v(40pt)
#only("1")[
#voiceover("First, the subset must contain the zero vector.")
]
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Create a 3D plot
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')

# Plot the zero vector
zero_vector = np.array([[0, 0, 0]])
ax.scatter(zero_vector[0,0], zero_vector[0,1], zero_vector[0,2], c='red', marker='o', s=100)
ax.text(zero_vector[0,0], zero_vector[0,1], zero_vector[0,2], '0', size=15, zorder=1, color='k')

# Set labels and title
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('Zero Vector')

# Set limits
ax.set_xlim(-1, 1)
ax.set_ylim(-1, 1)
ax.set_zlim(-1, 1)

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
// The figure shows the zero vector in a 3D plot, marked as a red point labeled '0'. This figure is shown from slide 1 onward.
#only("2")[
#voiceover("This means that for any vector space $V$, and any subspace $W$ of $V$, the zero vector of $V$ must also be in $W$.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Closed Under Addition]
#v(40pt)
#only("1")[
#voiceover("Second, the subset must be closed under addition.")
]
#only("1-")[
$vec(u), vec(v) ∈ W ⇒ vec(u) + vec(v) ∈ W$
]
// The formula for closure under addition is shown from slide 1 onward
#only("2")[
#voiceover("This means that if $vec(u)$ and $vec(v)$ are any two vectors in the subset $W$, then their sum $vec(u) + vec(v)$ must also be in $W$.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Closed Under Scalar Multiplication]
#v(40pt)
#only("1")[
#voiceover("Third, the subset must be closed under scalar multiplication.")
]
#only("1-")[
$c ∈ ℝ, vec(v) ∈ W ⇒ c vec(v) ∈ W$
]
#only("2")[
#voiceover("This means that if $vec(v)$ is any vector in the subset $W$, and $c$ is any real number, then the scalar multiple $c vec(v)$ must also be in $W$.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1")[
#voiceover("So to summarize, for a subset to be a subspace, it must...")
]
#only("1-")[
- Contain the zero vector 0️⃣
- Be closed under vector addition ➕
  - $vec(u), vec(v) ∈ W ⇒ vec(u) + vec(v) ∈ W$
- Be closed under scalar multiplication 🔢×
  - $c ∈ ℝ, vec(v) ∈ W ⇒ c vec(v) ∈ W$
]
// The summary of the three criteria is shown from slide 1 onward
#only("2")[
#voiceover("If a subset satisfies all these conditions, then it is a subspace.")
]
]