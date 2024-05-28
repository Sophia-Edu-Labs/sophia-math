#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung]

#v(40pt)

#only("1-")[
Betrachte ein Gut $X$ mit:
- Anfangspreis: $10$
- Anfangsmenge: $5$ Einheiten
]

#v(20pt)

#only("2-")[
Nach einer Preisänderung:
- Neuer Preis: $8$
- Neue nachgefragte Menge: $7$ Einheiten
]

#v(20pt)

#only("3-")[
#text(size: 24pt, weight: "bold")[Frage:]
Was ist der Substitutionseffekt, wenn der Nutzen des Konsumenten konstant bleibt? 🤔
]

#only("1")[
#voiceover("Betrachte ein Gut X mit einem Anfangspreis von 10 Dollar und einer Anfangsmenge von 5 Einheiten.")
]

#only("2")[
#voiceover("Nach einer Preisänderung beträgt der neue Preis 8 Dollar und die neue nachgefragte Menge 7 Einheiten.")
]

#only("3")[
#voiceover("Die Frage lautet: Was ist der Substitutionseffekt, wenn der Nutzen des Konsumenten konstant bleibt?")
]

]

#questionDef(
questionText: "Was ist der Substitutionseffekt, wenn der Nutzen des Konsumenten konstant bleibt?",
answerOptions: ("$2$ Einheiten", "$0$ Einheiten"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 0,
tolerance: none
)
),
answerOptionMatcher:("$\\key{a}$ Einheiten"),
answerOptionsTypes: (
"a": "number"
)
),
)