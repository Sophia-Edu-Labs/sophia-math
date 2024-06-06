#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Complex n-th Roots]
#v(40pt)
#only("1")[
#voiceover("Consider the following question:")
]
#only("1-")[
What is $root(6, -64)$ in complex form? 🤔
]
#only("2")[
#voiceover("Recall that n-th roots of negative numbers, when n is even, are complex numbers.")
]
#only("3")[
#voiceover("Can you determine the complex form of the 6th root of negative 64?")
]
]#questionDef(
questionText: "What is $\sqrt[6]{-64}$ in complex form?",
answerOptions: ("$-2i$", "$2i$"),
correctAnswerIndex: 1,
freeTextDetail: (
fallbackOptionIndex: 0,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}i$"),
answerOptionsTypes: (
"a": "number"
)
),
)