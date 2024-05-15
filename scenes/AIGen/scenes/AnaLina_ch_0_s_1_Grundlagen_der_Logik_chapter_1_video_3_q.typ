#import "../sophiatheme.typ": *
#questionDef(
// use latex Notation instead of Typst Notation here
questionText: "Gegeben sei die Aussage \"Wenn es regnet, dann ist die Straße nass.\" Wenn \"es regnet\" (1 für wahr, 0 für falsch) und \"die Straße ist nass\" (1 für wahr, 0 für falsch), bewerte die Wahrheit der gesamten Aussage.",
answerOptions: ("1", "0"),
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