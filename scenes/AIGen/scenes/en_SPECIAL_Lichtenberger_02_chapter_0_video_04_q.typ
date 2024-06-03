#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hydraulic Lift Exercise]
#v(40pt)
#only("1-")[
- Pump piston area: 5.0 cm²
- Press piston area: 400 cm² 
- Stroke length: 50 cm
]
#only("1")[
#voiceover("Consider a hydraulic lift with a pump piston area of 5.0 square centimeters, a press piston area of 400 square centimeters, and a stroke length of 50 centimeters.")
]
#v(20pt)
#only("2-")[
#text(fill: aqua)[How many times must the pump piston be lowered to raise the press piston by 2.0 m? 🤔]
]
#only("2")[
#voiceover("The question is: How many times must the pump piston be lowered to raise the press piston by 2.0 meters?")
]
]#questionDef(
  questionText: "How many times must the pump piston be lowered if its stroke length is $50 \, \text{cm}$?",
  answerOptions: ("320", "80"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
      )
    ),
    answerOptionMatcher:("\\key{a}"),
    answerOptionsTypes: (
      "a": "number"
    )
  ),
)