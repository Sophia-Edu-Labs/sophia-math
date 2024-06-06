#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[4th Root of 16]
#v(40pt)
#only("1-")[What is the 4th root of 16?]
#v(20pt)
#only("2-")[In other words, solve for $x$:]
#v(20pt)
#only("3-")[$root(4,16) = x$]
#v(20pt)
#only("4-")[$x = ?$]

#only("1")[
#voiceover("Let's consider the following question: What is the 4th root of 16?")
]
#only("2")[
#voiceover("In other words, we are looking for a number x such that")
]
#only("3")[
#voiceover("the 4th root of 16 equals x.")
]
#only("4")[
#voiceover("So, what is the value of x?")
]
]#questionDef(
questionText: "What is the value of $x$ if $\sqrt[4]{16} = x$?",
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