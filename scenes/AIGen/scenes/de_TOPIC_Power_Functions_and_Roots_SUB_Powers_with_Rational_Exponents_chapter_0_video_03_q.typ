#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Vereinfachen]
#v(40pt)
#only("1-")[
$8^(1/3)$
]
#only("1")[
#voiceover("Vereinfache den Ausdruck 8 hoch 1/3.")
]
#v(40pt)
#only("2-")[
🤔💡
]
#only("2")[
#voiceover("Überlege, was dieser Ausdruck darstellt und wie Du ihn vereinfachen kannst.")
]
]#questionDef(
questionText: "Was ist der vereinfachte Wert von $8^{1/3}$?",
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