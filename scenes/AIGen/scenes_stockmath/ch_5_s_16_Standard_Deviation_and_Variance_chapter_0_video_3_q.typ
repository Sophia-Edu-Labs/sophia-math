#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Variance Exercise]
#v(40pt)
#only("1-")[Consider the data set: [4, 8, 6, 5, 3]]
#v(20pt)
#only("2-")[Calculate the variance of this data set.]
#only("1")[
#voiceover("Consider the following data set: 4, 8, 6, 5, 3.")
]
#only("2")[
#voiceover("Your task is to calculate the variance of this data set.")
]
]#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "What is the variance of the data set [4, 8, 6, 5, 3]? Round to two decimal places.",
answerOptions: ("3.76", "5.20", "2.28"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("\key{a}"),
answerOptionsTypes: (
"a": "number"
)
),
)