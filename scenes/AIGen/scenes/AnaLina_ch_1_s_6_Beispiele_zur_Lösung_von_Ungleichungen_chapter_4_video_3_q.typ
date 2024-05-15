#import "../sophiatheme.typ": *
#questionDef(
questionText: "Ein Unternehmen kann maximal 200 Einheiten eines Produkts pro Woche herstellen. Wenn $x$ die Anzahl der produzierten Einheiten darstellt, formulieren Sie die Ungleichung.",
answerOptions: ("x \leq 200", "x \geq 200", "x < 200", "x > 200"),
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