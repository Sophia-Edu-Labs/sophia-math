#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Blutdruck 🫀]
#v(40pt)
#only("1-")[
- Höhenunterschied: 50 cm 📏
]
#v(20pt)
#only("2-")[
- Blutdichte: 1060 kg/m³ 🩸
]
#v(20pt)
#only("3-")[
- Formel: $ Delta p = rho dot g dot h $ 🧮
]
#v(40pt)
#only("4-")[
#text(size: 24pt, weight: "bold")[Berechne den Druckunterschied in Pascal.]
]

#only("1")[
#voiceover("Betrachte den Druckunterschied zwischen dem Kopf und dem Herzen, bei einem Höhenunterschied von 50 Zentimetern.")
]
#only("2")[
#voiceover("Die Blutdichte beträgt 1060 Kilogramm pro Kubikmeter.")
]
#only("3")[
#voiceover("Um den Druckunterschied zu berechnen, benutze die Formel Delta p gleich rho mal g mal h, wobei rho die Dichte, g die Erdbeschleunigung und h der Höhenunterschied ist.")
]
#only("4")[
#voiceover("Berechne den Druckunterschied in Pascal.")
]
]#questionDef(
questionText: "Was ist der Druckunterschied zwischen dem Kopf und dem Herzen in Pascal? Verwende die Formel $\Delta p = \rho \cdot g \cdot h$, wobei $\rho = 1060 \, \\text{kg/m}^3$, $g = 9.81 \, \\text{m/s}^2$ und $h = 0.5 \, \\text{m}$ ist.",
answerOptions: ("$5193$ Pa", "$0$Pa"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$ Pa"),
answerOptionsTypes: (
"a": "number"
)
),
)