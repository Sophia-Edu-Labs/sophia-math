#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Quadratic Equation]
  #v(40pt)

  #only("1-")[
    Solve the quadratic equation:
    #v(20pt)
    $ x^2 - 7x + 12 = 0 $
  ]

  #v(20pt)

  #only("2-")[
    by factorizing 📊
  ]

  #only("1")[
    #voiceover("Let's practice solving quadratic equations. Here's our problem:")
  ]

  #only("2")[
    #voiceover("Solve the quadratic equation x squared minus seven x plus twelve equals zero by factorizing.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Solve the quadratic equation $x^2 - 7x + 12 = 0$ by factorizing.", 
answerOptions: ("$ (x - 3)(x - 4) = 0 $", "$ (x - -2)(x - -4) = 0 $"), 
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
answerOptionMatcher:("$ (x - \key{a})(x - \key{b}) = 0 $"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)