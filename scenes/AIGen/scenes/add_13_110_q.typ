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
#align(center)[Berechne $1/3 + 1/10$]
]
#only("1")[
#voiceover("Hier ist eine weitere Aufgabe, um das Addieren von Brüchen zu üben.")
]
#only("2")[
#voiceover("Berechne ein Drittel plus ein Zehntel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{1}{3}+\\frac{1}{10}$?",
  answerOptions: ("$\\frac{2}{13}$", "$\\frac{2}{30}$", "$\\frac{13}{30}$", "$\\frac{13}{30}$", "$0$"),
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