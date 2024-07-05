#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Multiplication]
  #v(40pt)

  #only("1-")[
    Multiply the following matrices:
  ]

  #v(20pt)

  #only("2-")[
    $A = mat(2, 1; 0, 3)$ and $B = mat(1, 4; 5, 2)$
  ]

  #v(20pt)

  #only("1")[
    #voiceover("Let's practice matrix multiplication with a numeric example.")
  ]

  #only("2")[
    #voiceover("We need to multiply matrix A, which is a 2 by 2 matrix with elements 2, 1 in the first row and 0, 3 in the second row, with matrix B, another 2 by 2 matrix with elements 1, 4 in the first row and 5, 2 in the second row.")
  ]

  #only("3")[
    #voiceover("Calculate the product A B.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply the matrices $\begin{bmatrix} 2 & 1 \\\\ 0 & 3 \end{bmatrix}$ and $\begin{bmatrix} 1 & 4 \\\\ 5 & 2 \end{bmatrix}$. What is the resulting matrix?", 
answerOptions: ("$\begin{bmatrix} 7 & 10 \\\\ 15 & 6 \end{bmatrix}$", "$\begin{bmatrix} -10 & -16 \\\\ -26 & -8 \end{bmatrix}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
b: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
c: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
d: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\begin{bmatrix} \key{a} & \key{b} \\\\ \key{c} & \key{d} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
"d": "number",
) 
), 
)