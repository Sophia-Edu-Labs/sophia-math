#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Multiplication]
  #v(40pt)

  #only("1-")[
    #align(center)[
      $ mat(1, 2; 3, 4; 5, 6) times mat(7, 8; 9, 10) $
    ]
  ]

  #v(20pt)

  #only("2-")[
    - Resulting matrix: $ 2 times 3 $
  ]

  #only("3-")[
    - First element: $ 1 dot 7 + 2 dot 9 = 25 $
  ]

  #only("4-")[
    - Second element: $ 1 dot 8 + 2 dot 10 = 28 $
  ]

  #only("5-")[
    - Complete first row: $ [25, 28] $
  ]

  #only("6-")[
    - Full result:
    #align(center)[
      $ mat(25, 28; 57, 64; 89, 100) $
    ]
  ]

  #only("1")[
    #voiceover("Great job on solving this matrix multiplication! Let's go through the solution step-by-step. We're multiplying a 3 by 2 matrix with a 2 by 2 matrix.")
  ]

  #only("2")[
    #voiceover("First, let's consider the dimensions of our result. The resulting matrix will have the same number of rows as the first matrix (3) and the same number of columns as the second matrix (2). So, we're looking at a 3 by 2 matrix.")
  ]

  #only("3")[
    #voiceover("Now, let's calculate the first element. We multiply the first row of the first matrix [1, 2] with the first column of the second matrix [7, 9]. That's 1 times 7 plus 2 times 9, which equals 25.")
  ]

  #only("4")[
    #voiceover("For the second element, we multiply the first row of the first matrix [1, 2] with the second column of the second matrix [8, 10]. That's 1 times 8 plus 2 times 10, which equals 28.")
  ]

  #only("5")[
    #voiceover("So, the first row of our result is [25, 28].")
  ]

  #only("6")[
    #voiceover("Continuing this process for the remaining rows, we get the final result: a 3 by 2 matrix with elements 25, 28 in the first row, 57, 64 in the second row, and 89, 100 in the third row.")
  ]
]