#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Let's review the correct inverse matrix solution step by step.")
]

#text(size: 30pt, weight: "bold")[Inverse of a Matrix]

#v(40pt)

#only("2-")[$ A = mat(2, 0; 0, 2) $]
// The matrix A is shown from slide 2 onward

#only("2")[
#voiceover("We're considering the matrix A equals the two by two matrix with elements two, zero, zero, and two.")
]

]

#slide()[

#only("1")[
#voiceover("To find the inverse of a diagonal matrix like this, we simply take the reciprocal of each non-zero element on the main diagonal.")
]

#text(size: 30pt, weight: "bold")[Approach]

#v(40pt)

#only("1-")[- Diagonal matrix 📐]
// The approach of using the diagonal matrix property is shown from slide 1 onward

#only("2-")[- Reciprocal of non-zero diagonal elements 🔄]
// The approach of taking the reciprocal of non-zero diagonal elements is shown from slide 2 onward

]

#slide()[

#text(size: 30pt, weight: "bold")[Solution Steps]

#v(40pt)

#only("1-")[$ A = mat(2, 0; 0, 2) $]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Reciprocal of diagonal elements]]]

#v(10pt)

#only("3-")[$ A^(-1) = mat(1/2, 0; 0, 1/2) $]

#v(10pt)

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Simplify]]]

#v(10pt)

#only("5-")[$ A^(-1) = mat(0.5, 0; 0, 0.5) $]

#only("1")[#voiceover("We start with the matrix A equals the two by two matrix with elements two, zero, zero, and two.")]

#only("2")[#voiceover("To find the inverse, we take the reciprocal of each non-zero element on the main diagonal.")]

#only("3")[#voiceover("So, the inverse of A, denoted as A to the power of negative one, equals the matrix with elements one-half, zero, zero, and one-half.")]

#only("4")[#voiceover("We can simplify these fractions.")]

#only("5")[#voiceover("The inverse of A equals the matrix with elements zero point five, zero, zero, and zero point five. Great work!")]

]