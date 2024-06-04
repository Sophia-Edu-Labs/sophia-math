#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Water Pressure 💧]
#v(40pt)
#only("1-")[- Pressure at ground floor: 4 bar]
#v(20pt)
#only("2-")[- Water level drops by 2 m]
#v(20pt)
#only("3-")[- Calculate new pressure using:
  $ p = rho dot g dot h $]
#only("1")[
#voiceover("Consider a building where the water pressure at the ground floor is 4 bar.")
]
#only("2")[
#voiceover("If the water level in the reservoir drops by 2 meters,")
]
#only("3")[
#voiceover("calculate the new water pressure at the ground floor using the formula p equals rho times g times h.")
]
]#questionDef(

questionText: "What is the new water pressure at the ground floor in bar?",
answerOptions: ("$3.8038$ bar", "$5.8038$ bar"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 4,
tolerance: 0.1
)
),
answerOptionMatcher:("$\key{a}$ bar"),
answerOptionsTypes: (
"a": "number"
)
),
)