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
    #align(center)[$ x^2 - 6x + 9 = 0 $]
  ]

  #v(40pt)

  #only("2-")[
    Verwende die p-q-Formel:
    #v(10pt)
    #align(center)[$ x = -p/2 ± sqrt((p/2)^2 - q) $]
  ]

  #only("1")[
    #voiceover("Lass uns üben, eine quadratische Gleichung mit der p-q-Formel zu lösen. Hier ist unser Problem:")
  ]

  #only("2")[
    #voiceover("Kannst du diese Gleichung mit der p-q-Formel lösen? Denke daran, die p-q-Formel besagt, dass x gleich minus p durch 2, plus oder minus die Quadratwurzel von p durch 2 zum Quadrat minus q ist.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Löse die quadratische Gleichung $x^2 - 6x + 9 = 0$ mit der p-q-Formel.", 
answerOptions: ("$x = 3$", "$x = -2$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
), 
answerOptionMatcher:("$x = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)