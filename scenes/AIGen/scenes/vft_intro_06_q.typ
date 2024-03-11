#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide(max-repetitions: 20)[
#text(size: 28pt, weight: "bold")[#align(center)[Radfahren oder Wandern?]]
#v(40pt)
#only("2-")[
- 500 Einwohner ]
#only("3-")[
- 300 mögen Radfahren ]
#only("4-")[
- 400 mögen Wandern ]
#only("5-")[
- 200 mögen beides]
#only("6-")[
$->$ Wie viele mögen weder Radfahren noch Wandern?]
#v(40pt)
#only("1")[
#voiceover("In einem Dorf mit 500 Einwohnern haben wir eine Umfrage durchgeführt, ob die Einwohner gerne Radfahren und ob sie gerne Wandern.")
]
#only("2")[
#voiceover("Von den 500 Einwohnern")
]
#only("3")[
#voiceover("mögen 300 Radfahren,")
]
#only("4")[
#voiceover("und 400 mögen Wandern. Außerdem")
]
#only("5")[
#voiceover("gibt es 200 Einwohner, die beides gerne machen, Radfahren und Wandern ...")
]
#only("6")[
#voiceover("Erstelle eine Vierfeldertafel und finde heraus, wie viele Einwohner weder Radfahren noch Wandern mögen.")
]
]

#questionDef(
  questionText: "Wie viele Einwohner mögen weder Radfahren noch wandern?",
  // use latex!
  answerOptions: ("$0$", "$10$"),
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