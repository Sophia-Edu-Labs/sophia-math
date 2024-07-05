#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's consider a matrix and determine its dimensions.")
  ]
  #text(size: 30pt, weight: "bold")[Matrix Dimensions]
  #v(40pt)

  #only("2-")[
    Consider the matrix:
    #v(20pt)
    $ mat(
      1, 0;
      0, 1;
      1, 1
    ) $
  ]

  #only("2")[
    #voiceover("Given this matrix, what are its dimensions?")
  ]

  #only("3-")[
    #v(20pt)
    Find the dimensions of this matrix. 🔢
  ]

  #only("3")[
    #voiceover("Determine the number of rows and columns in this matrix to find its dimensions.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Find the dimensions of the matrix $\begin{bmatrix} 1 & 0 \\\\ 0 & 1 \\\\ 1 & 1 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 3 & 2 \end{bmatrix}$", "$\begin{bmatrix} -2 & 0 \end{bmatrix}$"), 
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
answerOptionMatcher:("$\begin{bmatrix} \key{a} & \key{b} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)