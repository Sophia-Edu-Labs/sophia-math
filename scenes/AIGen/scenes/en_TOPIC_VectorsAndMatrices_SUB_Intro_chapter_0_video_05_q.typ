#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Vector Dimension]
  #v(40pt)

  #only("1-")[
    Consider the vector:
    #v(10pt)
    $ v = (-2, 4, 3, -5) $
  ]

  #v(20pt)

  #only("2-")[
    What is the dimension of this vector?
  ]

  #only("1")[
    #voiceover("Let's consider a vector question.")
  ]

  #only("2")[
    #voiceover("What is the dimension of the vector negative two, four, three, negative five?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the dimension of the vector $(-2, 4, 3, -5)$?", 
answerOptions: ("$\\text{Dimension} = 4$", "$\\text{Dimension} = -4$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 1.01e-07),
), 
answerOptionMatcher:("$\\text{Dimension} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)