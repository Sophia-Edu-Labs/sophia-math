#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations]
  #v(40pt)

  #only("1-")[
    Solve the quadratic equation:
    #v(20pt)
    $ x^2 + 2x - 8 = 0 $
  ]

  #v(20pt)

  #only("2-")[
    Using the p-q formula
  ]

  #only("1")[
    #voiceover("Let's practice solving quadratic equations using the p-q formula. Here's our problem:")
  ]

  #only("2")[
    #voiceover("Solve the quadratic equation x squared plus 2x minus 8 equals 0 using the p-q formula.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Solve the quadratic equation $x^2 + 2x - 8 = 0$ using the p-q formula.", 
answerOptions: ("$x_1 = 2$, $x_2 = -4$", "$x_1 = 0$, $x_2 = 12$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
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