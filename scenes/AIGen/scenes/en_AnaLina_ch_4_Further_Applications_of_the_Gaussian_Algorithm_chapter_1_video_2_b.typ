#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rank of a Matrix]
#v(40pt)
#only("1-")[To find the rank of a matrix, we transform it to its \_\_\_\_\_.]
#v(40pt)
// From the start until section one, the option is black. From section 2 until the end it is then turned red, because it is false. 
#only("-1")[a) diagonal form]#only("2-")[#text(fill:red)[a) diagonal form]]
#v(10pt)
// From the start until section two, the option is black. From section 3 until the end it is then turned green, because it is correct.
#only("-2")[b) row echelon form]#only("3-")[#text(fill:green)[b) row echelon form]]
#v(10pt)
// From the start until section three, the option is black. From section 4 until the end it is then turned red, because it is false.
#only("-3")[c) inverse form]#only("4-")[#text(fill:red)[c) inverse form]]
#v(10pt)
// From the start until section four, the option is black. From section 5 until the end it is then turned red, because it is false.
#only("-4")[d) transpose form]#only("5-")[#text(fill:red)[d) transpose form]]
#only("1")[#voiceover("Great job! You're absolutely right.")]
#only("2")[#voiceover("Transforming a matrix to its diagonal form is not the correct approach to find its rank.")]
#only("3")[#voiceover("The correct answer is b) row echelon form. We transform the matrix to its row echelon form using Gaussian elimination to determine its rank.")]
#only("4")[#voiceover("Transforming a matrix to its inverse form is not related to finding its rank.")]
#only("5")[#voiceover("Similarly, transforming a matrix to its transpose form does not help in determining its rank.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step-by-Step Solution]
#v(40pt)
#only("1-")[1. Start with the matrix 📜]
#v(20pt)
#only("2-")[2. Apply Gaussian elimination 🧮]
#v(20pt)
#only("3-")[3. Obtain the row echelon form ↕]
#v(20pt)
#only("4-")[4. Count the number of non-zero rows 🔢]
#v(20pt)
#only("5-")[5. This number is the rank of the matrix ⭐]

#only("1")[#voiceover("Let's go through the steps to find the rank of a matrix.")]
#only("2")[#voiceover("We start by applying Gaussian elimination to the matrix. This involves performing elementary row operations to simplify the matrix.")]
#only("3")[#voiceover("Through Gaussian elimination, we transform the matrix into its row echelon form. In this form, all leading coefficients (the first non-zero number from the left, also called the pivot) are 1, and the column containing the leading 1 has zeros in all its other entries.")]
#only("4")[#voiceover("Once we have the row echelon form, we count the number of non-zero rows. These are the rows that have at least one non-zero element.")]
#only("5")[#voiceover("The number of non-zero rows in the row echelon form is equal to the rank of the matrix. And that's how we find the rank!")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Example]
#v(40pt)
#only("1-")[Consider the matrix: $mat(1, 2, 3; 4, 5, 6; 7, 8, 9)$]
#v(20pt)
#only("2-")[Row echelon form: $mat(1, 2, 3; 0, -3, -6; 0, 0, 0)$]
#v(20pt)
#only("3-")[Number of non-zero rows: 2]
#v(20pt)
#only("4-")[Therefore, the rank of the matrix is 2.]

#only("1")[#voiceover("Let's look at an example. Consider the 3 by 3 matrix with entries 1 to 9.")]
#only("2")[#voiceover("After applying Gaussian elimination, we get the row echelon form of the matrix. In this form, the third row is all zeros.")]
#only("3")[#voiceover("Counting the number of non-zero rows, we see that there are 2 such rows.")]
#only("4")[#voiceover("Therefore, the rank of the given matrix is 2. Remember, the rank is always equal to the number of non-zero rows in the row echelon form of the matrix.")]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
- Rank of a matrix 📜 is found by transforming it to its row echelon form ↕ using Gaussian elimination 🧮
- The rank equals the number of non-zero rows 🔢 in the row echelon form
- Rank provides information about the dimensions of the matrix 📏 and the linear independence of its rows or columns 🎨
#only("1")[#voiceover("To summarize, the rank of a matrix is found by transforming the matrix into its row echelon form using Gaussian elimination. The rank is then equal to the number of non-zero rows in the row echelon form.")]
#only("2")[#voiceover("The rank provides important information about the matrix, such as its dimensions and the linear independence of its rows or columns. It's a fundamental concept in linear algebra with many applications. Keep up the great work in mastering these concepts!")]
]