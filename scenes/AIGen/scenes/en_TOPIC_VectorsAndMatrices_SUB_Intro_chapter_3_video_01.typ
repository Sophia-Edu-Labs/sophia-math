#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Introduction to Matrices]
  #v(40pt)
  #only("1-")[📊 Organizing data efficiently]
  #v(20pt)
  #only("2-")[🧮 Solving systems of equations]
  #v(20pt)
  #only("3-")[🖥️ Computer graphics and image processing]
  #v(20pt)
  #only("4-")[📈 Economic models]

  #only("1")[
    #voiceover("Welcome to our introduction to matrices! Have you ever wondered how we can efficiently organize large amounts of data? Or how computers process complex calculations for graphics? Matrices are the answer!")
  ]
  #only("2")[
    #voiceover("Matrices are powerful tools in mathematics that allow us to solve systems of equations with multiple variables.")
  ]
  #only("3")[
    #voiceover("They're also crucial in computer graphics and image processing, enabling us to transform and manipulate visual data.")
  ]
  #only("4")[
    #voiceover("Even in economics, matrices help us model complex relationships between various factors. Let's dive in and explore what matrices are!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[What is a Matrix?]
  #v(40pt)
  #only("1-")[📏 Rectangular array of numbers]
  #v(20pt)
  #only("2-")[🔢 Organized in rows and columns]
  #v(20pt)
  #only("3-")[Example: $A = mat(1, 2, 3; 4, 5, 6)$]

  #only("1")[
    #voiceover("A matrix is essentially a rectangular array of numbers. It's a way to organize data in a structured format.")
  ]
  #only("2")[
    #voiceover("These numbers are arranged in rows and columns, creating a grid-like structure. Each number in this grid is called an element of the matrix.")
  ]
  #only("3")[
    #voiceover("Let's look at an example. Here's a matrix A. It has 2 rows and 3 columns. We read it as: 1, 2, 3 in the first row, and 4, 5, 6 in the second row.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Notation]
  #v(40pt)
  #only("1-")[🏷️ Naming: Uppercase letters (A, B, C)]
  #v(20pt)
  #only("2-")[📏 Size: m × n (rows × columns)]
  #v(20pt)
  #only("3-")[🔢 Elements: $a_("ij")$ (i-th row, j-th column)]
  #v(20pt)
  #only("4-")[Example: $B = mat(b_(11), b_(12); b_(21), b_(22))$]

  #only("1")[
    #voiceover("We typically name matrices using uppercase letters like A, B, or C.")
  ]
  #only("2")[
    #voiceover("The size of a matrix is described by its number of rows and columns. We say a matrix is m by n, where m is the number of rows and n is the number of columns.")
  ]
  #only("3")[
    #voiceover("Each element in a matrix is denoted by a lowercase letter with two subscripts. The first subscript indicates the row, and the second indicates the column.")
  ]
  #only("4")[
    #voiceover("For example, in this 2 by 2 matrix B, b sub 1 1 represents the element in the first row and first column, b sub 1 2 is in the first row and second column, and so on.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary]
  #v(40pt)
  #only("1-")[📊 Matrices: Rectangular arrays of numbers]
  #v(20pt)
  #only("2-")[🔢 Organized in rows and columns]
  #v(20pt)
  #only("3-")[🏷️ Notation: Uppercase letters, size m × n]
  #v(20pt)
  #only("4-")[🧮 Powerful tool in mathematics and applications]

  #only("1")[
    #voiceover("To summarize, matrices are rectangular arrays of numbers that help us organize and manipulate data efficiently.")
  ]
  #only("2")[
    #voiceover("They're structured in rows and columns, forming a grid of elements.")
  ]
  #only("3")[
    #voiceover("We denote matrices with uppercase letters and describe their size using the number of rows and columns.")
  ]
  #only("4")[
    #voiceover("Matrices are incredibly powerful tools in mathematics, with applications ranging from solving equations to computer graphics and economic modeling. In our next lessons, we'll explore these applications and learn how to perform operations with matrices.")
  ]
]