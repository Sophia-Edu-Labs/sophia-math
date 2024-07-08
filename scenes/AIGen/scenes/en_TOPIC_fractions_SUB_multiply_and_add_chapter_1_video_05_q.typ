#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice multiplying fractions.")
  ]
  #text(size: 30pt, weight: "bold")[Multiplying Fractions]
  #v(40pt)
  #only("2-")[
    Calculate:
    #v(20pt)
    $ 2/7 dot 4/6 $
  ]
  #only("2")[
    #voiceover("Calculate the product of two-sevenths and four-sixths.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply $\frac{2}{7}$ by $\frac{4}{6}$.", 
answerOptions: ("$\frac{2}{7} \\times \frac{4}{6} = 0.1905$", "$\frac{2}{7} \\times \frac{4}{6} = 3.6189999999999998$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{2}{7} \\times \frac{4}{6} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)