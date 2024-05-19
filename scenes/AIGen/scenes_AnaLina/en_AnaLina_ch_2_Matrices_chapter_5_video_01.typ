#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication]
#v(40pt)
#only("1-")[- Multiply rows of first matrix by columns of second matrix]
#v(20pt)
#only("2-")[- Example: $mat(1, 2; 3, 4) mat(5, 6; 7, 8)$]
#only("1")[
#voiceover("Matrix multiplication involves multiplying the rows of the first matrix by the columns of the second matrix.")
]
#only("2")[
#voiceover("Let's consider an example. We want to multiply the matrices (1, 2; 3, 4) and (5, 6; 7, 8).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Process]
#v(40pt)
#only("1-")[1. Multiply first row of first matrix by first column of second matrix]
#v(10pt)
#only("2-")[   $1 dot 5 + 2 dot 7 = 5 + 14 = 19$]
#v(20pt)
#only("3-")[2. Multiply first row of first matrix by second column of second matrix]
#v(10pt)
#only("4-")[   $1 dot 6 + 2 dot 8 = 6 + 16 = 22$]
#only("1")[
#voiceover("First, we multiply the first row of the first matrix by the first column of the second matrix.")
]
#only("2")[
#voiceover("That's 1 times 5 plus 2 times 7, which equals 19.")
]
#only("3")[
#voiceover("Next, we multiply the first row of the first matrix by the second column of the second matrix.")
]
#only("4")[
#voiceover("That's 1 times 6 plus 2 times 8, which equals 22.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Process]
#v(40pt)
#only("1-")[1. Multiply second row of first matrix by first column of second matrix]
#v(10pt)
#only("2-")[   $3 dot 5 + 4 dot 7 = 15 + 28 = 43$]
#v(20pt)
#only("3-")[2. Multiply second row of first matrix by second column of second matrix]
#v(10pt)
#only("4-")[   $3 dot 6 + 4 dot 8 = 18 + 32 = 50$]
#only("1")[
#voiceover("Then, we multiply the second row of the first matrix by the first column of the second matrix.")
]
#only("2")[
#voiceover("That's 3 times 5 plus 4 times 7, which equals 43.")
]
#only("3")[
#voiceover("Finally, we multiply the second row of the first matrix by the second column of the second matrix.")
]
#only("4")[
#voiceover("That's 3 times 6 plus 4 times 8, which equals 50.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Resulting Matrix]
#v(40pt)
#only("1-")[$ mat(1, 2; 3, 4) mat(5, 6; 7, 8) = mat(19, 22; 43, 50) $]
#v(20pt)
#only("2-")[The resulting matrix has the same number of rows as the first matrix and the same number of columns as the second matrix. 🎉]
#only("1")[
#voiceover("We arrange these results into a new matrix. The resulting matrix from multiplying (1, 2; 3, 4) and (5, 6; 7, 8) is (19, 22; 43, 50).")
]
#only("2")[
#voiceover("Notice that the resulting matrix has the same number of rows as the first matrix and the same number of columns as the second matrix.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Visualization]
#v(40pt)
#only("1-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```import matplotlib.pyplot as plt
import numpy as np

fig, ax = plt.subplots(figsize=(6, 6))

# Define the matrices
A = np.array([[1, 2], [3, 4]])
B = np.array([[5, 6], [7, 8]])
C = np.dot(A, B)

# Create a grid for the matrices
X, Y = np.meshgrid(range(4), range(3))

# Plot the matrices
for i in range(2):
    for j in range(2):
        ax.text(j, i, A[i, j], ha='center', va='center', fontsize=20)
        ax.text(j+2.5, i, B[i, j], ha='center', va='center', fontsize=20)
        ax.text(j+1.25, i-1.25, C[i, j], ha='center', va='center', fontsize=20, color='red')

# Add matrix labels
ax.text(0.5, -0.5, 'A', ha='center', va='center', fontsize=20)
ax.text(2.5+0.5, -0.5, 'B', ha='center', va='center', fontsize=20)
ax.text(1.25+0.5, -1.5-0.25, 'A × B', ha='center', va='center', fontsize=20)

# Remove ticks and spines
ax.set_xticks([])
ax.set_yticks([])
for spine in ax.spines.values():
    spine.set_visible(False)

# Show the plot
plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of the matrix multiplication. The blue numbers represent the elements of the input matrices A and B, and the red numbers represent the elements of the resulting matrix A times B.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Matrix multiplication: rows × columns 🔢]
#v(20pt)
#only("2-")[- Multiply and sum corresponding elements 🧮]
#v(20pt)
#only("3-")[- Resulting matrix dimensions: rows of first, columns of second 📏]
#only("1")[
#voiceover("In summary, matrix multiplication involves multiplying the rows of the first matrix by the columns of the second matrix.")
]
#only("2")[
#voiceover("We multiply the corresponding elements and sum the results to get each element of the new matrix.")
]
#only("3")[
#voiceover("The resulting matrix has the same number of rows as the first matrix and the same number of columns as the second matrix.")
]
]