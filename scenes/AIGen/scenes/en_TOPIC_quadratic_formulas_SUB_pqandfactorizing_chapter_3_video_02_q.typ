#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Solving Quadratic Equations]
  #v(40pt)

  #only("1-")[
    Solve the quadratic equation:
    #v(20pt)
    #align(center)[$ x^2 - 6x + 9 = 0 $]
  ]

  #v(40pt)

  #only("2-")[
    Using the p-q formula:
    #v(10pt)
    #align(center)[$ x = -p/2 ± sqrt((p/2)^2 - q) $]
  ]

  #only("1")[
    #voiceover("Let's practice solving a quadratic equation using the p-q formula. Here's our problem:")
  ]

  #only("2")[
    #voiceover("Can you solve this equation using the p-q formula? Remember, the p-q formula states that x equals negative p over 2, plus or minus the square root of p over 2 squared minus q.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Solve the quadratic equation $x^2 - 6x + 9 = 0$ using the p-q formula.", 
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