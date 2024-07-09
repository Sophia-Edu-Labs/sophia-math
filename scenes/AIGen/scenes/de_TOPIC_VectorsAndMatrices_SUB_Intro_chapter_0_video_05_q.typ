#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Vektordimension]
  #v(40pt)

  #only("1-")[
    Betrachte den Vektor:
    #v(10pt)
    $ v = (-2, 4, 3, -5) $
  ]

  #v(20pt)

  #only("2-")[
    Was ist die Dimension dieses Vektors?
  ]

  #only("1")[
    #voiceover("Lass uns eine Vektorfrage betrachten.")
  ]

  #only("2")[
    #voiceover("Was ist die Dimension des Vektors minus zwei, vier, drei, minus fünf?")
  ]
]

//Typ: Numerisch
#questionDef(
questionText: "Was ist die Dimension des Vektors $(-2, 4, 3, -5)$?", 
answerOptions: ("$\\text{Dimension} = 4$", "$\\text{Dimension} = -4$"), 
correctAnswerIndex: 0, // immer 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // immer 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\\text{Dimension} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)