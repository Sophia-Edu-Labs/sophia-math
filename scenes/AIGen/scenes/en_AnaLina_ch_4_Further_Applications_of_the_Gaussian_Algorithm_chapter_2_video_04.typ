#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solvability of Linear Systems]
#v(40pt)
#only("1-")[- Depends on the ranks of matrices 🎚️]
#v(20pt)
#only("2-")[- Coefficient matrix $A$: contains coefficients of variables]
#v(20pt)
#only("3-")[- Augmented matrix $[A|b]$: coefficient matrix with constants]
#only("1")[
#voiceover("The solvability of a linear system of equations depends on the ranks of two matrices associated with the system.")
]
#only("2")[
#voiceover("The first matrix is the coefficient matrix A, which contains the coefficients of the variables in the system.")
]
#only("3")[
#voiceover("The second matrix is the augmented matrix [A|b], which is the coefficient matrix with an additional column containing the constants from the right-hand side of the equations.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Criterion for Solvability]
#v(40pt)
#only("1-")[A system is solvable if and only if:]
#v(20pt)
#only("2-")[$ "rank"(A) = "rank"([A|b]) $]
#v(20pt)
#only("3-")[- Ranks can be found using Gaussian elimination 🔢]
#only("1")[
#voiceover("The criterion for the solvability of a linear system states that a system is solvable if and only if...")
]
#only("2")[
#voiceover("...the rank of the coefficient matrix A equals the rank of the augmented matrix [A|b].")
]
#only("3")[
#voiceover("These ranks can be determined by transforming the matrices into their row echelon forms using Gaussian elimination.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider the system:]
#v(20pt)
#only("1-")[$ mat(1, 2; 3, 4) * mat(x; y) = mat(5; 11) $]
#v(20pt)
#only("2-")[Coefficient matrix $A$: $mat(1, 2; 3, 4)$]
#v(20pt)
#only("3-")[Augmented matrix $[A|b]$: $mat(1, 2, 5; 3, 4, 11)$]
#only("1")[
#voiceover("Let's consider an example. Suppose we have the linear system (1, 2; 3, 4) times (x; y) equals (5; 11).")
]
#only("2")[
#voiceover("The coefficient matrix A is (1, 2; 3, 4).")
]
#only("3")[
#voiceover("The augmented matrix [A|b] is (1, 2, 5; 3, 4, 11).")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Rank Computation]
#v(40pt)
#only("1-")[Row echelon form of $A$: $mat(1, 2; 0, 1)$]
#v(20pt)
#only("2-")[Row echelon form of $[A|b]$: $mat(1, 2, 5; 0, 1, 2)$]
#v(20pt)
#only("3-")[Both have rank 2 ✅]
#only("1")[
#voiceover("After performing Gaussian elimination, the row echelon form of A is (1, 2; 0, 1).")
]
#only("2")[
#voiceover("The row echelon form of [A|b] is (1, 2, 5; 0, 1, 2).")
]
#only("3")[
#voiceover("Both matrices have rank 2, as they have 2 non-zero rows in their row echelon forms.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[$ "rank"(A) = "rank"([A|b]) = 2 $]
#v(20pt)
#only("2-")[The system is solvable 🎉]
#only("1")[
#voiceover("Since the rank of A equals the rank of [A|b], both being 2...")
]
#only("2")[
#voiceover("...we can conclude that the given linear system is solvable.")
]
]