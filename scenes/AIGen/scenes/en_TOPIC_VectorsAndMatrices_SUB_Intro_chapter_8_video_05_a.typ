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
#only("1-")[A = $mat(0, 1; 2, 3)$]
#v(10pt)
#only("1-")[B = $mat(4, 5; 6, 7)$]

#only("1")[
#voiceover("Great job on solving this matrix multiplication problem! Let's go through the solution step-by-step. We're given two matrices: A, which is a 2 by 2 matrix with elements 0, 1 in the first row and 2, 3 in the second row; and B, another 2 by 2 matrix with elements 4, 5 in the first row and 6, 7 in the second row.")
]

#only("2-")[Result: $C = A × B = mat(6, 7; 26, 31)$]

#only("2")[
#voiceover("The result of multiplying these matrices is a new 2 by 2 matrix C. Let's calculate each element of C.")
]

#only("3-")[$C_(11) = (0 × 4) + (1 × 6) = 0 + 6 = 6$]
#only("3")[
#voiceover("For the element in the first row and first column of C, we multiply the first row of A with the first column of B. That's 0 times 4, plus 1 times 6, which equals 6.")
]

#only("4-")[$C_(12) = (0 × 5) + (1 × 7) = 0 + 7 = 7$]
#only("4")[
#voiceover("For the element in the first row and second column, we multiply the first row of A with the second column of B. That's 0 times 5, plus 1 times 7, which equals 7.")
]

#only("5-")[$C_(21) = (2 × 4) + (3 × 6) = 8 + 18 = 26$]
#only("5")[
#voiceover("For the second row, first column element, we multiply the second row of A with the first column of B. That's 2 times 4, plus 3 times 6, which equals 26.")
]

#only("6-")[$C_(22) = (2 × 5) + (3 × 7) = 10 + 21 = 31$]
#only("6")[
#voiceover("Finally, for the second row, second column element, we multiply the second row of A with the second column of B. That's 2 times 5, plus 3 times 7, which equals 31.")
]

#only("7")[
#voiceover("And there we have it! The resulting matrix C is a 2 by 2 matrix with elements 6, 7 in the first row and 26, 31 in the second row. Well done on working through this matrix multiplication!")
]
]