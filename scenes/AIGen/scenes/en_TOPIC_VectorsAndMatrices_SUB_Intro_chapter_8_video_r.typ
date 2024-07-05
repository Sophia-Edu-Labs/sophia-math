#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication Review 🔢]
#v(40pt)
#only("1-")[- Essential operation in linear algebra 📊]
#only("2-")[- Used in various applications 🖥️]
#only("3-")[- Let's review the key concepts 🔍]

#only("1")[
#voiceover("Let's review matrix multiplication, a fundamental operation in linear algebra.")
]
#only("2")[
#voiceover("This operation is crucial in various applications, from computer graphics to data analysis.")
]
#only("3")[
#voiceover("We'll revisit the key concepts to ensure a solid understanding.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication Conditions 🧮]
#v(40pt)
#only("1-")[- Compatibility requirement ✅]
#v(20pt)
#only("2-")[- Example: $A_(m times n) times B_(n times p)$]
#v(20pt)
#only("3-")[- Result: $C_(m times p)$]

#only("1")[
#voiceover("First, let's review the conditions for matrix multiplication. The key requirement is compatibility between the matrices.")
]
#only("2")[
#voiceover("For two matrices A and B to be multiplied, the number of columns in A must equal the number of rows in B. For example, if A is an m by n matrix, and B is an n by p matrix, they can be multiplied.")
]
#only("3")[
#voiceover("The resulting matrix C will have dimensions m by p. This means it will have the same number of rows as A and the same number of columns as B.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Visual Representation 👁️]
#v(20pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(
```

import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(10, 6))

# Define matrices
A = np.array([[1, 2], [3, 4], [5, 6]])
B = np.array([[7, 8, 9], [10, 11, 12]])
C = np.dot(A, B)

# Plot matrices
ax.imshow(A, cmap='Blues', aspect='auto', extent=[0, 2, 3, 0])
ax.text(1, 1.5, 'A\n(3x2)', ha='center', va='center', fontsize=12, color='white')

ax.imshow(B, cmap='Greens', aspect='auto', extent=[3, 6, 2, 0])
ax.text(4.5, 1, 'B\n(2x3)', ha='center', va='center', fontsize=12, color='white')

ax.imshow(C, cmap='Reds', aspect='auto', extent=[7, 10, 3, 0])
ax.text(8.5, 1.5, 'C\n(3x3)', ha='center', va='center', fontsize=12, color='white')

# Add arrows
ax.annotate('', xy=(2.5, 1), xytext=(2, 1), arrowprops=dict(arrowstyle='->'))
ax.annotate('', xy=(6.5, 1.5), xytext=(6, 1.5), arrowprops=dict(arrowstyle='->'))

ax.set_xlim(-0.5, 10.5)
ax.set_ylim(3.5, -0.5)
ax.axis('off')

plt.title('Matrix Multiplication: A(3x2) * B(2x3) = C(3x3)', fontsize=14)
plt.tight_layout()
plt.show()

```,
width: 360pt),
caption: [],
)
]
]
]

#only("1")[
#voiceover("Here's a visual representation of matrix multiplication. We have matrix A, which is 3 by 2, multiplied by matrix B, which is 2 by 3. The resulting matrix C is 3 by 3. Notice how the number of columns in A matches the number of rows in B, allowing the multiplication to occur.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Key Points Summary 📝]
#v(40pt)
#only("1-")[- Compatibility: columns of A = rows of B]
#only("2-")[- Dimensions: $A_(m times n) times B_(n times p) = C_(m times p)$]
#only("3-")[- Non-commutative: $A times B != B times A$ (generally)]
#only("4-")[- Crucial in various applications 🌐]

#only("1")[
#voiceover("Let's summarize the key points. First, for matrix multiplication to be defined, the number of columns in the first matrix must equal the number of rows in the second matrix.")
]
#only("2")[
#voiceover("The dimensions of the resulting matrix are determined by the remaining dimensions: the number of rows from the first matrix and the number of columns from the second matrix.")
]
#only("3")[
#voiceover("It's important to remember that matrix multiplication is generally non-commutative. This means that A times B is not usually equal to B times A.")
]
#only("4")[
#voiceover("Understanding these concepts is crucial as matrix multiplication is widely used in various fields, from physics to computer science.")
]
]