#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rank of a Matrix]
#v(40pt)
#only("1-")[- Maximum number of linearly independent rows or columns 📜]
#v(20pt)
#only("2-")[- Can be found using Gaussian elimination 🧮]
#only("1")[
#voiceover("The rank of a matrix is the maximum number of linearly independent rows or columns in the matrix.")
]
#only("2")[
#voiceover("We can find the rank by transforming the matrix into its row echelon form using Gaussian elimination.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Gaussian Elimination]
#v(40pt)
#only("1-")[- Transforms matrix into row echelon form]
#v(20pt)
#only("2-")[- Example: $mat(1, 2, 3; 4, 5, 6; 7, 8, 9)$]
#v(20pt)
#only("3-")[$ arrow.r.long mat(1, 2, 3; 0, -3, -3; 0, 0, 0)$]
#only("1")[
#voiceover("Gaussian elimination is a method that transforms a matrix into its row echelon form.")
]
#only("2")[
#voiceover("Let's consider an example matrix: 1, 2, 3; 4, 5, 6; 7, 8, 9.")
]
#only("3")[
#voiceover("After applying Gaussian elimination, we get the row echelon form: 1, 2, 3; 0, -3, -3; 0, 0, 0.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Rank from Row Echelon Form]
#v(40pt)
#only("1-")[- Rank = Number of non-zero rows in row echelon form]
#v(20pt)
#only("2-")[- Example: $mat(1, 2, 3; 0, -3, -6; 0, 0, 0)$]
#v(20pt)
#only("3-")[- Rank = 2 🎉]
#only("1")[
#voiceover("The rank of the matrix is equal to the number of non-zero rows in its row echelon form.")
]
#only("2")[
#voiceover("In our example, the row echelon form is 1, 2, 3; 0, -3, -6; 0, 0, 0.")
]
#only("3")[
#voiceover("There are two non-zero rows, so the rank of the original matrix is 2.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Rank: maximum number of linearly independent rows/columns 📜]
#v(20pt)
#only("2-")[- Gaussian elimination: transforms matrix into row echelon form 🧮]
#v(20pt)
#only("3-")[- Rank = number of non-zero rows in row echelon form 🎉]
#only("1")[
#voiceover("To summarize, the rank of a matrix is the maximum number of linearly independent rows or columns.")
]
#only("2")[
#voiceover("We can find the rank by using Gaussian elimination to transform the matrix into its row echelon form.")
]
#only("3")[
#voiceover("The rank is then equal to the number of non-zero rows in the row echelon form.")
]
]