#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap: The rank of a matrix can be found by transforming it to its row echelon form using Gaussian elimination.")
]
#text(size: 30pt, weight: "bold")[Rank and Gaussian Elimination 🧮]
// The title "Rank and Gaussian Elimination" with an abacus emoji is shown on this slide
#v(40pt)
#only("2")[
#voiceover("Remember, the rank of a matrix is the maximum number of linearly independent row or column vectors in the matrix.")
]
#only("2-")[- Rank = max number of linearly independent rows/columns 📏]
// The definition of rank is shown from slide 2 onward
#v(20pt)
#only("3")[
#voiceover("To find the rank, we use Gaussian elimination to transform the matrix into its row echelon form.")
]
#only("3-")[- Gaussian elimination → row echelon form ⚙]
// The use of Gaussian elimination to get the row echelon form is mentioned from slide 3 onward
#v(20pt)
#only("4")[
#voiceover("The number of non-zero rows in the row echelon form is the rank of the matrix.")
]
#only("4-")[- Rank = number of non-zero rows in row echelon form 🔢]
// The rank being the number of non-zero rows in the row echelon form is stated from slide 4 onward
]

#slide()[
#only("1")[
#voiceover("Let's look at an example. Consider the matrix A equals 1, 2, 3; 4, 5, 6; 7, 8, 9.")
]
#text(size: 30pt, weight: "bold")[Example 🧩]
// The title "Example" with a puzzle piece emoji is shown on this slide
#v(40pt)
#only("1-")[$ A = mat(1, 2, 3; 4, 5, 6; 7, 8, 9) $]
// The matrix A is shown from slide 1 onward
#v(20pt)
#only("2")[
#voiceover("Using Gaussian elimination, we can transform A into its row echelon form.")
]
#only("2-")[$ "Row Echelon Form"(A) = mat(1, 0, -1; 0, 1, 2; 0, 0, 0) $]
// The row echelon form of A is shown from slide 2 onward
#v(20pt)
#only("3")[
#voiceover("The row echelon form has two non-zero rows. Therefore, the rank of A is 2.")
]
#only("3-")[$ "rank"(A) = 2 $]
// The rank of A is stated from slide 3 onward
]

#slide()[
#only("1")[
#voiceover("In summary, the rank of a matrix can be found by transforming it to its row echelon form using Gaussian elimination.")
]
#text(size: 30pt, weight: "bold")[Summary 📝]
// The title "Summary" with a memo emoji is shown on this slide
#v(40pt)
#only("2")[
#voiceover("The rank is the maximum number of linearly independent rows or columns.")
]
#only("2-")[- Rank = max number of linearly independent rows/columns 📏]
// The definition of rank is reiterated from slide 2 onward
#v(20pt)
#only("3")[
#voiceover("Gaussian elimination transforms the matrix into its row echelon form.")
]
#only("3-")[- Gaussian elimination → row echelon form ⚙]
// The use of Gaussian elimination is mentioned again from slide 3 onward
#v(20pt)
#only("4")[
#voiceover("And the rank is the number of non-zero rows in the row echelon form.")
]
#only("4-")[- Rank = number of non-zero rows in row echelon form 🔢]
// The rank being the number of non-zero rows in the row echelon form is restated from slide 4 onward
]