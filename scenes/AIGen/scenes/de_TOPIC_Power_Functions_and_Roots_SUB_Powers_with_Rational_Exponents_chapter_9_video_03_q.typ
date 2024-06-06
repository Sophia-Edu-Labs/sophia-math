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
$((16^(1/4))^2)^2$
]
#only("1")[
#voiceover("Vereinfache den Ausdruck Klammer auf Klammer auf 16 hoch ein Viertel Klammer zu zum Quadrat Klammer zu zum Quadrat.")
]
]#questionDef(
questionText: "Was ist der vereinfachte Wert von $((16^{1/4})^2)^2$?",
answerOptions: ("$16$", "$4$"),
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