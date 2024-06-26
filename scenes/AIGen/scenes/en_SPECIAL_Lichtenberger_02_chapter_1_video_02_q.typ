#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure in Buildings 🌊]
#v(40pt)
#only("1-")[
- Pressure varies with height due to gravity
]
#only("1")[
#voiceover("In buildings, water pressure varies with height due to the gravitational force acting on the water column.")
]
#v(20pt)
#only("2-")[
- Overpressure increases by about 1 bar per 10 m height
]
#only("2")[
#voiceover("As a rule of thumb, the overpressure increases by about 1 bar for every 10 meters of height.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Exercise 1 💧]
#v(40pt)
#only("1-")[
- Ground floor: overpressure is 4.0 bar
- Fourth floor: 14 m higher
]
#only("1")[
#voiceover("In this exercise, we're told that the overpressure on the ground floor is 4.0 bar. We're interested in the overpressure on the fourth floor, which is 14 meters higher.")
]
#v(20pt)
#only("2-")[
What is the overpressure in the water pipe on the fourth floor? 🤔
]
#only("2")[
#voiceover("Your task is to determine: What is the overpressure in the water pipe on the fourth floor?")
]
]#questionDef(
questionText: "What is the overpressure in the water pipe on the fourth floor, $14 \, \\text{m}$ above the ground floor, if the overpressure on the ground floor is $4.0 \, \\text{bar}$?",
answerOptions: ("$5.4 \, \\text{bar}$", "$4.0 \, \\text{bar}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a} \, \\text{bar}$"),
answerOptionsTypes: (
"a": "number"
)
),
)