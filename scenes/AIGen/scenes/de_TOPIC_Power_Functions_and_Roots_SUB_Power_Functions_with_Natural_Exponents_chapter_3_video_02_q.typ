#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Verhalten der Potenzfunktion]
// Der Titel "Verhalten der Potenzfunktion" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was passiert mit $f(x) = x^3$, wenn $x$ gegen $infinity$ geht?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) Geht gegen null 🔽]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) Geht gegen $infinity$ ♾️]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) Geht gegen eine Konstante 🔄]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) Oszilliert 〰️]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Verständnis von Potenzfunktionen testen. Was passiert mit der Funktion f von x gleich x hoch drei, wenn x gegen unendlich geht?")]
#only("2")[#voiceover("Geht sie gegen null,")]
#only("3")[#voiceover("oder geht sie gegen unendlich,")]
#only("4")[#voiceover("oder vielleicht geht sie gegen einen konstanten Wert,")]
#only("5")[#voiceover("oder oszilliert sie?")]
]#questionDef(
questionText: "Was passiert mit $f(x) = x^3$, wenn $x$ gegen $\\infty$ geht?",
answerOptions: ("Geht gegen null", "Geht gegen $\\infty$", "Geht gegen eine Konstante", "Oszilliert"),
correctAnswerIndex: 1,
)