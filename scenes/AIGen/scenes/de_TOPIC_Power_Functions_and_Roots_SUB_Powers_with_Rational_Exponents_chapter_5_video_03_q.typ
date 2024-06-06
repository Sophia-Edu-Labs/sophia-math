#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#only("1")[
#voiceover("Versuchen wir, diesen Ausdruck mit einem rationalen Exponenten zu vereinfachen:")
]
#text(size: 30pt, weight: "bold")[Vereinfachen]
// Der Titel "Vereinfachen" wird auf dieser Folie angezeigt
#v(40pt)
#only("2")[
#voiceover("Siebenundzwanzig Achtel hoch zwei Drittel.")
]
#only("2-")[
$ (27/8)^(2/3) $
]
// Der zu vereinfachende Ausdruck wird ab Folie 2 angezeigt
#v(30pt)
#only("3")[
#voiceover("Kannst du diese Vereinfachung herausfinden?")
]
#only("3-")[
👀 ✏️ 🤔
]
// Emojis, die den Betrachter ermutigen, das Problem zu lösen, werden ab Folie 3 angezeigt
]#questionDef(
  questionText: "Was ist die vereinfachte Form von $(\\frac{27}{8})^{\\frac{2}{3}}$?",
    answerOptions: ("$\\frac{9}{4}$", "$1$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
      )
    ),
    answerOptionMatcher:("$\\key{a}$"),
    answerOptionsTypes: (
      "a": "number"      )
  ),
)