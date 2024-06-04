#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pump Force]
#v(40pt)
#only("1-")[
- Given:
  - Area of pump piston: 5 cm² 🔧
  - Pressure: 1471500 Pa 🌡️
]
#v(20pt)
#only("2-")[
- Formula: $ F = p dot A $
  - $F$: Force (N) 💪
  - $p$: Pressure (Pa)
  - $A$: Area (m²)
]
#v(20pt)


#only("1")[
#voiceover("We are given that the area of the pump piston is 5 square centimeters and the pressure is 1471500 Pascals.")
]

#only("2")[
#voiceover("To find the force, we can use the formula F equals p dot A, where F is the force in Newtons, p is the pressure in Pascals, and A is the area in square meters.")
]

#only("3")[
#voiceover("Now, determine the necessary force of the pump in Newtons.")
]
]#questionDef(
  questionText: "What is the necessary force of the pump in Newtons?",
  answerOptions: ("$735.75$", "$147.15$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
      )
    ),
    answerOptionMatcher:("$\key{a}$"),
    answerOptionsTypes: (
      "a": "number"
    )
  ),
)