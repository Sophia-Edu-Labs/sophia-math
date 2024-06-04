#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Landwirtschaftliches Bewässerungssystem]
#v(40pt)
#only("1-")[
- Wasser muss in unterschiedliche Höhen gehoben werden 🚰
]
#v(20pt)
#only("2-")[
- Der erforderliche Druck hängt von der Höhe und der Dichte ab 📏🌊
]
#only("1")[
#voiceover("In einem landwirtschaftlichen Bewässerungssystem muss Wasser in unterschiedliche Höhen gehoben werden, um verschiedene Teile des Feldes zu erreichen.")
]
#only("2")[
#voiceover("Der erforderliche Druck, um das Wasser zu heben, hängt von der Höhe ab, in die es gehoben werden muss, und von der Dichte des Wassers.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Berechnung des Pumpendrucks]
#v(40pt)
#only("1-")[
- Verwende die Formel: $ p = rho dot g dot h $
  - $ p $ = Druck (Pa)
  - $ rho $ = Dichte des Wassers (1000 kg/m³)
  - $ g $ = Erdbeschleunigung (9,81 m/s²)
  - $ h $ = Höhe (m)
]
#only("1")[
#voiceover("Um den erforderlichen Pumpendruck zu berechnen, können wir die Formel p gleich rho mal g mal h verwenden, wobei p der Druck in Pascal ist, rho die Dichte des Wassers, die 1000 Kilogramm pro Kubikmeter beträgt, g die Erdbeschleunigung, die 9,81 Meter pro Sekunde zum Quadrat beträgt, und h die Höhe ist, in die das Wasser gehoben werden muss, in Metern.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[
Berechne den erforderlichen Pumpendruck, um Wasser auf eine Höhe von 30 m zu heben.
]
#v(20pt)
#only("2-")[
Verwende $ p = rho dot g dot h $, wobei $ rho $ für Wasser 1000 kg/m³ beträgt.
]
#v(20pt)
#only("3-")[
Antwort in Pascal (Pa).
]
#only("1")[
#voiceover("Jetzt bist du dran: Berechne den erforderlichen Pumpendruck, um Wasser auf eine Höhe von 30 Metern zu heben.")
]
#only("2")[
#voiceover("Verwende die Formel p gleich rho mal g mal h, wobei rho für Wasser 1000 Kilogramm pro Kubikmeter beträgt.")
]
#only("3")[
#voiceover("Gib deine Antwort in Pascal an.")
]
]#questionDef(
questionText: "Wie hoch ist der erforderliche Pumpendruck, um Wasser auf eine Höhe von 30 m zu heben? Verwende $ p = \rho \cdot g \cdot h $, wobei $ \rho $ für Wasser $1000 \, \text{kg/m}^3$ beträgt. Antwort in Pascal (Pa).",
answerOptions: ("$294300$ Pa", "$30000$ Pa"),
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