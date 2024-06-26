#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Druck und Tiefe 🐟]
#v(40pt)
#only("1-")[Ein kleiner Fisch taucht von einer Tiefe von $10 "m"$ auf eine Tiefe von $30 "m"$. Was passiert mit seinem Auftrieb?]
#v(40pt)
#only("2-")[a) Er verdoppelt sich ungefähr. 2️⃣]
#v(10pt)
#only("3-")[b) Er verdreifacht sich ungefähr. 3️⃣]
#v(10pt)
#only("4-")[c) Er vervierfacht sich ungefähr. 4️⃣]
#v(10pt)
#only("5-")[d) Er bleibt etwa gleich. 🤔]
#only("1")[#voiceover("Lass uns dein Verständnis von Druck und Tiefe testen. Ein kleiner Fisch taucht von einer Tiefe von 10 Metern auf eine Tiefe von 30 Metern. Was passiert mit seinem Auftrieb?")]
#only("2")[#voiceover("Verdoppelt er sich ungefähr,")]  
#only("3")[#voiceover("oder verdreifacht er sich ungefähr,")]
#only("4")[#voiceover("oder vielleicht vervierfacht er sich ungefähr,")]
#only("5")[#voiceover("oder bleibt er etwa gleich?")]
]#questionDef(
questionText: "Ein kleiner Fisch taucht von einer Tiefe von $10 \\text{ m}$ auf eine Tiefe von $30 \\text{ m}$. Was passiert mit seinem Auftrieb?", 
answerOptions: ("Er verdoppelt sich ungefähr.", "Er verdreifacht sich ungefähr.", "Er vervierfacht sich ungefähr.", "Er bleibt etwa gleich."),
correctAnswerIndex: 3,
)