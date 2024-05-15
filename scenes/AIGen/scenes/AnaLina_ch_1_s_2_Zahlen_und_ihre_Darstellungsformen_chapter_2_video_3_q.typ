#import "../sophiatheme.typ": *
#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Vereinfachen Sie den Bruch $15/45$.",
answerOptions: ("1/3", "1/2", "1/5", "3/5"),
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