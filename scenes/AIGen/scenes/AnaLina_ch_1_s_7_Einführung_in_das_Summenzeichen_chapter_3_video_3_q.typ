#import "../sophiatheme.typ": *
#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Berechne $\sum_{i=2}^4 (i^2)$.",
answerOptions: ("29", "0"),
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