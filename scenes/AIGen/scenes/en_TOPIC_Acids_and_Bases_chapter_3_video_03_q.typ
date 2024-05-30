#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[pH Calculation]
#v(40pt)
#only("1-")[
- Given: $[H^+] = 1 dot 10^(-3) "M"$
]
#only("1")[
#voiceover("We are given a hydrogen ion concentration of 1 times 10 to the power of negative 3 molar.")
]
#v(20pt)
#only("2-")[
- Calculate: $"pH" = ?$
]
#only("2")[
#voiceover("Our task is to calculate the pH of the solution.")
]
#v(20pt)


#only("3")[
#voiceover("Now it's your turn: What is the pH of the solution? Enter your answer in the text field below.")
]
]#questionDef(
  questionText: "What is the $pH$ of the solution?",
  answerOptions: ("3", "7"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 2,
        tolerance: none
        )
      ),
    answerOptionMatcher:("\key{a}"),
    answerOptionsTypes: (
      "a": "number"
    )
  ),
)