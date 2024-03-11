#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide(max-repetitions: 20)[

#text(size: 28pt, weight: "bold")[#align(center)[Vierfeldertafel]]
#v(80pt)
#only("1-")[
#text(weight: "bold")[Kunst oder Musik]
]
#v(40pt)
#only("2-")[
#align(center)[
#table(
  columns: (auto, auto, auto),
  inset: 10pt,
  align: horizon,
  [], [*Kunst*], [*Musik*],
  [*L*],
  [$ 9 $],
  [$ 3 $],
  [*R*],
  [$ 7 $],
  [$ 6 $],
)
]
]

#only("1")[
#voiceover("Wir haben jetzt alle Schülerinnen gefragt, ob sie lieber Kunst oder Musik mögen, und dabei auch abgefragt, ob sie Links- oder Rechtshändig sind.")
]
#only("2")[
#voiceover("Die Ergebnisse haben wir in einer Vierfeldertafel zusammengefasst. Jetzt die Frage an dich: Wie viele der befragten Mögen Kunst Lieber, und wie viele Musik?")
]
]

#questionDef(
  questionText: "Wie viele Schüler mögen Kunst lieber? Und wie viele bevorzugen Musik?",
  // use latex!
  answerOptions: ("$Kunst:16, Musik:9$", "$Kunst:0, Musik:0$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
        )
      ),
      answerOptionMatcher:("$Kunst:\key{a}, Musik:\key{b}$"),
      answerOptionsTypes: (
        "a": "number",
        "b": "number"
      )
  ),
)
