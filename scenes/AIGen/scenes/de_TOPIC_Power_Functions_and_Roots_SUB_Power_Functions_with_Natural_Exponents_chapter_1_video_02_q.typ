#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Graph von $f(x) = x^2$]
#v(40pt)
#only("1-")[Wie sieht der Graph von $f(x) = x^2$ aus?]
#v(40pt)
#only("2-")[a) Eine gerade Linie 📏]
#v(10pt)
#only("3-")[b) Eine Parabel 🪂]
#v(10pt)
#only("4-")[c) Eine Hyperbel 🌀]
#v(10pt)
#only("5-")[d) Ein Kreis ⚪]
#only("1")[#voiceover("Lass uns dein Wissen über den Graphen einer Potenzfunktion testen. Wie sieht der Graph von f von x gleich x Quadrat aus?")]
#only("2")[#voiceover("Ist es eine gerade Linie,")]
#only("3")[#voiceover("oder ist es eine Parabel,")]
#only("4")[#voiceover("oder vielleicht eine Hyperbel,")]
#only("5")[#voiceover("oder ist es ein Kreis?")]
]#questionDef(
questionText: "Wie sieht der Graph von $f(x) = x^2$ aus?",
answerOptions: ("Eine gerade Linie", "Eine Parabel", "Eine Hyperbel", "Ein Kreis"),
correctAnswerIndex: 1,
)