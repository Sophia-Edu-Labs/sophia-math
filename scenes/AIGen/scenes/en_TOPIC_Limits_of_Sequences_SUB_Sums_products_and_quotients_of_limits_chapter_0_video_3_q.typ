#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limit Exercise 🎯]
#v(40pt)
#only("1-")[
Consider the sequence:
]
#v(20pt)
#only("2-")[
$a_n = 2/n$
]
#v(40pt)
#only("3-")[
Find:
]
#v(20pt)
#only("4-")[
$lim_(n -> infinity) a_n = ?$
]

#only("1")[
#voiceover("Let's practice finding limits! Here's an exercise for you.")
]
#only("2")[
#voiceover("Consider the sequence a sub n equals 2 over n.")
]
#only("3")[
#voiceover("Your task is to find...")
]
#only("4")[
#voiceover("the limit of a sub n as n approaches infinity. Take a moment to think about it!")
]
]#questionDef(
questionText: "What is $\\lim_{n \\to \\infty} a_n$, where $a_n = \\frac{2}{n}$?",
answerOptions: ("$0$", "$2$"),
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