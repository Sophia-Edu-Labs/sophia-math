#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Independence Check]
#v(40pt)

#only("1-")[
- Given vectors: $mat(1; 2)$, $mat(3; 4)$
]

#only("2-")[
- Form matrix: $mat(1, 3; 2, 4)$
]

#only("1")[
#voiceover("Great job! Let's solve this step by step. We're given the vectors mat(1; 2) and mat(3; 4), and we need to determine if they're linearly independent.")
]

#only("2")[
#voiceover("To do this, we form a matrix using these vectors as columns. So our matrix is mat(1, 3; 2, 4).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Row Reduction]
#v(40pt)

#only("1-")[$ mat(1, 3; 2, 4) $]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ $R_2 -> R_2 - 2R_1$]]]

#v(10pt)

#only("3-")[$ mat(1, 3; 0, -2) $]

#only("1")[
#voiceover("We start with our matrix mat(1, 3; 2, 4).")
]

#only("2")[
#voiceover("To row reduce, we subtract 2 times the first row from the second row.")
]

#only("3")[
#voiceover("This gives us the matrix mat(1, 3; 0, -2).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Linear Independence Result]
#v(40pt)

#only("1-")[
- Row reduced form: $mat(1, 3; 0, -2)$
]

#only("2-")[
- Pivots in each column ✅
]

#only("3-")[
- Vectors are linearly independent 🎉
]

#only("1")[
#voiceover("The row reduced form of our matrix is mat(1, 3; 0, -2).")
]

#only("2")[
#voiceover("We see that there is a pivot in each column of the row reduced matrix.")
]

#only("3")[
#voiceover("This means that the only solution to the equation is the trivial solution, where all coefficients are zero. Therefore, the vectors mat(1; 2) and mat(3; 4) are linearly independent. Great work!")
]
]