#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Simplifying Expressions]
#v(40pt)
#only("1-")[
Simplify the following expression:
]
#v(20pt)
#only("2-")[
$5 3^(1/3) - 2 3^(1/3)$
]

#only("1")[
#voiceover("Let's practice simplifying expressions with rational exponents.")
]
#only("2")[
#voiceover("Simplify the expression 5 times the cube root of 3 minus 2 times the cube root of 3.")
]
]#questionDef(
questionText: "What is the simplified form of the expression $5 \cdot 3^{1/3} - 2 \cdot 3^{1/3}$?",
answerOptions: ("$3 \cdot 3^{1/3}$", "$3 \cdot 3^{2/3}$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a} \cdot 3^{1/3}$"),
answerOptionsTypes: (
"a": "number"
)
),
)