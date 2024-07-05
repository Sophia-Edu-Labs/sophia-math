#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Matrixmultiplikation]
  #v(40pt)

  #only("1-")[
    Multipliziere:
    #v(10pt)
    $mat(1, 0, 2; 3, 1, 4) dot mat(2, 3; 1, 0; 5, 6)$
  ]

  #only("1")[
    #voiceover("Lass uns Matrixmultiplikation üben. Multipliziere die Matrizen: 1, 0, 2; 3, 1, 4 und 2, 3; 1, 0; 5, 6.")
  ]

  #only("2-")[
    #v(20pt)
    Dimensionen:
    #v(10pt)
    - Matrix 1: $2 times 3$
    #v(5pt)
    - Matrix 2: $3 times 2$
  ]

  #only("2")[
    #voiceover("Bevor wir anfangen, lass uns die Dimensionen überprüfen. Die erste Matrix ist 2 mal 3, und die zweite ist 3 mal 2. Diese Multiplikation ist möglich, weil die Anzahl der Spalten in der ersten Matrix mit der Anzahl der Zeilen in der zweiten übereinstimmt.")
  ]

  #only("3-")[
    #v(20pt)
    Ergebnis: $2 times 2$ Matrix
  ]

  #only("3")[
    #voiceover("Die resultierende Matrix wird die gleiche Anzahl von Zeilen wie die erste Matrix und die gleiche Anzahl von Spalten wie die zweite Matrix haben. Daher erwarten wir eine 2 mal 2 Matrix als unser Ergebnis.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere die Matrizen $\begin{bmatrix} 1 & 0 & 2 \\\\ 3 & 1 & 4 \end{bmatrix}$ und $\begin{bmatrix} 2 & 3 \\\\ 1 & 0 \\\\ 5 & 6 \end{bmatrix}$.", 
answerOptions: ("$\begin{bmatrix} 12 & 15 \\\\ 26 & 33 \end{bmatrix}$", "$\begin{bmatrix} -20 & -26 \\\\ -48 & -62 \end{bmatrix}$"), 
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