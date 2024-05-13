#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]
#slide()[
#text(size: 30pt, weight: "bold")[Aufgabe]
#v(40pt)
#only("2-")[
#align(center)[Berechne $3/8 + 8/6$]
]
#only("1")[
#voiceover("Hier ist eine weitere Aufgabe zum Üben des Addierens von Brüchen.")
]
#only("2")[
#voiceover("Berechne drei Achtel plus acht Sechstel.")
]
]

#questionDef(
  questionText: "Was ist $3/8 + 8/6$?",
  answerOptions: ("$11/14$", "$11/48$", "$14/48$", "$82/48$", "$0$"),
  correctAnswerIndex: 3,
  freeTextDetail: (
    fallbackOptionIndex: 4,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
        )
      ),
      answerOptionMatcher:("$\\key{a}$"),
      answerOptionsTypes: (
      "a": "number"
    )
  ),
)