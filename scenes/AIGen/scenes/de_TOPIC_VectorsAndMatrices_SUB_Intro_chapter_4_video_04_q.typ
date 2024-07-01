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
    $ mat(1, 1; 1, 1) + mat(2, 2; 2, 2) $
  ]

  #only("1")[
    #voiceover("In dieser Übung werden wir die Matrixaddition üben. Betrachte die folgenden zwei 2x2-Matrizen: Die erste Matrix hat alle Einträge gleich 1, und die zweite Matrix hat alle Einträge gleich 2. Deine Aufgabe ist es, diese Matrizen zu addieren.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Addiere die Matrizen $\begin{bmatrix} 1 & 1 \\\\ 1 & 1 \end{bmatrix}$ und $\begin{bmatrix} 2 & 2 \\\\ 2 & 2 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 3 & 3 \\\\ 3 & 3 \end{bmatrix}$", "$\begin{bmatrix} -2 & -2 \\\\ -2 & -2 \end{bmatrix}$"), 
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