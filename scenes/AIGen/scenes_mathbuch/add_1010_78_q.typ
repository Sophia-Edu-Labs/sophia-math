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
#align(center)[Berechne $10/10 + 7/8$]
]
#only("1")[
#voiceover("Hier ist eine weitere Aufgabe, um das Addieren von Brüchen zu üben. Viel Erfolg!")
]
#only("2")[
#voiceover("Berechne zehn Zehntel plus sieben Achtel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{10}{10}+\\frac{7}{8}$?",
  answerOptions: ("$\\frac{17}{18}$", "$\\frac{17}{80}$", "$\\frac{18}{80}$", "$\\frac{150}{80}$", "$0$"),
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