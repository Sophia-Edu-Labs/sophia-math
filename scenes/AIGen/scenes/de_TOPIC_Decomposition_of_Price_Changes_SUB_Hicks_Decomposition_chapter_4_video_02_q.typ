#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks-Zerlegung 🔍]
#v(40pt)
#only("1-")[Welche Art von Nachfragefunktion wird in der Hicks-Zerlegung verwendet? 🤔]
#v(40pt)
#only("2-")[a) Kompensierte Nachfrage 💰]
#v(10pt)
#only("3-")[b) Unkompensierte Nachfrage 🛍️]
#v(10pt)
#only("4-")[c) Marktnachfrage 📈]
#v(10pt)
#only("5-")[d) Aggregierte Nachfrage 📊]
#only("1")[#voiceover("Lass uns dein Wissen über die Hicks-Zerlegung testen. Welche Art von Nachfragefunktion wird in dieser Zerlegung verwendet?")]
#only("2")[#voiceover("Ist es die kompensierte Nachfrage, die den Substitutionseffekt berücksichtigt und den Nutzen konstant hält,")]
#only("3")[#voiceover("oder ist es die unkompensierte Nachfrage, die den Einkommenseffekt nicht berücksichtigt,")]
#only("4")[#voiceover("oder vielleicht die Marktnachfrage, die die Gesamtnachfrage nach einem Gut oder einer Dienstleistung in einem bestimmten Markt darstellt,")]
#only("5")[#voiceover("oder ist es die aggregierte Nachfrage, die die Gesamtnachfrage nach Endgütern und Dienstleistungen in einer Volkswirtschaft darstellt?")]
]#questionDef(
questionText: "Welche Art von Nachfragefunktion wird in der Hicks-Zerlegung verwendet?",
answerOptions: ("Kompensierte Nachfrage", "Unkompensierte Nachfrage", "Marktnachfrage", "Aggregierte Nachfrage"),
correctAnswerIndex: 0,
)