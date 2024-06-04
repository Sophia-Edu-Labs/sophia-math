#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure Exercise]
#v(40pt)
#only("1-")[
- City water supply system
- Tap located 50 m below reservoir
- Initial pressure at tap: 490,500 Pa
]
#v(20pt)
#only("2-")[
#text(size: 24pt, weight: "bold", fill: blue)[Question: 🤔]
]
#v(10pt)
#only("2-")[
If the reservoir level drops by 2 m, calculate the new pressure at the same tap.
]

#only("1")[
#voiceover("Consider a city water supply system where a tap is located 50 meters below the reservoir. The initial pressure at the tap is 490,500 Pascals.")
]
#only("2")[
#voiceover("If the reservoir level drops by 2 meters, what will be the new pressure at the same tap?")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure Exercise]
#v(20pt)
#only("1-")[
Use the formula:
]
#v(10pt)
#only("1-")[
$ p = rho dot g dot h $
]
#v(20pt)
#only("2-")[
Where:
- $ rho $ = density of water (1000 kg/m³)
- $ g $ = acceleration due to gravity (9.81 m/s²)
- $ h $ = height difference (in meters)
]
#v(20pt)
#only("3-")[
#text(size: 24pt, weight: "bold", fill: green)[Answer in Pascals (Pa) 📝]
]

#only("1")[
#voiceover("To calculate the new pressure, use the formula p equals rho times g times h.")
]
#only("2")[
#voiceover("Here, rho is the density of water, which is 1000 kilograms per cubic meter, g is the acceleration due to gravity, 9.81 meters per second squared, and h is the height difference in meters.")
]
#only("3")[
#voiceover("Provide your answer in Pascals.")
]
]#questionDef(
questionText: "If the reservoir level drops by 2 m, what is the new pressure at the same tap? Use $ p = \rho \cdot g \cdot h $. (Answer in Pascals)",
answerOptions: ("$470.580$ Pa", "$0$ Pa"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ Pa"),
answerOptionsTypes: (
"a": "number"
)
),
)