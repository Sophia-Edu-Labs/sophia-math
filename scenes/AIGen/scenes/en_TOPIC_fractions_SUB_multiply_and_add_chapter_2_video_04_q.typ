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
    $ 8/9 dot 1/2 $
  ]

  #only("1")[
    #voiceover("Let's practice multiplying fractions. Calculate eight-ninths multiplied by one-half.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply $\frac{8}{9}$ by $\frac{1}{2}$.", 
answerOptions: ("$\frac{8}{9} \\times \frac{1}{2} = 0.4444$", "$\frac{8}{9} \\times \frac{1}{2} = 3.1112$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{8}{9} \\times \frac{1}{2} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)