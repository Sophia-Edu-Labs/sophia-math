#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Volume of a Cuboid]
  #v(40pt)

  #only("1-")[
    A cuboid has:
    - Length: 9 cm
    - Width: 5 cm
    - Height: 3 cm
  ]

  #v(20pt)

  #only("2-")[
    What is its volume?
  ]

  #only("1")[
    #voiceover("Let's consider a cuboid with specific dimensions.")
  ]

  #only("2")[
    #voiceover("Given a cuboid with a length of 9 centimeters, a width of 5 centimeters, and a height of 3 centimeters, we need to calculate its volume.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "A cuboid has a length of $9$ cm, a width of $5$ cm, and a height of $3$ cm. What is its volume?", 
answerOptions: ("$\\text{Volume} = 135$", "$\\text{Volume} = -266$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\\text{Volume} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)