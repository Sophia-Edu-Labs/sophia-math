#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🌟]
#v(40pt)
#only("1-")[That's the correct answer! The coordinates of the vector $v = mat(3; 4)$ in $RR^2$ are indeed $(3, 4)$. Let's see why.]
#only("1")[
#voiceover("That's not quite right. Let's review the correct solution.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Vector Coordinates 📏]
#v(40pt)
#only("1-")[- A vector in $RR^2$ has two components]
#v(20pt)
#only("2-")[- These components are the coordinates]
#v(20pt)
#only("3-")[- For $v = mat(3; 4)$, the coordinates are $(3, 4)$]
#only("1")[
#voiceover("A vector in R 2 has two components.")
]
#only("2")[
#voiceover("These components are the coordinates of the vector.")
]
#only("3")[
#voiceover("For the vector v equals the matrix with 3 in the first row and 4 in the second row, the coordinates are simply 3 comma 4.")
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

v = np.array([3, 4])

fig, ax = plt.subplots(figsize=(6, 6))

ax.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='b', label='v = (3, 4)')
ax.text(v[0]+0.1, v[1]+0.1, '(3, 4)', fontsize=12)

ax.set_xlim(0, 5)
ax.set_ylim(0, 5)
ax.grid(True)
ax.set_xticks(np.arange(0, 6, 1))
ax.set_yticks(np.arange(0, 6, 1))
ax.legend()
ax.set_xlabel('x')
ax.set_ylabel('y')
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the vector v in the xy-plane. The blue arrow represents the vector, and the point at the tip of the arrow is labeled with the coordinates 3 comma 4.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Vectors in $RR^2$ have two components]
#v(20pt)
#only("2-")[- These components are the coordinates]
#v(20pt)
#only("3-")[- For $v = mat(3; 4)$, the coordinates are $(3, 4)$]
#only("1")[
#voiceover("To summarize, vectors in R 2 have two components.")
]
#only("2")[
#voiceover("These components are the coordinates of the vector.")
]
#only("3")[
#voiceover("For the specific vector v equals the matrix with 3 in the first row and 4 in the second row, the coordinates are 3 comma 4.")
]
]