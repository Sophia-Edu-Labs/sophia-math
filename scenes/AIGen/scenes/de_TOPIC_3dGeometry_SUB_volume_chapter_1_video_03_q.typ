#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Würfelvolumen und Kantenlänge]
  #v(40pt)

  #only("1-")[
    Gegeben:
    - Volumen des Würfels: 512 cm³ 📦
  ]

  #v(20pt)

  #only("2-")[
    Frage:
    - Wie lang ist eine Kante? 📏
  ]

  #only("1")[
    #voiceover("Betrachten wir einen Würfel mit einem Volumen von 512 Kubikzentimetern.")
  ]

  #only("2")[
    #voiceover("Unsere Aufgabe ist es, die Länge einer Kante dieses Würfels zu bestimmen. Denke daran, dass das Volumen eines Würfels das Kubik seiner Kantenlänge ist.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Wenn ein Würfel ein Volumen von $512 	ext{ cm}^3$ hat, wie lang ist eine Kante?", 
answerOptions: ("$8 	ext{ cm}$", "$-12 	ext{ cm}$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\key{a} 	ext{ cm}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)