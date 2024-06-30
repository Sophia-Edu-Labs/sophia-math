#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche eines Quaders]
  #v(40pt)

  #only("1-")[
    Betrachte einen Quader mit:
    - Länge: 14 m
    - Breite: 9 m
    - Höhe: 6 m
  ]

  #v(20pt)

  #only("2-")[
    Finde die Oberfläche dieses Quaders. 🧊📏
  ]

  #only("1")[
    #voiceover("Lass uns üben, die Oberfläche zu berechnen. Betrachte einen Quader mit den folgenden Maßen:")
  ]

  #only("2")[
    #voiceover("Berechne die gesamte Oberfläche dieses Quaders. Denke daran, alle sechs Flächen in deine Berechnung einzubeziehen.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Finde die Oberfläche eines Quaders mit Länge $14 	ext{ m}$, Breite $9 	ext{ m}$ und Höhe $6 	ext{ m}$.", 
answerOptions: ("$\text{Oberfläche} = 564 \, \\text{m}^2$", "$\text{Oberfläche} = -1124 \, \\text{m}^2$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Oberfläche} = \key{a} \, \\text{m}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)