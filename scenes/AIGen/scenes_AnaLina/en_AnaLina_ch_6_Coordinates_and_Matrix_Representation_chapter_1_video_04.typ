#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Basis and Coordinates Recap 🎓]
#v(40pt)
#only("1-")[- Basis: set of vectors that span a vector space 🌌]
#v(20pt)
#only("2-")[- Coordinates: expressed relative to the basis 📍]
#only("1")[
#voiceover("Let's recap what we learned about basis and coordinates. A basis is a set of vectors that span a vector space.")
]
#only("2")[
#voiceover("Coordinates are expressed relative to this basis.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Basis Example]
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

# Create a plot
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='(1, 0)')
plt.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b', label='(0, 1)')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.xlim(-2, 2)
plt.ylim(-2, 2)
plt.legend()
plt.title('Standard Basis in $RR^2$')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("For example, the standard basis in R 2 is the set of vectors (1, 0) and (0, 1). These vectors span the entire 2D space.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Coordinates Example]
#v(40pt)
#only("1-")[- Consider the vector $v = mat(2; 3)$ in $RR^2$]
#v(20pt)
#only("2-")[- Relative to the standard basis $B = (mat(1; 0), mat(0; 1))$:]
#v(20pt)
#only("3-")[$ v = 2 mat(1; 0) + 3 mat(0; 1)$]
#only("1")[
#voiceover("Now, let's consider the vector (2, 3) in R 2.")
]
#only("2")[
#voiceover("Relative to the standard basis (1, 0) and (0, 1), the coordinates of this vector are:")
]
#only("3")[
#voiceover("2 times (1, 0) plus 3 times (0, 1). So the coordinates are simply (2, 3).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Basis: set of spanning vectors 🌌]
#v(20pt)
#only("2-")[- Coordinates: relative to basis 📍]
#v(20pt)
#only("3-")[- Key concepts for linear algebra 🔑]
#only("1")[
#voiceover("In summary, a basis is a set of vectors that span a vector space.")
]
#only("2")[
#voiceover("Coordinates are expressed relative to this basis.")
]
#only("3")[
#voiceover("These are key concepts in linear algebra that allow us to work with vectors and vector spaces effectively.")
]
]