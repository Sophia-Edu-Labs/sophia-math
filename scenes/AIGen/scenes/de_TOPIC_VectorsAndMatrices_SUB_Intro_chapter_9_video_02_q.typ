#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Vektoraddition]
  #v(40pt)

  #only("1-")[
    Finde die Summe der Vektoren:
    #v(20pt)
    $vec(a) = (5, 7)$ und $vec(b) = (2, -3)$
  ]

  #only("1")[
    #voiceover("In dieser Übung werden wir die Vektoraddition üben. Finde die Summe der Vektoren a, die gleich fünf Komma sieben ist, und b, die gleich zwei Komma minus drei ist.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Finde die Summe der Vektoren $(5, 7)$ und $(2, -3)$. Was ist der resultierende Vektor?", 
answerOptions: ("$\begin{pmatrix} 7 \\\\ 4 \end{pmatrix}$", "$\begin{pmatrix} -10 \\\\ -4 \end{pmatrix}$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
b: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\begin{pmatrix} \key{a} \\\\ \key{b} \end{pmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)