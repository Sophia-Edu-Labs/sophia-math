#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear Mappings]
#v(40pt)
To find the image of a vector under a linear mapping, we ____ the matrix by the vector.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) add]#only("2-")[#text(fill:red)[a) add]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) subtract]#only("3-")[#text(fill:red)[b) subtract]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) multiply]#only("4-")[#text(fill:green)[c) multiply]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) divide]#only("5-")[#text(fill:red)[d) divide]]
#only("1")[#voiceover("That's right, great job! To find the image of a vector under a linear mapping, we multiply the matrix by the vector.")]
#only("2")[#voiceover("a) add is incorrect. We don't add the matrix and the vector.")]
#only("3")[#voiceover("b) subtract is also incorrect. We don't subtract the matrix and the vector either.")]
#only("4")[#voiceover("c) multiply is the correct answer. We multiply the matrix by the vector to find the image.")]
#only("5")[#voiceover("d) divide is incorrect. Division is not defined for matrices and vectors in this context.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Given:
- Linear mapping $T(x, y) = (2x, 3y)$
- Vector $v = mat(1; 2)$]
#v(20pt)
#only("2-")[Step 1: Find the matrix representation of $T$]
#v(10pt)
#only("3-")[- $T(x, y) = (2x, 3y)$]
#only("4-")[- $T(mat(1;0)) = mat(2;0)$ and $T(mat(0;1)) = mat(0;3)$]
#only("5-")[- Matrix representation: $mat(2, 0; 0, 3)$]
#v(20pt)
#only("6-")[Step 2: Multiply the matrix by the vector]
#v(10pt)
#only("7-")[- $mat(2, 0; 0, 3) mat(1; 2) = mat(2; 6)$]
#v(20pt)
#only("8-")[Therefore, the image of $v$ under $T$ is $mat(2; 6)$. 📐🎯]

#only("1")[#voiceover("Let's solve this step-by-step. We're given a linear mapping T defined by T of x, y equals 2x, 3y, and a vector v which is the column vector 1, 2.")]
#only("2")[#voiceover("In the first step, we need to find the matrix representation of T.")]
#only("3")[#voiceover("We know that T maps x, y to 2x, 3y.")]
#only("4")[#voiceover("This means that T maps the standard basis vectors 1, 0 to 2, 0 and 0, 1 to 0, 3.")]
#only("5")[#voiceover("Therefore, the matrix representation of T is the 2 by 2 matrix with 2, 0 in the first row and 0, 3 in the second row.")]
#only("6")[#voiceover("In the second step, we multiply this matrix by the vector v.")]
#only("7")[#voiceover("Multiplying the matrix 2, 0; 0, 3 by the vector 1; 2 gives us the vector 2; 6.")]
#only("8")[#voiceover("And that's it! The image of the vector 1; 2 under the linear mapping T is the vector 2; 6.")]
]