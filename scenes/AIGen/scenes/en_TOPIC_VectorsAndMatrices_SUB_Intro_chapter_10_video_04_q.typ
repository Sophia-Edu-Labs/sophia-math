#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrix Addition]
  #v(40pt)

  #only("1-")[
    Add the following matrices:
    #v(20pt)
    $A = mat(2, 1; 0, -1; 3, 2)$ and $B = mat(1, -1; 4, 0; -2, 5)$
  ]

  #only("1")[
    #voiceover("In this exercise, we'll practice matrix addition. Consider the following two matrices: Matrix A, which is a 3 by 2 matrix with elements 2, 1 in the first row, 0, negative 1 in the second row, and 3, 2 in the third row. And Matrix B, also a 3 by 2 matrix, with elements 1, negative 1 in the first row, 4, 0 in the second row, and negative 2, 5 in the third row. Your task is to add these matrices.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add matrices $\begin{bmatrix} 2 & 1 \\\\ 0 & -1 \\\\ 3 & 2 \end{bmatrix}$ and $\begin{bmatrix} 1 & -1 \\\\ 4 & 0 \\\\ -2 & 5 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 3 & 0 \\\\ 4 & -1 \\\\ 1 & 7 \end{bmatrix}$", "$\begin{bmatrix} -2 & 4 \\\\ -4 & 6 \\\\ 2 & -10 \end{bmatrix}$"), 
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
e: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
f: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
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