#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 24pt, weight: "bold")[#align(center)[⚅ Würfeln mit drei Würfeln ⚅]]
#only("2")[
#voiceover("Stell dir vor, du würfelst dreimal mit einem fairen Würfel.")
]
#v(40pt)
#only("3-")[P(Mindestens eine ⚅)]
#v(40pt)
#only("4-")[- ⚀ + ⚁ + ⚂ = keine ⚅]
#only("5-")[- ⚅ + ⚃ + ⚅ = zwei ⚅]
#v(40pt)
#only("6-")[
#text()[Laplace Formel:]
$ P(E) = ✔/📊 $
]
#only("3")[
#voiceover("Die Frage ist nun: Wie groß ist die Wahrscheinlichkeit, dass beim dreimaligen Würfeln mindestens einmal eine sechs gewürfelt wird?")
]
#only("4")[
#voiceover("Wenn wir zum Beispiel eine eins, eine zwei und eine drei würfeln, haben wir keine sechs.")
]
#only("5")[
#voiceover("Wenn wir jedoch eine sechs, eine vier und eine sechs würfeln, haben wir mindestens eine sechs, genauer gesagt sogar zwei. Berechne nun die Wahrscheinlichkeit, dass beim dreimaligen Würfeln mindestens einmal eine sechs gewürfelt wird.")
]
#only("6")[
#voiceover("Wende dazu die Laplace-Formel an, die besagt, dass die Wahrscheinlichkeit eines Ereignisses gleich der Anzahl der günstigen Ergebnisse geteilt durch die Anzahl der möglichen Ergebnisse ist.")
]
]

#questionDef(
  questionText: "Wie groß ist die Wahrscheinlichkeit, dass beim dreimaligen Würfeln mindestens eine $6$ gewürfelt wird?",
  // use latex!
  answerOptions: ("$\\frac{91}{216}$", "$0$"),
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