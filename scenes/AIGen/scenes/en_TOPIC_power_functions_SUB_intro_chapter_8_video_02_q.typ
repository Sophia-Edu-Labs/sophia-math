#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Power Equations]
  #v(40pt)

  #only("1-")[
    Solve the equation:
    #v(20pt)
    $ 2x^4 = 32 $
  ]

  #only("1")[
    #voiceover("Let's practice solving a power equation. Your task is to solve the equation: 2 times x to the fourth power equals 32.")
  ]

  #only("2")[
    #voiceover("Take your time to work through this problem. Remember to use the properties of exponents and roots to simplify and solve the equation.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Solve the equation $2x^4 = 32$.", 
answerOptions: ("$x = 2$", "$x = 0$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$x = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)