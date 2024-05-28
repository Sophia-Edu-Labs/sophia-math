#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Hicks-Zerlegung]
#v(40pt)
#only("1-")[Was hält die Hicks-Zerlegung konstant? 🤔]
#v(40pt)
#only("2-")[a) Einkommen 💰]
#v(10pt)
#only("3-")[b) Nutzen 😊]
#v(10pt)
#only("4-")[c) Preis 🏷]
#v(10pt)
#only("5-")[d) Menge 📦]
#only("1")[#voiceover("Lass uns dein Wissen über die Hicks-Zerlegung testen. Was hält die Hicks-Zerlegung konstant?")]
#only("2")[#voiceover("Ist es das Einkommen,")]
#only("3")[#voiceover("oder ist es der Nutzen,")]
#only("4")[#voiceover("oder vielleicht der Preis,")]
#only("5")[#voiceover("oder ist es die Menge?")]
]#questionDef(
questionText: "Was hält die Hicks-Zerlegung konstant?",
answerOptions: ("Einkommen", "Nutzen", "Preis", "Menge"),
correctAnswerIndex: 1,
)