#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Transposition]
#v(40pt)
#only("1-")[- Swap rows and columns 🔄]
#v(20pt)
#only("2-")[- Example: $A = mat(1, 2; 3, 4)$]
#v(20pt)
#only("3-")[- Transpose: $A^T = mat(1, 3; 2, 4)$]
#only("1")[
#voiceover("Matrix transposition is an operation where we swap the rows and columns of a matrix.")
]
#only("2")[
#voiceover("Let's consider an example. Suppose we have a matrix A equals the matrix with elements 1, 2 in the first row and 3, 4 in the second row.")
]
#only("3")[
#voiceover("The transpose of A, denoted as A superscript T, is obtained by interchanging the rows and columns. So, the first row becomes the first column, and the second row becomes the second column. The resulting transpose is the matrix with elements 1, 3 in the first row and 2, 4 in the second row.")
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

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

A = np.array([[1, 2], [3, 4]])
A_T = A.T

ax1.matshow(A, cmap='viridis')
for i in range(2):
    for j in range(2):
        c = A[j,i]
        ax1.text(i, j, str(c), va='center', ha='center', color='white', fontsize=20)
ax1.set_title('Original Matrix A', fontsize=16)
ax1.set_xticks([])
ax1.set_yticks([])

ax2.matshow(A_T, cmap='viridis')
for i in range(2):
    for j in range(2):
        c = A_T[j,i]
        ax2.text(i, j, str(c), va='center', ha='center', color='white', fontsize=20)
ax2.set_title('Transposed Matrix A^T', fontsize=16)
ax2.set_xticks([])
ax2.set_yticks([])

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visual representation of matrix transposition. On the left, we have the original matrix A, and on the right, we have its transpose A superscript T. As you can see, the rows of A become the columns of A superscript T, and the columns of A become the rows of A superscript T.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Matrix transposition: swap rows and columns 🔄]
#v(20pt)
#only("2-")[- Notation: $A^T$ for the transpose of matrix $A$]
#v(20pt)
#only("3-")[- Visual representation: rows ↔ columns]
#only("1")[
#voiceover("To summarize, matrix transposition is the operation of swapping the rows and columns of a matrix.")
]
#only("2")[
#voiceover("The transpose of a matrix A is denoted as A superscript T.")
]
#only("3")[
#voiceover("Visually, matrix transposition can be thought of as flipping the matrix along its main diagonal, where the rows become the columns and the columns become the rows.")
]
]