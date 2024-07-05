#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication]
#v(40pt)

#only("1-")[Given matrices:]
#v(10pt)
#only("1-")[A = #text(fill: blue)[$mat(1, 2, 3; 4, 5, 6)$]]
#v(10pt)
#only("1-")[B = #text(fill: green)[$mat(1, 4; 2, 5; 3, 6)$]]

#only("1")[
#voiceover("Let's review the correct solution step by step. We're given two matrices: A, which is a 2 by 3 matrix, and B, which is a 3 by 2 matrix.")
]

#only("2-")[Result: C = A × B = #text(fill: red)[$mat(14, 32; 32, 77)$]]

#only("2")[
#voiceover("When we multiply these matrices, we get a 2 by 2 matrix as our result. Let's see how we arrive at this answer.")
]

#only("3-")[Step 1: Multiply row 1 of A with columns of B]
#v(10pt)
#only("3-")[#text(fill: purple)[$c_(11) = 1 dot 1 + 2 dot 2 + 3 dot 3 = 1 + 4 + 9 = 14$]]
#v(5pt)
#only("3-")[#text(fill: purple)[$c_(12) = 1 dot 4 + 2 dot 5 + 3 dot 6 = 4 + 10 + 18 = 32$]]

#only("3")[
#voiceover("Let's start with the first row of A and multiply it with each column of B. For c11, we get 1 times 1, plus 2 times 2, plus 3 times 3, which equals 14. For c12, we get 1 times 4, plus 2 times 5, plus 3 times 6, which equals 32.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication]
#v(40pt)

#only("1-")[Step 2: Multiply row 2 of A with columns of B]
#v(10pt)
#only("1-")[#text(fill: orange)[$c_(21) = 4 dot 1 + 5 dot 2 + 6 dot 3 = 4 + 10 + 18 = 32$]]
#v(5pt)
#only("1-")[#text(fill: orange)[$c_(22) = 4 dot 4 + 5 dot 5 + 6 dot 6 = 16 + 25 + 36 = 77$]]

#only("1")[
#voiceover("Now, let's do the same with the second row of A. For c21, we get 4 times 1, plus 5 times 2, plus 6 times 3, which equals 32. For c22, we get 4 times 4, plus 5 times 5, plus 6 times 6, which equals 77.")
]

#only("2-")[Final Result:]
#v(10pt)
#only("2-")[C = #text(fill: red)[$mat(14, 32; 32, 77)$]]

#only("2")[
#voiceover("And there we have it! Our final result is a 2 by 2 matrix with elements 14, 32 in the first row, and 32, 77 in the second row. This demonstrates how matrix multiplication works for non-square matrices, where the number of columns in the first matrix must equal the number of rows in the second matrix.")
]
]