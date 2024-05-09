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
#align(center)[Berechne $1/3 + 1/5$]
]
#only("1")[
#voiceover("Ich habe eine Aufgabe für dich. Bist du bereit?")
]
#only("2")[
#voiceover("Hier ist deine Aufgabe: Berechne ein Drittel plus ein Fünftel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{1}{3}+\\frac{1}{5}$?",
  answerOptions: ("$\\frac{1}{8}$", "$\\frac{2}{8}$", "$\\frac{1}{15}$", "$\\frac{4}{15}$", "$\\frac{8}{15}$", "$0$"),
  correctAnswerIndex: 4,
  freeTextDetail: (
    fallbackOptionIndex: 5,
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