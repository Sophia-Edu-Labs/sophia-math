#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! That's absolutely correct. Let's go through the solution step by step.")
]

#text(size: 30pt, weight: "bold")[Given Matrix]

#v(40pt)

#only("2-")[$ A = mat(5, 6; 7, 8) $]
// The original matrix is shown from slide 2 onward

#only("2")[
#voiceover("We start with the given matrix A equals the two by two matrix with elements 5, 6, 7, and 8.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Transposition]

#v(40pt)

#only("1-")[- Swap rows and columns 🔄]
// The approach of swapping rows and columns is shown from slide 1 onward

#only("1")[
#voiceover("To find the transpose, we swap the rows and columns of the matrix.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]

#v(40pt)

#only("1-")[$ A = mat(5, 6; 7, 8) $]
// The original matrix is shown from slide 1 onward

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Swap rows and columns]]]
// The swapping of rows and columns is highlighted in aqua from slide 2 onward

#v(10pt)

#only("3-")[$ A^T = mat(5, 7; 6, 8) $]
// The transposed matrix is shown from slide 3 onward

#only("1")[#voiceover("We start with the matrix A equals the two by two matrix with elements 5, 6, 7, and 8.")]

#only("2")[#voiceover("Now, we swap the rows and columns. The first row becomes the first column, and the second row becomes the second column.")]

#only("3")[#voiceover("So, the transpose of A, denoted A to the power of T, equals the two by two matrix with elements 5, 7, 6, and 8.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]

#v(40pt)

#only("1-")[The transpose of $mat(5, 6; 7, 8)$ is $mat(5, 7; 6, 8)$ ✅]

#only("1")[
#voiceover("In conclusion, the transpose of the matrix with elements 5, 6, 7, and 8 is the matrix with elements 5, 7, 6, and 8. Great work!")
]
]