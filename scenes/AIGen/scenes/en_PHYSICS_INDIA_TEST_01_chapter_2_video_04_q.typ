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
    - Volume: 3 cm³
    - Free electron density: 8 × 10^21 per cm³
  ]

  #v(20pt)

  #only("2-")[
    #text(size: 24pt, weight: "bold")[Question: What is the total charge of free electrons? 🤔]
  ]

  #only("1")[
    #voiceover("Let's consider a conductor with some specific properties.")
  ]

  #only("2")[
    #voiceover("Calculate the total charge of free electrons in 3 cubic centimeters of this conductor, given that it has 8 times 10 to the power of 21 free electrons per cubic centimeter.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Calculate the charge of free electrons in $3 	ext{ cm}^3$ of a conductor with $8 	imes 10^{21}$ free electrons per cubic centimeter.", 
answerOptions: ("$\text{Charge} = -3.84 \\text{ C}$", "$\text{Charge} = 11.68 \\text{ C}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.02e-07),
), 
answerOptionMatcher:("$\text{Charge} = \key{a} \\text{ C}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)