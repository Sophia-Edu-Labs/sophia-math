#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Scalar Multiplication of Matrices]
#v(40pt)

#only("1-")[Given matrix: $A = mat(2, 3; 4, 5)$]
#v(20pt)
#only("2-")[Scalar: $k = 2$]
#v(20pt)
#only("3-")[Step 1: Multiply each element by $k$]
#v(20pt)
#only("4-")[Step 2: $2 dot mat(2, 3; 4, 5) = mat(2 dot 2, 2 dot 3; 2 dot 4, 2 dot 5)$]
#v(20pt)
#only("5-")[Final result: $mat(4, 6; 8, 10)$]

#only("1")[
#voiceover("Not quite. Let's review the correct solution step-by-step. We start with our given matrix A.")
]

#only("2")[
#voiceover("We're asked to multiply this matrix by the scalar 2.")
]

#only("3")[
#voiceover("To perform scalar multiplication on a matrix, we multiply each element of the matrix by the scalar.")
]

#only("4")[
#voiceover("So, we multiply each element of our matrix by 2. Let's do this step-by-step: 2 times 2 is 4, 2 times 3 is 6, 2 times 4 is 8, and 2 times 5 is 10.")
]

#only("5")[
#voiceover("This gives us our final result: a matrix with 4 and 6 in the first row, and 8 and 10 in the second row. Well done on solving this problem!")
]
]