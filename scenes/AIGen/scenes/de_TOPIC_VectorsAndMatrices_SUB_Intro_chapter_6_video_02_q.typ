#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns Matrizenmultiplikation mit quadratischen Matrizen üben.")
  ]
  #text(size: 30pt, weight: "bold")[Matrizenmultiplikation]
  #v(40pt)

  #only("2-")[
    Multipliziere die folgenden Matrizen:
    #v(20pt)
    $ mat(1, 2; 3, 4) dot mat(2, 0; 1, 3) $
  ]

  #only(2)[
    #voiceover("Multipliziere die zwei mal zwei Matrizen: eins, zwei, drei, vier und zwei, null, eins, drei.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere die Matrizen $\begin{bmatrix} 1 & 2 \\\\ 3 & 4 \end{bmatrix}$ und $\begin{bmatrix} 2 & 0 \\\\ 1 & 3 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 4 & 6 \\\\ 10 & 12 \end{bmatrix}$", "$\begin{bmatrix} -4 & -8 \\\\ -16 & -20 \end{bmatrix}$"), 
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