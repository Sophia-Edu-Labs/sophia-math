#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #only("1-")[
    #text(size: 30pt, weight: "bold")[Skalarmultiplikation]
    #v(40pt)
  ]

  #only("2-")[
    Berechne:
    #v(20pt)
    $ 4 dot (2, 3) $
  ]

  #only("1")[
    #voiceover("Lass uns die Skalarmultiplikation von Vektoren üben.")
  ]

  #only("2")[
    #voiceover("Berechne das Ergebnis der Multiplikation des Vektors zwei, drei mit dem Skalar vier.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Finde das Ergebnis der Multiplikation des Vektors $(2, 3)$ mit dem Skalar $4$.", 
answerOptions: ("$\begin{pmatrix} 8 \\\\ 12 \end{pmatrix}$", "$\begin{pmatrix} -12 \\\\ -20 \end{pmatrix}$"), 
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