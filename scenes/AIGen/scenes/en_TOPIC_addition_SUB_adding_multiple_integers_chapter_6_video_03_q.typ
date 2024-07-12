#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice adding mixed single-digit and two-digit integers.")
  ]
  #text(size: 30pt, weight: "bold")[Adding Mixed Integers]
  #v(40pt)
  #only("2-")[
    Calculate: $7 + 14 + 21$
  ]
  #only("2")[
    #voiceover("Calculate the sum of seven, fourteen, and twenty-one.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add $7 + 14 + 21$.", 
answerOptions: ("$42$", "$-80$"), 
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