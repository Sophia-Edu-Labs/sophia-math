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
$root(4, 81)$
]
#v(20pt)
#only("2-")[
= $root(4, 3^4)$
]
#v(20pt)
#only("3-")[
= $3^(4/4)$
]
#v(20pt)
#only("4-")[
= $3^1$
]
#v(20pt)
#only("5-")[
= 3
]
#only("1")[
#voiceover("Betrachte den Ausdruck: die vierte Wurzel aus 81.")
]
#only("2")[
#voiceover("Wir können 81 als 3 hoch 4 umschreiben.")
]
#only("3")[
#voiceover("Nun, unter Verwendung der Eigenschaft von Wurzeln, können wir den Exponenten nach vorne bringen und durch 4 teilen.")
]
#only("4")[
#voiceover("4 geteilt durch 4 ist 1.")
]
#only("5")[
#voiceover("Also vereinfacht sich die vierte Wurzel aus 81 zu 3.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[
Was ist der vereinfachte Wert von $root(4, 81)$? 🤔
]
// Die Frage wird ab Folie 1 gestellt
#only("1")[
#voiceover("Jetzt bist du dran. Was ist der vereinfachte Wert der vierten Wurzel aus 81?")
]
]#questionDef(
questionText: "Was ist der vereinfachte Wert von $\\sqrt[4]{81}$?",
answerOptions: ("3", "9"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("\key{a}"),
answerOptionsTypes: (
"a": "number"
)
),
)