#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1-")[#text(size: 30pt, weight: "bold")[Derivative Using Sum Rule]]
  #v(40pt)

  #only("2-")[
    Find the derivative of:
    $ f(x) = x^2 + 3x $
  ]

  #only("1")[
    #voiceover("Let's practice applying the sum rule for derivatives.")
  ]

  #only("2")[
    #voiceover("Find the derivative of the function f of x, which equals x squared plus three x.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Find the derivative of $f(x) = x^2 + 3x$.", 
answerOptions: ("$f'(x) = 2x + 3$", "$f'(x) = 2x + 3$"), 
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
answerOptionMatcher:("$f'(x) = 2x + 3$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)