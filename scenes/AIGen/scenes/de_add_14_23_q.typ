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
#align(center)[Berechne $1/4 + 2/3$]
]
#only("1")[
#voiceover("Hier ist eine Aufgabe, um das Addieren von Brüchen zu üben.")
]
#only("2")[
#voiceover("Berechne ein Viertel plus zwei Drittel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{1}{4}+\\frac{2}{3}$?",
  answerOptions: ("$\\frac{3}{7}$", "$\\frac{3}{12}$", "$\\frac{7}{12}$", "$\\frac{11}{12}$", "$0$"),
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

