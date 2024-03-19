#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#only("1")[
#voiceover("Lass uns eine Aufgabe zum Würfeln mit einem Würfel betrachten!")
]
#text(size: 24pt, weight: "bold")[#align(center)[⚅ Würfeln mit einem Würfel ⚅]]
#only("2")[
#voiceover("Stell dir vor, du würfelst einmal mit einem fairen Würfel.")

]
#v(40pt)
#only("3-")[P(Augenzahl ⚀ oder ⚅)]
#v(40pt)
#only("4-")[- ⚀: Augenzahl ist 1]
#only("5-")[- ⚅: Augenzahl ist 6]
#v(40pt)
#only("6-")[
#text()[Laplace Formel:]
$ P(E) = ✔/📊 $
]
#only("3")[
#voiceover("Dann die Frage: Wie groß ist die Wahrscheinlichkeit, dass die Augenzahl bei einmaligem Würfeln entweder 1 oder 6 ist?")
]
#only("4")[

#voiceover("Wenn wir eine eins würfeln, zählt das als günstiges Ergebnis.")
]
#only("5")[
#voiceover("Genauso zählt es als günstiges Ergebnis, wenn wir eine sechs würfeln.")
]
#only("6")[
#voiceover("Berechne die Wahrscheinlichkeit mit der Laplace-Formel. Diese besagt, dass die Wahrscheinlichkeit eines Ereignisses gleich der Anzahl der günstigen Ergebnisse geteilt durch die Anzahl der möglichen Ergebnisse ist. Dafür kannst du die Mengen der günstigen und Möglichen Ergebnisse aufschreiben, und dann ihre Mächtigkeiten dividieren")
]
]

#questionDef(
questionText: "Wie groß ist die Wahrscheinlichkeit, bei einmaligem Würfeln eine $1$ oder eine $6$ zu würfeln?",
  // use latex!
  answerOptions: ("$\\frac{1}{3}$", "$0$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: none,
        tolerance: 0.01
        )
      ),
      answerOptionMatcher:("$\\key{a}$")
  ),
)