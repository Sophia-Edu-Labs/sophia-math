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
$A = mat(2, 1; 0, 3)$   $B = mat(1, 4; 5, 2)$
]

#v(20pt)

#only("2-")[
$C = A dot B = mat(?, ?; ?, ?)$
]

#v(20pt)

#only("3-")[
$C_(11) = 2 dot 1 + 1 dot 5 = 2 + 5 = 7$
]

#only("4-")[
$C_(12) = 2 dot 4 + 1 dot 2 = 8 + 2 = 10$
]

#only("5-")[
$C_(21) = 0 dot 1 + 3 dot 5 = 0 + 15 = 15$
]

#only("6-")[
$C_(22) = 0 dot 4 + 3 dot 2 = 0 + 6 = 6$
]

#only("7-")[
$C = mat(7, 10; 15, 6)$
]

#only("1")[
#voiceover("Great job on solving this matrix multiplication problem! Let's go through the solution step by step. We start with two matrices, A and B.")
]

#only("2")[
#voiceover("To multiply these matrices, we'll calculate each element of the resulting matrix C. Remember, the result will have the same number of rows as A and the same number of columns as B.")
]

#only("3")[
#voiceover("Let's start with the top-left element of C. We multiply the first row of A with the first column of B. That's 2 times 1, plus 1 times 5, which equals 7.")
]

#only("4")[
#voiceover("For the top-right element, we multiply the first row of A with the second column of B. That's 2 times 4, plus 1 times 2, which equals 10.")
]

#only("5")[
#voiceover("Moving to the bottom-left element, we multiply the second row of A with the first column of B. That's 0 times 1, plus 3 times 5, which equals 15.")
]

#only("6")[
#voiceover("Finally, for the bottom-right element, we multiply the second row of A with the second column of B. That's 0 times 4, plus 3 times 2, which equals 6.")
]

#only("7")[
#voiceover("And there we have it! The resulting matrix C is 7, 10 in the first row, and 15, 6 in the second row. Well done on solving this matrix multiplication problem!")
]
]