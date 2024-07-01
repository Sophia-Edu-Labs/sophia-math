#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's practice calculating the dot product of vectors.")
  ]
  #text(size: 30pt, weight: "bold")[Dot Product Calculation]
  #v(40pt)

  #only("2-")[
    Calculate the dot product:
    #v(20pt)
    $ (-1, 2, 3) dot (4, 0, -2) $
  ]

  #only("2")[
    #voiceover("Calculate the dot product of the vectors negative one, two, three and four, zero, negative two.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Calculate the dot product of vectors $(-1, 2, 3)$ and $(4, 0, -2)$.", 
answerOptions: ("$-10$", "$24$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)