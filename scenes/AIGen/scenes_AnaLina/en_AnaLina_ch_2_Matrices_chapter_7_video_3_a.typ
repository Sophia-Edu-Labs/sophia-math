#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse of a Matrix]
#v(40pt)
#only("1-")[Given: $mat(1, 2; 3, 4)$]
#v(20pt)
#only("2-")[Goal: Find the inverse matrix]
#only("1")[
#voiceover("Great job! You're absolutely right. Let's find the inverse of the matrix with elements 1, 2, 3, and 4.")
]
#only("2")[
#voiceover("Our goal is to find a matrix that, when multiplied by the original matrix, results in the identity matrix.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Calculate the Determinant]
#v(40pt)
#only("1-")[$ det(mat(1, 2; 3, 4)) = 1 dot 4 - 2 dot 3 $]
#v(20pt)
#only("2-")[$ det(mat(1, 2; 3, 4)) = 4 - 6 = -2 $]
#only("1")[
#voiceover("First, we calculate the determinant of the matrix. For a 2 by 2 matrix, the determinant is the product of the elements on the main diagonal minus the product of the elements on the other diagonal.")
]
#only("2")[
#voiceover("So, the determinant is 1 times 4 minus 2 times 3, which equals negative 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Adjugate Matrix]
#v(40pt)
#only("1-")[$ mat(a, b; c, d)^(-1) = 1/det(mat(a, b; c, d)) dot mat(d, -b; -c, a) $]
#v(20pt)
#only("2-")[$ mat(1, 2; 3, 4)^(-1) = -1/2 dot mat(4, -2; -3, 1) $]
#only("1")[
#voiceover("Next, we find the adjugate matrix. For a 2 by 2 matrix with elements a, b, c, and d, the adjugate matrix is d, negative b, negative c, a, divided by the determinant.")
]
#only("2")[
#voiceover("Applying this to our matrix, we get negative one half times the matrix with elements 4, negative 2, negative 3, and 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Simplify]
#v(40pt)
#only("1-")[$ mat(1, 2; 3, 4)^(-1) = mat(-2, 1; 1.5, -0.5) $]
#only("1")[
#voiceover("Finally, we simplify the matrix by multiplying each element by negative one half. This gives us the inverse matrix with elements negative 2, 1, 1.5, and negative 0.5.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Verification]
#v(40pt)
#only("1-")[$ mat(1, 2; 3, 4) dot mat(-2, 1; 1.5, -0.5) = mat(1, 0; 0, 1) $]
#only("1")[
#voiceover("We can verify that this is indeed the inverse matrix by multiplying it with the original matrix. As expected, this results in the identity matrix.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Calculate the determinant 🧮]
#v(20pt)
#only("2-")[- Find the adjugate matrix 🔄]
#v(20pt)
#only("3-")[- Simplify the result ✨]
#v(20pt)
#only("4-")[- Verify by multiplying with the original matrix ✅]
#only("1")[
#voiceover("To summarize, we first calculated the determinant of the matrix.")
]
#only("2")[
#voiceover("Then, we found the adjugate matrix by swapping elements, negating some, and dividing by the determinant.")
]
#only("3")[
#voiceover("We simplified the result to get the final inverse matrix.")
]
#only("4")[
#voiceover("And lastly, we verified the result by multiplying the inverse matrix with the original matrix, which gave us the identity matrix.")
]
]