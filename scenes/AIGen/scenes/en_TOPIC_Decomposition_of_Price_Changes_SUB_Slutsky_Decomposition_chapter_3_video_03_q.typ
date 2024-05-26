#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition Exercise]
#v(40pt)
#only("1-")[Consider the following scenario:]
#v(20pt)
#only("2-")[- The substitution effect increases the quantity demanded of good X from 5 to 7 units 📈]
#v(20pt)
#only("3-")[- The income effect increases the quantity demanded of good X from 7 to 9 units 💰]
#v(40pt)
#only("4-")[What is the total effect of the price change on the quantity demanded of good X? 🤔]

#only("1")[
#voiceover("Let's consider the following scenario related to Slutsky Decomposition.")
]
#only("2")[
#voiceover("The substitution effect increases the quantity demanded of good X from 5 to 7 units.")
]
#only("3")[
#voiceover("The income effect further increases the quantity demanded of good X from 7 to 9 units.")
]
#only("4")[
#voiceover("Now, the question is: What is the total effect of the price change on the quantity demanded of good X?")
]
]#questionDef(
questionText: "What is the total effect of the price change on the quantity demanded of good $X$?",
answerOptions: ("$4$ units", "$2$ units"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ units"),
answerOptionsTypes: (
"a": "number"
)
),
)