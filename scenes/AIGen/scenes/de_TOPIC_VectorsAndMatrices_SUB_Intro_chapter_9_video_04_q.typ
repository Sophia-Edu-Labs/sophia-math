#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns das Addieren von Matrizen üben.")
  ]
  #text(size: 30pt, weight: "bold")[Matrixaddition]
  #v(40pt)

  #only("2-")[
    Addiere die folgenden Matrizen:
    #v(20pt)
    $ mat(3, 4; 1, 2) + mat(0, 5; 7, 8) $
  ]

  #only("2")[
    #voiceover("Addiere die Matrizen drei, vier, eins, zwei und null, fünf, sieben, acht.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Addiere die Matrizen $\begin{bmatrix} 3 & 4 \\\\ 1 & 2 \end{bmatrix}$ und $\begin{bmatrix} 0 & 5 \\\\ 7 & 8 \end{bmatrix}$. Was ist die resultierende Matrix?", 
answerOptions: ("$\begin{bmatrix} 3 & 9 \\\\ 8 & 10 \end{bmatrix}$", "$\begin{bmatrix} -2 & -14 \\\\ -12 & -16 \end{bmatrix}$"), 
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