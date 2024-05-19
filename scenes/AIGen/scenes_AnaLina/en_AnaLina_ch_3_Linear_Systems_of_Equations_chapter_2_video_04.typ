#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the Gaussian Algorithm for solving linear systems of equations. 🧮")
]
#text(size: 30pt, weight: "bold")[Gaussian Algorithm Recap]
#v(40pt)
#only("2")[
#voiceover("The Gaussian Algorithm is a method for solving linear systems by transforming the coefficient matrix into an upper triangular form. 📐")
]
#only("2-")[
- Method for solving linear systems
- Transforms coefficient matrix into upper triangular form
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Steps of the Algorithm]
#v(40pt)
#only("1")[
#voiceover("The steps of the Gaussian Algorithm are:")
]
#only("2")[
#voiceover("First, swap rows if necessary. This is done to ensure that the algorithm can proceed.")
]
#only("2-")[
1. Swap rows if necessary 🔄
]
#only("3")[
#voiceover("Second, multiply rows by scalars. This is used to simplify the matrix.")
]
#only("3-")[
2. Multiply rows by scalars ✖
]
#only("4")[
#voiceover("Third, add or subtract rows to eliminate variables. This is the key step in transforming the matrix into upper triangular form.")
]
#only("4-")[
3. Add/subtract rows to eliminate variables ➕➖
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Application to Linear Systems]
#v(40pt)
#only("1")[
#voiceover("To apply the Gaussian Algorithm to solve a linear system of equations:")
]
#only("2")[
#voiceover("First, transform the augmented matrix into an upper triangular form using the steps we just discussed.")
]
#only("2-")[
1. Transform augmented matrix into upper triangular form
]
#only("3")[
#voiceover("Then, perform back substitution to find the values of the variables.")
]
#only("3-")[
2. Perform back substitution to find variable values
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution Set Structure]
#v(40pt)
#only("1")[
#voiceover("The structure of the solution set of a linear system can be one of three types, depending on the ranks of the coefficient matrix and the augmented matrix.")
]
#only("2")[
#voiceover("The solution set can be unique, meaning there is only one solution.")
]
#only("2-")[
- Unique solution (one solution) 🎯
]
#only("3")[
#voiceover("It can be infinite, meaning there are infinitely many solutions.")
]
#only("3-")[
- Infinite solutions (infinitely many solutions) ♾
]
#only("4")[
#voiceover("Or it can be nonexistent, meaning there are no solutions.")
]
#only("4-")[
- No solution (nonexistent) ❌
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1")[
#voiceover("In summary, the Gaussian Algorithm is a powerful method for solving linear systems of equations.")
]
#only("2")[
#voiceover("It transforms the coefficient matrix into an upper triangular form, making it easier to solve for the variables.")
]
#only("2-")[
- Gaussian Algorithm solves linear systems 🧮
- Transforms coefficient matrix into upper triangular form 📐
]
#only("3")[
#voiceover("The structure of the solution set depends on the ranks of the coefficient matrix and the augmented matrix.")
]
#only("3-")[
- Solution set structure depends on matrix ranks 📊
]
#only("4")[
#voiceover("Understanding the Gaussian Algorithm is crucial for working with linear systems and matrices in general. 🎓")
]
]