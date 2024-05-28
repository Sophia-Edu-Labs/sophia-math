#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Slutsky-Zerlegung]
// Der Titel "Slutsky-Zerlegung" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Wenn der Preis des Gutes $X$ sinkt und die insgesamt nachgefragte Menge steigt, wird der Substitutionseffekt \_\_\_\_\_.]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) immer positiv sein]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) immer negativ sein]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) null sein]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) undefiniert sein]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Slutsky-Zerlegung testen. Wenn der Preis des Gutes $X$ sinkt und die insgesamt nachgefragte Menge steigt, wird der Substitutionseffekt leer.")]
#only("2")[#voiceover("Wird er immer positiv sein,")]
#only("3")[#voiceover("oder wird er immer negativ sein,")]
#only("4")[#voiceover("oder wird er null sein,")]
#only("5")[#voiceover("oder wird er undefiniert sein?")]
]#questionDef(
questionText: "Wenn der Preis des Gutes $X$ sinkt und die insgesamt nachgefragte Menge steigt, wird der Substitutionseffekt ______ .",
answerOptions: ("immer positiv sein", "immer negativ sein", "null sein", "undefiniert sein"),
correctAnswerIndex: 0,
)