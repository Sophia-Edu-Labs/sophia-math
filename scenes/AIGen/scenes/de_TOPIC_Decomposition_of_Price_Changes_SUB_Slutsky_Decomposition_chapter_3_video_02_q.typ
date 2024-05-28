#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung]
#v(40pt)
#only("1-")[Die Gesamtauswirkung einer Preisänderung ist die Summe des \_\_\_\_\_.]
#v(40pt)
#only("2-")[a) Substitutionseffekt und Nutzenwirkung]
#v(10pt)
#only("3-")[b) Einkommenseffekt und Nutzenwirkung]
#v(10pt)
#only("4-")[c) Substitutionseffekt und Einkommenseffekt]
#v(10pt)
#only("5-")[d) keine der oben genannten]
#only("1")[#voiceover("Lass uns dein Wissen über die Slutsky-Zerlegung testen. Die Gesamtauswirkung einer Preisänderung ist die Summe des Leerzeichens.")]
#only("2")[#voiceover("Ist es die Summe des Substitutionseffekts und der Nutzenwirkung,")]
#only("3")[#voiceover("oder ist es die Summe des Einkommenseffekts und der Nutzenwirkung,")]
#only("4")[#voiceover("oder vielleicht die Summe des Substitutionseffekts und des Einkommenseffekts,")]
#only("5")[#voiceover("oder ist es keine der oben genannten?")]
]#questionDef(
questionText: "Die Gesamtauswirkung einer Preisänderung ist die Summe des ______.",
answerOptions: ("Substitutionseffekt und Nutzenwirkung", "Einkommenseffekt und Nutzenwirkung", "Substitutionseffekt und Einkommenseffekt", "keine der oben genannten"),
correctAnswerIndex: 2,
)