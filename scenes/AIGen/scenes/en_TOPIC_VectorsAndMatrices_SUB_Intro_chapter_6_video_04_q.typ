#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[#text(size: 30pt, weight: "bold")[Matrix Multiplication]]
  #v(40pt)

  #only("2-")[
    Given matrices:
    #v(10pt)
    $A = mat(3, 0; 2, 1)$ and $B = mat(1, 2; 4, 3)$
  ]

  #v(20pt)

  #only("3-")[
    Calculate:
    #v(10pt)
    $A dot B$
  ]

  #only("1")[
    #voiceover("Let's practice matrix multiplication with square matrices.")
  ]

  #only("2")[
    #voiceover("We have two 2-by-2 matrices, A and B. Matrix A is 3, 0 in the first row, and 2, 1 in the second row. Matrix B is 1, 2 in the first row, and 4, 3 in the second row.")
  ]

  #only("3")[
    #voiceover("Your task is to multiply these matrices. Calculate A times B.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply the matrices $\begin{bmatrix} 3 & 0 \\\\ 2 & 1 \end{bmatrix}$ and $\begin{bmatrix} 1 & 2 \\\\ 4 & 3 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 3 & 6 \\\\ 6 & 7 \end{bmatrix}$", "$\begin{bmatrix} -2 & -8 \\\\ -8 & -10 \end{bmatrix}$"), 
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