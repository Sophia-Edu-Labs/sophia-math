#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Lass uns eine Aufgabe zum zweimaligen Ziehen von Kugeln ohne Zurücklegen betrachten!")
]
#text(size: 24pt, weight: "bold")[#align(center)[① Zweimaliges Kugelziehen ③]]
#only("2")[
#voiceover("Stell dir vor, in einer Urne befinden sich 3 Kugeln, die von eins bis 3 durchnummeriert sind. Du ziehst nacheinander zwei Kugeln, und legst die Kugel nach dem ersten mal zurück.")
]
#v(40pt)
#only("2-")[#text(size:24pt)[- Ziehe aus ①,②,③ mit Zurücklegen]]
#v(20pt)
#only("3-")[- Gesucht: $P(2$. Kugel $>$ $1$. Kugel$)$]
#v(20pt)
#only("4-")[
Günstige:
- 1. Zug: ①, 2. Zug: ②]
#only("5-")[- 1. Zug: ①, 2. Zug: ③]
#only("6-")[- 1. Zug: ②, 2. Zug: ③]
#v(40pt)
#only("7-")[
#text()[Laplace Formel:]
$ P(E) = ✔/📊 $
]
#only("3")[
#voiceover("Dann die Frage: Wie groß ist die Wahrscheinlichkeit, dass die Nummer der zweiten gezogenen Kugel größer ist als die Nummer der ersten gezogenen Kugel?")
]
#only("4")[
#voiceover("Ein günstiges Ergebnis ist, wenn wir zuerst eine Kugel mit der Nummer 1 ziehen und dann eine Kugel mit der Nummer 2.")
]
#only("5")[
#voiceover("oder zuerst eine 1 und dann eine Kugel 3,")
]
#only("6")[
#voiceover("oder wenn wir zuerst eine 2 und dann eine 3 ziehen.")
]
#only("7")[
#voiceover("Berechne die gesuchte Wahrscheinlichkeit mit der Laplace-Formel. Diese besagt, dass die Wahrscheinlichkeit eines Ereignisses gleich der Anzahl der günstigen Ergebnisse geteilt durch die Anzahl der möglichen Ergebnisse ist. Dafür kannst du die Mengen der günstigen und möglichen Ergebnisse aufschreiben und dann ihre Mächtigkeiten dividieren.")
]
]
#questionDef(
questionText: "Bestimme die Wahrscheinlichkeit, dass die Nummer der zweiten gezogenen Kugel größer ist als die Nummer der ersten gezogenen Kugel.",
// use latex!
answerOptions: ("$\frac{1}{3}$", "$0$"),
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