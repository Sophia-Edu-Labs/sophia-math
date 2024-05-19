#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Let's review the correct solution step by step.")
]

#text(size: 30pt, weight: "bold")[Scalar Multiplication of a Matrix]

#v(40pt)

#only("2-")[$ mat(1, 2; 3, 4) $]
// The original matrix is shown from slide 2 onward

#only("2")[
#voiceover("We start with the matrix that has elements 1, 2, 3, and 4.")
]

]

#slide()[

#only("1")[
#voiceover("To multiply a matrix by a scalar, we multiply each element of the matrix by that scalar.")
]

#text(size: 30pt, weight: "bold")[Approach]

#v(40pt)

#only("1-")[- Multiply each element by the scalar 🧮]
// The approach of multiplying each element by the scalar is shown from slide 1 onward

]

#slide()[

#text(size: 30pt, weight: "bold")[Solution steps]

#v(40pt)

#only("1-")[$ mat(1, 2; 3, 4) $]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Multiply by 3]]]

#v(10pt)

#only("3-")[$ mat(3, 6; 9, 12) $]

#only("1")[#voiceover("We start with the matrix that has elements 1, 2, 3, and 4.")]

#only("2")[#voiceover("Now, we multiply each element of the matrix by 3.")]

#only("3")[#voiceover("1 times 3 is 3, 2 times 3 is 6, 3 times 3 is 9, and 4 times 3 is 12. So, the resulting matrix after scalar multiplication is the matrix with elements 3, 6, 9, and 12.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Original matrix: $mat(1, 2; 3, 4)$ 📜]

#v(20pt)

#only("2-")[- Scalar: 3 🔢]

#v(20pt)

#only("3-")[- Result: $mat(3, 6; 9, 12)$ ✅]

#only("1")[#voiceover("To summarize, we started with the matrix that has elements 1, 2, 3, and 4.")]

#only("2")[#voiceover("We multiplied this matrix by the scalar 3.")]

#only("3")[#voiceover("The resulting matrix after scalar multiplication is the matrix with elements 3, 6, 9, and 12. Great work!")]

]