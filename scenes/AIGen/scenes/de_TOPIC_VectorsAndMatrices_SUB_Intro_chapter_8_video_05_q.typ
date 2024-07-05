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
  ]
  #v(20pt)

  #only("2-")[
    $A = mat(0, 1; 2, 3)$ und $B = mat(4, 5; 6, 7)$
  ]

  #only("1")[
    #voiceover("Lass uns die Matrixmultiplikation mit nicht-quadratischen Matrizen üben.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, die Matrix A, die zwei mal zwei ist, mit den Elementen null, eins, zwei, drei, und die Matrix B, die ebenfalls zwei mal zwei ist, mit den Elementen vier, fünf, sechs, sieben zu multiplizieren.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere die Matrizen $\begin{bmatrix}0 & 1\\2 & 3\end{bmatrix}$ und $\begin{bmatrix}4 & 5\\6 & 7\end{bmatrix}$. Was ist die resultierende Matrix?", 
answerOptions: ("$\begin{bmatrix}6 & 7\\26 & 31\end{bmatrix}$", "$\begin{bmatrix}-8 & -10\\-48 & -58\end{bmatrix}$"), 
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
answerOptionMatcher:("$\begin{bmatrix}\key{a} & \key{b}\\\key{c} & \key{d}\end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
"d": "number",
) 
), 
)