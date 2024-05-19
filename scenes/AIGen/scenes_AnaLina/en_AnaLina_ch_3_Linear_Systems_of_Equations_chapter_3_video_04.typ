#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Gaussian Algorithm Steps 🎹]

#v(40pt)

#only("1-")[1. Swap rows if necessary 🔀]
#v(20pt)
#only("2-")[2. Multiply rows by scalars 🧮]
#v(20pt)
#only("3-")[3. Add/subtract rows to eliminate variables ➕➖]

#only("1")[
#voiceover("Let's quickly recap the steps of the Gaussian Algorithm. The first step is to swap rows if necessary. This is done to ensure that the pivot element, the first non-zero element in each row, is in the correct position.")
]

#only("2")[
#voiceover("The second step is to multiply rows by scalars. This is done to simplify the matrix and make the pivot elements equal to 1.")
]

#only("3")[
#voiceover("The third and final step is to add or subtract rows to eliminate variables. This is done to transform the matrix into an upper triangular form, where all elements below the main diagonal are zero.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Example 🌟]

#v(40pt)

#only("1-")[Consider the matrix: $mat(2, 1; 1, 2)$]

#v(20pt)

#only("2-")[Step 1: No row swap needed ✅]
#v(20pt)
#only("3-")[Step 2: $R_1 = R_1/2$ ➗]
#v(20pt)
#only("4-")[Step 3: $R_2 = R_2 - R_1$ ➖]

#only("1")[
#voiceover("Let's look at an example. Consider this 2 by 2 matrix.")
]

#only("2")[
#voiceover("In the first step, we see that no row swap is needed, as the pivot element in the first row, 2, is already in the correct position.")
]

#only("3")[
#voiceover("In the second step, we divide the first row by 2 to make the pivot element equal to 1.")
]

#only("4")[
#voiceover("In the third step, we subtract the first row from the second row to eliminate the variable in the second row, first column.")
]

]

#slide()[
#text(size: 30pt, weight: "bold")[Result 🎉]

#v(40pt)

#only("1-")[The resulting upper triangular matrix is: $mat(1, 1/2; 0, 3/2)$]

#v(20pt)

#only("2-")[Ready for back substitution! 🔙]

#only("1")[
#voiceover("After applying these steps, we get the upper triangular matrix shown here.")
]

#only("2")[
#voiceover("This matrix is now in the correct form for back substitution, which will give us the solution to the linear system represented by the original matrix.")
]

]