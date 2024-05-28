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
#only("2-")[- The price of good X decreases from $10$ to $8$ 💰]
#v(20pt)
#only("3-")[- The total quantity demanded increases from 5 to 9 units 📈]
#v(20pt)
#only("4-")[- The substitution effect increases the quantity demanded to 7 units 🔄]
#v(20pt)
#only("5-")[What is the income effect? 🤔]

#only("1")[
#voiceover("Let's consider an exercise related to Slutsky Decomposition.")
]
#only("2")[
#voiceover("Suppose the price of good X decreases from 10 dollars to 8 dollars.")
]
#only("3")[
#voiceover("As a result, the total quantity demanded increases from 5 to 9 units.")
]
#only("4")[
#voiceover("We are also told that the substitution effect alone increases the quantity demanded to 7 units.")
]
#only("5")[
#voiceover("The question is, what is the income effect in this scenario?")
]
]#questionDef(
questionText: "What is the income effect in this scenario?",
answerOptions: ("$2$ units", "$4$ units"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 0,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ units"),
answerOptionsTypes: (
"a": "number"
)
),
)