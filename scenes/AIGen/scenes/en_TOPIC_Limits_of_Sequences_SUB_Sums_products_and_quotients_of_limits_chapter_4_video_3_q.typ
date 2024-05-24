#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
#only("1-")[Given:]
#v(20pt)
#only("2-")[- $a_n = 1/n$]
#v(10pt)
#only("3-")[- $b_n = 2/n^2$]
#v(20pt)
#only("4-")[Find: $lim_(n -> infinity) (a_n + b_n) / a_n$]
#only("1")[
#voiceover("Let's consider the following exercise.")
]
#only("2")[
#voiceover("We are given the sequence a sub n equals 1 over n,")
]
#only("3")[
#voiceover("and the sequence b sub n equals 2 over n squared.")
]
#only("4")[
#voiceover("Our task is to find the limit as n approaches infinity of the sum of a sub n and b sub n, divided by a sub n.")
]
]#questionDef(
questionText: "What is the value of the limit $\\lim_{n \\to \\infty} \\frac{a_n + b_n}{a_n}$, where $a_n = \\frac{1}{n}$ and $b_n = \\frac{2}{n^2}$?",
answerOptions: ("$1$", "$2$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("The limit is $\\key{a}$."),
answerOptionsTypes: (
"a": "number"
)
),
)