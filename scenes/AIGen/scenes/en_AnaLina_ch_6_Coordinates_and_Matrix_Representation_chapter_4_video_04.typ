#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Recap: Changing the Basis 🔄]

#v(40pt)

#only("1-")[- Find a new set of basis vectors 🆕]
#v(20pt)
#only("2-")[- Express coordinates relative to the new basis 📐]

#only("1")[
#voiceover("To recap, changing the basis involves finding a new set of basis vectors.")
]

#only("2")[
#voiceover("Once we have the new basis vectors, we express the coordinates of vectors relative to this new basis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]

#v(40pt)

#only("1-")[Consider the vector $v = mat(2; 0)$ and the new basis $B = (mat(1; 1), mat(1; -1))$.]

#v(20pt)

#only("2-")[The coordinates of $v$ relative to $B$ are $(1, 1)$.]

#only("1")[
#voiceover("For example, consider the vector v equals the column vector 2, 0, and the new basis B equals the vectors 1, 1 and 1, negative 1.")
]

#only("2")[
#voiceover("The coordinates of v relative to the new basis B are 1, 1.")
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

v = np.array([2, 0])
b1 = np.array([1, 1])
b2 = np.array([1, -1])

fig, ax = plt.subplots()

ax.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='b', label='v')
ax.quiver(0, 0, b1[0], b1[1], angles='xy', scale_units='xy', scale=1, color='r', label='b1')
ax.quiver(0, 0, b2[0], b2[1], angles='xy', scale_units='xy', scale=1, color='g', label='b2')

ax.set_xlim(-2.5, 2.5)
ax.set_ylim(-2.5, 2.5)
ax.grid()
ax.set_aspect('equal')
ax.legend()

plt.show()
```,
width: 360pt),
)
]
]

#only("1")[
#voiceover("Here's a visualization. The blue vector is v, and the red and green vectors are the new basis vectors b1 and b2.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Changing basis = finding new basis vectors & expressing coordinates relative to them 🔍]
#v(20pt)
#only("2-")[- Key for understanding linear transformations and matrix representation 🗝️]

#only("1")[
#voiceover("In summary, changing the basis means finding a new set of basis vectors and expressing coordinates relative to these new vectors.")
]

#only("2")[
#voiceover("Understanding how to change the basis is key for understanding linear transformations and their matrix representations.")
]
]