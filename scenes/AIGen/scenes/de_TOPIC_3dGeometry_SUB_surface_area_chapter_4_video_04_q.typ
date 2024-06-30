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
    Ein Quader hat:
    - Oberfläche: 340 cm²
    - Länge: 10 cm
    - Breite: 8 cm
    - Höhe: h cm
  ]

  #v(20pt)

  #only("2-")[
    #text(size: 24pt, weight: "bold")[Frage: Was ist die Höhe (h)?]
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem zur Oberfläche eines Quaders betrachten.")
  ]

  #only("2")[
    #voiceover("Wir haben einen Quader mit einer Oberfläche von 340 Quadratzentimetern. Seine Länge beträgt 10 Zentimeter und seine Breite 8 Zentimeter. Die Höhe ist unbekannt und wird durch h dargestellt. Kannst du den Wert von h bestimmen?")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Ein Quader hat eine Oberfläche von $340 	ext{ cm}^2$ und Abmessungen von $10 	ext{ cm} 	imes 8 	ext{ cm} 	imes h$. Was ist die Höhe ($h$)?", 
answerOptions: ("$h = 3$", "$h = -2$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$h = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)