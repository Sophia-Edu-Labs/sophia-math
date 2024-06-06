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
#align(center)[Berechne $2/5 + 1/4$]
]
#only("1")[
#voiceover("Hier ist noch eine Aufgabe, in der wir das Addieren von Brüchen üben.")
]
#only("2")[
#voiceover("Berechne zwei Fünftel plus ein Viertel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{2}{5}+\\frac{1}{4}$?",
  answerOptions: ("$\\frac{3}{9}$", "$\\frac{3}{20}$", "$\\frac{9}{20}$", "$\\frac{13}{20}$", "$0$"),
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