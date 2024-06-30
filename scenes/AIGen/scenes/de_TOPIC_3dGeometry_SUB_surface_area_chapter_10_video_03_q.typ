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
    - Oberfläche: 220 m²
    - Länge: 11 m
    - Breite: 5 m
    - Höhe: h
  ]

  #v(20pt)

  #only("2-")[
    Finde die Höhe (h) des Quaders. 📏
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem zur Oberfläche eines Quaders angehen.")
  ]

  #only("2")[
    #voiceover("Wir haben einen Quader mit einer Oberfläche von 220 Quadratmetern, einer Länge von 11 Metern und einer Breite von 5 Metern. Deine Aufgabe ist es, die Höhe dieses Quaders zu bestimmen. Überlege, wie Du die Formel für die Oberfläche verwenden kannst, um die unbekannte Höhe zu berechnen.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Ein Quader hat eine Oberfläche von $220 	ext{ m}^2$ und Abmessungen von $11 	ext{ m} 	imes 5 	ext{ m} 	imes h$. Wie groß ist die Höhe ($h$)?", 
answerOptions: ("$h = 2$", "$h = 0$"), 
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