#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Evaluating Cubic Functions]
  #v(40pt)

  #only("1-")[
    Consider the cubic function:
    #v(10pt)
    $ f(x) = 2x^3 + 3x^2 + x + 1 $
  ]

  #v(20pt)

  #only("2-")[
    Question: What is the value of $f(1)$?
  ]

  #only("1")[
    #voiceover("Let's practice evaluating cubic functions. Consider the following cubic function:")
  ]

  #only("2")[
    #voiceover("Your task is to determine the value of f of 1. In other words, what is the output of the function when x equals 1?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of $f(1)$ for the cubic function $f(x) = 2x^3 + 3x^2 + x + 1$?", 
answerOptions: ("$f(1) = 7$", "$f(1) = -10$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
), 
answerOptionMatcher:("$f(1) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)