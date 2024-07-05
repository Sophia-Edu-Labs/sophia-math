#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication]
#v(40pt)

#only("1-")[
$A = mat(1, 0, 2; 3, 1, 4)$ #h(20pt) $B = mat(2, 3; 1, 0; 5, 6)$
]

#v(20pt)

#only("2-")[
$C = A dot B = mat(?, ?; ?, ?)$
]

#v(20pt)

#only("3-")[
$c_(11) = 1 dot 2 + 0 dot 1 + 2 dot 5 = 2 + 0 + 10 = 12$
]

#only("4-")[
$c_(12) = 1 dot 3 + 0 dot 0 + 2 dot 6 = 3 + 0 + 12 = 15$
]

#only("5-")[
$c_(21) = 3 dot 2 + 1 dot 1 + 4 dot 5 = 6 + 1 + 20 = 26$
]

#only("6-")[
$c_(22) = 3 dot 3 + 1 dot 0 + 4 dot 6 = 9 + 0 + 24 = 33$
]

#v(20pt)

#only("7-")[
$C = mat(12, 15; 26, 33)$
]

#only("1")[
#voiceover("Great job! That's the correct answer. Let's walk through the solution step-by-step. We start with two matrices, A and B. Matrix A is a 2 by 3 matrix, and matrix B is a 3 by 2 matrix.")
]

#only("2")[
#voiceover("When we multiply these matrices, we'll get a new matrix C that has the same number of rows as A and the same number of columns as B. So, C will be a 2 by 2 matrix.")
]

#only("3")[
#voiceover("Let's calculate the first element of C, which we call c sub 1 1. It's the dot product of the first row of A and the first column of B. That's 1 times 2, plus 0 times 1, plus 2 times 5, which equals 12.")
]

#only("4")[
#voiceover("Now for c sub 1 2, we use the first row of A and the second column of B. That's 1 times 3, plus 0 times 0, plus 2 times 6, which equals 15.")
]

#only("5")[
#voiceover("For c sub 2 1, we use the second row of A and the first column of B. That's 3 times 2, plus 1 times 1, plus 4 times 5, which equals 26.")
]

#only("6")[
#voiceover("Finally, for c sub 2 2, we use the second row of A and the second column of B. That's 3 times 3, plus 1 times 0, plus 4 times 6, which equals 33.")
]

#only("7")[
#voiceover("So, our final result is the matrix C, which equals the matrix with elements 12, 15, 26, and 33. This matches the answer you provided. Well done!")
]
]