#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Electric Charge Flow]
  #v(40pt)

  #only("1-")[
    - Current: 3 amperes (A)
    - Time: 4 seconds (s)
  ]

  #v(20pt)

  #only("2-")[
    #text(size: 24pt, weight: "bold")[Question: How much charge has flowed? 🤔⚡]
  ]

  #only("1")[
    #voiceover("Let's consider an electric current scenario.")
  ]

  #only("2")[
    #voiceover("A current of 3 amperes flows through a wire for 4 seconds. Your task is to calculate the total charge that has flowed during this time. Remember, charge is measured in coulombs.")
  ]
]


//Type: Numeric
#questionDef(
questionText: "A current of $3$ amperes flows through a wire for $4$ seconds. How much charge has flowed?", 
answerOptions: ("$Q = 12$", "$Q = -20$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$Q = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)