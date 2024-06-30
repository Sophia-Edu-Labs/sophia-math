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
    - Length: 8 m
    - Width: 2 m
    - Height: 3 m
  ]

  #v(20pt)

  #only("2-")[
    #align(center)[📏 8 m × 2 m × 3 m 📐]
  ]

  #v(20pt)

  #only("3-")[
    Calculate the total surface area of this cuboid.
  ]

  #only("1")[
    #voiceover("Let's practice calculating the surface area of a cuboid.")
  ]

  #only("2")[
    #voiceover("We have a cuboid with dimensions 8 meters in length, 2 meters in width, and 3 meters in height.")
  ]

  #only("3")[
    #voiceover("Your task is to calculate the total surface area of this cuboid. Remember to include all six faces in your calculation.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Calculate the surface area of a cuboid with dimensions $8 	ext{ m} 	imes 2 	ext{ m} 	imes 3 	ext{ m}$.", 
answerOptions: ("$\text{Surface Area} = 92 \\text{ m}^2$", "$\text{Surface Area} = -180 \\text{ m}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Surface Area} = \key{a} \\text{ m}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)