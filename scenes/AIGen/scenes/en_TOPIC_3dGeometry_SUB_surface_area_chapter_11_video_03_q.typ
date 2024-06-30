#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of a Cuboid]
  #v(40pt)

  #only("1-")[
    Consider a cuboid with dimensions:
    - Length: 20 m
    - Width: 15 m
    - Height: 10 m
  ]

  #v(20pt)

  #only("2-")[
    Calculate the surface area of this cuboid. 🧮📏
  ]

  #only("1")[
    #voiceover("Let's practice calculating surface area. Consider a cuboid with the following dimensions:")
  ]

  #only("2")[
    #voiceover("Calculate the total surface area of this cuboid. Remember to include all six faces in your calculation.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Calculate the surface area of a cuboid with dimensions $20 	ext{ m} 	imes 15 	ext{ m} 	imes 10 	ext{ m}$.", 
answerOptions: ("$\text{Surface Area} = 1300 	ext{ m}^2$", "$\text{Surface Area} = -2596 	ext{ m}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Surface Area} = \key{a} 	ext{ m}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)