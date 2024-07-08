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
    $ 4/5 dot 3/4 $
  ]

  #only("1")[
    #voiceover("Let's practice multiplying fractions. Calculate four-fifths multiplied by three-fourths.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply $\frac{4}{5}$ by $\frac{3}{4}$. What is the result?", 
answerOptions: ("$\frac{4}{5} \\times \frac{3}{4} = 0.6$", "$\frac{4}{5} \\times \frac{3}{4} = 2.8$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\frac{4}{5} \\times \frac{3}{4} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)