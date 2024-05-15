#import "../sophiatheme.typ": *
#questionDef(
questionText: "Schreiben Sie $123000$ in wissenschaftlicher Notation.",
answerOptions: ("1.23 \\times 10^5", "1.23e5"),
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