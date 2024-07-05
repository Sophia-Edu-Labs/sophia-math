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
Given matrix: $A = mat(1, 0; 0, 1; 1, 1)$
]

#v(20pt)

#only("2-")[
- Number of rows: #only("3-")[3] 📏
]

#v(10pt)

#only("4-")[
- Number of columns: #only("5-")[2] 📐
]

#v(20pt)

#only("6-")[
Dimensions: #only("7-")[3 × 2] 🔢
]

#only("1")[
#voiceover("Not quite, but let's go through the correct solution step by step. We're given a matrix A.")
]

#only("2")[
#voiceover("To find the dimensions of a matrix, we need to count the number of rows and columns. Let's start with the rows.")
]

#only("3")[
#voiceover("We can see that this matrix has 3 rows.")
]

#only("4")[
#voiceover("Now, let's count the columns.")
]

#only("5")[
#voiceover("The matrix has 2 columns.")
]

#only("6")[
#voiceover("The dimensions of a matrix are always given as rows by columns.")
]

#only("7")[
#voiceover("Therefore, the dimensions of this matrix are 3 by 2. Well done on figuring this out!")
]
]