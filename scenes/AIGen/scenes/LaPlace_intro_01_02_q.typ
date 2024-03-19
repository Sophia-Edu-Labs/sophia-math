#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Lass uns eine Aufgabe zum Ziehen von Kugeln betrachten!")
]
#text(size: 24pt, weight: "bold")[#align(center)[① Ziehen von Kugeln ⑩]]
#only("2")[
#voiceover("Stell dir vor, in einer Urne befinden sich 10 Kugeln, die von 1 bis 10 durchnummeriert sind. Du ziehst einmal eine Kugel.")
]
#v(20pt)
#only("2-")[Kugeln von ① bis ⑩]
#v(20pt)
#only("3-")[$P("Nummer durch 3 teilbar")$]
#v(20pt)
#only("4-")[- ③: Nummer ist 3]
#only("5-")[- ⑥: Nummer ist 6]
#only("6-")[- ⑨: Nummer ist 9]
#v(40pt)
#only("7-")[
#text()[Laplace Formel:]
$ P(E) = ✔/📊 $
]
#only("3")[
#voiceover("Dann die Frage: Wie groß ist die Wahrscheinlichkeit, dass die Nummer der gezogenen Kugel durch 3 teilbar ist?")
]
#only("4")[
#voiceover("Wenn wir eine Kugel mit der Nummer 3 ziehen, zählt das als günstiges Ergebnis, denn 3 ist durch 3 teilbar.")
]
#only("5")[
#voiceover("Genauso zählt es als günstiges Ergebnis, wenn wir eine Kugel mit der Nummer 6 ziehen,")
]
#only("6")[
#voiceover("oder wenn wir eine Kugel mit der Nummer 9 ziehen.")
]
#only("7")[
#voiceover("Berechne die Wahrscheinlichkeit mit der Laplace-Formel. Diese besagt, dass die Wahrscheinlichkeit eines Ereignisses gleich der Anzahl der günstigen Ergebnisse geteilt durch die Anzahl der möglichen Ergebnisse ist. Dafür kannst du die Mengen der günstigen und möglichen Ergebnisse aufschreiben und dann ihre Mächtigkeiten dividieren.")
]
]
#questionDef(
questionText: "Wie groß ist die Wahrscheinlichkeit, beim einmaligen Ziehen eine Kugel mit einer durch 3 teilbaren Nummer zu ziehen?",
// use latex!
answerOptions: ("$0.3$", "$0$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: none,
tolerance: 0.01
)
),
answerOptionMatcher:("$\key{a}$")
),
)