#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding Matrices: An Introduction]
  #v(40pt)
  #only("1-")[- Matrices are used in many fields 🏭🏥🏦]
  #v(20pt)
  #only("2-")[- They represent data, transformations, and systems 📊🔄🔢]
  #v(20pt)
  #only("3-")[- Adding matrices is a fundamental operation ➕]
  #v(20pt)
  #only("4-")[- Let's explore how it works! 🧐]

  #only("1")[
    #voiceover("Welcome to our introduction to adding matrices! Matrices are powerful mathematical tools used in various fields.")
  ]
  #only("2")[
    #voiceover("They can represent data, transformations, and complex systems in a compact form.")
  ]
  #only("3")[
    #voiceover("One of the most basic operations we can perform with matrices is addition.")
  ]
  #only("4")[
    #voiceover("Let's dive in and explore how matrix addition works!")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Addition: The Basics]
  #v(40pt)
  #only("1-")[- Matrices must have the same dimensions]
  #v(20pt)
  #only("2-")[$ A = mat(a, b; c, d) $, $ B = mat(e, f; g, h) $]
  #v(20pt)
  #only("3-")[$ A + B = mat(a+e, b+f; c+g, d+h) $]
  #v(20pt)
  #only("4-")[- Add corresponding elements 🔢]

  #only("1")[
    #voiceover("To add matrices, we first need to ensure they have the same dimensions. This means they must have the same number of rows and columns.")
  ]
  #only("2")[
    #voiceover("Let's consider two 2-by-2 matrices, A and B. Matrix A has elements a, b, c, and d, while matrix B has elements e, f, g, and h.")
  ]
  #only("3")[
    #voiceover("To add these matrices, we add the corresponding elements. The result is a new matrix where each element is the sum of the corresponding elements from A and B.")
  ]
  #only("4")[
    #voiceover("So, we add a to e, b to f, c to g, and d to h. This gives us our result matrix.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Example: Adding Two Matrices]
  #v(40pt)
  #only("1-")[$ A = mat(1, 2; 3, 4) $, $ B = mat(5, 6; 7, 8) $]
  #v(20pt)
  #only("2-")[$ A + B = mat(1+5, 2+6; 3+7, 4+8) $]
  #v(20pt)
  #only("3-")[$ A + B = mat(6, 8; 10, 12) $]
  #v(20pt)
  #only("4-")[- Each element is the sum of corresponding elements 🧮]

  #only("1")[
    #voiceover("Let's look at a concrete example. We have matrix A with elements 1, 2, 3, and 4, and matrix B with elements 5, 6, 7, and 8.")
  ]
  #only("2")[
    #voiceover("To add these matrices, we add the corresponding elements. So, 1 plus 5, 2 plus 6, 3 plus 7, and 4 plus 8.")
  ]
  #only("3")[
    #voiceover("This gives us a new matrix with elements 6, 8, 10, and 12.")
  ]
  #only("4")[
    #voiceover("As you can see, each element in the result matrix is indeed the sum of the corresponding elements from matrices A and B.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary: Adding Matrices]
  #v(40pt)
  #only("1-")[- Matrices must have the same dimensions ✅]
  #v(20pt)
  #only("2-")[- Add corresponding elements 🔢]
  #v(20pt)
  #only("3-")[- Result has same dimensions as original matrices 📏]
  #v(20pt)
  #only("4-")[- Important operation in linear algebra and beyond! 🌟]

  #only("1")[
    #voiceover("To summarize, when adding matrices, we first ensure that they have the same dimensions.")
  ]
  #only("2")[
    #voiceover("We then add the corresponding elements from each matrix.")
  ]
  #only("3")[
    #voiceover("The resulting matrix has the same dimensions as the original matrices.")
  ]
  #only("4")[
    #voiceover("Matrix addition is a fundamental operation in linear algebra and has numerous applications in various fields, from computer graphics to economics!")
  ]
]