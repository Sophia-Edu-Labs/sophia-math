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
#align(center)[Berechne $1/10 + 1/2$]
]
#only("1")[
#voiceover("Hier ist eine weitere Aufgabe, um das Addieren von Brüchen zu üben.")
]
#only("2")[
#voiceover("Berechne ein Zehntel plus ein Halb.")
]
]

#questionDef(
  //Use Latex in the questionDef instead of Typst, use Typst everywhere else
  questionText: "Was ist $\\frac{1}{10}+\\frac{1}{2}$?",
  answerOptions: ("$\\frac{2}{12}$", "$\\frac{2}{20}$", "$\\frac{12}{20}$", "$\\frac{12}{20}$", "$0$"),
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