#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication Recap]
#v(40pt)
#only("1-")[
- Multiply rows by columns 🔢
]
#v(20pt)
#only("2-")[
- Dimension compatibility 📏
]
#only("1")[
#voiceover("To recap, matrix multiplication involves multiplying rows of the first matrix by columns of the second matrix.")
]
#only("2")[
#voiceover("However, this is only possible when the number of columns in the first matrix equals the number of rows in the second matrix. This is called dimension compatibility.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[
$mat(a_(11), a_(12); a_(21), a_(22)) mat(b_(11), b_(12); b_(21), b_(22)) = mat(c_(11), c_(12); c_(21), c_(22))$
]
#v(20pt)
#only("2-")[
$c_(11) = a_(11)b_(11) + a_(12)b_(21)$
]
#v(10pt)
#only("3-")[
$c_(12) = a_(11)b_(12) + a_(12)b_(22)$
]
#v(10pt)
#only("4-")[
$c_(21) = a_(21)b_(11) + a_(22)b_(21)$
]
#v(10pt)
#only("5-")[
$c_(22) = a_(21)b_(12) + a_(22)b_(22)$
]
#only("1")[
#voiceover("Let's look at an example. Consider the multiplication of two 2 by 2 matrices.")
]
#only("2")[
#voiceover("The element in the first row and first column of the resulting matrix, c 11, is computed by multiplying the first row of the first matrix with the first column of the second matrix.")
]
#only("3")[
#voiceover("Similarly, c 12 is computed by multiplying the first row of the first matrix with the second column of the second matrix.")
]
#only("4")[
#voiceover("c 21 is computed by multiplying the second row of the first matrix with the first column of the second matrix.")
]
#only("5")[
#voiceover("And finally, c 22 is computed by multiplying the second row of the first matrix with the second column of the second matrix.")
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

fig, ax = plt.subplots(figsize=(6, 6))

# Define the matrices
A = np.array([[2, 3], [1, 4]])
B = np.array([[1, 0], [5, 2]])

# Compute the product
C = A @ B

# Plot the matrices
for i, matrix in enumerate([A, B, C]):
    for j in range(matrix.shape[0]):
        for k in range(matrix.shape[1]):
            ax.text(k + i*3, j, str(matrix[j,k]), va='center', ha='center', fontsize=20)
    
    if i < 2:
        ax.text(i*3 + 1.5, -0.5, '×', va='center', ha='center', fontsize=24)
    else:
        ax.text(i*3 - 0.5, -0.5, '=', va='center', ha='center', fontsize=24)

# Add labels
ax.text(-0.5, 1, 'A', va='center', ha='center', fontsize=24)
ax.text(2.5, 1, 'B', va='center', ha='center', fontsize=24)
ax.text(5.5, 1, 'C', va='center', ha='center', fontsize=24)

# Clean up the plot
ax.set_xlim(-1, 8)
ax.set_ylim(-1, 2)
ax.axis('off')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of matrix multiplication. We multiply matrix A with matrix B to get matrix C. Each element in C is computed by multiplying the corresponding row of A with the corresponding column of B.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[
- Matrix multiplication: rows × columns 🔢
]
#v(20pt)
#only("2-")[
- Dimension compatibility is key 🔑
]
#v(20pt)
#only("3-")[
- Resulting matrix has dimensions of first matrix's rows and second matrix's columns 📏
]
#only("1")[
#voiceover("In summary, matrix multiplication involves multiplying rows of the first matrix by columns of the second matrix.")
]
#only("2")[
#voiceover("This is only possible when the matrices are dimension compatible, meaning the number of columns in the first matrix equals the number of rows in the second matrix.")
]
#only("3")[
#voiceover("The resulting matrix has the same number of rows as the first matrix and the same number of columns as the second matrix.")
]
]