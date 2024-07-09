#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichungen lösen]
  #v(40pt)

  #only("1-")[
    Löse die quadratische Gleichung:
    #v(20pt)
    $ x^2 - 4x + 4 = 0 $
  ]

  #only("2-")[
    durch Faktorisierung.
  ]

  #only("1")[
    #voiceover("In dieser Übung werden wir das Lösen einer quadratischen Gleichung üben.")
  ]

  #only("2")[
    #voiceover("Deine Aufgabe ist es, die Gleichung x Quadrat minus 4x plus 4 gleich 0 durch Faktorisierung zu lösen.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Löse die quadratische Gleichung $x^2 - 4x + 4 = 0$ durch Faktorisierung.", 
answerOptions: ("$x^2 - 4x + 4 = (x - 2)(x - 2)$", "$x^2 - 4x + 4 = (x - 0)(x - 0)$"), 
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
answerOptionMatcher:("$x^2 - 4x + 4 = (x - \key{a})(x - \key{b})$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)