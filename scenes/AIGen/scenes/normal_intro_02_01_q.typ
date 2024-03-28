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
$X$ normalverteilt
]
#only("2-")[
#v(10pt)
- $mu = 500$
]
#only("3-")[
- $sigma = 50$
#v(10pt)
]
#only("4-")[
Bestimme $P(X > 550)$]
#only("2")[
#voiceover("Gegeben ist eine normalverteilte Zufallsvariable X mit Erwartungswert mü gleich 500")
]
#only("3")[
#voiceover("und Standardabweichung sigma gleich 50. Gesucht ist")
]
#only("4")[
#voiceover("die Wahrscheinlichkeit P von x größer als 550, also dass X einen Wert größer als 550 annimmt.")
]
#only("5")[
#voiceover("Tipp: Gehe bei der Lösung wie folgt vor:")
]
#only("5-")[
#v(20pt)
#text(weight:"bold")[Lösungsschritte:]
#v(10pt)
]
#only("6-")[
- Bestimme $z=(x-mu)/sigma$
]
#only("7-")[
- Ermittle den z-Wert aus Tabelle
]
#v(40pt)
#only("6")[
#voiceover("Bestimme zunächst den Wert von z, indem du die Formel z gleich x minus mu geteilt durch sigma anwendest.")
]
#only("7")[
#voiceover("Anschließend ermittelst du den z-Wert aus der Tabelle der Standardnormalverteilung.")
]
]
#questionDef(

questionText: "Bestimme P(X > 550) für die gegebene Normalverteilung:",
answerOptions: ("P(X > 550) ≈ 16%","P(X > 550) ≈ 0%"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 2,
answerOptionsEquality: (
a: (roundingDecimalPlaces: 1, tolerance: 0.1)),
answerOptionMatcher:("P(X > 550) ≈ \\key{a}%"),
answerOptionsTypes: (
"a": "number",
)
),
)

