#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hydraulic Lift Problem]
#v(40pt)
#only("1-")[
- Ship engine mass: 6000 kg 🚢
- Lift height: 2.0 m ⬆️
- Pump piston area: 5.0 cm² 🔽
- Press piston area: 400 cm² 🔼
]
#only("1")[
#voiceover("Consider a hydraulic lift used to raise a large ship engine with a mass of 6000 kilograms by 2 meters. The area of the pump piston is 5 square centimeters, and the area of the press piston is 400 square centimeters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[
What is the pressure in the fluid? 🤔💧
]
#only("1")[
#voiceover("What is the pressure in the fluid?")
]
]#questionDef(
questionText: "What is the pressure $P$ in the fluid?",
answerOptions: ("$P = 14.7 \text{ bar}$", "$P = 0 \text{ bar}$"),  
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$P = \key{a} \text{ bar}$"),
answerOptionsTypes: (
"a": "number"
)
),
)