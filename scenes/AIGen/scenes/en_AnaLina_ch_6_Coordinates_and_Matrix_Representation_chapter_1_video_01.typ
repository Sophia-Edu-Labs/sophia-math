#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Basis and Coordinates]
#v(40pt)
#only("1-")[- Basis: Set of vectors that span a vector space 🎛️]
#v(20pt)
#only("2-")[- Example: In $RR^2$, $B = (mat(1;0), mat(0;1))$ 📐]
#v(40pt)
#only("3-")[- Coordinates: Expressed relative to the basis 📍]
#v(20pt)
#only("4-")[- Example: $v = mat(2;3) = 2 mat(1;0) + 3 mat(0;1)$ 🧮]
#only("1")[
#voiceover("A basis is a set of vectors that span a vector space. In other words, every vector in the space can be expressed as a linear combination of the basis vectors.")
]
#only("2")[
#voiceover("For example, in the two-dimensional real space R 2, the standard basis is the set containing the vectors 1, 0 and 0, 1. These vectors point along the x and y axes respectively.")
]
#only("3")[
#voiceover("Coordinates of a vector are expressed relative to the basis. They tell us how much of each basis vector we need to add together to get the original vector.")
]
#only("4")[
#voiceover("For instance, the vector 2, 3 can be written as 2 times the first basis vector 1, 0 plus 3 times the second basis vector 0, 1. So the coordinates of this vector relative to the standard basis are 2 and 3.")
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
import numpy as np

v1 = [1, 0]
v2 = [0, 1]
v = [2, 3]

origin = [0], [0]

plt.figure(figsize=(6,6))
plt.quiver(*origin, v1[0], v1[1], color='r', angles='xy', scale_units='xy', scale=1, label='Basis vector (1,0)')
plt.quiver(*origin, v2[0], v2[1], color='g', angles='xy', scale_units='xy', scale=1, label='Basis vector (0,1)')
plt.quiver(*origin, v[0], v[1], color='b', angles='xy', scale_units='xy', scale=1, label='Vector (2,3)')

plt.xlim(-1, 4)
plt.ylim(-1, 4)
plt.grid()
plt.xlabel('x')
plt.ylabel('y')
plt.title('Basis Vectors and Coordinates')
plt.legend()

plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization. The red and green arrows represent the standard basis vectors 1, 0 and 0, 1. The blue arrow is the vector 2, 3. As you can see, the blue vector is 2 times the red vector plus 3 times the green vector.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Basis spans the vector space 🎛️]
#v(20pt)
#only("2-")[- Coordinates are relative to the basis 📍]
#v(20pt)
#only("3-")[- Every vector is a linear combination of basis vectors 🧮]
#only("1")[
#voiceover("In summary, a basis spans the entire vector space.")
]
#only("2")[
#voiceover("Coordinates are always expressed relative to this basis.")
]
#only("3")[
#voiceover("And every vector in the space can be uniquely expressed as a linear combination of the basis vectors.")
]
]