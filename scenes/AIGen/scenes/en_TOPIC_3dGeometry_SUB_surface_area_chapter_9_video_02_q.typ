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
    - Surface area: 300 cm²
    - Length: 10 cm
    - Width: 5 cm
    - Height: h cm
  ]

  #v(20pt)

  #only("2-")[
    Find the height (h) of the cuboid. 📏
  ]

  #only("1")[
    #voiceover("Let's tackle a problem involving the surface area of a cuboid.")
  ]

  #only("2")[
    #voiceover("We have a cuboid with a surface area of 300 square centimeters. Its length is 10 centimeters and its width is 5 centimeters. Can you determine the height of this cuboid?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "A cuboid has a surface area of $300 	ext{ cm}^2$ and dimensions of $10 	ext{ cm} 	imes 5 	ext{ cm} 	imes h$. What is the height $(h)$?", 
answerOptions: ("$h = 5 	ext{ cm}$", "$h = -6 	ext{ cm}$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$h = \key{a} 	ext{ cm}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)