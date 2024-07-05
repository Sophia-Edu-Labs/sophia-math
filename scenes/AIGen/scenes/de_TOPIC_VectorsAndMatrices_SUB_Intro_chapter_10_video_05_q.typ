#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Matrixaddition]
  #v(40pt)

  #only("1-")[
    Addiere die folgenden Matrizen:
    #v(20pt)
    $ mat(1, 2, 3; 4, 5, 6) + mat(7, 8, 9; 10, 11, 12) $
  ]

  #only("1")[
    #voiceover("In dieser Übung werden wir die Matrixaddition üben. Betrachte die beiden gegebenen 2x3-Matrizen. Deine Aufgabe ist es, diese Matrizen zu addieren. Denke daran, dass die Matrixaddition elementweise durchgeführt wird.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Addiere die Matrizen $\begin{bmatrix} 1 & 2 & 3 \\\\ 4 & 5 & 6 \end{bmatrix}$ und $\begin{bmatrix} 7 & 8 & 9 \\\\ 10 & 11 & 12 \end{bmatrix}$. Was ist die resultierende Matrix?", 
answerOptions: ("$\begin{bmatrix} 8 & 10 & 12 \\\\ 14 & 16 & 18 \end{bmatrix}$", "$\begin{bmatrix} -12 & -16 & -20 \\\\ -24 & -28 & -32 \end{bmatrix}$"), 
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
e: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
f: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\begin{bmatrix} \key{a} & \key{b} & \key{c} \\\\ \key{d} & \key{e} & \key{f} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
"d": "number",
"e": "number",
"f": "number",
) 
), 
)