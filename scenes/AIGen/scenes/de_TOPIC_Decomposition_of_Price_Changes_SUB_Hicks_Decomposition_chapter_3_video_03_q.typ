#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks-Zerlegung]
#v(40pt)
#only("1-")[Was stellt der Substitutionseffekt in einem Hicks-Zerlegungsdiagramm dar? 🤔]
#v(40pt)
#only("2-")[a) Änderung des Konsums aufgrund einer Änderung des Realeinkommens 💰]
#v(10pt)
#only("3-")[b) Änderung des Konsums bei konstanter Nutzen 📈]
#v(10pt)
#only("4-")[c) Änderung des Konsums aufgrund einer Änderung der Präferenzen 🧐]
#v(10pt)
#only("5-")[d) Änderung des Konsums aufgrund einer Änderung der nachgefragten Menge 📊]
#only("1")[#voiceover("Lass uns dein Verständnis der Hicks-Zerlegung testen. Was stellt der Substitutionseffekt in einem Hicks-Zerlegungsdiagramm dar?")]
#only("2")[#voiceover("Ist es die Änderung des Konsums aufgrund einer Änderung des Realeinkommens,")]
#only("3")[#voiceover("oder die Änderung des Konsums bei konstanter Nutzen,")]
#only("4")[#voiceover("oder vielleicht die Änderung des Konsums aufgrund einer Änderung der Präferenzen,")]
#only("5")[#voiceover("oder ist es die Änderung des Konsums aufgrund einer Änderung der nachgefragten Menge?")]
]#questionDef(
questionText: "Was stellt der Substitutionseffekt in einem Hicks-Zerlegungsdiagramm dar?",
answerOptions: ("Änderung des Konsums aufgrund einer Änderung des Realeinkommens", "Änderung des Konsums bei konstanter Nutzen", "Änderung des Konsums aufgrund einer Änderung der Präferenzen", "Änderung des Konsums aufgrund einer Änderung der nachgefragten Menge"),
correctAnswerIndex: 1
)