#import "../sophiatheme.typ": *
#questionDef(
  questionText: "Wie viele Elemente enthält die Menge $\{x \mid x < 5 \text{ und } x \text{ ist eine natürliche Zahl}\}$?",
  answerOptions: ("4", "0"),
  correctAnswerIndex: 0,
  freeTextDetail: (
    fallbackOptionIndex: 1,
    answerOptionsEquality: (
      a: (
        roundingDecimalPlaces: 0,
        tolerance: none
      )
    ),
    answerOptionMatcher:("\key{a}"),
    answerOptionsTypes: (
      "a": "number"
    )
  ),
)