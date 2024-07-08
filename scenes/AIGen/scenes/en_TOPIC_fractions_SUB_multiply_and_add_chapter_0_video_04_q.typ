#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Multiplying Fractions]
  #v(40pt)

  #only("1-")[
    Calculate:
    #v(20pt)
    $ 5/6 dot 3/7 $
  ]

  #only("1")[
    #voiceover("Let's practice multiplying fractions. Calculate five-sixths times three-sevenths.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply $\frac{5}{6}$ by $\frac{3}{7}$.", 
answerOptions: ("$\frac{15}{42}$", "$\frac{-26}{-80}$"), 
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
answerOptionMatcher:("$\frac{\key{a}}{\key{b}}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)