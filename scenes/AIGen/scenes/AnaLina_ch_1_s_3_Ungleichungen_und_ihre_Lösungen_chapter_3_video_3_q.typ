#import "../sophiatheme.typ": *
#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Löse die Ungleichung $3x - 5 \leq 2(x - 1) + 10$.",
answerOptions: ("x \leq 3", "x \geq 3", "x < 3", "x > 3"),
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