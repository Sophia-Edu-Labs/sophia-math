#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Verhalten der Potenzfunktion]
#v(40pt)
#only("1-")[Betrachte die Funktion $f(x) = x^6$.]
// Die Funktion wird auf Folie 1 eingeführt und bleibt sichtbar
#v(20pt)
#only("2-")[Was passiert, wenn $x arrow infinity$? 🤔]
// Die Frage wird auf Folie 2 gestellt und bleibt sichtbar
#only("1")[
#voiceover("Betrachte die Potenzfunktion f von x gleich x hoch sechs.")
]
#only("2")[
#voiceover("Was passiert mit dem Wert dieser Funktion, wenn x gegen unendlich geht?")
]
]


#questionDef(
questionText: "Was passiert, wenn $x \\to \infty$, mit $f(x) = x^6$?",
answerOptions: ("$f(x) \\to \infty$", "$f(x) \\to 0$", "$f(x)$ oszilliert", "$f(x)$ nähert sich einem konstanten Wert"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
)
)