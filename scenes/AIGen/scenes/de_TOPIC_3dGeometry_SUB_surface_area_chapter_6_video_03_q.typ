#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Oberfläche einer L-förmigen Figur]
  #v(40pt)

  #only("1-")[
    Berechne die Oberfläche einer L-förmigen Figur, die aus zwei Quadern besteht:
  ]

  #v(20pt)

  #only("2-")[
    - Quader 1: 7 cm × 5 cm × 3 cm
  ]

  #only("3-")[
    - Quader 2: 3 cm × 5 cm × 4 cm
  ]

  #only("1")[
    #voiceover("Lass uns ein Problem angehen, das die Oberfläche einer zusammengesetzten Figur betrifft.")
  ]

  #only("2")[
    #voiceover("Wir haben eine L-förmige Figur, die aus zwei Quadern besteht. Der erste Quader misst 7 Zentimeter mal 5 Zentimeter mal 3 Zentimeter.")
  ]

  #only("3")[
    #voiceover("Der zweite Quader misst 3 Zentimeter mal 5 Zentimeter mal 4 Zentimeter.")
  ]

  #only("4")[
    #voiceover("Deine Aufgabe ist es, die gesamte Oberfläche dieser L-förmigen Figur zu berechnen. Denke daran, alle freiliegenden Flächen zu berücksichtigen!")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Berechne die Oberfläche einer L-förmigen Figur, die aus zwei Quadern besteht: einer $7 \\text{ cm} \\times 5 \\text{ cm} \\times 3 \\text{ cm}$ und ein anderer $3 \\text{ cm} \\times 5 \\text{ cm} \\times 4 \\text{ cm}$.", 
answerOptions: ("$\text{Oberfläche} = 214 \\text{ cm}^2$", "$\text{Oberfläche} = -424 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Oberfläche} = \key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)