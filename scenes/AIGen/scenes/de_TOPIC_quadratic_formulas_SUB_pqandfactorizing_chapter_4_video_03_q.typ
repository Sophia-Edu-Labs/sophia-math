#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen durch Faktorisierung lösen]
  #v(40pt)

  #only("1-")[
    Betrachte die quadratische Gleichung:
    #v(20pt)
    $ x^2 + 3x + 2 = 0 $
  ]

  #v(40pt)

  #only("2-")[
    Löse diese Gleichung durch Faktorisierung 🧮
  ]

  #only("1")[
    #voiceover("Lass uns üben, quadratische Gleichungen durch Faktorisierung zu lösen. Betrachte die folgende quadratische Gleichung:")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, diese Gleichung mit der Faktorisierungsmethode zu lösen. Denke daran, die Faktoren zu finden, die multipliziert die Terme der Gleichung ergeben.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Löse die quadratische Gleichung $x^2 + 3x + 2 = 0$ durch Faktorisierung.", 
answerOptions: ("$ (x + -1)(x + -2) = 0 $", "$ (x + 6)(x + 8) = 0 $"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
b: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$ (x + \key{a})(x + \key{b}) = 0 $"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)