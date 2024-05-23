#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Gaussian Algorithm Steps]
#v(40pt)
#only("1-")[1️⃣ Swap rows if necessary]
#only("1")[
#voiceover("The Gaussian Algorithm is a method for solving linear systems of equations. Let's go through the steps. First, swap rows if necessary. This step ensures that the first non-zero entry in each row is to the right of the first non-zero entry in the row above it.")
]
#v(20pt)
#only("2-")[2️⃣ Multiply rows by scalars]
#only("2")[
#voiceover("Next, multiply rows by scalars. This step is used to simplify the entries in the matrix.")
]
#v(20pt)
#only("3-")[3️⃣ Add/subtract rows to eliminate variables]
#only("3")[
#voiceover("Finally, add or subtract rows to eliminate variables. This step is repeated until the matrix is in upper triangular form, meaning all entries below the main diagonal are zero.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider the system: $x + y = 2$, $2x - y = 3$]
#only("1")[
#voiceover("Let's see an example. Consider the system: x plus y equals 2, and 2x minus y equals 3.")
]
#v(20pt)
#only("2-")[Augmented matrix: $mat(1, 1, 2; 2, -1, 3)$]
#only("2")[
#voiceover("We can represent this as an augmented matrix: 1, 1, 2; 2, -1, 3.")
]
#v(20pt)
#only("3-")[Swap rows: $mat(1, 1, 2; 2, -1, 3)$ (not needed)]
#only("3")[
#voiceover("In this case, swapping rows is not needed, as the first non-zero entry in the second row is already to the right of the first non-zero entry in the first row.")
]
#v(20pt)
#only("4-")[Multiply $R_2$ by $-1/2$: $mat(1, 1, 2; 0, -3/2, -3/2)$]
#only("4")[
#voiceover("Next, we multiply the second row by negative one-half to get: 1, 1, 2; 0, -3/2, -3/2.")
]
#v(20pt)
#only("5-")[Subtract $R_2$ from $R_1$: $mat(1, 0, 7/2; 0, 1, 1)$]
#only("5")[
#voiceover("Finally, we subtract the second row from the first row to eliminate the variable y from the first equation. This gives us the upper triangular matrix: 1, 0, 7/2; 0, 1, 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Back Substitution]
#v(40pt)
#only("1-")[From $mat(1, 0, 5/2; 0, 1, -1/3)$, we get:]
#only("1")[
#voiceover("From the upper triangular matrix, we can now solve for the variables using back substitution.")
]
#v(20pt)
#only("2-")[$y = -1/3$ from $R_2$]
#only("2")[
#voiceover("From the second row, we immediately get y equals negative one-third.")
]
#v(20pt)
#only("3-")[$x = 5/2 - 0 dot y = 5/2$ from $R_1$]
#only("3")[
#voiceover("Substituting this into the first row, we get x equals 5/2 minus 0 times y, which is simply 5/2.")
]
#v(20pt)
#only("4-")[Solution: $x = 5/2$, $y = -1/3$]
#only("4")[
#voiceover("Therefore, the solution to the system is x equals 5/2 and y equals negative one-third.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[1️⃣ Swap rows]
#only("1")[
#voiceover("To summarize, the Gaussian Algorithm consists of three main steps:")
]
#v(20pt)
#only("2-")[2️⃣ Multiply rows by scalars]
#only("2")[
#voiceover("First, swap rows if necessary. Second, multiply rows by scalars.")
]
#v(20pt)
#only("3-")[3️⃣ Add/subtract rows to eliminate variables]
#only("3")[
#voiceover("And third, add or subtract rows to eliminate variables until the matrix is in upper triangular form.")
]
#v(20pt)
#only("4-")[🎯 Goal: Upper triangular matrix]
#only("4")[
#voiceover("The goal is to transform the augmented matrix into an upper triangular matrix, from which the solution can be obtained by back substitution.")
]
]