#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe: Krümmung bestimmen]
#v(40pt)

#only("1-")[Gegeben: $f(x) = x^3 + 2x - 4$]

#only("1")[
#voiceover("Betrachte die Funktion f von x gleich x hoch drei plus zwei x minus vier. Ist diese Funktion linksgekrümmt, rechtsgekrümmt oder keines von beiden?")
]
]

#questionDef(
questionText: "Ist die Funktion $f(x) = x^3 + 2x - 4$ linksgekrümmt, rechtsgekrümmt oder keines von beiden?", 
answerOptions: ("Linksgekrümmt", "Rechtsgekrümmt", "Keines von beiden"),
correctAnswerIndex: 2,
)