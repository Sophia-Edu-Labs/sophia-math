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
    $A = mat(1, 2; 3, 4; 5, 6)$ and $B = mat(7, 8; 9, 10)$
  ]

  #only("1")[
    #voiceover("Let's practice matrix multiplication with non-square matrices. Multiply matrix A, which is a 3 by 2 matrix, with matrix B, which is a 2 by 2 matrix.")
  ]

  #v(20pt)

  #only("2-")[
    📏 Dimensions:
    - Matrix A: 3 × 2
    - Matrix B: 2 × 2
  ]

  #only("2")[
    #voiceover("Before we start, let's identify the dimensions of our matrices. Matrix A is a 3 by 2 matrix, while Matrix B is a 2 by 2 matrix.")
  ]

  #only("3-")[
    ❓ Is multiplication possible?
  ]

  #only("3")[
    #voiceover("Now, ask yourself: Is this multiplication possible? Remember the rule for matrix multiplication compatibility.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply the matrices $\begin{bmatrix} 1 & 2 \\\\ 3 & 4 \\\\ 5 & 6 \end{bmatrix}$ and $\begin{bmatrix} 7 & 8 \\\\ 9 & 10 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 25 & 28 \\\\ 57 & 64 \\\\ 89 & 100 \end{bmatrix}$", "$\begin{bmatrix} -46 & -52 \\\\ -110 & -124 \\\\ -174 & -196 \end{bmatrix}$"), 
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