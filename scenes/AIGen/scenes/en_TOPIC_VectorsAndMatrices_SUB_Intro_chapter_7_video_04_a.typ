#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Dimensions]
  #v(40pt)

  #only("1-")[Given matrix: $A = mat(1, 2, 3, 4)$]
  #v(20pt)

  #only("2-")[Number of rows: $1$]
  #v(20pt)

  #only("3-")[Number of columns: $4$]
  #v(20pt)

  #only("4-")[Dimensions: $1 × 4$]

  #only("1")[
    #voiceover("Great job! You've correctly identified the dimensions of the given matrix. Let's break down the solution step by step.")
  ]

  #only("2")[
    #voiceover("First, let's look at the number of rows. This matrix has only one row, containing all the elements 1, 2, 3, and 4.")
  ]

  #only("3")[
    #voiceover("Now, let's count the number of columns. We can see that there are four distinct elements in this single row, meaning we have four columns.")
  ]

  #only("4")[
    #voiceover("Therefore, the dimensions of this matrix are 1 by 4, which we write as 1 × 4. The first number always represents the number of rows, and the second number represents the number of columns.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Visual Representation]
  #v(40pt)

  #only("1-")[
    #box()[
      #table(
        columns: (auto, auto, auto, auto),
        inset: 10pt,
        align: horizon,
        [1], [2], [3], [4]
      )
    ]
  ]
  #v(20pt)

  #only("2-")[↑ 1 row]
  #v(10pt)
  #only("3-")[← 4 columns →]

  #only("1")[
    #voiceover("Let's visualize this matrix to better understand its structure.")
  ]

  #only("2")[
    #voiceover("As we can see, there's only one row in this matrix, which contains all four elements.")
  ]

  #only("3")[
    #voiceover("And looking horizontally, we can clearly count four distinct columns.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Importance of Dimensions]
  #v(40pt)

  #only("1-")[- Crucial for matrix operations 🧮]
  #v(20pt)
  #only("2-")[- Determines compatibility for multiplication ✖️]
  #v(20pt)
  #only("3-")[- Affects properties like rank and determinant 📊]

  #only("1")[
    #voiceover("Understanding matrix dimensions is crucial in linear algebra. They play a key role in various matrix operations.")
  ]

  #only("2")[
    #voiceover("For example, when multiplying matrices, the number of columns in the first matrix must equal the number of rows in the second matrix.")
  ]

  #only("3")[
    #voiceover("Matrix dimensions also affect important properties like rank and determinant, which we'll explore in future lessons.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Conclusion]
  #v(40pt)

  #only("1-")[Matrix $A = mat(1, 2, 3, 4)$ has dimensions $1 × 4$]
  #v(20pt)
  #only("2-")[Remember: #text(fill: blue)[Rows × Columns]]

  #only("1")[
    #voiceover("To summarize, the matrix A, which is 1, 2, 3, 4, has dimensions 1 by 4.")
  ]

  #only("2")[
    #voiceover("Always remember, when stating matrix dimensions, we list the number of rows first, then the number of columns. Great job on solving this problem!")
  ]
]