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
    - Länge: 15 m
    - Breite: 8 m
    - Höhe: 5 m
  ]

  #v(20pt)

  #only("2-")[
    Berechne die Oberfläche dieses Quaders. 📏📐
  ]

  #only("1")[
    #voiceover("Lass uns üben, die Oberfläche einer dreidimensionalen Form zu berechnen. Betrachte einen Quader mit den folgenden Abmessungen:")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, die gesamte Oberfläche dieses Quaders zu berechnen. Denke daran, alle sechs Flächen in deine Berechnung einzubeziehen.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Berechne die Oberfläche eines Quaders mit den Abmessungen $15 	ext{ m} 	imes 8 	ext{ m} 	imes 5 	ext{ m}$.", 
answerOptions: ("$\text{Oberfläche} = 550 	ext{ m}^2$", "$\text{Oberfläche} = -1096 	ext{ m}^2$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Oberfläche} = \key{a} 	ext{ m}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)