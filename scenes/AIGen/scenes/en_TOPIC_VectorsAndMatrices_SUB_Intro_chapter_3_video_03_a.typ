#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[2x2 Matrix]
  #v(40pt)

  #only("1-")[#align(center)[$ mat(1, 2; 3, 4) $]]
  #v(20pt)

  #only("2-")[- Rectangular array of numbers 📊]
  #v(10pt)
  #only("3-")[- 2 rows and 2 columns ↔↕]
  #v(10pt)
  #only("4-")[- Elements: $a_(11) = 1$, $a_(12) = 2$, $a_(21) = 3$, $a_(22) = 4$]
  #v(10pt)
  #only("5-")[- Can represent linear transformations 🔄]

  #only("1")[
    #voiceover("Great job! You've correctly identified this as a 2 by 2 matrix. Let's break down what that means.")
  ]

  #only("2")[
    #voiceover("A matrix is a rectangular array of numbers. In this case, we have a 2 by 2 matrix, which means")
  ]

  #only("3")[
    #voiceover("it has 2 rows and 2 columns. This is why we call it a 2 by 2 matrix.")
  ]

  #only("4")[
    #voiceover("The elements of this matrix are: a sub 1 1 equals 1, a sub 1 2 equals 2, a sub 2 1 equals 3, and a sub 2 2 equals 4. The first subscript indicates the row, and the second indicates the column.")
  ]

  #only("5")[
    #voiceover("Matrices like this can represent linear transformations in two-dimensional space. For example, this matrix could represent a combination of scaling and rotation.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Properties]
  #v(40pt)

  #only("1-")[- Dimensions: 2 x 2]
  #v(10pt)
  #only("2-")[- Square matrix (same number of rows and columns) ⬛]
  #v(10pt)
  #only("3-")[- Determinant: $det(mat(1, 2; 3, 4)) = 1 dot 4 - 2 dot 3 = -2$]
  #v(10pt)
  #only("4-")[- Trace: $tr(mat(1, 2; 3, 4)) = 1 + 4 = 5$]

  #only("1")[
    #voiceover("Now, let's look at some properties of this matrix. First, as we mentioned, its dimensions are 2 by 2.")
  ]

  #only("2")[
    #voiceover("This is also what we call a square matrix, because it has the same number of rows as columns.")
  ]

  #only("3")[
    #voiceover("An important property of square matrices is the determinant. For a 2 by 2 matrix, we calculate it as a sub 1 1 times a sub 2 2, minus a sub 1 2 times a sub 2 1. In this case, that's 1 times 4, minus 2 times 3, which equals negative 2.")
  ]

  #only("4")[
    #voiceover("Another property is the trace, which is the sum of the elements on the main diagonal. Here, that's 1 plus 4, which equals 5.")
  ]
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Applications]
  #v(40pt)

  #only("1-")[- Systems of linear equations 📝]
  #v(10pt)
  #only("2-")[- Linear transformations 🔄]
  #v(10pt)
  #only("3-")[- Data representation 📊]
  #v(10pt)
  #only("4-")[- Computer graphics 🖼️]

  #only("1")[
    #voiceover("Matrices like this have many applications. For instance, they can represent systems of linear equations.")
  ]

  #only("2")[
    #voiceover("As mentioned earlier, they can represent linear transformations, which are crucial in many areas of mathematics and physics.")
  ]

  #only("3")[
    #voiceover("Matrices are also used to represent and organize data in many fields, from statistics to machine learning.")
  ]

  #only("4")[
    #voiceover("In computer graphics, matrices are used to perform transformations on objects, like rotation, scaling, and translation.")
  ]
]