#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits of Quotients]
#v(40pt)
#only("1-")[
Given:
- $a_n = 1/n$
- $b_n = 2$
]
#v(20pt)
#only("2-")[
Find: 
- $lim_(n -> infinity) (a_n / b_n)$
]

#only("1")[
#voiceover("Consider the sequences a sub n equals 1 over n and b sub n equals 2.")
]

#only("2")[
#voiceover("Find the limit as n approaches infinity of the quotient a sub n divided by b sub n.")
]
]#questionDef(
questionText: "What is the value of $\\lim_{n \\to \\infty} \\left( \\frac{a_n}{b_n} \\right)$, where $a_n = \\frac{1}{n}$ and $b_n = 2$?",
answerOptions: ("$0$", "$\\frac12$"),
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