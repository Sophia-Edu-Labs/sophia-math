#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Independence]
#v(40pt)
#only("1-")[- Property of a set of vectors 📐]
#v(20pt)
#only("2-")[- No vector can be written as a linear combination of the others 🚫]
#v(20pt)
#only("3-")[- Example: $mat(1;0)$ and $mat(0;1)$ are linearly independent ✅]
#v(20pt)
#only("4-")[- Example: $mat(1;2)$ and $mat(2;4)$ are linearly dependent ❌]
#only("1")[
#voiceover("Linear independence is a property of a set of vectors.")
]
#only("2")[
#voiceover("A set of vectors is linearly independent if no vector in the set can be written as a linear combination of the others.")
]
#only("3")[
#voiceover("For example, the vectors (1; 0) and (0; 1) are linearly independent. Neither vector can be written as a multiple of the other.")
]
#only("4")[
#voiceover("On the other hand, the vectors (1; 2) and (2; 4) are linearly dependent, because (2; 4) is 2 times (1; 2).")
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

# Define the vectors
v1 = np.array([1, 0])
v2 = np.array([0, 1])
v3 = np.array([1, 2])
v4 = np.array([2, 4])

# Create the plot
plt.figure(figsize=(6, 6))
plt.quiver(0, 0, v1[0], v1[1], angles='xy', scale_units='xy', scale=1, color='r', label='(1, 0)')
plt.quiver(0, 0, v2[0], v2[1], angles='xy', scale_units='xy', scale=1, color='b', label='(0, 1)')
plt.quiver(0, 0, v3[0], v3[1], angles='xy', scale_units='xy', scale=1, color='g', label='(1, 2)')
plt.quiver(0, 0, v4[0], v4[1], angles='xy', scale_units='xy', scale=1, color='m', label='(2, 4)')
plt.grid(True)
plt.axhline(0, color='black', lw=0.5)
plt.axvline(0, color='black', lw=0.5)
plt.legend()
plt.title('Linear Independence vs Dependence')
plt.xlabel('x')
plt.ylabel('y')
plt.tight_layout()
plt.show()
```,
width: 360pt))
]
]
#only("1")[
#voiceover("Here's a visualization. The red and blue vectors (1; 0) and (0; 1) are linearly independent. They point in different directions. The green and magenta vectors (1; 2) and (2; 4) are linearly dependent. They point in the same direction, and one is a multiple of the other.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Linear independence: no vector is a linear combination of the others 🎨]
#v(20pt)
#only("2-")[- Linearly independent vectors point in different directions 🧭]
#v(20pt)
#only("3-")[- Linearly dependent vectors are multiples of each other 🔍]
#only("1")[
#voiceover("In summary, a set of vectors is linearly independent if no vector in the set is a linear combination of the others.")
]
#only("2")[
#voiceover("Linearly independent vectors point in different directions.")
]
#only("3")[
#voiceover("Linearly dependent vectors are multiples of each other and point in the same direction.")
]
]