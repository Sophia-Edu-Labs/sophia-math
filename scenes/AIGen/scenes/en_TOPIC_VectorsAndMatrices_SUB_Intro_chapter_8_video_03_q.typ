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
    Multiply the matrices:
    #v(20pt)
    $A = mat(2, 0; 1, 3; 4, 5)$ and $B = mat(3, 1; 2, 4)$
  ]

  #only("1")[
    #voiceover("Let's practice matrix multiplication with non-square matrices. Consider the following problem: Multiply the matrices A and B, where A is a 3 by 2 matrix and B is a 2 by 2 matrix. Matrix A is given as 2, 0 in the first row; 1, 3 in the second row; and 4, 5 in the third row. Matrix B is given as 3, 1 in the first row and 2, 4 in the second row.")
  ]

  #only("2")[
    #voiceover("Calculate the product AB. Remember to check if the matrices are compatible for multiplication and to follow the rules for matrix multiplication.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply the matrices $\begin{bmatrix} 2 & 0 \\\\ 1 & 3 \\\\ 4 & 5 \end{bmatrix}$ and $\begin{bmatrix} 3 & 1 \\\\ 2 & 4 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 6 & 2 \\\\ 9 & 13 \\\\ 22 & 24 \end{bmatrix}$", "$\begin{bmatrix} -8 & 0 \\\\ -14 & -22 \\\\ -40 & -44 \end{bmatrix}$"), 
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
e: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
f: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\begin{bmatrix} \key{a} & \key{b} \\\\ \key{c} & \key{d} \\\\ \key{e} & \key{f} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
"d": "number",
"e": "number",
"f": "number",
) 
), 
)