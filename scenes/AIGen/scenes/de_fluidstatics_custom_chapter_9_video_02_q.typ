#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Potentielle Energie des Wassers]
#v(40pt)
#only("1-")[
- Wasserhöhe: 25 m 📏
]
#v(20pt)
#only("2-")[
- Massenstrom: 1000 kg/s 🌊
]
#v(20pt)
#only("3-")[
- Formel: $ E = m \cdot g \cdot h $ ⚖️
]
#v(20pt)

#only("1")[
#voiceover("Betrachte ein Wasserkraftwerk mit Wasser in einer Höhe von 25 Metern.")
]
#only("2")[
#voiceover("Der Massenstrom des Wassers beträgt 1000 Kilogramm pro Sekunde.")
]
#only("3")[
#voiceover("Um die potentielle Energie des Wassers zu berechnen, verwenden wir die Formel E gleich m mal g mal h, wobei m die Masse, g die Gravitationsbeschleunigung und h die Höhe ist.")
]
#only("4")[
#voiceover("Berechne die potentielle Energie des Wassers in Joule.")
]
]#questionDef(
questionText: "Berechne die potentielle Energie des Wassers. (Antwort in Joule)",
answerOptions: ("$E=245250$ J", "$E=0$ J"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$E=\\key{a}$ J"),
answerOptionsTypes: (
"a": "number"
)
),
)