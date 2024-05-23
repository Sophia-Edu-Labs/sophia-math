#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Scalar Multiplication]
#v(40pt)
#only("1-")[What is the result of multiplying $mat(1, 2; 3, 4)$ by $2$?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) $mat(1, 2; 3, 4)$]#only("2-")[#text(fill:red)[a) $mat(1, 2; 3, 4)$]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) $mat(2, 4; 6, 8)$]#only("3-")[#text(fill:green)[b) $mat(2, 4; 6, 8)$]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) $mat(0.5, 1; 1.5, 2)$]#only("4-")[#text(fill:red)[c) $mat(0.5, 1; 1.5, 2)$]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) $mat(3, 6; 9, 12)$]#only("5-")[#text(fill:red)[d) $mat(3, 6; 9, 12)$]]
#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Option a is incorrect because multiplying a matrix by a scalar changes the matrix elements.")]
#only("3")[#voiceover("Option b is the correct answer. When multiplying a matrix by a scalar, each element is multiplied by that scalar.")]
#only("4")[#voiceover("Option c is incorrect. This would be the result if we divided the matrix by 2, not multiplied.")]
#only("5")[#voiceover("Option d is also incorrect. This would be the result if we multiplied the matrix by 3, not 2.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Given: $mat(1, 2; 3, 4)$, scalar $2$]
#v(20pt)
#only("2-")[Step 1: Multiply each element by the scalar]
#v(20pt)
#only("3-")[
$mat(1×2, 2×2; 3×2, 4×2)$
]
#v(20pt)
#only("4-")[Step 2: Simplify]
#v(20pt)
#only("5-")[
$mat(2, 4; 6, 8)$
]
#v(20pt)
#only("6-")[Therefore, $2 mat(1, 2; 3, 4) = mat(2, 4; 6, 8)$ ✅]

#only("1")[#voiceover("Let's go through the solution step by step. We are given the matrix (1, 2; 3, 4) and the scalar 2.")]
#only("2")[#voiceover("In the first step, we multiply each element of the matrix by the scalar 2.")]
#only("3")[#voiceover("This gives us the matrix (1 times 2, 2 times 2; 3 times 2, 4 times 2).")]
#only("4")[#voiceover("In the second step, we simplify the multiplications.")]
#only("5")[#voiceover("This results in the matrix (2, 4; 6, 8).")]
#only("6")[#voiceover("Therefore, when we multiply the matrix (1, 2; 3, 4) by the scalar 2, we get the matrix (2, 4; 6, 8). Great work!")]
]