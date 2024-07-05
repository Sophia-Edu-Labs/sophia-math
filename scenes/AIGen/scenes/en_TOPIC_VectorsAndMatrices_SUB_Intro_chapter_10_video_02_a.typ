#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Matrix Dimensions]
#v(40pt)

#only("1-")[
#align(center)[
$A = mat(
  3, 6, 9;
  2, 4, 8;
  1, 5, 7
)$
]
]

#v(20pt)

#only("2-")[- Rows: #text(fill: blue)[3]]
#v(10pt)
#only("3-")[- Columns: #text(fill: red)[3]]
#v(20pt)
#only("4-")[- Dimensions: #text(fill: green)[3 × 3]]

#only("1")[
#voiceover("Great job! You've correctly identified the dimensions of this matrix. Let's break it down step by step.")
]

#only("2")[
#voiceover("First, let's count the rows. We can see that this matrix has three horizontal lines of numbers.")
]

#only("3")[
#voiceover("Now, let's count the columns. We observe that each row has three numbers.")
]

#only("4")[
#voiceover("Therefore, the dimensions of this matrix are 3 by 3. We write this as 3 × 3, where the first number represents the number of rows, and the second number represents the number of columns.")
]

#only("5")[
#voiceover("Remember, when we describe matrix dimensions, we always state the number of rows first, followed by the number of columns. This 3 × 3 matrix is also known as a square matrix because it has an equal number of rows and columns.")
]
]