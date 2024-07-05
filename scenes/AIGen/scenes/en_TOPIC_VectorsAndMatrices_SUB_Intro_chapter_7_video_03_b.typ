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
  7, 8;
  9, 10;
  11, 12
)$
]
]

#v(20pt)

#only("2-")[- Rows: #text(fill: blue)[3] 👉]
#v(10pt)
#only("3-")[- Columns: #text(fill: red)[2] 👇]
#v(20pt)
#only("4-")[- Dimensions: #text(fill: green)[3 × 2] 📏]

#only("1")[
#voiceover("Not quite. Let's break down how we determine the dimensions of a matrix.")
]

#only("2")[
#voiceover("First, we count the number of rows. In this matrix, we can see there are 3 rows.")
]

#only("3")[
#voiceover("Next, we count the number of columns. Here, we have 2 columns.")
]

#only("4")[
#voiceover("The dimensions of a matrix are always given as rows by columns. So, for this matrix, the dimensions are 3 by 2, or 3 × 2.")
]

#only("5")[
#voiceover("Remember, when we describe matrix dimensions, we always put the number of rows first, followed by the number of columns. This 3 × 2 matrix has 3 rows and 2 columns.")
]
]