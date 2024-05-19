#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the concept of the inverse of a matrix. 🔄")
]
#text(size: 30pt, weight: "bold")[Inverse of a Matrix]
#v(40pt)
#only("2")[
#voiceover("The inverse of a matrix A, denoted as A to the power of negative 1, is a matrix that, when multiplied by A, results in the identity matrix I.")
]
#only("2-")[- $A A^(-1) = A^(-1) A = I$]
#v(40pt)
#only("3")[
#voiceover("For example, consider the matrix A equals the 2 by 2 matrix with elements 1, 0, 0, 1.")
]
#only("3-")[
- Example: $A = mat(1, 0; 0, 1)$
#v(20pt)
- $A^(-1) = mat(1, 0; 0, 1)$
]
#v(40pt)
#only("4")[
#voiceover("Multiplying A with its inverse A to the power of negative 1 results in the identity matrix I, which is also a 2 by 2 matrix with 1s on the main diagonal and 0s elsewhere.")
]
#only("4-")[
$ A A^(-1) = mat(1, 0; 0, 1) mat(1, 0; 0, 1)$
#v(20pt)
$= mat(1, 0; 0, 1) = I$
]
#v(40pt)
#only("5")[
#voiceover("Not all matrices have an inverse. A matrix has an inverse if and only if it is a square matrix and its determinant is not equal to zero. 📐")
]
#only("5-")[
- Matrix $A$ has an inverse if:
  - $A$ is a square matrix
  - $det(A) ≠ 0$
]
]