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
    Consider the following matrix:
    #v(10pt)
    $ mat(3, 6, 9;
          2, 4, 8;
          1, 5, 7) $
  ]

  #v(20pt)

  #only("2-")[
    Determine the dimensions of this matrix.
  ]

  #only("1")[
    #voiceover("Let's consider a matrix problem. Here's a 3 by 3 matrix.")
  ]

  #only("2")[
    #voiceover("Your task is to determine the dimensions of this matrix. Remember, the dimensions of a matrix are given as the number of rows by the number of columns.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Determine the dimensions of matrix $\begin{bmatrix} 3 & 6 & 9 \\\\ 2 & 4 & 8 \\\\ 1 & 5 & 7 \end{bmatrix}$.", 
answerOptions: ("$\\text{Rows} = 3, \\text{Columns} = 3$", "$\\text{Rows} = -2, \\text{Columns} = -2$"), 
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
answerOptionMatcher:("$\\text{Rows} = \key{a}, \\text{Columns} = \key{b}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)