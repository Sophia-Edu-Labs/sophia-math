#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear System of Equations]
#v(40pt)
#only("1-")[- Example: $x + 2y = 3$, $4x - y = 5$]
#v(20pt)
#only("2-")[- Can be represented as a matrix equation]
#only("1")[
#voiceover("Consider a linear system of equations, for example, x plus 2y equals 3 and 4x minus y equals 5.")
]
#only("2")[
#voiceover("This system can be represented as a matrix equation.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrix Equation]
#v(40pt)
#only("1-")[$ A x = b $]
#v(20pt)
#only("2-")[- $A$: Coefficient matrix]
#v(10pt)
#only("3-")[- $x$: Variable vector]
#v(10pt)
#only("4-")[- $b$: Constant vector]
#only("1")[
#voiceover("The matrix equation is written as A times x equals b.")
]
#only("2")[
#voiceover("Here, A is the coefficient matrix.")
]
#only("3")[
#voiceover("x is the variable vector.")
]
#only("4")[
#voiceover("And b is the constant vector.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Coefficient Matrix]
#v(40pt)
#only("1-")[$ A = mat(1, 2; 4, -1) $]
#v(20pt)
#only("2-")[- Coefficients of the variables]
#only("1")[
#voiceover("In our example, the coefficient matrix A is the 2 by 2 matrix with entries 1, 2, 4, and negative 1.")
]
#only("2")[
#voiceover("These are the coefficients of the variables in the original system of equations.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Variable and Constant Vectors]
#v(40pt)
#only("1-")[$ x = mat(x; y) $]
#v(20pt)
#only("2-")[$ b = mat(3; 5) $]
#only("1")[
#voiceover("The variable vector x is the column vector with entries x and y.")
]
#only("2")[
#voiceover("And the constant vector b is the column vector with entries 3 and 5, the constants from the original system.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrix Equation]
#v(40pt)
#only("1-")[$ mat(1, 2; 4, -1) mat(x; y) = mat(3; 5) $]
#v(20pt)
#only("2-")[- Compact representation of the system]
#only("1")[
#voiceover("Putting it all together, the matrix equation representing our system is: the matrix with entries 1, 2, 4, and negative 1, times the vector with entries x and y, equals the vector with entries 3 and 5.")
]
#only("2")[
#voiceover("This matrix equation is a compact way to represent the original system of linear equations.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Linear system → Matrix equation 📜]
#v(20pt)
#only("2-")[- $A$: Coefficients, $x$: Variables, $b$: Constants]
#v(20pt)
#only("3-")[- Compact representation 📦]
#only("1")[
#voiceover("In summary, a linear system of equations can be represented as a matrix equation.")
]
#only("2")[
#voiceover("The coefficient matrix A contains the coefficients, the variable vector x contains the variables, and the constant vector b contains the constants from the original system.")
]
#only("3")[
#voiceover("This matrix equation provides a compact way to represent and work with the system of linear equations.")
]
]