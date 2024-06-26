#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hydraulikheber-Problem]
#v(40pt)
#only("1-")[
- Schiffsmasse: 6000 kg 🚢
- Hubhöhe: 2,0 m ⬆️
- Pumpenkolbenfläche: 5,0 cm² 🔽
- Druckkolbenfläche: 400 cm² 🔼
]
#only("1")[
#voiceover("Betrachte einen Hydraulikheber, der einen großen Schiffsmotor mit einer Masse von 6000 Kilogramm um 2 Meter anhebt. Die Fläche des Pumpenkolbens beträgt 5 Quadratzentimeter und die Fläche des Druckkolbens beträgt 400 Quadratzentimeter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[
Wie hoch ist der Druck in der Flüssigkeit? 🤔💧
]
#only("1")[
#voiceover("Wie hoch ist der Druck in der Flüssigkeit?")
]
]#questionDef(
questionText: "Wie hoch ist der Druck $P$ in der Flüssigkeit?",
answerOptions: ("$P = 14.7 \\text{ bar}$", "$P = 0 \\text{ bar}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$P = \key{a} \\text{ bar}$"),
answerOptionsTypes: (
"a": "number"
)
),
)