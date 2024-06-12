#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#questionDef(
  questionText: "Was ist $\\frac{1}{8}+\\frac{4}{5}$?",
  answerOptions: ("$\\frac{5}{13}$", "$\\frac{5}{40}$", "$\\frac{13}{40}$", "$\\frac{37}{40}$", "$0$"),
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
