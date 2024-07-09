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
    $ x^2 + 6x + 9 = 0 $
  ]

  #v(40pt)

  #only("2-")[
    Using the p-q formula
  ]

  #only("1")[
    #voiceover("Let's practice solving a quadratic equation. Here's our problem:")
  ]

  #only("2")[
    #voiceover("We need to solve x squared plus 6x plus 9 equals 0 using the p-q formula.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Solve the quadratic equation $x^2 + 6x + 9 = 0$ by the p-q formula.", 
answerOptions: ("$x = -3$", "$x = 10$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
), 
answerOptionMatcher:("$x = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)