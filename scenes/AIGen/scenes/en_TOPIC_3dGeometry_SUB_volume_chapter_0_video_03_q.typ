#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
  #only("1")[
    #voiceover("Let's consider a question about the volume of a cube.")
  ]
  #text(size: 30pt, weight: "bold")[Cube Volume]
  #v(40pt)

  #only("2-")[
    #align(center)[
      #text(size: 24pt)[What is the volume of a cube with side length 4 cm?]
    ]
  ]

  #only("2")[
    #voiceover("What is the volume of a cube with side length 4 centimeters?")
  ]

  #v(20pt)

  #only("3-")[
    #align(center)[
      #box(width: 150pt, height: 150pt, stroke: (thickness: 2pt))[
        #place(
          center,
          text(size: 24pt)[4 cm]
        )
      ]
    ]
  ]

  #only("3")[
    #voiceover("Consider a cube with each side measuring 4 centimeters.")
  ]
]

//Type: Numeric
#questionDef(
questionText: "What is the volume of a cube with side length $4$ cm?", 
answerOptions: ("$\\text{Volume} = 64$", "$\\text{Volume} = -124$"), 
correctAnswerIndex: 0, // always 0 
freeTextDetail: ( 
fallbackOptionIndex: 1, // always 1 
answerOptionsEquality: (a: (
roundingDecimalPlaces: 2,
tolerance: 0.010000101),
), 
answerOptionMatcher:("$\\text{Volume} = \key{a}$"), 
answerOptionsTypes: ("a": "number",
) 
), 
)