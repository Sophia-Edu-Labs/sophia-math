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
#align(center)[Berechne $4/3 + 2/4$]
]
#only("1")[
#voiceover("Hier ist eine weitere Aufgabe zum Üben des Addierens von Brüchen. Viel Erfolg!")
]
#only("2")[
#voiceover("Berechne vier Drittel plus zwei Viertel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{4}{3}+\\frac{2}{4}$?",
  answerOptions: ("$\\frac{6}{7}$", "$\\frac{6}{12}$", "$\\frac{7}{12}$", "$\\frac{22}{12}$", "$0$"),
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