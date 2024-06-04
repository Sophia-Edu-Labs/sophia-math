#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hydraulisches Hebesystem]
#v(40pt)
#only("1-")[
- Hebe einen 6000 kg Motor 🏋️
- Druckkolbenfläche: 400 cm² 📏
]
#only("1")[
#voiceover("Betrachte ein hydraulisches Hebesystem, das einen Motor mit einem Gewicht von 6000 Kilogramm hebt. Die Fläche des Druckkolbens beträgt 400 Quadratzentimeter.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Druckberechnung]
#v(40pt)
#only("1-")[
- Verwende die Formel: $p = F / A$
- Kraft $F = m \cdot g$ 🪶
]
#only("1")[
#voiceover("Um den erforderlichen Druck zu berechnen, verwende die Formel Druck gleich Kraft geteilt durch Fläche, wobei die Kraft das Produkt aus Masse und Erdbeschleunigung ist.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[
Wie hoch ist der erforderliche Druck, um den Motor zu heben? 🤔
]
#only("1")[
#voiceover("Wie hoch ist der erforderliche Druck, um den Motor zu heben? Gib Deine Antwort in Pascal an.")
]
]#questionDef(
questionText: "Wie hoch ist der erforderliche Druck (in Pascal), um den 6000 kg schweren Motor mit einem hydraulischen Hebesystem zu heben, wobei die Druckkolbenfläche 400 cm² beträgt? Verwende $p = \frac{F}{A}$ mit $F = m \cdot g$.",
answerOptions: ("$1471500$ Pa", "$0$ Pa"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 0,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ Pa"),
answerOptionsTypes: (
"a": "number"
)
),
)