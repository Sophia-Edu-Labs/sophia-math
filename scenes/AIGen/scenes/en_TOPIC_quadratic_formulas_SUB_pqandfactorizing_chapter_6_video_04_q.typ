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
    $ x^2 + 5x + 6 = 0 $
  ]

  #v(40pt)

  #only("2-")[
    By factorizing 🧮
  ]

  #only("1")[
    #voiceover("In this exercise, we'll practice solving a quadratic equation.")
  ]

  #only("2")[
    #voiceover("Your task is to solve the equation x squared plus 5x plus 6 equals 0 by factorizing. Give it a try!")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Solve the quadratic equation $x^2 + 5x + 6 = 0$ by factorizing.", 
answerOptions: ("$ (x + -2)(x + -3) = 0 $", "$ (x + 8)(x + 10) = 0 $"), 
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
answerOptionMatcher:("$ (x + \key{a})(x + \key{b}) = 0 $"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)