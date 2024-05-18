#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Coordinates with Respect to a Basis]
#v(40pt)
#only("1-")[- Coefficients of the linear combination of basis vectors 📐]
#v(20pt)
#only("2-")[- Example: $mat(3; 4) = a mat(1; 0) + b mat(0; 1)$ 🎯]
#v(20pt)
#only("3-")[- Coordinates: $a = 3$ and $b = 4$ 🌟]
#only("1")[
#voiceover("The coordinates of a vector with respect to a basis are the coefficients of the linear combination of the basis vectors that equals the vector.")
]
#only("2")[
#voiceover("For example, let's consider the vector (3; 4) and the standard basis vectors (1; 0) and (0; 1). We can write (3; 4) as a linear combination of these basis vectors.")
]
#only("3")[
#voiceover("The coefficients a and b in this linear combination are the coordinates of the vector (3; 4) with respect to the standard basis. In this case, a equals 3 and b equals 4.")
]
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

# Define the vectors
v = np.array([3, 4])
e1 = np.array([1, 0])
e2 = np.array([0, 1])

# Create the plot
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, e1[0], e1[1], angles='xy', scale_units='xy', scale=1, color='r', label='Basis vector (1; 0)')
plt.quiver(0, 0, e2[0], e2[1], angles='xy', scale_units='xy', scale=1, color='b', label='Basis vector (0; 1)')
plt.quiver(0, 0, v[0], v[1], angles='xy', scale_units='xy', scale=1, color='g', label='Vector (3; 4)')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.xlim(-1, 4)
plt.ylim(-1, 5)
plt.legend()
plt.title('Coordinates with Respect to a Basis')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Here's a visualization of the concept. The red and blue arrows represent the standard basis vectors (1; 0) and (0; 1). The green arrow is the vector (3; 4). We can see that (3; 4) is 3 times (1; 0) plus 4 times (0; 1). So the coordinates of (3; 4) with respect to the standard basis are (3, 4).")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Coordinates: coefficients of linear combination of basis vectors 🧮]
#v(20pt)
#only("2-")[- Example: $mat(3; 4) = 3 mat(1; 0) + 4 mat(0; 1)$ 🎯]
#v(20pt)
#only("3-")[- Coordinates of $mat(3; 4)$ w.r.t. standard basis: $(3, 4)$ 🌟]
#only("1")[
#voiceover("In summary, the coordinates of a vector with respect to a basis are the coefficients of the linear combination of the basis vectors that equals the vector.")
]
#only("2")[
#voiceover("In our example, the vector (3; 4) can be written as 3 times the first standard basis vector (1; 0) plus 4 times the second standard basis vector (0; 1).")
]
#only("3")[
#voiceover("Therefore, the coordinates of (3; 4) with respect to the standard basis are (3, 4).")
]
]