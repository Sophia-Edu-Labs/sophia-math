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
      $14 + 24 + 34$
    ]
  ]

  #only("1")[
    #voiceover("Let's practice adding multiple integers with two digits. Calculate the sum of 14, 24, and 34.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add $14 + 24 + 34$.", 
answerOptions: ("$72$", "$-140$"), 
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