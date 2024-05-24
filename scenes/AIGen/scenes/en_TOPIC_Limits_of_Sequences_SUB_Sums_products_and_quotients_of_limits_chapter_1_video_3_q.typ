#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limits of Sequences]
#v(40pt)
#only("1-")[Consider the sequences:]
#v(20pt)
#only("2-")[- $a_n = 1/n$]
#v(10pt)
#only("3")[- $b_n = 2/n$]
#v(20pt)
#only("4-")[Find: $lim_(n -> infinity) (a_n + b_n)$]

#only("1")[
#voiceover("Let's practice finding the limit of a sum of sequences.")
]
#only("2")[
#voiceover("We have the sequence a sub n equals 1 over n,")
]
#only("3")[
#voiceover("and the sequence b sub n equals 2 over n.")
]
#only("4")[
#voiceover("Your task is to find the limit as n approaches infinity of the sum a sub n plus b sub n.")
]
]#questionDef(
questionText: "What is $\\lim_{n \\to \\infty} (a_n + b_n)$, given $a_n = \\frac{1}{n}$ and $b_n = \\frac{2}{n}$?",
answerOptions: ("$0$", "$3$"),
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