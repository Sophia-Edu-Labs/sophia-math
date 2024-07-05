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
    $A = mat(0, 1; 2, 3)$ and $B = mat(4, 5; 6, 7)$
  ]

  #only("1")[
    #voiceover("Let's practice matrix multiplication with non-square matrices.")
  ]

  #only("2")[
    #voiceover("Your task is to multiply matrix A, which is two by two, with elements zero, one, two, three, and matrix B, which is also two by two, with elements four, five, six, seven.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply the matrices $\begin{bmatrix}0 & 1\\2 & 3\end{bmatrix}$ and $\begin{bmatrix}4 & 5\\6 & 7\end{bmatrix}$. What is the resulting matrix?", 
answerOptions: ("$\begin{bmatrix}6 & 7\\26 & 31\end{bmatrix}$", "$\begin{bmatrix}-8 & -10\\-48 & -58\end{bmatrix}$"), 
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
answerOptionMatcher:("$\begin{bmatrix}\key{a} & \key{b}\\\key{c} & \key{d}\end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
"d": "number",
) 
), 
)