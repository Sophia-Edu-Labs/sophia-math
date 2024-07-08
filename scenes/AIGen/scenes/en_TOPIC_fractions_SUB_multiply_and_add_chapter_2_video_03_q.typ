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
    $ 6/7 dot 2/3 $
  ]

  #only("1")[
    #voiceover("Let's practice multiplying fractions. Calculate six-sevenths times two-thirds.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply $\frac{6}{7}$ by $\frac{2}{3}$.", 
answerOptions: ("$\frac{12}{21}$", "$\frac{-20}{-38}$"), 
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