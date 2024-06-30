#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of Cuboid]
  #v(40pt)

  #only("1-")[
    A cuboid has:
    - Surface area: 340 cm²
    - Length: 10 cm
    - Width: 8 cm
    - Height: h cm
  ]

  #v(20pt)

  #only("2-")[
    #text(size: 24pt, weight: "bold")[Question: What is the height (h)?]
  ]

  #only("1")[
    #voiceover("Let's consider a problem about the surface area of a cuboid.")
  ]

  #only("2")[
    #voiceover("We have a cuboid with a surface area of 340 square centimeters. Its length is 10 centimeters, and its width is 8 centimeters. The height is unknown and represented by h. Can you determine the value of h?")
  ]
]

//Type: Numeric
#questionDef(
questionText: "A cuboid has a surface area of $340 	ext{ cm}^2$ and dimensions of $10 	ext{ cm} 	imes 8 	ext{ cm} 	imes h$. What is the height ($h$)?", 
answerOptions: ("$h = 3$", "$h = -2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$h = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)