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
    $ mat(1, 2; 3, 4) + mat(2, 0; 1, 3) $
  ]

  #only("1")[
    #voiceover("In dieser Übung werden wir die Addition von Matrizen üben. Betrachte die folgenden zwei Matrizen: eine Zwei-mal-zwei-Matrix mit den Elementen 1, 2 in der ersten Zeile und 3, 4 in der zweiten Zeile, und eine weitere Zwei-mal-zwei-Matrix mit den Elementen 2, 0 in der ersten Zeile und 1, 3 in der zweiten Zeile. Deine Aufgabe ist es, diese Matrizen zu addieren.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Addiere die Matrizen $\begin{bmatrix} 1 & 2 \\\\ 3 & 4 \end{bmatrix}$ und $\begin{bmatrix} 2 & 0 \\\\ 1 & 3 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 3 & 2 \\\\ 4 & 7 \end{bmatrix}$", "$\begin{bmatrix} -2 & 0 \\\\ -4 & -10 \end{bmatrix}$"), 
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