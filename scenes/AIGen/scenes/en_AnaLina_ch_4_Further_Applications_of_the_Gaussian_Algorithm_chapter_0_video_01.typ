#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rank of a Matrix]
#v(40pt)
#only("1-")[- Maximum number of linearly independent row or column vectors 📊]
#only("1")[
#voiceover("The rank of a matrix is the maximum number of linearly independent row or column vectors in the matrix.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Linear Independence]
#v(40pt)
#only("1-")[- Vectors not expressible as linear combinations of others 🚫]
#v(20pt)
#only("2-")[- Example: $mat(1;0)$ and $mat(0;1)$ are linearly independent ✅]
#only("1")[
#voiceover("Linearly independent vectors are those that cannot be expressed as linear combinations of the other vectors.")
]
#only("2")[
#voiceover("For example, the vectors (1; 0) and (0; 1) are linearly independent because neither can be obtained by scaling the other.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Rank and Dimensions]
#v(40pt)
#only("1-")[- Rank ≤ min(rows, columns) 📏]
#v(20pt)
#only("2-")[- Example: A $3 × 2$ matrix has rank at most 2 🔢]
#only("1")[
#voiceover("The rank of a matrix is always less than or equal to the smaller of the number of rows or columns.")
]
#only("2")[
#voiceover("For instance, a 3 by 2 matrix can have a rank of at most 2, regardless of its entries.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Rank and Invertibility]
#v(40pt)
#only("1-")[- Square matrix: rank = dimension ⟺ invertible 🔄]
#v(20pt)
#only("2-")[- Example: $mat(1,0;0,1)$ has rank 2 and is invertible ✅]
#only("1")[
#voiceover("For a square matrix, having a rank equal to its dimension is equivalent to being invertible.")
]
#only("2")[
#voiceover("The 2 by 2 identity matrix, with ones on the diagonal and zeros elsewhere, has rank 2 and is indeed invertible.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Summary]
#v(40pt)
#only("1-")[- Rank: maximum number of linearly independent rows/columns 📊]
#v(20pt)
#only("2-")[- Linearly independent: not expressible as combinations of others 🚫]
#v(20pt)
#only("3-")[- Rank ≤ min(rows, columns) 📏]
#v(20pt)
#only("4-")[- Square matrix: rank = dimension ⟺ invertible 🔄]
#only("1")[
#voiceover("In summary, the rank of a matrix is the maximum number of linearly independent row or column vectors it contains.")
]
#only("2")[
#voiceover("Linearly independent vectors cannot be expressed as linear combinations of the others.")
]
#only("3")[
#voiceover("The rank is always less than or equal to the smaller of the number of rows or columns.")
]
#only("4")[
#voiceover("And for a square matrix, having a rank equal to its dimension is equivalent to being invertible.")
]
]