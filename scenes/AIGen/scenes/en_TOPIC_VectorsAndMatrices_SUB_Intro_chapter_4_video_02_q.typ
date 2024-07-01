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
    $ mat(1, 2; 3, 4) + mat(2, 0; 1, 3) $
  ]

  #only("1")[
    #voiceover("In this exercise, we'll practice matrix addition. Consider the following two matrices: a two-by-two matrix with elements 1, 2 in the first row and 3, 4 in the second row, and another two-by-two matrix with elements 2, 0 in the first row and 1, 3 in the second row. Your task is to add these matrices.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add the matrices $\begin{bmatrix} 1 & 2 \\\\ 3 & 4 \end{bmatrix}$ and $\begin{bmatrix} 2 & 0 \\\\ 1 & 3 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 3 & 2 \\\\ 4 & 7 \end{bmatrix}$", "$\begin{bmatrix} -2 & 0 \\\\ -4 & -10 \end{bmatrix}$"), 
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