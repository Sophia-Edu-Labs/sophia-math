#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Gaussian Algorithm]
#v(40pt)
#only("1-")[- Solves linear systems of equations]
#v(20pt)
#only("2-")[- Transforms augmented matrix to upper triangular form]
#v(20pt)
#only("3-")[- Performs back substitution to find solution]
#only("1")[
#voiceover("The Gaussian Algorithm is a method for solving linear systems of equations.")
]
#only("2")[
#voiceover("It works by transforming the augmented matrix of the system into an upper triangular form.")
]
#only("3")[
#voiceover("Once in upper triangular form, back substitution is performed to find the solution.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example System]
#v(40pt)
#only("1-")[$ x + y = 2 $]
#v(20pt)
#only("2-")[$ 2x - y = 3 $]
#only("1")[
#voiceover("Let's consider the linear system: x plus y equals 2,")
]
#only("2")[
#voiceover("and 2x minus y equals 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Augmented Matrix]
#v(40pt)
#only("1-")[$ mat(1, 1, 2; 2, -1, 3) $]
#only("1")[
#voiceover("We start by forming the augmented matrix of the system.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Upper Triangular Form]
#v(40pt)
#only("1-")[$ mat(1, 1, 2; 0, -3, -1) $]
#only("1")[
#voiceover("We then transform this matrix into upper triangular form using elementary row operations.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Back Substitution]
#v(40pt)
#only("1-")[$ y = 1/3 $]
#v(20pt)
#only("2-")[$ x = 5/3 $]
#only("1")[
#voiceover("From the upper triangular form, we can easily find y equals one-third.")
]
#only("2")[
#voiceover("Substituting this back, we find x equals five-thirds.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[$ (x, y) = (5/3, 1/3) $]
#only("1")[
#voiceover("Therefore, the solution to the system is x equals five-thirds and y equals one-third.")
]
]