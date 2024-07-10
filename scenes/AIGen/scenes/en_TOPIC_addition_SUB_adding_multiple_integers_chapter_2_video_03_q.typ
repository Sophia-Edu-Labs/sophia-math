#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice adding four single-digit integers.")
  ]
  #text(size: 30pt, weight: "bold")[Adding Single-Digit Integers]
  #v(40pt)
  #only("2-")[
    Calculate:
    #v(20pt)
    #align(center)[
      #text(size: 24pt)[2 + 3 + 4 + 5]
    ]
  ]
  #only("2")[
    #voiceover("Calculate the sum of two plus three plus four plus five.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add $2 + 3 + 4 + 5$.", 
answerOptions: ("$\text{Answer: } 14$", "$\text{Answer: } -24$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\text{Answer: } \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)