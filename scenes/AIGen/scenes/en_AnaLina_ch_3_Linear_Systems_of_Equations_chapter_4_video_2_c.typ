#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Gaussian Algorithm]
#v(40pt)
#only("1-")[After transforming the augmented matrix into an upper triangular form, what is the next step?]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) Find the determinant]#only("2-")[#text(fill:red)[a) Find the determinant]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) Perform back substitution]#only("3-")[#text(fill:green)[b) Perform back substitution]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) Swap rows]#only("4-")[#text(fill:red)[c) Swap rows]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) Multiply rows by scalars]#only("5-")[#text(fill:red)[d) Multiply rows by scalars]]
#v(40pt)

#only("1")[#voiceover("Not quite. Let's take a look at the correct solution.")]
// Very briefly Talk about b and why it is correct
#only("2")[#voiceover("b) Perform back substitution is indeed the next step after transforming the augmented matrix into an upper triangular form.")]
// Very briefly Talk about a and why it is incorrect
#only("3")[#voiceover("a) Find the determinant is incorrect. Finding the determinant is not a step in the Gaussian Algorithm for solving linear systems.")]
// Very briefly Talk about c and why it is incorrect
#only("4")[#voiceover("c) Swap rows is also incorrect. Swapping rows is done earlier in the Gaussian Algorithm, before transforming the matrix into upper triangular form, if necessary.")]
// Very briefly Talk about d and why it is incorrect
#only("5")[#voiceover("And d) Multiply rows by scalars is incorrect as well. Like swapping rows, this is done earlier in the process to help transform the matrix into upper triangular form.")]

]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Consider the linear system:]
#v(20pt)
#only("1-")[- $x + y = 2$]
#only("1-")[- $2x - y = 3$]
#v(40pt)
#only("2-")[1️⃣ Write the augmented matrix:]
#v(20pt)
#only("2-")[mat(1, 1, 2; 2, -1, 3)]
#v(40pt)
#only("3-")[2️⃣ Transform to upper triangular form:]
#v(20pt)
#only("3-")[mat(1, 1, 2; 0, -3, -1)]

#only("1")[#voiceover("Let's look at a step-by-step solution to see why back substitution is the correct next step. Consider the linear system x plus y equals 2, and 2x minus y equals 3.")]
#only("2")[#voiceover("First, we write the augmented matrix, which is 1, 1, 2 in the first row and 2, -1, 3 in the second row.")]
#only("3")[#voiceover("Next, we transform this matrix into upper triangular form. After performing the necessary row operations, we get 1, 1, 2 in the first row and 0, -3, -1 in the second row.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[3️⃣ #text(weight: "bold")[Perform back substitution]:]
#v(20pt)
#only("1-")[- From the last row: $-3y = -1$ ⇒ $y = 1/3$]
#only("2-")[- Substitute into the first row: $x + 1/3 = 2$ ⇒ $x = 5/3$]
#v(40pt)
#only("3-")[Therefore, the solution is $x = 5/3$, $y = 1/3$.]

#only("1")[#voiceover("Now that we have an upper triangular matrix, we perform back substitution. From the last row, we see that -3y equals -1, which means y equals 1/3.")]
#only("2")[#voiceover("We substitute this value of y into the first row equation, which gives us x plus 1/3 equals 2. Solving for x, we get x equals 5/3.")]
#only("3")[#voiceover("Therefore, the solution to the linear system is x equals 5/3 and y equals 1/3. This demonstrates why performing back substitution is the correct next step after transforming the augmented matrix into upper triangular form.")]
]