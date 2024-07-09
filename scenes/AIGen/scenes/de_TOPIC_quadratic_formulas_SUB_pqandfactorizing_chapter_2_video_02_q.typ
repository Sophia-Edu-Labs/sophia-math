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
    Verwende die p-q-Formel
  ]

  #only("1")[
    #voiceover("Lass uns üben, quadratische Gleichungen mit der p-q-Formel zu lösen. Hier ist unser Problem:")
  ]

  #only("2")[
    #voiceover("Löse die quadratische Gleichung x Quadrat plus 2x minus 8 gleich 0 mit der p-q-Formel.")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Löse die quadratische Gleichung $x^2 + 2x - 8 = 0$ mit der p-q-Formel.", 
answerOptions: ("$x_1 = 2$, $x_2 = -4$", "$x_1 = 0$, $x_2 = 12$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
b: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
), 
answerOptionMatcher:("$x_1 = \key{a}$, $x_2 = \key{b}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)