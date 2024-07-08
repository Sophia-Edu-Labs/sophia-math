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
    $ 1/2 dot 3/4 $
  ]
  #only("2")[
    #voiceover("Calculate the product of one-half and three-fourths.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply $\frac{1}{2}$ by $\frac{3}{4}$.", 
answerOptions: ("$\frac{1}{2} \\times \frac{3}{4} = 0.375$", "$\frac{1}{2} \\times \frac{3}{4} = 3.25$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{1}{2} \\times \frac{3}{4} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)