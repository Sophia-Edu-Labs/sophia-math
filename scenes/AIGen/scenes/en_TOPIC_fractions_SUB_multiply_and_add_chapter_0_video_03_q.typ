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
    $ 7/8 dot 4/9 $
  ]

  #only("1")[
    #voiceover("Let's practice multiplying fractions. Calculate seven-eighths times four-ninths.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply $\frac{7}{8}$ by $\frac{4}{9}$.", 
answerOptions: ("$\frac{28}{72}$", "$\frac{-52}{-140}$"), 
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