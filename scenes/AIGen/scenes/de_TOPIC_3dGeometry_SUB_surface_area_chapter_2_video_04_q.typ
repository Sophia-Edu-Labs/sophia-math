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
    Betrachte einen Quader mit den Abmessungen:
    - Länge: 8 m
    - Breite: 2 m
    - Höhe: 3 m
  ]

  #v(20pt)

  #only("2-")[
    #align(center)[📏 8 m × 2 m × 3 m 📐]
  ]

  #v(20pt)

  #only("3-")[
    Berechne die gesamte Oberfläche dieses Quaders.
  ]

  #only("1")[
    #voiceover("Lass uns üben, die Oberfläche eines Quaders zu berechnen.")
  ]

  #only("2")[
    #voiceover("Wir haben einen Quader mit den Abmessungen 8 Meter Länge, 2 Meter Breite und 3 Meter Höhe.")
  ]

  #only("3")[
    #voiceover("Deine Aufgabe ist es, die gesamte Oberfläche dieses Quaders zu berechnen. Denke daran, alle sechs Flächen in deine Berechnung einzubeziehen.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Berechne die Oberfläche eines Quaders mit den Abmessungen $8 	ext{ m} 	imes 2 	ext{ m} 	imes 3 	ext{ m}$.", 
answerOptions: ("$\text{Oberfläche} = 92 \\text{ m}^2$", "$\text{Oberfläche} = -180 \\text{ m}^2$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Oberfläche} = \key{a} \\text{ m}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)