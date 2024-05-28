#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung 🔍]
#v(40pt)
#only("1-")[Die Slutsky-Zerlegung trennt die Wirkung einer Preisänderung in \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) Substitutions- und Einkommenseffekte 💰]
#v(10pt)
#only("3-")[b) Angebots- und Nachfrageeffekte 📈📉]
#v(10pt)
#only("4-")[c) Elastizitäts- und Inelastizitätseffekte 📏]
#v(10pt)
#only("5-")[d) Grenz- und Durchschnittseffekte 📊]
#only("1")[#voiceover("Lass uns dein Wissen über die Slutsky-Zerlegung testen. Die Slutsky-Zerlegung trennt die Wirkung einer Preisänderung in was?")]
#only("2")[#voiceover("Sind es Substitutions- und Einkommenseffekte,")]
#only("3")[#voiceover("oder sind es Angebots- und Nachfrageeffekte,")]
#only("4")[#voiceover("oder vielleicht Elastizitäts- und Inelastizitätseffekte,")]
#only("5")[#voiceover("oder sind es Grenz- und Durchschnittseffekte?")]
]#questionDef(
questionText: "Die Slutsky-Zerlegung trennt die Wirkung einer Preisänderung in ____. ",
answerOptions: ("Substitutions- und Einkommenseffekte", "Angebots- und Nachfrageeffekte", "Elastizitäts- und Inelastizitätseffekte", "Grenz- und Durchschnittseffekte"),
correctAnswerIndex: 0,
)