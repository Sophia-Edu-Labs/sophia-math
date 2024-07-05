#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Dimensions]
  #v(40pt)

  #only("1-")[Consider the following matrix:]
  #v(20pt)

  #only("2-")[
    $ A = mat(
      1, 2, 3;
      4, 5, 6
    ) $
  ]
  #v(40pt)

  #only("3-")[What are the dimensions of this matrix?]
  #v(20pt)

  #only("4-")[a) 2 × 3]
  #v(10pt)
  #only("5-")[b) 3 × 2]
  #v(10pt)
  #only("6-")[c) 1 × 6]
  #v(10pt)
  #only("7-")[d) 6 × 1]

  #only("1")[
    #voiceover("Let's explore an important concept in linear algebra: matrix dimensions.")
  ]

  #only("2")[
    #voiceover("Here we have a matrix A. Take a moment to observe its structure.")
  ]

  #only("3")[
    #voiceover("Now, the question is: What are the dimensions of this matrix?")
  ]

  #only("4")[
    #voiceover("Could it be 2 by 3?")
  ]

  #only("5")[
    #voiceover("Or perhaps 3 by 2?")
  ]

  #only("6")[
    #voiceover("Maybe it's 1 by 6?")
  ]

  #only("7")[
    #voiceover("Or could it be 6 by 1?")
  ]
]

//Type: MC 
#questionDef( 
questionText: "What are the dimensions of matrix $[[1, 2, 3], [4, 5, 6]]$?", 
answerOptions: ("$2 \\times 3$", "$3 \\times 2$", "$1 \\times 6$", "$6 \\times 1$"),
correctAnswerIndex: 0 
)