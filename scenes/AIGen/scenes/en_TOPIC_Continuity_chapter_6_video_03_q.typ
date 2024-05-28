#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Limit Exercise]
#v(40pt)
#only("1-")[Given two functions:]
#v(20pt)
#only("2-")[- $f(x) = x^2$]
#v(20pt)
#only("3-")[- $g(x) = 2x$]
#only("1")[
#voiceover("Consider the following two functions:")
]
#only("2")[
#voiceover("f of x equals x squared")
]
#only("3")[
#voiceover("and g of x equals 2x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Question]
#v(40pt)
#only("1-")[Find the limit:]
#v(20pt)
#only("2-")[$lim_(x -> 2) (f(x) + g(x)) = ?$]
#only("1")[
#voiceover("The question is:")
]
#only("2")[
#voiceover("Find the limit as x approaches 2 of f of x plus g of x.")
]
]#questionDef(
questionText: "What is the value of $ \lim_{x \to 2} (f(x) + g(x)) $?",
answerOptions: ("$8$", "$6$"),
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