#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Linear System Solvability]
#v(40pt)
A linear system of equations is solvable if the rank of the augmented matrix ____ the rank of the coefficient matrix.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) is greater than]#only("2-")[#text(fill:red)[a) is greater than]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[b) is less than]#only("3-")[#text(fill:red)[b) is less than]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned green, because it is correct.
#only("-3")[c) equals]#only("4-")[#text(fill:green)[c) equals]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) is not equal to]#only("5-")[#text(fill:red)[d) is not equal to]]

#only("1")[#voiceover("That's right, great job! Let's see why this is the correct answer.")]
#only("2")[#voiceover("Option a) is greater than is incorrect. If the rank of the augmented matrix is greater than the rank of the coefficient matrix, the system is inconsistent and has no solution.")]
#only("3")[#voiceover("Option b) is less than is also incorrect for the same reason as option a. If the ranks are not equal, the system has no solution.")]
#only("4")[#voiceover("Option c) equals is the correct answer. A linear system is solvable if and only if the rank of the augmented matrix equals the rank of the coefficient matrix.")]
#only("5")[#voiceover("Finally, option d) is not equal to is incorrect. If the ranks are not equal, the system is not solvable.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
Consider the system:
#v(20pt)
$ x + 2y = 5 $
$ 2x + 4y = 10 $
#v(40pt)
#only("1-")[Coefficient matrix: $mat(1, 2; 2, 4)$]
#v(20pt)
#only("2-")[Augmented matrix: $mat(1, 2, 5; 2, 4, 10)$]
#v(40pt)

#only("1")[#voiceover("Let's look at an example to illustrate this concept. Consider this system of two linear equations.")]
#only("2")[#voiceover("The coefficient matrix is the matrix formed by the coefficients of the variables, so here it is the 2 by 2 matrix with entries 1, 2, 2, and 4.")]
#only("3")[#voiceover("The augmented matrix is the coefficient matrix with an additional column consisting of the right-hand side of the equations, so here it is the 2 by 3 matrix with entries 1, 2, 5 in the first row and 2, 4, 10 in the second row.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Rank]
#v(40pt)
#only("1-")[Rank of coefficient matrix: 2]
#v(20pt)
#only("2-")[Rank of augmented matrix: 2]
#v(40pt)
#only("3-")[Ranks are equal 🎉]
#v(20pt)
#only("4-")[System is solvable ✅]

#only("1")[#voiceover("The rank of the coefficient matrix is 2, as the two rows are linearly independent.")]
#only("2")[#voiceover("The rank of the augmented matrix is also 2, as the two rows are still linearly independent even with the additional column.")]
#only("3")[#voiceover("We see that the rank of the augmented matrix equals the rank of the coefficient matrix.")]
#only("4")[#voiceover("Therefore, according to the criterion we just learned, this system is solvable. And indeed, the unique solution is x equals 1 and y equals 2.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Linear system solvability depends on matrix ranks 📊]
#v(20pt)
#only("2-")[- Solvable iff rank(augmented) = rank(coefficient) ✅]
#v(20pt)
#only("3-")[- If ranks unequal, system inconsistent ❌]
#v(20pt)
#only("4-")[- Always compare the ranks to determine solvability 🔍]

#only("1")[#voiceover("To summarize, the solvability of a linear system depends on the ranks of its associated matrices.")]
#only("2")[#voiceover("The system is solvable if and only if the rank of the augmented matrix equals the rank of the coefficient matrix.")]
#only("3")[#voiceover("If the ranks are not equal, the system is inconsistent and has no solution.")]
#only("4")[#voiceover("So always compare the ranks of the augmented and coefficient matrices to determine if a linear system is solvable.")]
]