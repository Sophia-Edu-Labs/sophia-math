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
    Calculate: $5/8 dot 7/9$
  ]
  #only("2")[
    #voiceover("Calculate the product of five-eighths and seven-ninths.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Multiply $\frac{5}{8}$ by $\frac{7}{9}$. What is the result?", 
answerOptions: ("$\frac{35}{72}$", "$\frac{-66}{-140}$"), 
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