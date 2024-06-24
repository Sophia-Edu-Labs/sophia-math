#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Electric Current Calculation]
  #v(40pt)

  #only("1-")[
    Given:
    - Charge: 10 coulombs (C)
    - Time: 2 seconds (s)
  ]

  #only("2-")[
    Question: What is the current? 🤔
  ]

  #only("1")[
    #voiceover("Let's consider an electric circuit problem.")
  ]

  #only("2")[
    #voiceover("If 10 coulombs of charge flows through a wire in 2 seconds, what is the current? Remember, current is measured in amperes.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "If $10$ coulombs of charge flows through a wire in $2$ seconds, what is the current?", 
answerOptions: ("$I = \frac{10}{2}$", "$I = \frac{-16}{0}$"), 
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
answerOptionMatcher:("$I = \frac{\key{a}}{\key{b}}$"), 
answerOptionsTypes: ("a": "number",
"b": "number",
) 
), 
)