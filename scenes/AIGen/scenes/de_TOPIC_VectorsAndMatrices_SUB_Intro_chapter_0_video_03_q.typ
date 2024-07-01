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
    $vec(a) = (3, 4)$ und $vec(b) = (1, 2)$
  ]

  #only("1")[
    #voiceover("In dieser Übung werden wir die Vektoraddition üben. Wir müssen die Summe von zwei Vektoren finden: Vektor a, der drei Komma vier ist, und Vektor b, der eins Komma zwei ist.")
  ]

  #only("2-")[
    #v(20pt)
    💡 Tipp: Addiere die entsprechenden Komponenten
  ]

  #only("2")[
    #voiceover("Denke daran, um Vektoren zu addieren, addieren wir ihre entsprechenden Komponenten.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Finde die Summe der Vektoren $(3, 4)$ und $(1, 2)$. Was ist der resultierende Vektor?", 
answerOptions: ("Der resultierende Vektor ist $\begin{pmatrix} 4 \\\\ 6 \end{pmatrix}$", "Der resultierende Vektor ist $\begin{pmatrix} -4 \\\\ -8 \end{pmatrix}$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
b: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("Der resultierende Vektor ist $\begin{pmatrix} \key{a} \\\\ \key{b} \end{pmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)