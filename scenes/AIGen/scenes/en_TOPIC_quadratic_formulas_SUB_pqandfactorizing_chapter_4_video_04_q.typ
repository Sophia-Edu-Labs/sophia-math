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
    $ x^2 - 4x + 4 = 0 $
  ]

  #only("2-")[
    by factorizing.
  ]

  #only("1")[
    #voiceover("In this exercise, we'll practice solving a quadratic equation.")
  ]

  #only("2")[
    #voiceover("Your task is to solve the equation x squared minus 4x plus 4 equals 0 by using the factorization method.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Solve the quadratic equation $x^2 - 4x + 4 = 0$ by factorizing.", 
answerOptions: ("$x^2 - 4x + 4 = (x - 2)(x - 2)$", "$x^2 - 4x + 4 = (x - 0)(x - 0)$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
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