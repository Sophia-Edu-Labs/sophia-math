#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Matrix Multiplication 🔢]
  #v(40pt)
  #only("1-")[- Crucial operation in linear algebra 📊]
  #only("2-")[- Combines information from two matrices 🔀]
  #only("3-")[- Let's review the process step-by-step 🔍]
  
  #only("1")[
    #voiceover("Let's review matrix multiplication, a crucial operation in linear algebra.")
  ]
  #only("2")[
    #voiceover("This operation allows us to combine information from two matrices in a specific way.")
  ]
  #only("3")[
    #voiceover("We'll go through the process step-by-step to refresh our understanding.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Multiplication Setup 🔧]
  #v(40pt)
  #only("1-")[- Consider two matrices: A and B]
  #only("2-")[- A: m × n matrix]
  #only("3-")[- B: n × p matrix]
  #only("4-")[- Result: C = A × B (m × p matrix)]
  
  #only("1")[
    #voiceover("To begin, let's consider two matrices: A and B.")
  ]
  #only("2")[
    #voiceover("Matrix A is an m by n matrix, meaning it has m rows and n columns.")
  ]
  #only("3")[
    #voiceover("Matrix B is an n by p matrix, with n rows and p columns.")
  ]
  #only("4")[
    #voiceover("The result of multiplying A and B, which we'll call C, will be an m by p matrix.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Multiplication Process 🔄]
  #v(20pt)
  #only("1-")[
    #align(center)[
      $
      A = mat(
        a_(11), a_(12);
        a_(21), a_(22)
      ),
      B = mat(
        b_(11), b_(12);
        b_(21), b_(22)
      )
      $
    ]
  ]
  #v(20pt)
  #only("2-")[
    #align(center)[
      $
      C = A times B = mat(
        c_(11), c_(12);
        c_(21), c_(22)
      )
      $
    ]
  ]
  #v(20pt)
  #only("3-")[- $c_("ij") = $ sum of (row i of A) · (column j of B)]
  #only("4-")[- E.g., $c_(11) = a_(11) dot b_(11) + a_(12) dot b_(21)$]
  
  #only("1")[
    #voiceover("Let's look at an example with two 2 by 2 matrices, A and B.")
  ]
  #only("2")[
    #voiceover("Their product, C, will also be a 2 by 2 matrix.")
  ]
  #only("3")[
    #voiceover("Each element c sub i j in C is calculated by taking the dot product of row i from A and column j from B.")
  ]
  #only("4")[
    #voiceover("For instance, c sub 1 1 equals a sub 1 1 times b sub 1 1, plus a sub 1 2 times b sub 2 1.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Points 🗝️]
  #v(40pt)
  #only("1-")[- Number of columns in A must equal rows in B]
  #only("2-")[- Not commutative: A × B ≠ B × A (generally)]
  #only("3-")[- Useful in various applications (e.g., transformations)]
  #only("4-")[- Practice is key to mastery! 💪]
  
  #only("1")[
    #voiceover("Remember, for matrix multiplication to be defined, the number of columns in A must equal the number of rows in B.")
  ]
  #only("2")[
    #voiceover("Unlike scalar multiplication, matrix multiplication is not commutative. In general, A times B is not equal to B times A.")
  ]
  #only("3")[
    #voiceover("Matrix multiplication is incredibly useful in various applications, such as geometric transformations and solving systems of equations.")
  ]
  #only("4")[
    #voiceover("As with many mathematical concepts, practice is key to mastering matrix multiplication!")
  ]
]