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
    - Length: 15 m
    - Width: 8 m
    - Height: 5 m
  ]

  #v(20pt)

  #only("2-")[
    Calculate the surface area of this cuboid. 📏📐
  ]

  #only("1")[
    #voiceover("Let's practice calculating the surface area of a three-dimensional shape. Consider a cuboid with the following dimensions:")
  ]

  #only("2")[
    #voiceover("Your task is to calculate the total surface area of this cuboid. Remember to include all six faces in your calculation.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Calculate the surface area of a cuboid with dimensions $15 	ext{ m} 	imes 8 	ext{ m} 	imes 5 	ext{ m}$.", 
answerOptions: ("$\text{Surface Area} = 550 	ext{ m}^2$", "$\text{Surface Area} = -1096 	ext{ m}^2$"), 
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