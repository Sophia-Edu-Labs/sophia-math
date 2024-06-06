#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rationalisierung von n-ten Wurzeln]
#v(40pt)
#only("1-")[
Betrachte den Ausdruck:
#v(20pt)
$1/root(4, 5)$
]
#only("1")[
#voiceover("Betrachte den Ausdruck 1 durch die 4. Wurzel von 5.")
]
#only("2")[
#voiceover("Deine Aufgabe ist es, diesen Ausdruck zu rationalisieren.")
]
#only("3")[
#voiceover("Überlege, wie du diesen Ausdruck manipulieren kannst, um die Wurzel im Nenner zu eliminieren.")
]
#only("4")[
#voiceover("Gib deinen rationalisierten Ausdruck in das Antwortfeld unten ein.")
]
]#questionDef(
questionText: "Rationalisiere den Ausdruck $1/\sqrt[4]{5}$.",
answerOptions: ("$\sqrt[4]{5^3}/5$", "$1/5$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}/\key{b}$"),
answerOptionsTypes: (
"a": "math",
"b": "math"
)
),
)