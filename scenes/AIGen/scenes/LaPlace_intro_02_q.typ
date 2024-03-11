#import "../sophiatheme.typ": *

//apply theme (and default setup)
#show: sophia-theme

#show figure.caption: it => [
  #set text(size: 20pt)
  #it.body
]


#slide()[
#only("1")[
#voiceover("Lass uns eine Aufgabe zur Laplace-Formel mit Würfeln betrachten!")
]
#text(size: 24pt, weight: "bold")[#align(center)[⚅ Würfeln mit zwei Würfeln ⚅]]
#only("2")[
#voiceover("Stell dir vor, du würfelst zweimal mit einem fairen Würfel.")
]

#v(40pt)
#only("3-")[P(Summe der Augenzahlen $> 10$)]
#v(40pt)
#only("4-")[-  ⚀ + ⚅ = 7 < 10]
#only("5-")[-  ⚅ + ⚅ = 12 > 10]

#v(40pt)
#only("6-")[
#text()[Laplace Formel:]
$ P(E) = ✔/📊 $
  ]
#only("3")[
#voiceover("Dann die Frage: Wie groß ist die Wahrscheinlichkeit, dass die Summe der Augenzahlen bei zweimaligem Würfeln größer als 10 ist?")
]
#only("4")[
#voiceover("Wenn wir zum Beispiel eine eins und eine sechs würfeln, beträgt die Summe 7, also weniger als 10.")
]
#only("5")[
#voiceover("Wenn wir jedoch zweimal eine sechs würfeln, beträgt die Summe 12, also mehr als 10. Berechne also die Wahrscheinlichkeit, dass die Augensumme größer als 10 ist.")
]
#only("6")[
#voiceover("Wende dazu die Laplace-Formel an. Diese besagt ja, dass die Wahrscheinlichkeit eines Ereignisses gleich der Anzahl der günstigen Ergebnisse geteilt durch die Anzahl der möglichen Ergebnisse ist.")
]
]
#questionDef(
  questionText: "Wie groß ist die Wahrscheinlichkeit, dass die Summe der Augenzahlen bei zweimaligem Würfeln $>10$ ist?",
  // use latex!
  answerOptions: ("$\\frac{1}{12}$", "$0$"),
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