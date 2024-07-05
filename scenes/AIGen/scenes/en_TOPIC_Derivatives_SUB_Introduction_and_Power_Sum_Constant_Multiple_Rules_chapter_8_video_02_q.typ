#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Derivative Using Power Rule]
  #v(40pt)

  #only("1-")[
    Find the derivative of:
    #v(20pt)
    $ f(x) = 2x^3 + 3x^2 $
  ]

  #only("1")[
    #voiceover("In this exercise, we'll practice using the power rule and sum rule for derivatives. Let's find the derivative of the function f of x equals 2 x cubed plus 3 x squared.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Find the derivative of $f(x) = 2x^3 + 3x^2$.", 
answerOptions: ("$f'(x) = 6x^2 + 6x$", "$f'(x) = 6x^2 + -8x$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f'(x) = 6x^2 + \key{a}x$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)