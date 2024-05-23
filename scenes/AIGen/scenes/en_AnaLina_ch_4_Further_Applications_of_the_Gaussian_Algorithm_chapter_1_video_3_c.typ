#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[That's the correct answer! The rank of the matrix is indeed 2. Let's see how we can find this using Gaussian elimination.]
#only("1")[
#voiceover("Not quite. The rank of the matrix is actually 2. Let's see how we can find this using Gaussian elimination.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given Matrix]
#v(40pt)
#only("1-")[
$mat(1, 2, 3; 4, 5, 6; 7, 8, 9)$
]
#only("1")[
#voiceover("We start with the given matrix: 1, 2, 3; 4, 5, 6; 7, 8, 9.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Subtract Row 1]
#v(40pt)
#only("1-")[
$mat(1, 2, 3; 0, -3, -6; 0, -6, -12)$
]
#only("1")[
#voiceover("In the first step, we subtract 4 times row 1 from row 2, and 7 times row 1 from row 3. This gives us the matrix: 1, 2, 3; 0, -3, -6; 0, -6, -12.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Divide Row 2]
#v(40pt)
#only("1-")[
$mat(1, 2, 3; 0, 1, 2; 0, -6, -12)$
]
#only("1")[
#voiceover("Next, we divide row 2 by -3. This gives us the matrix: 1, 2, 3; 0, 1, 2; 0, -6, -12.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Add Row 2]
#v(40pt)
#only("1-")[
$mat(1, 2, 3; 0, 1, 2; 0, 0, 0)$
]
#only("1")[
#voiceover("In the final step, we add 6 times row 2 to row 3. This results in the row echelon form of the matrix: 1, 2, 3; 0, 1, 2; 0, 0, 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Rank of the Matrix]
#v(40pt)
#only("1-")[
- The rank is the number of non-zero rows in the row echelon form 🔢
]
#v(20pt)
#only("2-")[
$"rank"(mat(1, 2, 3; 4, 5, 6; 7, 8, 9)) = 2$
]
#only("1")[
#voiceover("The rank of a matrix is the number of non-zero rows in its row echelon form.")
]
#only("2")[
#voiceover("Since there are 2 non-zero rows in the row echelon form we found, the rank of the original matrix is 2.")
]
]