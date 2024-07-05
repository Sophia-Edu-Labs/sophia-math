#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Derivative Evaluation]
  #v(40pt)

  #only("1-")[
    Given: $f(x) = 4x^3 + 3x^2 + 2x$
  ]
  #v(20pt)

  #only("2-")[
    Find: $f'(1)$
  ]

  #only("1")[
    #voiceover("Let's consider the following question:")
  ]

  #only("2")[
    #voiceover("What is the value of the derivative of the function f of x equals 4x cubed plus 3x squared plus 2x, evaluated at x equals 1?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of the derivative of $f(x) = 4x^3 + 3x^2 + 2x$ at $x = 1$?", 
answerOptions: ("$17$", "$-30$"), 
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