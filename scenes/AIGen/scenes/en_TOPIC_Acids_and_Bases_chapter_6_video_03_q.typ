#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculate pOH]
#v(40pt)
#only("1-")[- Given: $["OH"^-] = 1 dot 10^(-3) "M"$]
#v(20pt)
#only("2-")[- Formula: $"pOH" = -log["OH"^-]$]
#only("1")[
#voiceover("Let's calculate the pOH of a solution. We are given a hydroxide ion concentration of 1 times 10 to the power of negative 3 molar.")
]
#only("2")[
#voiceover("To find the pOH, we use the formula pOH equals the negative logarithm of the hydroxide ion concentration.")
]
]

#questionDef(
questionText: "What is the pOH of the solution?",
answerOptions: ("$pOH = 3$", "$pOH = -3$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$pOH = \\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)