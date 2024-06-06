#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Gerade Potenzfunktionen 🔢]
#v(40pt)
#only("1-")[Welche der folgenden ist eine #text(weight: "bold")[gerade] Potenzfunktion?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $f(x) = x^3$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $f(x) = x^5$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $f(x) = x^2$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $f(x) = x^7$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über gerade Potenzfunktionen testen. Welche der folgenden ist eine gerade Potenzfunktion?")]
#only("2")[#voiceover("Ist es f von x gleich x hoch 3,")]
#only("3")[#voiceover("oder ist es f von x gleich x hoch 5,")]
#only("4")[#voiceover("oder vielleicht f von x gleich x hoch 2,")]
#only("5")[#voiceover("oder ist es f von x gleich x hoch 7?")]
]#questionDef(
questionText: "Welche der folgenden ist eine gerade Potenzfunktion?",
answerOptions: ("$f(x) = x^3$", "$f(x) = x^5$", "$f(x) = x^2$", "$f(x) = x^7$"),
correctAnswerIndex: 2
)