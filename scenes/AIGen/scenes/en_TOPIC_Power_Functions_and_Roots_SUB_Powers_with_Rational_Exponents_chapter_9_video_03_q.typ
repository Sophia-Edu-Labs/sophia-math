#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplify]
#v(40pt)
#only("1-")[
$((16^(1/4))^2)^2$
]
#only("1")[
#voiceover("Simplify the expression open parenthesis open parenthesis 16 to the power of one fourth close parenthesis squared close parenthesis squared.")
]
]#questionDef(
questionText: "What is the simplified value of $((16^{1/4})^2)^2$?",
answerOptions: ("$16$", "$4$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)