#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the concept of matrix transposition.")
]
#text(size: 30pt, weight: "bold")[Matrix Transposition 🔄]
// The title "Matrix Transposition" with a swap emoji is shown on this slide
#v(40pt)
#only("2")[
#voiceover("The transpose of a matrix is obtained by swapping its rows and columns.")
]
#only("2-")[
- Swap rows and columns
]
// The bullet point "Swap rows and columns" is shown from slide 2 onward
#v(40pt)
#only("3")[
#voiceover("For example, consider the matrix A equals mat 1, 2; 3, 4. The transpose of A, denoted as A superscript T, is obtained by swapping the rows and columns of A.")
]
#only("3-")[
$ A = mat(1, 2; 3, 4) $
]
// The matrix A is shown from slide 3 onward
#v(40pt)
#only("4")[
#voiceover("So, the first row of A becomes the first column of A transpose, and the second row of A becomes the second column of A transpose.")
]
#only("4-")[
$ A^T = mat(1, 3; 2, 4) $
]
// The transpose of matrix A is shown from slide 4 onward
]

#slide()[
#only("1")[
#voiceover("Let's visualize this transposition process.")
]
#text(size: 30pt, weight: "bold")[Visualization 📊]
// The title "Visualization" with a graph emoji is shown on this slide
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(10, 4))

# Original Matrix
A = np.array([[1, 2], [3, 4]])
im1 = ax1.imshow(A, cmap='viridis', interpolation='nearest')
ax1.set_xticks([0, 1])
ax1.set_yticks([0, 1])
ax1.set_xticklabels(['1', '2'])
ax1.set_yticklabels(['1', '2'])
ax1.set_title('Original Matrix $A$')

for i in range(2):
    for j in range(2):
        ax1.text(j, i, A[i, j], ha="center", va="center", color="w")

# Transposed Matrix
A_T = A.T
im2 = ax2.imshow(A_T, cmap='viridis', interpolation='nearest')
ax2.set_xticks([0, 1])
ax2.set_yticks([0, 1])
ax2.set_xticklabels(['1', '2'])
ax2.set_yticklabels(['1', '2'])
ax2.set_title('Transposed Matrix $A^T$')

for i in range(2):
    for j in range(2):
        ax2.text(j, i, A_T[i, j], ha="center", va="center", color="w")

fig.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
]
// The figure shows the original matrix A and its transpose A^T side by side, visualizing the swapping of rows and columns. This figure is shown from slide 2 onward.
#only("2")[
#voiceover("Here, we see the original matrix A on the left and its transpose A superscript T on the right.")
]
#only("3")[
#voiceover("Notice how the rows of A become the columns of A transpose, and the columns of A become the rows of A transpose.")
]
]

#slide()[
#only("1")[
#voiceover("In summary, matrix transposition is a simple operation that swaps the rows and columns of a matrix.")
]
#text(size: 30pt, weight: "bold")[Key Points 🔑]
#v(40pt)
#only("2-")[
- Transpose: swap rows and columns
]
#v(20pt)
#only("3-")[
- Notation: $A^T$
]
#v(20pt)
#only("4-")[
- Example: $A = mat(1, 2; 3, 4) $ $arrow.r$ $ A^T = mat(1, 3; 2, 4) $
]
#only("2")[
#voiceover("The transpose is obtained by swapping the rows and columns of a matrix.")
]
#only("3")[
#voiceover("We denote the transpose of a matrix A using the notation A superscript T.")
]
#only("4")[
#voiceover("For example, if A equals mat 1, 2; 3, 4, then its transpose A superscript T is equal to mat 1, 3; 2, 4.")
]
]