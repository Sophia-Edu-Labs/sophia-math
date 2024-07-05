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
$A = mat(1, 2; 3, 4)$  $B = mat(2, 0; 1, 3)$
]

#v(20pt)

#only("2-")[
$C = A dot B = mat(?, ?; ?, ?)$
]

#v(20pt)

#only("3-")[
$C_(11) = 1 dot 2 + 2 dot 1 = 2 + 2 = 4$
]

#only("4-")[
$C_(12) = 1 dot 0 + 2 dot 3 = 0 + 6 = 6$
]

#only("5-")[
$C_(21) = 3 dot 2 + 4 dot 1 = 6 + 4 = 10$
]

#only("6-")[
$C_(22) = 3 dot 0 + 4 dot 3 = 0 + 12 = 12$
]

#only("7-")[
$C = mat(4, 6; 10, 12)$
]

#only("1")[
#voiceover("Great job on solving this matrix multiplication problem! Let's go through the solution step by step. We start with two matrices, A and B.")
]

#only("2")[
#voiceover("To multiply these matrices, we'll calculate each element of the resulting matrix C. C will have the same number of rows as A and the same number of columns as B.")
]

#only("3")[
#voiceover("Let's start with the element in the first row, first column of C. We multiply the first row of A with the first column of B: 1 times 2, plus 2 times 1, which equals 4.")
]

#only("4")[
#voiceover("For the element in the first row, second column of C, we multiply the first row of A with the second column of B: 1 times 0, plus 2 times 3, which equals 6.")
]

#only("5")[
#voiceover("Moving to the second row, first column of C, we multiply the second row of A with the first column of B: 3 times 2, plus 4 times 1, which equals 10.")
]

#only("6")[
#voiceover("Finally, for the second row, second column of C, we multiply the second row of A with the second column of B: 3 times 0, plus 4 times 3, which equals 12.")
]

#only("7")[
#voiceover("And there we have it! The resulting matrix C is 4, 6 in the first row, and 10, 12 in the second row. Well done on solving this matrix multiplication problem!")
]
]