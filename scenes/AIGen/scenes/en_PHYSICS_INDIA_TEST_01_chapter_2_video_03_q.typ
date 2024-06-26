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
    Consider a conductor with:
    - 1000 free electrons per cubic millimeter
    - Volume: 2 mm³
  ]

  #v(20pt)

  #only("2-")[
    #text(size: 24pt, weight: "bold")[Question: How many free electrons in total? 🤔]
  ]

  #only("1")[
    #voiceover("Let's consider a conductor with some interesting properties.")
  ]

  #only("2")[
    #voiceover("If this conductor has 1000 free electrons per cubic millimeter, and we're looking at a volume of 2 cubic millimeters, how many free electrons are there in total?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "If a conductor has $1000$ free electrons per cubic millimeter, what is the total number of free electrons in $2 	ext{ mm}^3$?", 
answerOptions: ("$\text{Total number of free electrons} = 2000$", "$\text{Total number of free electrons} = -3996$"), 
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