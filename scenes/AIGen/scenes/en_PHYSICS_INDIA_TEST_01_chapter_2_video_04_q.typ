#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Free Electron Charge]
  #v(40pt)

  #only("1-")[
    Consider a conductor with:
    - Volume: 3 mm³
    - Density: 500 free electrons per mm³
  ]

  #only("2-")[
    Given: 1 million electrons have a charge of $1.6 × 10^(-4)$ C
  ]

  #only("3-")[
    #text(size: 24pt, weight: "bold")[Question: What is the total charge of free electrons? 🤔]
  ]

  #only("1")[
    #voiceover("Let's consider a conductor with some interesting properties.")
  ]

  #only("2")[
    #voiceover("We're given that one million electrons have a charge of 1.6 times 10 to the negative 4 Coulombs.")
  ]

  #only("3")[
    #voiceover("Your task is to calculate the total charge of free electrons in this conductor. Think about how you can use the given information to solve this problem.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Calculate the total charge of free electrons in $3 	ext{ mm}^3$ of a conductor with $500$ free electrons per cubic millimeter. (Use $1.6 	imes 10^{-4} 	ext{ C}$ as the charge of $1$ million electrons)", 
answerOptions: ("$\text{Total charge} = 0.00024 \\text{ C}$", "$\text{Total charge} = 3.99952 \\text{ C}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Total charge} = \key{a} \\text{ C}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)