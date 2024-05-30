#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hydraulic Lift]
#v(40pt)
#only("1-")[
- Piston area: 5.0 cm² 🔧
]
#v(20pt)
#only("2-")[
- Pressure in fluid: 14.7 bar 💧
]
#only("1")[
#voiceover("Consider a hydraulic lift with a pump piston area of 5.0 square centimeters.")
]
#only("2")[
#voiceover("The pressure in the fluid is 14.7 bar.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[
What is the necessary force of the pump? 🤔
]
#only("1")[
#voiceover("Based on this information, calculate the necessary force of the pump.")
]
]#questionDef(
questionText: "What is the necessary force $F$ of the pump in Newtons (N)?",
answerOptions: ("$F = 735 \text{ N}$", "$F = 0 \text{ N}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$F = \key{a} \text{ N}$"),
answerOptionsTypes: (
"a": "number"
)
),
)