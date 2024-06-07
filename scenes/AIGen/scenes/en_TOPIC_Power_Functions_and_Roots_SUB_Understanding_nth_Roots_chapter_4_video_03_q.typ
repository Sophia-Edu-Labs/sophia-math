#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Rationalizing n-th Roots]
#v(40pt)
#only("1-")[
Consider the expression:
#v(20pt)
$1/root(4, 5)$
]
#only("1")[
#voiceover("Consider the expression 1 over the 4th root of 5.")
]
#only("2")[
#voiceover("Your task is to rationalize this expression.")
]
#only("3")[
#voiceover("Think about how you can manipulate this expression to eliminate the root in the denominator.")
]
#only("4")[
#voiceover("Enter your rationalized expression in the answer box below.")
]
]#questionDef(
questionText: "Rationalize the expression $1/\sqrt[4]{5}$.",
answerOptions: ("$\\frac{\sqrt[4]{5^3}}{5}$", "$\\frac{1}{5}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\\frac{\key{a}}{\key{b}}$"),
answerOptionsTypes: (
"a": "number",
"b": "number"
)
),
)