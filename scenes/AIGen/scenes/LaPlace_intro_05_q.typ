#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 24pt, weight: "bold")[#align(center)[⚅ Würfeln mit zwei Würfeln ⚅]]
#only("2")[
#voiceover("Stell dir vor, du würfelst zweimal mit einem fairen Würfel.")
]
#v(40pt)
#only("3-")[P(Beide Augenzahlen gerade)]
#v(40pt)
#only("4-")[- ⚂ + ⚃ = ungerade + gerade]
#only("5-")[- ⚁ + ⚅ = gerade + gerade]
#v(40pt)
#only("6-")[
#text()[Laplace Formel:]
$ P(E) = ✔/📊 $
]
#only("3")[
#voiceover("Die Frage ist nun: Wie groß ist die Wahrscheinlichkeit, dass beide gewürfelten Augenzahlen gerade sind?")
]
#only("4")[
#voiceover("Wenn wir zum Beispiel eine drei und eine vier würfeln, haben wir eine ungerade und eine gerade Zahl.")
]
#only("5")[
#voiceover("Wenn wir jedoch eine zwei und eine sechs würfeln, sind beide Zahlen gerade. Berechne nun die Wahrscheinlichkeit, dass beide gewürfelten Augenzahlen gerade sind.")
]
#only("6")[
#voiceover("Wende dazu die Laplace-Formel an, die besagt, dass die Wahrscheinlichkeit eines Ereignisses gleich der Anzahl der günstigen Ergebnisse geteilt durch die Anzahl der möglichen Ergebnisse ist.")
]
]

#questionDef(
  questionText: "Wie groß ist die Wahrscheinlichkeit, dass bei zweimaligen Würfeln beide Augenzahlen gerade sind?",
  // use latex!
  answerOptions: ("$\\frac{9}{36}$", "$0$"),
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