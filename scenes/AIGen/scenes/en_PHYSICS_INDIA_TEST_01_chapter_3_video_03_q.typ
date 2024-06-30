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
    - Electric field: 10 V/m
    - Electron displacement: 5 mm
  ]

  #only("2-")[
    #text(size: 24pt, weight: "bold")[Question: How much work is done on the electron? 🤔]
  ]

  #only("3-")[
    #text(size: 18pt, fill: gray)[Hint: 1.6 × 10^(-19) J is the work done to move 1 million electrons through 1 V]
  ]

  #only("1")[
    #voiceover("Consider an electric field of 10 volts per meter applied to a conductor.")
  ]

  #only("2")[
    #voiceover("An electron moves 5 millimeters in this field. Calculate the work done on the electron.")
  ]

  #only("3")[
    #voiceover("You're given that 1.6 times 10 to the negative 19 joules is the work done to move 1 million electrons through 1 volt. Use this information to solve the problem.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "If an electric field of $10 \, \\text{V/m}$ is applied to a conductor, and an electron moves $5 \, \\text{mm}$, what work is done on the electron? (Use $1.6 \\times 10^{-4} \, \\text{J}$ as the work done to move $1$ million electrons through $1 \, \\text{V}$)", 
answerOptions: ("$\\text{Work} = 8e-21 \, \\text{J}$", "$\\text{Work} = 4.0 \, \\text{J}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.00010010100000000001),
), 
answerOptionMatcher:("$\\text{Work} = \key{a} \, \\text{J}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)