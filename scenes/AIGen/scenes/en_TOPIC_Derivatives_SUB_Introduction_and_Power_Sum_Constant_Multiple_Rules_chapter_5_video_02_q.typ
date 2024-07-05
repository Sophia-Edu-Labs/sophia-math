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
    Find the derivative of $f(x) = 6x^5$
  ]

  #only("1")[
    #voiceover("Let's practice applying the power rule for differentiation.")
  ]

  #only("2")[
    #voiceover("Here's our question: Find the derivative of f of x equals 6 x to the fifth power.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Find the derivative of $f(x) = 6x^5$.", 
answerOptions: ("$f'(x) = 30x^4$", "$f'(x) = -56x^-4$"), 
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
answerOptionMatcher:("$f'(x) = \key{a}x^\key{b}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)