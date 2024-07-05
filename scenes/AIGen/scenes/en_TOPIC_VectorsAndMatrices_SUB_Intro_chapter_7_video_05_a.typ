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
        3, 3, 3;
        4, 4, 4
      )$
    ]
  ]

  #v(20pt)

  #only("2-")[- Rows: #text(fill: blue)[2]]
  #v(10pt)
  #only("3-")[- Columns: #text(fill: red)[3]]
  #v(20pt)

  #only("4-")[
    #align(center)[
      Dimensions: #text(fill: blue)[2] × #text(fill: red)[3]
    ]
  ]

  #only("1")[
    #voiceover("Great job! You've correctly identified the dimensions of the matrix. Let's break down how we determine this.")
  ]

  #only("2")[
    #voiceover("First, we count the number of rows. In this matrix, we can see there are 2 rows.")
  ]

  #only("3")[
    #voiceover("Next, we count the number of columns. Here, we have 3 columns.")
  ]

  #only("4")[
    #voiceover("The dimensions of a matrix are always given as rows by columns. So, we write this as 2 by 3, or 2 × 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Understanding Matrix Dimensions]
  #v(40pt)

  #only("1-")[- Dimensions: #text(fill: blue)[rows] × #text(fill: red)[columns]]
  #v(20pt)
  #only("2-")[- Notation: m × n]
  #v(20pt)
  #only("3-")[- For our matrix: 2 × 3]
  #v(20pt)
  #only("4-")[- Read as "2 by 3" matrix]

  #only("1")[
    #voiceover("Let's dive a bit deeper into what matrix dimensions mean.")
  ]

  #only("2")[
    #voiceover("In general, we denote the dimensions of a matrix as m × n, where m is the number of rows and n is the number of columns.")
  ]

  #only("3")[
    #voiceover("For our specific matrix, we have a 2 × 3 matrix.")
  ]

  #only("4")[
    #voiceover("This is read as a '2 by 3' matrix. It tells us at a glance that we have 2 rows and 3 columns.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Importance of Matrix Dimensions]
  #v(40pt)

  #only("1-")[- Crucial for matrix operations 🧮]
  #v(20pt)
  #only("2-")[- Determines compatibility for multiplication ✖️]
  #v(20pt)
  #only("3-")[- Affects properties like invertibility 🔄]
  #v(20pt)
  #only("4-")[- Helps in understanding linear transformations 🔀]

  #only("1")[
    #voiceover("Understanding matrix dimensions is crucial in linear algebra.")
  ]

  #only("2")[
    #voiceover("For example, when multiplying matrices, the number of columns in the first matrix must equal the number of rows in the second matrix.")
  ]

  #only("3")[
    #voiceover("The dimensions also affect properties like whether a matrix is square or invertible.")
  ]

  #only("4")[
    #voiceover("Moreover, in more advanced topics, dimensions help us understand linear transformations between vector spaces.")
  ]
]