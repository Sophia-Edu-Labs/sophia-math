#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Irrigation Flow Rate]
#v(40pt)

#only("1-")[
🚰 Irrigating a 1-hectare field
]

#only("2-")[
💧 Needs 5 mm of water per day
]

#only("3-")[
❓ Required flow rate in liters per second?
]

#only("1")[
#voiceover("Consider the problem of irrigating a 1-hectare field.")
]

#only("2")[
#voiceover("The field needs 5 millimeters of water per day.")  
]

#only("3")[
#voiceover("What is the required water flow rate in liters per second to provide this amount of water?")
]
]#questionDef(
questionText: "What is the required water flow rate in liters per second to irrigate the 1-hectare field with 5 mm of water per day?",
answerOptions: ("$0.5787$ L/s", "$1$ L/s"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 4,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ L/s"),
answerOptionsTypes: (
"a": "number"
)
),
)