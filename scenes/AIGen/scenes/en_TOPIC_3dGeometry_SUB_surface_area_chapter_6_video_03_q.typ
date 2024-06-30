#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[L-Shaped Figure Surface Area]
  #v(40pt)

  #only("1-")[
    Calculate the surface area of an L-shaped figure formed by two cuboids:
  ]

  #v(20pt)

  #only("2-")[
    - Cuboid 1: 7 cm × 5 cm × 3 cm
  ]

  #only("3-")[
    - Cuboid 2: 3 cm × 5 cm × 4 cm
  ]

  #only("1")[
    #voiceover("Let's tackle a problem involving the surface area of a composite figure.")
  ]

  #only("2")[
    #voiceover("We have an L-shaped figure made up of two cuboids. The first cuboid measures 7 centimeters by 5 centimeters by 3 centimeters.")
  ]

  #only("3")[
    #voiceover("The second cuboid measures 3 centimeters by 5 centimeters by 4 centimeters.")
  ]

  #only("4")[
    #voiceover("Your task is to calculate the total surface area of this L-shaped figure. Remember to consider all exposed surfaces!")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Calculate the surface area of an L-shaped figure formed by two cuboids: one $7 \\text{ cm} \\times 5 \\text{ cm} \\times 3 \\text{ cm}$ and another $3 \\text{ cm} \\times 5 \\text{ cm} \\times 4 \\text{ cm}$.", 
answerOptions: ("$\text{Surface Area} = 214 \\text{ cm}^2$", "$\text{Surface Area} = -424 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Surface Area} = \key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)