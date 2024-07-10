#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Addition Practice]
  #v(40pt)

  #only("1-")[
    Calculate:
    #v(20pt)
    #align(center)[
      $2 + 2 + 2 + 2$
    ]
  ]

  #only("1")[
    #voiceover("Let's practice adding four single-digit integers. Calculate the sum of two plus two plus two plus two.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add $2 + 2 + 2 + 2$.", 
answerOptions: ("$8$", "$-12$"), 
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