#import "../sophiatheme.typ": *
#questionDef(
questionText: "Lösen Sie die Ungleichung $|x - 2| > 5$.",
answerOptions: ("x < -3 \quad \\text{oder} \quad x > 7", "x > -3 \quad \\text{und} \quad x < 7"),
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