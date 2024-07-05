#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Operations and Multiplication]
  #v(40pt)
  #only("1-")[📊 Matrices: Powerful tools in linear algebra]
  #v(20pt)
  #only("2-")[🔢 Review basic operations]
  #v(20pt)
  #only("3-")[✖️ Introduce matrix multiplication]
  #v(20pt)
  #only("4-")[🟥 Focus on square matrices]

  #only("1")[
    #voiceover("Welcome to our introduction to matrix operations and multiplication. Matrices are powerful tools in linear algebra that allow us to represent and manipulate large amounts of data efficiently.")
  ]
  #only("2")[
    #voiceover("We'll start by quickly reviewing some basic matrix operations you're already familiar with.")
  ]
  #only("3")[
    #voiceover("Then, we'll introduce the concept of matrix multiplication.")
  ]
  #only("4")[
    #voiceover("For this lesson, we'll focus specifically on square matrices, which have an equal number of rows and columns.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Basic Matrix Operations: Review]
  #v(40pt)
  #only("1-")[➕ Addition: $ A + B = (a_("ij") + b_("ij")) $]
  #v(20pt)
  #only("2-")[➖ Subtraction: $ A - B = (a_("ij") - b_("ij")) $]
  #v(20pt)
  #only("3-")[✖️ Scalar multiplication: $ c A = (c dot a_("ij")) $]

  #only("1")[
    #voiceover("Let's quickly review some basic matrix operations. First, matrix addition. When we add two matrices A and B of the same size, we add the corresponding elements.")
  ]
  #only("2")[
    #voiceover("Similarly, for matrix subtraction, we subtract the corresponding elements of matrix B from matrix A.")
  ]
  #only("3")[
    #voiceover("Lastly, scalar multiplication involves multiplying each element of the matrix by a scalar value c.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Multiplication: Introduction]
  #v(40pt)
  #only("1-")[🔍 Not element-wise multiplication]
  #v(20pt)
  #only("2-")[🧮 Involves dot products of rows and columns]
  #v(20pt)
  #only("3-")[📏 Dimensions matter: $(m times n) dot (n times p) = (m times p)$]
  #v(20pt)
  #only("4-")[🟥 For square matrices: $n times n$]

  #only("1")[
    #voiceover("Now, let's introduce matrix multiplication. It's important to note that matrix multiplication is not simply multiplying corresponding elements like in addition or subtraction.")
  ]
  #only("2")[
    #voiceover("Instead, it involves calculating dot products between rows of the first matrix and columns of the second matrix.")
  ]
  #only("3")[
    #voiceover("The dimensions of the matrices are crucial for multiplication. To multiply an m by n matrix with another matrix, the second matrix must have n rows. The result will be an m by p matrix, where p is the number of columns in the second matrix.")
  ]
  #only("4")[
    #voiceover("For square matrices, which we're focusing on today, both matrices will be n by n, and the result will also be an n by n matrix.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Square Matrix Multiplication: Example]
  #v(40pt)
  #only("1-")[$ A = mat(1, 2; 3, 4) $, $ B = mat(5, 6; 7, 8) $]
  #v(20pt)
  #only("2-")[$ A B = mat((1 dot 5 + 2 dot 7), (1 dot 6 + 2 dot 8); (3 dot 5 + 4 dot 7), (3 dot 6 + 4 dot 8)) $]
  #v(20pt)
  #only("3-")[$ A B = mat(19, 22; 43, 50) $]

  #only("1")[
    #voiceover("Let's look at an example of square matrix multiplication. Consider two 2 by 2 matrices: A equals 1, 2; 3, 4, and B equals 5, 6; 7, 8.")
  ]
  #only("2")[
    #voiceover("To multiply these matrices, we calculate the dot products as follows: For the top-left element, we multiply 1 by 5 and add it to 2 times 7. For the top-right element, we multiply 1 by 6 and add it to 2 times 8. We do the same for the bottom row.")
  ]
  #only("3")[
    #voiceover("After performing these calculations, we get the result: 19, 22; 43, 50.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[📊 Reviewed basic matrix operations]
  #v(20pt)
  #only("2-")[✖️ Introduced matrix multiplication]
  #v(20pt)
  #only("3-")[🟥 Focused on square matrices]
  #v(20pt)
  #only("4-")[🧮 Multiplication involves dot products]

  #only("1")[
    #voiceover("To summarize, we've reviewed basic matrix operations like addition, subtraction, and scalar multiplication.")
  ]
  #only("2")[
    #voiceover("We then introduced the concept of matrix multiplication, which is fundamentally different from these simpler operations.")
  ]
  #only("3")[
    #voiceover("We focused specifically on square matrices, where both input matrices and the result have the same number of rows and columns.")
  ]
  #only("4")[
    #voiceover("Remember, matrix multiplication involves calculating dot products between rows of the first matrix and columns of the second matrix. This operation is crucial in many applications of linear algebra and will be a foundation for more advanced concepts we'll explore later.")
  ]
]