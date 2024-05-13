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
#align(center)[Berechne $5/5 + 6/6$]
]
#only("1")[
#voiceover("Hier ist eine weitere Aufgabe zum Üben des Addierens von Brüchen. Viel Erfolg!")
]
#only("2")[
#voiceover("Berechne fünf Fünftel plus sechs Sechstel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{5}{5}+\\frac{6}{6}$?",
  answerOptions: ("$\\frac{11}{11}$", "$\\frac{11}{30}$", "$\\frac{11}{30}$", "$\\frac{60}{30}$", "$0$"),
  correctAnswerIndex: 0,
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