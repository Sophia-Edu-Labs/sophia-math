#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Zeitwert des Geldes 💰⏰]
#v(40pt)
#only("1-")[Wofür steht PV?]
#v(40pt)
#only("2-")[a) Potenzieller Wert]
#v(10pt)
#only("3-")[b) Barwert]
#v(10pt)
#only("4-")[c) Vergangener Wert]
#v(10pt)
#only("5-")[d) Prognostizierter Wert]
#only("1")[#voiceover("Lass uns dein Wissen über den Zeitwert des Geldes testen. Wofür steht die Abkürzung PV?")]
#only("2")[#voiceover("Steht es für Potenzieller Wert,")]
#only("3")[#voiceover("oder steht es für Barwert,")]
#only("4")[#voiceover("oder vielleicht für Vergangener Wert,")]
#only("5")[#voiceover("oder steht es für Prognostizierter Wert?")]
]#questionDef(
questionText: "Wofür steht $PV$?",
answerOptions: ("Potenzieller Wert", "Barwert", "Vergangener Wert", "Prognostizierter Wert"),
correctAnswerIndex: 1,
)