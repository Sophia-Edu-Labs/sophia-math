#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Review: Matrices 📊]
  #v(40pt)
  #only("1-")[- Matrices are fundamental in linear algebra 🧮]
  #only("2-")[- They represent linear transformations 🔄]
  #only("3-")[- Let's review their key properties 🔍]

  #only("1")[
    #voiceover("Let's review matrices, which are fundamental tools in linear algebra.")
  ]
  #only("2")[
    #voiceover("Matrices are particularly useful for representing linear transformations.")
  ]
  #only("3")[
    #voiceover("We'll review their key properties and why they're so important.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Basics]
  #v(40pt)
  #only("1-")[- Rectangular array of numbers 🔢]
  #v(20pt)
  #only("2-")[
    #align(center)[
      $A = mat(
        a, b;
        c, d
      )$
    ]
  ]
  #v(20pt)
  #only("3-")[- Rows and columns 📏]
  #v(20pt)
  #only("4-")[- Dimensions: m × n (m rows, n columns) 📐]

  #only("1")[
    #voiceover("A matrix is essentially a rectangular array of numbers.")
  ]
  #only("2")[
    #voiceover("Here's a simple two-by-two matrix. We have a and b in the first row, and c and d in the second row.")
  ]
  #only("3")[
    #voiceover("Matrices are organized into rows and columns. Each horizontal line is a row, and each vertical line is a column.")
  ]
  #only("4")[
    #voiceover("The dimensions of a matrix are described by the number of rows and columns. For example, an m by n matrix has m rows and n columns.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Applications]
  #v(40pt)
  #only("1-")[- Linear transformations 🔄]
  #v(20pt)
  #only("2-")[- Systems of equations 📝]
  #v(20pt)
  #only("3-")[- Data organization 📊]
  #v(20pt)
  #only("4-")[- Computer graphics 🖥️]

  #only("1")[
    #voiceover("One of the most important applications of matrices is representing linear transformations. These are functions that preserve vector addition and scalar multiplication.")
  ]
  #only("2")[
    #voiceover("Matrices are also used to represent and solve systems of linear equations efficiently.")
  ]
  #only("3")[
    #voiceover("In data science, matrices are used to organize and manipulate large datasets.")
  ]
  #only("4")[
    #voiceover("In computer graphics, matrices are used to perform transformations like rotation, scaling, and translation of objects.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Summary 📝]
  #v(40pt)
  #only("1-")[- Matrices: rectangular arrays of numbers 📊]
  #v(20pt)
  #only("2-")[- Represent linear transformations 🔄]
  #v(20pt)
  #only("3-")[- Organized in rows and columns 📏]
  #v(20pt)
  #only("4-")[- Crucial in various fields 🌐]

  #only("1")[
    #voiceover("To summarize, matrices are rectangular arrays of numbers.")
  ]
  #only("2")[
    #voiceover("They are primarily used to represent linear transformations.")
  ]
  #only("3")[
    #voiceover("Matrices are organized into rows and columns, with their size described by their dimensions.")
  ]
  #only("4")[
    #voiceover("Understanding matrices is crucial in various fields, including mathematics, physics, computer science, and data analysis.")
  ]
]