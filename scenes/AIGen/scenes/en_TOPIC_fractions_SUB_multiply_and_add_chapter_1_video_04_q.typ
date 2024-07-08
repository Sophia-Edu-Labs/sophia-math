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
    $ 3/5 dot 7/8 $
  ]
  #only("2")[
    #voiceover("Calculate three-fifths multiplied by seven-eighths.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply $\frac{3}{5}$ by $\frac{7}{8}$.", 
answerOptions: ("$\frac{21}{40}$", "$\frac{-38}{-76}$"), 
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