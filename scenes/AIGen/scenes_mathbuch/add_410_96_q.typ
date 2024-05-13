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
#align(center)[Berechne $4/10 + 9/6$]
]
#only("1")[
#voiceover("Hier ist eine weitere Aufgabe zum Üben des Addierens von Brüchen. Viel Erfolg!")
]
#only("2")[
#voiceover("Berechne vier Zehntel plus neun Sechstel.")
]
]

#questionDef(
  questionText: "Was ist $\\frac{4}{10}+\\frac{9}{6}$?",
  answerOptions: ("$\\frac{13}{16}$", "$\\frac{13}{60}$", "$\\frac{16}{60}$", "$\\frac{114}{60}$", "$0$"),
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