#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Evaluating Quadratic Functions]
  #v(40pt)

  #only("1-")[
    Consider the quadratic function:
    #v(10pt)
    $ f(x) = 3x^2 + 2x + 1 $
  ]

  #v(20pt)

  #only("2-")[
    Question: What is the value of $f(2)$?
  ]

  #only("1")[
    #voiceover("Let's practice evaluating a quadratic function. Consider the function f of x equals 3x squared plus 2x plus 1.")
  ]

  #only("2")[
    #voiceover("Your task is to determine the value of f of 2. In other words, what is the output of this function when we input 2?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of $f(2)$ for the quadratic function $f(x) = 3x^2 + 2x + 1$?", 
answerOptions: ("$f(2) = 17$", "$f(2) = -30$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f(2) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)