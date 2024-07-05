#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Dimensions]
  #v(40pt)

  #only("1-")[
    Consider the matrix:
    #v(10pt)
    $ A = mat(1, 2, 3, 4) $
  ]

  #v(20pt)

  #only("2-")[
    What are the dimensions of this matrix?
  ]

  #only("1")[
    #voiceover("Let's consider a matrix question.")
  ]

  #only("2")[
    #voiceover("What are the dimensions of the matrix A, where A equals 1, 2, 3, 4?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What are the dimensions of matrix $[[1, 2, 3, 4]]$?", 
answerOptions: ("$\begin{pmatrix} 1 & 4 \end{pmatrix}$", "$\begin{pmatrix} 2 & -4 \end{pmatrix}$"), 
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
answerOptionMatcher:("$\begin{pmatrix} \key{a} & \key{b} \end{pmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)