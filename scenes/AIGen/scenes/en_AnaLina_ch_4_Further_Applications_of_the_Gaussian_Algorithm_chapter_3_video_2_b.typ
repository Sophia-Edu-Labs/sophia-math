#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Invertibility of Matrices]
#v(40pt)
#only("-1")[A matrix is invertible if its rank is equal to its number of \_\_\_\_\_.]
#v(40pt)
#only("-1")[a) non-zero elements]#only("2-")[#text(fill:red)[a) non-zero elements]]
#v(10pt)
#only("-1,3-")[b) rows or columns]#only("2")[#text(fill:green)[b) rows or columns]]
#v(10pt)
#only("-1,3-")[c) rows]#only("4-")[#text(fill:red)[c) rows]]
#v(10pt)
#only("-1,3-")[d) columns]#only("5-")[#text(fill:red)[d) columns]]
#v(40pt)
#only("1")[#voiceover("Great job! You selected the correct answer.")]
#only("2")[#voiceover("Option b) rows or columns is indeed the correct answer. A matrix is invertible if and only if its rank is equal to its number of rows or columns.")]
#only("3")[#voiceover("Option a) non-zero elements is incorrect. The number of non-zero elements does not determine the invertibility of a matrix.")]
#only("4")[#voiceover("Option c) rows is only partially correct. The rank needs to be equal to both the number of rows and columns for a matrix to be invertible.")]
#only("5")[#voiceover("Similarly, option d) columns is also only partially correct. The rank needs to be equal to both the number of rows and columns for a matrix to be invertible.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Explanation]
#v(40pt)
#only("1-")[Step 1: Recall the definition of rank 🎓]
#v(20pt)
#only("2-")[- Rank = maximum number of linearly independent rows or columns]
#v(40pt)
#only("3-")[Step 2: Understand the conditions for invertibility 🔍]

#only("1")[#voiceover("Let's break this down step by step.")]
#only("2")[#voiceover("First, recall that the rank of a matrix is the maximum number of linearly independent rows or columns.")]
#only("3")[#voiceover("Next, it's important to understand the conditions for a matrix to be invertible.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Explanation]
#v(40pt)
#only("1-")[Step 2: Understand the conditions for invertibility 🔍]
#v(20pt)
#only("2-")[- For a square matrix to be invertible, its rank must be equal to its size (number of rows or columns)]
#v(40pt)
#only("3-")[Step 3: Conclude 🎉]
#v(20pt)
#only("4-")[- Therefore, a matrix is invertible if its rank is equal to its number of rows or columns]

#only("1")[#voiceover("For a square matrix to be invertible, its rank must be equal to its size, which is the number of rows or columns.")]
#only("2")[#voiceover("Finally, we can conclude...")]
#only("3")[#voiceover("that a matrix is invertible if and only if its rank is equal to its number of rows or columns.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider the matrix $A = mat(1, 2; 3, 4)$]
#v(40pt)
#only("2-")[
#box()[
#morphchildren(id: "plot")[
#figure(
pyimage(```
import matplotlib.pyplot as plt
import numpy as np

A = np.array([[1, 2], [3, 4]])
plt.figure(figsize=(4, 4))
plt.imshow(A, cmap='viridis', interpolation='nearest')
plt.colorbar(fraction=0.046, pad=0.04)
plt.title('Matrix A')
plt.xticks([])
plt.yticks([])
plt.show()
```,
width: 200pt),
)
]
]
]
#v(40pt)
#only("3-")[- $A$ is a 2×2 matrix, so it is invertible if its rank is 2]
#v(20pt)
#only("4-")[- Using Gaussian elimination, we can show that the rank of $A$ is indeed 2]
#v(20pt)
#only("5-")[- Therefore, $A$ is invertible 🎉]

#only("1")[#voiceover("Let's consider an example. We have matrix A, which is a 2 by 2 matrix with elements 1, 2, 3, and 4.")]
#only("2")[#voiceover("Here's a visual representation of matrix A.")]
#only("3")[#voiceover("Since A is a 2 by 2 matrix, it will be invertible if its rank is 2.")]
#only("4")[#voiceover("Using Gaussian elimination, we can show that the rank of A is indeed 2.")]
#only("5")[#voiceover("Therefore, we can conclude that matrix A is invertible.")]
]