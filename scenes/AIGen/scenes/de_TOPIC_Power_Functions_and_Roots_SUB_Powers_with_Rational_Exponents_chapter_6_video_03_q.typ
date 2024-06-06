#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]

#slide()[
#only("1")[
#voiceover("Lass uns üben, einen Ausdruck mit rationalen Exponenten zu vereinfachen.")
]
#text(size: 30pt, weight: "bold")[Vereinfachen]
#v(40pt)
#only("2")[
#voiceover("Vereinfache den Ausdruck")
]
#only("2-")[
$((27^(1/3))^2)^3$
]
#only("3")[
#voiceover("Denke daran, die Potenzregel für Exponenten zu verwenden:")
]
#only("3-")[
$(a^m)^n = a^(m n)$
]
#only("4")[
#voiceover("Viel Glück! 🍀")
]
]
#questionDef(
questionText: "Vereinfache den Ausdruck $((27^{1/3})^2)^3$.",
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