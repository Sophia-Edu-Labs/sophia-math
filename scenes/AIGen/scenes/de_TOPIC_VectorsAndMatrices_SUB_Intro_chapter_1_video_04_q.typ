#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only(1)[
    #voiceover("Lass uns das Skalare Multiplikation von Vektoren mit einer numerischen Übung üben.")
  ]
  #text(size: 30pt, weight: "bold")[Skalare Multiplikation]
  #v(40pt)

  #only("2-")[
    Berechne: $7 dot (0, 5)$
  ]

  #only("2")[
    #voiceover("Berechne das Ergebnis der Multiplikation des Vektors null, fünf mit dem Skalar sieben.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere den Vektor $(0, 5)$ mit dem Skalar $7$.", 
answerOptions: ("$\begin{pmatrix} 0 \\\\ 35 \end{pmatrix}$", "$\begin{pmatrix} 4 \\\\ -66 \end{pmatrix}$"), 
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