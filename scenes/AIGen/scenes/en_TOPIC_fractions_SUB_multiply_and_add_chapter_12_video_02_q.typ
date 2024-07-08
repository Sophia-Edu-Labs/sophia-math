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
    Calculate: $3/4 dot 5/6$
  ]
  #only("2")[
    #voiceover("Calculate three-fourths multiplied by five-sixths.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply $\frac{3}{4}$ by $\frac{5}{6}$. What is the result?", 
answerOptions: ("$\frac{15}{24}$", "$\frac{-26}{-44}$"), 
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