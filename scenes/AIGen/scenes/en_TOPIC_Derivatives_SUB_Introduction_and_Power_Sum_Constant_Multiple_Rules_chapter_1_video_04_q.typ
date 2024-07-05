#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice applying the power rule for derivatives.")
  ]
  #text(size: 30pt, weight: "bold")[Power Rule Application]
  #v(40pt)

  #only("2-")[
    Consider the function $f(x) = 4x^5$
  ]
  #v(20pt)

  #only("3-")[
    Find $f'(1)$
  ]

  #only("2")[
    #voiceover("Consider the function f of x equals 4 times x to the fifth power.")
  ]

  #only("3")[
    #voiceover("Find the value of the derivative of this function at x equals 1.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of the derivative of $f(x) = 4x^5$ at $x = 1$?", 
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