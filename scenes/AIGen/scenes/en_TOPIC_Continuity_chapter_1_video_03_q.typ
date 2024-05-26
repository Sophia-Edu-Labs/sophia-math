#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Left-hand Limit]
#v(40pt)
#only("1-")[
Given the function $f(x) = x^2$
]
#v(20pt)
#only("2-")[
Find $lim_(x -> 2^-) f(x)$
]
#only("1")[
#voiceover("Consider the function f of x equals x squared.")
]
#only("2")[
#voiceover("Find the left-hand limit of f of x as x approaches 2.")
]
]#questionDef(
questionText: "Find $\\lim_{x \\to 2^-} f(x)$, where $f(x) = x^2$.",
answerOptions: ("$4$", "$8$"),
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