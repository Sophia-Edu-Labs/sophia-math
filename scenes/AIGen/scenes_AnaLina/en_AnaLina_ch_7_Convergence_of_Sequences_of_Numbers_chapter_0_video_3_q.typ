#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Sequence Example]
#v(40pt)
#only("1-")[
Consider the sequence defined by:
]
#v(20pt)
#only("2-")[
$a_n = 2n + 1$
]
#v(40pt)
#only("3-")[
Find the 5th term, i.e., $a_5$.
]
#only("1")[
#voiceover("Let's consider a sequence defined by a formula.")
]
#only("2")[
#voiceover("The n-th term of the sequence, a sub n, is given by 2n plus 1.")
]
#only("3")[
#voiceover("Your task is to find the 5th term of this sequence, that is, a sub 5.")
]
]#questionDef(
questionText: "what is the value of $a_5$?",
answerOptions: ("$a_5=11$", "$a_5=0$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$a_5=\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)