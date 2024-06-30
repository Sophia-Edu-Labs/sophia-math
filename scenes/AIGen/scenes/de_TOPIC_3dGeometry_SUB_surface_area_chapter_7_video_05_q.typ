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
    - Länge: 9 m
    - Breite: 4 m
    - Höhe: 6 m
  ]

  #v(20pt)

  #only("2-")[
    Finde die Oberfläche dieses Quaders. 🧊📏
  ]

  #only("1")[
    #voiceover("Lass uns üben, die Oberfläche einer dreidimensionalen Form zu berechnen. Betrachte einen Quader mit den folgenden Maßen:")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, die gesamte Oberfläche dieses Quaders zu finden. Denke daran, alle sechs Flächen in deine Berechnung einzubeziehen!")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Finde die Oberfläche eines Quaders mit Länge $9 	ext{ m}$, Breite $4 	ext{ m}$ und Höhe $6 	ext{ m}$.", 
answerOptions: ("$\text{Oberfläche} = 228 \\text{ m}^2$", "$\text{Oberfläche} = -452 \\text{ m}^2$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.10000010100000001),
), 
answerOptionMatcher:("$\text{Oberfläche} = \key{a} \\text{ m}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)