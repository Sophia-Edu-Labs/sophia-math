#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Product Rule Application]
  #v(40pt)

  #only("1-")[
    Differentiate $f(x) = x^2 e^x$ and find $f'(0)$
  ]

  #only("1")[
    #voiceover("Let's practice applying the product rule. Our task is to differentiate the function f of x equals x squared times e to the x, and then find the value of f prime at x equals zero.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Differentiate $f(x) = x^2 e^x$ and find $f'(0)$. What is $f'(0)$?", 
answerOptions: ("$f'(0) = 0$", "$f'(0) = 4$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f'(0) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)