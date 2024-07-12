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
  #text(size: 30pt, weight: "bold")[Adding Integers]
  #v(40pt)
  
  #only("2-")[
    Calculate: $5 + 10 + 15$
  ]
  
  #only("2")[
    #voiceover("Calculate the sum of 5, 10, and 15.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Add $5 + 10 + 15$.", 
answerOptions: ("$\text{Result: } 30$", "$\text{Result: } -56$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Result: } \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)