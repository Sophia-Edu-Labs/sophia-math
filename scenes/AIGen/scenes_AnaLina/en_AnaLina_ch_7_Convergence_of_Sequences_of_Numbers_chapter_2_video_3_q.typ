#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limit of a Sequence]
#v(40pt)
#only("1-")[
Consider the sequence:
]
#v(20pt)
#only("2-")[
$b_n = 2n/(n+1)$
]
#only("1")[
#voiceover("Consider the following sequence:")
]
#only("2")[
#voiceover("b sub n equals 2n over n plus 1.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[
Find the limit of the sequence as $n$ approaches $infinity$:
]
#v(20pt)
#only("2-")[
$lim_(n->infinity) b_n = ?$
]
#only("1")[
#voiceover("Find the limit of this sequence as n approaches infinity.")
]
#only("2")[
#voiceover("In other words, what is the limit of b sub n as n goes to infinity?")
]
]#questionDef(
questionText: "What is $\lim_{n \\to \infty} b_n$?",
answerOptions: ("$2$", "$0$"),
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