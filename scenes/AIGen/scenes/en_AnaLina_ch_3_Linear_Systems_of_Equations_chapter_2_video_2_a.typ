#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[The Gaussian Algorithm]
#v(40pt)
What is the goal of the Gaussian Algorithm?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) To transform the coefficient matrix into a diagonal form]#only("2-")[#text(fill:red)[a) To transform the coefficient matrix into a diagonal form]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) To transform the coefficient matrix into an upper triangular form]#only("3-")[#text(fill:green)[b) To transform the coefficient matrix into an upper triangular form]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) To find the determinant of the matrix]#only("4-")[#text(fill:red)[c) To find the determinant of the matrix]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) To invert the matrix]#only("5-")[#text(fill:red)[d) To invert the matrix]]

#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
#only("2")[#voiceover("Option a) is incorrect. The Gaussian Algorithm does not aim to transform the coefficient matrix into a diagonal form.")]
#only("3")[#voiceover("Option b) is the correct answer. The goal of the Gaussian Algorithm is indeed to transform the coefficient matrix into an upper triangular form.")]
#only("4")[#voiceover("Option c) is incorrect. Finding the determinant is not the primary goal of the Gaussian Algorithm, although it can be a byproduct.")]
#only("5")[#voiceover("And option d) is also incorrect. The Gaussian Algorithm is not designed to invert matrices.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[The Gaussian Algorithm aims to transform the coefficient matrix into an upper triangular form through a series of elementary row operations. 📐]
#v(20pt)
#only("2-")[Consider the linear system: 
$x + y = 5$ 
$2x + 3y = 11$]
#v(20pt)
#only("3-")[The coefficient matrix is: 
$mat(1, 1; 2, 3)$]
#v(20pt)
#only("4-")[Applying the Gaussian Algorithm:]

#only("1")[#voiceover("The Gaussian Algorithm aims to transform the coefficient matrix into an upper triangular form through a series of elementary row operations.")]
#only("2")[#voiceover("Consider this linear system: x plus y equals 5, and 2x plus 3y equals 11.")]
#only("3")[#voiceover("The coefficient matrix of this system is the 2 by 2 matrix with entries 1, 1 in the first row and 2, 3 in the second row.")]
#only("4")[#voiceover("Now let's apply the Gaussian Algorithm to this matrix.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Multiply the first row by -2 and add it to the second row:
$mat(1, 1; 0, 1)$]
#v(10pt)
#only("2-")[The resulting matrix is upper triangular. ✅]
#v(40pt)
#only("3-")[So, the Gaussian Algorithm transforms the coefficient matrix into an upper triangular form, which is then used to solve the linear system by back-substitution. 🎉]

#only("1")[#voiceover("The first step is to multiply the first row by negative 2 and add it to the second row. This eliminates the element below the leading 1 in the first column.")]
#only("2")[#voiceover("After this operation, the resulting matrix is upper triangular, with 1, 1 in the first row and 0, 1 in the second row.")]
#only("3")[#voiceover("So, the Gaussian Algorithm has successfully transformed the coefficient matrix into an upper triangular form, which can now be used to solve the linear system by back-substitution.")]
]