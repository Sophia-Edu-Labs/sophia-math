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
$A = mat(3, 0; 2, 1)$ and $B = mat(1, 2; 4, 3)$
]

#v(20pt)

#only("2-")[
$C = A dot B = mat(3, 0; 2, 1) dot mat(1, 2; 4, 3)$
]

#v(20pt)

#only("3-")[
$= mat((3 dot 1 + 0 dot 4), (3 dot 2 + 0 dot 3); (2 dot 1 + 1 dot 4), (2 dot 2 + 1 dot 3))$
]

#v(20pt)

#only("4-")[
$= mat(3, 6; 6, 7)$
]

#only("1")[
#voiceover("Let's review the correct solution step by step. We start with two matrices, A and B.")
]

#only("2")[
#voiceover("To multiply these matrices, we'll use the standard matrix multiplication method. We multiply each row of the first matrix by each column of the second matrix.")
]

#only("3")[
#voiceover("Let's break it down. For the top-left element, we multiply 3 by 1 and 0 by 4, then add these results. For the top-right element, we multiply 3 by 2 and 0 by 3, then add. We do the same for the bottom row.")
]

#only("4")[
#voiceover("After performing these calculations, we get our final result: a 2 by 2 matrix with elements 3, 6, 6, and 7.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Detailed Calculation]
#v(40pt)

#only("1-")[
Top-left element: $3 dot 1 + 0 dot 4 = 3 + 0 = 3$
]

#v(20pt)

#only("2-")[
Top-right element: $3 dot 2 + 0 dot 3 = 6 + 0 = 6$
]

#v(20pt)

#only("3-")[
Bottom-left element: $2 dot 1 + 1 dot 4 = 2 + 4 = 6$
]

#v(20pt)

#only("4-")[
Bottom-right element: $2 dot 2 + 1 dot 3 = 4 + 3 = 7$
]

#only("1")[
#voiceover("Let's look at each element of the resulting matrix in detail. For the top-left element, we multiply 3 by 1 and add it to 0 times 4. This gives us 3 plus 0, which equals 3.")
]

#only("2")[
#voiceover("Moving to the top-right element, we multiply 3 by 2 and add it to 0 times 3. This results in 6 plus 0, equaling 6.")
]

#only("3")[
#voiceover("For the bottom-left element, we multiply 2 by 1 and add it to 1 times 4. This gives us 2 plus 4, which equals 6.")
]

#only("4")[
#voiceover("Finally, for the bottom-right element, we multiply 2 by 2 and add it to 1 times 3. This results in 4 plus 3, equaling 7.")
]
]


#slide()[
#text(size: 30pt, weight: "bold")[Final Result]
#v(40pt)

#only("1-")[
$C = A dot B = mat(3, 6; 6, 7)$
]

#v(20pt)

#only("2-")[
✅ Correct solution!
]

#v(20pt)

#only("3-")[
💡 Remember: In matrix multiplication, the number of columns in the first matrix must equal the number of rows in the second matrix.
]

#only("1")[
#voiceover("So, our final result for the matrix multiplication of A and B is this 2 by 2 matrix. This is indeed the correct answer!")
]

#only("2")[
#voiceover("You've done an excellent job in solving this problem. Matrix multiplication can be tricky, but you've mastered it well.")
]

#only("3")[
#voiceover("As a quick reminder, always check that the dimensions of your matrices allow for multiplication. The number of columns in the first matrix must equal the number of rows in the second matrix. Keep practicing, and you'll become even more proficient at matrix operations!")
]
]