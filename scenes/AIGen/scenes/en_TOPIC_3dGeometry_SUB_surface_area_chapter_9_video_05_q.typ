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
    - Length: 14 m
    - Width: 9 m
    - Height: 6 m
  ]

  #v(20pt)

  #only("2-")[
    Find the surface area of this cuboid. 🧊📏
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
questionText: "Find the surface area of a cuboid with length $14 	ext{ m}$, width $9 	ext{ m}$, and height $6 	ext{ m}$.", 
answerOptions: ("$\text{Surface Area} = 564 \, \\text{m}^2$", "$\text{Surface Area} = -1124 \, \\text{m}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\text{Surface Area} = \key{a} \, \\text{m}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)