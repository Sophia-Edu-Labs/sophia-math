#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication]
#v(40pt)
Can mat(1, 2; 3, 4) be multiplied by mat(5, 6)?
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false.
#only("-1")[a) Yes]#only("2-")[#text(fill:red)[a) Yes]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) No]#only("3-")[#text(fill:green)[b) No]]
#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("Option a) Yes is incorrect. These matrices cannot be multiplied as they are.")]
#only("3")[#voiceover("The correct answer is b) No. Let's see why...")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Matrix Multiplication Rule 📏]
#v(40pt)
#only("1-")[- To multiply matrices, the number of columns in the first matrix must equal the number of rows in the second matrix.]
#v(20pt)
#only("2-")[- mat(1, 2; 3, 4) has 2 columns]
#v(10pt)
#only("3-")[- mat(5; 6) has 1 row]
#v(20pt)
#only("4-")[2 ≠ 1, so multiplication is not possible ❌]
#only("1")[#voiceover("To multiply two matrices, there's a rule we need to follow. The number of columns in the first matrix must be equal to the number of rows in the second matrix.")]
#only("2")[#voiceover("In our case, the first matrix, mat(1, 2; 3, 4), has 2 columns.")]
#only("3")[#voiceover("The second matrix, mat(5; 6), has only 1 row.")]
#only("4")[#voiceover("Since 2 is not equal to 1, the multiplication is not possible. The matrices are not compatible for multiplication.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example of Compatible Matrices ✅]
#v(40pt)
#only("1-")[Consider the matrices:]
#v(20pt)
#only("2-")[A = mat(1, 2, 3; 4, 5, 6)]
#v(10pt)
#only("3-")[B = mat(7, 8; 9, 10; 11, 12)]
#v(20pt)
#only("4-")[A has 3 columns, B has 3 rows]
#v(10pt)
#only("5-")[3 = 3, so AB is possible 🎉]
#only("1")[#voiceover("Now, let's look at an example of matrices that are compatible for multiplication.")]
#only("2")[#voiceover("Consider matrix A, which is a 2 by 3 matrix.")]
#only("3")[#voiceover("And matrix B, which is a 3 by 2 matrix.")]
#only("4")[#voiceover("We see that A has 3 columns and B has 3 rows.")]
#only("5")[#voiceover("Since the number of columns in A equals the number of rows in B, the product AB is possible. These matrices are compatible for multiplication.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Matrix multiplication is only possible when the number of columns in the first matrix equals the number of rows in the second matrix 🔢]
#v(20pt)
#only("2-")[- mat(1, 2; 3, 4) × mat(5, 6) is not possible ❌]
#v(20pt)
#only("3-")[- Always check the dimensions before attempting matrix multiplication 🧐]
#only("1")[#voiceover("To summarize, matrix multiplication is only possible when the number of columns in the first matrix is equal to the number of rows in the second matrix.")]
#only("2")[#voiceover("In the given question, multiplying mat(1, 2; 3, 4) by mat(5, 6) is not possible because the dimensions don't match.")]
#only("3")[#voiceover("Remember to always check the dimensions of the matrices before attempting multiplication. This will save you time and ensure you're doing the operation correctly.")]
]