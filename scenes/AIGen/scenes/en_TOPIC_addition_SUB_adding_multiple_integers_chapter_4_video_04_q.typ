#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Adding Multiple Integers]
  #v(40pt)

  #only("1-")[
    Calculate:
    #v(20pt)
    $ 12 + 22 + 32 $
  ]

  #only("1")[
    #voiceover("In this exercise, we'll practice adding multiple two-digit integers. Calculate the sum of 12, 22, and 32.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add $12 + 22 + 32$.", 
answerOptions: ("$66$", "$-128$"), 
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