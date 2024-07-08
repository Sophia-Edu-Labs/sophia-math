#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Cubic Equations]
  #v(40pt)

  #only("1-")[
    Solve the equation:
    #v(20pt)
    $ x^3 = 27 $
  ]

  #only("1")[
    #voiceover("Let's practice solving a cubic equation. Your task is to solve the equation x cubed equals 27.")
  ]

  #only("2-")[
    #text(fill: blue)[Hint: Think about cube roots!]
  ]

  #only("2")[
    #voiceover("As a hint, consider what operation is the inverse of cubing a number.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Solve the equation $x^3 = 27$.", 
answerOptions: ("$x = 3$", "$x = -2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.001000101),
), 
answerOptionMatcher:("$x = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)