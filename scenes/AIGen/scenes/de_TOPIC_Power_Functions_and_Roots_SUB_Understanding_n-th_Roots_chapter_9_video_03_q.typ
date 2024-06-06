#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[5. Wurzel von 32]
#v(40pt)
#only("1-")[Was ist der Wert von $root(5, 32)$?]
#only("1")[
#voiceover("Betrachte den Ausdruck 'die 5. Wurzel von 32'. Was ist der Wert dieses Ausdrucks?")
]
]#questionDef(
questionText: "Was ist der Wert von $\sqrt[5]{32}$?",
answerOptions: ("$2$", "$32$"),
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