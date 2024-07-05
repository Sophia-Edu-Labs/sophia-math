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
    Given: $f(x) = 4x^4 + 2x^3$
  ]
  #v(20pt)

  #only("2-")[
    Find: $f'(1)$
  ]

  #only("1")[
    #voiceover("Let's consider the function f of x equals 4 x to the fourth plus 2 x cubed.")
  ]

  #only("2")[
    #voiceover("We need to find the value of the derivative of this function at x equals 1.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of the derivative of $f(x) = 4x^4 + 2x^3$ at $x = 1$?", 
answerOptions: ("$20$", "$-36$"), 
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