#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Changing Basis 🔄]
#v(40pt)
#only("1-")[- Change basis of a vector using a change of basis matrix]
#v(20pt)
#only("2-")[- New basis vectors form the columns of the matrix]
#v(20pt)
#only("3-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

# Define the standard basis vectors
e1 = np.array([1, 0])
e2 = np.array([0, 1])

# Define the new basis vectors
v1 = np.array([1, 1])
v2 = np.array([1, -1])

# Create the plot
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, e1[0], e1[1], angles='xy', scale_units='xy', scale=1, color='r', label='Standard Basis')
plt.quiver(0, 0, e2[0], e2[1], angles='xy', scale_units='xy', scale=1, color='r')
plt.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='b', label='New Basis')
plt.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Change of Basis')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("To change the basis of a vector, we can use a change of basis matrix.")
]
#only("2")[
#voiceover("The new basis vectors form the columns of this matrix.")
]
#only("3")[
#voiceover("For example, if we want to change from the standard basis vectors (1, 0) and (0, 1), shown in red, to a new basis of (1, 1) and (1, -1), shown in blue, our change of basis matrix would be ((1, 1), (1, -1)).")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Coordinate Transformation 📐]
#v(40pt)
#only("1-")[- Multiply the change of basis matrix with the vector in old coordinates]
#v(20pt)
#only("2-")[$ mat(v)_"new" = P mat(v)_"old" $]
#v(20pt)
#only("3-")[Example: $ mat(1, 1; 1, -1) mat(3; 4) = mat(7; -1) $]
#only("1")[
#voiceover("To get the coordinates of a vector in the new basis, we multiply the change of basis matrix with the vector expressed in the old coordinates.")
]
#only("2")[
#voiceover("Mathematically, this is written as v subscript new equals P times v subscript old, where P is the change of basis matrix.")
]
#only("3")[
#voiceover("For instance, if we have the vector (3, 4) in the standard basis and we want to change to the basis ((1, 1), (1, -1)), we multiply ((1, 1), (1, -1)) by (3, 4), which gives us (7, -1). So in the new basis, the vector (3, 4) is represented as (7, -1).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Change of basis matrix: new basis vectors as columns]
#v(20pt)
#only("2-")[- Multiply change of basis matrix with vector in old coordinates]
#v(20pt)
#only("3-")[- Result: vector expressed in new basis coordinates]
#only("1")[
#voiceover("In summary, to change the basis of a vector, we use a change of basis matrix.")
]
#only("2")[
#voiceover("This matrix has the new basis vectors as its columns. We multiply this matrix with the vector expressed in the old coordinates.")
]
#only("3")[
#voiceover("The result is the same vector, but now expressed in terms of the new basis coordinates.")
]
]