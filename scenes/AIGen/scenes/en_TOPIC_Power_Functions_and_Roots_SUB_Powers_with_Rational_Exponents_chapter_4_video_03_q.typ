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
$(-16)^(1/4)$
]
// The expression to simplify is shown from slide 1 onward

#v(40pt)

#only("2-")[
🤔 Simplify the expression
]
// The instruction to simplify the expression is shown from slide 2 onward

#only("1")[
#voiceover("Consider the expression negative sixteen raised to the power of one fourth.")
]

#only("2")[
#voiceover("Can you simplify this expression?")
]
]#questionDef(
questionText: "What is the simplified form of $(-16)^{1/4}$?",
answerOptions: ("$2i$", "$2$"),
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
"a": "text"
)
),
)