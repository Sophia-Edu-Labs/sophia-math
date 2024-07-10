#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice adding three single-digit integers.")
  ]
  #text(size: 30pt, weight: "bold")[Adding Three Numbers]
  #v(40pt)
  
  #only("2-")[
    Calculate:
    #v(20pt)
    #align(center)[
      #text(size: 24pt)[$ 4 + 4 + 4 $]
    ]
  ]
  
  #only("2")[
    #voiceover("Calculate the sum of four plus four plus four.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add $4 + 4 + 4$.", 
answerOptions: ("$12$", "$-20$"), 
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