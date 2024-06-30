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
    - Surface area: 220 m²
    - Length: 11 m
    - Width: 5 m
    - Height: h
  ]

  #v(20pt)

  #only("2-")[
    Find the height (h) of the cuboid. 📏
  ]

  #only("1")[
    #voiceover("Let's tackle a problem involving the surface area of a cuboid.")
  ]

  #only("2")[
    #voiceover("We have a cuboid with a surface area of 220 square meters, a length of 11 meters, and a width of 5 meters. Your task is to determine the height of this cuboid. Think about how you can use the surface area formula to solve for the unknown height.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "A cuboid has a surface area of $220 	ext{ m}^2$ and dimensions of $11 	ext{ m} 	imes 5 	ext{ m} 	imes h$. What is the height ($h$)?", 
answerOptions: ("$h = 2$", "$h = 0$"), 
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