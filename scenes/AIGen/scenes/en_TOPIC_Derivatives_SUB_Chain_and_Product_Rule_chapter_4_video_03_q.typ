#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice applying the product rule for differentiation.")
  ]
  #text(size: 30pt, weight: "bold")[Product Rule Practice]
  #v(40pt)

  #only("2-")[
    Differentiate:
    #v(10pt)
    $ f(x) = x^2 e^x $
  ]
  #v(20pt)
  #only("3-")[
    Find:
    #v(10pt)
    $ f'(1) $
  ]

  #only("2")[
    #voiceover("Here's our exercise: Differentiate the function f of x equals x squared times e to the x.")
  ]

  #only("3")[
    #voiceover("And then, find the value of f prime at x equals 1.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Differentiate $f(x) = x^2 e^x$ and find $f'(1)$.", 
answerOptions: ("$f'(1) = 3.718$", "$f'(1) = -3.436$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f'(1) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)