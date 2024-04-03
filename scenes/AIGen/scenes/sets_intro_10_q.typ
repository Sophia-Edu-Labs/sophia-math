#import "../sophiatheme.typ": *
//apply theme (and default setup)
#show: sophia-theme
#set text(lang: "de")
#slide()[
#text(size: 30pt, weight: "bold")[Vereinigung von Mengen]
#v(40pt)
#only("1-")[
- $A = {2, 4, 6, 8}$
]
#only("2-")[
- $B = {1, 2, 3, 4}$
]
#only("3-")[
- $C = {3, 6, 9}$
]
#v(40pt)
#only("4-")[Finde die #text(weight: "bold")[Mächtigkeit] von
#text(size: 30pt)[$ |A union B union C| = ? $]
]

#only("1")[#voiceover("Gegeben sind die folgenden drei Mengen: A, bestehend aus den Elementen 2, 4, 6 und 8,")]
#only("2")[#voiceover("B, bestehend aus den Elementen 1, 2, 3 und 4,")]
#only("3")[#voiceover("und C, bestehend aus den Elementen 3, 6 und 9.")]
#only("4")[
#voiceover("Was ist die Mächtigkeit der Vereinigung aller drei Mengen, also von A vereinigt mit B vereinigt mit C?")
]

]

#questionDef(
  questionText: "Was ist die Mächtigkeit von $A \cup B \cup C$?",
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
