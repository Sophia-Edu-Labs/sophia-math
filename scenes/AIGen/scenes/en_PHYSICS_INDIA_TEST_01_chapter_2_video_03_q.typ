#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Free Electrons in a Conductor]
  #v(40pt)

  #only("1-")[
    - Conductor: 5 × 10^22 free electrons per cm³
    - Volume: 2 cm³
  ]

  #only("2-")[
    #text(size: 24pt, weight: "bold")[Question: How many free electrons in total? 🤔]
  ]

  #only("1")[
    #voiceover("Let's consider a conductor with a specific concentration of free electrons.")
  ]

  #only("2")[
    #voiceover("Given that this conductor has 5 times 10 to the power of 22 free electrons per cubic centimeter, and we're looking at a volume of 2 cubic centimeters, calculate the total number of free electrons in this volume.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "If a conductor has $5 \\times 10^{22}$ free electrons per cubic centimeter, what is the total number of free electrons in $2 \\text{ cm}^3$?", 
answerOptions: ("$\text{Total number of free electrons} = 1e+23$", "$\text{Total number of free electrons} = -2e+23$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Total number of free electrons} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)