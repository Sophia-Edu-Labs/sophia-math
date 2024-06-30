#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Cube Volume and Edge Length]
  #v(40pt)

  #only("1-")[
    Given:
    - Volume of cube: 512 cm³ 📦
  ]

  #v(20pt)

  #only("2-")[
    Question:
    - What is the length of one edge? 📏
  ]

  #only("1")[
    #voiceover("Let's consider a cube with a volume of 512 cubic centimeters.")
  ]

  #only("2")[
    #voiceover("Our task is to determine the length of one edge of this cube. Remember, the volume of a cube is the cube of its edge length.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "If a cube has a volume of $512 	ext{ cm}^3$, what is the length of one edge?", 
answerOptions: ("$8 	ext{ cm}$", "$-12 	ext{ cm}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\key{a} 	ext{ cm}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)