#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise 1]
#v(40pt)
The coordinates of a vector with respect to a basis are the \_\_\_\_\_ of the linear combination of the basis vectors that equals the vector.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) vectors]#only("2-")[#text(fill:red)[a) vectors]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) coefficients]#only("3-")[#text(fill:green)[b) coefficients]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) dimensions]#only("4-")[#text(fill:red)[c) dimensions]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) spans]#only("5-")[#text(fill:red)[d) spans]]
#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a) vectors is incorrect. The coordinates are not the vectors themselves, but rather the scalars that multiply the basis vectors.")]
#only("3")[#voiceover("Option b) coefficients is the correct answer. The coordinates are indeed the coefficients of the linear combination of the basis vectors that equals the given vector.")]
#only("4")[#voiceover("Option c) dimensions is incorrect. Dimensions refer to the size of the vector space, not the coordinates of a specific vector.")]
#only("5")[#voiceover("And option d) spans is also incorrect. Span refers to the set of all linear combinations of a set of vectors, not the coordinates of a specific vector.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[Let's understand this with an example 🧮]
#v(20pt)
#only("2-")[Consider the vector $v=mat(3;4)$ and the standard basis $mat(1;0), mat(0;1)$ for $RR^2$.]
#v(20pt)
#only("3-")[We can write $v$ as a linear combination of the basis vectors:]
#v(20pt)
#only("4-")[$v = 3 mat(1;0) + 4 mat(0;1)$]
#v(20pt)
#only("5-")[The coefficients in this linear combination, $3$ and $4$, are the coordinates of $v$ with respect to the standard basis 📐]

#only("1")[#voiceover("Let's understand this concept with an example.")]
#only("2")[#voiceover("Consider the vector v equals the vector 3, 4, and the standard basis vectors 1, 0 and 0, 1 for R squared.")]
#only("3")[#voiceover("We can write v as a linear combination of these basis vectors.")]
#only("4")[#voiceover("v equals 3 times the vector 1, 0 plus 4 times the vector 0, 1.")]
#only("5")[#voiceover("The coefficients in this linear combination, 3 and 4, are the coordinates of v with respect to the standard basis.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```python
import matplotlib.pyplot as plt
import numpy as np

v = np.array([3, 4])
e1 = np.array([1, 0])
e2 = np.array([0, 1])

plt.figure(figsize=(6, 6))
plt.quiver(0, 0, e1[0], e1[1], angles='xy', scale_units='xy', scale=1, color='r', label='e1')
plt.quiver(0, 0, e2[0], e2[1], angles='xy', scale_units='xy', scale=1, color='g', label='e2')
plt.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='b', label='v')

plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.xlim(-1, 5)
plt.ylim(-1, 5)
plt.legend()
plt.title('Vector Coordinates')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[#voiceover("Here's a visualization of the vector v and the standard basis vectors e1 and e2 in the xy-plane.")]
#only("2")[#voiceover("The red vector is e1, the green vector is e2, and the blue vector is v.")]
#only("3")[#voiceover("We can see that v is 3 units in the direction of e1 and 4 units in the direction of e2.")]
#only("4")[#voiceover("These scalar multiples, 3 and 4, are the coordinates of v with respect to the basis e1 and e2.")]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Coordinates are the coefficients in the linear combination of basis vectors 🎯]
#v(20pt)
#only("2-")[- They specify how much of each basis vector is needed to reach the given vector 📏]
#v(20pt)
#only("3-")[- Coordinates depend on the choice of basis 🗳️]
#v(20pt)
#only("4-")[- They provide a unique representation of a vector with respect to a basis 🪪]

#only("1")[#voiceover("In summary, the coordinates of a vector with respect to a basis are the coefficients in the linear combination of the basis vectors that equals the given vector.")]
#only("2")[#voiceover("They specify how much of each basis vector is needed to reach the given vector.")]
#only("3")[#voiceover("Coordinates depend on the choice of basis. A different basis will yield different coordinates for the same vector.")]
#only("4")[#voiceover("Coordinates provide a unique representation of a vector with respect to a given basis.")]
]