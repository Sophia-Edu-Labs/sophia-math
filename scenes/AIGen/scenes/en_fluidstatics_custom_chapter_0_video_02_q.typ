#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hydraulic Lift System]
#v(40pt)
#only("1-")[
- Lift a 6000 kg motor 🏋️
- Press piston area: 400 cm² 📏
]
#only("1")[
#voiceover("Consider a hydraulic lift system used to lift a motor weighing 6000 kilograms. The area of the press piston is 400 square centimeters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Pressure Calculation]
#v(40pt)
#only("1-")[
- Use formula: $p = F / A$
- Force $F = m dot g$ 🪶
]
#only("1")[
#voiceover("To calculate the required pressure, use the formula pressure equals force divided by area, where the force is the product of mass and acceleration due to gravity.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[
What is the required pressure to lift the motor? 🤔
]
#only("1")[
#voiceover("What is the required pressure to lift the motor? Give your answer in Pascals.")
]
]#questionDef(
questionText: "What is the required pressure (in Pascals) to lift the 6000 kg motor with a hydraulic lift where the press piston area is 400 cm²? Use $p = \frac{F}{A}$ with $F = m \cdot g$.",
answerOptions: ("$1471500$ Pa", "$0$ Pa"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 0,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ Pa"),
answerOptionsTypes: (
"a": "number"
)
),
)