#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Work Done by Electric Field]
  #v(40pt)

  #only("1-")[
    An electric field of 100 V/m is applied to a conductor.
  ]

  #v(20pt)

  #only("2-")[
    An electron moves 2 mm in this field.
  ]

  #v(20pt)

  #only("3-")[
    Electron charge = $1.6 × 10^(-19)$ C
  ]

  #v(40pt)

  #only("4-")[
    #text(size: 24pt, weight: "bold")[Question: What work is done on the electron? 🤔]
  ]

  #only("1")[
    #voiceover("Let's consider a scenario involving an electric field in a conductor.")
  ]

  #only("2")[
    #voiceover("An electron moves a small distance within this field.")
  ]

  #only("3")[
    #voiceover("We know the electron's charge, which is a fundamental constant in physics.")
  ]

  #only("4")[
    #voiceover("Your task is to calculate the work done on the electron by the electric field. Remember to consider the relationship between electric field strength, distance, charge, and work.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "If an electric field of $100 \, \\text{V/m}$ is applied to a conductor, and an electron moves $2 \, \\text{mm}$, what work is done on the electron? (electron charge = $1.6 \\times 10^{-19} \, \\text{C}$)", 
answerOptions: ("$\text{Work} = -3.2e-19 \, \\text{J}$", "$\text{Work} = 4.0 \, \\text{J}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.0100000000000101e-07),
), 
answerOptionMatcher:("$\text{Work} = \key{a} \, \\text{J}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)