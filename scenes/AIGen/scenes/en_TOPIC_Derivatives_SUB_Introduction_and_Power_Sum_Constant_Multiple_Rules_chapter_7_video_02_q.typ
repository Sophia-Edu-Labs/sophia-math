#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[
    #text(size: 30pt, weight: "bold")[Derivative of a Power Function]
  ]
  #v(40pt)

  #only("2-")[
    Find the derivative of $f(x) = 5x^3$
  ]

  #only("1")[
    #voiceover("In this exercise, we'll practice applying the constant multiple rule to find the derivative of a power function.")
  ]

  #only("2")[
    #voiceover("Find the derivative of the function f of x equals 5 times x cubed.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Find the derivative of $f(x) = 5x^3$.", 
answerOptions: ("$f'(x) = 15x^2$", "$f'(x) = -26x^0$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
b: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$f'(x) = \key{a}x^\key{b}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)