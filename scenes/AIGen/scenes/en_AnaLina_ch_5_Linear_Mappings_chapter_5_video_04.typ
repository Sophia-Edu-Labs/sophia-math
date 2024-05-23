#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dimension Formula Recap]

#v(40pt)

#only("1-")[- For a linear mapping $T: V arrow W$]
#v(20pt)
#only("2-")[- $dim(V) = dim(ker(T)) + dim(im(T))$]
#v(20pt)
#only("3-")[- Relates dimensions of kernel and image 🔗]

#only("1")[
#voiceover("Let's recap the dimension formula for linear mappings. For a linear mapping T from vector space V to vector space W...")
]

#only("2")[
#voiceover("The dimension formula states that the dimension of V equals the dimension of the kernel of T plus the dimension of the image of T.")
]

#only("3")[
#voiceover("This formula helps us understand the relationship between the dimensions of the kernel and image of the linear mapping.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation]

#v(40pt)

#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

# Create a 3D figure
fig = plt.figure(figsize=(6, 6))
ax = fig.add_subplot(111, projection='3d')

# Define the vector spaces
V = np.array([[0, 0, 0], [1, 0, 0], [0, 1, 0], [0, 0, 1]])
W = np.array([[0, 0, 0], [2, 0, 0], [0, 2, 0]])

# Plot the vector spaces
ax.scatter(V[:, 0], V[:, 1], V[:, 2], c='blue', label='V')
ax.scatter(W[:, 0], W[:, 1], W[:, 2], c='red', label='W')

# Plot the linear mapping
for v in V:
    w = np.array([2*v[0], 2*v[1], 0])
    ax.plot([v[0], w[0]], [v[1], w[1]], [v[2], w[2]], 'k-', linewidth=0.5)

# Add labels and legend
ax.set_xlabel('x')
ax.set_ylabel('y')
ax.set_zlabel('z')
ax.legend()

# Adjust the view
ax.view_init(elev=20, azim=45)

plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here's a visual representation. The blue points represent the vector space V, and the red points represent the vector space W. The black lines show the linear mapping T from V to W.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Importance of the Formula]

#v(40pt)

#only("1-")[- Provides insight into the mapping 🔍]
#v(20pt)
#only("2-")[- Helps calculate unknown dimensions 🧮]
#v(20pt)
#only("3-")[- Useful in various applications 🌍]

#only("1")[
#voiceover("The dimension formula provides valuable insights into the behavior of the linear mapping.")
]

#only("2")[
#voiceover("It allows us to calculate unknown dimensions if we know the others. For example, if we know the dimensions of V and the kernel, we can find the dimension of the image.")
]

#only("3")[
#voiceover("This formula finds use in various mathematical applications and helps us better understand the properties of linear mappings.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Dimension formula: $"dim"(V) = "dim"("ker"(T)) + "dim"("im"(T))$ 📜]
#v(20pt)
#only("2-")[- Relates kernel and image dimensions 🔗]
#v(20pt)
#only("3-")[- Provides insights and helps calculations 💡]

#only("1")[
#voiceover("To summarize, the dimension formula for a linear mapping T from V to W states that the dimension of V equals the dimension of the kernel of T plus the dimension of the image of T.")
]

#only("2")[
#voiceover("This formula establishes a relationship between the dimensions of the kernel and image of the linear mapping.")
]

#only("3")[
#voiceover("It provides valuable insights into the behavior of the mapping and helps in calculating unknown dimensions, making it a useful tool in various mathematical applications.")
]
]