#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volumen eines Quaders]
  #v(40pt)

  #only("1-")[
    Ein Quader hat:
    - Länge: 9 cm
    - Breite: 5 cm
    - Höhe: 3 cm
  ]

  #v(20pt)

  #only("2-")[
    Was ist sein Volumen?
  ]

  #only("1")[
    #voiceover("Betrachten wir einen Quader mit bestimmten Abmessungen.")
  ]

  #only("2")[
    #voiceover("Gegeben ist ein Quader mit einer Länge von 9 Zentimetern, einer Breite von 5 Zentimetern und einer Höhe von 3 Zentimetern. Wir müssen sein Volumen berechnen.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Ein Quader hat eine Länge von $9$ cm, eine Breite von $5$ cm und eine Höhe von $3$ cm. Was ist sein Volumen?", 
answerOptions: ("$\\text{Volumen} = 135$", "$\\text{Volumen} = -266$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\\text{Volumen} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)