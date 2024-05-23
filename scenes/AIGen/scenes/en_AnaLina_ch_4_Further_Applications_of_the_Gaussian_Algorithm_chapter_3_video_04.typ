#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's recap the concept of matrix invertibility and its relation to the rank of a matrix.")
]
#text(size: 30pt, weight: "bold")[Matrix Invertibility]
// The title "Matrix Invertibility" is shown on this slide
#v(40pt)
#only("2")[
#voiceover("A matrix is invertible if and only if its rank is equal to its number of rows or columns.")
]
#only("2-")[- Matrix is invertible ⇔ rank = number of rows or columns]
// The condition for matrix invertibility is shown from slide 2 onward
]

#slide()[
#only("1")[
#voiceover("Consider the matrix A, a 2 by 2 matrix with elements 2, 3, 4, and 6.")
]
#text(size: 30pt, weight: "bold")[Example Matrix]
// The title "Example Matrix" is shown on this slide
#v(40pt)
#only("1-")[$ A = mat(2, 3; 4, 6) $]
// The example matrix A is shown from slide 1 onward
#v(40pt)
#only("2")[
#voiceover("To determine if A is invertible, we need to find its rank using Gaussian elimination.")
]
#only("2-")[- Find rank using Gaussian elimination 🧮]
// The step to find the rank is shown from slide 2 onward
]

#slide()[
#only("1")[
#voiceover("Performing Gaussian elimination on matrix A, we get the following row echelon form:")
]
#text(size: 30pt, weight: "bold")[Gaussian Elimination]
// The title "Gaussian Elimination" is shown on this slide
#v(40pt)
#only("1-")[$ mat(2, 3; 0, 0) $]
// The row echelon form of matrix A is shown from slide 1 onward
#v(40pt)
#only("2")[
#voiceover("The rank of A is the number of non-zero rows in its row echelon form, which is 1.")
]
#only("2-")[- Rank of A = 1 📏]
// The rank of matrix A is shown from slide 2 onward
]

#slide()[
#only("1")[
#voiceover("Since the rank of A is 1, which is not equal to its number of rows or columns (2), matrix A is not invertible.")
]
#text(size: 30pt, weight: "bold")[Invertibility of A]
// The title "Invertibility of A" is shown on this slide
#v(40pt)
#only("1-")[- Rank of A (1) ≠ Number of rows or columns (2)]
// The comparison between the rank and dimensions of A is shown from slide 1 onward
#v(40pt)
#only("2")[
#voiceover("Therefore, we can conclude that matrix A is not invertible.")
]
#only("2-")[- Matrix A is not invertible ❌]
// The conclusion about the invertibility of A is shown from slide 2 onward
]

#slide()[
#only("1")[
#voiceover("In summary, a matrix is invertible if and only if its rank is equal to its number of rows or columns.")
]
#text(size: 30pt, weight: "bold")[Recap]
// The title "Recap" is shown on this slide
#v(40pt)
#only("1-")[- Matrix is invertible ⇔ rank = number of rows or columns 🔄]
// The recap of the condition for matrix invertibility is shown from slide 1 onward
#v(40pt)
#only("2")[
#voiceover("This concept is crucial in understanding the properties and behavior of matrices in linear algebra.")
]
#only("2-")[- Important concept in linear algebra 📐]
// The importance of this concept is highlighted from slide 2 onward
]