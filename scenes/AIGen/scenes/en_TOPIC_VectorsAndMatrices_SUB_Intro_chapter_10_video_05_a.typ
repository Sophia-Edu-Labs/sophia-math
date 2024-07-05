#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Addition]
  #v(40pt)

  #only("1-")[
    $A = mat(1, 2, 3; 4, 5, 6)$
  ]
  #v(20pt)
  #only("2-")[
    $B = mat(7, 8, 9; 10, 11, 12)$
  ]
  #v(20pt)
  #only("3-")[
    $A + B = mat(1+7, 2+8, 3+9; 4+10, 5+11, 6+12)$
  ]
  #v(20pt)
  #only("4-")[
    $= mat(8, 10, 12; 14, 16, 18)$
  ]

  #only("1")[
    #voiceover("Great job! Let's go through the solution step by step. We start with matrix A. It's a 2 by 3 matrix with elements 1, 2, 3 in the first row and 4, 5, 6 in the second row.")
  ]
  #only("2")[
    #voiceover("Next, we have matrix B. It's also a 2 by 3 matrix with elements 7, 8, 9 in the first row and 10, 11, 12 in the second row.")
  ]
  #only("3")[
    #voiceover("To add these matrices, we add the corresponding elements. So, we add 1 and 7, 2 and 8, 3 and 9 for the first row, and 4 and 10, 5 and 11, 6 and 12 for the second row.")
  ]
  #only("4")[
    #voiceover("After performing these additions, we get our result: a 2 by 3 matrix with elements 8, 10, 12 in the first row and 14, 16, 18 in the second row.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Verifying the Result]
  #v(40pt)

  #only("1-")[
    $A + B = mat(8, 10, 12; 14, 16, 18)$
  ]
  #v(20pt)
  #only("2-")[
    $"Dimensions": 2 times 3$
  ]
  #v(20pt)
  #only("3-")[
    $"Sum of all elements": 8 + 10 + 12 + 14 + 16 + 18 = 78$
  ]
  #v(20pt)
  #only("4-")[
    $"Original sum": (1 + 2 + 3 + 4 + 5 + 6) + (7 + 8 + 9 + 10 + 11 + 12) = 21 + 57 = 78$
  ]

  #only("1")[
    #voiceover("Let's verify our result. We got a 2 by 3 matrix with elements 8, 10, 12 in the first row and 14, 16, 18 in the second row.")
  ]
  #only("2")[
    #voiceover("First, we can check the dimensions. The result is indeed a 2 by 3 matrix, which matches the dimensions of the original matrices.")
  ]
  #only("3")[
    #voiceover("We can also verify by summing all elements of our result. Adding 8, 10, 12, 14, 16, and 18 gives us 78.")
  ]
  #only("4")[
    #voiceover("Let's compare this to the sum of all elements in the original matrices. For matrix A, we get 21, and for matrix B, we get 57. Adding these gives us 78, which matches our result. This confirms our addition is correct!")
  ]
]