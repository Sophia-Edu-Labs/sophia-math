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
$8^(1/3)$
]
#only("1")[
#voiceover("Simplify the expression 8 to the power of 1/3.")
]
#v(40pt)
#only("2-")[
🤔💡
]
#only("2")[
#voiceover("Think about what this expression represents and how you can simplify it.")
]
]#questionDef(
questionText: "What is the simplified value of $8^{1/3}$?",
answerOptions: ("$2$", "$4$"),
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