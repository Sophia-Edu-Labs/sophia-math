#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear System Solvability]
#v(40pt)
#only("1-")[Consider the system: $a_1 x_1 + a_2 x_2 = b$]
#v(20pt)
#only("2-")[Coefficient matrix: $mat(a_1, a_2)$]
#v(20pt)
#only("3-")[Augmented matrix: $mat(a_1, a_2; b)$]
#only("1")[
#voiceover("Let's consider a linear system of equations, for example, a_1 times x_1 plus a_2 times x_2 equals b.")
]
#only("2")[
#voiceover("The coefficient matrix of this system is the matrix a_1, a_2.")
]
#only("3")[
#voiceover("The augmented matrix is obtained by adding the right-hand side of the equation as a new column to the coefficient matrix, giving us the matrix a_1, a_2; b.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Rank Condition]
#v(40pt)
#only("1-")[System is solvable ⇔ $"rank"("Coefficient Matrix") = "rank"("Augmented Matrix")$]
#v(20pt)
#only("2-")[Example: $mat(1, 2; 3, 4) x = mat(5; 11)$]
#v(20pt)
#only("3-")[Coefficient matrix: $mat(1, 2; 3, 4)$, Augmented matrix: $mat(1, 2, 5; 3, 4, 11)$]
#only("1")[
#voiceover("The criterion for the solvability of a linear system states that the system is solvable if and only if the rank of the coefficient matrix equals the rank of the augmented matrix.")
]
#only("2")[
#voiceover("Let's look at an example. Consider the system 1, 2; 3, 4 times x equals 5; 11.")
]
#only("3")[
#voiceover("The coefficient matrix is 1, 2; 3, 4, and the augmented matrix is 1, 2, 5; 3, 4, 11.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Rank Calculation]
#v(40pt)
#only("1-")[Transform to row echelon form 🔄]
#v(20pt)
#only("2-")[Coefficient matrix: $mat(1, 0; 0, 1)$, rank = 2 ✅]
#v(20pt)
#only("3-")[Augmented matrix: $mat(1, 0, 1; 0, 1, 2)$, rank = 2 ✅]
#v(20pt)
#only("4-")[$"rank"("Coefficient Matrix") = "rank"("Augmented Matrix") ⇒$ System is solvable 🎉]
#only("1")[
#voiceover("To find the rank, we transform both matrices to their row echelon form using Gaussian elimination.")
]
#only("2")[
#voiceover("The row echelon form of the coefficient matrix is the identity matrix, which has rank 2.")
]
#only("3")[
#voiceover("The row echelon form of the augmented matrix is 1, 0, 1; 0, 1, 2, which also has rank 2.")
]
#only("4")[
#voiceover("Since the rank of the coefficient matrix equals the rank of the augmented matrix, the system is solvable!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[Linear system solvability 📜]
#v(20pt)
#only("2-")[Rank condition: $"rank"("Coefficient Matrix") = "rank"("Augmented Matrix")$ 🎯]
#v(20pt)
#only("3-")[Calculate ranks using row echelon form 🔢]
#v(20pt)
#only("4-")[Equal ranks ⇒ System is solvable 🙌]
#only("1")[
#voiceover("In summary, we looked at the solvability of linear systems of equations.")
]
#only("2")[
#voiceover("The key condition is that the rank of the coefficient matrix must equal the rank of the augmented matrix.")
]
#only("3")[
#voiceover("We calculate these ranks by transforming the matrices to their row echelon form.")
]
#only("4")[
#voiceover("If the ranks are equal, the system is solvable. This rank condition provides a powerful tool to analyze linear systems.")
]
]