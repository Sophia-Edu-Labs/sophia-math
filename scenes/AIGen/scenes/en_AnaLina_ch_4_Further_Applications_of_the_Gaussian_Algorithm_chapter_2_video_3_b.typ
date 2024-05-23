#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[Your answer is correct! The system $mat(1, 2; 3, 4) * mat(x; y) = mat(5; 11)$ is indeed solvable. 👍]
#only("1")[
#voiceover("Not quite. Let's review the correct solution for the system with coefficient matrix 1, 2; 3, 4 and constant vector 5; 11.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Augmented Matrix]
#v(40pt)
#only("1-")[Form the augmented matrix: $mat(1, 2, 5; 3, 4, 11)$]
#only("1")[
#voiceover("The first step is to form the augmented matrix by combining the coefficient matrix and the constant vector. This gives us the matrix 1, 2, 5; 3, 4, 11.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Row Echelon Form]
#v(40pt)
#only("1-")[Transform to row echelon form using Gaussian elimination:]
#v(20pt)
#only("2-")[
$mat(1, 2, 5; 0, -2, -4)$
]
#only("1")[
#voiceover("Next, we transform the augmented matrix into row echelon form using Gaussian elimination.")
]
#only("2")[
#voiceover("After elimination, we get the matrix 1, 2, 5; 0, -2, -4.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Rank Comparison]
#v(40pt)
#only("1-")[- Rank of the coefficient matrix: 2]
#v(20pt)
#only("2-")[- Rank of the augmented matrix: 2]
#v(20pt)
#only("3-")[The ranks are equal! ✅]
#only("1")[
#voiceover("Now, we compare the ranks of the coefficient matrix and the augmented matrix. The rank of the coefficient matrix is 2, as both rows are linearly independent.")
]
#only("2")[
#voiceover("Similarly, the rank of the augmented matrix is also 2.")
]
#only("3")[
#voiceover("Since the ranks are equal, the system is solvable!")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[The system $mat(1, 2; 3, 4) * mat(x; y) = mat(5; 11)$ is solvable because:]
#v(20pt)
#only("2-")[- The rank of the coefficient matrix equals the rank of the augmented matrix. 🎓]
#only("1")[
#voiceover("In conclusion, the system with coefficient matrix 1, 2; 3, 4 and constant vector 5; 11 is solvable because...")
]
#only("2")[
#voiceover("the rank of the coefficient matrix equals the rank of the augmented matrix. Well done!")
]
]