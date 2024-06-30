#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche eines Quaders]
  #v(40pt)

  #only("1-")[
    Betrachte einen Quader mit:
    - Oberfläche: 300 cm²
    - Länge: 10 cm
    - Breite: 5 cm
    - Höhe: h cm
  ]

  #v(20pt)

  #only("2-")[
    Finde die Höhe (h) des Quaders. 📏
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem zur Oberfläche eines Quaders angehen.")
  ]

  #only("2")[
    #voiceover("Wir haben einen Quader mit einer Oberfläche von 300 Quadratzentimetern. Seine Länge beträgt 10 Zentimeter und seine Breite 5 Zentimeter. Kannst du die Höhe dieses Quaders bestimmen?")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Ein Quader hat eine Oberfläche von $300 	ext{ cm}^2$ und Abmessungen von $10 	ext{ cm} 	imes 5 	ext{ cm} 	imes h$. Was ist die Höhe $(h)$?", 
answerOptions: ("$h = 5 	ext{ cm}$", "$h = -6 	ext{ cm}$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$h = \key{a} 	ext{ cm}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)