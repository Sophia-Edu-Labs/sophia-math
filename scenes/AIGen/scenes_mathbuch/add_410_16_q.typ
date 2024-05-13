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
#align(center)[Berechne $4/10 + 1/6$]
]
#only("1")[
#voiceover("Hier ist eine weitere Aufgabe, um das Addieren von Brüchen zu üben. Viel Erfolg!")
]
#only("2")[
#voiceover("Berechne vier Zehntel plus ein Sechstel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{4}{10}+\\frac{1}{6}$?",
  answerOptions: ("$\\frac{5}{16}$", "$\\frac{5}{60}$", "$\\frac{16}{60}$", "$\\frac{34}{60}$", "$0$"),
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