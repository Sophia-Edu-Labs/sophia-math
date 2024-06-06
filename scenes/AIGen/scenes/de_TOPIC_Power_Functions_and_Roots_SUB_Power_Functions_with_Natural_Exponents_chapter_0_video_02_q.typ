#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Potenzfunktionen]
// Der Titel "Potenzfunktionen" wird auf dieser Folie angezeigt
#v(40pt)
#only("1-")[Was ist die allgemeine Form einer Potenzfunktion mit einem natürlichen Exponenten?]
// Die Frage wird ab Folie 1 angezeigt
#v(40pt)
#only("2-")[a) $f(x) = x^n$]
// Antwortmöglichkeit a) wird ab Folie 2 angezeigt
#v(10pt)
#only("3-")[b) $f(x) = n^x$]
// Antwortmöglichkeit b) wird ab Folie 3 angezeigt
#v(10pt)
#only("4-")[c) $f(x) = x/n$]
// Antwortmöglichkeit c) wird ab Folie 4 angezeigt
#v(10pt)
#only("5-")[d) $f(x) = n/x$]
// Antwortmöglichkeit d) wird ab Folie 5 angezeigt
#only("1")[#voiceover("Lass uns dein Wissen über Potenzfunktionen testen. Was ist die allgemeine Form einer Potenzfunktion mit einem natürlichen Exponenten?")]
#only("2")[#voiceover("Ist es f von x gleich x hoch n,")]
#only("3")[#voiceover("oder ist es f von x gleich n hoch x,")]
#only("4")[#voiceover("oder vielleicht f von x gleich x geteilt durch n,")]
#only("5")[#voiceover("oder ist es f von x gleich n geteilt durch x?")]
]#questionDef(
questionText: "Was ist die allgemeine Form einer Potenzfunktion mit einem natürlichen Exponenten?",
answerOptions: ("$f(x) = x^n$", "$f(x) = n^x$", "$f(x) = \\frac{x}{n}$", "$f(x) = \\frac{n}{x}$"),
correctAnswerIndex: 0
)