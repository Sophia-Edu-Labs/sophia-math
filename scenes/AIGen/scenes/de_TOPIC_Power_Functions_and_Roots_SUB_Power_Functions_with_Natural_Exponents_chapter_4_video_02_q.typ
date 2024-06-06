#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Verhalten von Potenzfunktionen]
// Der Titel "Verhalten von Potenzfunktionen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was passiert mit $f(x) = x^4$, wenn $x$ gegen null geht?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Geht gegen null 🎯]
// Antwortoption a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Geht gegen unendlich ∞]
// Antwortoption b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Geht gegen eine Konstante 📈]
// Antwortoption c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Oszilliert 〰]
// Antwortoption d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis von Potenzfunktionen testen. Was passiert mit der Funktion f von x gleich x hoch vier, wenn x gegen null geht?")]
#only("2")[#voiceover("Geht sie gegen null,")]
#only("3")[#voiceover("oder geht sie gegen unendlich,")]
#only("4")[#voiceover("oder geht sie vielleicht gegen eine Konstante,")]
#only("5")[#voiceover("oder oszilliert sie?")]
]#questionDef(
questionText: "Was passiert mit $f(x) = x^4$, wenn $x$ gegen null geht?",
answerOptions: ("Geht gegen null", "Geht gegen unendlich", "Geht gegen eine Konstante", "Oszilliert"),
correctAnswerIndex: 0,
)