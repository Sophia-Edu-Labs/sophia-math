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
    Given:
    #v(10pt)
    $A = mat(2, 2; 2, 2)$ and $B = mat(1, 1; 1, 1)$
  ]

  #v(20pt)

  #only("3-")[
    Calculate:
    #v(10pt)
    $A dot B$
  ]

  #only("1")[
    #voiceover("Let's practice matrix multiplication with a numerical example.")
  ]

  #only("2")[
    #voiceover("We are given two 2-by-2 matrices. Matrix A is two, two, two, two. And matrix B is one, one, one, one.")
  ]

  #only("3")[
    #voiceover("Your task is to multiply these matrices. Calculate A times B.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply the matrices $\begin{bmatrix} 2 & 2 \\\\ 2 & 2 \end{bmatrix}$ and $\begin{bmatrix} 1 & 1 \\\\ 1 & 1 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 4 & 4 \\\\ 4 & 4 \end{bmatrix}$", "$\begin{bmatrix} -4 & -4 \\\\ -4 & -4 \end{bmatrix}$"), 
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