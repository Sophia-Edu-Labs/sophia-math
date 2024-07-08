#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Fraction Multiplication]
  #v(40pt)

  #only("1-")[
    Calculate:
    #v(20pt)
    $ 4/5 dot 3/8 $
  ]

  #only("1")[
    #voiceover("Let's practice multiplying fractions. Calculate four-fifths times three-eighths.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply $\frac{4}{5}$ by $\frac{3}{8}$.", 
answerOptions: ("$\frac{4}{5} \\times \frac{3}{8} = 0.3$", "$\frac{4}{5} \\times \frac{3}{8} = 3.4$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{4}{5} \\times \frac{3}{8} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)