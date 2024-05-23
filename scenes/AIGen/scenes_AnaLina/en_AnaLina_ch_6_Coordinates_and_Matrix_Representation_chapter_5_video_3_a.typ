#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#only("1-")[That's the correct answer! Let's see how we can solve this step by step.]
#only("1")[
#voiceover("Great job! That's the correct answer. Let's see how we can solve this step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Find the Change of Basis Matrix]
#v(40pt)
#only("1-")[- New basis: $B = (mat(1; 1), mat(1; -1))$]
#v(20pt)
#only("2-")[- Change of basis matrix: $P = mat(1, 1; 1, -1)$]
#only("1")[
#voiceover("First, we need to find the change of basis matrix. The new basis is given as B equals the vectors one, one and one, negative one.")
]
#only("2")[
#voiceover("To find the change of basis matrix, we simply put these basis vectors as columns. So the change of basis matrix P is the matrix with columns one, one and one, negative one.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Find the Original Matrix]
#v(40pt)
#only("1-")[- Linear mapping: $T(x, y) = (2x, 3y)$]
#v(20pt)
#only("2-")[- Original matrix: $A = mat(2, 0; 0, 3)$]
#only("1")[
#voiceover("Next, we need to find the matrix representation of the linear mapping T with respect to the standard basis. T of x, y equals two x, three y.")
]
#only("2")[
#voiceover("This means that the original matrix A is the diagonal matrix with entries two and three on the diagonal.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Apply the Change of Basis Formula]
#v(40pt)
#only("1-")[- Formula: $A_B = P^(-1) A P$]
#v(20pt)
#only("2-")[- Calculate: $mat(1, 1; 1, -1)^(-1) mat(2, 0; 0, 3) mat(1, 1; 1, -1)$]
#only("1")[
#voiceover("Finally, we apply the change of basis formula. The matrix representation A sub B with respect to the new basis B is given by P inverse times A times P, where P is the change of basis matrix.")
]
#only("2")[
#voiceover("So we need to calculate the product of the inverse of the matrix one, one, one, negative one, then the matrix two, zero, zero, three, and then again the matrix one, one, one, negative one.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 4: Calculate the Result 🧮]
#v(40pt)
#only("1-")[- $mat(1, 1; 1, -1)^(-1) mat(2, 0; 0, 3) mat(1, 1; 1, -1)$]
#v(20pt)
#only("2-")[- $= mat(0.5, 0.5; 0.5, -0.5) mat(2, 0; 0, 3) mat(1, 1; 1, -1)$]
#v(20pt)
#only("3-")[- $= mat(2.5, 0.5; 0.5, 1.5)$]
#only("1")[
#voiceover("Let's calculate this step by step.")
]
#only("2")[
#voiceover("First, we calculate the inverse of the change of basis matrix. This is the matrix point five, point five, point five, negative point five.")
]
#only("3")[
#voiceover("Multiplying these matrices, we get the final result: the matrix two point five, point five, point five, one point five.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[The matrix representation of $T$ with respect to the new basis $B$ is:]
#v(20pt)
#only("2-")[$A_B = mat(2.5, 0.5; 0.5, 1.5)$]
#only("1")[
#voiceover("In conclusion, the matrix representation of the linear mapping T with respect to the new basis B is")
]
#only("2")[
#voiceover("the matrix two point five, point five, point five, one point five. Great work on solving this problem!")
]
]