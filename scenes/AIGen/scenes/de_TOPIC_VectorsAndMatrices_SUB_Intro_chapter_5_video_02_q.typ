#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #only("1-")[
    #text(size: 30pt, weight: "bold")[Matrix-Skalar-Multiplikation]
  ]
  #v(40pt)

  #only("2-")[
    Multipliziere:
    #v(10pt)
    $ 3 dot mat(1, 2; 3, 4) $
  ]

  #only("1")[
    #voiceover("Lass uns die Skalarmultiplikation von Matrizen üben.")
  ]

  #only("2")[
    #voiceover("Multipliziere die Matrix eins, zwei; drei, vier mit dem Skalar 3.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere die Matrix $\begin{bmatrix} 1 & 2 \\\\ 3 & 4 \end{bmatrix}$ mit dem Skalar $3$.", 
answerOptions: ("$\begin{bmatrix} 3 & 6 \\\\ 9 & 12 \end{bmatrix}$", "$\begin{bmatrix} -2 & -8 \\\\ -14 & -20 \end{bmatrix}$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
b: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
c: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
d: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\begin{bmatrix} \key{a} & \key{b} \\\\ \key{c} & \key{d} \end{bmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
"d": "number",
) 
), 
)