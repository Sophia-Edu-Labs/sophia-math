#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Addition]
#v(40pt)
#only("1-")[- Matrices can be added if they have the same dimensions 📏]
#v(20pt)
#only("2-")[- Add corresponding elements 🧮]
#only("1")[
#voiceover("Matrices can be added together if they have the same dimensions. This means that the matrices must have the same number of rows and the same number of columns.")
]
#only("2")[
#voiceover("To add matrices, we simply add the corresponding elements. For example, the element in the first row and first column of the resulting matrix is the sum of the elements in the first row and first column of the matrices being added.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[$ A = mat(1, 2; 3, 4) $]
#v(20pt)
#only("2-")[$ B = mat(5, 6; 7, 8) $]
#v(20pt)
#only("3-")[$ A + B = mat(1+5, 2+6; 3+7, 4+8) = mat(6, 8; 10, 12) $]
#only("1")[
#voiceover("Let's consider an example. Suppose we have a matrix A equals the matrix with elements 1, 2 in the first row and 3, 4 in the second row.")
]
#only("2")[
#voiceover("And another matrix B equals the matrix with elements 5, 6 in the first row and 7, 8 in the second row.")
]
#only("3")[
#voiceover("To add A and B, we add the corresponding elements. So, 1 plus 5 is 6, 2 plus 6 is 8, 3 plus 7 is 10, and 4 plus 8 is 12. Therefore, A plus B equals the matrix with elements 6, 8 in the first row and 10, 12 in the second row.")
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

A = np.array([[1, 2], [3, 4]])
B = np.array([[5, 6], [7, 8]])
C = A + B

fig, ax = plt.subplots(1, 3, figsize=(10, 3))

ax[0].matshow(A, cmap='viridis')
ax[0].set_title('Matrix A')
ax[0].set_xlabel('Columns')
ax[0].set_ylabel('Rows')
for i in range(2):
    for j in range(2):
        c = A[j,i]
        ax[0].text(i, j, str(c), va='center', ha='center')

ax[1].matshow(B, cmap='viridis')
ax[1].set_title('Matrix B')
ax[1].set_xlabel('Columns')
for i in range(2):
    for j in range(2):
        c = B[j,i]
        ax[1].text(i, j, str(c), va='center', ha='center')

ax[2].matshow(C, cmap='viridis')
ax[2].set_title('Matrix A + B')
ax[2].set_xlabel('Columns')
for i in range(2):
    for j in range(2):
        c = C[j,i]
        ax[2].text(i, j, str(c), va='center', ha='center')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the matrix addition. On the left, we have matrix A. In the middle, we have matrix B. And on the right, we have the result of adding A and B, where each element is the sum of the corresponding elements from A and B.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Matrices can be added if they have the same dimensions 📏]
#v(20pt)
#only("2-")[- Add corresponding elements 🧮]
#v(20pt)
#only("3-")[- The resulting matrix has the same dimensions as the input matrices 🎯]
#only("1")[
#voiceover("To summarize, matrices can be added if they have the same dimensions.")
]
#only("2")[
#voiceover("We add matrices by adding their corresponding elements.")
]
#only("3")[
#voiceover("The resulting matrix has the same dimensions as the input matrices.")
]
]