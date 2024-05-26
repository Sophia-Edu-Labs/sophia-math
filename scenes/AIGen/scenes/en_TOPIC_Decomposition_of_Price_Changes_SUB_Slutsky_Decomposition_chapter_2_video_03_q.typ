#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Income Effect Exercise]
#v(40pt)
#only("1-")[
- Price of good X decreases from $\$10$ to $\$8$ 📉
]
#v(20pt)
#only("2-")[
- Consumer's real income increases 💰
]
#v(20pt)
#only("3-")[
- Quantity demanded of good X increases from $7$ to $9$ units 📈
]
#v(40pt)
#only("4-")[
❓ What is the income effect?
]

#only("1")[
#voiceover("Consider a scenario where the price of good X decreases from 10 dollars to 8 dollars.")
]
#only("2")[
#voiceover("This price decrease leads to an increase in the consumer's real income, allowing them to buy more of all goods.")
]
#only("3")[
#voiceover("As a result, the quantity demanded of good X increases from 7 units to 9 units.")
]
#only("4")[
#voiceover("Your task is to determine the income effect in this scenario.")
]
]#questionDef(
questionText: "What is the income effect if the quantity demanded of good $X$ increases from $7$ to $9$ units?",
answerOptions: ("$2$ units", "$0$ units"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\\key{a}$ units"),
answerOptionsTypes: (
"a": "number"
)
),
)