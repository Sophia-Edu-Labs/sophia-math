#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Great job! That's the correct solution. Let's go through the steps together.")
]
#text(size: 30pt, weight: "bold")[Given Matrices]
#v(40pt)
#only("2-")[- $A = mat(1, 2; 3, 4)$]
#v(20pt)
#only("3-")[- $B = mat(5, 6; 7, 8)$]
#only("2")[
#voiceover("We are given matrix A, which is a 2 by 2 matrix with elements 1, 2, 3, and 4.")
]
#only("3")[
#voiceover("And matrix B, also a 2 by 2 matrix with elements 5, 6, 7, and 8.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Matrix Addition]
#v(40pt)
#only("1-")[$ A + B = mat(1, 2; 3, 4) + mat(5, 6; 7, 8) $]
#v(20pt)
#only("2-")[$ A + B = mat(1+5, 2+6; 3+7, 4+8) $]
#v(20pt)
#only("3-")[$ A + B = mat(6, 8; 10, 12) $]
#only("1")[
#voiceover("First, we add matrices A and B. To do this, we add corresponding elements.")
]
#only("2")[
#voiceover("1 plus 5 is 6, 2 plus 6 is 8, 3 plus 7 is 10, and 4 plus 8 is 12.")
]
#only("3")[
#voiceover("So, A plus B equals the matrix with elements 6, 8, 10, and 12.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Transposition]
#v(40pt)
#only("1-")[$ (A + B)^T = mat(6, 8; 10, 12)^T $]
#v(20pt)
#only("2-")[$ (A + B)^T = mat(6, 10; 8, 12) $]
#only("1")[
#voiceover("Next, we need to find the transpose of A plus B. To find the transpose, we swap the rows and columns.")
]
#only("2")[
#voiceover("The first row becomes the first column, and the second row becomes the second column.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solution]
#v(40pt)
#only("1-")[$ (A + B)^T = mat(6, 10; 8, 12) $]
#only("1")[
#voiceover("Therefore, the transpose of A plus B is the matrix with elements 6, 10, 8, and 12. Excellent work on solving this problem! 🌟")
]
]