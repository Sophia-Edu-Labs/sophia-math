#import "../sophiatheme.typ": *
#show: sophia-theme
#show figure.caption: es => [
#set text(size: 20pt)
#es.body
]


#slide()[
#text(size: 30pt, weight: "bold")[Potenzfunktion Frage]
#v(40pt)
#only("1-")[Betrachte die Potenzfunktion $f(x) = x^3$]
#v(40pt)
#only("2-")[Was ist der Wert von $f(2)$? 🤔]
#only("1")[
#voiceover("Betrachte die Potenzfunktion f von x gleich x hoch drei.")
]
#only("2")[
#voiceover("Was ist der Wert von f von 2?")
]
]#questionDef(
questionText: "Was ist der Wert von $f(2)$ für die Potenzfunktion $f(x) = x^3$?",
answerOptions: ("$8$", "$6$"),
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