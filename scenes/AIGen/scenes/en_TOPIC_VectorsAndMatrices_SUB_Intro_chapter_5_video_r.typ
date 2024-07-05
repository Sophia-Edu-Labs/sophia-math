#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Scalar Multiplication of Matrices 🧮]
  #v(40pt)
  #only("1-")[- Matrices are essential in linear algebra 📊]
  #only("2-")[- Operations on matrices include scalar multiplication ✖️]
  #only("3-")[- Let's review how scalar multiplication works 🔍]

  #only("1")[
    #voiceover("Let's review scalar multiplication of matrices, an important operation in linear algebra.")
  ]
  #only("2")[
    #voiceover("Among various matrix operations, scalar multiplication is fundamental and widely used.")
  ]
  #only("3")[
    #voiceover("We'll go through how scalar multiplication works with matrices.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Scalar Multiplication: Definition 📝]
  #v(40pt)
  #only("1-")[- Scalar: a single number 🔢]
  #only("2-")[- Matrix: rectangular array of numbers 🔳]
  #only("3-")[- Scalar multiplication: multiply each element by the scalar ➗]

  #only("1")[
    #voiceover("First, let's recall what we mean by a scalar. A scalar is simply a single number.")
  ]
  #only("2")[
    #voiceover("A matrix, on the other hand, is a rectangular array of numbers.")
  ]
  #only("3")[
    #voiceover("Scalar multiplication involves multiplying each element of the matrix by the scalar.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example of Scalar Multiplication 🌟]
  #v(20pt)
  #only("1-")[
    Let $c = 2$ and $A = mat(1, 2; 3, 4)$
  ]
  #v(20pt)
  #only("2-")[
    Then $c A = 2 dot mat(1, 2; 3, 4) = mat(2 dot 1, 2 dot 2; 2 dot 3, 2 dot 4)$
  ]
  #v(20pt)
  #only("3-")[
    $= mat(2, 4; 6, 8)$
  ]

  #only("1")[
    #voiceover("Let's look at an example. Consider the scalar c equal to 2, and a matrix A equal to a two-by-two matrix with elements 1, 2 in the first row, and 3, 4 in the second row.")
  ]
  #only("2")[
    #voiceover("To multiply the scalar by the matrix, we multiply each element of the matrix by 2. So, 2 times 1 is 2, 2 times 2 is 4, 2 times 3 is 6, and 2 times 4 is 8.")
  ]
  #only("3")[
    #voiceover("The result is a new matrix with elements 2, 4 in the first row, and 6, 8 in the second row.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Key Points to Remember 🗝️]
  #v(40pt)
  #only("1-")[- Each element is multiplied by the scalar 🔢]
  #only("2-")[- The dimensions of the matrix remain unchanged 📏]
  #only("3-")[- Scalar multiplication is distributive ➕]
  #only("4-")[- Order doesn't matter: $c A = A c$ 🔄]

  #only("1")[
    #voiceover("Let's recap the key points about scalar multiplication of matrices.")
  ]
  #only("2")[
    #voiceover("First, remember that each element of the matrix is multiplied by the scalar.")
  ]
  #only("3")[
    #voiceover("Importantly, the dimensions of the matrix remain the same after scalar multiplication.")
  ]
  #only("4")[
    #voiceover("Scalar multiplication is distributive over matrix addition. Also, the order doesn't matter - c times A equals A times c.")
  ]
]