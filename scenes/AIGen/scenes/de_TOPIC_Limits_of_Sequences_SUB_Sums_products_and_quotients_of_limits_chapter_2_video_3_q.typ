#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Numerische Frage]
#v(40pt)
#only("1-")[
Gegeben:
- $a_n = 1/n$
- $b_n = 2/n$
]
#v(20pt)
#only("2-")[
Finde: $lim_(n -> infinity) (a_n b_n)$
]
#only("1")[
#voiceover("Betrachte die Folgen a_n gleich 1 durch n und b_n gleich 2 durch n.")
]
#only("2")[
#voiceover("Finde den Limes, wenn n gegen unendlich geht, des Produkts a_n mal b_n.")
]
]

#questionDef(
questionText: "Was ist $\\lim_{n \\to \\infty} (a_n b_n)$?",
answerOptions: ("$0$", "$1$"),
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