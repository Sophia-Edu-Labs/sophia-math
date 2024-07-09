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
    $ x^2 - 2x - 3 = 0 $
  ]

  #v(40pt)

  #only("2-")[
    Verwende die p-q-Formel 🧮
  ]

  #only("1")[
    #voiceover("Lass uns üben, quadratische Gleichungen zu lösen. Hier ist unser Problem:")
  ]

  #only("2")[
    #voiceover("Löse die quadratische Gleichung x Quadrat minus 2x minus 3 gleich 0 mit der p-q-Formel.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Löse die quadratische Gleichung $x^2 - 2x - 3 = 0$ mit der p-q-Formel.", 
answerOptions: ("$x_1 = 3$, $x_2 = -1$", "$x_1 = -2$, $x_2 = 6$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
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