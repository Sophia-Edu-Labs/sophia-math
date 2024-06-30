#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #text(size: 30pt, weight: "bold")[Surface Area of a Prism with a Cylindrical Hole]
  #v(40pt)

  #only("1-")[
    Consider a rectangular prism with dimensions:
    - Length: 12 cm
    - Width: 8 cm
    - Height: 5 cm
  ]

  #only("2-")[
    A cylindrical hole is drilled through its center:
    - Radius: 2 cm
    - Height: 5 cm (same as prism height)
  ]

  #only("3-")[
    #text(fill: blue)[Question: What is the total surface area?]
  ]

  #only("1")[
    #voiceover("Let's consider a problem involving surface area. We have a rectangular prism with specific dimensions.")
  ]

  #only("2")[
    #voiceover("Now, imagine a cylindrical hole drilled through the center of this prism.")
  ]

  #only("3")[
    #voiceover("Your task is to calculate the total surface area of this modified prism. Think about which surfaces contribute to the total area and how the hole affects the calculation.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "A rectangular prism $(12 \\text{ cm} \\times 8 \\text{ cm} \\times 5 \\text{ cm})$ has a cylindrical hole (radius $2 \\text{ cm}$, height $5 \\text{ cm}$) drilled through its center. Find the total surface area.", 
answerOptions: ("$\text{Total Surface Area} = 382.68 \\text{ cm}^2$", "$\text{Total Surface Area} = -761.36 \\text{ cm}^2$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.10000010100000001),
), 
answerOptionMatcher:("$\text{Total Surface Area} = \key{a} \\text{ cm}^2$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)