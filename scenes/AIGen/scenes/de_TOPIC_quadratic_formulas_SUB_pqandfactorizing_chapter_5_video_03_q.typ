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
    $ x^2 + 2x - 8 = 0 $
  ]

  #v(20pt)

  #only("2-")[
    Durch Faktorisierung 🧮
  ]

  #only("1")[
    #voiceover("In dieser Übung werden wir das Lösen einer quadratischen Gleichung üben.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, die Gleichung x Quadrat plus 2x minus 8 gleich 0 durch Faktorisierung zu lösen.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Löse die quadratische Gleichung $x^2 + 2x - 8 = 0$ durch Faktorisierung.", 
answerOptions: ("$ (x + -4)(x + 2) = 0 $", "$ (x + 12)(x + 0) = 0 $"), 
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