#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Einkommenseffekt Übung]
#v(40pt)
#only("1-")[
- Der Preis von Gut X sinkt von $\$10$ auf $\$8$ 📉
]
#v(20pt)
#only("2-")[
- Das reale Einkommen des Konsumenten steigt 💰
]
#v(20pt)
#only("3-")[
- Die nachgefragte Menge von Gut X steigt von $7$ auf $9$ Einheiten 📈
]
#v(40pt)
#only("4-")[
❓ Was ist der Einkommenseffekt?
]

#only("1")[
#voiceover("Betrachte ein Szenario, in dem der Preis von Gut X von 10 Dollar auf 8 Dollar sinkt.")
]
#only("2")[
#voiceover("Dieser Preisrückgang führt zu einem Anstieg des realen Einkommens des Konsumenten, wodurch er mehr von allen Gütern kaufen kann.")
]
#only("3")[
#voiceover("Infolgedessen steigt die nachgefragte Menge von Gut X von 7 Einheiten auf 9 Einheiten.")
]
#only("4")[
#voiceover("Deine Aufgabe ist es, den Einkommenseffekt in diesem Szenario zu bestimmen.")
]
]#questionDef(
questionText: "Was ist der Einkommenseffekt, wenn die nachgefragte Menge von Gut $X$ von $7$ auf $9$ Einheiten steigt?",
answerOptions: ("$2$ Einheiten", "$0$ Einheiten"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\\key{a}$ Einheiten"),
answerOptionsTypes: (
"a": "number"
)
),
)