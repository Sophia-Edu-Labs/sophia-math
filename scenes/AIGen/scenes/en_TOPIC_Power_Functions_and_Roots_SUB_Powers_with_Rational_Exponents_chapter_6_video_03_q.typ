#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#only("1")[
#voiceover("Let's practice simplifying an expression with rational exponents.")
]
#text(size: 30pt, weight: "bold")[Simplify]
#v(40pt)
#only("2")[
#voiceover("Simplify the expression")
]
#only("2-")[
$((27^(1/3))^2)^3$
]
#only("3")[
#voiceover("Remember to use the power rule for exponents:")
]
#only("3-")[
$(a^m)^n = a^(m n)$
]
#only("4")[
#voiceover("Good luck! 🍀")
]
]
#questionDef(
questionText: "Simplify the expression $((27^{1/3})^2)^3$.",
answerOptions: ("$729$", "$27$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)