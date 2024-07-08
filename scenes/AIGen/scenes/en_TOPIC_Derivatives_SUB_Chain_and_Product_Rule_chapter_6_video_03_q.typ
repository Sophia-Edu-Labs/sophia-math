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
    Differentiate $f(x) = x^3 ln(x)$ and find $f'(1)$
  ]

  #only("1")[
    #voiceover("Let's practice applying the product rule. Your task is to differentiate the function f of x equals x cubed times the natural logarithm of x, and then find the value of f prime at x equals 1.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Differentiate $f(x) = x^3 \ln(x)$ and find $f'(1)$. ", 
answerOptions: ("$f'(1) = 3$", "$f'(1) = -2$"), 
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