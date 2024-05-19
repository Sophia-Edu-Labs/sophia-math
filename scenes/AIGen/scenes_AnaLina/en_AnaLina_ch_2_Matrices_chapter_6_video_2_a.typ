#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Inverse of a Matrix]
#v(40pt)
#only("1-")[What is the inverse of $mat(1, 0; 0, 1)$?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[a) $mat(1, 0; 0, 1)$]#only("2-")[#text(fill:green)[a) $mat(1, 0; 0, 1)$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) $mat(0, 1; 1, 0)$]#only("3-")[#text(fill:red)[b) $mat(0, 1; 1, 0)$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $mat(1, 1; 1, 1)$]#only("4-")[#text(fill:red)[c) $mat(1, 1; 1, 1)$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $mat(2, 0; 0, 2)$]#only("5-")[#text(fill:red)[d) $mat(2, 0; 0, 2)$]]
#v(40pt)

#only("1")[#voiceover("That's right, great job!")]
// Very briefly Talk about a and why it is correct
#only("2")[#voiceover("The correct answer is a) $mat(1, 0; 0, 1)$. The matrix $mat(1, 0; 0, 1)$ is the identity matrix, and the inverse of the identity matrix is itself.")]
// Very briefly Talk about b and why it is incorrect
#only("3")[#voiceover("Option b) $mat(0, 1; 1, 0)$ is incorrect. This matrix swaps the elements on the main diagonal, which is not the inverse of the given matrix.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("Option c) $mat(1, 1; 1, 1)$ is also incorrect. This matrix has all elements equal to 1, which is not the inverse of the given matrix.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And option d) $mat(2, 0; 0, 2)$ is incorrect as well. This matrix multiplies the diagonal elements by 2, which does not result in the inverse of the given matrix.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[To find the inverse of a matrix $A$, we need to find a matrix $A^(-1)$ such that:]
#only("2-")[#text(size: 20pt)[$A A^(-1) = A^(-1) A = I$]]
#v(20pt)
#only("3-")[where $I$ is the identity matrix.]
#v(40pt)
#only("4-")[For the given matrix $mat(1, 0; 0, 1)$:]
#v(20pt)
#only("5-")[#text(size: 20pt)[$mat(1, 0; 0, 1) mat(1, 0; 0, 1) = mat(1, 0; 0, 1)$]]
#v(40pt)
#only("6-")[Therefore, the inverse of $mat(1, 0; 0, 1)$ is itself: $mat(1, 0; 0, 1)$. 🎉]

#only("1")[#voiceover("To find the inverse of a matrix A, we need to find a matrix A to the power of negative 1, such that:")]
#only("2")[#voiceover("A times A to the power of negative 1 equals A to the power of negative 1 times A equals I,")]
#only("3")[#voiceover("where I is the identity matrix.")]
#only("4")[#voiceover("For the given matrix with elements 1, 0, 0, and 1:")]
#only("5")[#voiceover("Multiplying this matrix by itself results in the same matrix.")]
#only("6")[#voiceover("Therefore, the inverse of the matrix with elements 1, 0, 0, and 1 is itself. This is because it is the identity matrix, and the inverse of the identity matrix is always itself.")]
]