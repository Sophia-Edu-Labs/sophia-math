#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Balloon Ascent]
#v(40pt)
#only("1-")[🎈 A hot air balloon is inflated to a volume of 1550 m³ in Uster (464 m above sea level).]
#v(20pt)
#only("2-")[🧮 The volume remains constant during the ascent.]
#v(20pt)
#only("3-")[❓ How high can the balloon rise?]

#only("1")[
#voiceover("Consider a hot air balloon that is inflated to a volume of 1550 cubic meters in Uster, which is located at an altitude of 464 meters above sea level.")
]

#only("2")[  
#voiceover("The volume of the balloon remains constant during its ascent.")
]

#only("3")[
#voiceover("The question is: How high can this balloon rise?")
]
]#questionDef(
questionText: "What is the maximum height in meters that the balloon can reach?",
answerOptions: ("$2000$ m", "$1000$ m"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\\key{a}$ m"),
answerOptionsTypes: (
"a": "number"
)
),
)