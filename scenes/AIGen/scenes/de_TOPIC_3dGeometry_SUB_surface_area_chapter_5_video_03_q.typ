#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche von zusammengesetzten Figuren]
  #v(40pt)

  #only("1-")[
    Betrachte eine zusammengesetzte Figur:
    - Ein Würfel mit einer Seitenlänge von 5 cm
    - Ein kleinerer Würfel mit einer Seitenlänge von 3 cm, der an einer Seite befestigt ist
  ]

  #v(20pt)

  #only("2-")[
    Finde die gesamte Oberfläche dieser zusammengesetzten Figur. 🧮📏
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem zur Oberfläche von zusammengesetzten Figuren angehen. Wir haben eine zusammengesetzte Figur, die aus zwei Teilen besteht:")
  ]

  #only("2")[
    #voiceover("Ein Würfel mit einer Seitenlänge von 5 Zentimetern und ein kleinerer Würfel mit einer Seitenlänge von 3 Zentimetern, der an einer Seite des größeren Würfels befestigt ist. Deine Aufgabe ist es, die gesamte Oberfläche dieser zusammengesetzten Figur zu berechnen. Überlege, welche Flächen freiliegen und welche verdeckt sind, wo die Würfel aufeinandertreffen.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Finde die Oberfläche einer Figur, die aus einem Würfel mit einer Seitenlänge von $5$ cm und einem kleineren Würfel mit einer Seitenlänge von $3$ cm besteht, der an einer Seite befestigt ist.", 
answerOptions: ("$\text{Oberfläche} = 238 \\text{ cm}^2$", "$\text{Oberfläche} = -472 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.10000010100000001),
), 
answerOptionMatcher:("$\text{Oberfläche} = \key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)