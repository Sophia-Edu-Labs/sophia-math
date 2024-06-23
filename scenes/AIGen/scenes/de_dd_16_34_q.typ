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
#align(center)[Berechne $1/6 + 3/4$]
]
#only("1")[
#voiceover("Hier ist eine kurze Übung zum Addieren von Brüchen.")
]
#only("2")[
#voiceover("Berechne ein Sechstel plus drei Viertel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{1}{6}+\\frac{3}{4}$?",
  answerOptions: ("$\\frac{4}{10}$", "$\\frac{4}{24}$", "$\\frac{10}{24}$", "$\\frac{22}{24}$", "$0$"),
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