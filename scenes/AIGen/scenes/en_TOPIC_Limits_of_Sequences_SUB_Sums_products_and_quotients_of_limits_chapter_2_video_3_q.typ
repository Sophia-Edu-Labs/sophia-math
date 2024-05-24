#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Numeric Question]
#v(40pt)
#only("1-")[
Given:
- $a_n = 1/n$
- $b_n = 2/n$
]
#v(20pt)
#only("2-")[
Find: $lim_(n -> infinity) (a_n b_n)$
]
#only("1")[
#voiceover("Consider the sequences a sub n equals 1 over n and b sub n equals 2 over n.")
]
#only("2")[
#voiceover("Find the limit as n approaches infinity of the product a sub n times b sub n.")
]
]

#questionDef(
questionText: "What is $\\lim_{n \\to \\infty} (a_n b_n)$?",
answerOptions: ("$0$", "$1$"),
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