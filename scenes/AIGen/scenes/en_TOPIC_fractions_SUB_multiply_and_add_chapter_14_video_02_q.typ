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
    $ 7/9 dot 2/3 $
  ]

  #only("1")[
    #voiceover("Let's practice multiplying fractions. Calculate seven-ninths times two-thirds.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply $\frac{7}{9}$ by $\frac{2}{3}$.", 
answerOptions: ("$\frac{7}{9} \\times \frac{2}{3} = 0.5185$", "$\frac{7}{9} \\times \frac{2}{3} = 2.963$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{7}{9} \\times \frac{2}{3} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)