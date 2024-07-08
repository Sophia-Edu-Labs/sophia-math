#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[
    #text(size: 30pt, weight: "bold")[Chain Rule Application]
  ]
  #v(40pt)

  #only("2-")[
    Differentiate:
    #v(10pt)
    $ f(x) = (x^2 + 2)^4 $
  ]
  #v(20pt)

  #only("3-")[
    Find:
    #v(10pt)
    $ f'(1) $
  ]

  #only("1")[
    #voiceover("Let's practice applying the chain rule with a more complex function.")
  ]

  #only("2")[
    #voiceover("Here's our problem: Differentiate f of x, where f of x equals x squared plus 2, all raised to the fourth power.")
  ]

  #only("3")[
    #voiceover("After finding the derivative, we need to evaluate f prime at x equals 1.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Differentiate $f(x) = (x^2 + 2)^4$ and find $f'(1)$.", 
answerOptions: ("$f'(1) = 64$", "$f'(1) = -124$"), 
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