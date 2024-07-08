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
    #v(20pt)
    $ f(x) = -2x^3 $
  ]

  #v(40pt)

  #only("2-")[
    Calculate:
    #v(20pt)
    $ f(3) = ? $
  ]

  #only("1")[
    #voiceover("Let's practice evaluating a power function with a negative coefficient.")
  ]

  #only("2")[
    #voiceover("Given the function f of x equals negative two times x cubed, what is the value of f of 3?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of $f(3)$ for the power function $f(x) = -2x^3$?", 
answerOptions: ("$f(3) = -54$", "$f(3) = 112$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f(3) = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)