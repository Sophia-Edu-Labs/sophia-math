#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Testing Linear Independence]
#v(40pt)
To test for linear independence, we can set up a matrix with the vectors as \_\_\_\_\_.
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is incorrect. 
#only("-1")[a) rows]#only("2-")[#text(fill:red)[a) rows]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) columns]#only("3-")[#text(fill:green)[b) columns]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is incorrect.
#only("-3")[c) diagonals]#only("4-")[#text(fill:red)[c) diagonals]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is incorrect.
#only("-4")[d) both rows and columns]#only("5-")[#text(fill:red)[d) both rows and columns]]
#only("1")[#voiceover("Great job! That's the correct answer.")]
#only("2")[#voiceover("To test for linear independence, we set up a matrix with the vectors as columns, not rows.")]
#only("3")[#voiceover("Yes, columns is the right choice. Let's see why...")]
#only("4")[#voiceover("Diagonals wouldn't make sense here, as we're dealing with the structure of the matrix, not its entries.")]
#only("5")[#voiceover("And while the vectors could be represented as both rows or columns, the standard method is to use columns.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[Consider vectors $mat(v)_1, mat(v)_2, ..., mat(v)_n$.]
#v(20pt)
#only("2-")[1. Construct a matrix $A$ with $mat(v)_1, mat(v)_2, ..., mat(v)_n$ as its columns.]
#v(10pt)
#only("3-")[2. Row reduce $A$ to its reduced row echelon form (RREF).]
#v(10pt)
#only("4-")[3. If the RREF has a pivot in every column, the vectors are linearly independent. 🎉]
#v(10pt)
#only("5-")[4. If any column doesn't have a pivot, the vectors are linearly dependent. 😞]

#only("1")[#voiceover("Let's go through the steps to test for linear independence.")]
#only("2")[#voiceover("First, we construct a matrix A with the given vectors v1 through vn as its columns.")]
#only("3")[#voiceover("Next, we row reduce matrix A to its reduced row echelon form, or RREF.")]
#only("4")[#voiceover("If the RREF has a pivot, or leading 1, in every column, then the vectors are linearly independent.")]
#only("5")[#voiceover("However, if any column doesn't have a pivot, then the vectors are linearly dependent.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Are $mat(1;2)$ and $mat(2;4)$ linearly independent?]
#v(20pt)
#only("2-")[1. Construct matrix $A = mat(1,2;2,4)$.]
#v(10pt)
#only("3-")[2. Row reduce to RREF: $mat(1,2;0,0)$.]
#v(10pt)
#only("4-")[3. The second column has no pivot. 🚫]
#v(10pt)
#only("5-")[Therefore, $mat(1;2)$ and $mat(2;4)$ are linearly dependent.]

#only("1")[#voiceover("Let's look at a quick example. Are the vectors (1; 2) and (2; 4) linearly independent?")]
#only("2")[#voiceover("First, we construct matrix A with these vectors as columns.")]
#only("3")[#voiceover("Row reducing this matrix gives us the RREF (1, 2; 0, 0).")]
#only("4")[#voiceover("Notice that the second column does not have a pivot.")]
#only("5")[#voiceover("Therefore, we conclude that the vectors (1; 2) and (2; 4) are linearly dependent.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Test linear independence by setting up vectors as columns 📏]
#v(20pt)
#only("2-")[- Row reduce the matrix to RREF 🎛]
#v(20pt)
#only("3-")[- Check for pivots in each column 🔍]
#v(20pt)
#only("4-")[- Pivot in every column ⇒ Linearly independent ✅]
#v(20pt)
#only("5-")[- Missing pivot ⇒ Linearly dependent ❌]

#only("1")[#voiceover("In summary, to test for linear independence, set up the vectors as columns of a matrix.")]
#only("2")[#voiceover("Row reduce this matrix to reduced row echelon form.")]
#only("3")[#voiceover("Then, check each column for a pivot, or leading 1.")]
#only("4")[#voiceover("If there's a pivot in every column, the vectors are linearly independent.")]
#only("5")[#voiceover("But if any column is missing a pivot, the vectors are linearly dependent.")]
]