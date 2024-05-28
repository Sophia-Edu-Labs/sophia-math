#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Grenzwertübung]
#v(40pt)
#only("1-")[Finde den Grenzwert: $lim_(x -> 3) (x^2 + 2x)$]
#only("1")[
#voiceover("Finde den Grenzwert, wenn x sich 3 nähert, von x Quadrat plus 2x.")
]
]

#slide()[
#text(size: 30pt, weight: "bold")[Frage]
#v(40pt)
#only("1-")[Was ist der Wert von $lim_(x -> 3) (x^2 + 2x)$? 🤔]
#only("1")[
#voiceover("Was ist der Wert des Grenzwerts, wenn x sich 3 nähert, von x Quadrat plus 2x?")
]
]#questionDef(
questionText: "Was ist der Wert von $\\lim_{x \\to 3} (x^2 + 2x)$?",
answerOptions: ("$15$", "$6$"),
correctAnswerIndex: 0,
freeTextDetail: (
fallbackOptionIndex: 1,
answerOptionsEquality: (
a: (
roundingDecimalPlaces: 2,
tolerance: none
)
),
answerOptionMatcher:("$\\key{a}$"),
answerOptionsTypes: (
"a": "number"
)
),
)