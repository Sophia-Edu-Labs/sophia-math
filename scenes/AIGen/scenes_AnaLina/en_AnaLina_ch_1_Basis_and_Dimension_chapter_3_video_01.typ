#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Finding a Basis 🔍]
#v(40pt)
#only("1-")[- Start with a set of vectors that span the space 🌌]
#v(20pt)
#only("2-")[- Remove any linearly dependent vectors 🗑️]
#v(20pt)
#only("3-")[- Remaining vectors form a basis 💪]
#only("1")[
#voiceover("To find a basis for a vector space, we can start with a set of vectors that span the entire space.")
]
#only("2")[
#voiceover("Then, we remove any linearly dependent vectors from this set.")
]
#only("3")[
#voiceover("The remaining vectors will form a basis for the vector space.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 📝]
#v(40pt)
#only("1-")[Consider the vectors: $mat(1;2;3), mat(2;4;6), mat(3;6;9)$]
#v(20pt)
#only("2-")[These vectors span $RR^3$ but are linearly dependent 🔗]
#v(20pt)
#only("3-")[Remove $mat(3;6;9)$ as it's a multiple of $mat(1;2;3)$]
#v(20pt)
#only("4-")[A basis is: $mat(1;2;3)$ 🎉]
#only("1")[
#voiceover("Let's consider an example. Suppose we have the vectors (1; 2; 3), (2; 4; 6), and (3; 6; 9).")
]
#only("2")[
#voiceover("These vectors span R 3 but they are linearly dependent.")
]
#only("3")[
#voiceover("We can remove the vector (3; 6; 9) because it's a multiple of (1; 2; 3).")
]
#only("4")[
#voiceover("After removing the linearly dependent vector, we're left with (1; 2; 3), which forms a basis for R 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization 📊]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the vectors
v1 = np.array([1, 2, 3])
v2 = np.array([2, 4, 6])
v3 = np.array([3, 6, 9])

# Create a 3D plot
fig = plt.figure(figsize=(6, 6))
ax = fig.add_subplot(111, projection='3d')

# Plot the vectors
ax.quiver(0, 0, 0, v1[0], v1[1], v1[2], color='r', arrow_length_ratio=0.1, label='(1, 2, 3)')
ax.quiver(0, 0, 0, v2[0], v2[1], v2[2], color='b', arrow_length_ratio=0.1, label='(2, 4, 6)')
ax.quiver(0, 0, 0, v3[0], v3[1], v3[2], color='g', arrow_length_ratio=0.1, label='(3, 6, 9)')

# Set labels and title
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
ax.set_title('Vector Visualization')

# Add legend
ax.legend()

plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Here's a visualization of the vectors in our example. The red, blue, and green arrows represent the vectors (1; 2; 3), (2; 4; 6), and (3; 6; 9) respectively.")
]
#only("2")[
#voiceover("As you can see, the green vector (3; 6; 9) lies on the same line as the red vector (1; 2; 3), indicating that it's a multiple of (1; 2; 3) and thus linearly dependent.")
]
#only("3")[
#voiceover("By removing the green vector, we're left with the red vector (1; 2; 3), which forms a basis for R^3.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 🎯]
#v(40pt)
#only("1-")[- Start with spanning set 🌌]
#v(20pt)
#only("2-")[- Remove linearly dependent vectors 🗑️]
#v(20pt)
#only("3-")[- Remaining vectors form basis 💪]
#only("1")[
#voiceover("To summarize, when finding a basis for a vector space, we start with a set of vectors that span the space.")
]
#only("2")[
#voiceover("We then remove any linearly dependent vectors from this set.")
]
#only("3")[
#voiceover("The remaining vectors will form a basis for the vector space. Remember, a basis is a linearly independent set of vectors that spans the entire space.")
]
]