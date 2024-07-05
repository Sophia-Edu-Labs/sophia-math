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
    #v(20pt)
    $A = mat(1, 2, 3; 4, 5, 6)$ and $B = mat(1, 4; 2, 5; 3, 6)$
  ]

  #only("1")[
    #voiceover("Let's practice matrix multiplication with non-square matrices. Multiply matrix A, which is a 2 by 3 matrix, with matrix B, which is a 3 by 2 matrix. Matrix A has elements 1, 2, 3 in its first row, and 4, 5, 6 in its second row. Matrix B has elements 1, 4 in its first column, 2, 5 in its second column, and 3, 6 in its third column.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply the matrices $\begin{bmatrix} 1 & 2 & 3 \\\\ 4 & 5 & 6 \end{bmatrix}$ and $\begin{bmatrix} 1 & 4 \\\\ 2 & 5 \\\\ 3 & 6 \end{bmatrix}$. What is the resulting matrix?", 
answerOptions: ("$\begin{bmatrix} 14 & 32 \\\\ 32 & 77 \end{bmatrix}$", "$\begin{bmatrix} -24 & -60 \\\\ -60 & -150 \end{bmatrix}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
b: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
c: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
d: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\begin{bmatrix} \key{a} & \key{b} \\\\ \key{c} & \key{d} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
"d": "number",
) 
), 
)