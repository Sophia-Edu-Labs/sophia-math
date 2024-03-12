#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Vereinigung von Mengen]
#v(40pt)
#only("1-")[
- $X = {2, 4, 6, 8}$
]
#only("2-")[
- $Y = {1, 2, 3, 4}$
]
#only("3-")[
- $Z = {3, 6, 9}$
]
#v(40pt)
#only("4-")[Finde die #text(weight: "bold")[Mächtigkeit] von
#text(size: 30pt)[$ |X union Y union Z| = ? $]
]

#only("1")[#voiceover("Gegeben sind die folgenden drei Mengen: X, bestehend aus den Elementen 2, 4, 6 und 8,")]
#only("2")[#voiceover("Y, bestehend aus den Elementen 1, 2, 3 und 4,")]
#only("3")[#voiceover("und Z, bestehend aus den Elementen 3, 6 und 9.")]
#only("4")[
#voiceover("Was ist die Mächtigkeit der Vereinigung aller drei Mengen, also von X vereinigt mit Y vereinigt mit Z?")
]

]

#questionDef(
  questionText: "Was ist die Mächtigkeit von $X \cup Y \cup Z$?",
  // use latex!
  answerOptions: ("$7$", "$0$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
        )
      ),
      answerOptionMatcher:("$\key{a}$"),
      answerOptionsTypes: (
        "a": "number",
      )
  ),
)
