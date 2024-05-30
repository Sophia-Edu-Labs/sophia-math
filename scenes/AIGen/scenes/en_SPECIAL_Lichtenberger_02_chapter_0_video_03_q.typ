#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hydraulic Lift]
#v(40pt)
#only("1-")[A hydraulic lift is used to raise a large ship engine with a mass of 6000 kg by 2.0 m. The area of the pump piston is 5.0 cm², and the area of the press piston is 400 cm².]
#only("1")[
#voiceover("Consider a hydraulic lift that is used to raise a large ship engine with a mass of 6000 kilograms by 2 meters. The area of the pump piston is 5 square centimeters, and the area of the press piston is 400 square centimeters.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[What is the necessary force $F$ of the pump?]
#only("1")[
#voiceover("Calculate the necessary force F of the pump.")
]
#v(20pt)
#only("2-")[💡 Hint: Use the formula $F = P dot A_("pump piston")$]
#only("2")[
#voiceover("Hint: You can use the formula F equals P times A sub pump piston, where P is the pressure in the fluid and A sub pump piston is the area of the pump piston.")
]
]
#questionDef(
questionText: "What is the necessary force $F$ of the pump in Newtons (N)?",
answerOptions: ("$740 \text{ N}$", "$0 \text{ N}$"),  correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a} \text{ N}$"),
answerOptionsTypes: (
"a": "number")
),
)