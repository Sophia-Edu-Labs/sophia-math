#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Vektoraddition]
  #v(40pt)

  #only("1-")[
    Finde die Summe der Vektoren:
    #v(10pt)
    $vec(a) = (5, 7, 2)$ und $vec(b) = (2, -3, -1)$
  ]

  #only("1")[
    #voiceover("In dieser Übung werden wir die Vektoraddition üben. Wir müssen die Summe von zwei Vektoren finden: Vektor a, der 5, 7, 2 ist, und Vektor b, der 2, -3, -1 ist.")
  ]

  #only("2-")[
    #text(fill: blue)[Tipp: Addiere die entsprechenden Komponenten]
  ]

  #only("2")[
    #voiceover("Um dies zu lösen, denke daran, dass wir Vektoren addieren, indem wir ihre entsprechenden Komponenten addieren.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Finde die Summe der Vektoren $(5, 7, 2)$ und $(2, -3, -1)$. Was ist der resultierende Vektor?", 
answerOptions: ("$\begin{pmatrix} 7 \\\\ 4 \\\\ 1 \end{pmatrix}$", "$\begin{pmatrix} -10 \\\\ -4 \\\\ 2 \end{pmatrix}$"), 
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
), 
answerOptionMatcher:("$\begin{pmatrix} \key{a} \\\\ \key{b} \\\\ \key{c} \end{pmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
"c": "number",
) 
), 
)