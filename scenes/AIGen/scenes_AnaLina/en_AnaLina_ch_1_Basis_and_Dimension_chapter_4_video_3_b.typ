#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Dimension of R³]
#v(40pt)
#only("1-")[Great job! 🎉 The dimension of R³ is indeed 3. 🌟]
#v(20pt)
#only("2-")[Let's see why:]
#v(20pt)
#only("3-")[- R³ is the set of all ordered triples $(x, y, z)$, where $x$, $y$, and $z$ are real numbers.]
#v(10pt)
#only("4-")[- A basis for R³ is a set of linearly independent vectors that span R³.]

#only("1")[
#voiceover("Not quite. Let's review the correct solution.")
]
#only("2")[
#voiceover("Let's see why.")
]
#only("3")[
#voiceover("R³ is the set of all ordered triples (x, y, z), where x, y, and z are real numbers.")
]
#only("4")[
#voiceover("A basis for R³ is a set of linearly independent vectors that span R³.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Dimension of R³]
#v(40pt)
#only("1-")[- One possible basis is: $mat(1;0;0)$, $mat(0;1;0)$, $mat(0;0;1)$.]
#v(10pt)
#only("2-")[- The number of vectors in a basis is the dimension of the space. 🧮]
#v(10pt)
#only("3-")[Therefore, the dimension of R³ is 3. 📏]

#only("1")[
#voiceover("One possible basis is: (1; 0; 0), (0; 1; 0), and (0; 0; 1).")
]
#only("2")[
#voiceover("The number of vectors in a basis is the dimension of the space.")
]
#only("3")[
#voiceover("Therefore, the dimension of R³ is 3.")
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
from mpl_toolkits.mplot3d import Axes3D

fig = plt.figure(figsize=(6, 6))
ax = fig.add_subplot(111, projection='3d')

# Basis vectors
x = [1, 0, 0]
y = [0, 1, 0] 
z = [0, 0, 1]

# Plot basis vectors
ax.quiver(0, 0, 0, x[0], x[1], x[2], color='r', arrow_length_ratio=0.1)
ax.quiver(0, 0, 0, y[0], y[1], y[2], color='g', arrow_length_ratio=0.1)
ax.quiver(0, 0, 0, z[0], z[1], z[2], color='b', arrow_length_ratio=0.1)

# Labels
ax.text(1.1, 0, 0, r'$\vec{i}$', color='red')
ax.text(0, 1.1, 0, r'$\vec{j}$', color='green')
ax.text(0, 0, 1.1, r'$\vec{k}$', color='blue')

# Set limits and remove ticks
ax.set_xlim([-1.5, 1.5])
ax.set_ylim([-1.5, 1.5]) 
ax.set_zlim([-1.5, 1.5])
ax.set_xticks([])
ax.set_yticks([]) 
ax.set_zticks([])

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the standard basis vectors for R³: i, j, and k. These three vectors form a basis for R³, showing that the dimension of R³ is 3.")
]
]
]