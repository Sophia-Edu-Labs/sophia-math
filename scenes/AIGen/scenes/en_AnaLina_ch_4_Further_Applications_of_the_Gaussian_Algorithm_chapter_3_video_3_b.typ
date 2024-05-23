#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Invertibility of Matrices]
#v(40pt)
#only("1-")[- Matrix is invertible if its rank equals number of rows/columns]
#only("1")[
#voiceover("Great job! You're absolutely right. A matrix is invertible if and only if its rank is equal to its number of rows or columns.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Given Matrix]
#v(40pt)
#only("1-")[- $mat(2, 3; 4, 6)$]
#only("1")[
#voiceover("Let's look at the given matrix. It's a 2 by 2 matrix with elements 2, 3, 4, and 6.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 1: Row Echelon Form]
#v(40pt)
#only("1-")[- $mat(2, 3; 0, 0)$]
#only("1")[
#voiceover("First, we transform the matrix into its row echelon form using Gaussian elimination. After performing the necessary row operations, we get this matrix.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 2: Rank]
#v(40pt)
#only("1-")[- Rank = number of non-zero rows in row echelon form]
#v(20pt)
#only("2-")[- Rank = 1]
#only("1")[
#voiceover("The rank of the matrix is the number of non-zero rows in its row echelon form.")
]
#only("2")[
#voiceover("In this case, there's only one non-zero row. So the rank of the matrix is 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Step 3: Check Invertibility]
#v(40pt)
#only("1-")[- Matrix size: 2 × 2]
#v(20pt)
#only("2-")[- Rank ≠ number of rows/columns]
#v(20pt)
#only("3-")[- Therefore, the matrix is not invertible ❌]
#only("1")[
#voiceover("Now, let's check the invertibility condition. The matrix is 2 by 2, so it has 2 rows and 2 columns.")
]
#only("2")[
#voiceover("But the rank we found is 1, which is not equal to the number of rows or columns.")
]
#only("3")[
#voiceover("Therefore, the matrix is not invertible.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Invertibility condition: rank = number of rows/columns ✅]
#v(20pt)
#only("2-")[- Given matrix: $mat(2, 3; 4, 6)$ 📜]
#v(20pt)
#only("3-")[- Row echelon form: $mat(2, 3; 0, 0)$ 🔢]
#v(20pt)
#only("4-")[- Rank: 1 ≠ 2 (number of rows/columns) ❌]
#v(20pt)
#only("5-")[- Conclusion: The matrix is not invertible 🙅‍♂️]
#only("1")[
#voiceover("To summarize, a matrix is invertible if its rank equals the number of its rows or columns.")
]
#only("2")[
#voiceover("We were given the 2 by 2 matrix with elements 2, 3, 4, and 6.")
]
#only("3")[
#voiceover("We transformed it into its row echelon form, which was this matrix.")
]
#only("4")[
#voiceover("The rank turned out to be 1, which is not equal to the number of rows or columns, which is 2.")
]
#only("5")[
#voiceover("Therefore, we concluded that the given matrix is not invertible. Great work on solving this problem!")
]
]