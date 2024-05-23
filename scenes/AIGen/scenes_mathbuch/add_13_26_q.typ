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
#align(center)[Berechne $1/3 + 2/6$]
]
#only("1")[
#voiceover("Hier ist eine weitere Aufgabe, um das Addieren von Brüchen zu üben. Viel Erfolg!")
]
#only("2")[
#voiceover("Berechne ein Drittel plus zwei Sechstel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{1}{3}+\\frac{2}{6}$?",
  answerOptions: ("$\\frac{3}{9}$", "$\\frac{3}{18}$", "$\\frac{9}{18}$", "$\\frac{12}{18}$", "$0$"),
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