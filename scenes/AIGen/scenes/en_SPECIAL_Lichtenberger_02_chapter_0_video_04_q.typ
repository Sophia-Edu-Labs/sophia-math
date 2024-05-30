#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Pump Piston Exercise 🏋️]
#v(40pt)
#only("1-")[
- Hydraulic lift raises 6000 kg ship engine by 2.0 m 🚢
- Pump piston area: 5.0 cm² 
- Press piston area: 400 cm²
- Pump piston stroke length: 50 cm
]
#only("1")[
#voiceover("Consider a hydraulic lift that raises a ship engine weighing 6000 kg by 2.0 meters. The pump piston has an area of 5.0 square centimeters, while the press piston has an area of 400 square centimeters. The pump piston has a stroke length of 50 centimeters.")
]
#v(40pt)
#only("2-")[
❓ How many times must the pump piston be lowered? 
]
#only("2")[
#voiceover("The question is: How many times must the pump piston be lowered to raise the engine by the given height?")
]
]#questionDef(
questionText: "How many times must the pump piston be lowered to raise the engine by $2.0 \, \text{m}$?",
answerOptions: ("320", "160"),
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