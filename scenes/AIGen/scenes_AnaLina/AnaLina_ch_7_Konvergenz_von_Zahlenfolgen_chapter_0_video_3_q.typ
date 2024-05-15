#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Zahlenfolge]
#v(40pt)
#only("1-")[Gegeben ist die Zahlenfolge:]
#v(20pt)
#only("2-")[$a_n = n + 2$]
#only("1")[
#voiceover("Gegeben ist die folgende Zahlenfolge:")
]
#only("2")[
#voiceover("a_n gleich n plus 2")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[Was ist der 5. Term dieser Zahlenfolge? 🤔]
#only("1")[
#voiceover("Die Frage lautet: Was ist der 5. Term dieser Zahlenfolge?")
]
#v(20pt)
#only("2-")[Denke darüber nach und gib deine Antwort ein! ✍]
#only("2")[
#voiceover("Denke einen Moment darüber nach und gib dann deine Antwort ein.")
]
]#questionDef(
  questionText: "Was ist der 5. Term der Zahlenfolge $a_n = n + 2$?",
  answerOptions: ("$7$", "$0$"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 0,
        tolerance: none
        )
      ),
      answerOptionMatcher:("$\key{a}$"),
      answerOptionsTypes: (
        "a": "number"
      )
  ),
)

