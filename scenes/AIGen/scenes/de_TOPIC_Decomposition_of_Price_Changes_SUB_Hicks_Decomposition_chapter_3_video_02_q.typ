#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Hicks-Zerlegung]
// Der Titel "Hicks-Zerlegung" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[In einem Hicks-Zerlegungsdiagramm, was stellen die Indifferenzkurven dar?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Einkommensniveaus 💰]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Nutzenniveaus 😊]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Preisniveaus 💲]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Mengen 📊]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis von Hicks-Zerlegungsdiagrammen testen. In diesen Diagrammen, was stellen die Indifferenzkurven dar?")]
#only("2")[#voiceover("Stellen sie Einkommensniveaus dar,")]
#only("3")[#voiceover("oder stellen sie Nutzenniveaus dar,")]
#only("4")[#voiceover("oder vielleicht stellen sie Preisniveaus dar,")]
#only("5")[#voiceover("oder stellen sie Mengen dar?")]
]#questionDef(
questionText: "In einem Hicks-Zerlegungsdiagramm, was stellen die Indifferenzkurven dar?",
answerOptions: ("Einkommensniveaus", "Nutzenniveaus", "Preisniveaus", "Mengen"),
correctAnswerIndex: 1,
)