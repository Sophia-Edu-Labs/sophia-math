#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Wasserdruck Übung]
#v(40pt)
#only("1-")[
- Städtisches Wasserversorgungssystem
- Wasserhahn befindet sich 50 m unterhalb des Reservoirs
- Anfangsdruck am Wasserhahn: 490.500 Pa
]
#v(20pt)
#only("2-")[
#text(size: 24pt, weight: "bold", fill: blue)[Frage: 🤔]
]
#v(10pt)
#only("2-")[
Wenn der Wasserstand im Reservoir um 2 m sinkt, berechne den neuen Druck am selben Wasserhahn.
]

#only("1")[
#voiceover("Betrachte ein städtisches Wasserversorgungssystem, bei dem sich ein Wasserhahn 50 Meter unterhalb des Reservoirs befindet. Der Anfangsdruck am Wasserhahn beträgt 490.500 Pascal.")
]
#only("2")[
#voiceover("Wenn der Wasserstand im Reservoir um 2 Meter sinkt, wie hoch wird der neue Druck am selben Wasserhahn sein?")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Wasserdruck Übung]
#v(20pt)
#only("1-")[
Verwende die Formel:
]
#v(10pt)
#only("1-")[
$ p = rho \cdot g \cdot h $
]
#v(20pt)
#only("2-")[
Wo:
- $ rho $ = Dichte des Wassers (1000 kg/m³)
- $ g $ = Erdbeschleunigung (9,81 m/s²)
- $ h $ = Höhenunterschied (in Metern)
]
#v(20pt)
#only("3-")[
#text(size: 24pt, weight: "bold", fill: green)[Antwort in Pascal (Pa) 📝]
]

#only("1")[
#voiceover("Um den neuen Druck zu berechnen, verwende die Formel p gleich rho mal g mal h.")
]
#only("2")[
#voiceover("Hierbei ist rho die Dichte des Wassers, welche 1000 Kilogramm pro Kubikmeter beträgt, g ist die Erdbeschleunigung, 9,81 Meter pro Sekunde zum Quadrat, und h ist der Höhenunterschied in Metern.")
]
#only("3")[
#voiceover("Gib deine Antwort in Pascal an.")
]
]#questionDef(
questionText: "Wenn der Wasserstand im Reservoir um 2 m sinkt, wie hoch ist der neue Druck am selben Wasserhahn? Verwende $ p = \rho \cdot g \cdot h $. (Antwort in Pascal)",
answerOptions: ("$470.580$ Pa", "$0$ Pa"),
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