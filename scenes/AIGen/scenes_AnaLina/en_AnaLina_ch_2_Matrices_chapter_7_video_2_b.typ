#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse Matrix]
#v(40pt)
Given the matrix $mat(2, 1; 1, 2)$, what is its inverse?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[b) $mat(0.5, -0.25; -0.25, 0.5)$]#only("2-")[#text(fill:green)[b) $mat(0.5, -0.25; -0.25, 0.5)$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[a) $mat(2, -1; -1, 2)$]#only("3-")[#text(fill:red)[a) $mat(2, -1; -1, 2)$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $mat(1, 0; 0, 1)$]#only("4-")[#text(fill:red)[c) $mat(1, 0; 0, 1)$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $mat(2, 1; 1, 2)$]#only("5-")[#text(fill:red)[d) $mat(2, 1; 1, 2)$]]
#only("1")[#voiceover("Great job! You've correctly identified the inverse of the given matrix.")]
#only("2")[#voiceover("Indeed, the correct answer is b) mat(0.5, -0.25; -0.25, 0.5). Let's see how we arrive at this result.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Given: $A = mat(2, 1; 1, 2)$]
#v(20pt)
#only("2-")[Step 1: Calculate the determinant of $A$.]
#v(10pt)
#only("3-")[
$det(A) = (2 dot 2) - (1 dot 1)$
#v(10pt)
$= 4 - 1 = 3$
]
#v(20pt)
#only("4-")[Step 2: Find the adjugate matrix of $A$.]
#v(10pt)
#only("5-")[
$"adj"(A) = mat(2, -1; -1, 2)$
]

#only("1")[#voiceover("We are given the matrix A equals mat(2, 1; 1, 2).")]
#only("2")[#voiceover("The first step is to calculate the determinant of matrix A.")]
#only("3")[#voiceover("The determinant is calculated by multiplying the elements on the main diagonal and subtracting the product of the elements on the other diagonal. Here, it's 2 times 2 minus 1 times 1, which equals 3.")]
#only("4")[#voiceover("The next step is to find the adjugate matrix of A.")]
#only("5")[#voiceover("The adjugate matrix is obtained by interchanging the elements on the main diagonal, negating the elements on the other diagonal, and then transposing the resulting matrix. So, the adjugate of A is mat(2, -1; -1, 2).")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution (cont.)]
#v(40pt)
#only("1-")[Step 3: Calculate the inverse using the formula $A^(-1) = (1/"det"(A)) dot "adj"(A)$.]
#v(10pt)
#only("2-")[
$A^(-1) = (1/3) dot mat(2, -1; -1, 2)$
#v(10pt)
$= mat(2/3, -1/3; -1/3, 2/3)$
]
#v(20pt)
#only("3-")[Therefore, the inverse of $mat(2, 1; 1, 2)$ is $mat(2/3, -1/3; -1/3, 2/3)$. 🎉]

#only("1")[#voiceover("Now, we can calculate the inverse using the formula: the inverse of A equals 1 over the determinant of A times the adjugate of A.")]
#only("2")[#voiceover("Substituting the values, we get 1 over 3 times mat(2, -1; -1, 2). Simplifying this, we arrive at mat(2/3, -1/3; -1/3, 2/3).")]
#only("3")[#voiceover("Therefore, the inverse of the matrix mat(2, 1; 1, 2) is indeed mat(2/3, -1/3; -1/3, 2/3). Great work!")]
]