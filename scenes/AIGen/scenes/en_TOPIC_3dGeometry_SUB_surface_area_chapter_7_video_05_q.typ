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
    Consider a cuboid with:
    - Length: 9 m
    - Width: 4 m
    - Height: 6 m
  ]

  #v(20pt)

  #only("2-")[
    Find the surface area of this cuboid. 🧊📏
  ]

  #only("1")[
    #voiceover("Let's practice calculating the surface area of a three-dimensional shape. Consider a cuboid with the following dimensions:")
  ]

  #only("2")[
    #voiceover("Your task is to find the total surface area of this cuboid. Remember to include all six faces in your calculation!")
  ]
]

//Type: Numeric
#questionDef(
questionText: "Find the surface area of a cuboid with length $9 	ext{ m}$, width $4 	ext{ m}$, and height $6 	ext{ m}$.", 
answerOptions: ("$\text{Surface Area} = 228 \\text{ m}^2$", "$\text{Surface Area} = -452 \\text{ m}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.10000010100000001),
), 
answerOptionMatcher:("$\text{Surface Area} = \key{a} \\text{ m}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)