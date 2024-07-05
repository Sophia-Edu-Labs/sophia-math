#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Scalar Multiplication of Matrices]
#v(40pt)

#only("1-")[Given: $A = mat(1, 0; 0, 1)$ and scalar $k = 5$]
#v(20pt)

#only("2-")[Step 1: Multiply each element by $k$]
#v(10pt)

#only("3-")[$ k dot A = 5 dot mat(1, 0; 0, 1) = mat(5 dot 1, 5 dot 0; 5 dot 0, 5 dot 1) $]
#v(20pt)

#only("4-")[Step 2: Simplify]
#v(10pt)

#only("5-")[$ = mat(5, 0; 0, 5) $]

#only("1")[
#voiceover("Not quite. Let's walk through the correct solution step-by-step.")
]

#only("2")[
#voiceover("We start with the identity matrix A and we need to multiply it by the scalar 5. Remember, when we multiply a matrix by a scalar, we multiply every element in the matrix by that scalar.")
]

#only("3")[
#voiceover("So, we multiply each element of the matrix by 5. The top-left element becomes 5 times 1, which is 5. The top-right and bottom-left elements become 5 times 0, which is still 0. And the bottom-right element becomes 5 times 1, which is 5.")
]

#only("4")[
#voiceover("Now, let's simplify our result.")
]

#only("5")[
#voiceover("After simplification, we get a matrix with 5 in the top-left and bottom-right positions, and 0 in the other positions. This is our final answer: a 2 by 2 matrix with 5s on the main diagonal and 0s elsewhere.")
]
]