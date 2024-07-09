#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]
  #v(40pt)

  #only("1-")[
    Löse die quadratische Gleichung:
    #v(20pt)
    $ x^2 + 4x + 3 = 0 $
  ]

  #v(20pt)

  #only("2-")[
    Durch Faktorisierung 🧮
  ]

  #only("1")[
    #voiceover("In dieser Übung werden wir das Lösen einer quadratischen Gleichung üben.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, die Gleichung x Quadrat plus vier x plus drei gleich null durch Faktorisierung zu lösen.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Löse die quadratische Gleichung $x^2 + 4x + 3 = 0$ durch Faktorisierung.", 
answerOptions: ("$ (x + -1)(x + -3) = 0 $", "$ (x + 6)(x + 10) = 0 $"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
b: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$ (x + \key{a})(x + \key{b}) = 0 $"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)