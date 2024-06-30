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
    - A cube with side length 5 cm
    - A smaller cube with side length 3 cm attached to one face
  ]

  #v(20pt)

  #only("2-")[
    Find the total surface area of this composite figure. 🧮📏
  ]

  #only("1")[
    #voiceover("Let's tackle a problem involving the surface area of composite figures. We have a composite figure consisting of two parts:")
  ]

  #only("2")[
    #voiceover("A cube with a side length of 5 centimeters, and a smaller cube with a side length of 3 centimeters attached to one face of the larger cube. Your task is to calculate the total surface area of this composite figure. Think about which surfaces are exposed and which are hidden where the cubes meet.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Find the surface area of a figure composed of a cube with side length $5$ cm and a smaller cube with side length $3$ cm attached to one face.", 
answerOptions: ("$\text{Surface Area} = 238 \\text{ cm}^2$", "$\text{Surface Area} = -472 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.10000010100000001),
), 
answerOptionMatcher:("$\text{Surface Area} = \key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)