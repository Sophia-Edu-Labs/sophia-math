#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Gaussian Algorithm 🧮]
#v(40pt)
#only("1-")[- Method for solving linear systems]
#v(20pt)
#only("2-")[- Transforms coefficient matrix into upper triangular form]
#only("1")[
#voiceover("The Gaussian Algorithm is a method for solving linear systems of equations.")
]
#only("2")[
#voiceover("It works by transforming the coefficient matrix of the system into an upper triangular form.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Upper Triangular Form 📐]
#v(40pt)
#only("1-")[
- Matrix with zeros below the main diagonal
#v(20pt)
- Example: $mat(1, 2, 3; 0, 4, 5; 0, 0, 6)$
]
#only("1")[
#voiceover("An upper triangular matrix has all elements below the main diagonal equal to zero. For example, this matrix is upper triangular, as all elements below the diagonal from top left to bottom right are zero.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Transformation Steps 🔄]
#v(40pt)
#only("1-")[1. Swap rows if necessary]
#v(20pt)
#only("2-")[2. Multiply rows by scalars]
#v(20pt)
#only("3-")[3. Add/subtract rows to eliminate variables]
#only("1")[
#voiceover("The transformation is done in three steps. First, rows are swapped if necessary to ensure the first element in each row is non-zero.")
]
#only("2")[
#voiceover("Second, rows are multiplied by scalars to make the first non-zero element in each row equal to one.")
]
#only("3")[
#voiceover("Finally, rows are added or subtracted from each other to eliminate variables and create zeros below the main diagonal.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solving the System ✔]
#v(40pt)
#only("1-")[- After transformation, solve by back-substitution]
#v(20pt)
#only("2-")[- Start from the last equation, work upwards]
#only("1")[
#voiceover("Once the matrix is in upper triangular form, the system can be solved by back-substitution.")
]
#only("2")[
#voiceover("This means starting from the last equation, which will have only one unknown, and then substituting this value into the equation above, and so on, working upwards until all unknowns are found.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary 📝]
#v(40pt)
#only("1-")[- Gaussian Algorithm: method for solving linear systems]
#v(20pt)
#only("2-")[- Transforms coefficient matrix to upper triangular form]
#v(20pt)
#only("3-")[- Solve by back-substitution]
#only("1")[
#voiceover("In summary, the Gaussian Algorithm is a method for solving linear systems of equations.")
]
#only("2")[
#voiceover("It transforms the coefficient matrix into upper triangular form using row operations.")
]
#only("3")[
#voiceover("Once in this form, the system can be solved by back-substitution, starting from the last equation and working upwards.")
]
]