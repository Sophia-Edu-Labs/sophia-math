#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Dimensions 📏]
  #v(40pt)

  #only("1-")[
    #align(center)[
      #box(width: 200pt, height: 100pt, fill: luma(230))[
        #align(center + horizon)[
          #text(size: 24pt)[A = #box(fill: aqua)[$mat(a, b, c; d, e, f)$]]
        ]
      ]
    ]
  ]

  #only("2-")[
    #v(20pt)
    - Rows: Horizontal lines 📏↔️
  ]

  #only("3-")[
    #v(20pt)
    - Columns: Vertical lines 📏↕️
  ]

  #only("4-")[
    #v(20pt)
    - Dimensions: (Rows × Columns) 🔢
  ]

  #only("1")[
    #voiceover("Welcome to our lesson on matrix dimensions! Imagine you're organizing data in a spreadsheet. That's essentially what a matrix is - a rectangular array of numbers. Let's look at this example matrix A.")
  ]

  #only("2")[
    #voiceover("First, let's talk about rows. Rows are the horizontal lines in our matrix. In this case, we have two rows.")
  ]

  #only("3")[
    #voiceover("Next, we have columns. These are the vertical lines in our matrix. Here, we have three columns.")
  ]

  #only("4")[
    #voiceover("The dimensions of a matrix are always given as rows times columns. So, for our matrix A, the dimensions are 2 by 3, or 2 × 3.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Determining Matrix Dimensions 🧮]
  #v(40pt)

  #only("1-")[
    #align(center)[
      #box(width: 250pt, height: 150pt, fill: luma(230))[
        #align(center + horizon)[
          #text(size: 24pt)[B = #box(fill: yellow)[$mat(1, 2, 3, 4; 5, 6, 7, 8; 9, 10, 11, 12)$]]
        ]
      ]
    ]
  ]

  #only("2-")[
    #v(20pt)
    1. Count the rows ↔️
  ]

  #only("3-")[
    #v(20pt)
    2. Count the columns ↕️
  ]

  #only("4-")[
    #v(20pt)
    3. Write as (Rows × Columns) 📝
  ]

  #only("1")[
    #voiceover("Let's practice determining the dimensions of a matrix with a new example. Here's matrix B.")
  ]

  #only("2")[
    #voiceover("Step 1: Count the rows. In this matrix, we have three rows.")
  ]

  #only("3")[
    #voiceover("Step 2: Count the columns. We can see there are four columns in this matrix.")
  ]

  #only("4")[
    #voiceover("Step 3: Write the dimensions as rows times columns. So, the dimensions of matrix B are 3 × 4.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quick Recap 🔍]
  #v(40pt)

  #only("1-")[
    - Matrix: Rectangular array of numbers 📊
  ]

  #only("2-")[
    #v(20pt)
    - Dimensions: (Rows × Columns) 🔢
  ]

  #only("3-")[
    #v(20pt)
    - Easy to determine: Just count! 🧮
  ]

  #only("4-")[
    #v(20pt)
    - Important for matrix operations 🔣
  ]

  #only("1")[
    #voiceover("Let's quickly recap what we've learned. A matrix is a rectangular array of numbers, like a table or spreadsheet.")
  ]

  #only("2")[
    #voiceover("The dimensions of a matrix are always given as rows times columns.")
  ]

  #only("3")[
    #voiceover("Determining the dimensions is easy - just count the rows and columns!")
  ]

  #only("4")[
    #voiceover("Understanding matrix dimensions is crucial for performing various matrix operations, which we'll explore in future lessons. Keep practicing, and you'll master this in no time!")
  ]
]