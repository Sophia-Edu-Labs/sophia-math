#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Systems of Equations]
#v(40pt)
#only("1-")[
- Multiple linear equations 📜
- Same set of variables 🔍
]
#only("1")[#voiceover("A linear system of equations consists of multiple linear equations with the same set of variables.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[
$x + y = 2$
$2x - y = 3$
]
#only("1")[#voiceover("For example, the equations x plus y equals 2 and 2x minus y equals 3 form a linear system because they share the same variables x and y.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrix Representation]
#v(40pt)
#only("1-")[
$mat(1, 1; 2, -1) mat(x; y) = mat(2; 3)$
]
#only("1")[#voiceover("A linear system can be represented as a matrix equation A x equals b, where A is the coefficient matrix, x is the variable vector, and b is the constant vector.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution Methods]
#v(40pt)
#only("1-")[
- Gaussian Algorithm 🧮
- Transform to upper triangular form 📐
]
#only("1")[#voiceover("The Gaussian Algorithm is a method for solving linear systems by transforming the coefficient matrix into an upper triangular form.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution Set]
#v(40pt)
#only("1-")[
- Unique 🎯
- Infinite ∞
- Nonexistent ∅
]
#only("1")[#voiceover("The solution set of a linear system can be unique, infinite, or nonexistent, depending on the rank of the coefficient matrix and the augmented matrix.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[
- Linear systems: multiple equations, same variables 📜🔍
- Matrix representation: $A x = b$ 🧮
- Gaussian Algorithm: transform to upper triangular 📐
- Solution set: unique, infinite, or nonexistent 🎯∞∅
]
#only("1")[#voiceover("In summary, a linear system of equations consists of multiple linear equations with the same set of variables. It can be represented as a matrix equation and solved using the Gaussian Algorithm. The solution set can be unique, infinite, or nonexistent, depending on the ranks of the coefficient and augmented matrices.")]
]