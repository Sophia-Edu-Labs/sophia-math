#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung Übung]
#v(40pt)
#only("1-")[Betrachte folgendes Szenario:]
#v(20pt)
#only("2-")[- Der Substitutionseffekt erhöht die nachgefragte Menge des Gutes X von 5 auf 7 Einheiten 📈]
#v(20pt)
#only("3-")[- Der Einkommenseffekt erhöht die nachgefragte Menge des Gutes X weiter von 7 auf 9 Einheiten 💰]
#v(40pt)
#only("4-")[Was ist der Gesamteffekt der Preisänderung auf die nachgefragte Menge des Gutes X? 🤔]

#only("1")[
#voiceover("Betrachten wir das folgende Szenario im Zusammenhang mit der Slutsky-Zerlegung.")
]
#only("2")[
#voiceover("Der Substitutionseffekt erhöht die nachgefragte Menge des Gutes X von 5 auf 7 Einheiten.")
]
#only("3")[
#voiceover("Der Einkommenseffekt erhöht die nachgefragte Menge des Gutes X weiter von 7 auf 9 Einheiten.")
]
#only("4")[
#voiceover("Nun stellt sich die Frage: Was ist der Gesamteffekt der Preisänderung auf die nachgefragte Menge des Gutes X?")
]
]#questionDef(
questionText: "Was ist der Gesamteffekt der Preisänderung auf die nachgefragte Menge des Gutes $X$?",
answerOptions: ("$4$ Einheiten", "$2$ Einheiten"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ Einheiten"),
answerOptionsTypes: (
"a": "number"
)
),
)