#import "../sophiatheme.typ": *
#questionDef(
questionText: "Rechnen Sie die wissenschaftliche Notation $3.56 \times 10^{-3}$ in eine Dezimalzahl um.",
answerOptions: ("0.00356", "0.003", "0.0356"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 5,
tolerance: none
)
),
answerOptionMatcher:("\key{a}"),
answerOptionsTypes: (
"a": "number"
)
),
)