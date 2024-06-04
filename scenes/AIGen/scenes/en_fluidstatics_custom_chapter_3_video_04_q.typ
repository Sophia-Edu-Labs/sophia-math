#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Blood Pressure 🫀]
#v(40pt)
#only("1-")[
- Height difference: 50 cm 📏
]
#v(20pt)
#only("2-")[
- Blood density: 1060 kg/m³ 🩸
]
#v(20pt)
#only("3-")[
- Formula: $ Delta p = rho dot g dot h $ 🧮
]
#v(40pt)
#only("4-")[
#text(size: 24pt, weight: "bold")[Calculate the pressure difference in Pascals.]
]

#only("1")[
#voiceover("Consider the pressure difference between the head and the heart, given a height difference of 50 centimeters.")
]
#only("2")[
#voiceover("The blood density is 1060 kilograms per cubic meter.")
]
#only("3")[
#voiceover("To calculate the pressure difference, use the formula delta p equals rho times g times h, where rho is the density, g is the acceleration due to gravity, and h is the height difference.")
]
#only("4")[
#voiceover("Calculate the pressure difference in Pascals.")
]
]#questionDef(
questionText: "What is the pressure difference between the head and the heart in Pascals? Use the formula $\Delta p = \rho \cdot g \cdot h$, where $\rho = 1060 \, \text{kg/m}^3$, $g = 9.81 \, \text{m/s}^2$, and $h = 0.5 \, \text{m}$.",
answerOptions: ("$5193$ Pa", "$0$Pa"),
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