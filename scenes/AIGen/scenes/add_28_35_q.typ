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
#align(center)[Berechne $2/8 + 3/5$]
]
#only("1")[
#voiceover("Hier ist eine weitere Aufgabe, um das Addieren von Brüchen zu üben. Viel Erfolg!")
]
#only("2")[
#voiceover("Berechne zwei Achtel plus drei Fünftel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{2}{8}+\\frac{3}{5}$?",
  answerOptions: ("$\\frac{5}{13}$", "$\\frac{5}{40}$", "$\\frac{13}{40}$", "$\\frac{34}{40}$", "$0$"),
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