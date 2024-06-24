#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Electric Current and Charge]
  #v(40pt)

  #only("1-")[
    Given:
    - Current: 2.5 amperes (A)
    - Time: 8 seconds (s)
  ]

  #only("2-")[
    Question: How much charge passes through the circuit? ⚡
  ]

  #only("1")[
    #voiceover("Let's consider an electric circuit problem.")
  ]

  #only("2")[
    #voiceover("If a current of 2.5 amperes flows for 8 seconds, how much charge passes through the circuit?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "If a current of $2.5$ amperes flows for $8$ seconds, how much charge passes through the circuit?", 
answerOptions: ("$Q = 20$", "$Q = -36$"), 
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