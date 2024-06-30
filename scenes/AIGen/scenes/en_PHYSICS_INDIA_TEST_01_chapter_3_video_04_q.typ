#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Electron Movement in a Conductor]
  #v(40pt)

  #only("1-")[
    - Electric field: 5 V/m
    - Work done: 4 × 10^(-4) J
    - Number of electrons: 1 million
  ]

  #only("2-")[
    #text(size: 24pt, weight: "bold")[Question: How far do the electrons move? 🤔]
  ]

  #only("1")[
    #voiceover("Consider a conductor with an electric field of 5 volts per meter. A million electrons move through this field, and 4 times 10 to the negative 4 joules of work is done on them.")
  ]

  #only("2")[
    #voiceover("Your task is to calculate how far these electrons would move under these conditions. Think about the relationship between work, force, and distance in an electric field.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "How far would a million electrons move in a conductor under an electric field of $5 \\text{ V/m}$ if $4 \\times 10^{-4} \\text{ J}$ of work is done on them?", 
answerOptions: ("$\\text{Distance} = 5.0 \\text{ meters}$", "$\\text{Distance} = -6.0 \\text{ meters}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\\text{Distance} = \key{a} \\text{ meters}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)