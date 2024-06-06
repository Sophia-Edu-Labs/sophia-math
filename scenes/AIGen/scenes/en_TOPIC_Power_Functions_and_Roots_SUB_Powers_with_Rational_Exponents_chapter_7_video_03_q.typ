#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Solve the Equation]
#v(40pt)
#only("1")[
#voiceover("Let's consider the equation")
]
#only("1-")[
$ x^(2/3) = 9 $
]
#only("2")[
#voiceover("Solve this equation for x.")
]
#v(40pt)
#only("3-")[
📝 Your turn: Solve for $x$
]
#only("3")[
#voiceover("It's your turn now. Solve the equation for x.")
]
]#questionDef(
questionText: "Solve the equation $x^{2/3} = 9$ for $x$.",
answerOptions: ("$x=27$", "$x=9$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$x=\\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)