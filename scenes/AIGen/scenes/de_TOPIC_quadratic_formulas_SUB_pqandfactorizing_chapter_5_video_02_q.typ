#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
  #text(size: 30pt, weight: "bold")[Quadratische Gleichung]
  #v(40pt)

  #only("1-")[
    Löse die quadratische Gleichung:
    #v(20pt)
    $ x^2 - 7x + 12 = 0 $
  ]

  #v(20pt)

  #only("2-")[
    durch Faktorisierung 📊
  ]

  #only("1")[
    #voiceover("Lass uns üben, quadratische Gleichungen zu lösen. Hier ist unser Problem:")
  ]

  #only("2")[
    #voiceover("Löse die quadratische Gleichung x Quadrat minus sieben x plus zwölf gleich null durch Faktorisierung.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Löse die quadratische Gleichung $x^2 - 7x + 12 = 0$ durch Faktorisierung.", 
answerOptions: ("$ (x - 3)(x - 4) = 0 $", "$ (x - -2)(x - -4) = 0 $"), 
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
answerOptionMatcher:("$ (x - \key{a})(x - \key{b}) = 0 $"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)