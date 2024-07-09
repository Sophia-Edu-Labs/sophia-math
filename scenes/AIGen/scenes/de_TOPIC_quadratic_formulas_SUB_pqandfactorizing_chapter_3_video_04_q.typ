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
    #align(center)[$ x^2 - 3x - 4 = 0 $]
  ]

  #v(40pt)

  #only("2-")[
    Verwende die p-q-Formel:
    #v(20pt)
    #align(center)[$ x = -p/2 ± sqrt((p/2)^2 + q) $]
  ]

  #only("1")[
    #voiceover("Lass uns üben, eine quadratische Gleichung mit der p-q-Formel zu lösen.")
  ]

  #only("2")[
    #voiceover("Hier ist unsere Gleichung: x Quadrat minus 3x minus 4 gleich null. Kannst du das mit der p-q-Formel lösen?")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Löse die quadratische Gleichung $x^2 - 3x - 4 = 0$ mit der p-q-Formel.", 
answerOptions: ("$x_1 = 4$ und $x_2 = -1$", "$x_1 = -4$ und $x_2 = 6$"), 
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
answerOptionMatcher:("$x_1 = \key{a}$ und $x_2 = \key{b}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)