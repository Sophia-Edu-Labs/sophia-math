#questionDef(
questionText: "Was sind die Koordinaten von $v$ relativ zur Basis $B$?",
answerOptions: ("(2, 3)", "(1, 0)", "(0, 1)", "(3, 2)"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("(\key{a}, \key{b})"),
answerOptionsTypes: (
"a": "number",
"b": "number"
)
),
)



//Type: FREE
#questionDef(
questionText: "What are the domain and range of the inverse function $f^{-1}(x)$ for $f(x) = x^3$?",
answerOptions: ("Domain: all real numbers, Range: all real numbers", "The answer is incorrect."),
correctAnswerIndex: 0,
llmCheckDetails: (
fallbackOptionIndex: 1
),
)

//Type: MC
#questionDef(
questionText: "What is a common environmental concern associated with hydroelectric power plants?",
answerOptions: ("Air pollution", "Noise pollution", "Habitat disruption", "Greenhouse gas emissions"),
correctAnswerIndex: 2
)

