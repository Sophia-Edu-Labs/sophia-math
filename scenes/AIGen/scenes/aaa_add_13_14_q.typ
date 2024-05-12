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
#align(center)[Berechne $1/3 + 1/4$]
]
#only("1")[
#voiceover("Üben wir das Addieren von Brüchen.")
]
#only("2")[
#voiceover("Berechne ein Drittel plus ein Viertel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{1}{3}+\\frac{1}{4}$?",
  answerOptions: ("$\\frac{1}{7}$", "$\\frac{2}{7}$", "$\\frac{1}{12}$", "$\\frac{2}{12}$", "$\\frac{7}{12}$", "$0$"),
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