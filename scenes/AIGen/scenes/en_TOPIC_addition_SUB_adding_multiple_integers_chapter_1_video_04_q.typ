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
      #text(size: 24pt)[$ 3 + 5 + 2 $]
    ]
  ]

  #only("1")[
    #voiceover("Let's practice adding three single-digit integers. Calculate the sum of 3, 5, and 2.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add $3 + 5 + 2$.", 
answerOptions: ("$10$", "$-16$"), 
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