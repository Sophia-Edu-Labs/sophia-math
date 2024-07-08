#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice multiplying fractions with this exercise.")
  ]
  #text(size: 30pt, weight: "bold")[Multiplying Fractions]
  #v(40pt)
  #only("2-")[
    #align(center)[
      Multiply: $3/4 × 2/5$
    ]
  ]
  #only("2")[
    #voiceover("Multiply three-fourths by two-fifths.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply $\frac{3}{4}$ by $\frac{2}{5}$.", 
answerOptions: ("$\frac{3}{4} \\times \frac{2}{5} = 0.3$", "$\frac{3}{4} \\times \frac{2}{5} = 3.4$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{3}{4} \\times \frac{2}{5} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)