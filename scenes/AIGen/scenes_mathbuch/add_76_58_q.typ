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
#align(center)[Berechne $7/6 + 5/8$]
]
#only("1")[
#voiceover("Hier ist eine weitere Aufgabe zum Üben des Addierens von Brüchen.")
]
#only("2")[
#voiceover("Berechne sieben Sechstel plus fünf Achtel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{7}{6} + \\frac{5}{8}$?",
  answerOptions: ("$\\frac{12}{14}$", "$\\frac{12}{48}$", "$\\frac{14}{48}$", "$\\frac{86}{48}$", "$0$"),
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