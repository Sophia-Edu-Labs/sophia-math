#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[#text(size: 30pt, weight: "bold")[Matrixmultiplikation]]
  #v(40pt)

  #only("2-")[
    Gegeben:
    #v(10pt)
    $A = mat(2, 2; 2, 2)$ und $B = mat(1, 1; 1, 1)$
  ]

  #v(20pt)

  #only("3-")[
    Berechne:
    #v(10pt)
    $A dot B$
  ]

  #only("1")[
    #voiceover("Lass uns die Matrixmultiplikation mit einem numerischen Beispiel üben.")
  ]

  #only("2")[
    #voiceover("Es sind zwei 2x2-Matrizen gegeben. Matrix A ist zwei, zwei, zwei, zwei. Und Matrix B ist eins, eins, eins, eins.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diese Matrizen zu multiplizieren. Berechne A mal B.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere die Matrizen $\begin{bmatrix} 2 & 2 \\\\ 2 & 2 \end{bmatrix}$ und $\begin{bmatrix} 1 & 1 \\\\ 1 & 1 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 4 & 4 \\\\ 4 & 4 \end{bmatrix}$", "$\begin{bmatrix} -4 & -4 \\\\ -4 & -4 \end{bmatrix}$"), 
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