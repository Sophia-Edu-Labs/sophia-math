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
    #align(center)[
      $11 + 22 + 33$
    ]
  ]

  #only("1")[
    #voiceover("Let's practice adding multiple integers with two digits. Calculate the sum of 11, 22, and 33.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add $11 + 22 + 33$.", 
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