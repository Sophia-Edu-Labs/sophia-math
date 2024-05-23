#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Gaussian Algorithm - First Step]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned green, because it is correct. 
#only("-1")[c) Swap rows if necessary]#only("2-")[#text(fill:green)[c) Swap rows if necessary]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned red, because it is false.
#only("-2")[a) Multiply rows by scalars]#only("3-")[#text(fill:red)[a) Multiply rows by scalars]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[b) Add/subtract rows]#only("4-")[#text(fill:red)[b) Add/subtract rows]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Find the determinant]#only("5-")[#text(fill:red)[d) Find the determinant]]
#v(40pt)

#only("1")[#voiceover("Great job! That's the correct answer.")]
// Very briefly Talk about c and why it is correct
#only("2")[#voiceover("c) Swap rows if necessary is indeed the first step in the Gaussian Algorithm. This step ensures that the pivot element, the first non-zero element in each row, is in the correct position.")]
// Very briefly Talk about a and why it is incorrect
#only("3")[#voiceover("a) Multiply rows by scalars is incorrect. This is actually the second step in the Gaussian Algorithm, performed after swapping rows if necessary.")]
// Very briefly Talk about b and why it is incorrect
#only("4")[#voiceover("b) Add/subtract rows is also incorrect. This is the third and final step in the Gaussian Algorithm, used to eliminate variables and create an upper triangular matrix.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("d) Find the determinant is not a step in the Gaussian Algorithm at all. The Gaussian Algorithm is used to solve systems of linear equations, not to find determinants.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gaussian Algorithm Steps]
#v(40pt)
#only("1-")[Let's review the steps of the Gaussian Algorithm: 📝]
#v(20pt)
#only("2-")[1️⃣ Swap rows if necessary]
#only("3-")[2️⃣ Multiply rows by scalars]
#only("4-")[3️⃣ Add/subtract rows to eliminate variables]
#v(40pt)
#only("5-")[Goal: Transform the coefficient matrix into an upper triangular form 🔺]

#only("1")[#voiceover("Now, let's go through the steps of the Gaussian Algorithm in more detail.")]
#only("2")[#voiceover("The first step is to swap rows if necessary. This is done to ensure that the first non-zero element in each row, known as the pivot, is in the correct position.")]
#only("3")[#voiceover("The second step is to multiply rows by scalars. This step is used to make the pivot elements equal to 1.")]
#only("4")[#voiceover("The third and final step is to add or subtract rows to eliminate variables. This step creates zeros below the pivot, leading to an upper triangular matrix.")]
#only("5")[#voiceover("The goal of the Gaussian Algorithm is to transform the coefficient matrix into an upper triangular form. Once in this form, the system can be easily solved by back-substitution.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider the system of equations:]
#v(20pt)
#only("2-")[$x + y = 3$]
#only("3-")[$x - y = 1$]
#v(40pt)
#only("4-")[In matrix form:]
#v(20pt)
#only("5-")[$mat(1, 1; 1, -1) mat(x; y) = mat(3; 1)$]

#only("1")[#voiceover("Let's look at an example to see the Gaussian Algorithm in action.")]
#only("2")[#voiceover("We have the equation x plus y equals 3")]
#only("3")[#voiceover("and the equation x minus y equals 1.")]
#only("4")[#voiceover("We can represent this system in matrix form.")]
#only("5")[#voiceover("The coefficient matrix is 1, 1; 1, -1. The variable vector is x; y. And the constant vector is 3; 1.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Solving the System]
#v(40pt)
#only("1-")[Step 1: Swap rows if necessary]
#only("2-")[Not needed here, the matrix is already in the correct form.]
#v(20pt)
#only("3-")[Step 2: Multiply rows by scalars]
#only("4-")[Also not needed, the pivots are already 1.]
#v(20pt)
#only("5-")[Step 3: Add/subtract rows to eliminate variables]
#only("6-")[$R_2 -> R_2 - R_1$]
#only("7-")[$mat(1, 1; 0, -2) mat(x; y) = mat(3; -2)$]
#v(20pt)
#only("8-")[The system is now in upper triangular form and can be easily solved by back-substitution.]
#only("9-")[$y = 1, x = 2$]

#only("1")[#voiceover("Now, let's solve the system using the Gaussian Algorithm.")]
#only("2")[#voiceover("Step 1 is to swap rows if necessary. In this case, it's not needed as the matrix is already in the correct form with the pivots in the right positions.")]
#only("3")[#voiceover("Step 2 is to multiply rows by scalars. Again, this is not needed here because the pivots are already equal to 1.")]
#only("4")[]
#only("5")[#voiceover("Step 3 is to add or subtract rows to eliminate variables.")]
#only("6")[#voiceover("We subtract Row 1 from Row 2. This eliminates the x variable in the second equation.")]
#only("7")[#voiceover("After this operation, our matrix equation looks like this: 1, 1; 0, -2 times x; y equals 3; -2.")]
#only("8")[#voiceover("The system is now in upper triangular form. From here, we can easily solve it by back-substitution.")]
#only("9")[#voiceover("We find that y equals 1 and x equals 2. And that's the solution to our system of equations, found using the Gaussian Algorithm.")]
]