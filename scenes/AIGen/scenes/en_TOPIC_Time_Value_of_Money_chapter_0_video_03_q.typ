#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
#only("1-")[🤔 If you have €100 today and can invest it at an annual interest rate of 5%, how much will it be worth in one year?]
#only("1")[
#voiceover("Let's consider the following exercise: If you have 100 euros today and can invest it at an annual interest rate of 5 percent, how much will it be worth in one year?")
]
]#questionDef(
questionText: "If you have €100 today and can invest it at an annual interest rate of 5%, how much will it be worth in one year?",
answerOptions: ("$105$€", "$110$€"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$€"),
answerOptionsTypes: (
"a": "number"
)
),
)