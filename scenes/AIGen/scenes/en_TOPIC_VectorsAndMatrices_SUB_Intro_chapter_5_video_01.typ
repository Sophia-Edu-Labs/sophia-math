#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Introduction to Scalar Multiplication of Matrices]
  #v(40pt)

  #only("1-")[- Matrices are powerful tools in mathematics 🧮]
  #v(20pt)
  #only("2-")[- Sometimes we need to multiply a matrix by a single number 🔢]
  #v(20pt)
  #only("3-")[- This operation is called scalar multiplication ✖️]
  #v(20pt)
  #only("4-")[- It's essential in various applications 🌟]

  #only("1")[
    #voiceover("Welcome to our introduction to scalar multiplication of matrices. Matrices are powerful tools in mathematics, used in various fields from physics to computer graphics.")
  ]
  #only("2")[
    #voiceover("In many situations, we need to multiply an entire matrix by a single number. This might be to scale up or down all the values in the matrix at once.")
  ]
  #only("3")[
    #voiceover("This operation is called scalar multiplication. The term 'scalar' refers to a single number, as opposed to a vector or matrix.")
  ]
  #only("4")[
    #voiceover("Understanding scalar multiplication is essential for many applications, including transformations in computer graphics, solving systems of equations, and more.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[What is Scalar Multiplication?]
  #v(40pt)

  #only("1-")[- Multiplying every element of a matrix by a scalar 🔄]
  #v(20pt)
  #only("2-")[$ c dot mat(a,b;c,d) = mat(c dot a, c dot b; c dot c, c dot d) $]
  #v(20pt)
  #only("3-")[- Example: Multiply matrix by 2]
  #v(20pt)
  #only("4-")[$ 2 dot mat(1,2;3,4) = mat(2,4;6,8) $]

  #only("1")[
    #voiceover("Scalar multiplication involves multiplying every element of a matrix by a single number, which we call a scalar.")
  ]
  #only("2")[
    #voiceover("If we have a scalar c and a matrix with elements a, b, c, and d, the result of scalar multiplication would be a new matrix where each element is multiplied by c. So, c times a, c times b, c times c, and c times d.")
  ]
  #only("3")[
    #voiceover("Let's look at a simple example. Suppose we want to multiply a matrix by 2.")
  ]
  #only("4")[
    #voiceover("If we start with the matrix 1, 2, 3, 4, and multiply it by 2, we get a new matrix 2, 4, 6, 8. Each element of the original matrix has been doubled.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)

  #only("1-")[- Scalar multiplication: multiplying a matrix by a single number 🔢]
  #v(20pt)
  #only("2-")[- It affects all elements of the matrix equally ⚖️]
  #v(20pt)
  #only("3-")[- Important in various applications 🌐]
  #v(20pt)
  #only("4-")[- Next: We'll explore properties and applications 🚀]

  #only("1")[
    #voiceover("To summarize, scalar multiplication is the process of multiplying a matrix by a single number, called a scalar.")
  ]
  #only("2")[
    #voiceover("This operation affects all elements of the matrix equally, scaling them up or down by the same factor.")
  ]
  #only("3")[
    #voiceover("Scalar multiplication is an important concept with various applications in mathematics, physics, and computer science.")
  ]
  #only("4")[
    #voiceover("In our next lessons, we'll explore the properties of scalar multiplication and delve into its practical applications. Stay tuned!")
  ]
]