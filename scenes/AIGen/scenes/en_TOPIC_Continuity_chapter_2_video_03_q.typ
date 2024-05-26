#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limit Exercise]
#v(40pt)
#only("1-")[Find the limit: $lim_(x -> 3) (x^2 + 2x)$]
#only("1")[
#voiceover("Find the limit as x approaches 3 of x squared plus 2x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[What is the value of $lim_(x -> 3) (x^2 + 2x)$? 🤔]
#only("1")[
#voiceover("What is the value of the limit as x approaches 3 of x squared plus 2x?")
]
]#questionDef(
questionText: "What is the value of $\\lim_{x \\to 3} (x^2 + 2x)$?",
answerOptions: ("$15$", "$6$"),
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