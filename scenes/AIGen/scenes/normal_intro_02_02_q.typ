#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Hier ist eine Aufgabe zur Normalverteilung.")
]
#text(size: 30pt, weight: "bold")[Normalverteilung]
#v(40pt)
#only("1-")[
Eine Maschine produziert Schrauben.
]
#only("2-")[
#v(10pt)
- Länge der Schrauben: $500 approx "mm"$
]
#only("3-")[
- Standardabweichung: $10 approx "mm"$
#v(10pt)
]
#only("4-")[
- Länge der Schrauben ist normalverteilt
#v(10pt)
]
#only("5-")[
Berechne $P(X < 485 approx "mm")$]
#only("2")[
#voiceover("Die Maschine produziert Schrauben mit einer Länge von 500 Millimetern")
]
#only("3")[
#voiceover("und einer Standardabweichung von 10 Millimetern.")
]
#only("4")[
#voiceover("Die Länge der produzierten Schrauben kann als normalverteilt angesehen werden.")
]
#only("5")[
#voiceover("Gesucht ist die Wahrscheinlichkeit P dafür, dass eine zufällig ausgewählte Schraube kürzer als 485 Millimeter ist.")
]
#only("6")[
#voiceover("Tipp: Gehe bei der Lösung wie folgt vor:")
]
#only("6-")[
#v(20pt)
#text(weight:"bold")[Lösungsschritte:]
#v(10pt)
]
#only("7-")[
- Bestimme $z=(x-mu)/sigma$
]
#only("8-")[
- Ermittle den $phi(z)$-Wert aus Tabelle
]
#v(40pt)
#only("7")[
#voiceover("Bestimme zunächst den Wert von z, indem du die Formel z gleich x minus mu geteilt durch sigma anwendest.")
]
#only("8")[
#voiceover("Anschließend ermittelst du den phi von z Wert aus der Tabelle der Standardnormalverteilung. Dieser Wert entspricht dann der gesuchten Wahrscheinlichkeit P.")
]]
#questionDef(
questionText: "Bestimme die Wahrscheinlichkeit P dafür, dass eine zufällig ausgewählte Schraube kürzer als 485 mm ist, auf Prozent gerundet.",
answerOptions: (
"P(X < 485 mm) ≈ 7%",
"P(X < 485 mm) ≈ 93%"
),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (roundingDecimalPlaces: 1, tolerance: 0.1)),
answerOptionMatcher:("P(X < 485~mm) ≈ \\key{a}%"),
answerOptionsTypes: (
"a": "number",
)
),
)
