#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung 📊]
// Der Titel "Slutsky-Zerlegung" mit einem Diagramm-Emoji wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Die Slutsky-Zerlegung kann grafisch dargestellt werden mit \_\_\_\_\_.]
// Die Aussage mit der Lücke wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Angebots- und Nachfragekurven 📈]
// Antwortoption a) mit einem Emoji für steigendes Diagramm wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Produktionsmöglichkeitenkurven 🏭]
// Antwortoption b) mit einem Fabrik-Emoji wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Indifferenzkurven und Budgetbeschränkungen 💰]
// Antwortoption c) mit einem Geldsack-Emoji wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Grenzkostenkurven 💸]
// Antwortoption d) mit einem Geld-mit-Flügeln-Emoji wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns Dein Wissen über die Slutsky-Zerlegung testen. Die Slutsky-Zerlegung kann grafisch dargestellt werden mit was?")]
#only("2")[#voiceover("Sind es Angebots- und Nachfragekurven,")]
#only("3")[#voiceover("oder Produktionsmöglichkeitenkurven,")]
#only("4")[#voiceover("oder Indifferenzkurven und Budgetbeschränkungen,")]
#only("5")[#voiceover("oder sind es Grenzkostenkurven?")]
]#questionDef(
questionText: "Die Slutsky-Zerlegung kann grafisch dargestellt werden mit ____.",
answerOptions: ("Angebots- und Nachfragekurven", "Produktionsmöglichkeitenkurven", "Indifferenzkurven und Budgetbeschränkungen", "Grenzkostenkurven"),
correctAnswerIndex: 2,
)