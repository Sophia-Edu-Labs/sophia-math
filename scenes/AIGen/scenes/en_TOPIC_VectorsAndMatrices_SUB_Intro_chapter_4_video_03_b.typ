#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Adding Matrices]
#v(40pt)

#only("1-")[Given matrices:]
#v(10pt)
#only("1-")[A = $mat(5, 6; 7, 8)$]
#v(10pt)
#only("1-")[B = $mat(1, 2; 3, 4)$]

#only("2-")[Step 1: Add corresponding elements]
#v(10pt)
#only("2-")[$mat(5+1, 6+2; 7+3, 8+4)$]

#only("3-")[Step 2: Simplify]
#v(10pt)
#only("3-")[$mat(6, 8; 10, 12)$]

#only("1")[
#voiceover("That's okay! Let's review the correct solution step-by-step. We start with two matrices: A and B. Matrix A is a 2-by-2 matrix with elements 5, 6, 7, and 8. Matrix B is also a 2-by-2 matrix with elements 1, 2, 3, and 4.")
]

#only("2")[
#voiceover("To add these matrices, we add the corresponding elements. That means we add the elements in the same position in each matrix. So, we add 5 and 1, 6 and 2, 7 and 3, and 8 and 4.")
]

#only("3")[
#voiceover("After simplifying, we get our result: a new 2-by-2 matrix with elements 6, 8, 10, and 12. This is indeed the correct answer: 6, 8 in the first row, and 10, 12 in the second row.")
]
]