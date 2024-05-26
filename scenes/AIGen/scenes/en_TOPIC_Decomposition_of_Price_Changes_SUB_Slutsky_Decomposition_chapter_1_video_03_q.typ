#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky Decomposition]

#v(40pt)

#only("1-")[
Consider a good $X$ with:
- Initial price: $10$
- Initial quantity demanded: $5$ units
]

#v(20pt)

#only("2-")[
After a price change:
- New price: $8$
- New quantity demanded: $7$ units
]

#v(20pt)

#only("3-")[
#text(size: 24pt, weight: "bold")[Question:]
What is the substitution effect if the consumer's utility remains constant? 🤔
]

#only("1")[
#voiceover("Consider a good X with an initial price of 10 dollars and an initial quantity demanded of 5 units.")
]

#only("2")[
#voiceover("After a price change, the new price is 8 dollars, and the new quantity demanded is 7 units.")
]

#only("3")[
#voiceover("The question is: What is the substitution effect if the consumer's utility remains constant?")
]

]

#questionDef(
questionText: "What is the substitution effect if the consumer's utility remains constant?",
answerOptions: ("$2$ units", "$0$ units"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 0,
tolerance: none
)
),
answerOptionMatcher:("$\\key{a}$ units"),
answerOptionsTypes: (
"a": "number"
)
),
)