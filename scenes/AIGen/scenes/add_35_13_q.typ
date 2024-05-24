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
#align(center)[Berechne $3/5 + 1/3$]
]
#only("1")[
#voiceover("Hier ist eine weitere Aufgabe, um das Addieren von Brüchen zu üben.")
]
#only("2")[
#voiceover("Berechne drei Fünftel plus ein Drittel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{3}{5}+\\frac{1}{3}$?",
  answerOptions: ("$\\frac{4}{8}$", "$\\frac{4}{15}$", "$\\frac{8}{15}$", "$\\frac{14}{15}$", "$0$"),
  correctAnswerIndex: 2,
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