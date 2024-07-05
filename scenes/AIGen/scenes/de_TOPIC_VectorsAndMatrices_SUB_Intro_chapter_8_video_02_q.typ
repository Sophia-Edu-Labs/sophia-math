#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrixmultiplikation]
  #v(40pt)

  #only("1-")[
    Multipliziere die folgenden Matrizen:
    #v(20pt)
    $A = mat(1, 2, 3; 4, 5, 6)$ und $B = mat(1, 4; 2, 5; 3, 6)$
  ]

  #only("1")[
    #voiceover("Lass uns die Matrixmultiplikation mit nicht-quadratischen Matrizen üben. Multipliziere Matrix A, die eine 2 mal 3 Matrix ist, mit Matrix B, die eine 3 mal 2 Matrix ist. Matrix A hat die Elemente 1, 2, 3 in ihrer ersten Zeile und 4, 5, 6 in ihrer zweiten Zeile. Matrix B hat die Elemente 1, 4 in ihrer ersten Spalte, 2, 5 in ihrer zweiten Spalte und 3, 6 in ihrer dritten Spalte.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere die Matrizen $\begin{bmatrix} 1 & 2 & 3 \\\\ 4 & 5 & 6 \end{bmatrix}$ und $\begin{bmatrix} 1 & 4 \\\\ 2 & 5 \\\\ 3 & 6 \end{bmatrix}$. Was ist die resultierende Matrix?", 
answerOptions: ("$\begin{bmatrix} 14 & 32 \\\\ 32 & 77 \end{bmatrix}$", "$\begin{bmatrix} -24 & -60 \\\\ -60 & -150 \end{bmatrix}$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
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