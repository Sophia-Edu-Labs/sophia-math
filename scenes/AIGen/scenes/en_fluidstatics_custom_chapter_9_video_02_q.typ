#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Potential Energy of Water]
#v(40pt)
#only("1-")[
- Water height: 25 m 📏
]
#v(20pt)
#only("2-")[
- Mass flow rate: 1000 kg/s 🌊
]
#v(20pt)
#only("3-")[
- Formula: $ E = m dot g dot h $ ⚖️
]
#v(20pt)

#only("1")[
#voiceover("Consider a hydroelectric power plant with water at a height of 25 meters.")
]
#only("2")[
#voiceover("The mass flow rate of the water is 1000 kilograms per second.")
]
#only("3")[
#voiceover("To calculate the potential energy of the water, we use the formula E equals m times g times h, where m is the mass, g is the gravitational acceleration, and h is the height.")
]
#only("4")[
#voiceover("Calculate the potential energy of the water in Joules.")
]
]#questionDef(
questionText: "Calculate the potential energy of the water. (Answer in Joules)",
answerOptions: ("$E=245250$ J", "$E=0$ J"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$E=\\key{a}$ J"),
answerOptionsTypes: (
"a": "number"
)
),
)