#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Anwendungen von n-ten Wurzeln 🌿]
#v(40pt)
#only("1-")[Welche der folgenden ist eine Anwendung von n-ten Wurzeln? 🤔]
#v(40pt)
#only("2-")[a) Berechnung von Zinssätzen 📈]
#v(10pt)
#only("3-")[b) Bestimmung von Geschwindigkeiten 🚗💨]
#v(10pt)
#only("4-")[c) Messung von Entfernungen 📏]
#v(10pt)
#only("5-")[d) Alle oben genannten 🌟]

#only("1")[#voiceover("Lass uns Dein Wissen über die Anwendungen von n-ten Wurzeln testen. Welche der folgenden ist eine Anwendung von n-ten Wurzeln?")]
#only("2")[#voiceover("Ist es die Berechnung von Zinssätzen,")]
#only("3")[#voiceover("oder die Bestimmung von Geschwindigkeiten,")]
#only("4")[#voiceover("oder die Messung von Entfernungen,")]
#only("5")[#voiceover("oder sind alle oben genannten Anwendungen von n-ten Wurzeln?")]
]#questionDef(
questionText: "Welche der folgenden ist eine Anwendung von $n$-ten Wurzeln?",
answerOptions: ("Berechnung von Zinssätzen", "Bestimmung von Geschwindigkeiten", "Messung von Entfernungen", "Alle oben genannten"),
correctAnswerIndex: 3
)