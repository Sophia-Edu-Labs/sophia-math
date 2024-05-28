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
#only("2-")[- Der Preis von Gut X sinkt von $10$ auf $8$ 💰]
#v(20pt)
#only("3-")[- Die insgesamt nachgefragte Menge steigt von 5 auf 9 Einheiten 📈]
#v(20pt)
#only("4-")[- Der Substitutionseffekt erhöht die nachgefragte Menge auf 7 Einheiten 🔄]
#v(20pt)
#only("5-")[Was ist der Einkommenseffekt? 🤔]

#only("1")[
#voiceover("Betrachten wir eine Übung zur Slutsky-Zerlegung.")
]
#only("2")[
#voiceover("Angenommen, der Preis von Gut X sinkt von 10 Dollar auf 8 Dollar.")
]
#only("3")[
#voiceover("Infolgedessen steigt die insgesamt nachgefragte Menge von 5 auf 9 Einheiten.")
]
#only("4")[
#voiceover("Es wird uns auch mitgeteilt, dass der Substitutionseffekt allein die nachgefragte Menge auf 7 Einheiten erhöht.")
]
#only("5")[
#voiceover("Die Frage ist, was ist der Einkommenseffekt in diesem Szenario?")
]
]#questionDef(
questionText: "Was ist der Einkommenseffekt in diesem Szenario?",
answerOptions: ("$2$ Einheiten", "$4$ Einheiten"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 0,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ Einheiten"),
answerOptionsTypes: (
"a": "number"
)
),
)