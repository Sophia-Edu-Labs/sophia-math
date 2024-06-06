#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[5th Root of 32]
#v(40pt)
#only("1-")[What is the value of $root(5, 32)$?]
#only("1")[
#voiceover("Consider the expression 'the 5th root of 32'. What is the value of this expression?")
]
]#questionDef(
questionText: "What is the value of $\sqrt[5]{32}$?",
answerOptions: ("$2$", "$32$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)