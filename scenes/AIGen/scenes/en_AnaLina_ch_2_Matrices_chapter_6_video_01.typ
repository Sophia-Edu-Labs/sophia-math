#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Inverse]
#v(40pt)
#only("1-")[- For a matrix $A$, the inverse is denoted as $A^(-1)$]
#v(20pt)
#only("2-")[- Property: $A dot A^(-1) = I$]
#v(20pt)
#only("3-")[- $I$ is the identity matrix]
#only("1")[
#voiceover("The inverse of a matrix A is denoted as A to the power of negative 1.")
]
#only("2")[
#voiceover("The key property of the inverse is that when you multiply a matrix A by its inverse A to the power of negative 1, you get the identity matrix.")
]
#only("3")[
#voiceover("The identity matrix, denoted as I, is a special matrix with 1s on the main diagonal and 0s elsewhere.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider the matrix $A = mat(2, 1; 1, 2)$]
#v(20pt)
#only("2-")[The inverse of $A$ is $A^(-1) = mat(2/3, -1/3; -1/3, 2/3)$]
#v(20pt)
#only("3-")[Let's verify the property: $A dot A^(-1) = I$]
#only("1")[
#voiceover("Let's consider an example. Suppose we have a matrix A equal to the matrix with elements 2, 1 in the first row and 1, 2 in the second row.")
]
#only("2")[
#voiceover("The inverse of this matrix A is the matrix with elements 2/3, -1/3 in the first row and -1/3, 2/3 in the second row.")
]
#only("3")[
#voiceover("Now, let's verify the property that A multiplied by its inverse A to the power of negative 1 equals the identity matrix.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Verification]
#v(40pt)
#only("1-")[
$ A dot A^(-1) = mat(2, 1; 1, 2) dot mat(2/3, -1/3; -1/3, 2/3) $
]
#v(20pt)
#only("2-")[
$ = mat(2 dot 2/3 + 1 dot (-1/3), 2 dot (-1/3) + 1 dot 2/3; 
         1 dot 2/3 + 2 dot (-1/3), 1 dot (-1/3) + 2 dot 2/3) $
]
#v(20pt)
#only("3-")[
$ = mat(1, 0; 0, 1) = I $
]
#only("1")[
#voiceover("We multiply matrix A with its inverse A to the power of negative 1.")
]
#only("2")[
#voiceover("Performing the matrix multiplication, we get a new matrix where each element is the sum of products of corresponding row elements of A and column elements of A inverse.")
]
#only("3")[
#voiceover("Simplifying this matrix, we indeed get the identity matrix I, which has 1s on the main diagonal and 0s elsewhere.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Inverse of a matrix $A$ is denoted as $A^(-1)$ 🔄]
#v(20pt)
#only("2-")[- Key property: $A dot A^(-1) = I$ ✅]
#v(20pt)
#only("3-")[- $I$ is the identity matrix with 1s on main diagonal, 0s elsewhere 🆔]
#only("1")[
#voiceover("To summarize, the inverse of a matrix A is denoted as A to the power of negative 1.")
]
#only("2")[
#voiceover("The key property is that when you multiply a matrix by its inverse, you get the identity matrix.")
]
#only("3")[
#voiceover("The identity matrix has 1s on the main diagonal and 0s elsewhere. It's a special matrix that leaves other matrices unchanged when multiplied.")
]
]