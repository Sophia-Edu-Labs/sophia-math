#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Transposition Properties 🔄]
#v(40pt)
#only("1-")[- $(A^T)^T = A$]
#only("2-")[- $(A + B)^T = A^T + B^T$]
#only("1")[
#voiceover("Let's recap the properties of matrix transposition. First, the transpose of the transpose of a matrix A is equal to the original matrix A.")
]
#only("2")[
#voiceover("Second, the transpose of the sum of matrices A and B is equal to the sum of the transposes of A and B.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example 📜]
#v(40pt)
#only("1-")[Let $A = mat(1, 2; 3, 4)$ and $B = mat(5, 6; 7, 8)$]
#v(20pt)
#only("2-")[$(A^T)^T = mat(1, 3; 2, 4)^T = mat(1, 2; 3, 4) = A$]
#v(20pt)
#only("3-")[$(A + B)^T = mat(6, 8; 10, 12)^T = mat(6, 10; 8, 12) = A^T + B^T$]
#only("1")[
#voiceover("Consider matrices A and B. A is a 2 by 2 matrix with elements 1, 2, 3, and 4. B is also a 2 by 2 matrix with elements 5, 6, 7, and 8.")
]
#only("2")[
#voiceover("The transpose of the transpose of A is equal to A. We first transpose A to get a matrix with elements 1, 3, 2, and 4. Then we transpose this matrix again, which gives us back the original matrix A.")
]
#only("3")[
#voiceover("The transpose of the sum of A and B is equal to the sum of the transposes of A and B. We first add A and B to get a matrix with elements 6, 8, 10, and 12. Then we transpose this matrix, which gives us a matrix with elements 6, 10, 8, and 12. This is the same as adding the transposes of A and B.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Transposition is an operation on matrices 🔄]
#v(20pt)
#only("2-")[- (A^T)^T = A : Transposing twice gives the original matrix 🔁]
#v(20pt)
#only("3-")[- (A + B)^T = A^T + B^T : Transposition is distributive over addition ➕]
#only("1")[
#voiceover("In summary, transposition is an important operation on matrices.")
]
#only("2")[
#voiceover("The transpose of the transpose of a matrix is equal to the original matrix. This means that transposing a matrix twice gives you back the matrix you started with.")
]
#only("3")[
#voiceover("The transpose of the sum of two matrices is equal to the sum of the transposes of these matrices. This shows that transposition is distributive over matrix addition.")
]
]