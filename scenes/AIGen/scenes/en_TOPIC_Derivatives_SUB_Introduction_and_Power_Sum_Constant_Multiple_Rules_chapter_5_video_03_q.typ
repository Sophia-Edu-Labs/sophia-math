#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[
    #text(size: 30pt, weight: "bold")[Power Rule Application]
  ]
  #v(40pt)

  #only("2-")[
    Calculate the derivative of $f(x) = 7x^6$ at $x = 2$
  ]

  #only("1")[
    #voiceover("Let's practice applying the power rule for derivatives.")
  ]

  #only("2")[
    #voiceover("Here's our question: Calculate the derivative of f of x equals 7 x to the sixth power, evaluated at x equals 2.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of the derivative of $f(x) = 7x^6$ at $x = 2$?", 
answerOptions: ("$1792$", "$-3580$"), 
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