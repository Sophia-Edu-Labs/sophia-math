#import "../sophiatheme.typ": *
#questionDef(
questionText: "Berechnen Sie $2.5 + 3.75$.",
answerOptions: ("6.25", "0"),
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