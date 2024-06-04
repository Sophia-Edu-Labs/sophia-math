#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Blutdruck 🫀]
#v(40pt)
#only("1-")[Warum ist der Blutdruck in den Füßen höher als im Kopf? 🤔]
#v(40pt)
#only("2-")[a) Schwerkraft 🌍]
#v(10pt) 
#only("3-")[b) Herzschlag 💓]
#v(10pt)
#only("4-")[c) Atmung 🫁]
#v(10pt)
#only("5-")[d) Muskelkontraktion 💪]
#only("1")[#voiceover("Lass uns dein Wissen über Blutdruck testen. Warum ist der Blutdruck in den Füßen höher als im Kopf?")]
#only("2")[#voiceover("Liegt es an der Schwerkraft,")]  
#only("3")[#voiceover("oder am Herzschlag,")]
#only("4")[#voiceover("oder vielleicht an der Atmung,")]
#only("5")[#voiceover("oder wird es durch Muskelkontraktion verursacht?")]
]#questionDef(
questionText: "Warum ist der Blutdruck in den Füßen höher als im Kopf?",
answerOptions: ("Schwerkraft", "Herzschlag", "Atmung", "Muskelkontraktion"),
correctAnswerIndex: 0)