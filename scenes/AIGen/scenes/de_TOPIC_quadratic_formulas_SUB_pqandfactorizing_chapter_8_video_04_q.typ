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
    Betrachte die quadratische Gleichung:
    #v(10pt)
    $ x^2 - 3x + 2 = 0 $
  ]

  #v(20pt)

  #only("2-")[
    Löse sie mit der p-q-Formel 🧮
  ]

  #only("1")[
    #voiceover("Lass uns üben, quadratische Gleichungen zu lösen. Betrachte die folgende quadratische Gleichung:")
  ]

  #only("2")[
    #voiceover("Kannst du $x$ quadrat minus $3x$ plus $2$ gleich $0$ mit der p-q-Formel lösen?")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Löse die quadratische Gleichung $x^2 - 3x + 2 = 0$ mit der p-q-Formel.", 
answerOptions: ("$x_1 = 1$, $x_2 = 2$", "$x_1 = 2$, $x_2 = 0$"), 
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