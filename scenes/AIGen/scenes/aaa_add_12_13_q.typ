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
#align(center)[Berechne $1/2 + 1/3$]
]
#only("1")[
#voiceover("Ich habe eine Aufgabe für dich. Bist du bereit?")
]
#only("2")[
#voiceover("Hier ist deine Aufgabe: Berechne ein halb plus ein Drittel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{1}{2}+\\frac{1}{3}$?",
  answerOptions: ("$\\frac{1}{5}$", "$\\frac{2}{5}$", "$\\frac{1}{6}$", "$\\frac{3}{6}$", "$\\frac{5}{6}$", "0"),
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
