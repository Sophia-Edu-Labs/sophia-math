#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1-")[
#text(size: 30pt, weight: "bold")[Balloon 🎈 at Constant Height]
]

#v(40pt)

#only("2-")[
- Balloon rises due to buoyancy force
]

#only("3-")[
- Buoyancy depends on density difference
]

#only("4-")[
What condition must be met for the balloon to hover at a constant height? 🤔
]

#only("1")[
#voiceover("Let's consider a balloon that is hovering at a constant height in the air.")
]

#only("2")[
#voiceover("We know that balloons rise due to the buoyancy force acting on them.")
]

#only("3")[
#voiceover("This buoyancy force depends on the difference in density between the gas inside the balloon and the surrounding air.")
]

#only("4")[
#voiceover("So, what specific condition must be satisfied for the balloon to maintain a constant altitude?")
]

]#questionDef(
  questionText: "What condition must be met for a balloon to hover at a constant height?",
  answerOptions: ("The buoyant force must equal the weight of the balloon, or an equivalent statement.", "The answer is incorrect."),
  correctAnswerIndex: 0,
  llmCheckDetails: (
    fallbackOptionIndex: 1
  ),
)