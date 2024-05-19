#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Properties of Transposition]
#v(40pt)
#only("1-")[- $(A^T)^T = A$ 🔄]
#v(20pt)
#only("2-")[- $(A + B)^T = A^T + B^T$ ➕]
#only("1")[
#voiceover("The first property of transposition is that if you take the transpose of a matrix A twice, you get back the original matrix A.")
]
#only("2")[
#voiceover("The second property is that the transpose of a sum of matrices A and B is equal to the sum of the transposes of A and B.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Let $A = mat(1, 2; 3, 4)$ and $B = mat(5, 6; 7, 8)$]
#v(20pt)
#only("2-")[$(A^T)^T = mat(1, 3; 2, 4)^T = mat(1, 2; 3, 4) = A$]
#v(20pt)
#only("3-")[$(A + B)^T = mat(6, 8; 10, 12)^T = mat(6, 10; 8, 12) = A^T + B^T$]
#only("1")[
#voiceover("Let's consider an example. Suppose we have two matrices A and B.")
]
#only("2")[
#voiceover("If we take the transpose of A twice, we first get the matrix with elements 1, 3, 2, 4, and then transposing this again gives us back the original matrix A.")
]
#only("3")[
#voiceover("Now, if we add A and B and then transpose the result, we get the matrix with elements 6, 10, 8, 12. This is the same as if we first transpose A and B individually and then add the results.")
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

fig, axs = plt.subplots(1, 3, figsize=(12, 4))

axs[0].matshow(A, cmap='viridis')
axs[0].set_title('Matrix A')
axs[0].set_xlabel('Columns')
axs[0].set_ylabel('Rows')
axs[0].xaxis.set_ticks_position('bottom')

axs[1].matshow(A.T, cmap='viridis')
axs[1].set_title('Transpose of A')
axs[1].set_xlabel('Columns')
axs[1].set_ylabel('Rows')
axs[1].xaxis.set_ticks_position('bottom')

axs[2].matshow((A + B).T, cmap='viridis')
axs[2].set_title('Transpose of A + B')
axs[2].set_xlabel('Columns')
axs[2].set_ylabel('Rows')
axs[2].xaxis.set_ticks_position('bottom')

plt.tight_layout()
plt.show()
```,
width: 360pt),
)
]
]
#only("1")[
#voiceover("Here's a visualization of these properties. The first plot shows the original matrix A. The second plot shows the transpose of A, where the rows and columns are interchanged. The third plot shows the transpose of the sum of A and B, which is the same as summing the individual transposes.")
]
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Transposing a matrix twice gives the original matrix 🔄]
#v(20pt)
#only("2-")[- The transpose of a sum is the sum of transposes ➕]
#v(20pt)
#only("3-")[- These properties are fundamental in linear algebra 📐]
#only("1")[
#voiceover("In summary, transposing a matrix twice gives you back the original matrix.")
]
#only("2")[
#voiceover("And the transpose of a sum of matrices is equal to the sum of the transposes of the individual matrices.")
]
#only("3")[
#voiceover("These properties of transposition are fundamental in linear algebra and are often used in proofs and calculations involving matrices.")
]
]