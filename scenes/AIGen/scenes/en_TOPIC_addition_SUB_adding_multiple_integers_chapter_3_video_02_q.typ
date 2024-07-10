#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding Single-Digit Integers]
  #v(40pt)

  #only("1-")[
    Calculate:
    #v(20pt)
    #align(center)[
      $1 + 1 + 1 + 1$
    ]
  ]

  #only("1")[
    #voiceover("In this exercise, we'll practice adding four single-digit integers. Calculate the sum of one plus one plus one plus one.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add $1 + 1 + 1 + 1$.", 
answerOptions: ("$4$", "$-4$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)