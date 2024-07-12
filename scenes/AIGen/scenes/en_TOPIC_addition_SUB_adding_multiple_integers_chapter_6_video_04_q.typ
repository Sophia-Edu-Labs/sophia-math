#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding Mixed Numbers]
  #v(40pt)

  #only("1-")[
    Calculate: 3 + 12 + 24
  ]

  #only("1")[
    #voiceover("In this exercise, we'll practice adding mixed single-digit and two-digit integers. Let's calculate the sum of 3 plus 12 plus 24.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add $3 + 12 + 24$.", 
answerOptions: ("$39$", "$-74$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)