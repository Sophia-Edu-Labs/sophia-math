#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations by Factorizing]
  #v(40pt)

  #only("1-")[
    Consider the quadratic equation:
    #v(20pt)
    $ x^2 + 3x + 2 = 0 $
  ]

  #v(40pt)

  #only("2-")[
    Solve this equation by factorizing 🧮
  ]

  #only("1")[
    #voiceover("Let's practice solving quadratic equations by factorizing. Consider the following quadratic equation:")
  ]

  #only("2")[
    #voiceover("Your task is to solve this equation using the factorization method. Remember to find the factors that, when multiplied, give you the terms of the equation.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Solve the quadratic equation $x^2 + 3x + 2 = 0$ by factorizing.", 
answerOptions: ("$ (x + -1)(x + -2) = 0 $", "$ (x + 6)(x + 8) = 0 $"), 
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
answerOptionMatcher:("$ (x + \key{a})(x + \key{b}) = 0 $"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)