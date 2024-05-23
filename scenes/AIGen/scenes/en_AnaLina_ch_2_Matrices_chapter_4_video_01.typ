#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication]
#v(40pt)
#only("1-")[- Multiply rows of first matrix by columns of second matrix 🔢]
#v(20pt)
#only("2-")[- Possible only if: #text(fill: aqua)[columns(mat(A)) = rows(mat(B))]]
#v(20pt)
#only("3-")[- Resulting matrix: #text(fill: aqua)[rows(mat(A)) × columns(mat(B))]]
#only("1")[
#voiceover("Matrix multiplication involves multiplying the rows of the first matrix by the columns of the second matrix.")
]
#only("2")[
#voiceover("This operation is only possible if the number of columns in the first matrix equals the number of rows in the second matrix.")
]
#only("3")[
#voiceover("The resulting matrix will have the same number of rows as the first matrix and the same number of columns as the second matrix.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider matrices $mat(A) = mat(1, 2; 3, 4)$ and $mat(B) = mat(5, 6; 7, 8)$]
#v(20pt)
#only("2-")[Check dimensions: $mat(A)$ is $2 × 2$, $mat(B)$ is $2 × 2$ ✅]
#v(20pt)
#only("3-")[Multiply rows of $mat(A)$ by columns of $mat(B)$:]
#v(10pt)
#only("4-")[$(1 dot 5) + (2 dot 7) = 19$ and $(1 dot 6) + (2 dot 8) = 22$]
#only("5-")[$(3 dot 5) + (4 dot 7) = 43$ and $(3 dot 6) + (4 dot 8) = 50$]
#v(20pt)
#only("6-")[Result: $mat(A) mat(B) = mat(19, 22; 43, 50)$]
#only("1")[
#voiceover("Let's consider an example. We have two matrices A and B, both 2 by 2.")
]
#only("2")[
#voiceover("We first check the dimensions. A has 2 columns and B has 2 rows, so multiplication is possible.")
]
#only("3")[
#voiceover("Now, we multiply the rows of A by the columns of B.")
]
#only("4")[
#voiceover("The first row of A multiplied by the first column of B gives 19, and by the second column gives 22.")
]
#only("5")[
#voiceover("Similarly, the second row of A multiplied by the columns of B gives 43 and 50.")
]
#only("6")[
#voiceover("The resulting matrix AB is a 2 by 2 matrix with elements 19, 22, 43, and 50.")
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

A = np.array([[1, 2], [3, 4]])
B = np.array([[5, 6], [7, 8]])
C = A @ B

fig, ax = plt.subplots(1, 3, figsize=(10, 3))

ax[0].matshow(A, cmap='viridis')
ax[0].set_title('Matrix A')
ax[0].set_xlabel('Columns')
ax[0].set_ylabel('Rows')
ax[0].set_xticks([])
ax[0].set_yticks([])

ax[1].matshow(B, cmap='viridis')
ax[1].set_title('Matrix B')
ax[1].set_xlabel('Columns')
ax[1].set_ylabel('Rows')
ax[1].set_xticks([])
ax[1].set_yticks([])

ax[2].matshow(C, cmap='viridis')
ax[2].set_title('Matrix AB')
ax[2].set_xlabel('Columns')
ax[2].set_ylabel('Rows')
ax[2].set_xticks([])
ax[2].set_yticks([])

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the matrix multiplication. We see the two input matrices A and B, and the resulting matrix AB after multiplication.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Matrix multiplication: rows × columns 🔢]
#v(20pt)
#only("2-")[- Possible if: columns(mat(A)) = rows(mat(B)) ✅]
#v(20pt)
#only("3-")[- Result dimensions: rows(mat(A)) × columns(mat(B)) 📏]
#only("1")[
#voiceover("To summarize, matrix multiplication involves multiplying the rows of the first matrix by the columns of the second matrix.")
]
#only("2")[
#voiceover("This is only possible if the number of columns in the first matrix equals the number of rows in the second matrix.")
]
#only("3")[
#voiceover("The resulting matrix will have the number of rows of the first matrix and the number of columns of the second matrix.")
]
]