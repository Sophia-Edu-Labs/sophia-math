#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns die skalare Multiplikation von Matrizen mit einer numerischen Übung üben.")
  ]
  #text(size: 30pt, weight: "bold")[Skalare Matrixmultiplikation]
  #v(40pt)

  #only("2-")[
    Multipliziere die Matrix mit dem Skalar:
    #v(20pt)
    $2 dot mat(
      2, 3;
      4, 5
    )$
  ]

  #only("2")[
    #voiceover("Multipliziere die Matrix zwei, drei, vier, fünf mit dem Skalar 2.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere die Matrix $\begin{bmatrix} 2 & 3 \\\\ 4 & 5 \end{bmatrix}$ mit dem Skalar $2$.", 
answerOptions: ("$\begin{bmatrix} 4 & 6 \\\\ 8 & 10 \end{bmatrix}$", "$\begin{bmatrix} -4 & -8 \\\\ -12 & -16 \end{bmatrix}$"), 
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