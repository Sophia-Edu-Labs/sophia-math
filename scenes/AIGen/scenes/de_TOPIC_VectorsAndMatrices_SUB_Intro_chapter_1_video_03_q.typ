#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Lass uns die skalare Multiplikation von Vektoren mit einer numerischen Übung üben.")
  ]
  #text(size: 30pt, weight: "bold")[Skalare Multiplikation]
  #v(40pt)
  #only("2-")[
    Berechne: $-3 dot (1, -2)$
  ]
  #only("2")[
    #voiceover("Berechne das Ergebnis der Multiplikation des Vektors eins, minus zwei mit dem Skalar minus drei.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Multipliziere den Vektor $(1, -2)$ mit dem Skalar $-3$.", 
answerOptions: ("$\begin{pmatrix} -3 \\\\ 6 \end{pmatrix}$", "$\begin{pmatrix} 10 \\\\ -8 \end{pmatrix}$"), 
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
answerOptionMatcher:("$\begin{pmatrix} \key{a} \\\\ \key{b} \end{pmatrix}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)