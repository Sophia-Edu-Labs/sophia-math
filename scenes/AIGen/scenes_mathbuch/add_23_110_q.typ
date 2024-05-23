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
#align(center)[Berechne $2/3 + 1/10$]
]
#only("1")[
#voiceover("Hier ist eine weitere Aufgabe, um das Addieren von Brüchen zu üben.")
]
#only("2")[
#voiceover("Berechne zwei Drittel plus ein Zehntel.")
]
]

#questionDef(
  //Use Latex in the questionDef instead of Typst, use Typst everywhere else
  questionText: "Was ist $\\frac{2}{3}+\\frac{1}{10}$?",
  answerOptions: ("$\\frac{3}{13}$", "$\\frac{3}{30}$", "$\\frac{13}{30}$", "$\\frac{23}{30}$", "$0$"),
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