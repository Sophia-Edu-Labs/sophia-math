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
    $ x^2 - 7x + 10 = 0 $
  ]
  #v(20pt)
  #only("2-")[
    Verwende die p-q-Formel
  ]

  #only("1")[
    #voiceover("In dieser Übung werden wir das Lösen einer quadratischen Gleichung üben.")
  ]
  #only("2")[
    #voiceover("Deine Aufgabe ist es, die Gleichung x Quadrat minus 7x plus 10 gleich null mit der p-q-Formel zu lösen.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Löse die quadratische Gleichung $x^2 - 7x + 10 = 0$ mit der p-q-Formel.", 
answerOptions: ("$x_1 = 5$, $x_2 = 2$", "$x_1 = -6$, $x_2 = 0$"), 
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
answerOptionMatcher:("$x_1 = \key{a}$, $x_2 = \key{b}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)