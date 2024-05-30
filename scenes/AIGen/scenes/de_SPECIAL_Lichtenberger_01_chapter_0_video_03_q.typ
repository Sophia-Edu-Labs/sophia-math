#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Luftdruck an Seen 🏞️]
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
#only("1")[#voiceover("Lass uns dein Wissen über den Luftdruck an verschiedenen Seen testen. Bei gleichen Wetterbedingungen, an welchem dieser Schweizer Seen wäre der Luftdruck am höchsten?")]
#only("2")[#voiceover("Wäre es am Zürichsee,")]
#only("3")[#voiceover("oder am Neuenburgersee,")]
#only("4")[#voiceover("oder vielleicht am Klöntalersee,")]
#only("5")[#voiceover("oder wäre es am Lago Maggiore?")]
]#questionDef(
questionText: "An welchem See ist der Luftdruck am höchsten (bei gleichen Wetterbedingungen)?",
answerOptions: ("Am Zürichsee", "Am Neuenburgersee", "Am Klöntalersee", "Am Lago Maggiore"),
correctAnswerIndex: 3
)