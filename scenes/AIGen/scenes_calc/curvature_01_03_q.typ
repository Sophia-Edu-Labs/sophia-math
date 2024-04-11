#import "../sophiatheme.typ": *
#show: sophia-theme

#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe: Krümmung bestimmen]
#v(40pt)

#only("1-")[Gegeben: $f(x) = -x^4 - 2x^2 + 4x$]

#only("1")[
#voiceover("Betrachte die Funktion f von x gleich minus x hoch vier minus zwei x Quadrat plus vier x. Ist diese Funktion linksgekrümmt, rechtsgekrümmt oder keines von beiden?")
]
]

#questionDef(
questionText: "Ist die Funktion $f(x) = x^4 + 2x^2 - 4x$ linksgekrümmt, rechtsgekrümmt oder keines von beiden?", 
answerOptions: ("Linksgekrümmt", "Rechtsgekrümmt", "Keines von beiden"),
correctAnswerIndex: 1,
)