#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Derivative at a Point]
  #v(40pt)

  #only("1-")[
    Given: $f(x) = x^3 + x^2$
  ]

  #v(20pt)

  #only("2-")[
    Find: $f'(2)$
  ]

  #only("1")[
    #voiceover("Let's consider the function f of x equals x cubed plus x squared.")
  ]

  #only("2")[
    #voiceover("We need to find the value of its derivative at x equals 2. In other words, calculate f prime of 2.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of the derivative of $f(x) = x^3 + x^2$ at $x = 2$?", 
answerOptions: ("$16$", "$-28$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)