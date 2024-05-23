#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Representation with Change of Basis]
#v(40pt)
#only("1-")[To find the matrix representation of a linear mapping with respect to a new basis, we need to ____ the original matrix by the change of basis matrix.]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct.
#only("-1")[c) multiply]#only("2-")[#text(fill:green)[c) multiply]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[a) add]#only("3-")[#text(fill:red)[a) add]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[b) subtract]#only("4-")[#text(fill:red)[b) subtract]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) invert]#only("5-")[#text(fill:red)[d) invert]]
#v(40pt)

#only("1")[#voiceover("Fantastic! You're absolutely right. Let's take a closer look at why that is.")]
#only("2")[#voiceover("To find the matrix representation of a linear mapping with respect to a new basis, we indeed need to multiply the original matrix by the change of basis matrix.")]
#only("3")[#voiceover("Adding the matrices would not give us the correct transformation.")]
#only("4")[#voiceover("Similarly, subtracting the matrices would not yield the desired result.")]
#only("5")[#voiceover("And while inverting matrices is an important operation, it's not what we need here for changing the basis.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Let's consider a linear mapping $T(x, y) = (2x, 3y)$ and a new basis $B = (mat(1; 1), mat(1; -1))$.]
#v(20pt)
#only("2-")[1. Find the matrix representation of $T$ with respect to the standard basis:]
#v(10pt)
#only("2-")[   $[T]_"standard" = mat(2, 0; 0, 3)$]
#v(20pt)
#only("3-")[2. Find the change of basis matrix from the standard basis to $B$:]
#v(10pt)
#only("3-")[   $[I]_"standard"^B = mat(1, 1; 1, -1)$]

#only("1")[#voiceover("Let's walk through a specific example to solidify our understanding.")]
#only("2")[#voiceover("First, we find the matrix representation of T with respect to the standard basis. This is simply the matrix with the linear mapping's coefficients on the diagonal.")]
#only("3")[#voiceover("Next, we find the change of basis matrix from the standard basis to B. This matrix has the new basis vectors as its columns.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution (cont.)]
#v(40pt)
#only("1-")[3. Multiply the matrices to get the matrix representation of $T$ with respect to $B$:]
#v(10pt)
#only("1-")[   $[T]_B = [I]_"standard"^B [T]_"standard" [I]_B^"standard"$]
#v(10pt)
#only("1-")[   $= mat(1, 1; 1, -1) mat(2, 0; 0, 3) mat(0.5, 0.5; 0.5, -0.5)$]
#v(10pt)
#only("1-")[   $= mat(2.5, 0.5; 0.5, 1.5)$]

#only("1")[#voiceover("Now, we multiply the change of basis matrix, the original matrix representation, and the inverse of the change of basis matrix.")]
#only("2")[#voiceover("And there we have it! The resulting matrix is the representation of T with respect to the new basis B.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Key Takeaways]
#v(40pt)
#only("1-")[- Change of basis involves matrix multiplication 🧮]
#v(20pt)
#only("2-")[- Original matrix is transformed by change of basis matrix 🔄]
#v(20pt)
#only("3-")[- New matrix represents the linear mapping in the new basis 🆕]
#v(20pt)
#only("4-")[Great work! You've mastered a crucial concept in linear algebra. 🌟]

#only("1")[#voiceover("To sum up, changing the basis of a linear mapping involves matrix multiplication.")]
#only("2")[#voiceover("The original matrix representation is transformed by the change of basis matrix.")]
#only("3")[#voiceover("The resulting new matrix represents the same linear mapping, but now with respect to the new basis.")]
#only("4")[#voiceover("Fantastic job on grasping this important concept. Keep up the great work in your linear algebra journey!")]
]