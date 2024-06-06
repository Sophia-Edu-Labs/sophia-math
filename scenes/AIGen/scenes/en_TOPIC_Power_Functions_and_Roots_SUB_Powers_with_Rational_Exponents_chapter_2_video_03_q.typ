#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Exercise 2]
#v(40pt)
#only("1-")[
Simplify the following expression:
]
#v(20pt)
#only("2-")[
$8^(2/3) / 8^(1/3)$
]
#only("1")[
#voiceover("Let's practice simplifying expressions with rational exponents.")
]
#only("2")[
#voiceover("Simplify the expression 8 to the power of 2/3 divided by 8 to the power of 1/3.")
]
#v(40pt)
#only("3-")[
🤔 What's the simplified result?
]
#only("3")[
#voiceover("Think about how you would approach this problem. What rules for exponents can you apply here?")
]
]#questionDef(
questionText: "What is the simplified result of $8^{2/3} / 8^{1/3}$?",
answerOptions: ("$8^{1/3}$", "$8^{3/2}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$8^{\key{a}/\key{b}}$"),
answerOptionsTypes: (
"a": "number",
"b": "number"
)
),
)