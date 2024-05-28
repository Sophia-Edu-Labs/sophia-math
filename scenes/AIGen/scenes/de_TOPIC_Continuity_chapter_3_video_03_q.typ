#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Stetigkeitsfrage]
// Der Titel "Stetigkeitsfrage" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Ist $f(x) = x^2$ stetig bei $x = 2$?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) ja]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) nein]
// Antwortoption b) wird ab Folie 3 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis von Stetigkeit testen. Betrachte die Funktion f von x gleich x Quadrat. Ist diese Funktion stetig bei x gleich 2?")]
#only("2")[#voiceover("Ist die Antwort ja,")]
#only("3")[#voiceover("oder ist sie nein?")]
]#questionDef(
questionText: "Ist $f(x) = x^2$ stetig bei $x = 2$?",
answerOptions: ("ja", "nein"),
correctAnswerIndex: 0
)