#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Representation]
#v(40pt)
#only("1-")[- Linear system of equations 📜]
#v(20pt)
#only("2-")[- Matrix equation: $A x = b$ 🧮]
#only("1")[
#voiceover("Let's recap the matrix representation of a linear system of equations.")
]
#only("2")[
#voiceover("A linear system can be represented as a matrix equation A x equals b.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Components]
#v(40pt)
#only("1-")[- $A$: coefficient matrix 📊]
#v(20pt)
#only("2-")[- $x$: variable vector 🎛]
#v(20pt)
#only("3-")[- $b$: constant vector 📐]
#only("1")[
#voiceover("In this equation, A represents the coefficient matrix.")
]
#only("2")[
#voiceover("x represents the variable vector.")
]
#only("3")[
#voiceover("And b represents the constant vector.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[- System: $x + y = 2$, $2x - y = 3$]
#v(20pt)
#only("2-")[- Matrix equation: $mat(1, 1; 2, -1) mat(x; y) = mat(2; 3)$]
#only("1")[
#voiceover("For example, consider the system x plus y equals 2 and 2x minus y equals 3.")
]
#only("2")[
#voiceover("In matrix form, this becomes the matrix with rows 1, 1 and 2, negative 1, multiplied by the vector with elements x and y, equals the vector with elements 2 and 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Linear system ➡️ matrix equation]
#v(20pt)
#only("2-")[- $A$: coefficients, $x$: variables, $b$: constants]
#v(20pt)
#only("3-")[- Compact representation 📦]
#only("1")[
#voiceover("To summarize, a linear system of equations can be represented as a matrix equation.")
]
#only("2")[
#voiceover("Where A contains the coefficients, x contains the variables, and b contains the constants.")
]
#only("3")[
#voiceover("This provides a compact way to represent and work with linear systems.")
]
]