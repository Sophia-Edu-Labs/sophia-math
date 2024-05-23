#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Great Job! 🎉]
#v(40pt)
#text(size: 24pt)[That's the correct matrix representation of the linear mapping $T$!]
#v(40pt)
#text(size: 24pt)[Let's see how we arrive at this solution step by step. 📝]
#only("1")[
#voiceover("Great job! That's the correct matrix representation of the linear mapping T. Let's see how we arrive at this solution step by step.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given Information]
#v(40pt)
#only("1-")[- Linear mapping $T: RR^2 -> RR^2$]
#v(20pt)
#only("2-")[- Defined by $T(x, y) = (2x, 3y)$]
#only("1")[
#voiceover("We are given a linear mapping T from R 2 to R 2.")
]
#only("2")[
#voiceover("This mapping is defined by T of x, y equals 2x, 3y.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Identify Basis Vectors]
#v(40pt)
#only("1-")[- Standard basis vectors in $RR^2$: $mat(1;0)$ and $mat(0;1)$]
#v(20pt)
#only("2-")[- Apply $T$ to these basis vectors]
#only("1")[
#voiceover("To find the matrix representation, we start with the standard basis vectors in R 2, which are 1, 0 and 0, 1.")
]
#only("2")[
#voiceover("We then apply the linear mapping T to these basis vectors.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Apply $T$ to Basis Vectors]
#v(40pt)
#only("1-")[- $T(mat(1;0)) = mat(2;0)$]
#v(20pt)
#only("2-")[- $T(mat(0;1)) = mat(0;3)$]
#only("1")[
#voiceover("T of 1, 0 equals 2 times 1, 3 times 0, which simplifies to 2, 0.")
]
#only("2")[
#voiceover("Similarly, T of 0, 1 equals 2 times 0, 3 times 1, which simplifies to 0, 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Form the Matrix]
#v(40pt)
#only("1-")[- Columns of the matrix are the transformed basis vectors]
#v(20pt)
#only("2-")[- $mat(T(mat(1;0)), T(mat(0;1))) = mat(2, 0; 0, 3)$]
#only("1")[
#voiceover("The columns of the matrix representation are the transformed basis vectors.")
]
#only("2")[
#voiceover("So the matrix representation of T is the matrix with columns 2, 0 and 0, 3, which is the matrix 2, 0; 0, 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Conclusion]
#v(40pt)
#only("1-")[The matrix representation of the linear mapping $T(x, y) = (2x, 3y)$ is:]
#v(20pt)
#only("2-")[$mat(2, 0; 0, 3)$]
#only("1")[
#voiceover("In conclusion, the matrix representation of the linear mapping T of x, y equals 2x, 3y is:")
]
#only("2")[
#voiceover("the matrix 2, 0; 0, 3. Great work on solving this problem!")
]
]