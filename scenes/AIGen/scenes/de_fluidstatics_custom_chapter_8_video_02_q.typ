#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Städtisches Wasserversorgungssystem]
#v(40pt)
#only("1-")[
- Der Wasserdruck variiert mit der Höhe 🌊
]
#v(20pt)
#only("2-")[
- Aufgrund der Gravitationskraft auf die Flüssigkeitssäule 🪨
]
#only("1")[
#voiceover("In einem städtischen Wasserversorgungssystem variiert der Wasserdruck mit der Höhe.")
]
#only("2")[
#voiceover("Dies liegt an der Gravitationskraft, die auf die Flüssigkeitssäule wirkt.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Druckberechnung]
#v(40pt)
#only("1-")[
- Druckformel: $ p = rho dot g dot h $
]
#v(20pt)
#only("2-")[
  - $ rho $ = Dichte des Wassers (1000 kg/m³)
  - $ g $ = Erdbeschleunigung (9,81 m/s²)
  - $ h $ = Höhenunterschied (m)
]
#only("1")[
#voiceover("Der Druck kann mit der Formel p gleich rho mal g mal h berechnet werden.")
]
#only("2")[
#voiceover("Hierbei ist rho die Dichte des Wassers, die 1000 Kilogramm pro Kubikmeter beträgt, g ist die Erdbeschleunigung, 9,81 Meter pro Sekunde zum Quadrat, und h ist der Höhenunterschied in Metern.")
]
]



#questionDef(
questionText: "Wie hoch ist der Druck an dem Hahn, der sich 50 m unterhalb des Reservoirs befindet? Verwende $ p = \rho \cdot g \cdot h $, wobei $ \rho $ für Wasser $1000 \, \\text{kg/m}^3 $ beträgt. Gib deine Antwort in Pascal an.",
answerOptions: ("$490500$ Pa", "$0$ Pa"),
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