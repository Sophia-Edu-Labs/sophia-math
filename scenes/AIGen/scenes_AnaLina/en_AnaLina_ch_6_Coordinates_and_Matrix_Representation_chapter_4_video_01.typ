#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Change of Basis]
#v(40pt)
#only("1-")[- Finding a new set of basis vectors 🆕🗺️]
#v(20pt)
#only("2-")[- Expressing coordinates relative to the new basis 📐]
#only("1")[
#voiceover("Changing the basis involves finding a new set of basis vectors for a vector space.")
]
#only("2")[
#voiceover("Once we have the new basis, we express the coordinates of vectors relative to this new basis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[- Standard basis in $RR^2$: $mat(1;0), mat(0;1)$]
#v(20pt)
#only("2-")[- New basis: $B = (mat(1;1), mat(1;-1))$]
#v(20pt)
#only("3-")[- Vector $v = mat(2;0)$]
#only("1")[
#voiceover("Let's look at an example. In R 2, the standard basis vectors are 1, 0 and 0, 1.")
]
#only("2")[
#voiceover("We want to change to a new basis B consisting of the vectors 1, 1 and 1, -1.")
]
#only("3")[
#voiceover("Consider the vector v equals 2, 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Coordinates in New Basis]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

v1 = np.array([1, 1])  
v2 = np.array([1, -1])
v = np.array([2, 0])  

origin = np.array([0, 0])

plt.figure(figsize=(6, 6))
plt.quiver(*origin, *v1, color='r', angles='xy', scale_units='xy', scale=1, label='Basis vector 1')
plt.quiver(*origin, *v2, color='g', angles='xy', scale_units='xy', scale=1, label='Basis vector 2')
plt.quiver(*origin, *v, color='b', angles='xy', scale_units='xy', scale=1, label='Vector v')

plt.xlim(-2.5, 2.5)
plt.ylim(-2.5, 2.5)
plt.grid()
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Change of Basis')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#v(20pt)
#only("2-")[- $v = a mat(1;1) + b mat(1;-1)$]
#v(20pt)
#only("3-")[- Solving: $a = 1, b = 1$]
#v(20pt)
#only("4-")[- Coordinates in basis $B$: $(1, 1)$]
#only("1")[
#voiceover("To find the coordinates of v in the new basis, we set up a linear combination.")
]
#only("2")[
#voiceover("We write v as a times the first basis vector plus b times the second basis vector.")
]
#only("3")[
#voiceover("Solving this, we find that a equals 1 and b equals 1.")
]
#only("4")[
#voiceover("Therefore, the coordinates of v in the new basis B are 1, 1.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Change of basis: find new basis vectors 🆕🗺️]
#v(20pt)
#only("2-")[- Express coordinates relative to the new basis 📐]
#v(20pt)
#only("3-")[- Involves solving a linear system 🧮]
#only("1")[
#voiceover("In summary, a change of basis involves finding a new set of basis vectors.")
]
#only("2")[
#voiceover("We then express the coordinates of vectors relative to this new basis.")
]
#only("3")[
#voiceover("This typically involves solving a linear system to determine the new coordinates.")
]
]