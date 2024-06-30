#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche zusammengesetzter Figuren]
  #v(40pt)

  #only("1-")[
    Betrachte eine zusammengesetzte Figur:
    - Würfel: Seitenlänge 6 cm
    - Quader: 4 cm × 3 cm × 2 cm
    - An einer Fläche verbunden
  ]

  #v(20pt)

  #only("2-")[
    Finde die gesamte Oberfläche 🔍
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem angehen, das die Oberfläche zusammengesetzter Figuren betrifft. Wir haben eine zusammengesetzte Figur, die aus zwei Teilen besteht.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, die gesamte Oberfläche dieser zusammengesetzten Figur zu finden. Denke daran, wie die beiden Formen verbunden sind!")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Finde die Oberfläche einer zusammengesetzten Figur, die aus einem Würfel mit einer Seitenlänge von $6$ cm und einem kleineren Quader mit den Maßen $4$ cm $\times$ $3$ cm $\times$ $2$ cm besteht, die an einer Fläche verbunden sind.", 
answerOptions: ("$\text{Oberfläche} = 248$", "$\text{Oberfläche} = -492$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.10000010100000001),
), 
answerOptionMatcher:("$\text{Oberfläche} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)