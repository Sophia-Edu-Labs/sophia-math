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
      $10 + 20 + 30$
    ]
  ]

  #only("1")[
    #voiceover("Let's practice adding multiple integers with two digits. Calculate the sum of 10 plus 20 plus 30.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add $10 + 20 + 30$.", 
answerOptions: ("$60$", "$-116$"), 
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