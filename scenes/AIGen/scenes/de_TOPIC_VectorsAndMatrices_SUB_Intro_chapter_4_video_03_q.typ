#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns das Addieren von Matrizen mit einer numerischen Übung üben.")
  ]
  #text(size: 30pt, weight: "bold")[Matrixaddition]
  #v(40pt)

  #only("2-")[
    Addiere die folgenden Matrizen:
    #v(20pt)
    $ mat(5, 6; 7, 8) + mat(1, 2; 3, 4) $
  ]

  #only("2")[
    #voiceover("Addiere die Matrizen fünf, sechs, sieben, acht und eins, zwei, drei, vier. Beide Matrizen sind zwei mal zwei.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Addiere die Matrizen $\begin{bmatrix} 5 & 6 \\\\ 7 & 8 \end{bmatrix}$ und $\begin{bmatrix} 1 & 2 \\\\ 3 & 4 \end{bmatrix}$. Was ist die resultierende Matrix?", 
answerOptions: ("$\begin{bmatrix} 6 & 8 \\\\ 10 & 12 \end{bmatrix}$", "$\begin{bmatrix} -8 & -12 \\\\ -16 & -20 \end{bmatrix}$"), 
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