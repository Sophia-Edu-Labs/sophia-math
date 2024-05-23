#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rank of a Matrix]
#v(40pt)
#only("1-")[- Given matrix: $mat(1, 2; 3, 6)$]
#v(20pt)
#only("2-")[- Find the rank using Gaussian elimination 🧮]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can find the rank of the given matrix using Gaussian elimination.")
]
#only("2")[
#voiceover("To find the rank, we will transform the matrix to its row echelon form. The number of non-zero rows in the row echelon form will be the rank of the matrix.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Row Operations]
#v(40pt)
#only("1-")[- Multiply the first row by -3 and add it to the second row]
#v(20pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(6, 4))
ax.axis('off')
ax.text(0.5, 0.8, r"$\begin{bmatrix} 1 & 2 \\\\ 3 & 6 \end{bmatrix}$", fontsize=30, ha='center', va='center')
ax.text(0.5, 0.5, r"$\downarrow$", fontsize=30, ha='center', va='center')
ax.text(0.5, 0.2, r"$\begin{bmatrix} 1 & 2 \\\\ 0 & 0 \end{bmatrix}$", fontsize=30, ha='center', va='center')
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("We start with the matrix (1, 2; 3, 6). We multiply the first row by -3 and add it to the second row. This operation eliminates the element in the second row, first column, making it zero.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Row Echelon Form]
#v(40pt)
#only("1-")[- The matrix is now in row echelon form]
#v(20pt)
#only("2-")[- Count the number of non-zero rows 🔢]
#only("1")[
#voiceover("After the row operation, the matrix is now in row echelon form.")
]
#only("2")[
#voiceover("To determine the rank, we count the number of non-zero rows in the row echelon form.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Rank of the Matrix]
#v(40pt)
#only("1-")[- The matrix has 1 non-zero row]
#v(20pt)
#only("2-")[- Therefore, the rank is 1 ✅]
#only("1")[
#voiceover("In this case, there is only one non-zero row in the row echelon form of the matrix.")
]
#only("2")[
#voiceover("Therefore, the rank of the matrix is 1. Great work on solving this problem!")
]
]