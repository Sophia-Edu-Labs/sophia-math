#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Great job! That's the correct solution. Let's go through the steps to multiply these matrices together.")
]

#text(size: 30pt, weight: "bold")[Matrix Multiplication]

#v(40pt)

#only("2-")[- Given matrices: $A = mat(1, 2; 3, 4)$ and $B = mat(5; 6)$]
// The given matrices are shown from slide 2 onward

#only("2")[
#voiceover("We're given two matrices, A and B. Matrix A is a 2 by 2 matrix with elements 1, 2, 3, and 4. Matrix B is a 2 by 1 matrix, also known as a column vector, with elements 5 and 6.")
]

]

#slide()[

#only("1")[
#voiceover("To multiply these matrices, we use the rule for matrix multiplication. The number of columns in the first matrix must equal the number of rows in the second matrix.")
]

#text(size: 30pt, weight: "bold")[Multiplication Rule]

#v(40pt)

#only("1-")[- Number of columns in $A$ must equal number of rows in $B$]

#only("2-")[- Dimensions match: $A$ is $2 × 2$ and $B$ is $2 × 1$ ✅]

#only("2")[
#voiceover("In this case, the dimensions match. Matrix A has 2 columns and matrix B has 2 rows.")
]

]

#slide()[

#text(size: 30pt, weight: "bold")[Multiplication Steps]

#v(40pt)

#only("1-")[$ A × B = mat(1, 2; 3, 4) × mat(5; 6) $]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Multiply rows of $A$ by columns of $B$]]]

#v(10pt)

#only("3-")[$ = mat(1 × 5 + 2 × 6; 3 × 5 + 4 × 6) $]

#v(10pt)

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Simplify]]]

#v(10pt)

#only("5-")[$ = mat(5 + 12; 15 + 24) $]

#v(10pt)

#only("6-")[$ = mat(17; 39) $]

#only("1")[#voiceover("We start with the multiplication of matrix A and matrix B.")]

#only("2")[#voiceover("To multiply these matrices, we multiply the rows of A by the columns of B.")]

#only("3")[#voiceover("This gives us a new matrix where the first element is 1 times 5 plus 2 times 6, and the second element is 3 times 5 plus 4 times 6.")]

#only("4")[#voiceover("Now, we simplify these expressions.")]

#only("5")[#voiceover("5 plus 12 is 17, and 15 plus 24 is 39.")]

#only("6")[#voiceover("So, the final result of multiplying matrix A by matrix B is the 2 by 1 matrix with elements 17 and 39.")]

]

#slide()[

#only("1")[
#voiceover("In summary, when multiplying matrices, make sure the dimensions match, then multiply the rows of the first matrix by the columns of the second matrix.")
]

#text(size: 30pt, weight: "bold")[Key Points 🔑]

#v(40pt)

#only("1-")[- Check dimensions match 📏]

#v(20pt)

#only("2-")[- Multiply rows by columns 🧮]

#v(20pt)

#only("3-")[- Simplify results ➗]

#only("2")[
#voiceover("Multiply each row of the first matrix by each column of the second matrix.")
]

#only("3")[
#voiceover("Finally, simplify the resulting expressions to get the final matrix.")
]

]