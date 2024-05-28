#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Rechenregeln für stetige Funktionen]
// Der Titel "Rechenregeln für stetige Funktionen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Welche der folgenden ist eine Rechenregel für stetige Funktionen?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Summenregel 🧮➕]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Produktregel 🧮✖]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Quotientenregel 🧮➗]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Alle der oben genannten 🌟]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über Rechenregeln für stetige Funktionen testen. Welche der folgenden ist eine Rechenregel für stetige Funktionen?")]
#only("2")[#voiceover("Ist es die Summenregel,")]
#only("3")[#voiceover("oder die Produktregel,")]
#only("4")[#voiceover("oder vielleicht die Quotientenregel,")]
#only("5")[#voiceover("oder sind alle der oben genannten Rechenregeln für stetige Funktionen?")]
]#questionDef(
questionText: "Welche der folgenden ist eine Rechenregel für stetige Funktionen?",
answerOptions: ("Summenregel", "Produktregel", "Quotientenregel", "Alle der oben genannten"),
correctAnswerIndex: 3,
)