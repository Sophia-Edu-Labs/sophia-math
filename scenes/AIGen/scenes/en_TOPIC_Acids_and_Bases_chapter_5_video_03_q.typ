#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: it => [
#set text(size: 20pt)
#it.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Calculate pH]
#v(40pt)
#only("1-")[
Given:
- Hydrogen ion concentration: $1 dot 10^(-4) "M"$
]
#v(20pt)
#only("2-")[
Calculate:
- pH of the solution 🧪
]
#only("1")[
#voiceover("Given a solution with a hydrogen ion concentration of 1 times 10 to the negative 4 molar,")
]
#only("2")[
#voiceover("calculate the pH of the solution.")
]
]#questionDef(
questionText: "What is the pH of a solution with a hydrogen ion concentration of $1 \cdot 10^{-4} \\text{ M}$?",
answerOptions: ("$4$", "$7$"),
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