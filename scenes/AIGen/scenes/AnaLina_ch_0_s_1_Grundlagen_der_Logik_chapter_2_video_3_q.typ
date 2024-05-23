#import "../sophiatheme.typ": *
#questionDef(
questionText: "Bewerten Sie die Aussage $P \\text{ UND } Q$ mit $P = 1$ und $Q = 0$. (1 für wahr, 0 für falsch)",
answerOptions: ("0", "1"),
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