#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Electric Current Calculation]
  #v(40pt)

  #only("1-")[
    - Charge: 30 coulombs (C)
  ]

  #only("2-")[
    - Time: 5 seconds (s)
  ]

  #only("3-")[
    #text(size: 24pt, weight: "bold")[Question: What is the current? 🤔⚡]
  ]

  #only("1")[
    #voiceover("Let's consider an electric circuit.")
  ]

  #only("2")[
    #voiceover("A charge of 30 coulombs passes through a point in this circuit in 5 seconds.")
  ]

  #only("3")[
    #voiceover("Your task is to calculate the electric current in this circuit. Remember, current is defined as the rate of flow of electric charge.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "A charge of $30$ coulombs passes through a point in a circuit in $5$ seconds. What is the current?", 
answerOptions: ("$I = \frac{Q}{t} = \frac{30}{5} = 6$", "$I = \frac{Q}{t} = \frac{30}{5} = -8$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$I = \frac{Q}{t} = \frac{30}{5} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)