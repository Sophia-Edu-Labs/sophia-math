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
    Gegebene Matrizen:
    #v(10pt)
    $A = mat(3, 0; 2, 1)$ und $B = mat(1, 2; 4, 3)$
  ]

  #v(20pt)

  #only("3-")[
    Berechne:
    #v(10pt)
    $A \cdot B$
  ]

  #only("1")[
    #voiceover("Lass uns die Matrixmultiplikation mit quadratischen Matrizen üben.")
  ]

  #only("2")[
    #voiceover("Wir haben zwei 2x2 Matrizen, A und B. Matrix A ist 3, 0 in der ersten Zeile und 2, 1 in der zweiten Zeile. Matrix B ist 1, 2 in der ersten Zeile und 4, 3 in der zweiten Zeile.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, diese Matrizen zu multiplizieren. Berechne A mal B.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multipliziere die Matrizen $\begin{bmatrix} 3 & 0 \\\\ 2 & 1 \end{bmatrix}$ und $\begin{bmatrix} 1 & 2 \\\\ 4 & 3 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 3 & 6 \\\\ 6 & 7 \end{bmatrix}$", "$\begin{bmatrix} -2 & -8 \\\\ -8 & -10 \end{bmatrix}$"), 
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