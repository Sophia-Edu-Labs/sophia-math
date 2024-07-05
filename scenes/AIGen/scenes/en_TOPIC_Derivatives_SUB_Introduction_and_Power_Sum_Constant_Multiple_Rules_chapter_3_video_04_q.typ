#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Derivative of Power Function]
  #v(40pt)

  #only("1-")[
    Calculate the derivative of $f(x) = 6x^4$ at $x = 1$
  ]

  #only("1")[
    #voiceover("Let's practice applying the constant multiple rule for derivatives. Calculate the derivative of the function f of x equals 6 times x to the fourth power, evaluated at x equals 1.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the value of the derivative of $f(x) = 6x^4$ at $x = 1$?", 
answerOptions: ("$24$", "$-44$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)