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
#align(center)[Berechne $2/12 + 3/10$]
]
#only("1")[
#voiceover("Hier ist eine weitere Aufgabe zum Üben des Addierens von Brüchen.")
]
#only("2")[
#voiceover("Berechne zwei Zwölftel plus drei Zehntel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{2}{12}+\\frac{3}{10}$?",
  answerOptions: ("$\\frac{5}{22}$", "$\\frac{5}{120}$", "$\\frac{22}{120}$", "$\\frac{56}{120}$", "$0$"),
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