#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Druck und Wasserstand 🌊]
#v(40pt)
#only("1-")[Ein Boot fährt über einen Fisch, wodurch der Wasserstand direkt darüber abnimmt.]
#v(40pt)
#only("2-")[Was passiert mit dem Druck?]
#v(40pt)
#only("3-")[a) Er bleibt gleich.]
#v(10pt)
#only("4-")[b) Er nimmt ab.]
#v(10pt)  
#only("5-")[c) Er nimmt zu.]
#v(10pt)
#only("6-")[d) Kann nicht bestimmt werden.]

#only("1")[#voiceover("Betrachte folgendes Szenario: Ein Boot fährt über einen Fisch, wodurch der Wasserstand direkt darüber abnimmt.")]
#only("2")[#voiceover("Was denkst Du, passiert mit dem Druck, den der Fisch erfährt?")]
#only("3")[#voiceover("Bleibt er gleich,")]  
#only("4")[#voiceover("oder nimmt er ab,")]
#only("5")[#voiceover("oder nimmt er vielleicht zu,")]
#only("6")[#voiceover("oder kann es nicht anhand der gegebenen Informationen bestimmt werden?")]
]#questionDef(
questionText: "Ein Boot fährt über einen Fisch, wodurch der Wasserstand direkt darüber abnimmt. Was passiert mit dem Druck?",
answerOptions: ("Er bleibt gleich.", "Er nimmt ab.", "Er nimmt zu.", "Kann nicht bestimmt werden."),
correctAnswerIndex: 1
)