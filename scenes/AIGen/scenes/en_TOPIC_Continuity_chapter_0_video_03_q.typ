#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limit Question]
#v(40pt)

#only("1-")[
Find the limit:
]

#v(20pt)

#only("2-")[
$lim_(x -> 1) (2x + 3)$
]

#only("1")[
#voiceover("Consider the following limit question.")
]

#only("2")[
#voiceover("Find the limit of the function f of x equals 2x plus 3 as x approaches 1.")
]

#v(40pt)
]

#questionDef(
questionText: "What is the value of $\\lim_{x \\to 1} (2x + 3)$?",
answerOptions: ("$5$", "$6$"),
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