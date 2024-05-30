#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Luftdruck an Seen 🌊]
#v(40pt)
#only("1-")[An welchem See ist der Luftdruck am höchsten (bei gleichen Wetterbedingungen)?]
#v(40pt)
#only("2-")[a) Am Zürichsee]
#v(10pt)
#only("3-")[b) Am Neuenburgersee]
#v(10pt)
#only("4-")[c) Am Klöntalersee]
#v(10pt)  
#only("5-")[d) Am Lago Maggiore]
#only("1")[#voiceover("Lass uns dein Verständnis des Luftdrucks in verschiedenen Höhenlagen testen. An welchem See ist der Luftdruck am höchsten, bei gleichen Wetterbedingungen an allen Seen?")]
#only("2")[#voiceover("Ist es am Zürichsee,")]
#only("3")[#voiceover("oder am Neuenburgersee,")]
#only("4")[#voiceover("oder vielleicht am Klöntalersee,")]
#only("5")[#voiceover("oder ist es am Lago Maggiore?")]
]#questionDef(
questionText: "An welchem See ist der Luftdruck am höchsten (bei gleichen Wetterbedingungen)?",  
answerOptions: ("Am Zürichsee", "Am Neuenburgersee", "Am Klöntalersee", "Am Lago Maggiore"),
correctAnswerIndex: 3
)