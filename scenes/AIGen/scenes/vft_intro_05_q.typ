#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide(max-repetitions: 20)[
#text(size: 28pt, weight: "bold")[#align(center)[Kaffee oder Tee?]]
#v(40pt)
#only("2-")[
- 200 Personen ]
#only("3-")[
- 120 mögen Kaffee]
#only("4-")[
- 150 mögen Tee]
#only("5-")[
- 90 mögen beides]
#only("6-")[
  $->$ Wie viele mögen nur Kaffee?
]
#v(40pt)
#only("1")[
#voiceover("Wir haben 200 Menschen gefragt, ob Sie Kaffee mögen, und ob sie Tee mögen.")
]
#only("2")[
#voiceover("Von insgesamt 200 Personen")
]
#only("3")[
#voiceover("mögen 120 Personen Kaffee,")
]
#only("4")[
#voiceover("und 150 Personen mögen Tee. Schließlich")
]

#only("5")[
#voiceover("mögen 90 Personen beides, Kaffee und Tee ...")
]
#only("6")[
#voiceover("Nutze nun eine Vierfeldertafel, um herauszufinden, wie viele Personen ausschließlich Kaffee mögen.")
]
]

#questionDef(
  questionText: "Wie viele Personen mögen nur Kaffee?",
  // use latex!
  answerOptions: ("$30$", "$0$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
        )
      ),
      answerOptionMatcher:("$\key{a}$"),
      answerOptionsTypes: (
        "a": "number"
      )
  ),
)