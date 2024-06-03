#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Balloon Ascent Problem]
#v(40pt)
#only("1-")[
- Balloon inflated to 1550 m³ at start in Uster 🎈
]
#v(20pt)
#only("2-")[
- Volume remains constant while ascending 📏
]
#v(40pt)
#only("3-")[
❓ How high can the balloon rise? 🌄
]
#only("1")[
#voiceover("Consider a hot air balloon that is inflated to a volume of 1550 cubic meters at the start in Uster.")
]
#only("2")[
#voiceover("The volume of the balloon remains constant while it ascends.")
]
#only("3")[
#voiceover("The question is: How high can this balloon rise?")
]
]#questionDef(
questionText: "What is the maximum height the balloon can reach, given its initial volume of $1550 \, \text{m}^3$?",
answerOptions: ("$2000 \, \text{m}$", "$1000 \, \text{m}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 0,
tolerance: none
)
),
answerOptionMatcher:("$\key{a} \, \text{m}$"),
answerOptionsTypes: (
"a": "number"
)
),
)