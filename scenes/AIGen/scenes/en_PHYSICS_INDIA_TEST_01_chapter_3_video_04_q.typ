#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Electron Movement in Electric Field]
  #v(40pt)

  #only("1-")[
    - Electric field strength: 50 V/m
    - Work done: 1.6 × 10^(-18) J
  ]

  #v(20pt)

  #only("2-")[
    #text(size: 24pt, weight: "bold")[Question: How far does the electron move? 🤔]
  ]

  #only("1")[
    #voiceover("Consider an electron in an electric field with a strength of 50 volts per meter.")
  ]

  #only("2")[
    #voiceover("If 1.6 times 10 to the power of negative 18 joules of work is done on the electron, how far does it move? Calculate the distance traveled by the electron in this scenario.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "How far would an electron move in a conductor under an electric field of $50 \\text{ V/m}$ if $1.6 \\times 10^{-18} \\text{ J}$ of work is done on it?", 
answerOptions: ("$d = 2e-20 \\text{ m}$", "$d = 4.0 \\text{ m}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$d = \key{a} \\text{ m}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)