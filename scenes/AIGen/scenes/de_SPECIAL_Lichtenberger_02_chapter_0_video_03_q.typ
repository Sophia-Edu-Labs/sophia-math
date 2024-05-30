#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hydraulischer Lift]
#v(40pt)
#only("1-")[
- Kolbenfläche: 5,0 cm² 🔧
]
#v(20pt)
#only("2-")[
- Druck in der Flüssigkeit: 14,7 bar 💧
]
#only("1")[
#voiceover("Betrachte einen hydraulischen Lift mit einer Pumpkolbenfläche von 5,0 Quadratzentimetern.")
]
#only("2")[
#voiceover("Der Druck in der Flüssigkeit beträgt 14,7 bar.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[
Was ist die notwendige Kraft der Pumpe? 🤔
]
#only("1")[
#voiceover("Berechne basierend auf diesen Informationen die notwendige Kraft der Pumpe.")
]
]#questionDef(
questionText: "Was ist die notwendige Kraft $F$ der Pumpe in Newton (N)?",
answerOptions: ("$F = 735 \text{ N}$", "$F = 0 \text{ N}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$F = \key{a} \text{ N}$"),
answerOptionsTypes: (
"a": "number"
)
),
)