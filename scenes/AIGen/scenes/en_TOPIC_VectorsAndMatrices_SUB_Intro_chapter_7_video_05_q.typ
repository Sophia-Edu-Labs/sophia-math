#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[
    #text(size: 30pt, weight: "bold")[Matrix Dimensions]
    #v(40pt)
  ]

  #only("2-")[
    Consider the matrix:
    #v(20pt)
    $ mat(3, 3, 3;
          4, 4, 4) $
  ]

  #v(20pt)

  #only("3-")[
    Determine the dimensions of this matrix.
  ]

  #only("1")[
    #voiceover("Let's practice determining the dimensions of a matrix.")
  ]

  #only("2")[
    #voiceover("Consider the following matrix.")
  ]

  #only("3")[
    #voiceover("What are the dimensions of this matrix?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Determine the dimensions of matrix $\begin{bmatrix} 3 & 3 & 3 \\\\ 4 & 4 & 4 \end{bmatrix}$.", 
answerOptions: ("The dimensions of the matrix are $2 \\times 3$.", "The dimensions of the matrix are $0 \\times -2$."), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
b: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("The dimensions of the matrix are $\key{a} \\times \key{b}$."), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)