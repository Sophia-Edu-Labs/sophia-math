#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Mapping]
#v(40pt)
#only("1-")[- Function that preserves addition and scalar multiplication 📈]
#v(20pt)
#only("2-")[- Example: $T(mat(x; y)) = mat(2x; 3y)$ 🔄]
#only("1")[
#voiceover("A linear mapping is a function that preserves addition and scalar multiplication.")
]
#only("2")[
#voiceover("For example, consider the mapping T that takes a vector (x; y) and maps it to (2x; 3y).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrix Representation]
#v(40pt)
#only("1-")[- Linear mapping can be represented by a matrix 📜]
#v(20pt)
#only("2-")[- Example: $T(mat(x; y)) = mat(2, 0; 0, 3) mat(x; y)$]
#only("1")[
#voiceover("This linear mapping can be represented by a matrix.")
]
#only("2")[
#voiceover("In our example, the matrix representation of T is the 2 by 2 matrix with elements 2, 0, 0, and 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Coordinate Transformation]
#v(40pt)
#only("1-")[- Matrix transforms coordinates from one basis to another 🔄]
#v(20pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

v1 = np.array([1, 0])  
v2 = np.array([0, 1])
v1_new = np.array([2, 0])  
v2_new = np.array([0, 3])

origin = np.array([[0, 0, 0], [0, 0, 0]]) 
plt.figure(figsize=(6, 6))
plt.quiver(*origin, v1[0], v1[1], color=['r'], scale=1, units='xy', label='Old basis')
plt.quiver(*origin, v2[0], v2[1], color=['r'], scale=1, units='xy')
plt.quiver(*origin, v1_new[0], v1_new[1], color=['b'], scale=1, units='xy', label='New basis')
plt.quiver(*origin, v2_new[0], v2_new[1], color=['b'], scale=1, units='xy')

plt.grid()
plt.xlim(-1, 4)
plt.ylim(-1, 4)
plt.legend()
plt.title('Coordinate Transformation')
plt.xlabel('x')
plt.ylabel('y')
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("The matrix transforms coordinates from one basis to another.")
]
#only("2")[
#voiceover("In the plot, the red arrows represent the standard basis vectors (1; 0) and (0; 1). The blue arrows represent the new basis vectors (2; 0) and (0; 3) after applying the transformation matrix.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Linear mapping: function that preserves addition and scalar multiplication 📈]
#v(20pt)
#only("2-")[- Matrix representation: linear mapping represented by a matrix 📜]
#v(20pt)
#only("3-")[- Coordinate transformation: matrix transforms coordinates from one basis to another 🔄]
#only("1")[
#voiceover("To summarize, a linear mapping is a function that preserves addition and scalar multiplication.")
]
#only("2")[
#voiceover("This linear mapping can be represented by a matrix.")
]
#only("3")[
#voiceover("The matrix transforms coordinates from one basis to another, allowing us to view the linear mapping in a new coordinate system.")
]
]