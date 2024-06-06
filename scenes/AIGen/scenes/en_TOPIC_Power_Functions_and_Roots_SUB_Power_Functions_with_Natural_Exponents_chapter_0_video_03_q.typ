#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Power Function Question]
#v(40pt)
#only("1-")[Consider the power function $f(x) = x^3$]
#v(40pt)
#only("2-")[What is the value of $f(2)$? 🤔]
#only("1")[
#voiceover("Consider the power function f of x equals x cubed.")
]
#only("2")[
#voiceover("What is the value of f of 2?")
]
]#questionDef(
questionText: "What is the value of $f(2)$ for the power function $f(x) = x^3$?",
answerOptions: ("$8$", "$6$"),
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