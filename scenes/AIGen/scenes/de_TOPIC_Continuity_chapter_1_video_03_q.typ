#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]

#slide()[
#text(size: 30pt, weight: "bold")[Linker Grenzwert]
#v(40pt)
#only("1-")[
Gegeben die Funktion $f(x) = x^2$
]
#v(20pt)
#only("2-")[
Finde $lim_(x -> 2^-) f(x)$
]
#only("1")[
#voiceover("Betrachte die Funktion f von x gleich x Quadrat.")
]
#only("2")[
#voiceover("Finde den linken Grenzwert von f von x, wenn sich x 2 nähert.")
]
]#questionDef(
questionText: "Finde $\\lim_{x \\to 2^-} f(x)$, wobei $f(x) = x^2$.",
answerOptions: ("$4$", "$8$"),
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