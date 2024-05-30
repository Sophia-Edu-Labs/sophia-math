#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Balloon Liftoff 🎈]
#v(40pt)

#only("1-")[
- Balloon lifts off when buoyant force > weight
]
#v(20pt)

#only("2-")[
- Uster is at 464 m above sea level 🏔️
]
#v(20pt)

#only("3-")[
- Ignore volume of gondola and passengers 🧺👨‍👩‍👧
]

#only("1")[
#voiceover("A balloon lifts off when the buoyant force acting on it is greater than its weight.")
]

#only("2")[
#voiceover("Consider a balloon in Uster, which is at an altitude of 464 meters above sea level.")
]

#only("3")[
#voiceover("For simplicity, let's ignore the volume of the gondola and the passengers.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question ❓]
#v(40pt)

#only("1-")[
What must be the minimum volume of the balloon for it to lift off in Uster? 
]

#only("1")[
#voiceover("Given this scenario, what must be the minimum volume of the balloon for it to lift off in Uster?")
]


]
#questionDef(
questionText: "What is the minimum volume of the balloon in cubic meters for it to lift off in Uster at 464 m above sea level, ignoring the volume of the gondola and passengers?",
answerOptions: ("$1088 \, m^3$", "$0 \, m^3$"),  
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 0,
tolerance: none
)
),
answerOptionMatcher:("\key{a} \, m^3$"),
answerOptionsTypes: (
"a": "number"
)
),
)