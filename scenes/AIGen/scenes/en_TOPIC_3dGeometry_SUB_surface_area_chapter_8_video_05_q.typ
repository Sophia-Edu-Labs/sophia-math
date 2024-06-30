#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of Composite Figures]
  #v(40pt)

  #only("1-")[
    Consider a composite figure:
    - Cube: side length 6 cm
    - Cuboid: 4 cm × 3 cm × 2 cm
    - Joined at one face
  ]

  #v(20pt)

  #only("2-")[
    Find the total surface area 🔍
  ]

  #only("1")[
    #voiceover("Let's tackle a problem involving the surface area of composite figures. We have a composite figure made up of two parts.")
  ]

  #only("2")[
    #voiceover("Your task is to find the total surface area of this composite figure. Remember to consider how the two shapes are joined!")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Find the surface area of a composite figure made up of a cube with side length $6$ cm and a smaller cuboid with dimensions $4$ cm $\times$ $3$ cm $\times$ $2$ cm, joined at one face.", 
answerOptions: ("$\text{Surface Area} = 248$", "$\text{Surface Area} = -492$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.10000010100000001),
), 
answerOptionMatcher:("$\text{Surface Area} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)