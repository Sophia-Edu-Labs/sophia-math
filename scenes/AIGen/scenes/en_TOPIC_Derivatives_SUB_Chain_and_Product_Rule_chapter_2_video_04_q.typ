#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Differentiation with Chain and Product Rules]
  #v(40pt)

  #only("1-")[
    Differentiate $f(x) = x sin(x^2)$ and find $f'(1)$
  ]

  #only("1")[
    #voiceover("In this exercise, we'll practice combining the chain rule and product rule. Your task is to differentiate the function f of x equals x times sine of x squared, and then find the value of f prime at x equals 1.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Differentiate $f(x) = x \sin(x^2)$ and find $f'(1)$. ", 
answerOptions: ("$f'(1) = 1.682941969615793$", "$f'(1) = 0.634116060768414$"), 
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