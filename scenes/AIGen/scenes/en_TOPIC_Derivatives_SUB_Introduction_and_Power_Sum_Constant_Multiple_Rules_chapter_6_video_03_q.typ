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
    Given: $f(x) = 2x^3 + x^2$
  ]

  #v(20pt)

  #only("2-")[
    Find: $f'(1)$
  ]

  #only("1")[
    #voiceover("Let's practice applying the sum rule for derivatives.")
  ]

  #only("2")[
    #voiceover("We're given the function f of x equals two x cubed plus x squared. Our task is to find the value of its derivative at x equals 1.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of the derivative of $f(x) = 2x^3 + x^2$ at $x = 1$?", 
answerOptions: ("$\frac{d}{dx} f(x) \bigg|_{x=1} = 8$", "$\frac{d}{dx} f(x) \bigg|_{x=1} = -12$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{d}{dx} f(x) \bigg|_{x=1} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)