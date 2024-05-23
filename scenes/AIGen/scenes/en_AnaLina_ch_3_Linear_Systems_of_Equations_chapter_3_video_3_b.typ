#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Not quite. Let's go through the correct solution step by step.")
]

#text(size: 30pt, weight: "bold")[Matrix]

#v(40pt)

#only("2-")[$ mat(0, 1; 1, 2) $]
// The matrix is shown from slide 2 onward

#only("2")[
#voiceover("We're given the matrix with elements zero, one in the first row and one, two in the second row.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[First Step of Gaussian Algorithm]

#v(40pt)

#only("1-")[- Swap rows if necessary]
// The first step is shown from slide 1 onward

#only("1")[
#voiceover("The first step in the Gaussian Algorithm is to swap rows if necessary. We do this to ensure that the first element in the first column is non-zero.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Applying the Step]

#v(40pt)

#only("1-")[$ mat(0, 1; 1, 2) $]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Swap rows]]]

#v(10pt)

#only("3-")[$ mat(1, 2; 0, 1) $]

#only("1")[#voiceover("Let's look at our matrix again.")]

#only("2")[#voiceover("We see that the first element in the first column is zero. So we need to swap the rows.")]

#only("3")[#voiceover("After swapping the rows, we get the matrix with elements one, two in the first row and zero, one in the second row.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]

#v(40pt)

#only("1-")[- Matrix: $mat(0, 1; 1, 2)$ 📜]

#v(20pt)

#only("2-")[- First step of Gaussian Algorithm: Swap rows if necessary 🔄]

#v(20pt)

#only("3-")[- Result: $mat(1, 2; 0, 1)$ ✅]

#only("1")[#voiceover("To summarize, we started with the matrix zero, one, one, two.")]

#only("2")[#voiceover("We applied the first step of the Gaussian Algorithm, which is to swap rows if necessary.")]

#only("3")[#voiceover("After swapping the rows, we got the matrix one, two, zero, one. Well done!")]
]