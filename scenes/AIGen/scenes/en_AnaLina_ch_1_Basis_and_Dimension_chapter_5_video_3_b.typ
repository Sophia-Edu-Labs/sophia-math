#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Not quite, but don't worry! Let's go through the correct solution step-by-step together.")
]

#text(size: 30pt, weight: "bold")[Finding Coordinates]

#v(40pt)

#only("2-")[- Given vector: $mat(3; 4)$]
// The given vector is shown from slide 2 onward

#only("3-")[- Basis: $mat(1; 0), mat(0; 1)$]
// The basis is shown from slide 3 onward

#only("2")[
#voiceover("We are given the vector (3; 4) and want to find its coordinates with respect to the basis vectors (1; 0) and (0; 1).")
]

]

#slide()[

#only("1")[
#voiceover("To find the coordinates, we need to express the given vector as a linear combination of the basis vectors.")
]

#text(size: 30pt, weight: "bold")[Approach]

#v(40pt)

#only("1-")[- Express vector as linear combination of basis vectors]
// The approach is shown from slide 1 onward

#only("2-")[- Solve for coefficients]
// The approach is elaborated from slide 2 onward

#only("2")[
#voiceover("This means we need to find coefficients a and b such that a times (1; 0) plus b times (0; 1) equals (3; 4). Let's set up and solve this equation.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Solution]

#v(40pt)

#only("1-")[$ a mat(1; 0) + b mat(0; 1) = mat(3; 4) $]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Multiply matrices]]]

#v(10pt)

#only("3-")[$ mat(a; b) = mat(3; 4) $]

#v(10pt)

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Equate components]]]

#v(10pt)

#only("5-")[$ a = 3, b = 4 $]

#only("1")[#voiceover("We start by setting up the equation a times (1; 0) plus b times (0; 1) equals (3; 4).")]

#only("2")[#voiceover("Multiplying the matrices, we get (a; b) equals (3; 4).")]

#only("3")[#voiceover("From this matrix equation, we can see that")]

#only("4")[#voiceover("equating the components gives us a equals 3 and b equals 4.")]

#only("5")[#voiceover("Therefore, the coordinates of the vector (3; 4) with respect to the basis (1; 0) and (0; 1) are (3, 4).")]

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
v1 = np.array([1, 0])
v2 = np.array([0, 1])
v = np.array([3, 4])

# Create the plot
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='Basis vector (1, 0)')
plt.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='g', label='Basis vector (0, 1)')
plt.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='b', label='Vector (3, 4)')
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
width: 360pt))
]
]

#only("1")[
#voiceover("Here's a visualization of the vectors. The red and green arrows represent the basis vectors (1; 0) and (0; 1). The blue arrow represents the vector (3; 4). We can see that (3; 4) is 3 times (1; 0) plus 4 times (0; 1).")
]

]
]

#slide()[

#text(size: 30pt, weight: "bold")[Summary 📝]

#v(40pt)

#only("1-")[- Vector: $mat(3; 4)$ 🔢]

#v(20pt)

#only("2-")[- Basis: $mat(1; 0), mat(0; 1)$ 🏗️]

#v(20pt) 

#only("3-")[- Coordinates: $(3, 4)$ 🎯]

#only("1")[
#voiceover("To summarize, we were given the vector (3; 4).")
]

#only("2")[
#voiceover("We wanted to find its coordinates with respect to the standard basis (1; 0) and (0; 1).")
]

#only("3")[
#voiceover("By expressing the vector as a linear combination of the basis vectors, we found that the coordinates are (3, 4).")
]

]