#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Power Function Evaluation]
  #v(40pt)

  #only("1-")[
    Consider the power function:
    #v(10pt)
    $ f(x) = 3 / x^2 $
  ]

  #v(20pt)

  #only("2-")[
    Question: What is the value of $f(2)$?
  ]

  #only("1")[
    #voiceover("Let's consider a power function with a negative exponent.")
  ]

  #only("2")[
    #voiceover("Our task is to evaluate this function at x equals 2. Can you calculate f of 2?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of $f(2)$ for the power function $f(x) = \frac{3}{x^2}$?", 
answerOptions: ("$f(2) = 0.75$", "$f(2) = 2.5$"), 
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