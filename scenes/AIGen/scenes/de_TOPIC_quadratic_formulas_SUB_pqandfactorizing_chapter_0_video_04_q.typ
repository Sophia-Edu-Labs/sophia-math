#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Graphen quadratischer Gleichungen]
#v(40pt)

#only("1-")[Welche der folgenden Darstellungen repräsentiert eine quadratische Gleichung grafisch?]
#v(20pt)

#only("2-")[a) Eine gerade Linie]
#v(10pt)
#only("3-")[b) Eine Parabel]
#v(10pt)
#only("4-")[c) Eine Hyperbel]

#only("1")[#voiceover("Lass uns dein Verständnis von quadratischen Gleichungen testen. Wir werden uns ihre grafische Darstellung ansehen.")]

#only("2")[#voiceover("Wird eine quadratische Gleichung durch eine gerade Linie dargestellt?")]

#only("3")[#voiceover("Oder wird sie durch eine Parabel dargestellt?")]

#only("4")[#voiceover("Oder vielleicht wird sie durch eine Hyperbel dargestellt?")]
]

//Typ: MC 
#questionDef( 
questionText: "Welche der folgenden Darstellungen repräsentiert eine quadratische Gleichung grafisch?", 
answerOptions: ("Eine gerade Linie", "Eine Parabel", "Eine Hyperbel"),
correctAnswerIndex: 1 
)