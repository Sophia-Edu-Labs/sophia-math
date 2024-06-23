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
#align(center)[Berechne $1/8 + 4/5$]
]
#only("1")[
#voiceover("Hier ist eine kleine Übung für dich. Viel Erfolg!")
]
#only("2")[
#voiceover("Berechne ein Achtel plus vier Fünftel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{1}{8}+\\frac{4}{5}$?",
  answerOptions: ("$\\frac{5}{13}$", "$\\frac{5}{40}$", "$\\frac{13}{40}$", "$\\frac{37}{40}$", "$0$"),
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