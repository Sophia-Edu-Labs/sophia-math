#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Notation für n-te Wurzeln]
// Der Titel "Notation für n-te Wurzeln" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Wie wird die 5. Wurzel von 32 in der Notation geschrieben?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $root(2, 32)$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $root(3, 32)$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $root(4, 32)$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $root(5, 32)$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über die Notation für n-te Wurzeln testen. Wie wird die 5. Wurzel von 32 in der Notation geschrieben?")]
#only("2")[#voiceover("Ist es Wurzel von 2 Komma 32,")]
#only("3")[#voiceover("oder ist es Wurzel von 3 Komma 32,")]
#only("4")[#voiceover("oder vielleicht Wurzel von 4 Komma 32,")]
#only("5")[#voiceover("oder ist es Wurzel von 5 Komma 32?")]
]#questionDef(
questionText: "Wie wird die 5. Wurzel von $32$ in der Notation geschrieben?",
answerOptions: ("$\\sqrt[2]{32}$", "$\\sqrt[3]{32}$", "$\\sqrt[4]{32}$", "$\\sqrt[5]{32}$"),
correctAnswerIndex: 3,
)