#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise]
#v(40pt)
#only("1-")[Simplify the following expression:] 
#v(20pt)
#only("2-")[$(27^(1/3))^2$]
#only("1")[
#voiceover("Let's do an exercise. Your task is to simplify the following expression:")
]
#only("2")[
#voiceover("27 to the power of one third, all squared.")
]
]#questionDef(
questionText: "What is the simplified form of $(27^{1/3})^2$?",
answerOptions: ("$9$", "$81$"),
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