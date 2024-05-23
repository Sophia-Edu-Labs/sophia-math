#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[

#only("1")[
#voiceover("Not quite. Let's go through the correct steps together.")
]

#text(size: 30pt, weight: "bold")[Matrix Representation]

#v(40pt)

#only("2-")[Linear system: $x + y = 2$, $2x - y = 3$]
// The linear system is shown from slide 2 onward

#only("2")[
#voiceover("We start with the given linear system: x plus y equals 2, and 2x minus y equals 3.")
]

]

#slide()[

#only("1")[
#voiceover("To represent this as a matrix equation, we need to identify the coefficient matrix A, the variable vector x, and the constant vector b.")
]

#text(size: 30pt, weight: "bold")[Approach]

#v(40pt)

#only("1-")[- Identify coefficient matrix $A$]
// The approach of identifying the coefficient matrix is shown from slide 1 onward

#only("2-")[- Identify variable vector $x$]
// The approach of identifying the variable vector is shown from slide 2 onward

#only("3-")[- Identify constant vector $b$]
// The approach of identifying the constant vector is shown from slide 3 onward

]

#slide()[

#text(size: 30pt, weight: "bold")[Solution Steps]

#v(40pt)

#only("1-")[Linear system: $x + y = 2$, $2x - y = 3$]

#v(10pt)

#only("2-")[#align(center)[#text(fill:aqua)[⇓ Coefficient matrix $A$]]]

#v(10pt)

#only("3-")[$ A = mat(1, 1; 2, -1) $]

#v(10pt)

#only("4-")[#align(center)[#text(fill:aqua)[⇓ Variable vector $x$]]]

#v(10pt)

#only("5-")[$ x = mat(x; y) $]

#only("1")[#voiceover("We start with the given linear system: x plus y equals 2, and 2x minus y equals 3.")]

#only("2")[#voiceover("First, we identify the coefficients of x and y in each equation. These will form our coefficient matrix A.")]

#only("3")[#voiceover("So, the coefficient matrix A is the 2 by 2 matrix with entries 1, 1 in the first row and 2, negative 1 in the second row.")]

#only("4")[#voiceover("Next, we identify the variables. In this case, they are x and y. They will form our variable vector x.")]

#only("5")[#voiceover("So, the variable vector x is the column vector with entries x and y.")]

]

#slide()[

#text(size: 30pt, weight: "bold")[Solution Steps]

#v(40pt)

#only("1-")[#align(center)[#text(fill:aqua)[⇓ Constant vector $b$]]]

#v(10pt)

#only("2-")[$ b = mat(2; 3) $]

#v(10pt)

#only("3-")[#align(center)[#text(fill:aqua)[⇓ Matrix equation]]]

#v(10pt)

#only("4-")[$ mat(1, 1; 2, -1) mat(x; y) = mat(2; 3) $]

#only("1")[#voiceover("Finally, we identify the constants on the right-hand side of each equation. These will form our constant vector b.")]

#only("2")[#voiceover("So, the constant vector b is the column vector with entries 2 and 3.")]

#only("3")[#voiceover("Now, we can write the matrix equation by multiplying the coefficient matrix A with the variable vector x and setting it equal to the constant vector b.")]

#only("4")[#voiceover("Therefore, the matrix equation representing the given linear system is: the matrix with entries 1, 1 and 2, negative 1, multiplied by the vector with entries x and y, equals the vector with entries 2 and 3.")]

]